uint64_t sub_1B81BAFD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  sub_1B81F8048();

  v11 = sub_1B81F8028();
  v12 = sub_1B81F91A8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1B81B7ED8(a1, a2, &v20);
    _os_log_impl(&dword_1B8182000, v11, v12, "SGRealtimeWalletOrderExtractionSuggestion, writeEMLtoDisk: identifier: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B8CBBAE0](v14, -1, -1);
    MEMORY[0x1B8CBBAE0](v13, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  sub_1B8189AF0(0, &qword_1EBA7D938, off_1E7CD8258);
  OUTLINED_FUNCTION_12();

  v15 = sub_1B81BB1FC(a1, a2);
  v16 = sub_1B81F8F58();
  v17 = [v15 writeEMLtoDiskForMessageWithIdentifier_];

  if (v17)
  {
    v18 = sub_1B81F8F98();
  }

  else
  {

    return 0;
  }

  return v18;
}

id sub_1B81BB1FC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B81F8F58();

  v4 = [v2 initWithSourceMessageId_];

  return v4;
}

id SGRealtimeWalletOrderExtractionSuggestion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGRealtimeWalletOrderExtractionSuggestion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGRealtimeWalletOrderExtractionSuggestion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for SGUIContext()
{
  if (!qword_1EBA7D930)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBA7D930);
    }
  }
}

uint64_t sub_1B81BB7E4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B81BB8DC;

  return v6(a1);
}

uint64_t sub_1B81BB8DC()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *v0;
  OUTLINED_FUNCTION_10_4();
  *v2 = v1;

  OUTLINED_FUNCTION_11_5();

  return v3();
}

void *sub_1B81BB9C4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1B81BBAB0(v8, v7);
  v10 = *(sub_1B81F7878() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1B81BBBAC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1B81BBAB0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7D948, &unk_1B81FEA60);
  v4 = *(sub_1B81F7878() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B81BBBAC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1B81F7878(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1B81F7878();

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_1B81BBC80()
{
  OUTLINED_FUNCTION_2_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_5(v0);
  *v1 = v2;
  v1[1] = sub_1B81BC178;

  return sub_1B81BA5B8();
}

uint64_t sub_1B81BBD0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D958, &qword_1B81FEF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B81BBD7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B81BBDDC()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1B81BBE78()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1B81BBF14()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *v0;
  OUTLINED_FUNCTION_10_4();
  *v2 = v1;

  OUTLINED_FUNCTION_11_5();

  return v3();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_9Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1B81BC05C()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_14_5(v3);
  *v4 = v7;
  v4[1] = sub_1B81BBF14;

  return sub_1B81B9A3C(v4, v5, v6, v1, v2);
}

void sub_1B81BC0EC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_13_4(v2 + 16, v8);
  v3 = *(v2 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_13_4(v1 + 16, &v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = v3;
      [v5 dismissViewController_];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t OUTLINED_FUNCTION_13_4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

id sub_1B81BC214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *a5) + 0x1E8))(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    if (([v5 respondsToSelector_] & 1) == 0 || (v7 = objc_msgSend(v6, sel_tableViewController)) == 0)
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
    }

    v8 = v7;
    swift_unknownObjectRelease();
    return v8;
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69DD258]);

    return [v10 init];
  }
}

uint64_t sub_1B81BC35C()
{
  OUTLINED_FUNCTION_40_2();
  v0 = OUTLINED_FUNCTION_28_0();

  return MEMORY[0x1EEDDB778](v0);
}

uint64_t sub_1B81BC3A0()
{
  OUTLINED_FUNCTION_40_2();
  v0 = OUTLINED_FUNCTION_28_0();

  return MEMORY[0x1EEDDB740](v0);
}

void sub_1B81BC3E4(uint64_t a1)
{
  sub_1B81C1BAC();
  sub_1B81F8888();
  __break(1u);
}

id sub_1B81BC40C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_store;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void *sub_1B81BC4DC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_tableViewController;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void *sub_1B81BC5A4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_hostingController;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1B81BC6A4(uint64_t a1)
{
  OUTLINED_FUNCTION_3_2(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B81BC6F4())(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_92(v2);
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_presenterDelegate;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_115(v0 + v4, v1);
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B8194D4C;
}

id sub_1B81BC76C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_suggestionPresenter;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

id sub_1B81BC83C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_suggestionList;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

id SGSuggestionTableController.init(store:delegate:suggestionPresenter:suggestionList:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_tableViewController] = 0;
  *&v4[OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_hostingController] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_store] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_suggestionPresenter] = a3;
  *&v4[OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_suggestionList] = a4;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for SGSuggestionTableController();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);

  swift_unknownObjectRelease();
  return v9;
}

void sub_1B81BCAF0()
{
  *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_tableViewController) = 0;
  *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI27SGSuggestionTableController_hostingController) = 0;
  swift_unknownObjectWeakInit();
  sub_1B81F9328();
  __break(1u);
}

id SGSuggestionTableController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = OUTLINED_FUNCTION_13_5();
  [v1 removeObserver_];

  _suggestionViewControllerPresenter = 0;
  swift_unknownObjectRelease();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SGSuggestionTableController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_1B81BCCEC(void *a1)
{
  v3 = OUTLINED_FUNCTION_17_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_45();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  v12 = a1;
  v13 = v11();
  result = (*((*v10 & *v1) + 0xB0))(v13);
  if (result)
  {
    v15 = result;
    sub_1B81F8628();

    v16 = OUTLINED_FUNCTION_85();
    sub_1B81BCE54(v16, v17);
    sub_1B81BCE54(v7, v9);
    v18 = *(v9 + 1);
    v19 = v12;

    *(v9 + 1) = v12;
    return sub_1B81BCEB8(v9);
  }

  return result;
}

uint64_t sub_1B81BCE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SGSuggestionsTableView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B81BCEB8(uint64_t a1)
{
  v2 = type metadata accessor for SGSuggestionsTableView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B81BCF70()
{
  OUTLINED_FUNCTION_38();
  v2 = v0;
  v3 = type metadata accessor for SGSuggestionsTableView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v7 = v6 - v5;
  v99.receiver = v0;
  v99.super_class = type metadata accessor for SGSuggestionTableController();
  v8 = objc_msgSendSuper2(&v99, sel_viewDidLoad);
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v11 = (v10)(v8);
  sub_1B81C0FB0(v11);
  if (v12)
  {

    v14 = (v10)(v13);
    sub_1B81C0FB0(v14);
    if (v15)
    {
      v16 = sub_1B81F8F58();
    }

    else
    {
      v16 = 0;
    }

    [v2 setTitle_];
  }

  else
  {
    v17 = sub_1B81871D4(0xD000000000000014, 0x80000001B8201F40);
    sub_1B81C1020(v17, v18, v0);
  }

  v19 = v10();
  v97 = [v19 supportsDismissAll];

  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (v21 == 6)
  {
    sub_1B818AF3C();
    if (v22)
    {
      sub_1B818AC48();
      v24 = v23;
      v25 = [v2 navigationItem];
      v26 = v25;
      v27 = sel_setLeftBarButtonItem_;
    }

    else
    {
      OUTLINED_FUNCTION_39_0("SuggestionsListButtonModalDismiss");
      OUTLINED_FUNCTION_35_0();
      v30 = objc_allocWithZone(MEMORY[0x1E69DC708]);
      v31 = v2;
      v24 = OUTLINED_FUNCTION_15_3();
      v25 = [v1 navigationItem];
      v26 = v25;
      v27 = sel_setRightBarButtonItem_;
    }

    [v25 v27];
  }

  else
  {
    if (j__OUTLINED_FUNCTION_18())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_39_0("SuggestionsListButtonModalDismiss");
    OUTLINED_FUNCTION_35_0();
    v28 = objc_allocWithZone(MEMORY[0x1E69DC708]);
    v29 = v2;
    v26 = OUTLINED_FUNCTION_15_3();
    v24 = [v1 navigationItem];
    [v24 setRightBarButtonItem_];
  }

LABEL_15:
  v32 = [v2 navigationController];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 navigationBar];

    [v34 setShadowImage_];
  }

  sub_1B818AF3C();
  v36 = v35;
  v37 = (*((*v9 & *v2) + 0x80))();
  updated = type metadata accessor for SectionHeadersUpdateModel(0);
  OUTLINED_FUNCTION_44_1(updated);
  sub_1B81BEB20(0);
  v39 = *(v3 + 32);
  *(v7 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDA0, &qword_1B81FD270);
  swift_storeEnumTagMultiPayload();
  v96 = objc_opt_self();
  v40 = [v96 defaultCenter];
  v41 = sub_1B81F8F58();
  sub_1B81F91D8();

  *(v7 + 8) = v37;
  v42 = (v7 + *(v3 + 36));
  OUTLINED_FUNCTION_0_3();
  sub_1B81C1164(v43, v44);
  v45 = v37;

  *v42 = sub_1B81F8268();
  v42[1] = v46;
  v47 = type metadata accessor for SGSuggestionStoreWrapper(0);
  v48 = OUTLINED_FUNCTION_44_1(v47);
  sub_1B81BF2A0();
  *v7 = v48;
  *(v7 + 16) = v97;
  *(v7 + 17) = v36 & 1;
  v49 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9A8, &unk_1B81FEB00));
  v50 = sub_1B81F8618();
  v51 = MEMORY[0x1E69E7D40];
  v52 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8);
  v53 = v50;
  v52(v50);
  v54 = *((*v51 & *v2) + 0xA0);
  v55 = v53;
  v54(v50);
  [v2 addChildViewController_];
  v56 = OUTLINED_FUNCTION_31_0();
  if (!v56)
  {
    __break(1u);
    goto LABEL_30;
  }

  v57 = v56;
  [v56 setTranslatesAutoresizingMaskIntoConstraints_];

  v58 = OUTLINED_FUNCTION_33_1();
  if (!v58)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v59 = v58;
  v60 = OUTLINED_FUNCTION_31_0();
  if (!v60)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v61 = v60;
  [v59 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1B81FEAB0;
  v63 = OUTLINED_FUNCTION_31_0();
  if (!v63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v64 = v63;
  v65 = [v63 leadingAnchor];

  v66 = OUTLINED_FUNCTION_33_1();
  if (!v66)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v67 = v66;
  v68 = [v66 leadingAnchor];

  v69 = OUTLINED_FUNCTION_30_0();
  *(v62 + 32) = v69;
  v70 = OUTLINED_FUNCTION_31_0();
  if (!v70)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v71 = v70;
  v72 = [v70 trailingAnchor];

  v73 = OUTLINED_FUNCTION_33_1();
  if (!v73)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v74 = v73;
  v75 = [v73 trailingAnchor];

  v76 = OUTLINED_FUNCTION_30_0();
  *(v62 + 40) = v76;
  v77 = OUTLINED_FUNCTION_31_0();
  if (!v77)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v78 = v77;
  v79 = [v77 topAnchor];

  v80 = OUTLINED_FUNCTION_33_1();
  if (!v80)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v81 = v80;
  v82 = [v80 topAnchor];

  v83 = OUTLINED_FUNCTION_30_0();
  *(v62 + 48) = v83;
  v84 = OUTLINED_FUNCTION_31_0();

  if (!v84)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v85 = [v84 bottomAnchor];

  v86 = OUTLINED_FUNCTION_33_1();
  if (v86)
  {
    v87 = v86;
    v88 = objc_opt_self();
    v89 = [v87 bottomAnchor];

    v90 = [v85 constraintEqualToAnchor_];
    *(v62 + 56) = v90;
    sub_1B8189AF0(0, &qword_1EDC8AF38, 0x1E696ACD8);
    OUTLINED_FUNCTION_26_0();
    v91 = sub_1B81F90A8();

    [v88 activateConstraints_];

    v92 = [v96 defaultCenter];
    v93 = sub_1B81F8F58();
    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v98[4] = sub_1B81C10C4;
    v98[5] = v94;
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 1107296256;
    v98[2] = sub_1B81BD948;
    v98[3] = &block_descriptor_3;
    v95 = _Block_copy(v98);

    [v92 addObserverForName:v93 object:0 queue:0 usingBlock:v95];
    _Block_release(v95);
    swift_unknownObjectRelease();

    [v55 didMoveToParentViewController_];
    OUTLINED_FUNCTION_37();
    return;
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_1B81BD908(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  sub_1B81BEB20(v1);
  return v2;
}

uint64_t sub_1B81BD948(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B81F7858();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1B81F7848();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_1B81BDA84()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for SGSuggestionTableController();
  OUTLINED_FUNCTION_43_1(v21.super_class, sel_viewWillAppear_, v1, v2, v3, v4, v5, v6, v21);
  if ([v0 isMovingToParentViewController])
  {
    _suggestionViewControllerPresenter = v0;
    swift_unknownObjectRelease();
    v7 = v0;
  }

  v8 = [v0 navigationController];
  if (v8)
  {
    v9 = v8;
    [v8 setToolbarHidden:1 animated:0];
  }

  v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  if (v10)
  {
    v11 = v10;
    OUTLINED_FUNCTION_3_5();
    v13 = (*(v12 + 200))();
    if (v13)
    {
      v14 = v13;
      if ([v13 respondsToSelector_])
      {
        if (([v14 respondsToSelector_] & 1) == 0)
        {

          swift_unknownObjectRelease();
          return;
        }

        OUTLINED_FUNCTION_3_5();
        v16 = *(v15 + 224);
        v17 = swift_unknownObjectRetain();
        v18 = v16(v17);
        OUTLINED_FUNCTION_36_0();
        [v19 v20];

        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1B81BDC78()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for SGSuggestionTableController();
  v7 = OUTLINED_FUNCTION_43_1(v19.super_class, sel_viewDidAppear_, v1, v2, v3, v4, v5, v6, v19);
  v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))(v7);
  if (v8)
  {
    v9 = v8;
    OUTLINED_FUNCTION_3_5();
    v11 = (*(v10 + 200))();
    if (v11)
    {
      v12 = v11;
      if ([v11 respondsToSelector_])
      {
        if (([v12 respondsToSelector_] & 1) == 0)
        {

          swift_unknownObjectRelease();
          return;
        }

        OUTLINED_FUNCTION_3_5();
        v14 = *(v13 + 224);
        v15 = swift_unknownObjectRetain();
        v16 = v14(v15);
        OUTLINED_FUNCTION_36_0();
        [v17 v18];

        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1B81BDE08()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    if ([v1 isBeingDismissed])
    {
      _suggestionViewControllerPresenter = 0;

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (_suggestionViewControllerPresenter && [v0 isMovingFromParentViewController])
  {
    _suggestionViewControllerPresenter = 0;
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_4_3();
  v4 = (*(v3 + 152))();
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_4_3();
    v7 = (*(v6 + 200))();
    if (v7)
    {
      v8 = v7;
      if ([v7 respondsToSelector_])
      {
        if (([v8 respondsToSelector_] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_4_3();
        v10 = *(v9 + 224);
        v11 = swift_unknownObjectRetain();
        v12 = v10(v11);
        [v8 suggestionPresenter:v12 willDismissViewController:v5];

        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

LABEL_15:
  v20.receiver = v0;
  v20.super_class = type metadata accessor for SGSuggestionTableController();
  return OUTLINED_FUNCTION_43_1(v20.super_class, sel_viewWillDisappear_, v13, v14, v15, v16, v17, v18, v20);
}

id sub_1B81BE020(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3();
  v3 = (*(v2 + 152))();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_4_3();
    v6 = (*(v5 + 200))();
    if (v6)
    {
      v7 = v6;
      if ([v6 respondsToSelector_])
      {
        if (([v7 respondsToSelector_] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_4_3();
        v9 = *(v8 + 224);
        v10 = swift_unknownObjectRetain();
        v11 = v9(v10);
        [v7 suggestionPresenter:v11 didDismissViewController:v4];

        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

LABEL_8:
  v19.receiver = v1;
  v19.super_class = type metadata accessor for SGSuggestionTableController();
  return OUTLINED_FUNCTION_43_1(v19.super_class, sel_viewDidDisappear_, v12, v13, v14, v15, v16, v17, v19);
}

void sub_1B81BE1BC(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    [a1 setModalPresentationStyle_];

    [v1 presentViewController:a1 animated:1 completion:0];
  }

  else
  {
    v3 = [a1 modalPresentationStyle];
    v4 = [v1 navigationController];
    if (v3 == -1)
    {
      if (!v4)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }

    OUTLINED_FUNCTION_20_2();
    [v5 v6];
  }
}

void sub_1B81BE340(void *a1)
{
  v2 = OUTLINED_FUNCTION_41_2();
  v3 = [a1 navigationController];
  v4 = v3;
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v3)
  {
    v4 = v2;
    goto LABEL_9;
  }

  sub_1B8189AF0(0, &unk_1EBA7D9B0, 0x1E69DCCD8);
  OUTLINED_FUNCTION_85();
  v5 = sub_1B81F91E8();

  if (v5)
  {
LABEL_6:
    if (!OUTLINED_FUNCTION_41_2())
    {
      return;
    }

    OUTLINED_FUNCTION_20_2();

    goto LABEL_15;
  }

LABEL_10:
  v8 = OUTLINED_FUNCTION_41_2();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v8 presentedViewController];

  if (!v10)
  {
    return;
  }

  v11 = OUTLINED_FUNCTION_41_2();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v11 presentedViewController];

  if (!v13)
  {
    return;
  }

  [v13 dismissViewControllerAnimated:0 completion:0];
LABEL_15:
}

id sub_1B81BE5C8()
{
  _suggestionViewControllerPresenter = 0;
  swift_unknownObjectRelease();

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

id SGSuggestionTableController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1B81F8F58();
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_allocWithZone(v4);
  OUTLINED_FUNCTION_36_0();
  v10 = [v8 v9];

  return v10;
}

uint64_t sub_1B81BE6E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B81F8118();

  return v1;
}

uint64_t sub_1B81BE754@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B81BE7EC(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B81F8128();
}

void (*sub_1B81BE85C())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_92(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_32_1(KeyPath);
  return sub_1B81C24F0;
}

uint64_t sub_1B81BE8F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9C0, &qword_1B81FEB60);
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12_0();
  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  OUTLINED_FUNCTION_115(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI25SectionHeadersUpdateModel__updateSectionHeaders[0], v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98, &unk_1B81FD260);
  sub_1B81F80F8();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1B81BE9F8())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_92(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9C0, &qword_1B81FEB60);
  v1[4] = v3;
  OUTLINED_FUNCTION_22_2(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_115(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI25SectionHeadersUpdateModel__updateSectionHeaders[0], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98, &unk_1B81FD260);
  sub_1B81F80E8();
  swift_endAccess();
  return sub_1B81BEB08;
}

uint64_t sub_1B81BEB20(char a1)
{
  OUTLINED_FUNCTION_115(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI25SectionHeadersUpdateModel__updateSectionHeaders, v3);
  sub_1B81F80D8();
  swift_endAccess();
  return v1;
}

uint64_t SectionHeadersUpdateModel.deinit()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI25SectionHeadersUpdateModel__updateSectionHeaders[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98, &unk_1B81FD260);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SectionHeadersUpdateModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI25SectionHeadersUpdateModel__updateSectionHeaders[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CD98, &unk_1B81FD260);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1B81BEC8C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SectionHeadersUpdateModel(0);
  result = sub_1B81F80B8();
  *a2 = result;
  return result;
}

uint64_t sub_1B81BECCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B81F8118();

  return v1;
}

uint64_t sub_1B81BED40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81BED8C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1B81BEDE4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B81F8128();
}

void (*sub_1B81BEE54())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_92(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_32_1(KeyPath);
  return sub_1B81BEECC;
}

uint64_t sub_1B81BEEEC(void *a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_115(v3 + *a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1B81F80E8();
  return swift_endAccess();
}

uint64_t sub_1B81BEF5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9D8, &qword_1B81FEBC0);
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12_0();
  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  OUTLINED_FUNCTION_115(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI24SGSuggestionStoreWrapper__store, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9D0, &qword_1B81FEBB8);
  sub_1B81F80F8();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1B81BF064())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_92(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9D8, &qword_1B81FEBC0);
  v1[4] = v3;
  OUTLINED_FUNCTION_22_2(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_115(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI24SGSuggestionStoreWrapper__store, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9D0, &qword_1B81FEBB8);
  sub_1B81F80E8();
  swift_endAccess();
  return sub_1B81BF174;
}

void sub_1B81BF18C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = OUTLINED_FUNCTION_85();
    v10(v9);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1B81BF250(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  sub_1B81BF2A0();
  return v2;
}

void sub_1B81BF2A0()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9D0, &qword_1B81FEBB8);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC17CoreSuggestionsUI24SGSuggestionStoreWrapper__store;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9C8, &qword_1B81FEB68);
  sub_1B81F80D8();
  (*(v7 + 32))(v0 + v11, v10, v5);
  OUTLINED_FUNCTION_115(v0 + v11, &v15);
  v12 = *(v7 + 8);
  v13 = v4;
  v12(v0 + v11, v5);
  v14 = v4;
  sub_1B81F80D8();
  swift_endAccess();

  *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI24SGSuggestionStoreWrapper_updateSectionHeaders) = v2;
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B81BF3FC()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI24SGSuggestionStoreWrapper_updateSectionHeaders) + 104);

  v2 = v1(v5);
  *v3 = !*v3;
  v2(v5, 0);

  type metadata accessor for SGSuggestionStoreWrapper(0);
  sub_1B81C1164(&qword_1EBA7D9E0, type metadata accessor for SGSuggestionStoreWrapper);
  OUTLINED_FUNCTION_26_0();
  sub_1B81F80B8();
  sub_1B81F80C8();
}

uint64_t sub_1B81BF500()
{
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI24SGSuggestionStoreWrapper__store;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9D0, &qword_1B81FEBB8);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1B81BF5B8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SGSuggestionStoreWrapper(0);
  result = sub_1B81F80B8();
  *a2 = result;
  return result;
}

void sub_1B81BF5F8()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = sub_1B81F84F8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDA0, &qword_1B81FD270);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_0();
  v12 = type metadata accessor for SGSuggestionsTableView(0);
  sub_1B81C1EDC(v0 + *(v12 + 32), v1, &qword_1EBA7CDA0, &qword_1B81FD270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F8178();
    OUTLINED_FUNCTION_2();
    (*(v13 + 32))(v3, v1);
  }

  else
  {
    sub_1B81F9198();
    v14 = sub_1B81F88B8();
    sub_1B81F8018();

    sub_1B81F84E8();
    swift_getAtKeyPath();

    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_37();
}

void sub_1B81BF7E4()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = [v1 count] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *v0;
  if (v3)
  {
    v4 = (*(*v3 + 96))();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 items];

      sub_1B8189AF0(0, &qword_1EBA7D9E8, off_1E7CD8278);
      OUTLINED_FUNCTION_26_0();
      v7 = sub_1B81F90C8();

      v8 = sub_1B8189548(v7);

      if (v8 == 0 && v2)
      {
        v9 = [objc_opt_self() defaultCenter];
        v10 = OUTLINED_FUNCTION_13_5();
        [v9 postNotificationName:v10 object:0];
      }
    }
  }
}

void sub_1B81BF94C()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = OUTLINED_FUNCTION_13_5();
  [v0 postNotificationName:v1 object:0];
}

void sub_1B81BF9D4()
{
  v0 = OUTLINED_FUNCTION_85();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D9F8, &qword_1B81FEBD0);
  sub_1B81C11B0();
  sub_1B81F8258();
  v4 = sub_1B81C2464(&qword_1EBA7DA38, &qword_1EBA7D9F0, &qword_1B81FEBC8);
  sub_1B81D5D94(v2, v4);
}

void sub_1B81BFB24()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  v19[2] = v0;
  v19[8] = v2;
  v19[9] = sub_1B81F8178();
  OUTLINED_FUNCTION_1_0();
  v19[7] = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v19[6] = v6 - v5;
  v7 = type metadata accessor for SGSuggestionsTableView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DA20, &qword_1B81FEBE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  v19[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DA10, &qword_1B81FEBD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  v19[4] = v19 - v12;
  sub_1B81C1C00(v1, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_1B81BCE54(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DAE0, &qword_1B81FEEC8);
  sub_1B81C2464(&qword_1EBA7DAE8, &qword_1EBA7DAE0, &qword_1B81FEEC8);
  nullsub_1();
  v19[10] = v15;
  v19[11] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DAF0, &qword_1B81FEED0);
  v18 = sub_1B81C2464(&qword_1EBA7DAF8, &qword_1EBA7DAF0, &qword_1B81FEED0);
  sub_1B81D5DB4(v17, v18);
}

void sub_1B81BFDC8()
{

  v5 = *(v0 + 48);
  *(v4 - 192) = *(v4 - 96);
  v6 = *(v4 - 176);
  sub_1B81C1C00(v6, v2);
  v7 = swift_allocObject();
  sub_1B81BCE54(v2, v7 + v3);
  v8 = *(v4 - 168);
  v9 = *(v8 + 52);
  sub_1B81F91C8();
  OUTLINED_FUNCTION_2();
  (*(v10 + 16))(&v1[v9], v6 + v5);
  *v1 = *(v4 - 192);
  v11 = &v1[*(v8 + 56)];
  *v11 = sub_1B81C1E34;
  v11[1] = v7;
  sub_1B81C1C00(v6, v2);
  v12 = swift_allocObject();
  sub_1B81BCE54(v2, v12 + v3);
  sub_1B81C2464(&qword_1EBA7DA18, &qword_1EBA7DA20, &qword_1B81FEBE0);
  v13 = *(v4 - 160);
  sub_1B81D5C84(sub_1B81C1EBC, v12, v8);

  v14 = OUTLINED_FUNCTION_85();
  sub_1B8192D84(v14, v15, &qword_1B81FEBE0);
  v16 = *(v4 - 144);
  sub_1B81BF5F8();
  v17 = sub_1B81C126C();
  sub_1B81D5CBC(v16, *(v4 - 152), v17);
  (*(*(v4 - 136) + 8))(v16, *(v4 - 120));
  sub_1B8192D84(v13, &qword_1EBA7DA10, &qword_1B81FEBD8);
  OUTLINED_FUNCTION_37();
}

void sub_1B81BFF98()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v79 = v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DB00, &qword_1B81FCFC0);
  OUTLINED_FUNCTION_1_0();
  v70 = v4;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA68, &qword_1B81FCFB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB10, &qword_1B81FEED8);
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB18, &qword_1B81FEEE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for SGSuggestionsTableView(0);
  v20 = OUTLINED_FUNCTION_22_2(v19);
  v74 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v75 = v22;
  v76 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB20, &qword_1B81FEEE8);
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v65 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB28, &qword_1B81FEEF0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v78 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v77 = &v65 - v32;
  v33 = *v2;
  if (*v2)
  {
    v33 = (*(*v33 + 96))(v31);
  }

  v34 = sub_1B8187DB0(v33);

  v35 = *(v34 + 2);
  if (v35 >= 2)
  {
    v81 = v34;
    KeyPath = swift_getKeyPath();
    v36 = v76;
    sub_1B81C1C00(v2, v76);
    v37 = *(v74 + 80);
    v67 = v10;
    v68 = v16;
    v38 = (v37 + 16) & ~v37;
    v39 = swift_allocObject();
    sub_1B81BCE54(v36, v39 + v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DBC0, &qword_1B81FDE98);
    sub_1B81C2464(&qword_1EDC8A2B8, &unk_1EBA7DBC0, &qword_1B81FDE98);
    v64 = sub_1B81C22B8();
    v10 = v67;
    sub_1B81F8E38();
    v40 = v71;
    (*(v24 + 16))(v72, v27, v71);
    swift_storeEnumTagMultiPayload();
    sub_1B81C2234();
    v41 = v77;
    sub_1B81F8718();
    (*(v24 + 8))(v27, v40);
    v42 = v41;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB30, &qword_1B81FEEF8);
    v44 = v41;
    v45 = 0;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v44, v45, 1, v43);
    goto LABEL_12;
  }

  if (v35 != 1)
  {

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB30, &qword_1B81FEEF8);
    v42 = v77;
    v44 = v77;
    v45 = 1;
    goto LABEL_9;
  }

  v47 = *(v34 + 4);
  v46 = *(v34 + 5);

  v67 = &v65;
  MEMORY[0x1EEE9AC00](v48);
  *(&v65 - 4) = v2;
  *(&v65 - 3) = v47;
  v64 = v46;
  v49 = *(v2 + 17);
  v65 = v2;
  KeyPath = v12;
  v68 = v16;
  if (v49)
  {
    v50 = 0;
    v51 = 0;
  }

  else
  {

    nullsub_1();
  }

  v81 = v50;
  v82 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB80, &qword_1B81FEF28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB88, &unk_1B81FEF30);
  sub_1B81C2058();
  sub_1B81C2130();
  sub_1B81F8E48();

  v52 = KeyPath;
  v53 = v73;
  (*(KeyPath + 16))(v72, v15, v73);
  swift_storeEnumTagMultiPayload();
  sub_1B81C2234();
  sub_1B81C22B8();
  v42 = v77;
  OUTLINED_FUNCTION_36_0();
  sub_1B81F8718();
  (*(v52 + 8))(v15, v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB30, &qword_1B81FEEF8);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v54);
  v2 = v65;
LABEL_12:
  if (*(v2 + 16) == 1)
  {
    v55 = v2;
    v56 = v76;
    sub_1B81C1C00(v55, v76);
    v57 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v58 = swift_allocObject();
    sub_1B81BCE54(v56, v58 + v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DB40, &unk_1B81FD020);
    sub_1B81926D4();
    v59 = v69;
    sub_1B81F8D88();
    (*(v70 + 32))(v10, v59, v80);
    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v60, 1, v80);
  v61 = v78;
  sub_1B8185FE0(v42, v78);
  sub_1B81C1EDC(v10, v0, &qword_1EBA7CA68, &qword_1B81FCFB0);
  v62 = v79;
  sub_1B8185FE0(v61, v79);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB38, &unk_1B81FEF00);
  sub_1B81C1EDC(v0, v62 + *(v63 + 48), &qword_1EBA7CA68, &qword_1B81FCFB0);
  sub_1B81C1F38(v10);
  sub_1B8192D84(v42, &qword_1EBA7DB28, &qword_1B81FEEF0);
  sub_1B81C1F38(v0);
  sub_1B8192D84(v61, &qword_1EBA7DB28, &qword_1B81FEEF0);
  OUTLINED_FUNCTION_37();
}

void sub_1B81C0818()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DBD0, &qword_1B81FEF60);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12_0();
  if (*v6 && (v13 = *(v6 + 8)) != 0)
  {
    v14 = *(v6 + 17);
    swift_retain_n();
    v15 = v13;

    sub_1B818B08C(v4, v2, v15, v14, v23);
    v16 = sub_1B81C21E0();
    sub_1B8190304(v14, &type metadata for SGListView, v16);

    v17 = v23[2];

    (*(v11 + 32))(v8, v0, v9);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    OUTLINED_FUNCTION_37();
  }

  else
  {
    OUTLINED_FUNCTION_37();

    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }
}

double sub_1B81C09C0@<D0>(uint64_t a1@<X8>)
{
  __src[0] = sub_1B81871D4(0xD000000000000015, 0x80000001B82021C0);
  __src[1] = v2;
  sub_1B8188DE0();
  v3 = sub_1B81F8AF8();
  v5 = v4;
  v7 = v6;
  sub_1B818DCDC();

  v8 = sub_1B81F8AB8();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_1B8190C24(v3, v5, v7 & 1);

  sub_1B81F8EC8();
  sub_1B81F8398();
  sub_1B8186D70();
  sub_1B81F8EB8();
  sub_1B81F8218();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  memcpy((a1 + 32), __src, 0x70uLL);
  *(a1 + 144) = v16;
  *(a1 + 160) = v17;
  result = *&v18;
  *(a1 + 176) = v18;
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_1B81C0B54(void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x248))();
  if (v3 && (sub_1B8189548(v3), OUTLINED_FUNCTION_38_1(), , v1))
  {
    v4 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_3_5();
    v6 = (*(v5 + 416))();
    if (v6)
    {
      sub_1B8189548(v6);
      OUTLINED_FUNCTION_38_1();

      v4 = v1 != 0;
    }

    else
    {
      v4 = 0;
    }
  }

  OUTLINED_FUNCTION_3_5();
  v8 = (*(v7 + 344))();
  if (v9)
  {
    v10 = v8;
    v11 = v9;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v10 & 0xFFFFFFFFFFFFLL;
    }

    v13 = (v12 != 0) << 8;
  }

  else
  {
    v13 = 0;
  }

  OUTLINED_FUNCTION_3_5();
  v15 = (*(v14 + 464))();
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  if (([v15 respondsToSelector_] & 1) == 0)
  {
    if ([v16 respondsToSelector_])
    {
      [swift_unknownObjectRetain() performSelector_];
      v20 = OUTLINED_FUNCTION_38_1();
      if (sel_suggestionDismissAction)
      {
        swift_unknownObjectRelease();
LABEL_22:

LABEL_28:
        v19 = 0x10000;
        return v13 | v4 | v19;
      }

      if ([v16 respondsToSelector_])
      {
        v22 = [v16 suggestionDismissAction];
        OUTLINED_FUNCTION_38_1();
        swift_unknownObjectRelease();

        if (sel_suggestionDismissAction)
        {

          goto LABEL_28;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v19 = 0;
    return v13 | v4 | v19;
  }

  if (([v16 respondsToSelector_] & 1) == 0)
  {

LABEL_27:
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v17 = [v16 suggestionList];
  if (([v17 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v18 = [v17 suggestionListSupportsDismissal];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v18)
  {
    v19 = 0x10000;
  }

  else
  {
    v19 = 0;
  }

  return v13 | v4 | v19;
}

id sub_1B81C0E2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_1B81F8F58();
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[3];
  if (v11)
  {
    v12 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
    v13 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](v12);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_1B81F9378();
    (*(v13 + 8))(v15, v11);
    __swift_destroy_boxed_opaque_existential_0(a4);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v6 initWithTitle:v10 style:a3 target:v16 action:a5];

  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_1B81C0FB0(void *a1)
{
  v2 = [a1 listTitle];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B81F8F98();

  return v3;
}

void sub_1B81C1020(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B81F8F58();

  [a3 setTitle_];
}

void sub_1B81C10C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x138))();
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B81C1164(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_26_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B81C11B0()
{
  result = qword_1EBA7DA00;
  if (!qword_1EBA7DA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D9F8, &qword_1B81FEBD0);
    sub_1B81C126C();
    sub_1B81C1164(&qword_1EBA7DA30, type metadata accessor for CatalystContentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DA00);
  }

  return result;
}

unint64_t sub_1B81C126C()
{
  result = qword_1EBA7DA08;
  if (!qword_1EBA7DA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DA10, &qword_1B81FEBD8);
    sub_1B81C2464(&qword_1EBA7DA18, &qword_1EBA7DA20, &qword_1B81FEBE0);
    sub_1B81C1324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DA08);
  }

  return result;
}

unint64_t sub_1B81C1324()
{
  result = qword_1EBA7DA28;
  if (!qword_1EBA7DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DA28);
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

uint64_t sub_1B81C13A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B81C13E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B81C151C(uint64_t a1)
{
  sub_1B81C15C4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B81C15C4()
{
  if (!qword_1EDC8AF88[0])
  {
    v0 = sub_1B81F8138();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC8AF88);
    }
  }
}

void sub_1B81C161C(uint64_t a1)
{
  sub_1B81C16B8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B81C16B8(uint64_t a1)
{
  if (!qword_1EBA7DAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7D9C8, &qword_1B81FEB68);
    v1 = sub_1B81F8138();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA7DAA0);
    }
  }
}

void sub_1B81C1744(uint64_t a1)
{
  sub_1B81C1880(319, &unk_1EBA7DAA8, type metadata accessor for SGSuggestionStoreWrapper, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B81A2F28(319);
    if (v2 <= 0x3F)
    {
      sub_1B81C1880(319, &qword_1EDC8AF80, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1B81C18E4(319);
        if (v4 <= 0x3F)
        {
          sub_1B81F91C8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B81C1880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B81C18E4(uint64_t a1)
{
  if (!qword_1EBA7DAB8)
  {
    type metadata accessor for SectionHeadersUpdateModel(255);
    sub_1B81C1164(&qword_1EBA7D9A0, type metadata accessor for SectionHeadersUpdateModel);
    v1 = sub_1B81F8278();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA7DAB8);
    }
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SGSuggestionsTableCellModel(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SGSuggestionsTableCellModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1B81C1AA0()
{
  result = qword_1EBA7DAC0;
  if (!qword_1EBA7DAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DAC8, &qword_1B81FEEC0);
    sub_1B81C2464(&qword_1EBA7DA38, &qword_1EBA7D9F0, &qword_1B81FEBC8);
    sub_1B81C1B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DAC0);
  }

  return result;
}

unint64_t sub_1B81C1B58()
{
  result = qword_1EBA7DAD0;
  if (!qword_1EBA7DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DAD0);
  }

  return result;
}

unint64_t sub_1B81C1BAC()
{
  result = qword_1EBA7DAD8;
  if (!qword_1EBA7DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DAD8);
  }

  return result;
}

uint64_t sub_1B81C1C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SGSuggestionsTableView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B81C1C64()
{
  OUTLINED_FUNCTION_17_4();

  sub_1B81BFF98();
}

uint64_t objectdestroy_33Tm_0()
{
  v1 = type metadata accessor for SGSuggestionsTableView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CDA0, &qword_1B81FD270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B81F8178();
    OUTLINED_FUNCTION_2();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  sub_1B81F91C8();
  OUTLINED_FUNCTION_2();
  (*(v9 + 8))(v5 + v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1B81C1E34()
{
  v1 = OUTLINED_FUNCTION_17_4();
  v3 = *(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  if (v3)
  {
    (*(*v3 + 176))(v1);
  }

  sub_1B81BF7E4();
}

uint64_t sub_1B81C1EDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  return a2;
}

uint64_t sub_1B81C1F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7CA68, &qword_1B81FCFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B81C1FA0()
{
  OUTLINED_FUNCTION_17_4();
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 8);
  if (v2)
  {
    v3 = v2;
    [v3 dismissAllSuggestions];
    sub_1B81BF7E4();
  }
}

unint64_t sub_1B81C2058()
{
  result = qword_1EBA7DB90;
  if (!qword_1EBA7DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DB80, &qword_1B81FEF28);
    sub_1B81C20DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DB90);
  }

  return result;
}

unint64_t sub_1B81C20DC()
{
  result = qword_1EBA7DB98;
  if (!qword_1EBA7DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DB98);
  }

  return result;
}

unint64_t sub_1B81C2130()
{
  result = qword_1EBA7DBA0;
  if (!qword_1EBA7DBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DB88, &unk_1B81FEF30);
    sub_1B81C21E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DBA0);
  }

  return result;
}

unint64_t sub_1B81C21E0()
{
  result = qword_1EBA7DBA8;
  if (!qword_1EBA7DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DBA8);
  }

  return result;
}

unint64_t sub_1B81C2234()
{
  result = qword_1EBA7DBB0;
  if (!qword_1EBA7DBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DB20, &qword_1B81FEEE8);
    sub_1B81C22B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DBB0);
  }

  return result;
}

unint64_t sub_1B81C22B8()
{
  result = qword_1EBA7DBB8;
  if (!qword_1EBA7DBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DB10, &qword_1B81FEED8);
    sub_1B81C2058();
    sub_1B81C2130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DBB8);
  }

  return result;
}

uint64_t sub_1B81C2350(uint64_t *a1)
{
  v2 = type metadata accessor for SGSuggestionsTableView(0);
  if ((*(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)) + 17) & 1) == 0)
  {

    nullsub_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB80, &qword_1B81FEF28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DB88, &unk_1B81FEF30);
  sub_1B81C2058();
  sub_1B81C2130();
  return sub_1B81F8E48();
}

uint64_t sub_1B81C2464(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_26_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_5()
{

  return sub_1B81F8F58();
}

id OUTLINED_FUNCTION_15_3()
{

  return sub_1B81C0E2C(v0, v2, 2, (v3 - 144), v1);
}

id OUTLINED_FUNCTION_30_0()
{

  return [v0 (v2 + 3941)];
}

id OUTLINED_FUNCTION_31_0()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_32_1(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1B81F8108();
}

id OUTLINED_FUNCTION_33_1()
{

  return [v0 (v1 + 2808)];
}

id OUTLINED_FUNCTION_39_0@<X0>(uint64_t a1@<X8>)
{

  return sub_1B81871D4(0xD000000000000021, (a1 - 32) | 0x8000000000000000);
}

unint64_t OUTLINED_FUNCTION_40_2()
{

  return sub_1B81C1BAC();
}

id OUTLINED_FUNCTION_41_2()
{

  return [v0 (v1 + 2459)];
}

id OUTLINED_FUNCTION_43_1(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, a2, v9 & 1, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1)
{

  return swift_allocObject();
}

id SGFinanceKitServiceWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGFinanceKitServiceWrapper.init()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI26SGFinanceKitServiceWrapper_provider] = 0;
  sub_1B8186FE0();

  sub_1B81F8038();
  (*(v4 + 32))(&v0[OBJC_IVAR____TtC17CoreSuggestionsUI26SGFinanceKitServiceWrapper_logger], v8, v2);
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t SGFinanceKitServiceWrapper.suggestions(from:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D958, &qword_1B81FEF70);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - v10;
  result = sub_1B81C48D4([a1 attributeSet]);
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = sub_1B81C2CAC(0x2D6567617373656DLL, 0xEA00000000006469, result);
  if (!v14)
  {

    v39 = 0u;
    v40 = 0u;
    return sub_1B8192D84(&v39, &qword_1EBA7DBF0, &unk_1B81FEF78);
  }

  v15 = v14;
  sub_1B81C2CFC(v14, &v39);

  if (!*(&v40 + 1))
  {

    return sub_1B8192D84(&v39, &qword_1EBA7DBF0, &unk_1B81FEF78);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v35 = v38;
  v36 = v37;
  v16 = sub_1B81C4958([a1 attributeSet]);
  sub_1B81C2D1C(v16);
  OUTLINED_FUNCTION_6_4();
  if (v4)
  {
  }

  else
  {
    v17 = sub_1B81C2CAC(1836020326, 0xE400000000000000, v13);
    sub_1B81C2F4C(v17);
    OUTLINED_FUNCTION_6_4();
    v18 = sub_1B81C2CAC(0x6F742D796C706572, 0xE800000000000000, v13);
    sub_1B81C2F4C(v18);
    OUTLINED_FUNCTION_6_4();
    v19 = sub_1B81C2CAC(0x7265646E6573, 0xE600000000000000, v13);
    sub_1B81C2F4C(v19);
    OUTLINED_FUNCTION_6_4();
    v31 = sub_1B81C2CAC(0x702D6E7275746572, 0xEB00000000687461, v13);

    v32 = sub_1B81C2F4C(v31);
    v4 = v33;

    if (v4)
    {
      v15 = v32;
    }

    else
    {
      v15 = 0;
    }

    if (!v4)
    {
      v4 = 0xE000000000000000;
    }
  }

  sub_1B81C3444(v15, v4);
  v34[1] = v15;
  if (!v20)
  {
  }

  sub_1B81F7818();
  OUTLINED_FUNCTION_55();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v23 = v36;
  v22[4] = v21;
  v22[5] = v23;
  v22[6] = v35;

  v24 = sub_1B81F77F8();
  v25 = OBJC_IVAR____TtC17CoreSuggestionsUI26SGFinanceKitServiceWrapper_provider;
  swift_beginAccess();
  *&v5[v25] = v24;

  v26 = sub_1B81F9138();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v26);
  sub_1B81F9118();
  v27 = v5;
  v28 = sub_1B81F9108();
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  v29[2] = v28;
  v29[3] = v30;
  v29[4] = v27;
  sub_1B81C40AC(0, 0, v11, &unk_1B81FEF90, v29);
}

uint64_t sub_1B81C2CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B81B8448(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_1B81C2CFC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1B8189A2C(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1B81C2D1C(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  if (v1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B81F9348())
  {

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1B8CBB0B0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 handles];
      v8 = sub_1B81F90C8();

      if (*(v8 + 16))
      {
        v9 = *(v8 + 32);

        v10 = [v5 handleIdentifier];
        v11 = sub_1B81F8F98();
        v13 = v12;

        if (v11 == sub_1B81F8F98() && v13 == v14)
        {

          return v9;
        }

        v16 = sub_1B81F9388();

        if (v16)
        {

          return v9;
        }
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_28:

  return 0;
}

uint64_t sub_1B81C2F4C(uint64_t a1)
{
  v2 = sub_1B81F7838();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DBF8, &qword_1B81FEF98);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  v49 = v12 - v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC00, &qword_1B81FEFA0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC08, &qword_1B81FEFA8);
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - v24;
  if (!a1)
  {
    return a1;
  }

  result = sub_1B81C44B8(a1);
  if (!result)
  {
    return 0;
  }

  v47 = *(result + 16);
  if (!v47)
  {
LABEL_8:

    return 0;
  }

  v39 = v25;
  v40 = v22;
  v41 = v8;
  v42 = v4;
  v43 = v2;
  v27 = 0;
  v44 = (v10 + 8);
  v45 = result;
  v28 = result + 40;
  v46 = v20;
  while (v27 < *(result + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC10, &qword_1B81FEFB0);
    sub_1B81F7FE8();
    sub_1B81F9088();

    sub_1B81C4B4C();
    sub_1B81F7FD8();
    v30 = v48;
    v29 = v49;
    sub_1B81F7FF8();

    v31 = *v44;
    (*v44)(v29, v30);
    v31(v16, v30);
    v32 = v46;
    if (__swift_getEnumTagSinglePayload(v19, 1, v46) != 1)
    {

      v34 = v39;
      v33 = v40;
      (*(v40 + 32))(v39, v19, v32);
      swift_getKeyPath();
      sub_1B81F8008();

      v35 = MEMORY[0x1B8CBADD0](v50, v51, v52, v53);
      v37 = v36;

      v50 = v35;
      v51 = v37;
      v38 = v41;
      sub_1B81F7828();
      sub_1B8188DE0();
      a1 = sub_1B81F9218();
      (*(v42 + 8))(v38, v43);
      (*(v33 + 8))(v34, v32);

      return a1;
    }

    ++v27;
    sub_1B8192D84(v19, &qword_1EBA7DC00, &qword_1B81FEFA0);
    v28 += 16;
    result = v45;
    if (v47 == v27)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B81C3444(uint64_t a1, unint64_t a2)
{
  sub_1B81C45CC(64, 0xE100000000000000, a1, a2);
  if (v4)
  {
    return 0;
  }

  v6 = sub_1B81F8FF8();
  v7 = sub_1B81C46B4(v6, a1, a2);
  v5 = MEMORY[0x1B8CBADD0](v7);

  return v5;
}

uint64_t sub_1B81C34CC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v87 = a5;
  v88 = a6;
  v90 = a4;
  v91 = a3;
  v92 = a2;
  v89 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v85 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v94 = (v10 - v9);
  v11 = sub_1B81F77E8();
  OUTLINED_FUNCTION_1_0();
  v95 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_2();
  v86 = v14 - v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  v93 = &v80 - v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v80 - v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  v23 = sub_1B81F77D8();
  OUTLINED_FUNCTION_1_0();
  v83 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14_2();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v80 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DC38, &unk_1B81FF058);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v80 - v33;
  sub_1B81C4FD4(a1, &v80 - v33, &unk_1EBA7DC38, &unk_1B81FF058);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v92;
    v36 = v95;
    (*(v95 + 32))(v22, v34, v11);
    OUTLINED_FUNCTION_13_4((v90 + 16), v98);
    Strong = swift_unknownObjectWeakLoadStrong();
    v38 = v11;
    if (Strong)
    {
      v39 = Strong;
      v40 = OBJC_IVAR____TtC17CoreSuggestionsUI26SGFinanceKitServiceWrapper_logger;
      OUTLINED_FUNCTION_13_4(Strong + OBJC_IVAR____TtC17CoreSuggestionsUI26SGFinanceKitServiceWrapper_logger, v97);
      v41 = v85;
      v42 = v89;
      (*(v85 + 16))(v94, &v39[v40], v89);

      v43 = v84;
      v90 = *(v36 + 16);
      (v90)(v84, v22, v38);
      v44 = sub_1B81F8028();
      LODWORD(v83) = sub_1B81F9188();
      if (os_log_type_enabled(v44, v83))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v82 = v22;
        v47 = v46;
        v81 = swift_slowAlloc();
        v96 = v81;
        *v45 = 136315650;
        *(v45 + 4) = sub_1B81B7ED8(0xD000000000000032, 0x80000001B8202240, &v96);
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_1B81B7ED8(0xD000000000000024, 0x80000001B8202280, &v96);
        *(v45 + 22) = 2112;
        sub_1B818A360();
        swift_allocError();
        v48 = v44;
        (v90)(v49, v43, v38);
        v50 = _swift_stdlib_bridgeErrorToNSError();
        (*(v95 + 8))(v43, v38);
        *(v45 + 24) = v50;
        *v47 = v50;
        _os_log_impl(&dword_1B8182000, v48, v83, "%s %s: can't fetch banner due to %@", v45, 0x20u);
        sub_1B8192D84(v47, &unk_1EBA7D190, &unk_1B81FFFD0);
        v51 = v47;
        v22 = v82;
        MEMORY[0x1B8CBBAE0](v51, -1, -1);
        v52 = v81;
        swift_arrayDestroy();
        v36 = v95;
        MEMORY[0x1B8CBBAE0](v52, -1, -1);
        v53 = v92;
        MEMORY[0x1B8CBBAE0](v45, -1, -1);

        (*(v41 + 8))(v94, v89);
      }

      else
      {

        (*(v36 + 8))(v43, v38);
        (*(v41 + 8))(v94, v42);
        v53 = v35;
      }

      v62 = v90;
    }

    else
    {
      v62 = *(v36 + 16);
      v53 = v35;
    }

    v65 = v93;
    (v62)(v93, v22, v38);
    v66 = OUTLINED_FUNCTION_14_6();
    v68 = v67(v66);
    if (v68 == *MEMORY[0x1E6967CD0])
    {
      v69 = OUTLINED_FUNCTION_14_6();
      v70(v69);
    }

    else if (v68 == *MEMORY[0x1E6967CD8])
    {
      v71 = OUTLINED_FUNCTION_14_6();
      v72(v71);
      sub_1B81F77A8();
      OUTLINED_FUNCTION_2();
      (*(v73 + 8))(v65);
    }

    else if (v68 != *MEMORY[0x1E6967CE0] && v68 != *MEMORY[0x1E6967CE8])
    {
      v78 = *(v36 + 8);
      v78(v22, v38);
      v79 = OUTLINED_FUNCTION_14_6();
      return (v78)(v79);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1B81FC210;
    type metadata accessor for SGRealtimeWalletOrderExtractionError(0);
    v76 = v86;
    (v62)(v86, v22, v38);
    v77 = v88;

    *(v75 + 32) = SGRealtimeWalletOrderExtractionError.__allocating_init(messageID:bannerError:)(v87, v77, v76);
    v53(v75);

    return (*(v36 + 8))(v22, v38);
  }

  else
  {
    v54 = *v34;
    v55 = *(*v34 + 16);
    if (v55)
    {
      v98[0] = MEMORY[0x1E69E7CC0];
      sub_1B81F92F8();
      v56 = type metadata accessor for SGRealtimeWalletOrderExtraction(0);
      v94 = *(v83 + 16);
      v95 = v56;
      v57 = *(v83 + 80);
      v90 = v54;
      v58 = &v54[(v57 + 32) & ~v57];
      v93 = *(v83 + 72);
      v59 = (v83 + 8);
      do
      {
        v60 = v94;
        v94(v31, v58, v23);
        v60(v28, v31, v23);
        SGRealtimeWalletOrderExtraction.__allocating_init(banner:)(v28);
        (*v59)(v31, v23);
        sub_1B81F92D8();
        sub_1B81F9308();
        sub_1B81F9318();
        sub_1B81F92E8();
        v58 = &v93[v58];
        --v55;
      }

      while (v55);

      v61 = v98[0];
    }

    else
    {

      v61 = MEMORY[0x1E69E7CC0];
    }

    if (v61 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DC20, &unk_1B81FF028);
      v63 = sub_1B81F9338();
    }

    else
    {
      sub_1B81F9398();
      v63 = v61;
    }

    v92(v63);
  }
}

uint64_t sub_1B81C3D94()
{
  OUTLINED_FUNCTION_2_4();
  v0[5] = v1;
  v0[6] = v2;
  sub_1B81F9118();
  v0[7] = sub_1B81F9108();
  v4 = sub_1B81F90F8();
  v0[8] = v4;
  v0[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B81C3E28, v4, v3);
}

uint64_t sub_1B81C3E28()
{
  OUTLINED_FUNCTION_2_4();
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI26SGFinanceKitServiceWrapper_provider;
  OUTLINED_FUNCTION_13_4(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGFinanceKitServiceWrapper_provider, (v0 + 2));
  v3 = *(v1 + v2);
  v0[10] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1B81C3F18;

    return MEMORY[0x1EEDC1D18]();
  }

  else
  {

    OUTLINED_FUNCTION_3_6();

    return v5();
  }
}

uint64_t sub_1B81C3F18()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_10_4();
  *v3 = v2;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1B81C4054, v5, v4);
}

uint64_t sub_1B81C4054()
{
  OUTLINED_FUNCTION_2_4();

  OUTLINED_FUNCTION_3_6();

  return v0();
}

uint64_t sub_1B81C40AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D958, &qword_1B81FEF70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1B81C4FD4(a3, v24 - v10, &qword_1EBA7D958, &qword_1B81FEF70);
  v12 = sub_1B81F9138();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B8192D84(v11, &qword_1EBA7D958, &qword_1B81FEF70);
  }

  else
  {
    sub_1B81F9128();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B81F90F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B81F8FB8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC30, &qword_1B81FF048);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_1B8192D84(a3, &qword_1EBA7D958, &qword_1B81FEF70);

      return v21;
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

  sub_1B8192D84(a3, &qword_1EBA7D958, &qword_1B81FEF70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC30, &qword_1B81FF048);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1B81C4440(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DC20, &unk_1B81FF028);
  v3 = sub_1B81F90A8();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1B81C44B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B81C47AC(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1B8189A2C(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B81C47AC((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t sub_1B81C45CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_1B81F8FF8())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_1B81F9078() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_1B81F9388();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1B81C46B4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1B81F9088();
  }

  __break(1u);
  return result;
}

id SGFinanceKitServiceWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1B81C47AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B81C47CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B81C47CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C568, &unk_1B81FDEA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B81C48D4(void *a1)
{
  v2 = [a1 emailHeaders];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC48, &qword_1B81FF068);
  v3 = sub_1B81F8EF8();

  return v3;
}

uint64_t sub_1B81C4958(void *a1)
{
  v2 = [a1 authors];

  if (!v2)
  {
    return 0;
  }

  sub_1B81C5034();
  v3 = sub_1B81F90C8();

  return v3;
}

uint64_t sub_1B81C49D0()
{
  OUTLINED_FUNCTION_2_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_6(v0);
  *v1 = v2;
  v1[1] = sub_1B81C4A64;

  return sub_1B81C3D94();
}

uint64_t sub_1B81C4A64()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *v0;
  OUTLINED_FUNCTION_10_4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1B81C4B4C()
{
  result = qword_1EBA7DC18;
  if (!qword_1EBA7DC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DBF8, &qword_1B81FEF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DC18);
  }

  return result;
}

uint64_t type metadata accessor for SGFinanceKitServiceWrapper(uint64_t a1)
{
  result = qword_1EDC8C0D0;
  if (!qword_1EDC8C0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B81C4C04(uint64_t a1)
{
  result = sub_1B81F8058();
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

uint64_t sub_1B81C4CA8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B81C4D9C;

  return v5(v2 + 32);
}

uint64_t sub_1B81C4D9C()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *(*v0 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_10_4();
  *v2 = v5;

  *v1 = *(v5 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1B81C4EA4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1B81C4F3C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1B81C4FD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1B81C5034()
{
  result = qword_1EDC8A2B0;
  if (!qword_1EDC8A2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC8A2B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_4()
{
}

id sub_1B81C50D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v53 = a6;
  v54 = a3;
  v55 = a5;
  v52 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC50, &qword_1B81FF070);
  v15 = OUTLINED_FUNCTION_21(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_2();
  v18 = v16 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC58, &qword_1B81FF078);
  v26 = OUTLINED_FUNCTION_21(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_2();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v52 - v31;
  sub_1B81F7F58();
  if (v33)
  {
  }

  else
  {
    sub_1B81F7F88();
    v34 = sub_1B81F7F78();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v34);
    sub_1B81C7CD0(v32, &qword_1EBA7DC58, &qword_1B81FF078);
    if (EnumTagSinglePayload == 1)
    {
      sub_1B81F7F28();
      v36 = sub_1B81F7F18();
      v37 = __swift_getEnumTagSinglePayload(v24, 1, v36);
      sub_1B81C7CD0(v24, &qword_1EBA7DC50, &qword_1B81FF070);
      result = 0;
      if (v37 == 1)
      {
        return result;
      }
    }
  }

  sub_1B81F7F28();
  v39 = sub_1B81F7F18();
  OUTLINED_FUNCTION_2_5(v22);
  if (v40)
  {
    sub_1B81C7CD0(v22, &qword_1EBA7DC50, &qword_1B81FF070);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    sub_1B81F7EF8();
    v8 = v41;
    OUTLINED_FUNCTION_7_7();
    (*(v42 + 8))(v22, v39);
  }

  sub_1B81F7F28();
  OUTLINED_FUNCTION_2_5(v18);
  if (v40)
  {
    sub_1B81C7CD0(v18, &qword_1EBA7DC50, &qword_1B81FF070);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    sub_1B81F7F08();
    v9 = v43;
    OUTLINED_FUNCTION_7_7();
    (*(v44 + 8))(v18, v39);
  }

  v45 = v10;
  v46 = sub_1B81F7F58();
  v48 = v47;
  sub_1B81F7F88();
  v49 = sub_1B81F7F78();
  OUTLINED_FUNCTION_18_4(v29, 1, v49);
  if (v40)
  {
    sub_1B81C7CD0(v29, &qword_1EBA7DC58, &qword_1B81FF078);
    OUTLINED_FUNCTION_34_2();
  }

  else
  {
    v45 = sub_1B81F7F68();
    v39 = v50;
    OUTLINED_FUNCTION_15_4();
    (*(v51 + 8))(v29, v49);
  }

  objc_allocWithZone(MEMORY[0x1E6999228]);

  return sub_1B81C7AF8(v52, a2, v54, a4, v55, v46, v48, v45, v8, v9, v39, v53, a7);
}

uint64_t sub_1B81C54AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v435[0] = a3;
  v435[1] = a4;
  v433 = a1;
  v434 = a2;
  v5 = sub_1B81F8058();
  v6 = OUTLINED_FUNCTION_0_4(v5, &v408);
  v387 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_22_1(v8);
  v9 = sub_1B81F7CB8();
  v10 = OUTLINED_FUNCTION_0_4(v9, &v409);
  v389 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_22_1(v12);
  v13 = sub_1B81F7BC8();
  v14 = OUTLINED_FUNCTION_0_4(v13, v413);
  v393 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_22_1(v16);
  v17 = sub_1B81F7C68();
  v18 = OUTLINED_FUNCTION_0_4(v17, v415);
  v402 = v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_22_1(v20);
  v21 = sub_1B81F7C28();
  v22 = OUTLINED_FUNCTION_0_4(v21, &v420);
  v400 = v23;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_22_1(v24);
  v25 = sub_1B81F7BA8();
  v26 = OUTLINED_FUNCTION_0_4(v25, &v426);
  v411 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_22_1(v28);
  v29 = sub_1B81F7D48();
  v30 = OUTLINED_FUNCTION_0_4(v29, &v434);
  v414 = v31;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_22_1(v32);
  v33 = sub_1B81F7D88();
  v34 = OUTLINED_FUNCTION_0_4(v33, &v442);
  v424 = v35;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_28(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC50, &qword_1B81FF070);
  v38 = OUTLINED_FUNCTION_21(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_31();
  v431 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC60, &qword_1B81FF080);
  v48 = OUTLINED_FUNCTION_21(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC68, &qword_1B81FF088);
  v58 = OUTLINED_FUNCTION_21(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC58, &qword_1B81FF078);
  v64 = OUTLINED_FUNCTION_21(v63);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_1(v72);
  v73 = sub_1B81F7CF8();
  v74 = OUTLINED_FUNCTION_0_4(v73, &v443);
  v432 = v75;
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_4();
  v425 = v76;
  v428 = sub_1B81F7F98();
  OUTLINED_FUNCTION_1_0();
  v437 = v77;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_1(v80);
  sub_1B81F7F48();
  OUTLINED_FUNCTION_1_0();
  v429 = v82;
  v430 = v81;
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC70, &qword_1B81FF090);
  v86 = OUTLINED_FUNCTION_21(v85);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_40_0();
  v426 = v93;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v381 - v95;
  v97 = sub_1B81F7FC8();
  OUTLINED_FUNCTION_1_0();
  v436 = v98;
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_2_0();
  v427 = v100;
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_1(v102);
  v103 = sub_1B81F7BF8();
  OUTLINED_FUNCTION_1_0();
  v105 = v104;
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v381 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1B81F7DF8();
  OUTLINED_FUNCTION_1_0();
  v111 = v110;
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_14_2();
  v115 = v113 - v114;
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v381 - v117;
  v441 = MEMORY[0x1E69E7CC0];
  v383 = v4;
  sub_1B81F7E08();
  v119 = (*(v111 + 88))(v118, v109);
  if (v119 == *MEMORY[0x1E69D9FE0])
  {
    v120 = OUTLINED_FUNCTION_10_5();
    v121(v120);
    v122 = OUTLINED_FUNCTION_37_2();
    v123(v122);
    v432 = v108;
    sub_1B81F7BE8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v96, 1, v97);
    v125 = MEMORY[0x1E69DA050];
    v382 = v103;
    v381 = v105;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B81C7CD0(v96, &qword_1EBA7DC70, &qword_1B81FF090);
      v126 = MEMORY[0x1E69E7CC0];
      v127 = v436;
      v115 = v437;
      v118 = v429;
      v128 = v430;
      v129 = v432;
      v130 = v426;
    }

    else
    {
      v127 = v436;
      v140 = v417;
      v141 = OUTLINED_FUNCTION_31_1();
      v142(v141);
      v143 = v418[0];
      sub_1B81F7FA8();
      v115 = v437;
      v144 = v428;
      v145 = (*(v437 + 88))(v143, v428);
      v118 = v429;
      v130 = v426;
      if (v145 == *v125)
      {
        (*(v115 + 96))(v143, v144);
        v146 = v412;
        v128 = v430;
        (*(v118 + 4))(v412, v143, v430);
        sub_1B81F7F38();
        v148 = v147;
        v149 = OUTLINED_FUNCTION_26_1();
        v431 = sub_1B81C50D4(v149, v150, v151, v152, 2, v153, v148);

        MEMORY[0x1B8CBAEA0](v154);
        v129 = v432;
        if (*(v441 + 16) >= *(v441 + 24) >> 1)
        {
          OUTLINED_FUNCTION_45_1();
        }

        sub_1B81F90E8();
        v126 = v441;
        (*(v118 + 1))(v146, v128);
        v155 = OUTLINED_FUNCTION_33_2();
        v156(v155);
        v115 = v437;
        v125 = MEMORY[0x1E69DA050];
      }

      else
      {
        (*(v127 + 8))(v140, v97);
        (*(v115 + 8))(v143, v144);
        v126 = MEMORY[0x1E69E7CC0];
        v128 = v430;
        v129 = v432;
      }
    }

    sub_1B81F7BD8();
    OUTLINED_FUNCTION_18_4(v130, 1, v97);
    v170 = v130;
    v133 = v427;
    if (v169)
    {
      (*(v381 + 8))(v129, v382);
      sub_1B81C7CD0(v170, &qword_1EBA7DC70, &qword_1B81FF090);
    }

    else
    {
      (*(v127 + 32))(v427, v170, v97);
      OUTLINED_FUNCTION_40_3();
      sub_1B81F7FA8();
      v171 = v428;
      v172 = (*(v115 + 88))(v129, v428);
      if (v172 == *v125)
      {
        (*(v115 + 96))(v129, v171);
        (*(v118 + 4))(v413[1], v129, v128);
        sub_1B81F7F38();
        v174 = v173;
        v175 = OUTLINED_FUNCTION_26_1();
        v115 = sub_1B81C50D4(v175, v176, v177, v178, 3, v179, v174);

        MEMORY[0x1B8CBAEA0](v180);
        v138 = MEMORY[0x1E69E7CC0];
        if (*(v441 + 16) >= *(v441 + 24) >> 1)
        {
          OUTLINED_FUNCTION_45_1();
        }

        sub_1B81F90E8();
        v126 = v441;
        v118 += 8;
        v181 = OUTLINED_FUNCTION_31_1();
        v182(v181);
        (*(v127 + 8))(v133, v97);
        v183 = OUTLINED_FUNCTION_27_1();
LABEL_94:
        v185(v183, v184);
        goto LABEL_95;
      }

      (*(v127 + 8))(v133, v97);
      v190 = OUTLINED_FUNCTION_27_1();
      v191(v190);
      v192 = *(v115 + 8);
      v115 += 8;
      v192(v129, v171);
    }

LABEL_32:
    v138 = MEMORY[0x1E69E7CC0];
    goto LABEL_95;
  }

  if (v119 == *MEMORY[0x1E69D9FB8])
  {
    v131 = OUTLINED_FUNCTION_10_5();
    v132(v131);
    v133 = v425;
    v134 = OUTLINED_FUNCTION_37_2();
    v118 = v421;
    v135(v134);
    v136 = v418[1];
    sub_1B81F7CE8();
    sub_1B81F7E78();
    OUTLINED_FUNCTION_2_5(v136);
    if (v169)
    {
      sub_1B81C7CD0(v136, &qword_1EBA7DC60, &qword_1B81FF080);
      v137 = 1;
      v138 = MEMORY[0x1E69E7CC0];
      v139 = v423;
      v97 = v422;
      v115 = v419;
    }

    else
    {
      v163 = v136;
      sub_1B81F7E58();
      OUTLINED_FUNCTION_7_7();
      v164 = OUTLINED_FUNCTION_43_2();
      v165(v164);
      OUTLINED_FUNCTION_28_1(&v436);

      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC78, &qword_1B81FF098);
      v167 = OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_18_4(v167, v168, v166);
      v138 = MEMORY[0x1E69E7CC0];
      v139 = v423;
      v97 = v422;
      v115 = v419;
      if (v169)
      {
        sub_1B81C7CD0(v163, &qword_1EBA7DC68, &qword_1B81FF088);
        v137 = 1;
      }

      else
      {
        sub_1B81F7E48();
        OUTLINED_FUNCTION_15_4();
        v199 = OUTLINED_FUNCTION_110();
        v200(v199);
        v137 = 0;
      }
    }

    v201 = sub_1B81F7F78();
    __swift_storeEnumTagSinglePayload(v97, v137, 1, v201);
    sub_1B81F7CE8();
    OUTLINED_FUNCTION_2_5(v115);
    if (v169)
    {
      sub_1B81C7CD0(v115, &qword_1EBA7DC60, &qword_1B81FF080);
      OUTLINED_FUNCTION_42_2();
    }

    else
    {
      sub_1B81F7E68();
      v115 = v202;
      OUTLINED_FUNCTION_7_7();
      (*(v203 + 8))();
    }

    sub_1B81F7CD8();
    v204 = v431;
    sub_1B81F7F18();
    OUTLINED_FUNCTION_2_5(v204);
    if (v169)
    {
      sub_1B81C7CD0(v204, &qword_1EBA7DC50, &qword_1B81FF070);
      OUTLINED_FUNCTION_36_1();
    }

    else
    {
      sub_1B81F7EF8();
      OUTLINED_FUNCTION_7_7();
      v205 = OUTLINED_FUNCTION_39_1();
      v206(v205);
    }

    sub_1B81F7CD8();
    OUTLINED_FUNCTION_2_5(v139);
    if (v169)
    {
      sub_1B81C7CD0(v139, &qword_1EBA7DC50, &qword_1B81FF070);
      OUTLINED_FUNCTION_35_1();
    }

    else
    {
      sub_1B81F7F08();
      OUTLINED_FUNCTION_7_7();
      v207 = OUTLINED_FUNCTION_31_1();
      v208(v207);
    }

    OUTLINED_FUNCTION_13_6(v97);
    if (!v169 || v115)
    {
      OUTLINED_FUNCTION_46_2(v97, &v440);
      OUTLINED_FUNCTION_13_6(v139);
      if (v169)
      {
        sub_1B81C7CD0(v139, &qword_1EBA7DC58, &qword_1B81FF078);
        OUTLINED_FUNCTION_34_2();
      }

      else
      {
        sub_1B81F7F68();
        OUTLINED_FUNCTION_14_7();
        v209 = OUTLINED_FUNCTION_44_2();
        v210(v209);
      }

      v211 = objc_allocWithZone(MEMORY[0x1E6999228]);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_47_2();
      OUTLINED_FUNCTION_4_4(v212, v213, v214, v215, v216, v217, v218, v219, v381, v382, v383);
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_11_6();
      if (v220)
      {
        OUTLINED_FUNCTION_12_6();
      }

      OUTLINED_FUNCTION_32_2();
      v126 = v441;
      v133 = v425;
    }

    else
    {
      v126 = MEMORY[0x1E69E7CC0];
    }

    v221 = OUTLINED_FUNCTION_37_2();
    v222(v221);
    v223 = v97;
    goto LABEL_86;
  }

  if (v119 == *MEMORY[0x1E69D9FC8])
  {
    v157 = OUTLINED_FUNCTION_10_5();
    v158(v157);
    OUTLINED_FUNCTION_41_3();
    v159 = OUTLINED_FUNCTION_19_1();
    v97 = v415[2];
    v160(v159);
    OUTLINED_FUNCTION_16_4();
    sub_1B81F7D58();
    v161 = sub_1B81F7E78();
    OUTLINED_FUNCTION_2_5(v115);
    if (v169)
    {
      sub_1B81C7CD0(v115, &qword_1EBA7DC60, &qword_1B81FF080);
      v138 = MEMORY[0x1E69E7CC0];
      v162 = v415[0];
      v133 = v416;
    }

    else
    {
      sub_1B81F7E58();
      OUTLINED_FUNCTION_7_7();
      v193 = OUTLINED_FUNCTION_43_2();
      v194(v193);
      OUTLINED_FUNCTION_28_1(&v430);

      v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC78, &qword_1B81FF098);
      v196 = OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_18_4(v196, v197, v195);
      v138 = MEMORY[0x1E69E7CC0];
      v162 = v415[0];
      v133 = v416;
      if (v198)
      {
        sub_1B81C7CD0(v115, &qword_1EBA7DC68, &qword_1B81FF088);
      }

      else
      {
        sub_1B81F7E48();
        OUTLINED_FUNCTION_15_4();
        v238 = OUTLINED_FUNCTION_110();
        v239(v238);
      }
    }

    v240 = sub_1B81F7F78();
    OUTLINED_FUNCTION_22_3(v240);
    v241 = v413[2];
    sub_1B81F7D58();
    OUTLINED_FUNCTION_2_5(v241);
    if (v169)
    {
      sub_1B81C7CD0(v241, &qword_1EBA7DC60, &qword_1B81FF080);
      OUTLINED_FUNCTION_42_2();
    }

    else
    {
      sub_1B81F7E68();
      v115 = v242;
      OUTLINED_FUNCTION_7_7();
      (*(v243 + 8))(v244, v161);
    }

    sub_1B81F7D78();
    v245 = v420;
    sub_1B81F7F18();
    OUTLINED_FUNCTION_2_5(v245);
    if (v169)
    {
      sub_1B81C7CD0(v245, &qword_1EBA7DC50, &qword_1B81FF070);
      OUTLINED_FUNCTION_36_1();
    }

    else
    {
      sub_1B81F7EF8();
      OUTLINED_FUNCTION_7_7();
      v246 = OUTLINED_FUNCTION_39_1();
      v247(v246);
    }

    sub_1B81F7D78();
    OUTLINED_FUNCTION_2_5(v162);
    if (v169)
    {
      sub_1B81C7CD0(v162, &qword_1EBA7DC50, &qword_1B81FF070);
      OUTLINED_FUNCTION_35_1();
    }

    else
    {
      sub_1B81F7F08();
      OUTLINED_FUNCTION_7_7();
      v248 = OUTLINED_FUNCTION_31_1();
      v249(v248);
    }

    OUTLINED_FUNCTION_13_6(v133);
    if (!v169 || v115)
    {
      OUTLINED_FUNCTION_46_2(v133, &v431);
      OUTLINED_FUNCTION_13_6(v162);
      if (v169)
      {
        sub_1B81C7CD0(v162, &qword_1EBA7DC58, &qword_1B81FF078);
        OUTLINED_FUNCTION_34_2();
      }

      else
      {
        sub_1B81F7F68();
        OUTLINED_FUNCTION_14_7();
        v250 = OUTLINED_FUNCTION_44_2();
        v251(v250);
      }

      v252 = objc_allocWithZone(MEMORY[0x1E6999228]);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_47_2();
      OUTLINED_FUNCTION_4_4(v253, v254, v255, v256, v257, v258, v259, v260, v381, v382, v383);
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_11_6();
      if (v220)
      {
        OUTLINED_FUNCTION_12_6();
      }

      OUTLINED_FUNCTION_32_2();
      v126 = v441;
      v133 = v416;
    }

    else
    {
      v126 = MEMORY[0x1E69E7CC0];
    }

    v261 = &v444;
LABEL_85:
    (*(*(v261 - 32) + 1))(v118, v97);
    v223 = v133;
LABEL_86:
    sub_1B81C7CD0(v223, &qword_1EBA7DC58, &qword_1B81FF078);
    goto LABEL_95;
  }

  if (v119 == *MEMORY[0x1E69D9FC0])
  {
    v186 = OUTLINED_FUNCTION_10_5();
    v187(v186);
    OUTLINED_FUNCTION_41_3();
    v188 = OUTLINED_FUNCTION_19_1();
    v133 = v410;
    v189(v188);
    OUTLINED_FUNCTION_16_4();
    sub_1B81F7D18();
    OUTLINED_FUNCTION_18_4(v115, 1, v97);
    if (v169)
    {
      v236 = sub_1B81C7CD0(v115, &qword_1EBA7DC70, &qword_1B81FF090);
      v138 = MEMORY[0x1E69E7CC0];
      v233 = v436;
    }

    else
    {
      v229 = OUTLINED_FUNCTION_26_1();
      sub_1B81C50D4(v229, v230, v231, v232, 2, 0, 0);
      v233 = v436;
      v234 = OUTLINED_FUNCTION_33_2();
      v236 = v235(v234);
      v138 = MEMORY[0x1E69E7CC0];
    }

    v237 = v407;
    MEMORY[0x1B8CBAEA0](v236);
    OUTLINED_FUNCTION_11_6();
    if (v220)
    {
      OUTLINED_FUNCTION_12_6();
    }

    OUTLINED_FUNCTION_32_2();
    sub_1B81F7D08();
    OUTLINED_FUNCTION_18_4(v237, 1, v97);
    if (v169)
    {
      v273 = sub_1B81C7CD0(v237, &qword_1EBA7DC70, &qword_1B81FF090);
    }

    else
    {
      v269 = OUTLINED_FUNCTION_26_1();
      sub_1B81C50D4(v269, v270, v271, v272, 3, 0, 0);
      v273 = (*(v233 + 8))(v237, v97);
    }

    MEMORY[0x1B8CBAEA0](v273);
    OUTLINED_FUNCTION_11_6();
    if (v220)
    {
      OUTLINED_FUNCTION_12_6();
    }

    OUTLINED_FUNCTION_32_2();
    v126 = v441;
    v185 = *(v414 + 8);
    v183 = v118;
    v184 = v133;
    goto LABEL_94;
  }

  if (v119 == *MEMORY[0x1E69D9FD0])
  {
    v224 = OUTLINED_FUNCTION_10_5();
    v225(v224);
    OUTLINED_FUNCTION_41_3();
    v226 = OUTLINED_FUNCTION_19_1();
    v97 = v405;
    v227(v226);
    OUTLINED_FUNCTION_16_4();
    sub_1B81F7B78();
    sub_1B81F7E78();
    OUTLINED_FUNCTION_2_5(v115);
    if (v169)
    {
      sub_1B81C7CD0(v115, &qword_1EBA7DC60, &qword_1B81FF080);
      v138 = MEMORY[0x1E69E7CC0];
      v228 = v404;
      v133 = v406;
      v115 = v403;
    }

    else
    {
      v278 = v115;
      sub_1B81F7E58();
      OUTLINED_FUNCTION_7_7();
      v279 = OUTLINED_FUNCTION_43_2();
      v280(v279);
      OUTLINED_FUNCTION_28_1(&v417);

      v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC78, &qword_1B81FF098);
      v282 = OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_18_4(v282, v283, v281);
      v138 = MEMORY[0x1E69E7CC0];
      v228 = v404;
      v133 = v406;
      v115 = v403;
      if (v284)
      {
        sub_1B81C7CD0(v278, &qword_1EBA7DC68, &qword_1B81FF088);
      }

      else
      {
        sub_1B81F7E48();
        OUTLINED_FUNCTION_15_4();
        v299 = OUTLINED_FUNCTION_110();
        v300(v299);
      }
    }

    v301 = sub_1B81F7F78();
    OUTLINED_FUNCTION_22_3(v301);
    sub_1B81F7B78();
    OUTLINED_FUNCTION_2_5(v115);
    if (v169)
    {
      sub_1B81C7CD0(v115, &qword_1EBA7DC60, &qword_1B81FF080);
      OUTLINED_FUNCTION_42_2();
    }

    else
    {
      sub_1B81F7E68();
      v115 = v302;
      OUTLINED_FUNCTION_7_7();
      (*(v303 + 8))();
    }

    sub_1B81F7B68();
    v304 = v409;
    sub_1B81F7F18();
    OUTLINED_FUNCTION_2_5(v304);
    if (v169)
    {
      sub_1B81C7CD0(v304, &qword_1EBA7DC50, &qword_1B81FF070);
      OUTLINED_FUNCTION_36_1();
    }

    else
    {
      sub_1B81F7EF8();
      OUTLINED_FUNCTION_7_7();
      v305 = OUTLINED_FUNCTION_39_1();
      v306(v305);
    }

    sub_1B81F7B68();
    OUTLINED_FUNCTION_2_5(v228);
    if (v169)
    {
      sub_1B81C7CD0(v228, &qword_1EBA7DC50, &qword_1B81FF070);
      OUTLINED_FUNCTION_35_1();
    }

    else
    {
      sub_1B81F7F08();
      OUTLINED_FUNCTION_7_7();
      v307 = OUTLINED_FUNCTION_31_1();
      v308(v307);
    }

    OUTLINED_FUNCTION_13_6(v133);
    if (!v169 || v115)
    {
      OUTLINED_FUNCTION_46_2(v133, v418);
      OUTLINED_FUNCTION_13_6(v228);
      if (v169)
      {
        sub_1B81C7CD0(v228, &qword_1EBA7DC58, &qword_1B81FF078);
        OUTLINED_FUNCTION_34_2();
      }

      else
      {
        sub_1B81F7F68();
        OUTLINED_FUNCTION_14_7();
        v309 = OUTLINED_FUNCTION_44_2();
        v310(v309);
      }

      v311 = objc_allocWithZone(MEMORY[0x1E6999228]);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_47_2();
      OUTLINED_FUNCTION_4_4(v312, v313, v314, v315, v316, v317, v318, v319, v381, v382, v383);
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_11_6();
      if (v220)
      {
        OUTLINED_FUNCTION_12_6();
      }

      OUTLINED_FUNCTION_32_2();
      v126 = v441;
      v133 = v406;
    }

    else
    {
      v126 = MEMORY[0x1E69E7CC0];
    }

    v261 = v435;
    goto LABEL_85;
  }

  if (v119 == *MEMORY[0x1E69D9FE8])
  {
    v262 = OUTLINED_FUNCTION_10_5();
    v263(v262);
    v133 = v400;
    v264 = OUTLINED_FUNCTION_19_1();
    v265 = v401;
    v266(v264);
    OUTLINED_FUNCTION_16_4();
    sub_1B81F7C08();
    OUTLINED_FUNCTION_18_4(v115, 1, v97);
    if (v169)
    {
      v267 = sub_1B81C7CD0(v115, &qword_1EBA7DC70, &qword_1B81FF090);
      v138 = MEMORY[0x1E69E7CC0];
      v268 = v436;
    }

    else
    {
LABEL_111:
      v290 = OUTLINED_FUNCTION_20_3();
      sub_1B81C50D4(v290, v291, v292, v293, v294, v295, v296);
      v268 = v436;
      v297 = OUTLINED_FUNCTION_33_2();
      v267 = v298(v297);
      v138 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1B8CBAEA0](v267);
    OUTLINED_FUNCTION_11_6();
    if (v220)
    {
      OUTLINED_FUNCTION_12_6();
    }

    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_16_4();
    sub_1B81F7C18();
    OUTLINED_FUNCTION_18_4(v115, 1, v97);
    if (v169)
    {
      v333 = sub_1B81C7CD0(v115, &qword_1EBA7DC70, &qword_1B81FF090);
    }

    else
    {
      v326 = OUTLINED_FUNCTION_20_3();
      sub_1B81C50D4(v326, v327, v328, v329, v330, v331, v332);
      v333 = (*(v268 + 8))(v115, v97);
    }

    MEMORY[0x1B8CBAEA0](v333);
    OUTLINED_FUNCTION_11_6();
    if (v220)
    {
      OUTLINED_FUNCTION_12_6();
    }

    OUTLINED_FUNCTION_32_2();
    v126 = v441;
    v334 = *(v133 + 8);
    v133 += 8;
    v334(v118, v265);
    goto LABEL_95;
  }

  if (v119 == *MEMORY[0x1E69D9FA8])
  {
    v285 = OUTLINED_FUNCTION_10_5();
    v286(v285);
    OUTLINED_FUNCTION_41_3();
    v287 = OUTLINED_FUNCTION_19_1();
    v97 = v397;
    v288(v287);
    OUTLINED_FUNCTION_16_4();
    sub_1B81F7C58();
    sub_1B81F7E78();
    OUTLINED_FUNCTION_2_5(v115);
    if (v169)
    {
      sub_1B81C7CD0(v115, &qword_1EBA7DC60, &qword_1B81FF080);
      v138 = MEMORY[0x1E69E7CC0];
      v289 = v396;
      v133 = v398;
      v115 = v395;
    }

    else
    {
      v335 = v115;
      sub_1B81F7E58();
      OUTLINED_FUNCTION_7_7();
      v336 = OUTLINED_FUNCTION_43_2();
      v337(v336);
      OUTLINED_FUNCTION_28_1(&v410);

      v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC78, &qword_1B81FF098);
      v339 = OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_18_4(v339, v340, v338);
      v138 = MEMORY[0x1E69E7CC0];
      v289 = v396;
      v133 = v398;
      v115 = v395;
      if (v341)
      {
        sub_1B81C7CD0(v335, &qword_1EBA7DC68, &qword_1B81FF088);
      }

      else
      {
        sub_1B81F7E48();
        OUTLINED_FUNCTION_15_4();
        v347 = OUTLINED_FUNCTION_110();
        v348(v347);
      }
    }

    v349 = sub_1B81F7F78();
    OUTLINED_FUNCTION_22_3(v349);
    sub_1B81F7C58();
    OUTLINED_FUNCTION_2_5(v115);
    if (v169)
    {
      sub_1B81C7CD0(v115, &qword_1EBA7DC60, &qword_1B81FF080);
      OUTLINED_FUNCTION_42_2();
    }

    else
    {
      sub_1B81F7E68();
      v115 = v350;
      OUTLINED_FUNCTION_7_7();
      (*(v351 + 8))();
    }

    sub_1B81F7C48();
    v352 = v399;
    sub_1B81F7F18();
    OUTLINED_FUNCTION_2_5(v352);
    if (v169)
    {
      sub_1B81C7CD0(v352, &qword_1EBA7DC50, &qword_1B81FF070);
      OUTLINED_FUNCTION_36_1();
    }

    else
    {
      sub_1B81F7EF8();
      OUTLINED_FUNCTION_7_7();
      v353 = OUTLINED_FUNCTION_39_1();
      v354(v353);
    }

    sub_1B81F7C48();
    OUTLINED_FUNCTION_2_5(v289);
    if (v169)
    {
      sub_1B81C7CD0(v289, &qword_1EBA7DC50, &qword_1B81FF070);
      OUTLINED_FUNCTION_35_1();
    }

    else
    {
      sub_1B81F7F08();
      OUTLINED_FUNCTION_7_7();
      v355 = OUTLINED_FUNCTION_31_1();
      v356(v355);
    }

    OUTLINED_FUNCTION_13_6(v133);
    if (!v169 || v115)
    {
      OUTLINED_FUNCTION_46_2(v133, &v411);
      OUTLINED_FUNCTION_13_6(v289);
      if (v169)
      {
        sub_1B81C7CD0(v289, &qword_1EBA7DC58, &qword_1B81FF078);
        OUTLINED_FUNCTION_34_2();
      }

      else
      {
        sub_1B81F7F68();
        OUTLINED_FUNCTION_14_7();
        v357 = OUTLINED_FUNCTION_44_2();
        v358(v357);
      }

      v359 = objc_allocWithZone(MEMORY[0x1E6999228]);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_47_2();
      OUTLINED_FUNCTION_4_4(v360, v361, v362, v363, v364, v365, v366, v367, v381, v382, v383);
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_11_6();
      if (v220)
      {
        OUTLINED_FUNCTION_12_6();
      }

      OUTLINED_FUNCTION_32_2();
      v126 = v441;
      v133 = v398;
    }

    else
    {
      v126 = MEMORY[0x1E69E7CC0];
    }

    v261 = &v421;
    goto LABEL_85;
  }

  if (v119 == *MEMORY[0x1E69D9FD8])
  {
    v320 = OUTLINED_FUNCTION_10_5();
    v321(v320);
    OUTLINED_FUNCTION_40_3();
    v133 = v392;
    v322 = OUTLINED_FUNCTION_37_2();
    v323 = v394;
    v324(v322);
    v325 = v391;
    sub_1B81F7BB8();
  }

  else
  {
    if (v119 == *MEMORY[0x1E69D9FA0])
    {
      v342 = sub_1B81DA3B0();
      swift_beginAccess();
      OUTLINED_FUNCTION_40_3();
      v133 = v385;
      v344 = v388;
      (*(v343 + 16))(v385, v342, v388);
      v345 = sub_1B81F8028();
      v346 = sub_1B81F9188();
      if (os_log_type_enabled(v345, v346))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_1B8182000, v345, v346, "Generic event is not supported", v115, 2u);
        MEMORY[0x1B8CBBAE0](v115, -1, -1);
      }

      (*(v103 + 8))(v133, v344);
      (*(v111 + 8))(v118, v109);
      v126 = MEMORY[0x1E69E7CC0];
      goto LABEL_32;
    }

    if (v119 != *MEMORY[0x1E69D9FB0])
    {
      v439 = 0;
      v440 = 0xE000000000000000;
      sub_1B81F9298();

      v439 = 0xD00000000000001BLL;
      v440 = 0x80000001B8202300;
      sub_1B81F7E08();
      v380 = sub_1B81F8FA8();
      MEMORY[0x1B8CBAE10](v380);

      result = sub_1B81F9328();
      __break(1u);
      return result;
    }

    v368 = OUTLINED_FUNCTION_10_5();
    v369(v368);
    OUTLINED_FUNCTION_40_3();
    v133 = v386;
    v370 = OUTLINED_FUNCTION_37_2();
    v323 = v390;
    v371(v370);
    v325 = v384;
    sub_1B81F7CA8();
  }

  OUTLINED_FUNCTION_18_4(v325, 1, v97);
  if (v169)
  {
    v379 = sub_1B81C7CD0(v325, &qword_1EBA7DC70, &qword_1B81FF090);
  }

  else
  {
    v372 = OUTLINED_FUNCTION_20_3();
    sub_1B81C50D4(v372, v373, v374, v375, v376, v377, v378);
    v379 = (*(v436 + 8))(v325, v97);
  }

  v138 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CBAEA0](v379);
  OUTLINED_FUNCTION_11_6();
  if (v220)
  {
    OUTLINED_FUNCTION_12_6();
  }

  OUTLINED_FUNCTION_32_2();
  v126 = v441;
  (*(v103 + 8))(v133, v323);
LABEL_95:
  v274 = 0;
  v438 = v138;
  v265 = *(v126 + 16);
  while (v265 != v274)
  {
    if (v274 >= *(v126 + 16))
    {
      __break(1u);
      goto LABEL_111;
    }

    v275 = *(v126 + 8 * v274++ + 32);
    if (v275)
    {
      v276 = v275;
      MEMORY[0x1B8CBAEA0]();
      v115 = *((v438 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v115 >= *((v438 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_12_6();
      }

      OUTLINED_FUNCTION_32_2();
      v138 = v438;
    }
  }

  return v138;
}

uint64_t sub_1B81C7A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC78, &qword_1B81FF098);
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

id sub_1B81C7AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    v19 = sub_1B81F8F58();

    if (a4)
    {
LABEL_3:
      v20 = sub_1B81F8F58();

      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_6:
  if (a7)
  {
    v21 = sub_1B81F8F58();
  }

  else
  {
    v21 = 0;
  }

  if (!a11)
  {
    v22 = 0;
    if (a13)
    {
      goto LABEL_11;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v22 = sub_1B81F8F58();

  if (!a13)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = sub_1B81F8F58();

LABEL_14:
  v24 = [v13 initWithMailAccountIdentifier:v19 messageIdentifier:v20 type:a5 label:v21 address:v22 airportCode:v23 latitude:a9 longitude:a10];

  return v24;
}

uint64_t sub_1B81C7C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC58, &qword_1B81FF078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B81C7CD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_15_4();
  (*(v4 + 8))(a1);
  return a1;
}

id OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = *(v16 - 192);
  v21 = *(v16 - 176);

  return sub_1B81C7AF8(v20, v15, v21, v14, 0, v11, v13, v12, v18, v19, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return sub_1B81F90D8();
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_28_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return sub_1B81C7A44(v1, v3);
}

double OUTLINED_FUNCTION_29_1()
{

  return result;
}

void OUTLINED_FUNCTION_30_1()
{

  JUMPOUT(0x1B8CBAEA0);
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return sub_1B81F90E8();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_1B81F90D8();
}

uint64_t OUTLINED_FUNCTION_46_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1B81C7C60(a1, v3);
}

double OUTLINED_FUNCTION_47_2()
{

  return result;
}

uint64_t sub_1B81C8128(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B81C8188@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81C81E4(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1B81C8248(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_suggestionDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B8194D4C;
}

id SGReminderSuggestion.init(realtimeReminder:)(void *a1)
{
  v3 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_realTimeReminder] = a1;
  v10 = a1;
  result = [v10 reminder];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder] = result;
    v12 = sub_1B81CA090(v10, &selRef_notes);
    v13 = &v1[OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminderNotes];
    *v13 = v12;
    v13[1] = v14;
    sub_1B8186FE0();

    sub_1B81F8038();
    (*(v5 + 32))(&v1[OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_logger], v9, v3);
    v15 = [objc_opt_self() currentDevice];
    v16 = [v15 userInterfaceIdiom];

    v1[OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_bannerForVisionDevice] = v16 == 6;
    v18.receiver = v1;
    v18.super_class = type metadata accessor for SGReminderSuggestion(0);
    v17 = objc_msgSendSuper2(&v18, sel_init);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B81C8550()
{
  sub_1B8189AF0(0, &qword_1EBA7DC98, 0x1E696AAB0);
  v1 = [*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder) title];
  v2 = sub_1B81F8F98();
  v4 = v3;

  return sub_1B81C8FAC(v2, v4, &selRef_initWithString_);
}

id sub_1B81C8620()
{
  v1 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminderNotes + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminderNotes);
  sub_1B8189AF0(0, &qword_1EBA7DC98, 0x1E696AAB0);

  return sub_1B81C8FAC(v2, v1, &selRef_initWithString_);
}

uint64_t sub_1B81C87A0@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder) dueDateComponents];
  if (v3)
  {
    v4 = v3;
    sub_1B81F78D8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B81F78E8();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

id sub_1B81C886C()
{
  v1 = sub_1B81F7A28();
  v2 = OUTLINED_FUNCTION_21(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v5 = v4 - v3;
  v6 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder);
  v7 = [v6 dueLocation];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  sub_1B8189AF0(0, &qword_1EBA7DCA0, 0x1E6985C40);
  [v8 latitude];
  v10 = v9;
  [v8 longitude];
  v12 = CLLocationCoordinate2DMake(v10, v11);
  [v8 accuracy];
  v14 = v13;
  [v8 accuracy];
  v16 = v15;
  v17 = [v6 creationDate];
  sub_1B81F7A18();

  v18 = sub_1B81C89E4(v5, v12.latitude, v12.longitude, 0.0, v14, v16);
  return v18;
}

id sub_1B81C89E4(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_1B81F7A08();
  v14 = [v12 initWithCoordinate:v13 altitude:a2 horizontalAccuracy:a3 verticalAccuracy:a4 timestamp:{a5, a6}];

  v15 = sub_1B81F7A28();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

uint64_t sub_1B81C8B38()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder) dueLocation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 label];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = sub_1B81F8F98();

  return v5;
}

uint64_t sub_1B81C8CB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B81F79D8();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

id sub_1B81C8D44()
{
  v1 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder);
  result = [v1 sourceURL];
  if (result)
  {
    v3 = result;
    v4 = [v1 origin];
    v5 = [v4 type];

    if (v5 == 1 || (v6 = [v1 origin], v7 = objc_msgSend(v6, sel_type), v6, v7 == 4))
    {
      sub_1B8189AF0(0, &qword_1EBA7DCA8, 0x1E69636A8);
      v8 = sub_1B81F8F98();
      v10 = sub_1B81C8FAC(v8, v9, &selRef_initWithActivityType_);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DCB0, &unk_1B81FF0A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B81FD1B0;
      v12 = MEMORY[0x1E69E6158];
      sub_1B81F9248();
      v13 = sub_1B81CA090(v3, &selRef_absoluteString);
      *(inited + 96) = v12;
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = 0xE000000000000000;
      if (v14)
      {
        v16 = v14;
      }

      *(inited + 72) = v15;
      *(inited + 80) = v16;
      v17 = sub_1B81F8F08();
      sub_1B81C9DA8(v17, v10);
    }

    else
    {

      return 0;
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B81C8FAC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1B81F8F58();

  v6 = [v4 *a3];

  return v6;
}

uint64_t sub_1B81C9064()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder) dueLocationTrigger];
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 == 1;
  }
}

id sub_1B81C90A4(uint64_t a1, char a2)
{
  v5 = v2;
  v6 = sub_1B81F8028();
  v7 = sub_1B81F91A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = [*&v5[OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder] loggingIdentifier];
    v10 = sub_1B81F8F98();
    v12 = v11;

    v13 = sub_1B81B7ED8(v10, v12, v23);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    if (a2)
    {
      v14 = 32;
    }

    else
    {
      v14 = 7630670;
    }

    if (a2)
    {
      v15 = 0xE100000000000000;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_1B81B7ED8(v14, v15, v23);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1B8182000, v6, v7, "SGReminderSuggestion - SGReminder %s ViewController dismissed. %s confirming reminder", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_5_1();
  }

  result = [v5 dismissViewController:a1 finished:a2 & 1];
  if (a2)
  {
    v18 = [objc_opt_self() serviceForReminders];
    v19 = *&v5[OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder];
    v20 = swift_allocObject();
    *(v20 + 16) = v5;
    v23[4] = sub_1B81C9E28;
    v23[5] = v20;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_1B81A5C0C;
    v23[3] = &block_descriptor_4;
    v21 = _Block_copy(v23);
    v22 = v5;

    [v18 confirmRealtimeReminder:v19 withCompletion:v21];
    _Block_release(v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B81C93BC()
{
  v0 = currentUIContext();
  v1 = v0 == 0;
  if (v0)
  {
    v2 = 0xD000000000000023;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (v1)
  {
    v3 = "uttonAddToReminders";
  }

  else
  {
    v3 = "yContinuityURLKey";
  }

  sub_1B81871D4(v2, v3 | 0x8000000000000000);
  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_16_0();
}

id sub_1B81C942C()
{
  v0 = [objc_opt_self() spotlightIconImageWithBundleIdentifier_];

  return v0;
}

uint64_t sub_1B81C9478()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v4 = v3;
  (*((*v1 & *v0) + 0x110))();
  OUTLINED_FUNCTION_7_4();
  if (v4 && v0)
  {
    sub_1B81871D4(0xD00000000000003CLL, 0x80000001B82023A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B81FC7C0;
    v6 = MEMORY[0x1E69E6158];
    *(v5 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1B81A6928();
    *(v5 + 32) = v2;
    *(v5 + 40) = v4;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = v1;
    *(v5 + 80) = v0;
    sub_1B81F8F68();
    OUTLINED_FUNCTION_7_4();
  }

  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1B81C95E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder);
  v2 = [v1 dueLocation];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v1 dueLocationTrigger];
  if (!v4)
  {
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    if (v4 == 1)
    {
      sub_1B81871D4(0xD00000000000002CLL, 0x80000001B8202410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1B81FD1B0;
      result = sub_1B81CA090(v3, &selRef_label);
      if (!v7)
      {
        __break(1u);
        goto LABEL_7;
      }

LABEL_10:
      v9 = result;
      v10 = v7;
      *(v5 + 56) = MEMORY[0x1E69E6158];
      *(v5 + 64) = sub_1B81A6928();
      *(v5 + 32) = v9;
      *(v5 + 40) = v10;
      v8 = sub_1B81F8F68();

      return v8;
    }

LABEL_7:

    return 0;
  }

  sub_1B81871D4(0xD000000000000029, 0x80000001B82023E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B81FD1B0;
  result = sub_1B81CA090(v3, &selRef_label);
  if (v7)
  {
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_1B81C97A0()
{
  v45 = sub_1B81F7A28();
  OUTLINED_FUNCTION_1_0();
  v43 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v42 = v4 - v3;
  v44 = sub_1B81F7A88();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DCB8, &qword_1B81FF0B0);
  v12 = OUTLINED_FUNCTION_21(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  v18 = sub_1B81F78E8();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v40 - v25;
  v27 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder);
  v28 = [v27 dueDateComponents];
  if (!v28)
  {
    return v28;
  }

  sub_1B81F78D8();

  (*(v20 + 32))(v26, v24, v18);
  sub_1B81F7A78();
  sub_1B81F7A68();
  (*(v6 + 8))(v10, v44);
  sub_1B81CA0E8(v17, v15);
  v29 = v45;
  if (__swift_getEnumTagSinglePayload(v15, 1, v45) == 1)
  {
    sub_1B8192D84(v17, &qword_1EBA7DCB8, &qword_1B81FF0B0);
    (*(v20 + 8))(v26, v18);
    sub_1B8192D84(v15, &qword_1EBA7DCB8, &qword_1B81FF0B0);
    return 0;
  }

  v30 = v29;
  v40 = v26;
  v41 = v17;
  v44 = v18;
  v32 = v42;
  v31 = v43;
  v33 = v30;
  (*(v43 + 32))(v42, v15, v30);
  v34 = [v27 isAllDay];
  v35 = objc_opt_self();
  if (v34)
  {
    result = [v35 reminderAllDayDateFormatter];
    if (result)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    result = [v35 reminderDateTimeFormatter];
    if (result)
    {
LABEL_9:
      v37 = result;
      v38 = sub_1B81F7A08();
      v39 = [v37 stringFromDate_];

      v28 = sub_1B81F8F98();
      (*(v31 + 8))(v32, v33);
      sub_1B8192D84(v41, &qword_1EBA7DCB8, &qword_1B81FF0B0);
      (*(v20 + 8))(v40, v44);
      return v28;
    }
  }

  __break(1u);
  return result;
}

id SGReminderSuggestion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGReminderSuggestion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGReminderSuggestion(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SGReminderSuggestion(uint64_t a1)
{
  result = qword_1EDC8BCA0;
  if (!qword_1EDC8BCA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B81C9DA8(uint64_t a1, void *a2)
{
  v3 = sub_1B81F8EE8();

  [a2 setUserInfo_];
}

void sub_1B81C9E28(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + 16);
    v4 = a1;
    oslog = sub_1B81F8028();
    v5 = sub_1B81F9188();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v6 = 136315650;
      v8 = *&v3[OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder];
      v9 = [v8 loggingIdentifier];
      v10 = sub_1B81F8F98();
      v12 = v11;

      v13 = sub_1B81B7ED8(v10, v12, &v20);

      *(v6 + 4) = v13;
      *(v6 + 12) = 2112;
      v14 = [v8 recordId];
      *(v6 + 14) = v14;
      *v7 = v14;
      *(v6 + 22) = 2080;
      v15 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DCD0, &unk_1B81FF140);
      v16 = sub_1B81F8FA8();
      v18 = sub_1B81B7ED8(v16, v17, &v20);

      *(v6 + 24) = v18;
      _os_log_impl(&dword_1B8182000, oslog, v5, "SGReminderSuggestion - SGReminder %s\nUnable to confirm reminder with recordId: %@ err: %s", v6, 0x20u);
      sub_1B8192D84(v7, &unk_1EBA7D190, &unk_1B81FFFD0);
      OUTLINED_FUNCTION_5_1();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_5_1();
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B81CA090(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1B81F8F98();
    OUTLINED_FUNCTION_7_4();
  }

  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1B81CA0E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DCB8, &qword_1B81FF0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B81CA160(uint64_t a1)
{
  result = sub_1B81F8058();
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

char *SGBannerContentHostingView.init(banner:)(void *a1)
{
  v3 = type metadata accessor for SGBannerContainerView(0);
  v4 = OUTLINED_FUNCTION_21(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v5 = OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_hostingController;
  *&v1[OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_hostingController] = 0;
  v6 = OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_suggestionStore;
  *&v1[OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_suggestionStore] = 0;
  v7 = OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_updateViewModel;
  type metadata accessor for BannerUpdateViewModel(0);
  *&v1[v7] = BannerUpdateViewModel.__allocating_init(updateView:)(0);
  *&v1[OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_banner] = a1;
  v8 = *&v1[v6];
  v9 = a1;

  SGBannerContainerView.init(_:store:updateBannerView:)();
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DCD8, &unk_1B81FF150));
  v11 = sub_1B81F8618();
  v12 = *&v1[v5];
  *&v1[v5] = v11;

  v1[OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_invalidateBannerConstraints] = 0;
  v1[OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_computeViewBounds] = 0;
  v39.receiver = v1;
  v39.super_class = type metadata accessor for SGBannerContentHostingView();
  result = objc_msgSendSuper2(&v39, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_hostingController;
  v15 = *&result[OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_hostingController];
  if (!v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = result;
  v17 = v15;
  sub_1B81F8608();

  result = *&v16[v14];
  if (!result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v18 = [result view];
  if (v18)
  {
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DCE0, &unk_1B81FF160);
    if (swift_dynamicCastClass())
    {
      sub_1B81F82A8();
    }
  }

  result = *&v16[v14];
  if (!result)
  {
    goto LABEL_13;
  }

  v20 = [result view];
  if (v20)
  {
    v21 = v20;
    v22 = v16;
    [v22 bounds];
    [v21 setFrame_];
    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    v23 = [objc_opt_self() clearColor];
    [v21 setBackgroundColor_];

    [v22 addSubview_];
    v24 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1B81FEAB0;
    v26 = [v21 leadingAnchor];
    v27 = [v22 leadingAnchor];
    v28 = OUTLINED_FUNCTION_1_2();

    *(v25 + 32) = v28;
    v29 = [v21 trailingAnchor];
    v30 = [v22 trailingAnchor];
    v31 = OUTLINED_FUNCTION_1_2();

    *(v25 + 40) = v31;
    v32 = [v21 topAnchor];
    v33 = [v22 topAnchor];
    v34 = OUTLINED_FUNCTION_1_2();

    *(v25 + 48) = v34;
    v35 = [v21 bottomAnchor];
    v36 = [v22 bottomAnchor];

    v37 = OUTLINED_FUNCTION_1_2();
    *(v25 + 56) = v37;
    sub_1B81CA9A0();
    v38 = sub_1B81F90A8();

    [v24 activateConstraints_];
  }

  return v16;
}

unint64_t sub_1B81CA9A0()
{
  result = qword_1EDC8AF38;
  if (!qword_1EDC8AF38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC8AF38);
  }

  return result;
}

void sub_1B81CAA0C()
{
  *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_hostingController) = 0;
  *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_suggestionStore) = 0;
  v1 = OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_updateViewModel;
  type metadata accessor for BannerUpdateViewModel(0);
  *(v0 + v1) = BannerUpdateViewModel.__allocating_init(updateView:)(0);
  sub_1B81F9328();
  __break(1u);
}

id sub_1B81CAAC4()
{
  v1 = v0;
  v2 = type metadata accessor for SGBannerViewModel(0);
  v3 = OUTLINED_FUNCTION_21(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v6 = v5 - v4;
  v7 = type metadata accessor for SGBannerContainerView(0);
  v8 = OUTLINED_FUNCTION_21(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  v12 = *(**(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_updateViewModel) + 104);

  v13 = v12(v18);
  *v14 = !*v14;
  v13(v18, 0);

  result = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_suggestionStore);
  if (result)
  {
    result = [result hostApp];
  }

  v16 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_hostingController);
  if (v16)
  {
    v17 = v16;
    sub_1B81F8628();

    sub_1B81DD758(*(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_banner), v6);
    sub_1B819A558();
    return sub_1B81CAC64(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B81CAC64(uint64_t a1)
{
  v2 = type metadata accessor for SGBannerContainerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B81CAD08(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_banner);
  *(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_banner) = a1;
  v3 = a1;

  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x138);

  return v4();
}

void sub_1B81CADEC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_suggestionStore);
  *(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_suggestionStore) = a1;
  v2 = a1;
}

void sub_1B81CAEC8()
{
  v1 = v0;
  v2 = type metadata accessor for SGBannerContainerView(0);
  v3 = OUTLINED_FUNCTION_21(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_hostingController;
  v5 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_hostingController);
  if (!v5)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_banner);
  v7 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_suggestionStore);

  v8 = v5;
  v9 = v6;
  SGBannerContainerView.init(_:store:updateBannerView:)();
  sub_1B81F8638();

  v10 = OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_invalidateBannerConstraints;
  if (*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_invalidateBannerConstraints) == 1)
  {
    v11 = *(v0 + v4);
    if (!v11)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v12 = [v11 view];
    if (!v12)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v13 = v12;
    [v12 invalidateIntrinsicContentSize];

    *(v1 + v10) = 0;
    *(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_computeViewBounds) = 0;
  }

  v14 = *(v1 + v4);
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  sub_1B81F8608();

  v16 = *(v1 + v4);
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = [v16 view];
  if (v17)
  {
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DCE0, &unk_1B81FF160);
    if (swift_dynamicCastClass())
    {
      sub_1B81F82A8();
    }
  }

  v19 = OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_computeViewBounds;
  if ((*(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_computeViewBounds) & 1) == 0)
  {
    v20 = *(v1 + v4);
    if (v20)
    {
      v21 = [v20 view];
      if (v21)
      {
        v22 = v21;
        [v21 sizeToFit];

        *(v1 + v19) = 1;
        return;
      }

LABEL_23:
      __break(1u);
      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

double sub_1B81CB10C()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(v0 + 536);
  v3 = v2;
  v4 = v1();

  if (v4 == 0.0)
  {
    OUTLINED_FUNCTION_2_6();
    v6 = *(v5 + 392);
    v8 = v7;
    v9 = v6();

    if (!v9)
    {
      v4 = *sub_1B8186D1C();
    }
  }

  OUTLINED_FUNCTION_2_6();
  v11 = *(v10 + 512);
  v13 = v12;
  v14 = v11();

  v15 = v4 + v14 + *sub_1B8186CD4();
  v16 = v15 + *sub_1B8186CE0();
  return v16 + *sub_1B8186CEC();
}

void sub_1B81CB2D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI26SGBannerContentHostingView_hostingController);
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      [v2 intrinsicContentSize];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id SGBannerContentHostingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SGBannerContentHostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGBannerContentHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id OUTLINED_FUNCTION_1_2()
{

  return [v0 (v2 + 3941)];
}

unint64_t sub_1B81CB644(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1B81CB654@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B81CB644(*a1);
  *a2 = result;
  return result;
}

Swift::Void __swiftcall SGContactSuggestion.contactViewController(_:didCompleteWith:)(CNContactViewController *_, CNContact_optional didCompleteWith)
{
  v3 = v2;
  isa = didCompleteWith.value.super.isa;
  if (didCompleteWith.value.super.isa)
  {
    v6 = sub_1B81F8028();
    v7 = sub_1B81F91A8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B8182000, v6, v7, "SGContactSuggestion: Contact delegate for confirming contact", v8, 2u);
      MEMORY[0x1B8CBBAE0](v8, -1, -1);
    }

    [v3 confirm:1 suggestion:*(v3 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact) completion:0];
  }

  v9 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))();
  if (v9)
  {
    v10 = v9;
    [v9 suggestion:v3 actionFinished:isa != 0];
    [v10 dismissViewController_];

    swift_unknownObjectRelease();
  }
}

UIImage __swiftcall SGContactSuggestion.contactImage()()
{
  v0 = [objc_opt_self() spotlightIconImageWithBundleIdentifier_];

  return v0;
}

void sub_1B81CB8BC(void *a1)
{
  v2 = [a1 emailAddresses];
  sub_1B8189AF0(0, &qword_1EBA7DCF0, 0x1E6999200);
  v3 = sub_1B81F90C8();

  v4 = sub_1B8189548(v3);

  v5 = [a1 phones];
  sub_1B8189AF0(0, &qword_1EBA7DCF8, 0x1E6999250);
  v6 = sub_1B81F90C8();

  v7 = sub_1B8189548(v6);

  v8 = [a1 postalAddresses];
  v9 = sub_1B8189AF0(0, &unk_1EBA7DD00, 0x1E6999258);
  v10 = OUTLINED_FUNCTION_15_5(v9);

  v11 = sub_1B8189548(v10);

  v12 = [a1 birthday];
  v13 = v12;
  if (v12)
  {

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
    __break(1u);
    goto LABEL_24;
  }

  v16 = __OFADD__(v15, v11);
  v17 = v15 + v11;
  if (v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = __OFADD__(v17, v14);
  v18 = v17 + v14;
  if (v16)
  {
LABEL_25:
    __break(1u);
    return;
  }

  if (v18 <= 1)
  {
    if (v4 < 1)
    {
      if (v7 <= 0)
      {
        v20 = "uttonIgnoreContactDetailBase";
        if (v11 <= 0)
        {
          v21 = 0xD000000000000030;
        }

        else
        {
          v20 = "ctDetailBirthday";
          v21 = 0xD00000000000002FLL;
        }

        if (v11 <= 0 && !v13)
        {
          v4 = 0;
          v13 = 0xE000000000000000;
          goto LABEL_16;
        }
      }

      else
      {
        v20 = "uttonIgnoreContactDetailAddress";
        v21 = 0xD000000000000033;
      }
    }

    else
    {
      v20 = "ctDetailPhoneNumber";
      v21 = 0xD00000000000002DLL;
    }

    sub_1B81871D4(v21, v20 | 0x8000000000000000);
    OUTLINED_FUNCTION_7_4();
LABEL_16:
    sub_1B81871D4(0xD00000000000002CLL, 0x80000001B8202810);
    OUTLINED_FUNCTION_5_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B81FD1B0;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1B81A6928();
    *(v22 + 32) = v4;
    *(v22 + 40) = v13;
    sub_1B81F8F68();
    OUTLINED_FUNCTION_7_4();

    OUTLINED_FUNCTION_16_0();
    return;
  }

  OUTLINED_FUNCTION_6_5();

  sub_1B81871D4(0xD000000000000025, v19);
}

void SGContactSuggestion.confirm(_:suggestion:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() serviceForContacts];
  if (a1)
  {
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = a3;
    v10[4] = a4;
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_2_7();
    v19 = v11;
    v20 = &block_descriptor_7;
    v12 = _Block_copy(v18);
    v13 = v4;
    sub_1B81CD10C(a3, a4);

    [v9 confirmContact:a2 withCompletion:v12];
    swift_unknownObjectRelease();
    _Block_release(v12);
  }

  else
  {
    v14 = swift_allocObject();
    v14[2] = v4;
    v14[3] = a3;
    v14[4] = a4;
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_2_7();
    v19 = v15;
    v20 = &block_descriptor_5;
    v16 = _Block_copy(v18);
    v17 = v4;
    sub_1B81CD10C(a3, a4);

    [v9 rejectContact:a2 withCompletion:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }
}

void sub_1B81CBE1C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B81F7978();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1B81CBE80()
{
  v1 = currentUIContext();
  v2 = [*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_realtimeContact) state];
  v3 = 0xD000000000000022;
  v4 = 0xD00000000000001ALL;
  v5 = "uttonAddToReminders";
  if (v1)
  {
    v4 = 0xD000000000000022;
    v5 = "uttonUpdateContact";
    v6 = "uttonIgnoreContactAll";
  }

  else
  {
    v3 = 0xD00000000000001DLL;
    v6 = "uttonUpdateWalletOrder";
  }

  if (v2 == 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v2 == 1)
  {
    v8 = v4;
  }

  else
  {
    v8 = v3;
  }

  sub_1B81871D4(v8, v7 | 0x8000000000000000);
  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_16_0();
}

void sub_1B81CBF40(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a1;
  v56 = a4;
  v58 = sub_1B81F78E8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  v12 = sub_1B81F7A48();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v17 - v16;
  v57 = sub_1B81F7A88();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DCB8, &qword_1B81FF0B0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v53 - v26;
  v59 = sub_1B81F7A28();
  OUTLINED_FUNCTION_1_0();
  v55 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6();
  v54 = v31 - v30;
  v61 = a2;
  v62 = a3;

  v32 = sub_1B81871D4(0xD000000000000020, 0x80000001B82029B0);
  v34 = v33;
  (*(v14 + 104))(v18, *MEMORY[0x1E6969868], v12);
  sub_1B81F7A58();
  (*(v14 + 8))(v18, v12);
  v35 = [v60 birthday];
  if (!v35)
  {
    __break(1u);
    goto LABEL_9;
  }

  v36 = v35;
  v37 = v32;
  v38 = [v35 dateComponents];

  if (!v38)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1B81F78D8();

  sub_1B81F7A68();
  (*(v20 + 8))(v24, v57);
  (*(v7 + 8))(v11, v58);
  v39 = v59;
  if (__swift_getEnumTagSinglePayload(v27, 1, v59) == 1)
  {
    sub_1B81CD2F0(v27);
    v40 = v37;
    MEMORY[0x1B8CBAE10](v37, v34);
LABEL_7:
    v50 = v61;
    v51 = v62;
    v52 = v56;
    *v56 = v40;
    v52[1] = v34;
    v52[2] = v50;
    v52[3] = v51;
    *(v52 + 32) = 4;
    return;
  }

  v42 = v54;
  v41 = v55;
  (*(v55 + 32))(v54, v27, v39);
  v43 = [objc_opt_self() birthdayFormatter];
  if (v43)
  {
    v44 = v43;
    v45 = sub_1B81F7A08();
    v46 = [v44 stringFromDate_];

    v47 = sub_1B81F8F98();
    v49 = v48;

    MEMORY[0x1B8CBAE10](v47, v49);

    (*(v41 + 8))(v42, v39);
    v40 = v37;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void sub_1B81CC3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [v5 emailAddresses];
  v7 = sub_1B8189AF0(0, &qword_1EBA7DCF0, 0x1E6999200);
  v8 = OUTLINED_FUNCTION_15_5(v7);
  if (!sub_1B8189548(v8))
  {
    goto LABEL_10;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1B8CBB0B0](0, v8);
    goto LABEL_5;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_10:

    __break(1u);
    return;
  }

  v9 = *(v8 + 32);
LABEL_5:
  v10 = v9;

  OUTLINED_FUNCTION_6_5();
  sub_1B81871D4(0xD00000000000001DLL, v11);
  OUTLINED_FUNCTION_5_5();
  v12 = v10;
  sub_1B81CD358(v12, &selRef_label);
  v14 = v13;
  v15 = [v12 emailAddress];
  v16 = sub_1B81F8F98();
  v18 = v17;

  if (v14)
  {
    v19 = objc_opt_self();
    v20 = sub_1B81F8F58();

    v21 = [v19 localizedStringForLabel_];

    v22 = sub_1B81F8F98();
    v29 = v23;
    v30 = v22;

    sub_1B81871D4(*(v4 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_kStringKeyLabeledValueFormat), *(v4 + OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_kStringKeyLabeledValueFormat + 8));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
    v24 = v8;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1B81FC7C0;
    v26 = MEMORY[0x1E69E6158];
    *(v25 + 56) = MEMORY[0x1E69E6158];
    v27 = sub_1B81A6928();
    *(v25 + 32) = v30;
    *(v25 + 40) = v29;
    *(v25 + 96) = v26;
    *(v25 + 104) = v27;
    *(v25 + 64) = v27;
    *(v25 + 72) = v16;
    *(v25 + 80) = v18;
    v16 = sub_1B81F8F68();
    v18 = v28;

    v8 = v24;
  }

  MEMORY[0x1B8CBAE10](v16, v18);

  *v3 = v8;
  *(v3 + 8) = v6;
  *(v3 + 16) = v31;
  *(v3 + 24) = v32;
  *(v3 + 32) = 2;
}

void sub_1B81CC618(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a2;

  v8 = [a1 phones];
  v9 = sub_1B8189AF0(0, &qword_1EBA7DCF8, 0x1E6999250);
  v10 = OUTLINED_FUNCTION_15_5(v9);
  if (!sub_1B8189548(v10))
  {
    goto LABEL_13;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1B8CBB0B0](0, v10);
    goto LABEL_5;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_13:

    __break(1u);
    return;
  }

  v11 = *(v10 + 32);
LABEL_5:
  v12 = v11;

  OUTLINED_FUNCTION_6_5();
  v14 = sub_1B81871D4(0xD00000000000001DLL, v13);
  v16 = v15;
  v17 = [v12 phoneNumber];
  if (!v17)
  {
    sub_1B81F8F98();
    v17 = sub_1B81F8F58();
  }

  v18 = [objc_opt_self() formattedStringForPhone_];

  if (v18)
  {
    v19 = sub_1B81F8F98();
    v21 = v20;

    MEMORY[0x1B8CBAE10](v19, v21);

    v5 = a2;
    v4 = a3;
  }

  else
  {
  }

  *a4 = v14;
  *(a4 + 8) = v16;
  *(a4 + 16) = v5;
  *(a4 + 24) = v4;
  *(a4 + 32) = 3;
}

void sub_1B81CC7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a2;
  v8 = [v5 postalAddresses];
  v9 = sub_1B8189AF0(0, &unk_1EBA7DD00, 0x1E6999258);
  v10 = OUTLINED_FUNCTION_15_5(v9);
  if (!sub_1B8189548(v10))
  {
    goto LABEL_11;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8CBB0B0](0, v10);
    goto LABEL_5;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_11:

    __break(1u);
    return;
  }

  v11 = *(v10 + 32);
LABEL_5:
  OUTLINED_FUNCTION_4_5();

  v12 = v8;
  sub_1B81CD358(v12, &selRef_label);
  v14 = v13;
  OUTLINED_FUNCTION_6_5();
  v16 = sub_1B81871D4(0xD00000000000001FLL, v15);
  v33 = v17;
  v34 = v16;
  v18 = [v4 mailingAddressFromPostalAddress_];
  v19 = sub_1B81F8F98();
  v21 = v20;

  if (v14)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_4_5();
    v22 = sub_1B81F8F58();

    v23 = [v18 localizedStringForLabel_];

    v24 = sub_1B81F8F98();
    v26 = v25;

    sub_1B81871D4(*&v4[OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_kStringKeyLabeledValueFormat], *&v4[OBJC_IVAR____TtC17CoreSuggestionsUI19SGContactSuggestion_kStringKeyLabeledValueFormat + 8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1B81FC7C0;
    v28 = MEMORY[0x1E69E6158];
    *(v27 + 56) = MEMORY[0x1E69E6158];
    v29 = sub_1B81A6928();
    *(v27 + 32) = v24;
    *(v27 + 40) = v26;
    *(v27 + 96) = v28;
    *(v27 + 104) = v29;
    *(v27 + 64) = v29;
    *(v27 + 72) = v19;
    *(v27 + 80) = v21;
    v30 = sub_1B81F8F68();
    v32 = v31;

    MEMORY[0x1B8CBAE10](v30, v32);

    v7 = v35;
    v6 = v36;
  }

  else
  {
  }

  *v3 = v34;
  *(v3 + 8) = v33;
  *(v3 + 16) = v7;
  *(v3 + 24) = v6;
  *(v3 + 32) = 1;
}

uint64_t sub_1B81CCA54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = 0;
  v36 = 0xE000000000000000;
  if (!currentUIContext())
  {
    v4 = [a1 name];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 fullName];
      v7 = sub_1B81F8F98();
      v9 = v8;

      v35 = v7;
      v36 = v9;
      MEMORY[0x1B8CBAE10](10, 0xE100000000000000);
    }
  }

  v10 = [a1 birthday];
  if (v10)
  {

    v11 = OUTLINED_FUNCTION_12_7();
    sub_1B81CBF40(v11, v12, v13, v14);
    goto LABEL_11;
  }

  v15 = [a1 emailAddresses];
  sub_1B8189AF0(0, &qword_1EBA7DCF0, 0x1E6999200);
  v16 = sub_1B81F90C8();

  if (sub_1B8189548(v16))
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B8CBB0B0](0, v16);
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:

      v17 = OUTLINED_FUNCTION_9_3();
      sub_1B81CC3A8(v17, v18, v19);
LABEL_11:

      v21 = v41;
      v22 = v39;
      v23 = v40;
      v24 = v37;
      v25 = v38;
LABEL_12:
      *a2 = v24;
      *(a2 + 8) = v25;
      *(a2 + 16) = v22;
      *(a2 + 24) = v23;
      *(a2 + 32) = v21;
      return result;
    }

    __break(1u);
    goto LABEL_24;
  }

  v26 = [a1 phones];
  sub_1B8189AF0(0, &qword_1EBA7DCF8, 0x1E6999250);
  v16 = sub_1B81F90C8();

  if (sub_1B8189548(v16))
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
LABEL_24:
      MEMORY[0x1B8CBB0B0](0, v16);
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:

      v27 = OUTLINED_FUNCTION_12_7();
      sub_1B81CC618(v27, v28, v29, v30);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_26;
  }

  v31 = [a1 postalAddresses];
  sub_1B8189AF0(0, &unk_1EBA7DD00, 0x1E6999258);
  v16 = sub_1B81F90C8();

  result = sub_1B8189548(v16);
  if (!result)
  {

    v24 = 0;
    v21 = 0;
    v25 = 0xE000000000000000;
    v22 = v35;
    v23 = v36;
    goto LABEL_12;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
LABEL_26:
    MEMORY[0x1B8CBB0B0](0, v16);
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

    v32 = OUTLINED_FUNCTION_9_3();
    sub_1B81CC7D4(v32, v33, v34);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B81CCD40(char a1)
{
  LOBYTE(v2) = a1;
  v1 = 0xD000000000000025;
  v2 = v2;
  v3 = "rContactCategoryBirthday";
  switch(v2)
  {
    case 1:
      v3 = "SuggestionsBannerContactAddress";
      v1 = 0xD000000000000027;
      goto LABEL_5;
    case 2:
      v3 = "rContactCategoryAddress";
      goto LABEL_5;
    case 3:
      goto LABEL_5;
    case 4:
      v3 = "rContactCategoryEmail";
      v1 = 0xD000000000000028;
LABEL_5:
      v2 = sub_1B81871D4(v1, v3 | 0x8000000000000000);
      break;
    default:
      return v2;
  }

  return v2;
}

void *SGContactSuggestion.mailingAddressFromPostalAddress(_:)(void *a1)
{
  sub_1B81CD358([a1 components], &selRef_street);
  if (v4)
  {

    v5 = [objc_allocWithZone(MEMORY[0x1E695CF30]) init];
    v6 = OUTLINED_FUNCTION_10_6();
    sub_1B81CD358(v6, &selRef_street);
    if (v7)
    {
      v1 = v7;
      sub_1B81F8F58();
      OUTLINED_FUNCTION_4_5();

      OUTLINED_FUNCTION_11_7(v8, sel_setStreet_);
    }

    v9 = OUTLINED_FUNCTION_10_6();
    sub_1B81CD358(v9, &selRef_city);
    if (v10)
    {
      v1 = v10;
      sub_1B81F8F58();
      OUTLINED_FUNCTION_4_5();

      OUTLINED_FUNCTION_11_7(v11, sel_setCity_);
    }

    v12 = OUTLINED_FUNCTION_10_6();
    sub_1B81CD358(v12, &selRef_state);
    if (v13)
    {
      v1 = v13;
      sub_1B81F8F58();
      OUTLINED_FUNCTION_4_5();

      OUTLINED_FUNCTION_11_7(v14, sel_setState_);
    }

    v15 = OUTLINED_FUNCTION_10_6();
    sub_1B81CD358(v15, &selRef_postalCode);
    if (v16)
    {
      v1 = v16;
      sub_1B81F8F58();
      OUTLINED_FUNCTION_4_5();

      OUTLINED_FUNCTION_11_7(v17, sel_setPostalCode_);
    }

    v18 = OUTLINED_FUNCTION_10_6();
    sub_1B81CD358(v18, &selRef_subLocality);
    if (v19)
    {
      v1 = v19;
      sub_1B81F8F58();
      OUTLINED_FUNCTION_4_5();

      OUTLINED_FUNCTION_11_7(v20, sel_setSubLocality_);
    }

    v21 = OUTLINED_FUNCTION_10_6();
    sub_1B81CD358(v21, &selRef_subAdministrativeArea);
    if (v22)
    {
      v1 = v22;
      sub_1B81F8F58();
      OUTLINED_FUNCTION_4_5();

      OUTLINED_FUNCTION_11_7(v23, sel_setSubAdministrativeArea_);
    }

    v24 = OUTLINED_FUNCTION_10_6();
    sub_1B81CD358(v24, &selRef_isoCountryCode);
    if (v25)
    {
      v1 = sub_1B81F8F58();

      [v5 setISOCountryCode_];
    }

    v26 = [objc_opt_self() stringFromPostalAddress:v5 style:0];
    sub_1B81F8F98();
    OUTLINED_FUNCTION_5_5();
  }

  else
  {
    v26 = [a1 address];
    sub_1B81F8F98();
    OUTLINED_FUNCTION_5_5();
  }

  return v1;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B81CD10C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B81CD170(id a1, const char *a2)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (a1)
  {
    v7 = a1;
    v8 = sub_1B81F8028();
    v9 = sub_1B81F9188();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DCD0, &unk_1B81FF140);
      v13 = sub_1B81F8FA8();
      v15 = sub_1B81B7ED8(v13, v14, &v16);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1B8182000, v8, v9, a2, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CBBAE0](v11, -1, -1);
      MEMORY[0x1B8CBBAE0](v10, -1, -1);
    }
  }

  if (v4)
  {

    v4(a1);
    sub_1B8188E34(v4, v5);
  }
}

uint64_t sub_1B81CD2F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DCB8, &qword_1B81FF0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B81CD358(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B81F8F98();

  return v4;
}

unint64_t sub_1B81CD3C8()
{
  result = qword_1EBA7DD10;
  if (!qword_1EBA7DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DD10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SGContactCategoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SGContactCategoryType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B81CD594(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1B81CD5D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_10_6()
{

  return [v0 (v1 + 2040)];
}

id OUTLINED_FUNCTION_11_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

double OUTLINED_FUNCTION_13_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return result;
}

uint64_t OUTLINED_FUNCTION_15_5(uint64_t a1)
{

  return sub_1B81F90C8();
}

void sub_1B81CD708()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v148 = v5;
  v153 = v6;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DD78, &qword_1B81FF2C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32();
  v130 = v8;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DD80, &qword_1B81FF2C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32();
  v135 = v10;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DD88, &qword_1B81FF2D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32();
  v137 = v12;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DD90, &qword_1B81FF2D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v129 = v14;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DD98, &qword_1B81FF2E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDA0, &qword_1B81FF2E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  v134 = v17;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDA8, &qword_1B81FF2F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32();
  v151 = v19;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDB0, &qword_1B81FF2F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  v143 = v21;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDB8, &qword_1B81FF300);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32();
  v139 = v23;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDC0, &qword_1B81FF308);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_32();
  v140 = v25;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDC8, &qword_1B81FF310);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_32();
  v145 = v27;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDD0, &qword_1B81FF318);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDD8, &qword_1B81FF320);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15_0();
  v30 = sub_1B81F89D8();
  OUTLINED_FUNCTION_1_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6();
  v36 = v35 - v34;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDE0, &qword_1B81FF328);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v129 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDE8, &qword_1B81FF330);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_5();
  switch(v4)
  {
    case 0:
    case 5:
      v137 = v41;
      v42 = sub_1B81F8E98();
      v43 = sub_1B81F8788();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDF0, &qword_1B81FF368);
      OUTLINED_FUNCTION_7_2();
      if (v42)
      {
        (*(v44 + 16))(v39, v148);
        *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE08, &unk_1B81FF390) + 36)] = v43;
        sub_1B81F8A08();
        (*(v32 + 104))(v36, *MEMORY[0x1E6980EA8], v30);
        sub_1B81F89E8();

        (*(v32 + 8))(v36, v30);
        sub_1B81F89A8();
        v45 = sub_1B81F89B8();

        KeyPath = swift_getKeyPath();
        v47 = &v39[*(v146 + 36)];
        *v47 = KeyPath;
        v47[1] = v45;
        OUTLINED_FUNCTION_79();
        sub_1B81D1B24(v48, v49, v50, &qword_1B81FF328);
        swift_storeEnumTagMultiPayload();
        sub_1B81D0BE0();
        OUTLINED_FUNCTION_1_3();
        sub_1B81D1478(v51, v52, v53, v54);
        sub_1B81F8718();
        v55 = v39;
        v56 = &qword_1EBA7DDE0;
        v57 = &qword_1B81FF328;
      }

      else
      {
        v58 = OUTLINED_FUNCTION_31_2();
        v59(v58);
        *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE08, &unk_1B81FF390) + 36)) = v43;
        v60 = *sub_1B81B03D4();
        v61 = swift_getKeyPath();
        v62 = v147;
        v63 = (v0 + *(v146 + 36));
        *v63 = v61;
        v63[1] = v60;
        *(v0 + *(v62 + 36)) = 0x3FF0000000000000;
        sub_1B81D1B24(v0, v1, &qword_1EBA7DDD0, &qword_1B81FF318);
        swift_storeEnumTagMultiPayload();
        sub_1B81D0BE0();
        OUTLINED_FUNCTION_1_3();
        sub_1B81D1478(v64, &qword_1EBA7DDD0, &qword_1B81FF318, v65);

        sub_1B81F8718();
        v55 = v0;
        v56 = &qword_1EBA7DDD0;
        v57 = &qword_1B81FF318;
      }

      sub_1B8192D84(v55, v56, v57);
      v66 = &qword_1B81FF330;
      sub_1B81D1B24(v2, v139, &qword_1EBA7DDE8, &qword_1B81FF330);
      swift_storeEnumTagMultiPayload();
      sub_1B81D0B28();
      OUTLINED_FUNCTION_1_3();
      sub_1B81D1478(v67, v68, v69, v70);
      v71 = v140;
      sub_1B81F8718();
      OUTLINED_FUNCTION_37_3(v71, v143);
      swift_storeEnumTagMultiPayload();
      sub_1B81D0A70();
      sub_1B81D0D7C();
      v72 = v145;
      sub_1B81F8718();
      OUTLINED_FUNCTION_38_2(v71);
      OUTLINED_FUNCTION_37_3(v72, v151);
      swift_storeEnumTagMultiPayload();
      sub_1B81D09E4();
      sub_1B81D0E2C();
      sub_1B81F8718();
      OUTLINED_FUNCTION_38_2(v72);
      v73 = v2;
      v74 = &qword_1EBA7DDE8;
      goto LABEL_11;
    case 1:
      v80 = sub_1B81F8788();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDF0, &qword_1B81FF368);
      OUTLINED_FUNCTION_7_2();
      v81 = OUTLINED_FUNCTION_31_2();
      v82(v81);
      *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE08, &unk_1B81FF390) + 36)) = v80;
      sub_1B81B0444();
      v83 = swift_getKeyPath();
      v84 = v147;
      OUTLINED_FUNCTION_27_2(v83, v146);
      *(v0 + *(v84 + 36)) = 0x3FF0000000000000;
      sub_1B81D1B24(v0, v139, &qword_1EBA7DDD0, &qword_1B81FF318);
      swift_storeEnumTagMultiPayload();
      sub_1B81D0B28();
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_96();
      sub_1B81D1478(v85, v86, v87, v88);

      v89 = v140;
      sub_1B81F8718();
      OUTLINED_FUNCTION_24_3(v89);
      goto LABEL_14;
    case 2:
      v75 = sub_1B81F8788();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDF0, &qword_1B81FF368);
      OUTLINED_FUNCTION_7_2();
      v76 = OUTLINED_FUNCTION_31_2();
      v77(v76);
      *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE08, &unk_1B81FF390) + 36)) = v75;
      sub_1B81B0734();
      v78 = swift_getKeyPath();
      v79 = v147;
      OUTLINED_FUNCTION_27_2(v78, v146);
      *(v0 + *(v79 + 36)) = 0x3FE0000000000000;
      OUTLINED_FUNCTION_39_2(v0);
      goto LABEL_13;
    case 3:
      v119 = sub_1B81F8788();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDF0, &qword_1B81FF368);
      OUTLINED_FUNCTION_7_2();
      v120 = OUTLINED_FUNCTION_31_2();
      v121(v120);
      *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE08, &unk_1B81FF390) + 36)) = v119;
      sub_1B81B05B4();
      v122 = swift_getKeyPath();
      v123 = v147;
      OUTLINED_FUNCTION_27_2(v122, v146);
      *(v0 + *(v123 + 36)) = 0x3FF0000000000000;
      OUTLINED_FUNCTION_39_2(v0);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_96();
      sub_1B81D1478(v124, v125, v126, v127);

      v89 = v134;
      sub_1B81F8718();
      OUTLINED_FUNCTION_24_3(v89);
LABEL_14:
      swift_storeEnumTagMultiPayload();
      sub_1B81D0A70();
      sub_1B81D0D7C();
      v128 = v145;
      sub_1B81F8718();
      OUTLINED_FUNCTION_36_2(v89);
      OUTLINED_FUNCTION_24_3(v128);
      swift_storeEnumTagMultiPayload();
      sub_1B81D09E4();
      sub_1B81D0E2C();
      sub_1B81F8718();
      OUTLINED_FUNCTION_36_2(v128);
      v73 = OUTLINED_FUNCTION_16_0();
      v118 = &qword_1B81FF318;
      goto LABEL_15;
    case 4:
      v90 = sub_1B81F8C58();
      v91 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDF0, &qword_1B81FF368);
      OUTLINED_FUNCTION_7_2();
      v93 = v129;
      (*(v92 + 16))(v129, v148);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE00, &qword_1B81FF378);
      OUTLINED_FUNCTION_44_3();
      *v94 = v91;
      v94[1] = v90;
      v95 = *sub_1B81B05B4();
      v96 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDF8, &qword_1B81FF370);
      OUTLINED_FUNCTION_44_3();
      *v97 = v96;
      v97[1] = v95;
      *(v93 + *(v133 + 36)) = 0x3FF0000000000000;
      v98 = &qword_1EBA7DD90;
      v66 = &qword_1B81FF2D8;
      OUTLINED_FUNCTION_79();
      sub_1B81D1B24(v99, v100, v101, &qword_1B81FF2D8);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_11_8();
      sub_1B81D1478(v102, &qword_1EBA7DD90, &qword_1B81FF2D8, v103);
      sub_1B81D0900();
      OUTLINED_FUNCTION_52_2();
      v104 = v137;
      v105 = OUTLINED_FUNCTION_48_1();
      goto LABEL_10;
    default:
      v108 = *sub_1B81B0444();
      v109 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DDF0, &qword_1B81FF368);
      OUTLINED_FUNCTION_7_2();
      v93 = v130;
      (*(v110 + 16))(v130, v148);
      v112 = v135;
      v111 = v136;
      v113 = (v93 + *(v136 + 36));
      *v113 = v109;
      v113[1] = v108;
      v98 = &qword_1EBA7DD78;
      v66 = &qword_1B81FF2C0;
      sub_1B81D1B24(v93, v112, &qword_1EBA7DD78, &qword_1B81FF2C0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_11_8();
      sub_1B81D1478(v114, v115, v116, v117);
      sub_1B81D0900();
      OUTLINED_FUNCTION_52_2();
      v104 = v137;
      v105 = v112;
      v106 = v133;
      v107 = v111;
LABEL_10:
      OUTLINED_FUNCTION_51_2(v105, v106, v107);
      OUTLINED_FUNCTION_20_4();
      swift_storeEnumTagMultiPayload();
      sub_1B81D09E4();
      sub_1B81D0E2C();
      OUTLINED_FUNCTION_28_2();
      sub_1B81F8718();
      OUTLINED_FUNCTION_38_2(v104);
      v73 = v93;
      v74 = v98;
LABEL_11:
      v118 = v66;
LABEL_15:
      sub_1B8192D84(v73, v74, v118);
      OUTLINED_FUNCTION_37();
      return;
  }
}

void sub_1B81CE5CC()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v101 = v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE10, &qword_1B81FF3D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_32();
  v91 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE18, &qword_1B81FF3D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  v93 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE20, &qword_1B81FF3E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  v95 = v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE28, &qword_1B81FF3E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v92 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE30, &qword_1B81FF3F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v103 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE38, &qword_1B81FF3F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  v99 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE40, &qword_1B81FF400);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32();
  v96 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE48, &qword_1B81FF408);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32();
  v97 = v21;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE50, &qword_1B81FF410);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32();
  v100 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE58, &qword_1B81FF418);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE60, &qword_1B81FF420);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_49();
  v27 = sub_1B81F89D8();
  OUTLINED_FUNCTION_1_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6();
  v33 = v32 - v31;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE68, &qword_1B81FF428);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE70, &qword_1B81FF430);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15_0();
  switch(v4)
  {
    case 0:
    case 1:
    case 5:
      if (sub_1B81F8E98())
      {
        v36 = sub_1B81F87A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE78, &qword_1B81FF438);
        OUTLINED_FUNCTION_7_2();
        (*(v37 + 16))(v2, v101);
        *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE80, &qword_1B81FF440) + 36)) = v36;
        sub_1B81F8A08();
        (*(v29 + 104))(v33, *MEMORY[0x1E6980EA8], v27);
        sub_1B81F89E8();

        (*(v29 + 8))(v33, v27);
        sub_1B81F8998();
        v38 = sub_1B81F89B8();

        KeyPath = swift_getKeyPath();
        v40 = (v2 + *(v98 + 36));
        *v40 = KeyPath;
        v40[1] = v38;
        OUTLINED_FUNCTION_50_1();
        sub_1B81D1B24(v41, v42, v43, &qword_1B81FF428);
        OUTLINED_FUNCTION_8_2();
        swift_storeEnumTagMultiPayload();
        sub_1B81D1088();
        sub_1B81D1224();
        sub_1B81F8718();
        sub_1B8192D84(v2, &qword_1EBA7DE68, &qword_1B81FF428);
      }

      else
      {
        v44 = *sub_1B81B0444();
        v45 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE78, &qword_1B81FF438);
        OUTLINED_FUNCTION_7_2();
        v46 = OUTLINED_FUNCTION_31_2();
        v47(v46);
        v48 = (v0 + *(v104 + 36));
        *v48 = v45;
        v48[1] = v44;

        *(v0 + *(v24 + 36)) = sub_1B81F8798();
        v49 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_30_2(v49, v50);
        OUTLINED_FUNCTION_8_2();
        swift_storeEnumTagMultiPayload();
        sub_1B81D1088();
        sub_1B81D1224();
        sub_1B81F8718();
        OUTLINED_FUNCTION_36_2(v0);
      }

      v51 = &qword_1B81FF430;
      sub_1B81D1B24(v1, v96, &qword_1EBA7DE70, &qword_1B81FF430);
      OUTLINED_FUNCTION_43_3();
      swift_storeEnumTagMultiPayload();
      sub_1B81D0FFC();
      sub_1B81D12DC();
      sub_1B81F8718();
      OUTLINED_FUNCTION_30_2(v97, v99);
      swift_storeEnumTagMultiPayload();
      sub_1B81D0F70();
      sub_1B81D13C0();
      sub_1B81F8718();
      OUTLINED_FUNCTION_36_2(v97);
      OUTLINED_FUNCTION_24_3(v100);
      swift_storeEnumTagMultiPayload();
      sub_1B81D0EE4();
      sub_1B81F8718();
      OUTLINED_FUNCTION_36_2(v100);
      v52 = v1;
      v53 = &qword_1EBA7DE70;
      goto LABEL_11;
    case 2:
      v54 = *sub_1B81B0734();
      v55 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE78, &qword_1B81FF438);
      OUTLINED_FUNCTION_7_2();
      (*(v56 + 16))(v92, v101);
      v57 = (v92 + *(v104 + 36));
      *v57 = v55;
      v57[1] = v54;
      OUTLINED_FUNCTION_79();
      sub_1B81D1B24(v58, v59, v60, v61);
      swift_storeEnumTagMultiPayload();
      sub_1B81D0FFC();
      sub_1B81D12DC();

      OUTLINED_FUNCTION_48_1();
      sub_1B81F8718();
      OUTLINED_FUNCTION_30_2(v97, v99);
      swift_storeEnumTagMultiPayload();
      sub_1B81D0F70();
      sub_1B81D13C0();
      sub_1B81F8718();
      OUTLINED_FUNCTION_36_2(v97);
      OUTLINED_FUNCTION_30_2(v100, v103);
      OUTLINED_FUNCTION_42_3();
      sub_1B81D0EE4();
      sub_1B81F8718();
      OUTLINED_FUNCTION_36_2(v100);
      v52 = v92;
      v53 = &qword_1EBA7DE28;
      v62 = &qword_1B81FF3E8;
      break;
    case 3:
      v78 = sub_1B81F87A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE78, &qword_1B81FF438);
      OUTLINED_FUNCTION_7_2();
      (*(v79 + 16))(v2, v101);
      *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE80, &qword_1B81FF440) + 36)) = v78;
      v80 = *sub_1B81B0734();
      v81 = swift_getKeyPath();
      v82 = (v2 + *(v98 + 36));
      *v82 = v81;
      v82[1] = v80;
      v70 = &qword_1EBA7DE68;
      v51 = &qword_1B81FF428;
      OUTLINED_FUNCTION_79();
      sub_1B81D1B24(v83, v84, v85, &qword_1B81FF428);
      swift_storeEnumTagMultiPayload();
      sub_1B81D1088();
      OUTLINED_FUNCTION_13_8();
      sub_1B81D1478(v86, v87, v88, v89);
      OUTLINED_FUNCTION_52_2();
      OUTLINED_FUNCTION_51_2(v93, v98, v94);
      OUTLINED_FUNCTION_37_3(v95, v99);
      swift_storeEnumTagMultiPayload();
      sub_1B81D0F70();
      v90 = sub_1B81D13C0();
      OUTLINED_FUNCTION_29_2(v90);
      OUTLINED_FUNCTION_38_2(v95);
      OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_42_3();
      sub_1B81D0EE4();
      sub_1B81D12DC();
      OUTLINED_FUNCTION_28_2();
      sub_1B81F8718();
      OUTLINED_FUNCTION_38_2(v98);
      v52 = v2;
      goto LABEL_10;
    case 4:
      v63 = sub_1B81F8C58();
      v64 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE78, &qword_1B81FF438);
      OUTLINED_FUNCTION_7_2();
      (*(v65 + 16))(v91, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE90, &qword_1B81FF450);
      OUTLINED_FUNCTION_44_3();
      *v66 = v64;
      v66[1] = v63;
      v67 = *sub_1B81B0734();
      v68 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE88, &qword_1B81FF448);
      OUTLINED_FUNCTION_44_3();
      *v69 = v68;
      v69[1] = v67;
      *(v91 + *(v94 + 36)) = 0x3FE0000000000000;
      v70 = &qword_1EBA7DE10;
      v51 = &qword_1B81FF3D0;
      sub_1B81D1B24(v91, v93, &qword_1EBA7DE10, &qword_1B81FF3D0);
      swift_storeEnumTagMultiPayload();
      sub_1B81D1088();
      OUTLINED_FUNCTION_13_8();
      sub_1B81D1478(v71, &qword_1EBA7DE10, &qword_1B81FF3D0, v72);
      OUTLINED_FUNCTION_52_2();
      OUTLINED_FUNCTION_51_2(v93, v98, v94);
      OUTLINED_FUNCTION_37_3(v95, v99);
      swift_storeEnumTagMultiPayload();
      sub_1B81D0F70();
      v73 = sub_1B81D13C0();
      OUTLINED_FUNCTION_29_2(v73);
      OUTLINED_FUNCTION_38_2(v95);
      OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_42_3();
      sub_1B81D0EE4();
      sub_1B81D12DC();
      OUTLINED_FUNCTION_28_2();
      sub_1B81F8718();
      OUTLINED_FUNCTION_38_2(v93);
      v52 = v91;
LABEL_10:
      v53 = v70;
LABEL_11:
      v62 = v51;
      break;
    default:
      v74 = *sub_1B81B0444();
      v75 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE78, &qword_1B81FF438);
      OUTLINED_FUNCTION_7_2();
      (*(v76 + 16))(v92, v101);
      v77 = (v92 + *(v104 + 36));
      *v77 = v75;
      v77[1] = v74;
      OUTLINED_FUNCTION_39_2(v92);
      swift_storeEnumTagMultiPayload();
      sub_1B81D0EE4();
      sub_1B81D12DC();

      OUTLINED_FUNCTION_51_2(v103, v102, v104);
      OUTLINED_FUNCTION_96();
      break;
  }

  sub_1B8192D84(v52, v53, v62);
  OUTLINED_FUNCTION_37();
}

void sub_1B81CF318()
{
  OUTLINED_FUNCTION_38();
  v30 = v3;
  v31 = v4;
  v32 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DE98, &qword_1B81FF458);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEA0, &qword_1B81FF460);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEA8, &qword_1B81FF468);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEB0, &qword_1B81FF470);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15_0();
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 6)
  {
    v29[1] = v7;
    v29[2] = v13;
    v17 = v31;
    if (v30)
    {
      v18 = sub_1B81F8C78();
    }

    else
    {
      v18 = sub_1B81F8C58();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEB8, &qword_1B81FF478);
    OUTLINED_FUNCTION_7_2();
    (*(v23 + 16))(v2, v17);
    *(v2 + *(v11 + 36)) = v18;
    sub_1B81D1B24(v2, v10, &qword_1EBA7DEA8, &qword_1B81FF468);
    swift_storeEnumTagMultiPayload();
    sub_1B81D1708();
    sub_1B81F8718();
    sub_1B8192D84(v2, &qword_1EBA7DEA8, &qword_1B81FF468);
    OUTLINED_FUNCTION_50_1();
    sub_1B81D1B24(v24, v25, v26, &qword_1B81FF470);
    OUTLINED_FUNCTION_22_4();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEB8, &qword_1B81FF478);
    sub_1B81D1684();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v27, &qword_1EBA7DEB8, &qword_1B81FF478, v28);
    OUTLINED_FUNCTION_21_1();
    sub_1B81F8718();
    sub_1B8192D84(v1, &qword_1EBA7DEB0, &qword_1B81FF470);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEB8, &qword_1B81FF478);
    OUTLINED_FUNCTION_2();
    (*(v20 + 16))(v0, v31, v19);
    OUTLINED_FUNCTION_22_4();
    swift_storeEnumTagMultiPayload();
    sub_1B81D1684();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v21, &qword_1EBA7DEB8, &qword_1B81FF478, v22);
    OUTLINED_FUNCTION_21_1();
    sub_1B81F8718();
  }

  OUTLINED_FUNCTION_37();
}

void sub_1B81CF69C()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_47_3(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEC0, &qword_1B81FF488);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEC8, &qword_1B81FF490);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DED0, &qword_1B81FF498);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DED8, &qword_1B81FF4A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  if (v3 == 3)
  {
    if (v0)
    {
      v11 = v4 + *(v8 + 36);
      v12 = *MEMORY[0x1E697F468];
      sub_1B81F8548();
      OUTLINED_FUNCTION_7_2();
      (*(v13 + 104))(v11, v12);
      *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D590, &unk_1B81FDFB0) + 36)) = 256;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEE0, &unk_1B81FF4A8);
      OUTLINED_FUNCTION_2();
      (*(v15 + 16))(v4, v1, v14);
      sub_1B81D1B24(v4, v2, &qword_1EBA7DED0, &qword_1B81FF498);
      swift_storeEnumTagMultiPayload();
      sub_1B81D18A4();
      OUTLINED_FUNCTION_3_1();
      sub_1B81930C0(v16, &qword_1EBA7DEE0, &unk_1B81FF4A8, v17);
      OUTLINED_FUNCTION_46_3();
      OUTLINED_FUNCTION_48_1();
      sub_1B81F8718();
      sub_1B8192D84(v4, &qword_1EBA7DED0, &qword_1B81FF498);
    }

    else
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEE0, &unk_1B81FF4A8);
      OUTLINED_FUNCTION_2();
      (*(v23 + 16))(v2, v1, v22);
      swift_storeEnumTagMultiPayload();
      sub_1B81D18A4();
      OUTLINED_FUNCTION_3_1();
      sub_1B81930C0(v24, &qword_1EBA7DEE0, &unk_1B81FF4A8, v25);
      OUTLINED_FUNCTION_46_3();
      OUTLINED_FUNCTION_48_1();
      sub_1B81F8718();
    }

    OUTLINED_FUNCTION_50_1();
    sub_1B81D1B24(v26, v27, v28, &qword_1B81FF4A0);
    OUTLINED_FUNCTION_22_4();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEE0, &unk_1B81FF4A8);
    sub_1B81D17EC();
    OUTLINED_FUNCTION_3_1();
    v31 = sub_1B81930C0(v29, &qword_1EBA7DEE0, &unk_1B81FF4A8, v30);
    OUTLINED_FUNCTION_41_4(v31);
    v32 = OUTLINED_FUNCTION_43_3();
    sub_1B8192D84(v32, v33, &qword_1B81FF4A0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEE0, &unk_1B81FF4A8);
    OUTLINED_FUNCTION_2();
    v18 = OUTLINED_FUNCTION_8_2();
    v19(v18);
    OUTLINED_FUNCTION_22_4();
    swift_storeEnumTagMultiPayload();
    sub_1B81D17EC();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v20, &qword_1EBA7DEE0, &unk_1B81FF4A8, v21);
    OUTLINED_FUNCTION_21_1();
    sub_1B81F8718();
  }

  OUTLINED_FUNCTION_37();
}

void sub_1B81CFAB4()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_47_3(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEE8, &qword_1B81FF4B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_49();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEF0, &qword_1B81FF4C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DEF8, &qword_1B81FF4C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF00, &qword_1B81FF4D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  if (v2 == 3)
  {
    v37[0] = v13;
    if (v0)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF08, &qword_1B81FF4D8);
      OUTLINED_FUNCTION_2();
      (*(v15 + 16))(v11, v1, v14);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_3_1();
      sub_1B81930C0(v16, &qword_1EBA7DF08, &qword_1B81FF4D8, v17);
      sub_1B81D1A40();
      OUTLINED_FUNCTION_46_3();
      sub_1B81F8718();
    }

    else
    {
      v22 = &v8[*(v5 + 36)];
      v23 = *MEMORY[0x1E697F468];
      sub_1B81F8548();
      OUTLINED_FUNCTION_7_2();
      (*(v24 + 104))(v22, v23);
      *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D590, &unk_1B81FDFB0) + 36)] = 256;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF08, &qword_1B81FF4D8);
      OUTLINED_FUNCTION_2();
      (*(v26 + 16))(v8, v1, v25);
      sub_1B81D1B24(v8, v11, &qword_1EBA7DEF0, &qword_1B81FF4C0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_3_1();
      sub_1B81930C0(v27, &qword_1EBA7DF08, &qword_1B81FF4D8, v28);
      sub_1B81D1A40();
      OUTLINED_FUNCTION_46_3();
      sub_1B81F8718();
      sub_1B8192D84(v8, &qword_1EBA7DEF0, &qword_1B81FF4C0);
    }

    OUTLINED_FUNCTION_50_1();
    sub_1B81D1B24(v29, v30, v31, &qword_1B81FF4D0);
    OUTLINED_FUNCTION_22_4();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF08, &qword_1B81FF4D8);
    sub_1B81D1988();
    OUTLINED_FUNCTION_3_1();
    v34 = sub_1B81930C0(v32, &qword_1EBA7DF08, &qword_1B81FF4D8, v33);
    OUTLINED_FUNCTION_41_4(v34);
    v35 = OUTLINED_FUNCTION_43_3();
    sub_1B8192D84(v35, v36, &qword_1B81FF4D0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF08, &qword_1B81FF4D8);
    OUTLINED_FUNCTION_2();
    v18 = OUTLINED_FUNCTION_8_2();
    v19(v18);
    OUTLINED_FUNCTION_22_4();
    swift_storeEnumTagMultiPayload();
    sub_1B81D1988();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v20, &qword_1EBA7DF08, &qword_1B81FF4D8, v21);
    OUTLINED_FUNCTION_21_1();
    sub_1B81F8718();
  }

  OUTLINED_FUNCTION_37();
}

void sub_1B81CFEE4()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v47 = sub_1B81F8598();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF10, &qword_1B81FF4E0);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF18, &qword_1B81FF4E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v45 = v14;
  v15 = sub_1B81F8818();
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v21 = v20 - v19;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF20, &qword_1B81FF4F0);
  OUTLINED_FUNCTION_1_0();
  v23 = v22;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_1();
  if (v3)
  {
    sub_1B81F8808();
    v25 = OUTLINED_FUNCTION_22_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v27, &qword_1EBA7DF28, &qword_1B81FF4F8, v28);
    OUTLINED_FUNCTION_15_6();
    sub_1B81D1B7C(v29, v30, MEMORY[0x1E697CB68]);
    sub_1B81F8B28();
    (*(v17 + 8))(v21, v15);
    v31 = OUTLINED_FUNCTION_43_3();
    v32(v31);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_14_8();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_12_8();
    sub_1B81D1B7C(v33, v34, MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    sub_1B81F8718();
    (*(v23 + 8))(v0, v46);
  }

  else
  {
    sub_1B81F8588();
    v35 = OUTLINED_FUNCTION_8_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_96();
    sub_1B81930C0(v37, v38, v39, v40);
    OUTLINED_FUNCTION_12_8();
    sub_1B81D1B7C(v41, v42, MEMORY[0x1E697C538]);
    sub_1B81F8B28();
    (*(v5 + 8))(v9, v47);
    (*(v11 + 16))(v45, v1, v48);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_15_6();
    sub_1B81D1B7C(v43, v44, MEMORY[0x1E697CB68]);
    OUTLINED_FUNCTION_14_8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B81F8718();
    (*(v11 + 8))(v1, v48);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B81D03E4@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  if ((sub_1B81F8E98() & 1) != 0 || (a2 & 1) == 0)
  {
    v5 = sub_1B81F8E98();
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF30, &qword_1B81FF530);
  OUTLINED_FUNCTION_7_2();
  v8 = OUTLINED_FUNCTION_16_0();
  v9(v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF38, &qword_1B81FF538);
  v11 = a3 + *(result + 36);
  *v11 = KeyPath;
  *(v11 + 8) = v6;
  *(v11 + 16) = v5 & 1;
  return result;
}

void *sub_1B81D04C0@<X0>(uint64_t a2@<X8>)
{
  sub_1B81F8EC8();
  sub_1B81F8398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF40, &qword_1B81FF540);
  OUTLINED_FUNCTION_7_2();
  v3 = OUTLINED_FUNCTION_16_0();
  v4(v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF48, &qword_1B81FF548);
  return memcpy((a2 + *(v5 + 36)), v7, 0x70uLL);
}

uint64_t sub_1B81D065C(char a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v5 = a2;
  return MEMORY[0x1B8CBAA00](v4, a3, &unk_1F3011398);
}

uint64_t sub_1B81D0698(char a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v5 = a2;
  return MEMORY[0x1B8CBAA00](v4, a3, &unk_1F3011418);
}

unint64_t sub_1B81D0764()
{
  result = qword_1EDC8AA48;
  if (!qword_1EDC8AA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DDF8, &qword_1B81FF370);
    sub_1B81D081C();
    sub_1B81930C0(&qword_1EDC8AE80, &qword_1EBA7E090, &unk_1B81FDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA48);
  }

  return result;
}

unint64_t sub_1B81D081C()
{
  result = qword_1EDC8AA90;
  if (!qword_1EDC8AA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE00, &qword_1B81FF378);
    sub_1B81930C0(&qword_1EDC8A978, &qword_1EBA7DDF0, &qword_1B81FF368, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EDC8A948, &qword_1EBA7CBC0, &unk_1B81FF380, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA90);
  }

  return result;
}

unint64_t sub_1B81D0900()
{
  result = qword_1EDC8AA98;
  if (!qword_1EDC8AA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DD78, &qword_1B81FF2C0);
    sub_1B81930C0(&qword_1EDC8A978, &qword_1EBA7DDF0, &qword_1B81FF368, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EDC8AE80, &qword_1EBA7E090, &unk_1B81FDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA98);
  }

  return result;
}

unint64_t sub_1B81D09E4()
{
  result = qword_1EDC8A990;
  if (!qword_1EDC8A990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DDC8, &qword_1B81FF310);
    sub_1B81D0A70();
    sub_1B81D0D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A990);
  }

  return result;
}

unint64_t sub_1B81D0A70()
{
  result = qword_1EDC8A9A0;
  if (!qword_1EDC8A9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DDC0, &qword_1B81FF308);
    sub_1B81D0B28();
    sub_1B81D1478(&qword_1EDC8AA28, &qword_1EBA7DDD0, &qword_1B81FF318, sub_1B81D0BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A9A0);
  }

  return result;
}

unint64_t sub_1B81D0B28()
{
  result = qword_1EDC8A9C8;
  if (!qword_1EDC8A9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DDE8, &qword_1B81FF330);
    sub_1B81D0BE0();
    sub_1B81D1478(&qword_1EDC8AA28, &qword_1EBA7DDD0, &qword_1B81FF318, sub_1B81D0BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A9C8);
  }

  return result;
}

unint64_t sub_1B81D0BE0()
{
  result = qword_1EDC8AA50;
  if (!qword_1EDC8AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DDE0, &qword_1B81FF328);
    sub_1B81D0C98();
    sub_1B81930C0(&qword_1EDC8AE80, &qword_1EBA7E090, &unk_1B81FDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AA50);
  }

  return result;
}

unint64_t sub_1B81D0C98()
{
  result = qword_1EDC8AAA0;
  if (!qword_1EDC8AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE08, &unk_1B81FF390);
    sub_1B81930C0(&qword_1EDC8A978, &qword_1EBA7DDF0, &qword_1B81FF368, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EDC8AE88, &qword_1EBA7D680, &qword_1B81FE0B8, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AAA0);
  }

  return result;
}

unint64_t sub_1B81D0D7C()
{
  result = qword_1EDC8A9C0;
  if (!qword_1EDC8A9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DDA0, &qword_1B81FF2E8);
    sub_1B81D1478(&qword_1EDC8AA28, &qword_1EBA7DDD0, &qword_1B81FF318, sub_1B81D0BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A9C0);
  }

  return result;
}

unint64_t sub_1B81D0E2C()
{
  result = qword_1EDC8A9B8;
  if (!qword_1EDC8A9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DD88, &qword_1B81FF2D0);
    sub_1B81D1478(&qword_1EDC8AA20, &qword_1EBA7DD90, &qword_1B81FF2D8, sub_1B81D0764);
    sub_1B81D0900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A9B8);
  }

  return result;
}

unint64_t sub_1B81D0EE4()
{
  result = qword_1EDC8A320;
  if (!qword_1EDC8A320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE50, &qword_1B81FF410);
    sub_1B81D0F70();
    sub_1B81D13C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A320);
  }

  return result;
}

unint64_t sub_1B81D0F70()
{
  result = qword_1EDC8A328;
  if (!qword_1EDC8A328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE48, &qword_1B81FF408);
    sub_1B81D0FFC();
    sub_1B81D12DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A328);
  }

  return result;
}

unint64_t sub_1B81D0FFC()
{
  result = qword_1EDC8A378;
  if (!qword_1EDC8A378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE70, &qword_1B81FF430);
    sub_1B81D1088();
    sub_1B81D1224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A378);
  }

  return result;
}

unint64_t sub_1B81D1088()
{
  result = qword_1EDC8A3F0;
  if (!qword_1EDC8A3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE68, &qword_1B81FF428);
    sub_1B81D1140();
    sub_1B81930C0(&qword_1EDC8AE80, &qword_1EBA7E090, &unk_1B81FDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A3F0);
  }

  return result;
}

unint64_t sub_1B81D1140()
{
  result = qword_1EDC8A440;
  if (!qword_1EDC8A440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE80, &qword_1B81FF440);
    sub_1B81930C0(&qword_1EDC8A308, &qword_1EBA7DE78, &qword_1B81FF438, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EDC8AE88, &qword_1EBA7D680, &qword_1B81FE0B8, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A440);
  }

  return result;
}

unint64_t sub_1B81D1224()
{
  result = qword_1EDC8A3E8;
  if (!qword_1EDC8A3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE58, &qword_1B81FF418);
    sub_1B81D12DC();
    sub_1B81930C0(&qword_1EDC8AE88, &qword_1EBA7D680, &qword_1B81FE0B8, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A3E8);
  }

  return result;
}

unint64_t sub_1B81D12DC()
{
  result = qword_1EDC8A438;
  if (!qword_1EDC8A438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE28, &qword_1B81FF3E8);
    sub_1B81930C0(&qword_1EDC8A308, &qword_1EBA7DE78, &qword_1B81FF438, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EDC8AE80, &qword_1EBA7E090, &unk_1B81FDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A438);
  }

  return result;
}

unint64_t sub_1B81D13C0()
{
  result = qword_1EDC8A380;
  if (!qword_1EDC8A380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE20, &qword_1B81FF3E0);
    sub_1B81D1088();
    sub_1B81D1478(&qword_1EDC8A3B8, &qword_1EBA7DE10, &qword_1B81FF3D0, sub_1B81D14E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A380);
  }

  return result;
}

uint64_t sub_1B81D1478(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    OUTLINED_FUNCTION_9_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B81D14E8()
{
  result = qword_1EDC8A3E0;
  if (!qword_1EDC8A3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE88, &qword_1B81FF448);
    sub_1B81D15A0();
    sub_1B81930C0(&qword_1EDC8AE80, &qword_1EBA7E090, &unk_1B81FDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A3E0);
  }

  return result;
}

unint64_t sub_1B81D15A0()
{
  result = qword_1EDC8A430;
  if (!qword_1EDC8A430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DE90, &qword_1B81FF450);
    sub_1B81930C0(&qword_1EDC8A308, &qword_1EBA7DE78, &qword_1B81FF438, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EDC8A948, &qword_1EBA7CBC0, &unk_1B81FF380, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A430);
  }

  return result;
}

unint64_t sub_1B81D1684()
{
  result = qword_1EDC8A6B8;
  if (!qword_1EDC8A6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DEB0, &qword_1B81FF470);
    sub_1B81D1708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A6B8);
  }

  return result;
}

unint64_t sub_1B81D1708()
{
  result = qword_1EDC8A7D8;
  if (!qword_1EDC8A7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DEA8, &qword_1B81FF468);
    sub_1B81930C0(&qword_1EDC8A640, &qword_1EBA7DEB8, &qword_1B81FF478, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EDC8A950, &qword_1EBA7D538, &qword_1B81FF480, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7D8);
  }

  return result;
}

unint64_t sub_1B81D17EC()
{
  result = qword_1EDC8A9F0;
  if (!qword_1EDC8A9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DED8, &qword_1B81FF4A0);
    sub_1B81D18A4();
    sub_1B81930C0(&qword_1EDC8A980, &qword_1EBA7DEE0, &unk_1B81FF4A8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A9F0);
  }

  return result;
}

unint64_t sub_1B81D18A4()
{
  result = qword_1EDC8AAA8;
  if (!qword_1EDC8AAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DED0, &qword_1B81FF498);
    sub_1B81930C0(&qword_1EDC8A980, &qword_1EBA7DEE0, &unk_1B81FF4A8, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EDC8AAB8, &qword_1EBA7D590, &unk_1B81FDFB0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AAA8);
  }

  return result;
}

unint64_t sub_1B81D1988()
{
  result = qword_1EDC8A6C0;
  if (!qword_1EDC8A6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DF00, &qword_1B81FF4D0);
    sub_1B81930C0(&qword_1EDC8A648, &qword_1EBA7DF08, &qword_1B81FF4D8, MEMORY[0x1E697FDF8]);
    sub_1B81D1A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A6C0);
  }

  return result;
}

unint64_t sub_1B81D1A40()
{
  result = qword_1EDC8A7E0;
  if (!qword_1EDC8A7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DEF0, &qword_1B81FF4C0);
    sub_1B81930C0(&qword_1EDC8A648, &qword_1EBA7DF08, &qword_1B81FF4D8, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EDC8AAB8, &qword_1EBA7D590, &unk_1B81FDFB0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A7E0);
  }

  return result;
}

uint64_t sub_1B81D1B24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7_2();
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  return a2;
}

uint64_t sub_1B81D1B7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_1B81D1CB8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 1) = 0;
    if (a3 >= 0xFF)
    {
      result[16] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      result[16] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_40_4(result, a2);
    }
  }

  return result;
}

_BYTE *sub_1B81D1D1C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = OUTLINED_FUNCTION_40_4(result, a2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B81D1DEC()
{
  result = qword_1EDC8A988;
  if (!qword_1EDC8A988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DF50, &qword_1B81FF928);
    sub_1B81D09E4();
    sub_1B81D0E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A988);
  }

  return result;
}

unint64_t sub_1B81D1E78()
{
  result = qword_1EDC8A318;
  if (!qword_1EDC8A318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DF58, &qword_1B81FF930);
    sub_1B81D0EE4();
    sub_1B81D12DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A318);
  }

  return result;
}

unint64_t sub_1B81D1F04()
{
  result = qword_1EDC8A660;
  if (!qword_1EDC8A660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DF60, &qword_1B81FF938);
    sub_1B81D1684();
    sub_1B81930C0(&qword_1EDC8A640, &qword_1EBA7DEB8, &qword_1B81FF478, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A660);
  }

  return result;
}

unint64_t sub_1B81D1FBC()
{
  result = qword_1EDC8A9B0;
  if (!qword_1EDC8A9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DF68, &qword_1B81FF940);
    sub_1B81D17EC();
    sub_1B81930C0(&qword_1EDC8A980, &qword_1EBA7DEE0, &unk_1B81FF4A8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A9B0);
  }

  return result;
}

unint64_t sub_1B81D2074()
{
  result = qword_1EDC8A668;
  if (!qword_1EDC8A668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DF70, &qword_1B81FF948);
    sub_1B81D1988();
    sub_1B81930C0(&qword_1EDC8A648, &qword_1EBA7DF08, &qword_1B81FF4D8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A668);
  }

  return result;
}

unint64_t sub_1B81D212C()
{
  result = qword_1EDC8A338;
  if (!qword_1EDC8A338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DF78, &unk_1B81FF950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DF28, &qword_1B81FF4F8);
    sub_1B81F8818();
    sub_1B81930C0(&qword_1EDC8A310, &qword_1EBA7DF28, &qword_1B81FF4F8, MEMORY[0x1E697FDF8]);
    sub_1B81D1B7C(&qword_1EDC8A2E8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1B81F8598();
    sub_1B81D1B7C(&qword_1EDC8A3A8, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A338);
  }

  return result;
}

unint64_t sub_1B81D22D0()
{
  result = qword_1EDC8A428;
  if (!qword_1EDC8A428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DF38, &qword_1B81FF538);
    sub_1B81930C0(&qword_1EDC8A300, &qword_1EBA7DF30, &qword_1B81FF530, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EDC8AE70, &qword_1EBA7CA08, &qword_1B81FDE50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A428);
  }

  return result;
}

unint64_t sub_1B81D23B4()
{
  result = qword_1EDC8AEA0;
  if (!qword_1EDC8AEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DF48, &qword_1B81FF548);
    sub_1B81930C0(&qword_1EDC8AE90, &qword_1EBA7DF40, &qword_1B81FF540, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AEA0);
  }

  return result;
}

unint64_t sub_1B81D246C()
{
  result = qword_1EDC8AC90;
  if (!qword_1EDC8AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8AC90);
  }

  return result;
}

unint64_t sub_1B81D24C0()
{
  result = qword_1EDC8A4A0;
  if (!qword_1EDC8A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A4A0);
  }

  return result;
}

unint64_t sub_1B81D2514()
{
  result = qword_1EDC8A848;
  if (!qword_1EDC8A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A848);
  }

  return result;
}

unint64_t sub_1B81D2568()
{
  result = qword_1EDC8AC98[0];
  if (!qword_1EDC8AC98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC8AC98);
  }

  return result;
}

unint64_t sub_1B81D25BC()
{
  result = qword_1EDC8A860[0];
  if (!qword_1EDC8A860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC8A860);
  }

  return result;
}

unint64_t sub_1B81D2610()
{
  result = qword_1EDC8A858;
  if (!qword_1EDC8A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A858);
  }

  return result;
}

unint64_t sub_1B81D2664()
{
  result = qword_1EDC8A550;
  if (!qword_1EDC8A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC8A550);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx015CoreSuggestionsB022TitleFontStyleModifierVGAaBHPxAaBHD1__AgA0cK0HPyHCHCTm(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1B81F8308();
  a3();
  OUTLINED_FUNCTION_9_4();
  return swift_getWitnessTable();
}

unint64_t sub_1B81D2714()
{
  result = qword_1EBA7DF80;
  if (!qword_1EBA7DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DF80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_4()
{
  v5 = *(v3 - 112);

  return sub_1B81D1B24(v2, v5, v0, v1);
}

uint64_t OUTLINED_FUNCTION_24_3(uint64_t a1)
{

  return sub_1B81D1B24(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_27_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a2 + 36));
  *v4 = result;
  v4[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{

  return sub_1B81F8718();
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1, uint64_t a2)
{

  return sub_1B81D1B24(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1)
{

  return sub_1B8192D84(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_37_3(uint64_t a1, uint64_t a2)
{

  return sub_1B81D1B24(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_38_2(uint64_t a1)
{

  return sub_1B8192D84(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1)
{

  return sub_1B81D1B24(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_41_4(uint64_t a1)
{

  return sub_1B81F8718();
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_51_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B81F8718();
}

uint64_t OUTLINED_FUNCTION_52_2()
{
}

void sub_1B81D2A98(uint64_t a4@<X8>)
{
  v5 = sub_1B81F85D8();
  v6 = *sub_1B8186DB8();
  *a4 = v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = 0;
  v7 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF90, &qword_1B81FF960) + 44);
  v8 = sub_1B81F8518();
  v9 = *sub_1B8186DAC();
  *v7 = v8;
  *(v7 + 8) = v9;
  *(v7 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E188, &qword_1B81FFF18);
  sub_1B81D2C20();
  v10 = sub_1B81F88E8();
  sub_1B8186DB8();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  v11 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E190, &qword_1B81FFF20) + 36));
  *v11 = v10;
  OUTLINED_FUNCTION_10_3(v11);
  v12 = sub_1B81F88F8();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  v13 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E198, &qword_1B81FFF28) + 36));
  *v13 = v12;
  OUTLINED_FUNCTION_10_3(v13);
  v14 = sub_1B81F88E8();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  v15 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DF98, &qword_1B81FF968) + 36));
  *v15 = v14;
  OUTLINED_FUNCTION_10_3(v15);
}

void sub_1B81D2C20()
{
  OUTLINED_FUNCTION_33();
  v6 = v5;
  v8 = v7;
  v41 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E1A0, &qword_1B81FFF30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  v43 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_67();
  if (v6)
  {
    v15 = v10;
    v16 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x248);
    v17 = v8;
    v18 = v16();

    if (v18)
    {

      sub_1B818C7E8();
      v50[0] = v19;
      LOWORD(v50[1]) = v20 & 1;
    }

    else
    {
      sub_1B819310C();
      v50[0] = v22;
      LOBYTE(v50[1]) = v23 & 1;
      BYTE1(v50[1]) = 1;
    }

    sub_1B8191F4C();
    sub_1B8191FA0();
    sub_1B81F8718();
    if (BYTE1(v52))
    {
      v24 = 256;
    }

    else
    {
      v24 = 0;
    }

    v21 = v24 | v52;
    v42 = v51;
    v25 = v51;
    v10 = v15;
  }

  else
  {
    v42 = 0;
    v21 = -256;
  }

  v40 = sub_1B81F85D8();
  v44 = *sub_1B8186DC4();
  LOBYTE(v50[0]) = 0;
  sub_1B81D3060();
  v45 = v51;
  v26 = v53;
  v38 = v54;
  v39 = v52;
  v37 = v55;
  v48 = v57;
  v49 = v56;
  v47 = v58;
  v27 = v50[0];
  v35 = v50[0];
  v36 = v53;
  v46 = sub_1B81F8928();
  sub_1B8186D94();
  sub_1B81F8148();
  OUTLINED_FUNCTION_8_0();
  LOBYTE(v51) = 0;
  v28 = sub_1B81F8518();
  v29 = *sub_1B8186DA0();
  *v0 = v28;
  *(v0 + 8) = v29;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E1A8, &qword_1B81FFF38);
  sub_1B81D34B0();
  LOBYTE(v28) = sub_1B81F88F8();
  sub_1B8186DB8();
  sub_1B81F8148();
  v30 = (v0 + *(v10 + 36));
  *v30 = v28;
  OUTLINED_FUNCTION_51_1(v30, v31, v32, v33, v34);
  sub_1B81D6CE0();
  *v41 = v42;
  *(v41 + 8) = v21;
  v50[0] = v40;
  v50[1] = v44;
  LOBYTE(v50[2]) = v27;
  v50[3] = v45;
  v50[4] = v39;
  LOBYTE(v50[5]) = v26;
  v50[6] = v38;
  v50[7] = v37;
  v50[8] = v49;
  v50[9] = v48;
  v50[10] = v47;
  LOWORD(v50[11]) = 256;
  LOBYTE(v50[12]) = v46;
  v50[13] = v1;
  v50[14] = v2;
  v50[15] = v3;
  v50[16] = v4;
  LOBYTE(v50[17]) = 0;
  memcpy((v41 + 16), v50, 0x89uLL);
  *(v41 + 160) = 0;
  *(v41 + 168) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E1B0, &qword_1B81FFF40);
  sub_1B81D6CE0();
  sub_1B81D6B08(v42, v21);
  sub_1B81D6CE0();
  sub_1B81D6B20(v42, v21);
  sub_1B8192D84(v0, &qword_1EBA7E1A0, &qword_1B81FFF30);
  sub_1B8192D84(v43, &qword_1EBA7E1A0, &qword_1B81FFF30);
  v51 = v40;
  v52 = v44;
  v53 = v35;
  v54 = v45;
  v55 = v39;
  LOBYTE(v56) = v36;
  v57 = v38;
  v58 = v37;
  v59 = v49;
  v60 = v48;
  v61 = v47;
  v62 = 256;
  v63 = v46;
  v64 = v1;
  v65 = v2;
  v66 = v3;
  v67 = v4;
  v68 = 0;
  sub_1B8192D84(&v51, &qword_1EBA7E1B8, &qword_1B81FFF48);
  sub_1B81D6B20(v42, v21);
  OUTLINED_FUNCTION_36();
}

void sub_1B81D3060()
{
  OUTLINED_FUNCTION_38();
  v62 = v4;
  v6 = v5;
  v64 = v7;
  v8 = sub_1B81F89D8();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v14 = v13 - v12;
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x128))();
  sub_1B8188DE0();
  sub_1B81F8AF8();
  OUTLINED_FUNCTION_38_3();
  sub_1B81F8958();
  v58 = *MEMORY[0x1E6980EA8];
  v57 = *(v10 + 104);
  v57(v14);
  sub_1B81F89E8();

  v60 = v14;
  v61 = v8;
  v56 = *(v10 + 8);
  v56(v14, v8);
  sub_1B81F8968();

  OUTLINED_FUNCTION_33_3();
  v15 = sub_1B81F8AD8();
  v17 = v16;
  LOBYTE(v8) = v18;

  v19 = OUTLINED_FUNCTION_52();
  sub_1B8190C24(v19, v20, v21);

  sub_1B81F8788();
  sub_1B81F8AC8();
  OUTLINED_FUNCTION_38_3();
  sub_1B8190C24(v15, v17, v8 & 1);

  if ((v62 & 0x100) != 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x158))(v22);
    if (v27)
    {
      v59 = sub_1B81F8AF8();
      v29 = v28;
      v31 = v30;
      sub_1B81F8958();
      (v57)(v60, v58, v61);
      sub_1B81F89E8();
      v63 = v3;

      v32 = OUTLINED_FUNCTION_39_3();
      (v56)(v32);
      sub_1B81F8AD8();

      sub_1B8190C24(v59, v29, v31 & 1);

      sub_1B81F87A8();
      v23 = sub_1B81F8AC8();
      v24 = v33;
      v35 = v34;
      v26 = v36;
      v37 = OUTLINED_FUNCTION_39_3();
      sub_1B8190C24(v37, v38, v39);

      v25 = v35 & 1;
      v3 = v63;
      sub_1B8192C18(v23, v24, v25);
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
  }

  v40 = OUTLINED_FUNCTION_52();
  sub_1B8192C18(v40, v41, v3 & 1);

  v42 = OUTLINED_FUNCTION_19_2();
  sub_1B81D6E08(v42, v43, v44, v45);
  v46 = OUTLINED_FUNCTION_19_2();
  sub_1B81D6E5C(v46, v47, v48, v49);
  *v64 = v1;
  *(v64 + 8) = v2;
  *(v64 + 16) = v3 & 1;
  *(v64 + 24) = v0;
  *(v64 + 32) = v23;
  *(v64 + 40) = v24;
  *(v64 + 48) = v25;
  *(v64 + 56) = v26;
  v50 = OUTLINED_FUNCTION_19_2();
  sub_1B81D6E5C(v50, v51, v52, v53);
  v54 = OUTLINED_FUNCTION_52();
  sub_1B8190C24(v54, v55, v3 & 1);

  OUTLINED_FUNCTION_37();
}