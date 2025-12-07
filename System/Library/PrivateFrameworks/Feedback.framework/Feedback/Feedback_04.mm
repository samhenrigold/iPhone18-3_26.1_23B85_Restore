void *sub_1B8B8FF6C()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v41 = v10;
  while (v8)
  {
    v14 = v11;
LABEL_11:
    v15 = __clz(__rbit64(v8)) | (v14 << 6);
    v16 = (*(v10 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = 0x657275746165663ALL;
        v21 = 0xEF6E69616D6F645FLL;
        goto LABEL_26;
      }

      if (v18 != 4)
      {
        if (v18 == 5)
        {
          v19 = 0xD000000000000012;
          v21 = 0x80000001B8C33DC0;
          goto LABEL_26;
        }

LABEL_22:
        v19 = *v16;
        v21 = v16[1];
        goto LABEL_26;
      }

      v19 = 0x6165665F6275733ALL;
      v20 = 1701999988;
    }

    else
    {
      if (!v18)
      {
        v21 = 0xE600000000000000;
        v19 = 0x656C7469743ALL;
        goto LABEL_26;
      }

      if (v18 == 1)
      {
        v21 = 0xE500000000000000;
        v19 = 0x616572613ALL;
        goto LABEL_26;
      }

      if (v18 != 2)
      {
        goto LABEL_22;
      }

      v19 = 0x706972637365643ALL;
      v20 = 1852795252;
    }

    v21 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_26:
    v22 = *(*(v10 + 56) + 8 * v15);

    sub_1B8B5FB10(v17, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v19;
    v25 = v19;
    v26 = v21;
    v27 = sub_1B8B5E2DC(v25, v21);
    v29 = v12[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_38;
    }

    v33 = v28;
    if (v12[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v27;
        sub_1B8B94684();
        v27 = v39;
      }

      v34 = v26;
    }

    else
    {
      sub_1B8B93390(v32, isUniquelyReferenced_nonNull_native);
      v34 = v26;
      v27 = sub_1B8B5E2DC(v24, v26);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_40;
      }
    }

    v8 &= v8 - 1;
    if (v33)
    {
      v13 = v27;

      *(v12[7] + 8 * v13) = v22;
    }

    else
    {
      v12[(v27 >> 6) + 8] |= 1 << v27;
      v36 = (v12[6] + 16 * v27);
      *v36 = v24;
      v36[1] = v34;
      *(v12[7] + 8 * v27) = v22;
      v37 = v12[2];
      v31 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v31)
      {
        goto LABEL_39;
      }

      v12[2] = v38;
    }

    v11 = v14;
    v10 = v41;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return v12;
    }

    v8 = *(v4 + 8 * v14);
    ++v11;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}

id sub_1B8B9029C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentUser];

  if (v1)
  {
    v2 = [v1 isAppleConnectUser];
  }

  else
  {
    if (qword_1EBAA58F8 != -1)
    {
      swift_once();
    }

    v3 = sub_1B8C23C38();
    __swift_project_value_buffer(v3, qword_1EBAA7390);
    v1 = sub_1B8C23C18();
    v4 = sub_1B8C25478();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B8B22000, v1, v4, "No user in initializeViewIfNeeded()", v5, 2u);
      MEMORY[0x1B8CCB0E0](v5, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

void sub_1B8B903D8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EBAA58F8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8C23C38();
    __swift_project_value_buffer(v5, qword_1EBAA7390);
    v6 = a1;
    v7 = sub_1B8C23C18();
    v8 = sub_1B8C25478();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
      v12 = sub_1B8C25178();
      v14 = sub_1B8B5DD48(v12, v13, &v23);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1B8B22000, v7, v8, "Failed to load new response with error: %s", v9, 0xCu);
      v15 = __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CCB0E0](v10, -1, -1, v15);
      MEMORY[0x1B8CCB0E0](v9, -1, -1);
    }

    v16 = a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply;
    v17 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
    if (v17)
    {
      v18 = *(v16 + 8);
      sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);

      v19 = sub_1B8C255C8();
      v17(v19, v20);

      sub_1B8B30A44(v17, v18);
    }

    else
    {
    }
  }

  else
  {
    v21 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
    if (v21)
    {
      v22 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply + 8);

      v21(0);

      sub_1B8B30A44(v21, v22);
    }
  }
}

void sub_1B8B90638(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id DraftingExtensionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1B8C250F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DraftingExtensionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session] = 0;
  *&v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form] = 0;
  *&v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub] = 0;
  v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews] = 0;
  v6 = &v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply];
  *v6 = 0;
  v6[1] = 0;
  *&v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_showsCompletionPage] = 1;
  *&v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController] = 0;
  if (a2)
  {
    v7 = sub_1B8C250F8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for DraftingExtensionViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id DraftingExtensionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DraftingExtensionViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub] = 0;
  v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews] = 0;
  v3 = &v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_showsCompletionPage] = 1;
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DraftingExtensionViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id DraftingExtensionViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DraftingExtensionViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1B8B90B00(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_showsCompletionPage) = a2;
  v2 = *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController);
  if (!v2)
  {
    return;
  }

  if ((a2 & 1) == 0)
  {
    v6 = v2;
    v5 = 2;
    goto LABEL_12;
  }

  v3 = *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session);
  if (!v3 || (v4 = *(v3 + 40)) == 0)
  {
    v6 = v2;
LABEL_11:
    v5 = 1;
    goto LABEL_12;
  }

  v7 = v2;
  if (![v4 isUnauthenticatedUser])
  {
    v6 = v7;
    goto LABEL_11;
  }

  v5 = 0;
  v6 = v7;
LABEL_12:
  v8 = v6;
  [v6 setSubmissionStyle_];
}

uint64_t sub_1B8B90C68(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v6 = sub_1B8C24FD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B8C25008();
  v10 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v13 = sub_1B8C25538();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  aBlock[4] = v19;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B9634C(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v21);
}

void sub_1B8B90F28(uint64_t a1, char a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController);
  if (v2)
  {
    v6[4] = CGSizeMake;
    v6[5] = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1B8B963EC;
    v6[3] = &block_descriptor_51;
    v4 = _Block_copy(v6);
    v5 = v2;
    [v5 saveDraftWithIsClosing:a2 & 1 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_1B8B9106C()
{
  v1 = sub_1B8C24FD8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B8C25008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v9 = sub_1B8C25538();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1B8B96048;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_42;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B9634C(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t DraftingExtensionViewController.setFeedbackForm(_:reply:)(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v5 = sub_1B8C24FD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8C25008();
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B8C23C38();
  __swift_project_value_buffer(v11, qword_1EBAA7390);
  v12 = a1;
  v13 = sub_1B8C23C18();
  v14 = sub_1B8C25498();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v15 = 136446466;
    *(v15 + 4) = sub_1B8B5DD48(0xD000000000000019, 0x80000001B8C33DA0, aBlock);
    *(v15 + 12) = 2082;
    v36 = a3;
    v16 = &v12[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v17 = v8;
    v18 = v9;
    v19 = v5;
    v20 = v6;
    v22 = *v16;
    v21 = v16[1];

    v23 = sub_1B8B5DD48(v22, v21, aBlock);
    a3 = v36;

    *(v15 + 14) = v23;
    v6 = v20;
    v5 = v19;
    v9 = v18;
    v8 = v17;
    _os_log_impl(&dword_1B8B22000, v13, v14, "%{public}s with form identifier: [%{public}s]", v15, 0x16u);
    v24 = v35;
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v24, -1, -1);
    MEMORY[0x1B8CCB0E0](v15, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v25 = sub_1B8C25538();
  v26 = swift_allocObject();
  v27 = v37;
  v28 = v38;
  v26[2] = v12;
  v26[3] = v28;
  v26[4] = v27;
  v26[5] = a3;
  aBlock[4] = sub_1B8B92AE8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_3;
  v29 = _Block_copy(aBlock);
  v30 = v12;
  v31 = v28;

  v32 = v39;
  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B9634C(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v32, v8, v29);
  _Block_release(v29);

  (*(v6 + 8))(v8, v5);
  return (*(v40 + 8))(v32, v9);
}

double sub_1B8B91814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedbackSession();
  swift_allocObject();
  v8 = a1;
  *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session) = sub_1B8BB7B2C(v8);

  v9 = (a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
  v10 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
  v11 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply + 8);
  *v9 = a3;
  v9[1] = a4;

  sub_1B8B30A44(v10, v11);
  sub_1B8BE2648(v8);
  v12 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form);
  *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form) = v8;
  v13 = v8;

  sub_1B8B8C698();

  return result;
}

Swift::Void __swiftcall DraftingExtensionViewController.prepareUIForLogOut()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub);
  *(v0 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub) = 0;

  v2 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController;
  v3 = *(v0 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController);
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    [v4 removeFromParentViewController];
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 removeFromSuperview];

      *(v0 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews) = 1;
      v7 = *(v0 + v2);
      *(v0 + v2) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void DraftingExtensionViewController.controller(_:didFinishSubmissionWithError:)(void *a1, NSObject *a2)
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = a2;
      sub_1B8BBFD3C();
      v8 = v7;

      if (!v8)
      {
        v9 = a2;

        goto LABEL_6;
      }

      goto LABEL_112;
    }

    swift_beginAccess();
    v86 = swift_unknownObjectWeakLoadStrong();
    if (v86)
    {
      v8 = v86;
      v87 = a2;
LABEL_112:
      v88 = sub_1B8C23358();
      v89 = objc_allocWithZone(type metadata accessor for FBKSubmissionError());
      v90 = sub_1B8BCD868(v88);
      [v8 didFailSubmissionWithError_];

      swift_unknownObjectRelease();
      return;
    }

LABEL_142:
    sub_1B8C258A8();
    __break(1u);
    return;
  }

  v10 = *(v2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form);
  if (!v10)
  {
    if (qword_1EBAA58F8 != -1)
    {
      goto LABEL_138;
    }

    goto LABEL_120;
  }

  v12 = v10;
  v13 = [a1 draftingController];
  v14 = sub_1B8B9CA60(v12);

  v15 = [a1 draftingController];
  v16 = sub_1B8B9D1A8(v12);

  v17 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses;
  swift_beginAccess();
  *&v12[v17] = v16;

  v18 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  oslog = v18;
  *&v12[v18] = MEMORY[0x1E69E7CC8];

  v108 = v14 + 8;
  v19 = 1 << *(v14 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v14[8];
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  v110 = v14;
  v111 = a1;
  v109 = v22;
  do
  {
LABEL_12:
    if (v21)
    {
      goto LABEL_17;
    }

    do
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_134;
      }

      if (v24 >= v22)
      {
        v91 = v12;

        v92 = [a1 draftingController];
        v93 = [v92 formResponse];

        v94 = [v93 contentItem];
        if (v94)
        {
          v95 = [v94 ID];

          if (v95)
          {

            v96 = [v95 stringValue];

            if (!v96)
            {
              sub_1B8C25128();
              v96 = sub_1B8C250F8();
            }

            v97 = [a1 bugForm];
            if (v97)
            {
              v98 = v97;
              v99 = [v97 role];

              v100 = sub_1B8BA92B4(v99);
            }

            else
            {
              v100 = 0;
            }

            v104 = swift_unknownObjectWeakLoadStrong();
            if (v104)
            {
              v105 = v104;
              sub_1B8BBFD3C();
              v107 = v106;

              if (!v107)
              {

                return;
              }

              v12 = v91;
            }

            else
            {
              swift_beginAccess();
              v107 = swift_unknownObjectWeakLoadStrong();
              if (!v107)
              {
                goto LABEL_142;
              }
            }

            [v107 feedbackDidCompleteWithResponseType:v100 responseID:v96 completedForm:v12];

            swift_unknownObjectRelease();
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_141:
        sub_1B8C25A58();
        __break(1u);
        goto LABEL_142;
      }

      v21 = v108[v24];
      ++v23;
    }

    while (!v21);
    v23 = v24;
LABEL_17:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v23 << 6);
    v27 = *(v14[7] + 8 * v26);
    v123 = *(v27 + 16);
  }

  while (!v123);
  v112 = v23;
  v113 = v21;
  v28 = (v14[6] + 16 * v26);
  v29 = *v28;
  v30 = v28[1];
  v32 = *v28 == 0x656C7469743ALL && v30 == 0xE600000000000000;
  v122 = v32;
  v34 = v29 == 0x616572613ALL && v30 == 0xE500000000000000;
  v36 = v29 == 0x706972637365643ALL && v30 == 0xEC0000006E6F6974;
  v117 = v36;
  v118 = v34;
  v38 = v29 == 0x657275746165663ALL && v30 == 0xEF6E69616D6F645FLL;
  v40 = v29 == 0x6165665F6275733ALL && v30 == 0xEC00000065727574;
  v115 = v40;
  v116 = v38;
  v42 = v29 == 0xD000000000000012 && 0x80000001B8C33DC0 == v30;
  v114 = v42;

  v43 = 0;
  v44 = (v27 + 40);
  v119 = v29;
  v120 = v30;
  v121 = v27;
  while (v43 < *(v27 + 16))
  {
    v45 = *(v44 - 1);
    v46 = *v44;
    if (v122)
    {
      v29 = 0;
      v47 = 0;
    }

    else
    {
      v48 = sub_1B8C25A08();
      if ((v48 | v118))
      {
        v29 = 0;
        v47 = ~v48 & 1;
      }

      else
      {
        v49 = sub_1B8C25A08();
        if (v49)
        {
          v47 = 1;
        }

        else
        {
          v47 = 2;
        }

        if ((v49 | v117) & 1) != 0 || ((v50 = sub_1B8C25A08(), (v50) ? (v47 = 2) : (v47 = 3), ((v50 | v116) & 1) != 0 || ((v51 = sub_1B8C25A08(), (v51) ? (v47 = 3) : (v47 = 4), ((v51 | v115) & 1) != 0 || ((v52 = sub_1B8C25A08(), (v52) ? (v47 = 4) : (v47 = 5), ((v52 | v114)))))
        {
          v29 = 0;
        }

        else if (sub_1B8C25A08())
        {
          v29 = 0;
          v47 = 5;
        }

        else
        {

          v47 = v30;
        }
      }
    }

    v53 = v12;
    v54 = *(&oslog->isa + v12);
    v55 = *(v54 + 16);

    if (!v55)
    {
      goto LABEL_90;
    }

    v56 = sub_1B8B5E354(v29, v47);
    if ((v57 & 1) == 0)
    {

LABEL_90:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1B8C2A740;
      *(v58 + 32) = v45;
      *(v58 + 40) = v46;
      v12 = v53;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = *(&oslog->isa + v53);
      *(&oslog->isa + v53) = 0x8000000000000000;
      v64 = sub_1B8B5E354(v29, v47);
      v74 = *(v63 + 2);
      v75 = (v73 & 1) == 0;
      v68 = __OFADD__(v74, v75);
      v76 = v74 + v75;
      if (v68)
      {
        goto LABEL_133;
      }

      v77 = v73;
      if (*(v63 + 3) < v76)
      {
        sub_1B8B93050(v76, isUniquelyReferenced_nonNull_native);
        v64 = sub_1B8B5E354(v29, v47);
        if ((v77 & 1) != (v78 & 1))
        {
          goto LABEL_141;
        }

LABEL_95:
        if ((v77 & 1) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_55;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_95;
      }

      v84 = v64;
      sub_1B8B94514();
      v64 = v84;
      v12 = v53;
      if ((v77 & 1) == 0)
      {
LABEL_96:
        *(v63 + (v64 >> 6) + 8) |= 1 << v64;
        v79 = (*(v63 + 6) + 16 * v64);
        *v79 = v29;
        v79[1] = v47;
        *(*(v63 + 7) + 8 * v64) = v58;
        v80 = *(v63 + 2);
        v68 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v68)
        {
          goto LABEL_135;
        }

LABEL_102:
        *(v63 + 2) = v81;
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    v58 = *(*(v54 + 56) + 8 * v56);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1B8B5D1AC(0, *(v58 + 16) + 1, 1, v58);
    }

    v60 = *(v58 + 16);
    v59 = *(v58 + 24);
    if (v60 >= v59 >> 1)
    {
      v58 = sub_1B8B5D1AC((v59 > 1), v60 + 1, 1, v58);
    }

    *(v58 + 16) = v60 + 1;
    v61 = v58 + 16 * v60;
    *(v61 + 32) = v45;
    *(v61 + 40) = v46;
    v12 = v53;
    swift_beginAccess();
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(&oslog->isa + v53);
    *(&oslog->isa + v53) = 0x8000000000000000;
    v64 = sub_1B8B5E354(v29, v47);
    v66 = *(v63 + 2);
    v67 = (v65 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
      goto LABEL_136;
    }

    v70 = v65;
    if (*(v63 + 3) < v69)
    {
      sub_1B8B93050(v69, v62);
      v64 = sub_1B8B5E354(v29, v47);
      if ((v70 & 1) != (v71 & 1))
      {
        goto LABEL_141;
      }

LABEL_100:
      if ((v70 & 1) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_55;
    }

    if (v62)
    {
      goto LABEL_100;
    }

    v85 = v64;
    sub_1B8B94514();
    v64 = v85;
    v12 = v53;
    if ((v70 & 1) == 0)
    {
LABEL_101:
      *(v63 + (v64 >> 6) + 8) |= 1 << v64;
      v82 = (*(v63 + 6) + 16 * v64);
      *v82 = v29;
      v82[1] = v47;
      *(*(v63 + 7) + 8 * v64) = v58;
      v83 = *(v63 + 2);
      v68 = __OFADD__(v83, 1);
      v81 = v83 + 1;
      if (v68)
      {
        goto LABEL_137;
      }

      goto LABEL_102;
    }

LABEL_55:
    *(*(v63 + 7) + 8 * v64) = v58;

    sub_1B8B5E4C4(v29, v47);
LABEL_56:
    *(&oslog->isa + v12) = v63;
    swift_endAccess();
    v30 = v120;
    v27 = v121;
    v29 = v119;
    ++v43;
    v44 += 2;
    if (v123 == v43)
    {

      v14 = v110;
      a1 = v111;
      v22 = v109;
      v23 = v112;
      v21 = v113;
      goto LABEL_12;
    }
  }

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
  swift_once();
LABEL_120:
  v101 = sub_1B8C23C38();
  __swift_project_value_buffer(v101, qword_1EBAA7390);
  osloga = sub_1B8C23C18();
  v102 = sub_1B8C25488();
  if (os_log_type_enabled(osloga, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_1B8B22000, osloga, v102, "Could not report successful feedback submission because FBKFeedbackForm is nil", v103, 2u);
    MEMORY[0x1B8CCB0E0](v103, -1, -1);
  }

  v9 = osloga;

LABEL_6:
}

uint64_t sub_1B8B92A7C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B8B92AF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6628, &unk_1B8C2BCB0);
  v38 = v4;
  v6 = sub_1B8C258D8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_1B8C25AB8();
      sub_1B8C251B8();
      v28 = sub_1B8C25AF8();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1B8B92DB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6680, &qword_1B8C294B8);
  v6 = sub_1B8C258D8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_1B8C25AB8();
      MEMORY[0x1B8CCA790](v20);
      v21 = sub_1B8C25AF8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1B8B93050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6608, &qword_1B8C2BC60);
  v32 = v4;
  v6 = sub_1B8C258D8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_50;
          }

          if (v8 >= v13)
          {
            break;
          }

          v18 = v9[v8];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v12 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        if ((v32 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_48;
        }

        v31 = 1 << *(v5 + 32);
        v3 = v2;
        if (v31 >= 64)
        {
          bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v31;
        }

        *(v5 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v33 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v32 & 1) == 0)
      {
        sub_1B8B5FB10(v33, v21);
      }

      sub_1B8C25AB8();
      if (v21 > 2)
      {
        switch(v21)
        {
          case 3:
            v22 = 3;
            break;
          case 4:
            v22 = 4;
            break;
          case 5:
            v22 = 5;
            break;
          default:
LABEL_28:
            MEMORY[0x1B8CCA790](6);
            sub_1B8C251B8();
            goto LABEL_32;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          v22 = 1;
        }

        else
        {
          if (v21 != 2)
          {
            goto LABEL_28;
          }

          v22 = 2;
        }
      }

      else
      {
        v22 = 0;
      }

      MEMORY[0x1B8CCA790](v22);
LABEL_32:
      v23 = sub_1B8C25AF8();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_50:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v33;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }
  }

LABEL_48:
  *v3 = v7;
}

void sub_1B8B93390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7458, &qword_1B8C2BC48);
  v35 = v4;
  v6 = sub_1B8C258D8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1B8C25AB8();
      sub_1B8C251B8();
      v25 = sub_1B8C25AF8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1B8B93638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_1B8C23498();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7498, &qword_1B8C2BCA0);
  v43 = v4;
  v8 = sub_1B8C258D8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      sub_1B8C25AB8();
      sub_1B8C251B8();
      v29 = sub_1B8C25AF8();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1B8B939B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7468, &qword_1B8C2BC68);
  v40 = v4;
  v6 = sub_1B8C258D8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v40)
      {
        v46 = *(v25 + 8);
        v47 = *v25;
        v43 = *(v25 + 24);
        v44 = *(v25 + 16);
        v42 = *(v25 + 32);
        v41 = *(v25 + 40);
        v26 = *(v25 + 48);
        v45 = *(v25 + 56);
      }

      else
      {
        v27 = *(v25 + 16);
        v28 = *(v25 + 32);
        v29 = *(v25 + 48);
        v48[0] = *v25;
        v48[1] = v27;
        v48[2] = v28;
        v48[3] = v29;
        v47 = *&v48[0];
        v45 = *(&v29 + 1);
        v46 = *(&v48[0] + 1);
        v43 = *(&v27 + 1);
        v44 = v27;
        v42 = v28;
        v41 = *(&v28 + 1);
        v26 = v29;

        sub_1B8B96144(v48, v49);
      }

      sub_1B8C25AB8();
      sub_1B8C251B8();
      v30 = sub_1B8C25AF8();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v47;
      *(v17 + 8) = v46;
      *(v17 + 16) = v44;
      *(v17 + 24) = v43;
      *(v17 + 32) = v42;
      *(v17 + 40) = v41;
      *(v17 + 48) = v26;
      *(v17 + 56) = v45;
      ++*(v7 + 16);
      v5 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1B8B93D0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B8C23A08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7460, &unk_1B8C2BC50);
  v40 = v4;
  v10 = sub_1B8C258D8();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1B8B9634C(&qword_1EBAA85E0, MEMORY[0x1E699C658], MEMORY[0x1E699C660]);
      v26 = sub_1B8C250B8();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

unint64_t sub_1B8B940E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1B8B94138(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1B8B94180(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1B8B941C8(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

void sub_1B8B94220()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6628, &unk_1B8C2BCB0);
  v2 = *v0;
  v3 = sub_1B8C258C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B8B94398()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6680, &qword_1B8C294B8);
  v2 = *v0;
  v3 = sub_1B8C258C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B8B94514()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6608, &qword_1B8C2BC60);
  v2 = *v0;
  v3 = sub_1B8C258C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1B8B5FB10(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B8B94684()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7458, &qword_1B8C2BC48);
  v2 = *v0;
  v3 = sub_1B8C258C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B8B947F4()
{
  v1 = v0;
  v35 = sub_1B8C23498();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7498, &qword_1B8C2BCA0);
  v3 = *v0;
  v4 = sub_1B8C258C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1B8B94A74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7468, &qword_1B8C2BC68);
  v2 = *v0;
  v3 = sub_1B8C258C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        sub_1B8B96144(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1B8B94C14()
{
  v1 = v0;
  v33 = sub_1B8C23A08();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7460, &unk_1B8C2BC50);
  v3 = *v0;
  v4 = sub_1B8C258C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

double sub_1B8B94E94(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B8C23C38();
  __swift_project_value_buffer(v7, qword_1EBAA7390);
  v8 = a1;
  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25498();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = [v8 ID];
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_1B8B22000, v9, v10, "User did tap switch user from user %{public}@", v11, 0xCu);
    sub_1B8B3433C(v12, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  v15 = *(v2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session);
  if (v15)
  {
    v16 = sub_1B8C253A8();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;

    sub_1B8BE33EC(0, 0, v6, &unk_1B8C2BC78, v17);
  }

  return result;
}

void sub_1B8B950E8(void *a1, void *a2, void *a3)
{
  v4 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session;
  v5 = *(v3 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session);
  if (v5)
  {
    v8 = *(v5 + 48);
    *(v5 + 48) = a1;

    v10 = a1;

    v11 = *(v3 + v4);
    if (v11)
    {
      v12 = *(v11 + 56);
      *(v11 + 56) = a2;

      v13 = a2;

      v14 = *(v3 + v4);
      if (v14)
      {
        v16 = *(v14 + 64);
        *(v14 + 64) = a3;

        v15 = a3;
      }
    }
  }
}

void sub_1B8B951E0(void *a1)
{
  v73[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v68 - v4;
  v6 = sub_1B8C23498();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v68 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v68 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = (v68 - v17);
  v19 = [a1 originalLocalFileURL];
  if (v19)
  {
    v20 = v19;
    sub_1B8C23448();

    (*(v7 + 32))(v18, v16, v6);
    v21 = *(v1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form);
    if (v21)
    {
      v22 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
      v23 = swift_beginAccess();
      v24 = *(v21 + v22);
      MEMORY[0x1EEE9AC00](v23);
      v68[-2] = v18;

      sub_1B8B8B820(sub_1B8B961A0, v24, v5);

      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        sub_1B8B3433C(v5, &qword_1EBAA85A0, &qword_1B8C28C20);
        if (qword_1EBAA58F8 != -1)
        {
          swift_once();
        }

        v25 = sub_1B8C23C38();
        v26 = __swift_project_value_buffer(v25, qword_1EBAA7390);
        v70 = *(v7 + 16);
        v71 = (v7 + 16);
        v70(v13, v18, v6);
        v27 = sub_1B8C23C18();
        v28 = sub_1B8C25498();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v68[1] = v26;
          v30 = v29;
          v68[0] = swift_slowAlloc();
          v73[0] = v68[0];
          *v30 = 136446210;
          sub_1B8B9634C(&qword_1EBAA63C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v31 = sub_1B8C259E8();
          v69 = v10;
          v33 = v32;
          v34 = *(v7 + 8);
          v34(v13, v6);
          v35 = sub_1B8B5DD48(v31, v33, v73);
          v10 = v69;

          *(v30 + 4) = v35;
          _os_log_impl(&dword_1B8B22000, v27, v28, "Deleting attached file from temp directory %{public}s", v30, 0xCu);
          v36 = v68[0];
          v37 = __swift_destroy_boxed_opaque_existential_0(v68[0]);
          MEMORY[0x1B8CCB0E0](v36, -1, -1, v37);
          MEMORY[0x1B8CCB0E0](v30, -1, -1);
        }

        else
        {

          v34 = *(v7 + 8);
          v34(v13, v6);
        }

        v47 = [objc_opt_self() defaultManager];
        v48 = sub_1B8C233E8();
        v73[0] = 0;
        v49 = [v47 removeItemAtURL:v48 error:v73];

        if (v49)
        {
          v50 = v73[0];
        }

        else
        {
          v51 = v73[0];
          v52 = sub_1B8C23368();

          swift_willThrow();
          v70(v10, v18, v6);
          v53 = v52;
          v54 = sub_1B8C23C18();
          v55 = sub_1B8C25478();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v71 = v34;
            v57 = v56;
            v70 = swift_slowAlloc();
            v73[0] = v70;
            *v57 = 136446466;
            sub_1B8B9634C(&qword_1EBAA63C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v58 = sub_1B8C259E8();
            v60 = v59;
            v71(v10, v6);
            v61 = sub_1B8B5DD48(v58, v60, v73);

            *(v57 + 4) = v61;
            *(v57 + 12) = 2080;
            v72 = v52;
            v62 = v52;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
            v63 = sub_1B8C25178();
            v65 = sub_1B8B5DD48(v63, v64, v73);

            *(v57 + 14) = v65;
            _os_log_impl(&dword_1B8B22000, v54, v55, "Failed to delete file %{public}s error %s", v57, 0x16u);
            v66 = v70;
            swift_arrayDestroy();
            MEMORY[0x1B8CCB0E0](v66, -1, -1);
            v67 = v57;
            v34 = v71;
            MEMORY[0x1B8CCB0E0](v67, -1, -1);
          }

          else
          {

            v34(v10, v6);
          }
        }

        v34(v18, v6);
        return;
      }
    }

    else
    {
      (*(v7 + 56))(v5, 1, 1, v6);
    }

    sub_1B8B3433C(v5, &qword_1EBAA85A0, &qword_1B8C28C20);
    (*(v7 + 8))(v18, v6);
  }

  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v38 = sub_1B8C23C38();
  __swift_project_value_buffer(v38, qword_1EBAA7390);
  v39 = a1;
  v40 = sub_1B8C23C18();
  v41 = sub_1B8C25478();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v73[0] = v44;
    *v42 = 136315394;
    *(v42 + 4) = sub_1B8B5DD48(0xD000000000000021, 0x80000001B8C343A0, v73);
    *(v42 + 12) = 2112;
    *(v42 + 14) = v39;
    *v43 = v39;
    v45 = v39;
    _os_log_impl(&dword_1B8B22000, v40, v41, "%s encountered attachment that it cannot not delete %@", v42, 0x16u);
    sub_1B8B3433C(v43, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v43, -1, -1);
    v46 = __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B8CCB0E0](v44, -1, -1, v46);
    MEMORY[0x1B8CCB0E0](v42, -1, -1);
  }
}

void _s8Feedback31DraftingExtensionViewControllerC31controllerWillResignFirstActiveyySo015FBKBugFormTabledE0CF_0()
{
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EBAA7390);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25498();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1B8B22000, oslog, v1, "Will resign first active", v2, 2u);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

void sub_1B8B95BA4(void *a1)
{
  v2 = v1;
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAA7390);
  v5 = a1;
  v6 = sub_1B8C23C18();
  v7 = sub_1B8C25478();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    v11 = sub_1B8C25178();
    v13 = sub_1B8B5DD48(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B8B22000, v6, v7, "Failed to load new response with error: %s", v8, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1, v14);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  v15 = v2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply;
  v16 = *(v2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
  if (v16)
  {
    v17 = *(v15 + 8);
    sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);

    v18 = sub_1B8C255C8();
    v16(v18, v19);
    sub_1B8B30A44(v16, v17);
  }
}

void sub_1B8B95D88(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      sub_1B8C258A8();
      __break(1u);
      return;
    }

LABEL_5:
    [v5 didRequestViewDismissalWithSaved_];
    swift_unknownObjectRelease();
    return;
  }

  v3 = Strong;
  sub_1B8BBFD3C();
  v5 = v4;

  if (v5)
  {
    goto LABEL_5;
  }
}

void _s8Feedback31DraftingExtensionViewControllerC30controllerDidRequestFullScreen4withySo015FBKBugFormTabledE0C_tF_0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      sub_1B8C258A8();
      __break(1u);
      return;
    }

LABEL_5:
    [v3 didRequestViewFullScreen];
    swift_unknownObjectRelease();
    return;
  }

  v1 = Strong;
  sub_1B8BBFD3C();
  v3 = v2;

  if (v3)
  {
    goto LABEL_5;
  }
}

id sub_1B8B96048()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController);
  if (result)
  {
    return [result closeDraftAndDelete:1 completion:0];
  }

  return result;
}

void sub_1B8B96138(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_1B8B961D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B8B5115C;

  return sub_1B8BB9888(a1, v4, v5, v6);
}

uint64_t sub_1B8B9628C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B962F0(uint64_t a1)
{
  v2 = type metadata accessor for URLError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B9634C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FBKInlineThumbsUp.feedbackController.getter()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v3, v1);
  return v3[0];
}

void (*FBKInlineThumbsUp.feedbackController.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[8] = *v1;
  v4[9] = v6;
  v7 = v1[2];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v8 = v7;
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B833D4;
}

uint64_t FBKInlineThumbsUp.$feedbackController.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  return v1;
}

uint64_t type metadata accessor for FBKInlineThumbsUp(uint64_t a1)
{
  result = qword_1EBAA74A8;
  if (!qword_1EBAA74A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B96618()
{
  type metadata accessor for FBKInlineThumbsUp(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return MEMORY[0x1B8CC9B00](v0);
}

uint64_t sub_1B8B96670(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  type metadata accessor for FBKInlineThumbsUp(0);
  v9(v6, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(v8, v2);
}

uint64_t FBKInlineThumbsUp.subject.setter(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FBKInlineThumbsUp(0);
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(a1, v2);
}

void (*FBKInlineThumbsUp.subject.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1B8C23738();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for FBKInlineThumbsUp(0);
  sub_1B8B83A68(v1 + *(v13 + 20), v12);
  MEMORY[0x1B8CC9B00](v10);
  return sub_1B8B83990;
}

uint64_t sub_1B8B96A68(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for FBKInlineThumbsUp(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return a1(v2);
}

uint64_t FBKInlineThumbsUp.disabled.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsUp(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00](&v6, v4);
  return v6;
}

void *sub_1B8B96B2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineThumbsUp(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  result = MEMORY[0x1B8CC9B00](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_1B8B96BA8(char *a1, uint64_t a2)
{
  type metadata accessor for FBKInlineThumbsUp(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

uint64_t FBKInlineThumbsUp.disabled.setter(char a1)
{
  type metadata accessor for FBKInlineThumbsUp(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

void (*FBKInlineThumbsUp.disabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for FBKInlineThumbsUp(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B83E40;
}

uint64_t FBKInlineThumbsUp.$disabled.getter()
{
  type metadata accessor for FBKInlineThumbsUp(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  return v1;
}

uint64_t sub_1B8B96DBC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineThumbsUp(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8B84788;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B8B247D4(v4, v5);
}

uint64_t sub_1B8B96E50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8B84780;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FBKInlineThumbsUp(0) + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_1B8B247D4(v3, v4);
  result = sub_1B8B30A44(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FBKInlineThumbsUp.onFormComplete.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsUp(0) + 28));
  v2 = *v1;
  sub_1B8B247D4(*v1, v1[1]);
  return v2;
}

uint64_t FBKInlineThumbsUp.onFormComplete.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FBKInlineThumbsUp(0) + 28));
  result = sub_1B8B30A44(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FBKInlineThumbsUp.init(feedbackController:subject:disabled:onFormComplete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for FBKInlineThumbsUp(0);
  v18 = (a9 + v17[7]);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_1B8B841EC(a4, a9 + v17[5]);
  v20 = a9 + v17[6];
  *v20 = a5;
  *(v20 + 1) = a6;
  v20[16] = a7;
  *v18 = a8;
  v18[1] = a10;
  return result;
}

double FBKInlineThumbsUp.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = sub_1B8C236E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x1E699C1F0], v6);
  v10 = type metadata accessor for FBKInlineThumbsUp(0);
  sub_1B8C24E68();
  v11 = (v1 + *(v10 + 28));
  v12 = *v11;
  v30 = v11[1];
  v31 = v12;
  *&v36[0] = *v1;
  *(v36 + 8) = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  v33 = v34;
  v32 = v35;
  v13 = (v1 + *(v10 + 24));
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v13) = *(v13 + 16);
  *&v36[0] = v14;
  *(&v36[0] + 1) = v15;
  LOBYTE(v36[1]) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  v28 = v35;
  v29 = v34;
  v27 = BYTE8(v35);
  v16 = type metadata accessor for FBKInlineViewButton(0);
  v17 = v16[6];
  v26 = v16[7];
  v18 = (a1 + v17);
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA71A0, &qword_1B8C2C220);
  sub_1B8C24D58();
  v19 = *&v36[0];
  (*(v7 + 16))(a1, v9, v6);
  sub_1B8B83A68(v5, a1 + v16[5]);
  v21 = v30;
  v20 = v31;
  *v18 = v31;
  v18[1] = v21;
  v34 = 0;
  sub_1B8B247D4(v20, v21);
  sub_1B8C24D58();
  sub_1B8B83AD8(v5);
  (*(v7 + 8))(v9, v6);

  *(a1 + v26) = v36[0];
  v22 = a1 + v16[8];
  *v22 = v33;
  result = *&v32;
  *(v22 + 8) = v32;
  v24 = a1 + v16[9];
  v25 = v28;
  *v24 = v29;
  *(v24 + 8) = v25;
  *(v24 + 16) = v27;
  return result;
}

uint64_t sub_1B8B973C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1B8B9741C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B8B97498@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v22 = sub_1B8C23538();
  v23 = v5;
  sub_1B8B34CA8(v22, v5, v6);
  v7 = sub_1B8C249E8();
  v9 = v8;
  v11 = v10;
  v12 = sub_1B8C248C8();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_1B8C24908();
  sub_1B8B3433C(v4, &qword_1EBAA5CD0, &qword_1B8C278C8);
  sub_1B8C24888();

  v13 = sub_1B8C249B8();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1B8B34060(v7, v9, v11 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_1B8B97638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_1B8B34CA8(a1, a2, a3);

  v24 = sub_1B8C249E8();
  v25 = v6;
  v8 = v7;
  v23 = v9;

  v10 = sub_1B8C249E8();
  v12 = v11;
  v14 = v13;
  v15 = sub_1B8C24988();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1B8B34060(v10, v12, v14 & 1);

  *a5 = v24;
  *(a5 + 8) = v8;
  *(a5 + 16) = v23 & 1;
  *(a5 + 24) = v25;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v15;
  *(a5 + 56) = v17;
  *(a5 + 64) = v19 & 1;
  *(a5 + 72) = v21;
  sub_1B8B34694(v24, v8, v23 & 1);

  sub_1B8B34694(v15, v17, v19 & 1);

  sub_1B8B34060(v15, v17, v19 & 1);

  sub_1B8B34060(v24, v8, v23 & 1);
}

double sub_1B8B977D4@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = sub_1B8C242E8();
  v19 = 1;
  sub_1B8B97638(v4, v5, v6, &v13);
  v22 = v15;
  v23 = v16;
  v20 = v13;
  v21 = v14;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[1] = v14;
  v24 = v17;
  v25[0] = v13;
  sub_1B8B34450(&v20, &v12, &qword_1EBAA7630, &qword_1B8C2C190);
  sub_1B8B3433C(v25, &qword_1EBAA7630, &qword_1B8C2C190);
  *&v18[7] = v20;
  *&v18[71] = v24;
  *&v18[55] = v23;
  *&v18[39] = v22;
  *&v18[23] = v21;
  v8 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  *(a2 + 65) = v8;
  *(a2 + 81) = *&v18[64];
  result = *v18;
  v10 = *&v18[16];
  *(a2 + 17) = *v18;
  v11 = v19;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 96) = *&v18[79];
  *(a2 + 33) = v10;
  return result;
}

uint64_t sub_1B8B978F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v45) = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7648, &qword_1B8C2C1A8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = (&v42 - v7);
  v8 = sub_1B8C24678();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6540, &qword_1B8C2C1B0);
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7650, &qword_1B8C2C1B8);
  v14 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7658, &qword_1B8C2C1C0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v46 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v52 = a1;
  v53 = a2;
  sub_1B8B34CA8(v20, v23, v24);

  v25 = sub_1B8C249E8();
  v49 = v26;
  v47 = v27;
  v29 = v28;
  if (v45)
  {
    sub_1B8C23DE8();
    sub_1B8C24668();
    v30 = sub_1B8B34CFC(&qword_1EBAA7660, &qword_1EBAA6540, &qword_1B8C2C1B0, MEMORY[0x1E697BF38]);
    v45 = v29;
    v31 = v30;
    v32 = sub_1B8B9B378(&qword_1EBAA7668, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
    v42 = v25;
    v33 = v32;
    sub_1B8C24A28();
    (*(v44 + 8))(v10, v8);
    (*(v43 + 8))(v13, v11);
    v34 = v50;
    (*(v14 + 16))(v51, v16, v50);
    swift_storeEnumTagMultiPayload();
    v52 = v11;
    v53 = v8;
    v54 = v31;
    v55 = v33;
    v29 = v45;
    v25 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1B8C24598();
    (*(v14 + 8))(v16, v34);
  }

  else
  {
    *v51 = sub_1B8C24D08();
    swift_storeEnumTagMultiPayload();
    v35 = sub_1B8B34CFC(&qword_1EBAA7660, &qword_1EBAA6540, &qword_1B8C2C1B0, MEMORY[0x1E697BF38]);
    v36 = sub_1B8B9B378(&qword_1EBAA7668, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
    v52 = v11;
    v53 = v8;
    v54 = v35;
    v55 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1B8C24598();
  }

  v37 = v46;
  sub_1B8B2988C(v22, v46);
  v38 = v49;
  *a4 = v25;
  *(a4 + 8) = v38;
  v39 = v47 & 1;
  *(a4 + 16) = v47 & 1;
  *(a4 + 24) = v29;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7670, &qword_1B8C2C1C8);
  sub_1B8B2988C(v37, a4 + *(v40 + 64));
  sub_1B8B34694(v25, v38, v39);

  sub_1B8B298FC(v22);
  sub_1B8B298FC(v37);
  sub_1B8B34060(v25, v38, v39);
}

uint64_t sub_1B8B97EC4@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = sub_1B8C242E8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7638, &qword_1B8C2C198) + 44);
  *v7 = sub_1B8C242E8();
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7640, &qword_1B8C2C1A0);
  return sub_1B8B978F4(v4, v5, v6, v7 + *(v8 + 44));
}

uint64_t sub_1B8B97F60@<X0>(char *a2@<X8>)
{
  v64 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7530, &qword_1B8C2BED8);
  v74 = *(v63 - 8);
  v2 = MEMORY[0x1EEE9AC00](v63);
  v62 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7538, &qword_1B8C2BEE0);
  v6 = *(v5 - 8);
  v72 = v5;
  v73 = v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v75 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v70 = &v58 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v65 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7540, &qword_1B8C2BEE8);
  v68 = *(v15 - 8);
  v69 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v67 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v58 - v18;
  sub_1B8C243A8();
  v80 = sub_1B8C249C8();
  v81 = v19;
  v82 = v20 & 1;
  v83 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7548, &qword_1B8C2BEF0);
  sub_1B8B34CFC(&qword_1EBAA7550, &qword_1EBAA7548, &qword_1B8C2BEF0, MEMORY[0x1E6981F48]);
  sub_1B8C24ED8();
  sub_1B8C243A8();
  v80 = sub_1B8C249C8();
  v81 = v22;
  v82 = v23 & 1;
  v83 = v24;
  sub_1B8C243A8();
  v76 = sub_1B8C249C8();
  v77 = v25;
  v78 = v26 & 1;
  v79 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7558, &qword_1B8C2BEF8);
  sub_1B8B9AEA4(&qword_1EBAA7560, &qword_1EBAA7558, &qword_1B8C2BEF8, sub_1B8B9ADE4);
  v61 = v14;
  sub_1B8C24EE8();
  sub_1B8C243A8();
  v80 = sub_1B8C249C8();
  v81 = v28;
  v82 = v29 & 1;
  v83 = v30;
  sub_1B8C243A8();
  v76 = sub_1B8C249C8();
  v77 = v31;
  v78 = v32 & 1;
  v79 = v33;
  sub_1B8C24EE8();
  sub_1B8C243A8();
  v80 = sub_1B8C249C8();
  v81 = v34;
  v82 = v35 & 1;
  v83 = v36;
  sub_1B8C243A8();
  v76 = sub_1B8C249C8();
  v77 = v37;
  v78 = v38 & 1;
  v79 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7588, &qword_1B8C2BF10);
  sub_1B8B9AEA4(&qword_1EBAA7590, &qword_1EBAA7588, &qword_1B8C2BF10, sub_1B8B9AF28);
  v40 = v71;
  sub_1B8C24EE8();
  v59 = *(v68 + 16);
  v41 = v67;
  v42 = v69;
  v59(v67, v66, v69);
  v43 = *(v73 + 16);
  v44 = v70;
  v45 = v14;
  v46 = v72;
  v43(v70, v45, v72);
  v43(v75, v65, v46);
  v60 = *(v74 + 16);
  v47 = v62;
  v48 = v40;
  v49 = v63;
  v60(v62, v48, v63);
  v50 = v64;
  v59(v64, v41, v42);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75B0, &qword_1B8C2BF20);
  v52 = v72;
  v43(&v50[v51[12]], v44, v72);
  v43(&v50[v51[16]], v75, v52);
  v60(&v50[v51[20]], v47, v49);
  v53 = *(v74 + 8);
  v53(v71, v49);
  v54 = *(v73 + 8);
  v54(v65, v52);
  v54(v61, v52);
  v55 = v69;
  v56 = *(v68 + 8);
  v56(v66, v69);
  v53(v47, v49);
  v54(v75, v52);
  v54(v70, v52);
  return (v56)(v67, v55);
}

uint64_t sub_1B8B9884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1B8B9B378(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v15 = *(a1 + 64);
  swift_getKeyPath();
  sub_1B8C23588();

  v13 = sub_1B8C259E8();
  v16 = v4;
  swift_getKeyPath();
  sub_1B8C23588();

  swift_beginAccess();
  v12 = sub_1B8C259E8();
  v14 = v5;
  swift_getKeyPath();
  sub_1B8C23588();

  swift_beginAccess();
  if (*(a1 + 16) >> 62)
  {
    sub_1B8C258B8();
  }

  v11 = sub_1B8C259E8();
  v7 = v6;
  swift_getKeyPath();
  sub_1B8C23588();

  v8 = sub_1B8C259E8();
  *a2 = 0x676E69636E7953;
  *(a2 + 8) = 0xE700000000000000;
  *(a2 + 16) = v15;
  *(a2 + 24) = 0xD000000000000016;
  *(a2 + 32) = 0x80000001B8C345D0;
  *(a2 + 40) = v13;
  *(a2 + 48) = v16;
  strcpy((a2 + 56), "Interactions");
  *(a2 + 69) = 0;
  *(a2 + 70) = -5120;
  *(a2 + 72) = v12;
  *(a2 + 80) = v14;
  *(a2 + 88) = 0xD000000000000015;
  *(a2 + 96) = 0x80000001B8C34700;
  *(a2 + 104) = v11;
  *(a2 + 112) = v7;
  *(a2 + 120) = 0xD000000000000016;
  *(a2 + 128) = 0x80000001B8C347B0;
  *(a2 + 136) = v8;
  *(a2 + 144) = v9;
}

void *sub_1B8B98BC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7570, &qword_1B8C2BF00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75D8, &qword_1B8C2BF60);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v14 - v8;
  swift_getKeyPath();
  v16 = a1;
  sub_1B8B9B378(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  if (*(*(a1 + 32) + 16))
  {
    swift_getKeyPath();
    v16 = a1;
    sub_1B8C23588();

    v16 = *(a1 + 32);

    v14[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75E0, &unk_1B8C2BF90);
    sub_1B8C23568();
    v14[2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7580, &qword_1B8C2BF08);
    sub_1B8B34CFC(&qword_1EBAA75E8, &qword_1EBAA75E0, &unk_1B8C2BF90, MEMORY[0x1E69E6338]);
    sub_1B8B34CFC(&qword_1EBAA7578, &qword_1EBAA7580, &qword_1B8C2BF08, MEMORY[0x1E697C090]);
    sub_1B8B9B378(&qword_1EBAA75F0, type metadata accessor for BatchInteraction, &unk_1B8C28498);
    sub_1B8C24EC8();
    (*(v5 + 16))(v9, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_1B8B9ADE4();
    sub_1B8C24598();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_1B8C243A8();
    *v9 = sub_1B8C249C8();
    *(v9 + 1) = v11;
    v9[16] = v12 & 1;
    *(v9 + 3) = v13;
    swift_storeEnumTagMultiPayload();
    sub_1B8B9ADE4();
    return sub_1B8C24598();
  }
}

void *sub_1B8B98FC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7570, &qword_1B8C2BF00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75D8, &qword_1B8C2BF60);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v14 - v8;
  swift_getKeyPath();
  v17 = a1;
  sub_1B8B9B378(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {
    swift_getKeyPath();
    v16 = a1;
    sub_1B8C23588();

    v16 = *(a1 + 24);

    v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75E0, &unk_1B8C2BF90);
    sub_1B8C23568();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7580, &qword_1B8C2BF08);
    v14[1] = a2;
    sub_1B8B34CFC(&qword_1EBAA75E8, &qword_1EBAA75E0, &unk_1B8C2BF90, MEMORY[0x1E69E6338]);
    sub_1B8B34CFC(&qword_1EBAA7578, &qword_1EBAA7580, &qword_1B8C2BF08, MEMORY[0x1E697C090]);
    sub_1B8B9B378(&qword_1EBAA75F0, type metadata accessor for BatchInteraction, &unk_1B8C28498);
    sub_1B8C24EC8();
    (*(v5 + 16))(v9, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_1B8B9ADE4();
    sub_1B8C24598();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_1B8C243A8();
    *v9 = sub_1B8C249C8();
    *(v9 + 1) = v11;
    v9[16] = v12 & 1;
    *(v9 + 3) = v13;
    swift_storeEnumTagMultiPayload();
    sub_1B8B9ADE4();
    return sub_1B8C24598();
  }
}

uint64_t sub_1B8B993DC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75F8, &qword_1B8C2BFA0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-v7];
  v18 = a1;
  sub_1B8B548DC(a1, &v17[-v7]);
  v9 = type metadata accessor for EvaluationCard(0);
  v8[v9[5]] = 1;
  v10 = &v8[v9[6]];
  type metadata accessor for BatchController(0);
  sub_1B8B9B378(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  *v10 = sub_1B8C23DA8();
  v10[8] = v11 & 1;
  v12 = &v8[v9[7]];
  v13 = sub_1B8C23738();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = objc_allocWithZone(type metadata accessor for FBKEvaluationController(0));
  v19 = FBKEvaluationController.init(subject:)(v5);
  sub_1B8C24D58();
  v15 = v21;
  *v12 = v20;
  v12[1] = v15;
  v8[*(v6 + 36)] = 0;
  _s8Feedback3RowVMa_0(0);
  sub_1B8B9B378(&qword_1EBAA75A8, _s8Feedback3RowVMa_0, &unk_1B8C2C138);
  sub_1B8B9B028();
  return sub_1B8C23F58();
}

void *sub_1B8B99648@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75A0, &qword_1B8C2BF18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75B8, &qword_1B8C2BF28);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  swift_getKeyPath();
  v17 = a1;
  sub_1B8B9B378(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v10 = *(a1 + 16);
  if (v10 >> 62)
  {
    if (sub_1B8C258B8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_getKeyPath();
    v16 = a1;
    sub_1B8C23588();

    v16 = *(a1 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75C0, &qword_1B8C2BF58);
    sub_1B8C23568();
    _s8Feedback3RowVMa_0(0);
    sub_1B8B34CFC(&qword_1EBAA75C8, &qword_1EBAA75C0, &qword_1B8C2BF58, MEMORY[0x1E69E6338]);
    sub_1B8B9B378(&qword_1EBAA75A8, _s8Feedback3RowVMa_0, &unk_1B8C2C138);
    sub_1B8B9B378(&qword_1EBAA75D0, type metadata accessor for NullableBatchInteraction, &unk_1B8C28514);
    sub_1B8C24EC8();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_1B8B9AF28();
    sub_1B8C24598();
    return (*(v4 + 8))(v6, v3);
  }

  sub_1B8C243A8();
  *v9 = sub_1B8C249C8();
  *(v9 + 1) = v12;
  v9[16] = v13 & 1;
  *(v9 + 3) = v14;
  swift_storeEnumTagMultiPayload();
  sub_1B8B9AF28();
  return sub_1B8C24598();
}

uint64_t sub_1B8B99A54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id;
  v5 = sub_1B8C23568();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

uint64_t sub_1B8B99AD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7520, &qword_1B8C2BED0);
  sub_1B8B34CFC(&qword_1EBAA7528, &qword_1EBAA7520, &qword_1B8C2BED0, MEMORY[0x1E6981F48]);

  return sub_1B8C24968();
}

uint64_t sub_1B8B99B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C24468();
  v9 = 1;
  sub_1B8B99F14(a1, a2, __dst);
  v22 = *&__dst[160];
  v23 = *&__dst[176];
  v24[0] = *&__dst[192];
  *(v24 + 10) = *&__dst[202];
  v18 = *&__dst[96];
  v19 = *&__dst[112];
  v20 = *&__dst[128];
  v21 = *&__dst[144];
  v14 = *&__dst[32];
  v15 = *&__dst[48];
  v16 = *&__dst[64];
  v17 = *&__dst[80];
  v12 = *__dst;
  v13 = *&__dst[16];
  v25[10] = *&__dst[160];
  v25[11] = *&__dst[176];
  v26[0] = *&__dst[192];
  *(v26 + 10) = *&__dst[202];
  v25[6] = *&__dst[96];
  v25[7] = *&__dst[112];
  v25[8] = *&__dst[128];
  v25[9] = *&__dst[144];
  v25[2] = *&__dst[32];
  v25[3] = *&__dst[48];
  v25[4] = *&__dst[64];
  v25[5] = *&__dst[80];
  v25[0] = *__dst;
  v25[1] = *&__dst[16];
  sub_1B8B34450(&v12, __src, &qword_1EBAA74E0, &qword_1B8C2BE08);
  sub_1B8B3433C(v25, &qword_1EBAA74E0, &qword_1B8C2BE08);
  *&v8[167] = v22;
  *&v8[183] = v23;
  *&v8[199] = v24[0];
  *&v8[209] = *(v24 + 10);
  *&v8[103] = v18;
  *&v8[119] = v19;
  *&v8[135] = v20;
  *&v8[151] = v21;
  *&v8[39] = v14;
  *&v8[55] = v15;
  *&v8[71] = v16;
  *&v8[87] = v17;
  *&v8[7] = v12;
  *&v8[23] = v13;
  LOBYTE(a2) = v9;
  sub_1B8C24F48();
  sub_1B8C24088();
  *&v10[27] = *&v10[83];
  *&v10[35] = *&v10[91];
  *&v10[43] = *&v10[99];
  *&v10[51] = v11;
  *&v10[3] = *&v10[59];
  *&v10[11] = *&v10[67];
  *&v10[19] = *&v10[75];
  *(&__src[24] + 1) = *&v8[176];
  *(&__src[26] + 1) = *&v8[192];
  *(&__src[28] + 1) = *&v8[208];
  *(&__src[16] + 1) = *&v8[112];
  *(&__src[18] + 1) = *&v8[128];
  *(&__src[20] + 1) = *&v8[144];
  *(&__src[22] + 1) = *&v8[160];
  *(&__src[8] + 1) = *&v8[48];
  *(&__src[10] + 1) = *&v8[64];
  *(&__src[12] + 1) = *&v8[80];
  *(&__src[14] + 1) = *&v8[96];
  *(&__src[2] + 1) = *v8;
  *(&__src[4] + 1) = *&v8[16];
  *(&__src[6] + 1) = *&v8[32];
  *(&__src[40] + 2) = *&v10[40];
  *(&__src[42] + 2) = *&v10[48];
  *(&__src[32] + 2) = *&v10[8];
  *(&__src[34] + 2) = *&v10[16];
  *(&__src[36] + 2) = *&v10[24];
  *(&__src[38] + 2) = *&v10[32];
  __src[0] = v4;
  __src[1] = 0;
  LOBYTE(__src[2]) = a2;
  BYTE1(__src[30]) = v8[224];
  __src[44] = *(&v11 + 1);
  *(&__src[30] + 2) = *v10;
  sub_1B8C243A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74C0, &qword_1B8C2BDF8);
  sub_1B8B9AB9C();
  sub_1B8C24AD8();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_1B8B3433C(__dst, &qword_1EBAA74C0, &qword_1B8C2BDF8);
}

double sub_1B8B99F14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v60 = a1;
  *(&v60 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74E8, &unk_1B8C2BE10);
  sub_1B8C24D68();
  if (*v58)
  {
    sub_1B8B9ACBC(v58);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74F8, &unk_1B8C2BE28);
    sub_1B8B9AC68(v6, v7, v8);
    sub_1B8B34CFC(&qword_1EBAA7508, &qword_1EBAA74F8, &unk_1B8C2BE28, MEMORY[0x1E6981F48]);
    sub_1B8C24598();
  }

  else
  {
    sub_1B8C243A8();
    v9 = sub_1B8C249C8();
    LOBYTE(v24) = v10 & 1;
    *&v43 = v9;
    *(&v43 + 1) = v11;
    LOBYTE(v44) = v10 & 1;
    *(&v44 + 1) = v60;
    DWORD1(v44) = *(&v60 + 3);
    *(&v44 + 1) = v12;
    v45[0] = sub_1B8C24808();
    memset(&v45[1], 0, 39);
    v45[40] = 1;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;

    LOBYTE(v60) = 1;
    *&v46 = 0x6574616C756D6953;
    *(&v46 + 1) = 0xE800000000000000;
    LOBYTE(v47) = 0;
    *(&v47 + 1) = sub_1B8B9AC54;
    *&v48 = v13;
    BYTE8(v48) = 0;
    v49[0] = sub_1B8C24808();
    memset(&v49[8], 0, 32);
    v49[40] = 1;
    v41 = *v45;
    *v42 = *&v45[16];
    *&v42[9] = *&v45[25];
    v39 = v43;
    v40 = v44;
    *(v55 + 9) = *&v49[25];
    v54[3] = *v49;
    v55[0] = *&v49[16];
    v54[1] = v47;
    v54[2] = v48;
    v54[0] = v46;
    *(v51 + 9) = *&v45[25];
    v50[2] = *v45;
    v51[0] = *&v45[16];
    v50[0] = v43;
    v50[1] = v44;
    *&v38[7] = v43;
    *&v38[64] = *&v45[25];
    *&v38[55] = *&v45[16];
    *&v38[39] = *v45;
    *&v38[23] = v44;
    v52[0] = v46;
    v52[1] = v47;
    *(v53 + 9) = *&v49[25];
    v52[3] = *v49;
    v53[0] = *&v49[16];
    v52[2] = v48;
    *&v37[23] = v47;
    *&v37[7] = v46;
    *&v37[80] = *&v49[25];
    *&v37[71] = *&v49[16];
    *&v37[55] = *v49;
    *&v37[39] = v48;
    sub_1B8B34450(&v43, &v60, &qword_1EBAA5E40, &qword_1B8C27C38);
    sub_1B8B34450(&v46, &v60, &qword_1EBAA74F0, &qword_1B8C2BE20);
    sub_1B8B34450(v50, &v60, &qword_1EBAA5E40, &qword_1B8C27C38);
    sub_1B8B34450(v52, &v60, &qword_1EBAA74F0, &qword_1B8C2BE20);
    sub_1B8B3433C(v54, &qword_1EBAA74F0, &qword_1B8C2BE20);
    v56[2] = v41;
    v57[0] = *v42;
    *(v57 + 9) = *&v42[9];
    v56[0] = v39;
    v56[1] = v40;
    sub_1B8B3433C(v56, &qword_1EBAA5E40, &qword_1B8C27C38);
    *v58 = 0;
    v58[8] = 1;
    *&v58[25] = *&v38[16];
    *&v58[41] = *&v38[32];
    *&v58[57] = *&v38[48];
    *&v58[73] = *&v38[64];
    *&v58[9] = *v38;
    *v59 = 0;
    v59[8] = 1;
    *&v59[25] = *&v37[16];
    *&v59[9] = *v37;
    *&v59[89] = *&v37[80];
    *&v59[73] = *&v37[64];
    *&v59[57] = *&v37[48];
    *&v59[41] = *&v37[32];
    *&v59[112] = 0;
    v59[120] = 1;
    sub_1B8B9AC5C(v58);
    v70 = *&v59[64];
    v71 = *&v59[80];
    v72[0] = *&v59[96];
    *(v72 + 10) = *&v59[106];
    v66 = *v59;
    v67 = *&v59[16];
    v68 = *&v59[32];
    v69 = *&v59[48];
    v62 = *&v58[32];
    v63 = *&v58[48];
    v64 = *&v58[64];
    v65 = *&v58[80];
    v60 = *v58;
    v61 = *&v58[16];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74F8, &unk_1B8C2BE28);
    sub_1B8B9AC68(v14, v15, v16);
    sub_1B8B34CFC(&qword_1EBAA7508, &qword_1EBAA74F8, &unk_1B8C2BE28, MEMORY[0x1E6981F48]);
    sub_1B8C24598();
    sub_1B8B3433C(&v46, &qword_1EBAA74F0, &qword_1B8C2BE20);
    sub_1B8B3433C(&v43, &qword_1EBAA5E40, &qword_1B8C27C38);
    v70 = v34;
    v71 = v35;
    v72[0] = *v36;
    *(v72 + 10) = *&v36[10];
    v66 = v30;
    v67 = v31;
    v68 = v32;
    v69 = v33;
    v62 = v26;
    v63 = v27;
    v64 = v28;
    v65 = v29;
    v60 = v24;
    v61 = v25;
  }

  v17 = v71;
  a3[10] = v70;
  a3[11] = v17;
  a3[12] = v72[0];
  *(a3 + 202) = *(v72 + 10);
  v18 = v67;
  a3[6] = v66;
  a3[7] = v18;
  v19 = v69;
  a3[8] = v68;
  a3[9] = v19;
  v20 = v63;
  a3[2] = v62;
  a3[3] = v20;
  v21 = v65;
  a3[4] = v64;
  a3[5] = v21;
  result = *&v60;
  v23 = v61;
  *a3 = v60;
  a3[1] = v23;
  return result;
}

uint64_t sub_1B8B9A560(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C246D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for StateController(0);
  v8 = swift_allocObject();
  sub_1B8C235B8();
  type metadata accessor for DonationController(0);
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *(v8 + 58) = 0u;
  swift_allocObject();
  v9 = sub_1B8BC46D8(v8);
  v12 = a1;
  v13 = a2;
  v14 = v9;

  sub_1B8C24F58();
  sub_1B8C246C8();
  sub_1B8C23EF8();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B8B9A708(uint64_t a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74E8, &unk_1B8C2BE10);
  return sub_1B8C24D78();
}

double sub_1B8B9A768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  sub_1B8C25388();
  v5 = sub_1B8C253A8();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_1B8C25368();

  v6 = sub_1B8C25358();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1B8BE33EC(0, 0, v4, &unk_1B8C2BE40, v7);

  return result;
}

uint64_t sub_1B8B9A894()
{
  v0[2] = sub_1B8C25368();
  v0[3] = sub_1B8C25358();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1B8B9A940;

  return sub_1B8BC20B4();
}

uint64_t sub_1B8B9A940()
{

  v1 = sub_1B8C25328();

  return MEMORY[0x1EEE6DFA0](sub_1B8B9AA7C, v1, v0);
}

uint64_t sub_1B8B9AA7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8B9AADC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74B8, &qword_1B8C2BDF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA74C0, &qword_1B8C2BDF8);
  sub_1B8B9AB9C();
  swift_getOpaqueTypeConformance2();
  return sub_1B8C23F78();
}

unint64_t sub_1B8B9AB9C()
{
  result = qword_1EBAA74C8;
  if (!qword_1EBAA74C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA74C0, &qword_1B8C2BDF8);
    sub_1B8B34CFC(&qword_1EBAA74D0, &qword_1EBAA74D8, &qword_1B8C2BE00, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA74C8);
  }

  return result;
}

unint64_t sub_1B8B9AC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7500;
  if (!qword_1EBAA7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7500);
  }

  return result;
}

uint64_t sub_1B8B9ACEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B8B5115C;

  return sub_1B8B9A894();
}

unint64_t sub_1B8B9ADE4()
{
  result = qword_1EBAA7568;
  if (!qword_1EBAA7568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7570, &qword_1B8C2BF00);
    sub_1B8B34CFC(&qword_1EBAA7578, &qword_1EBAA7580, &qword_1B8C2BF08, MEMORY[0x1E697C090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7568);
  }

  return result;
}

uint64_t sub_1B8B9AEA4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_1B8B9AF28()
{
  result = qword_1EBAA7598;
  if (!qword_1EBAA7598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA75A0, &qword_1B8C2BF18);
    sub_1B8B9B378(&qword_1EBAA75A8, _s8Feedback3RowVMa_0, &unk_1B8C2C138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7598);
  }

  return result;
}

uint64_t _s8Feedback3RowVMa_0(uint64_t a1)
{
  result = qword_1EBAA7610;
  if (!qword_1EBAA7610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8B9B028()
{
  result = qword_1EBAA7600;
  if (!qword_1EBAA7600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA75F8, &qword_1B8C2BFA0);
    sub_1B8B9B378(&qword_1EBAA7608, type metadata accessor for EvaluationCard, &unk_1B8C2A428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7600);
  }

  return result;
}

uint64_t sub_1B8B9B0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1B8C23568();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_1B8B9B17C(uint64_t a1)
{
  result = sub_1B8C23568();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_1B8B9B1F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B8B9B23C(uint64_t result, int a2, int a3)
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

uint64_t sub_1B8B9B28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1B8B9B2D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B8B9B378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for FBKInlineViewButton(uint64_t a1)
{
  result = qword_1EBAA7698;
  if (!qword_1EBAA7698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B9B438(uint64_t a1)
{
  sub_1B8C236E8();
  if (v1 <= 0x3F)
  {
    sub_1B8B9B610(319, &qword_1EBAA71B8, MEMORY[0x1E699C248]);
    if (v2 <= 0x3F)
    {
      sub_1B8B9B5AC(319, &qword_1EBAA5DF0, &qword_1EBAA5DF8, &qword_1B8C31BF0, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B8B9B5AC(319, &qword_1EBAA76A8, &qword_1EBAA71A0, &qword_1B8C2C220, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1B8B9B610(319, &qword_1EDC85640, type metadata accessor for FBKEvaluationController);
          if (v5 <= 0x3F)
          {
            sub_1B8B846D8();
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

void sub_1B8B9B5AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1B8B9B610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C24E88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B8B9B680@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_1B8C24308();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B8C24FB8();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B8C24F98();
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FBKInlineViewButton(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA76B0, &qword_1B8C2C278);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  sub_1B8B9C0A4(v1, &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  sub_1B8B9C108(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA76B8, &unk_1B8C2C280);
  sub_1B8B34CFC(&qword_1EBAA76C0, &qword_1EBAA76B8, &unk_1B8C2C280, MEMORY[0x1E697D658]);
  sub_1B8C24DB8();
  v21 = v1 + *(v13 + 44);
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v21) = *(v21 + 16);
  v43 = v22;
  v44 = v23;
  v45 = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00](&v42, v24);
  LOBYTE(v13) = v42;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v13;
  v27 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA76C8, &unk_1B8C2C2C0) + 36)];
  *v27 = KeyPath;
  v27[1] = sub_1B8B9C32C;
  v27[2] = v26;
  sub_1B8C24F88();
  sub_1B8C24FA8();
  v28 = &v18[*(v16 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68C0, &qword_1B8C29A60);
  sub_1B8B9C4E0(&qword_1EBAA68C8, MEMORY[0x1E6982178], MEMORY[0x1E6982170]);
  v29 = v33;
  sub_1B8C24098();
  (*(v35 + 8))(v7, v36);
  (*(v34 + 8))(v11, v29);
  *v28 = swift_getKeyPath();
  v30 = v37;
  sub_1B8C242F8();
  sub_1B8B9C344();
  sub_1B8B9C4E0(&qword_1EBAA76F8, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v31 = v38;
  sub_1B8C24A58();
  (*(v39 + 8))(v30, v31);
  return sub_1B8B9C528(v18);
}

void sub_1B8B9BBA8(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8C236E8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for FBKInlineViewButton(0);
  *v35 = *(a1 + *(v13 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7700, &qword_1B8C2C308);
  sub_1B8C24D68();
  if (v36)
  {

    return;
  }

  v34 = v3;
  (*(v7 + 16))(v12, a1, v6);
  v14 = (*(v7 + 88))(v12, v6);
  v15 = v14;
  if (v14 == *MEMORY[0x1E699C1F0])
  {
    v16 = a1 + *(v13 + 32);
    *v35 = *v16;
    *&v35[8] = *(v16 + 8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
    MEMORY[0x1B8CC9B00](&v36, v17);
    v18 = v36;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    MEMORY[0x1B8CC9B00](v19);
    (*(v7 + 104))(v10, v15, v6);
    v20 = v10;
    v21 = v5;
    v22 = 0;
  }

  else
  {
    if (v14 == *MEMORY[0x1E699C1C8])
    {
      v23 = a1 + *(v13 + 32);
      *v35 = *v23;
      *&v35[8] = *(v23 + 8);
    }

    else
    {
      v24 = (a1 + *(v13 + 32));
      v26 = *v24;
      v25 = v24[1];
      v27 = v24[2];
      if (v14 != *MEMORY[0x1E699C1D8])
      {
        *v35 = v26;
        *&v35[8] = v25;
        *&v35[16] = v27;
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
        MEMORY[0x1B8CC9B00](&v36, v30);
        v31 = v36;
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
        MEMORY[0x1B8CC9B00](v32);
        sub_1B8BED0A4(a1, v5, 1, 2, 0);

        (*(v34 + 8))(v5, v2);
        (*(v7 + 8))(v12, v6);
        return;
      }

      *v35 = v26;
      *&v35[8] = v25;
      *&v35[16] = v27;
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
    MEMORY[0x1B8CC9B00](&v36, v28);
    v18 = v36;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    MEMORY[0x1B8CC9B00](v29);
    (*(v7 + 104))(v10, v15, v6);
    v20 = v10;
    v21 = v5;
    v22 = 1;
  }

  sub_1B8BED0A4(v20, v21, v22, 2, 0);

  (*(v7 + 8))(v10, v6);
  (*(v34 + 8))(v5, v2);
}

uint64_t sub_1B8B9BFE4(uint64_t a1)
{
  v12 = sub_1B8C236D8();
  v13 = v2;
  v3 = a1 + *(type metadata accessor for FBKInlineViewButton(0) + 32);
  v10[1] = *v3;
  v11 = *(v3 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v10, v4);
  v5 = v10[0];
  sub_1B8BF1F4C(a1);

  sub_1B8B34CA8(v6, v7, v8);
  return sub_1B8C24D48();
}

uint64_t sub_1B8B9C0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKInlineViewButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B9C108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKInlineViewButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B8B9C16C()
{
  v1 = *(type metadata accessor for FBKInlineViewButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1B8B9BBA8(v2);
}

uint64_t sub_1B8B9C1F8(uint64_t a1)
{
  v2 = sub_1B8C240A8();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1B8C24158();
}

uint64_t sub_1B8B9C2C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B8C24238();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B8B9C344()
{
  result = qword_1EBAA76D0;
  if (!qword_1EBAA76D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA76B0, &qword_1B8C2C278);
    sub_1B8B9C3FC();
    sub_1B8B34CFC(&qword_1EBAA76F0, &qword_1EBAA68C0, &qword_1B8C29A60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA76D0);
  }

  return result;
}

unint64_t sub_1B8B9C3FC()
{
  result = qword_1EBAA76D8;
  if (!qword_1EBAA76D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA76C8, &unk_1B8C2C2C0);
    sub_1B8B34CFC(&qword_1EBAA76E0, &qword_1EBAA76E8, &qword_1B8C2C300, MEMORY[0x1E697D680]);
    sub_1B8B34CFC(&qword_1EBAA67B8, &qword_1EBAA67C0, &qword_1B8C297E0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA76D8);
  }

  return result;
}

uint64_t sub_1B8B9C4E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8B9C528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA76B0, &qword_1B8C2C278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B8B9C5BC@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B8C2A740;
  v4 = *(v1 + 8);
  v34 = *v1;
  v5 = *(v1 + 16);
  v36 = *(v1 + 24);
  v32 = *(v1 + 41);
  v33 = *(v1 + 40);
  v6 = *(v1 + 56);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  v7 = *(&v36 + 1);
  if (*(&v36 + 1))
  {
    v8 = v36;

    sub_1B8B9C9F0(&v36, v35);
    v3 = sub_1B8B5D784(1, 2, 1, v3);
    *(v3 + 16) = 2;
    *(v3 + 64) = v8;
    *(v3 + 72) = v7;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
  }

  else
  {
  }

  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v11 = sub_1B8C23348();
  v13 = v12;

  v14 = sub_1B8B5D414(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1B8B5D414((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[24 * v16];
  *(v17 + 4) = v11;
  *(v17 + 5) = v13;
  *(v17 + 6) = v3;
  if (v6 != 255 && (v6 & 1) == 0)
  {
    v18 = [v9 mainBundle];
    v19 = sub_1B8C23348();
    v21 = v20;

    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B8C2A740;
    *(v22 + 32) = sub_1B8B46FAC(v33 | (v32 << 8));
    *(v22 + 40) = v23;
    *(v22 + 48) = 0;
    *(v22 + 56) = 1;
    v25 = *(v14 + 2);
    v24 = *(v14 + 3);
    if (v25 >= v24 >> 1)
    {
      v14 = sub_1B8B5D414((v24 > 1), v25 + 1, 1, v14);
    }

    *(v14 + 2) = v25 + 1;
    v26 = &v14[24 * v25];
    *(v26 + 4) = v19;
    *(v26 + 5) = v21;
    *(v26 + 6) = v22;
  }

  v27 = type metadata accessor for ListPreviewer.Content(0);
  v28 = *(v27 + 20);
  v29 = *MEMORY[0x1E699C2C0];
  v30 = sub_1B8C237B8();
  (*(*(v30 - 8) + 104))(&a1[v28], v29, v30);
  *a1 = v34;
  *&a1[*(v27 + 24)] = v14;

  return v34;
}

void *sub_1B8B9C900@<X0>(char *a1@<X8>)
{
  sub_1B8B9C5BC(a1);
  v2 = type metadata accessor for ListPreviewer(0);
  v3 = &a1[*(v2 + 20)];
  type metadata accessor for FullScreenPreviewController(0);
  sub_1B8B758B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
  *v3 = sub_1B8C23DA8();
  v3[8] = v4 & 1;
  v5 = &a1[*(v2 + 24)];
  result = sub_1B8C24D58();
  *v5 = v7;
  *(v5 + 1) = v8;
  return result;
}

uint64_t sub_1B8B9C9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8830, &unk_1B8C2B630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1B8B9CA60(uint64_t a1)
{
  v2 = [v1 allVisibleAnswers];
  sub_1B8B46130(0, &qword_1EBAA7720, 0x1E699C120);
  v3 = sub_1B8C252C8();

  v75 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8C258B8())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8CCA4C0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 isAnswered])
      {
        sub_1B8C25848();
        sub_1B8C25878();
        sub_1B8C25888();
        sub_1B8C25858();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v75;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_18:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_35;
  }

  for (j = *(v9 + 16); j; j = sub_1B8C258B8())
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC8];
    v13 = v9 & 0xC000000000000001;
    v14 = &off_1E7EB6000;
    v72 = v9;
    while (1)
    {
      if (v13)
      {
        v15 = MEMORY[0x1B8CCA4C0](v11, v9);
      }

      else
      {
        if (v11 >= *(v9 + 16))
        {
          goto LABEL_34;
        }

        v15 = *(v9 + 8 * v11 + 32);
      }

      v16 = v15;
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v18 = [v15 v14[475]];
      if (v18 && (v19 = v18, v20 = sub_1B8C252C8(), v19, v21 = sub_1B8B9E264(v20), , v21))
      {
        v22 = j;
        v23 = v13;
        v24 = [v16 question];
        v25 = [v24 role];

        if (!v25)
        {
          goto LABEL_94;
        }

        v26 = sub_1B8C25128();
        v28 = v27;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1B8B5F210(v21, v26, v28, isUniquelyReferenced_nonNull_native);

        v13 = v23;
        j = v22;
        v9 = v72;
        v14 = &off_1E7EB6000;
      }

      else
      {
      }

      ++v11;
      if (v17 == j)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v12 = MEMORY[0x1E69E7CC8];
LABEL_37:

  v30 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v31 = *(a1 + v30);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v36 = (v33 + 63) >> 6;

  v69 = v36;
  v71 = v32;
  v73 = v37;
  v38 = 0;
  if (v35)
  {
    while (1)
    {
      v39 = v38;
LABEL_44:
      v40 = __clz(__rbit64(v35)) | (v39 << 6);
      v41 = (*(v37 + 48) + 16 * v40);
      v43 = *v41;
      v42 = v41[1];
      if (v42 > 2)
      {
        switch(v42)
        {
          case 3:
            v44 = 0x657275746165663ALL;
            v46 = 0xEF6E69616D6F645FLL;
            break;
          case 4:
            v44 = 0x6165665F6275733ALL;
            v45 = 1701999988;
            goto LABEL_58;
          case 5:
            v44 = 0xD000000000000012;
            v46 = 0x80000001B8C33DC0;
            break;
          default:
            goto LABEL_55;
        }
      }

      else
      {
        if (v42)
        {
          if (v42 == 1)
          {
            v46 = 0xE500000000000000;
            v44 = 0x616572613ALL;
            goto LABEL_59;
          }

          if (v42 == 2)
          {
            v44 = 0x706972637365643ALL;
            v45 = 1852795252;
LABEL_58:
            v46 = v45 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_59;
          }

LABEL_55:
          v44 = *v41;
          v46 = v41[1];
          goto LABEL_59;
        }

        v46 = 0xE600000000000000;
        v44 = 0x656C7469743ALL;
      }

LABEL_59:
      v35 &= v35 - 1;
      v47 = *(*(v37 + 56) + 8 * v40);
      v48 = v12[2];
      sub_1B8B5FB10(v43, v42);
      v49 = v43;
      sub_1B8B5FB10(v43, v42);

      if (v48)
      {
        v50 = v12;
        sub_1B8B5E2DC(v44, v46);
        v52 = v51;

        if ((v52 & 1) == 0)
        {
          goto LABEL_64;
        }

        sub_1B8B5E4C4(v43, v42);
        v38 = v39;
        v32 = v71;
        v37 = v73;
        v36 = v69;
        if (!v35)
        {
          break;
        }
      }

      else
      {
        v50 = v12;

LABEL_64:
        if (v42 <= 2)
        {
          v12 = v50;
          if (!v42)
          {
            v42 = 0xE600000000000000;
            v49 = 0x656C7469743ALL;
            goto LABEL_78;
          }

          if (v42 == 1)
          {
            v42 = 0xE500000000000000;
            v49 = 0x616572613ALL;
            goto LABEL_78;
          }

          if (v42 != 2)
          {
            goto LABEL_78;
          }

          v49 = 0x706972637365643ALL;
          v53 = 1852795252;
          goto LABEL_77;
        }

        v12 = v50;
        switch(v42)
        {
          case 3:
            v49 = 0x657275746165663ALL;
            v42 = 0xEF6E69616D6F645FLL;
            break;
          case 4:
            v49 = 0x6165665F6275733ALL;
            v53 = 1701999988;
LABEL_77:
            v42 = v53 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 5:
            v49 = 0xD000000000000012;
            v42 = 0x80000001B8C33DC0;
            break;
        }

LABEL_78:
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v74 = v12;
        v55 = sub_1B8B5E2DC(v49, v42);
        v57 = v12[2];
        v58 = (v56 & 1) == 0;
        v59 = __OFADD__(v57, v58);
        v60 = v57 + v58;
        if (v59)
        {
          goto LABEL_92;
        }

        v61 = v56;
        if (v12[3] < v60)
        {
          sub_1B8B93390(v60, v54);
          v55 = sub_1B8B5E2DC(v49, v42);
          if ((v61 & 1) != (v62 & 1))
          {
            goto LABEL_95;
          }

LABEL_83:
          if (v61)
          {
            goto LABEL_84;
          }

          goto LABEL_86;
        }

        if (v54)
        {
          goto LABEL_83;
        }

        v64 = v55;
        sub_1B8B94684();
        v55 = v64;
        if (v61)
        {
LABEL_84:
          v63 = v55;

          *(v74[7] + 8 * v63) = v47;
          v12 = v74;

          goto LABEL_88;
        }

LABEL_86:
        v12[(v55 >> 6) + 8] |= 1 << v55;
        v65 = (v12[6] + 16 * v55);
        *v65 = v49;
        v65[1] = v42;
        *(v12[7] + 8 * v55) = v47;
        v66 = v12[2];
        v59 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v59)
        {
          goto LABEL_93;
        }

        v12[2] = v67;
LABEL_88:
        v32 = v71;
        v37 = v73;
        v36 = v69;
        v38 = v39;
        if (!v35)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      return v12;
    }

    v35 = *(v32 + 8 * v39);
    ++v38;
    if (v35)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}

void *sub_1B8B9D1A8(uint64_t a1)
{
  if (qword_1EBAA5900 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v1 = sub_1B8C23C38();
    __swift_project_value_buffer(v1, qword_1EBAA7708);
    v2 = sub_1B8C23C18();
    v3 = sub_1B8C25458();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *&v120 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_1B8B5DD48(0xD000000000000022, 0x80000001B8C348B0, &v120);
      _os_log_impl(&dword_1B8B22000, v2, v3, "%{public}s", v4, 0xCu);
      v6 = __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x1B8CCB0E0](v5, -1, -1, v6);
      MEMORY[0x1B8CCB0E0](v4, -1, -1);
    }

    v7 = [v101 allVisibleAnswers];
    sub_1B8B46130(0, &qword_1EBAA7720, 0x1E699C120);
    v8 = sub_1B8C252C8();

    *&v120 = MEMORY[0x1E69E7CC0];
    if (v8 >> 62)
    {
      break;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_21;
    }

LABEL_6:
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1B8CCA4C0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v11 isAnswered])
      {
        sub_1B8C25848();
        sub_1B8C25878();
        sub_1B8C25888();
        sub_1B8C25858();
      }

      else
      {
      }

      ++v10;
      if (v13 == v9)
      {
        v14 = v120;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v9 = sub_1B8C258B8();
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_21:
  v14 = MEMORY[0x1E69E7CC0];
LABEL_22:

  if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    goto LABEL_116;
  }

  v15 = *(v14 + 16);
LABEL_25:
  v104 = v14;
  if (v15)
  {
    v16 = 0;
    v107 = v14 & 0xC000000000000001;
    v109 = MEMORY[0x1E69E7CC8];
    v105 = v15;
    while (1)
    {
      if (v107)
      {
        v24 = MEMORY[0x1B8CCA4C0](v16, v14);
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_113;
        }

        v24 = *(v14 + 8 * v16 + 32);
      }

      v25 = v24;
      v26 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        v15 = sub_1B8C258B8();
        goto LABEL_25;
      }

      sub_1B8B9E378(v24, &v120);
      v115 = v120;
      v116 = v121;
      v117 = v122;
      v118 = v123;
      v27 = *(&v120 + 1);
      v14 = v120;
      sub_1B8B96144(&v115, &v110);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v109;
      v29 = sub_1B8B5E2DC(v14, v27);
      v31 = *(v109 + 16);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_114;
      }

      v35 = v30;
      if (*(v109 + 24) < v34)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_39;
      }

      v45 = v29;
      sub_1B8B94A74();
      v29 = v45;
      if (v35)
      {
LABEL_27:
        v109 = v119;
        v17 = (v119[7] + (v29 << 6));
        v18 = v17[3];
        v20 = *v17;
        v19 = v17[1];
        v112 = v17[2];
        v113 = v18;
        v110 = v20;
        v111 = v19;
        v21 = v115;
        v22 = v116;
        v23 = v118;
        v17[2] = v117;
        v17[3] = v23;
        *v17 = v21;
        v17[1] = v22;
        sub_1B8B9F188(&v110);
        sub_1B8B9F188(&v115);

        goto LABEL_28;
      }

LABEL_40:
      v37 = v119;
      v119[(v29 >> 6) + 8] |= 1 << v29;
      v38 = (v37[6] + 16 * v29);
      *v38 = v14;
      v38[1] = v27;
      v39 = (v37[7] + (v29 << 6));
      v41 = v117;
      v40 = v118;
      v42 = v116;
      *v39 = v115;
      v39[1] = v42;
      v39[2] = v41;
      v39[3] = v40;

      sub_1B8B9F188(&v115);

      v43 = v37[2];
      v33 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v33)
      {
        goto LABEL_115;
      }

      v109 = v37;
      v37[2] = v44;
LABEL_28:
      v14 = v104;
      ++v16;
      if (v26 == v105)
      {
        goto LABEL_45;
      }
    }

    sub_1B8B939B8(v34, isUniquelyReferenced_nonNull_native);
    v29 = sub_1B8B5E2DC(v14, v27);
    if ((v35 & 1) != (v36 & 1))
    {
      goto LABEL_118;
    }

LABEL_39:
    if (v35)
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

  v109 = MEMORY[0x1E69E7CC8];
LABEL_45:
  v46 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = v47 + 64;
  v49 = 1 << *(v47 + 32);
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  else
  {
    v50 = -1;
  }

  v51 = v50 & *(v47 + 64);
  v14 = (v49 + 63) >> 6;

  v52 = 0;
  v99 = v47 + 64;
  v100 = v47;
  v98 = v14;
LABEL_49:
  while (2)
  {
    while (2)
    {
      if (!v51)
      {
        do
        {
          v53 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_111;
          }

          if (v53 >= v14)
          {

            v94 = *(v109 + 16);
            if (!v94)
            {
              goto LABEL_108;
            }

            v95 = sub_1B8BCBE20(*(v109 + 16), 0);
            v96 = sub_1B8BCC288(&v115, v95 + 2, v94, v109);
            sub_1B8B29F70(v115);
            if (v96 != v94)
            {
              __break(1u);
LABEL_108:

              return MEMORY[0x1E69E7CC0];
            }

            return v95;
          }

          v51 = *(v48 + 8 * v53);
          ++v52;
        }

        while (!v51);
        v52 = v53;
      }

      v54 = (*(v47 + 48) + ((v52 << 10) | (16 * __clz(__rbit64(v51)))));
      v56 = *v54;
      v55 = v54[1];
      if (v55 > 2)
      {
        switch(v55)
        {
          case 3:
            v106 = 0x657275746165663ALL;
            v58 = 0xEF6E69616D6F645FLL;
            break;
          case 4:
            v106 = 0x6165665F6275733ALL;
            v57 = 1701999988;
LABEL_68:
            v58 = v57 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 5:
            v106 = 0xD000000000000012;
            v58 = 0x80000001B8C33DC0;
            break;
          default:
            goto LABEL_65;
        }

        v108 = v58;
      }

      else if (v55)
      {
        if (v55 == 1)
        {
          v106 = 0x616572613ALL;
          v108 = 0xE500000000000000;
        }

        else
        {
          if (v55 == 2)
          {
            v106 = 0x706972637365643ALL;
            v57 = 1852795252;
            goto LABEL_68;
          }

LABEL_65:
          v106 = *v54;
          v108 = v54[1];
        }
      }

      else
      {
        v106 = 0x656C7469743ALL;
        v108 = 0xE600000000000000;
      }

      v51 &= v51 - 1;
      v59 = *(v109 + 16);
      sub_1B8B5FB10(v56, v55);
      sub_1B8B5FB10(v56, v55);
      if (v59)
      {
        sub_1B8B5E2DC(v106, v108);
        v61 = v60;

        if (v61)
        {

          continue;
        }
      }

      else
      {
      }

      break;
    }

    v62 = [v101 formResponse];
    v63 = [v62 answers];

    if (v63)
    {
      v64 = sub_1B8C253E8();

      sub_1B8B9E50C(v64);
      v66 = v65;

      if (v66)
      {
        a1 = v66;
        v103 = v51;
        if ((v66 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_1B8C25718();
          sub_1B8B9F120();
          sub_1B8C25408();
          v67 = *(&v110 + 1);
          v66 = v110;
          v69 = *(&v111 + 1);
          v68 = v111;
          v14 = v112;
        }

        else
        {
          v70 = -1 << *(v66 + 32);
          v67 = v66 + 56;
          v68 = ~v70;
          v71 = -v70;
          if (v71 < 64)
          {
            v72 = ~(-1 << v71);
          }

          else
          {
            v72 = -1;
          }

          v14 = v72 & *(v66 + 56);

          v69 = 0;
        }

        v73 = (v68 + 64) >> 6;
        if ((v66 & 0x8000000000000000) == 0)
        {
          goto LABEL_86;
        }

        while (1)
        {
          v74 = sub_1B8C25768();
          if (!v74)
          {
            break;
          }

          v114 = v74;
          swift_dynamicCast();
          v75 = v115;
          if (!v115)
          {
            break;
          }

          while (1)
          {
            v78 = [v75 question];
            v79 = [v78 tat];

            v80 = sub_1B8C25128();
            v82 = v81;

            if (v80 == v106 && v82 == v108)
            {

LABEL_104:
              sub_1B8B29F70(v66);

              sub_1B8B9E378(v75, &v115);
              v120 = v115;
              v121 = v116;
              v122 = v117;
              v123 = v118;
              v91 = *(&v115 + 1);
              v92 = v115;
              sub_1B8B96144(&v120, &v115);
              v93 = swift_isUniquelyReferenced_nonNull_native();
              *&v115 = v109;
              sub_1B8B5F358(&v120, v92, v91, v93);

              sub_1B8B9F188(&v120);
              v109 = v115;
              v48 = v99;
              v47 = v100;
              v14 = v98;
              v51 = v103;
              goto LABEL_49;
            }

            v84 = sub_1B8C25A08();

            if (v84)
            {
              goto LABEL_104;
            }

            if (v66 < 0)
            {
              break;
            }

LABEL_86:
            v76 = v69;
            v77 = v14;
            if (!v14)
            {
              while (1)
              {
                v69 = v76 + 1;
                if (__OFADD__(v76, 1))
                {
                  break;
                }

                if (v69 >= v73)
                {
                  goto LABEL_98;
                }

                v77 = *(v67 + 8 * v69);
                ++v76;
                if (v77)
                {
                  goto LABEL_90;
                }
              }

              __break(1u);
LABEL_111:
              __break(1u);
              goto LABEL_112;
            }

LABEL_90:
            v14 = (v77 - 1) & v77;
            v75 = *(*(v66 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v77)))));
            if (!v75)
            {
              goto LABEL_98;
            }
          }
        }

LABEL_98:
        sub_1B8B29F70(v66);

        v85 = sub_1B8C23C18();
        v86 = sub_1B8C25498();

        v51 = v103;
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v115 = v88;
          *v87 = 136446210;
          v89 = sub_1B8B5DD48(v106, v108, &v115);

          *(v87 + 4) = v89;
          _os_log_impl(&dword_1B8B22000, v85, v86, "Prefilled question %{public}s does not match a question tat in Form", v87, 0xCu);
          v90 = __swift_destroy_boxed_opaque_existential_0(v88);
          MEMORY[0x1B8CCB0E0](v88, -1, -1, v90);
          MEMORY[0x1B8CCB0E0](v87, -1, -1);
        }

        else
        {
        }

        v48 = v99;
        v47 = v100;
        v14 = v98;
        continue;
      }
    }

    break;
  }

  sub_1B8C258A8();
  __break(1u);
LABEL_118:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}

uint64_t sub_1B8B9E1E8()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7708);
  __swift_project_value_buffer(v0, qword_1EBAA7708);
  return sub_1B8C23C28();
}

uint64_t sub_1B8B9E264(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B8C13FE8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1B8B5FDD4(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B8C13FE8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1B8B9E378(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [a1 question];
  v6 = [v5 tat];
  v7 = sub_1B8C25128();
  v9 = v8;
  v10 = [v5 text];
  if (v10)
  {
    v11 = v10;

    v12 = sub_1B8C25128();
    v14 = v13;

    v15 = [v5 visible];
    sub_1B8B9E830(v5, &v21);
    if (v2)
    {
    }

    else
    {
      v28 = a2;
      v16 = v15 ^ 1;
      v17 = v21;
      v18 = v22;
      v21 = v7;
      v22 = v9;
      v23 = v12;
      v24 = v14;
      v25 = v16;
      v26 = v17;
      v27 = v18;
      v20 = sub_1B8B9F640(a1, &v21);

      v19 = v28;
      *v28 = v7;
      v19[1] = v9;
      v19[2] = v12;
      v19[3] = v14;
      *(v19 + 32) = v16;
      v19[5] = v17;
      *(v19 + 48) = v18;
      v19[7] = v20;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B8B9E50C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7730, &qword_1B8C2C448);
    v2 = sub_1B8C257B8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = sub_1B8B46130(0, &qword_1EBAA7720, 0x1E699C120);
  v30[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_1B8B9F31C(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28 = sub_1B8C25788();
      sub_1B8B9F378(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_1B8B9F1DC(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_1B8B9F31C(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14 = sub_1B8C25788();
      sub_1B8B9F378(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = sub_1B8C255D8();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B8B9E830@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 answerType];
  if (result > 6)
  {
    if (result <= 9)
    {
      if (result == 7)
      {
        result = sub_1B8B9F3CC(a1);
        if (v2)
        {
          return result;
        }

        *a2 = result;
        v7 = 2;
        goto LABEL_32;
      }

      if (result != 8)
      {
        *a2 = 3;
        *(a2 + 8) = 3;
        return result;
      }

      v6 = 2;
      goto LABEL_30;
    }

    if (result == 10)
    {
      v6 = 4;
      goto LABEL_30;
    }

    if (result != 11)
    {
      if (result == 12)
      {
        v6 = 5;
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (result <= 1)
  {
    if (result != -1)
    {
      if (!result)
      {
        *a2 = 0;
LABEL_31:
        v7 = 3;
LABEL_32:
        *(a2 + 8) = v7;
        return result;
      }

      if (result == 1)
      {
        v6 = 1;
LABEL_30:
        *a2 = v6;
        goto LABEL_31;
      }
    }

    goto LABEL_20;
  }

  if ((result - 2) >= 2)
  {
    if ((result - 5) >= 2)
    {
      if (result == 4)
      {
        result = sub_1B8B9F3CC(a1);
        if (v2)
        {
          return result;
        }

        *a2 = result;
        v7 = 1;
        goto LABEL_32;
      }

LABEL_20:
      v8 = [a1 answerType];
      sub_1B8B9F9D0(v8, v9, v10);
      swift_allocError();
      *v11 = v8;
      *(v11 + 8) = 1;
      return swift_willThrow();
    }

LABEL_21:
    v12 = [a1 answerType];
    sub_1B8B9F9D0(v12, v13, v14);
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = 0;
    return swift_willThrow();
  }

  result = sub_1B8B9F3CC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  return result;
}

ValueMetadata *sub_1B8B9EA10(uint64_t a1, uint64_t a2)
{
  sub_1B8C257E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7778, &qword_1B8C2C6F8);
  v4 = sub_1B8C25178();

  MEMORY[0x1B8CC9EB0](0xD000000000000010, 0x80000001B8C349C0);
  MEMORY[0x1B8CC9EB0](a1, a2);
  return v4;
}

ValueMetadata *sub_1B8B9EAE0(uint64_t a1, uint64_t a2)
{
  sub_1B8C257E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7770, &qword_1B8C2C6F0);
  v4 = sub_1B8C25178();

  MEMORY[0x1B8CC9EB0](0xD000000000000022, 0x80000001B8C34990);
  MEMORY[0x1B8CC9EB0](a1, a2);
  return v4;
}

ValueMetadata *sub_1B8B9EBB0(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1B8C257E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7768, &qword_1B8C2C6E8);
    v3 = sub_1B8C25178();

    v9 = v3;
    v4 = 0xD000000000000020;
    v5 = 0x80000001B8C34940;
  }

  else
  {
    sub_1B8C257E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7768, &qword_1B8C2C6E8);
    v6 = sub_1B8C25178();

    v9 = v6;
    v5 = 0x80000001B8C34970;
    v4 = 0xD00000000000001DLL;
  }

  MEMORY[0x1B8CC9EB0](v4, v5);
  v7 = sub_1B8BB769C(a1);
  MEMORY[0x1B8CC9EB0](v7);

  return v9;
}

ValueMetadata *sub_1B8B9ED08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1B8C257E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7760, &qword_1B8C2C6E0);
    v5 = sub_1B8C25178();

    v10 = v5;
    v6 = 0xD000000000000022;
    v7 = 0x80000001B8C348E0;
  }

  else
  {
    sub_1B8C257E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7760, &qword_1B8C2C6E0);
    v8 = sub_1B8C25178();

    v10 = v8;
    v7 = 0x80000001B8C34910;
    v6 = 0xD000000000000021;
  }

  MEMORY[0x1B8CC9EB0](v6, v7);
  MEMORY[0x1B8CC9EB0](a1, a2);
  MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);
  return v10;
}

void sub_1B8B9EE68(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 value];
  sub_1B8C256B8();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v7 = v29[0];
    v8 = v29[1];
    v9 = [v5 title];
    v10 = sub_1B8C25128();
    v12 = v11;

    *a3 = v10;
    a3[1] = v12;
    a3[2] = v7;
    a3[3] = v8;
  }

  else
  {
    if (qword_1EBAA5900 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8C23C38();
    __swift_project_value_buffer(v13, qword_1EBAA7708);
    v14 = a2;
    v15 = v5;
    v16 = sub_1B8C23C18();
    v17 = sub_1B8C25478();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v29[0] = v30;
      *v18 = 136315394;
      v19 = [v14 tat];
      v20 = sub_1B8C25128();
      v22 = v21;

      v23 = sub_1B8B5DD48(v20, v22, v29);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = [v15 value];
      sub_1B8C256B8();
      swift_unknownObjectRelease();
      v25 = sub_1B8C25178();
      v27 = sub_1B8B5DD48(v25, v26, v29);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_1B8B22000, v16, v17, "Invalid question choice value type. Question: [%s] choice type: [%s]", v18, 0x16u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v28, -1, -1);
      MEMORY[0x1B8CCB0E0](v18, -1, -1);
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
  }
}

unint64_t sub_1B8B9F120()
{
  result = qword_1EBAA7728;
  if (!qword_1EBAA7728)
  {
    sub_1B8B46130(255, &qword_1EBAA7720, 0x1E699C120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7728);
  }

  return result;
}

void sub_1B8B9F1DC(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1B8C255D8();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_1B8B46130(0, &qword_1EBAA7720, 0x1E699C120);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_1B8C255E8();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

char *sub_1B8B9F3CC(void *a1)
{
  v2 = v1;
  v3 = [a1 allChoices];
  if (v3)
  {
    sub_1B8B46130(0, &qword_1EBAA7758, 0x1E699C150);
    v4 = sub_1B8C252C8();

    if (v4 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8C258B8())
    {
      v6 = 0;
      v29 = v4 & 0xFFFFFFFFFFFFFF8;
      v30 = v4 & 0xC000000000000001;
      v3 = MEMORY[0x1E69E7CC0];
      v27 = v4;
      v28 = i;
      while (1)
      {
        if (v30)
        {
          v7 = MEMORY[0x1B8CCA4C0](v6, v4);
        }

        else
        {
          if (v6 >= *(v29 + 16))
          {
            goto LABEL_20;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v36 = v7;
        v10 = v2;
        sub_1B8B9EE68(&v36, a1, &v32);

        v12 = v32;
        v11 = v33;
        v14 = v34;
        v13 = v35;
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1B8B5D55C(0, *(v3 + 2) + 1, 1, v3);
          }

          v16 = *(v3 + 2);
          v15 = *(v3 + 3);
          if (v16 >= v15 >> 1)
          {
            v3 = sub_1B8B5D55C((v15 > 1), v16 + 1, 1, v3);
          }

          *(v3 + 2) = v16 + 1;
          v17 = &v3[32 * v16];
          *(v17 + 4) = v12;
          *(v17 + 5) = v11;
          *(v17 + 6) = v14;
          *(v17 + 7) = v13;
          v2 = v10;
          v4 = v27;
        }

        else
        {
          sub_1B8B9FA78(v32, 0, v34, v35);
        }

        ++v6;
        if (v9 == v28)
        {

          return v3;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }
  }

  v18 = [a1 tat];
  v19 = sub_1B8C25128();
  v21 = v20;

  sub_1B8B9FA24(v22, v23, v24);
  swift_allocError();
  *v25 = v19;
  *(v25 + 8) = v21;
  *(v25 + 16) = v3 != 0;
  swift_willThrow();
  return v3;
}

uint64_t sub_1B8B9F640(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[5];
  v6 = *(a2 + 48);
  result = [a1 isAnswered];
  if ((result & 1) != 0 && (result = [a1 values]) != 0 && (v10 = result, v39 = v6, v11 = sub_1B8C252C8(), v10, v12 = sub_1B8B9E264(v11), v13 = v39, result = , v12))
  {
    v36 = *(v12 + 16);
    if (v36)
    {
      v14 = 0;
      v37 = v12 + 32;
      v33 = v5 + 56;
      v3 = MEMORY[0x1E69E7CC0];
      v35 = v5;
      v38 = v12;
      while (1)
      {
        if (v14 >= *(v12 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = (v37 + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        if (v13 <= 2)
        {
          break;
        }

        v21 = 0;
        v24 = 0;
LABEL_19:

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B8B5D668(0, *(v3 + 16) + 1, 1, v3);
          v3 = result;
        }

        v26 = *(v3 + 16);
        v25 = *(v3 + 24);
        if (v26 >= v25 >> 1)
        {
          result = sub_1B8B5D668((v25 > 1), v26 + 1, 1, v3);
          v3 = result;
        }

        ++v14;
        *(v3 + 16) = v26 + 1;
        v27 = v3 + 40 * v26;
        *(v27 + 32) = v17;
        *(v27 + 40) = v16;
        *(v27 + 48) = v21;
        *(v27 + 56) = v24;
        *(v27 + 64) = v13 < 3;
        v5 = v35;
        v12 = v38;
        if (v14 == v36)
        {

          return v3;
        }
      }

      v34 = v3;
      v18 = *(v5 + 16) + 1;
      v3 = v33;
      while (--v18)
      {
        v19 = *(v3 - 24);
        v20 = *(v3 - 16);
        v21 = *(v3 - 8);
        v22 = *v3;
        if (v21 == v17 && v22 == v16)
        {
          v21 = v17;
LABEL_18:

          v17 = v19;
          v16 = v20;
          v24 = v22;
          v13 = v39;
          v3 = v34;
          goto LABEL_19;
        }

        v3 += 32;
        if (sub_1B8C25A08())
        {
          goto LABEL_18;
        }
      }

      sub_1B8B9F97C(v29, v30, v31);
      swift_allocError();
      *v32 = v17;
      v32[1] = v16;
      swift_willThrow();
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    sub_1B8B9F928(result, v8, v9);
    swift_allocError();
    *v28 = v4;
    v28[1] = v3;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1B8B9F914(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return v2;
}

unint64_t sub_1B8B9F928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7738;
  if (!qword_1EBAA7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7738);
  }

  return result;
}

unint64_t sub_1B8B9F97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7740;
  if (!qword_1EBAA7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7740);
  }

  return result;
}

unint64_t sub_1B8B9F9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7748;
  if (!qword_1EBAA7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7748);
  }

  return result;
}

unint64_t sub_1B8B9FA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7750;
  if (!qword_1EBAA7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7750);
  }

  return result;
}

void sub_1B8B9FA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t StateController.state.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
  sub_1B8C23588();

  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v9[0] = v1[3];
  v4 = v9[0];
  *(v9 + 9) = *(v1 + 57);
  v5 = *(v9 + 9);
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  *(a1 + 41) = v5;
  return sub_1B8B50FF8(v8, &v7);
}

uint64_t StateController.State.description.getter()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x7974706D65;
      }

      goto LABEL_8;
    }

    return 0x64656873696E6966;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 1702125938;
      }

LABEL_8:
      v3 = *v0;
      sub_1B8C257E8();
      MEMORY[0x1B8CC9EB0](0x797428726F727265, 0xEC000000203A6570);
      sub_1B8C25898();
      MEMORY[0x1B8CC9EB0](0x3A656C746974202CLL, 0xE900000000000020);
      MEMORY[0x1B8CC9EB0](v3, v1);
      MEMORY[0x1B8CC9EB0](0x697263736564202CLL, 0xEF203A6E6F697470);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8830, &unk_1B8C2B630);
      v4 = sub_1B8C25178();
      MEMORY[0x1B8CC9EB0](v4);

      MEMORY[0x1B8CC9EB0](41, 0xE100000000000000);
      return 0;
    }

    return 0x676E6964616F6CLL;
  }
}

uint64_t StateController.State.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 3;
      return MEMORY[0x1B8CCA790](v4);
    }

    if (v3 == 3)
    {
      v4 = 4;
      return MEMORY[0x1B8CCA790](v4);
    }

LABEL_8:
    MEMORY[0x1B8CCA790](1);
    return BatchStatusView.Config.hash(into:)(a1);
  }

  if (!v3)
  {
    v4 = 0;
    return MEMORY[0x1B8CCA790](v4);
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  v4 = 2;
  return MEMORY[0x1B8CCA790](v4);
}

uint64_t StateController.State.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1B8C25AB8();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 2;
LABEL_11:
      MEMORY[0x1B8CCA790](v2);
      return sub_1B8C25AF8();
    }
  }

  MEMORY[0x1B8CCA790](1);
  BatchStatusView.Config.hash(into:)(v4);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B9FF74(uint64_t a1)
{
  v3 = *(v1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 3;
      return MEMORY[0x1B8CCA790](v4);
    }

    if (v3 == 3)
    {
      v4 = 4;
      return MEMORY[0x1B8CCA790](v4);
    }

LABEL_8:
    MEMORY[0x1B8CCA790](1);
    return BatchStatusView.Config.hash(into:)(a1);
  }

  if (!v3)
  {
    v4 = 0;
    return MEMORY[0x1B8CCA790](v4);
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  v4 = 2;
  return MEMORY[0x1B8CCA790](v4);
}

uint64_t sub_1B8BA0030(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1B8C25AB8();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 2;
LABEL_11:
      MEMORY[0x1B8CCA790](v3);
      return sub_1B8C25AF8();
    }
  }

  MEMORY[0x1B8CCA790](1);
  BatchStatusView.Config.hash(into:)(v5);
  return sub_1B8C25AF8();
}

void sub_1B8BA00FC(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v30 = *a1;
  v31 = v3;
  v32[0] = a1[2];
  *(v32 + 9) = *(a1 + 41);
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAB3A30);
  sub_1B8B50FF8(&v30, &v27);

  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25468();
  sub_1B8B51054(&v30);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    v27 = v30;
    v28 = v31;
    v29[0] = v32[0];
    *(v29 + 9) = *(v32 + 9);
    sub_1B8B50FF8(&v30, v25);
    v9 = StateController.State.description.getter();
    v11 = v10;
    v23[0] = v27;
    v23[1] = v28;
    v24[0] = v29[0];
    *(v24 + 9) = *(v29 + 9);
    sub_1B8B51054(v23);
    v12 = sub_1B8B5DD48(v9, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    swift_getKeyPath();
    *&v27 = v2;
    sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
    sub_1B8C23588();

    v13 = v2[2];
    v25[0] = v2[1];
    v25[1] = v13;
    v26[0] = v2[3];
    v14 = v26[0];
    *(v26 + 9) = *(v2 + 57);
    v19 = v25[0];
    v20 = v13;
    *v21 = v14;
    *&v21[9] = *(v26 + 9);
    sub_1B8B50FF8(v25, &v27);
    v15 = StateController.State.description.getter();
    v17 = v16;
    v27 = v19;
    v28 = v20;
    v29[0] = *v21;
    *(v29 + 9) = *&v21[9];
    sub_1B8B51054(&v27);
    v18 = sub_1B8B5DD48(v15, v17, &v22);

    *(v7 + 14) = v18;
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }
}

uint64_t sub_1B8BA03E4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v11[0] = v3;
  sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
  sub_1B8C23588();

  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *&v12[9] = *(v3 + 57);
  v7 = *&v12[9];
  v11[1] = v5;
  *v12 = v6;
  v11[0] = v4;
  *(a2 + 41) = v7;
  v8 = v3[2];
  *a2 = v3[1];
  a2[1] = v8;
  a2[2] = v3[3];
  return sub_1B8B50FF8(v11, &v10);
}

double sub_1B8BA04BC(__int128 *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  sub_1B8B50FF8(v5, &v4);
  return StateController.state.setter(a1);
}

uint64_t type metadata accessor for StateController(uint64_t a1)
{
  result = qword_1EBAA7790;
  if (!qword_1EBAA7790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double StateController.state.setter(__int128 *a1)
{
  v2 = a1[1];
  v19 = *a1;
  v20 = v2;
  v4 = *a1;
  v3 = a1[1];
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v5 = v1[2];
  v16 = v1[1];
  v17 = v5;
  v18[0] = v1[3];
  *(v18 + 9) = *(v1 + 57);
  v13 = v4;
  v14 = v3;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  if (_s8Feedback15StateControllerC0B0O2eeoiySbAE_AEtFZ_0(&v16, &v13))
  {
    v6 = v1[2];
    v13 = v1[1];
    v14 = v6;
    v15[0] = v1[3];
    v7 = v15[0];
    *(v15 + 9) = *(v1 + 57);
    v16 = v13;
    v17 = v6;
    v18[0] = v7;
    *(v18 + 9) = *(v15 + 9);
    v8 = v20;
    v1[1] = v19;
    v1[2] = v8;
    *(v1 + 57) = *(v21 + 9);
    v1[3] = v21[0];
    sub_1B8B50FF8(&v13, v11);
    sub_1B8B51054(&v16);
    v11[0] = v13;
    v11[1] = v14;
    v12[0] = v15[0];
    *(v12 + 9) = *(v15 + 9);
    sub_1B8BA00FC(v11);
    sub_1B8B51054(&v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v16 = v1;
    sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
    sub_1B8C23578();
    sub_1B8B51054(&v19);
  }

  return result;
}

uint64_t sub_1B8BA0744(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[2];
  v8 = a1[1];
  v9 = v2;
  v10[0] = a1[3];
  v3 = v10[0];
  *(v10 + 9) = *(a1 + 57);
  v11[0] = v8;
  v11[1] = v2;
  v12[0] = v3;
  *(v12 + 9) = *(v10 + 9);
  v4 = a2[1];
  a1[1] = *a2;
  a1[2] = v4;
  *(a1 + 57) = *(a2 + 41);
  a1[3] = a2[2];
  sub_1B8B50FF8(a2, v6);
  sub_1B8B50FF8(&v8, v6);
  sub_1B8B51054(v11);
  v6[0] = v8;
  v6[1] = v9;
  v7[0] = v10[0];
  *(v7 + 9) = *(v10 + 9);
  sub_1B8BA00FC(v6);
  return sub_1B8B51054(&v8);
}

uint64_t (*StateController.state.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1D8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 448) = v1;
  swift_getKeyPath();
  *(v4 + 456) = OBJC_IVAR____TtC8Feedback15StateController___observationRegistrar;
  *(v4 + 64) = v1;
  *(v4 + 464) = sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
  sub_1B8C23588();

  *(v4 + 64) = v1;
  swift_getKeyPath();
  sub_1B8C235A8();

  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  *(v4 + 41) = *(v1 + 57);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *v4 = v5;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  *(v4 + 105) = *(v1 + 57);
  *(v4 + 80) = v9;
  *(v4 + 96) = v10;
  *(v4 + 64) = v8;
  sub_1B8B50FF8(v4, v4 + 128);
  return sub_1B8BA0970;
}

void sub_1B8BA0970(void *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 256);
  v4 = *(*a1 + 448);
  if (a2)
  {
    v5 = *(v2 + 80);
    *(v2 + 320) = *(v2 + 64);
    *(v2 + 336) = v5;
    v7 = *(v2 + 64);
    v6 = *(v2 + 80);
    *(v2 + 352) = *(v2 + 96);
    *(v2 + 361) = *(v2 + 105);
    v9 = v4[2];
    v8 = v4[3];
    v10 = v4[1];
    *(v3 + 41) = *(v4 + 57);
    v3[1] = v9;
    v3[2] = v8;
    *v3 = v10;
    v11 = *(v4 + 57);
    v13 = v4[2];
    v12 = v4[3];
    *(v2 + 192) = v4[1];
    *(v2 + 208) = v13;
    *(v2 + 224) = v12;
    *(v2 + 233) = v11;
    v14 = *(v2 + 96);
    *(v4 + 57) = *(v2 + 105);
    v4[2] = v6;
    v4[3] = v14;
    v4[1] = v7;
    sub_1B8B50FF8(v2 + 320, v2 + 384);
    sub_1B8B50FF8(v3, v2 + 384);
    sub_1B8B51054(v2 + 192);
    v15 = v3[1];
    v27 = *v3;
    v28 = v15;
    v29[0] = v3[2];
    *(v29 + 9) = *(v3 + 41);
    sub_1B8BA00FC(&v27);
    sub_1B8B51054(v3);
    v16 = *(v2 + 80);
    *(v2 + 128) = *(v2 + 64);
    *(v2 + 144) = v16;
    *(v2 + 160) = *(v2 + 96);
    *(v2 + 169) = *(v2 + 105);
    sub_1B8B51054(v2 + 128);
    *(v2 + 384) = v4;
  }

  else
  {
    v18 = v4[2];
    v17 = v4[3];
    v19 = v4[1];
    *(v2 + 233) = *(v4 + 57);
    *(v2 + 208) = v18;
    *(v2 + 224) = v17;
    *(v2 + 192) = v19;
    v21 = v4[2];
    v20 = v4[3];
    v22 = v4[1];
    *(v2 + 169) = *(v4 + 57);
    *(v2 + 144) = v21;
    *(v2 + 160) = v20;
    *(v2 + 128) = v22;
    v23 = *(v2 + 64);
    v24 = *(v2 + 80);
    v25 = *(v2 + 96);
    *(v4 + 57) = *(v2 + 105);
    v4[2] = v24;
    v4[3] = v25;
    v4[1] = v23;
    sub_1B8B50FF8(v2 + 192, v3);
    sub_1B8B51054(v2 + 128);
    v26 = *(v2 + 208);
    v27 = *(v2 + 192);
    v28 = v26;
    v29[0] = *(v2 + 224);
    *(v29 + 9) = *(v2 + 233);
    sub_1B8BA00FC(&v27);
    sub_1B8B51054(v2 + 192);
    *(v2 + 256) = v4;
  }

  swift_getKeyPath();
  sub_1B8C23598();

  free(v2);
}

uint64_t sub_1B8BA0B80()
{
  swift_getKeyPath();
  sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
  sub_1B8C23588();

  return *(v0 + 73);
}

void sub_1B8BA0C20(char a1)
{
  if (*(v1 + 73) == (a1 & 1))
  {
    *(v1 + 73) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BA0D30(_OWORD *a1)
{
  v3 = sub_1B8C24FD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C25008();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v19[0] = *a1;
  v19[1] = v11;
  v20[0] = a1[2];
  *(v20 + 9) = *(a1 + 41);
  sub_1B8B622C8();
  v12 = sub_1B8C25538();
  v13 = swift_allocObject();
  v14 = a1[1];
  *(v13 + 24) = *a1;
  *(v13 + 16) = v1;
  *(v13 + 40) = v14;
  *(v13 + 56) = a1[2];
  *(v13 + 65) = *(a1 + 41);
  aBlock[4] = sub_1B8BA1744;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_3;
  v15 = _Block_copy(aBlock);

  sub_1B8B50FF8(v19, v17);

  sub_1B8C24FF8();
  v17[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BA1768(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v10, v6, v15);
  _Block_release(v15);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

double sub_1B8BA1030(uint64_t a1, uint64_t a2)
{
  sub_1B8C24F58();
  sub_1B8C23F08();

  return result;
}

void sub_1B8BA109C(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v7[0] = a2[2];
  *(v7 + 9) = *(a2 + 41);
  sub_1B8B50FF8(a2, v5);
  StateController.state.setter(v6);
  if (*(a1 + 73))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v6[0] = a1;
    sub_1B8BA1768(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);
    sub_1B8C23578();
  }

  else
  {
    *(a1 + 73) = 0;
  }
}

uint64_t StateController.deinit()
{
  sub_1B8B74904(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v1 = OBJC_IVAR____TtC8Feedback15StateController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t StateController.__deallocating_deinit()
{
  sub_1B8B74904(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v1 = OBJC_IVAR____TtC8Feedback15StateController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s8Feedback15StateControllerC0B0O2eeoiySbAE_AEtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v17[0] = *a1;
  v17[1] = v2;
  v18[0] = a1[2];
  v3 = v18[0];
  v4 = a2[1];
  v19[0] = *a2;
  v19[1] = v4;
  v6 = *a2;
  v5 = a2[1];
  v20[0] = a2[2];
  *(v20 + 9) = *(a2 + 41);
  *(v18 + 9) = *(a1 + 41);
  v21[0] = v17[0];
  v21[1] = v2;
  v22[0] = v3;
  *(v22 + 9) = *(v18 + 9);
  *&v23[9] = *(a2 + 41);
  v7 = a2[2];
  v22[3] = v5;
  *v23 = v7;
  v22[2] = v6;
  if (*(&v17[0] + 1) <= 1)
  {
    if (*(&v17[0] + 1))
    {
      if (*(&v17[0] + 1) == 1)
      {
        if (*(&v19[0] + 1) == 1)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      goto LABEL_10;
    }

    if (*(&v19[0] + 1))
    {
      goto LABEL_13;
    }

LABEL_15:
    sub_1B8BA17CC(v21);
    v10 = 1;
    return v10 & 1;
  }

  if (*(&v17[0] + 1) == 2)
  {
    if (*(&v19[0] + 1) != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (*(&v17[0] + 1) == 3)
  {
    if (*(&v19[0] + 1) == 3)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (*(&v19[0] + 1) < 4uLL)
  {
LABEL_13:
    sub_1B8B50FF8(v19, v15);
    sub_1B8B50FF8(v17, v15);
    sub_1B8BA17CC(v21);
    v10 = 0;
    return v10 & 1;
  }

  v15[0] = v17[0];
  v8 = a1[2];
  v15[1] = a1[1];
  v16[0] = v8;
  *(v16 + 9) = *(a1 + 41);
  v13[0] = v19[0];
  v9 = a2[2];
  v13[1] = a2[1];
  v14[0] = v9;
  *(v14 + 9) = *(a2 + 41);
  v10 = _s8Feedback15BatchStatusViewV6ConfigV2eeoiySbAE_AEtFZ_0(v15, v13);
  sub_1B8B50FF8(v19, v12);
  sub_1B8B50FF8(v17, v12);
  sub_1B8BA17CC(v21);
  return v10 & 1;
}

unint64_t sub_1B8BA149C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7788;
  if (!qword_1EBAA7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7788);
  }

  return result;
}

uint64_t sub_1B8BA14F8(uint64_t a1)
{
  result = sub_1B8C235C8();
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

uint64_t get_enum_tag_for_layout_string_8Feedback15StateControllerC0B0O(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B8BA15CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 57))
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

uint64_t sub_1B8BA1620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

double sub_1B8BA1688(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B8BA16E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA77A0;
  if (!qword_1EBAA77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA77A0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B8BA1768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8BA17CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64D8, &qword_1B8C2DB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B8BA184C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7830, &unk_1B8C2C9E0);
    v1 = sub_1B8C258E8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v25;
    sub_1B8B46130(0, &qword_1EBAA7838, 0x1E69DB878);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_1B8B5FE40((v26 + 8), v24);
    sub_1B8B5FE40(v24, v26);
    sub_1B8C25128();
    sub_1B8C25AB8();
    sub_1B8C251B8();
    v15 = sub_1B8C25AF8();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v8 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v13;
    sub_1B8B5FE40(v26, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1B8BA1B04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7808, &qword_1B8C2C9B8);
    v2 = sub_1B8C258E8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + 16 * (v11 | (v10 << 6)));
        v14 = *v12;
        v13 = v12[1];

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA77F0, &unk_1B8C2C9A0);
        swift_dynamicCast();
        v15 = sub_1B8B5E2DC(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          swift_unknownObjectRelease();
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1B8BA1D28(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7800, &qword_1B8C2C9B0);
    v2 = sub_1B8C258E8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_1B8B5FE40(&v22, v24);
        sub_1B8B5FE40(v24, v25);
        sub_1B8B5FE40(v25, &v23);
        v16 = sub_1B8B5E2DC(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          sub_1B8B5FE40(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1B8B5FE40(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1B8BA1F7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7800, &qword_1B8C2C9B0);
    v2 = sub_1B8C258E8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_1B8B5FE40(&v22, v24);
        sub_1B8B5FE40(v24, v25);
        sub_1B8B5FE40(v25, &v23);
        v16 = sub_1B8B5E2DC(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          sub_1B8B5FE40(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1B8B5FE40(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1B8BA21D4()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA77B0);
  __swift_project_value_buffer(v0, qword_1EBAA77B0);
  return sub_1B8C23C28();
}

uint64_t sub_1B8BA2244(uint64_t result, uint64_t (*a2)(void, uint64_t))
{
  if (a2)
  {
    return a2(0, result);
  }

  return result;
}

void sub_1B8BA2280(uint64_t a1, id a2, void (*a3)(uint64_t, id))
{
  if (a2)
  {
    v5 = a2;
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8C23C38();
    __swift_project_value_buffer(v6, qword_1EBAA77B0);
    v7 = a2;
    v8 = sub_1B8C23C18();
    v9 = sub_1B8C25478();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_1B8C25A68();
      v14 = sub_1B8B5DD48(v12, v13, &v22);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1B8B22000, v8, v9, "AppleConnect login failed. Error: %s", v10, 0xCu);
      v15 = __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CCB0E0](v11, -1, -1, v15);
      MEMORY[0x1B8CCB0E0](v10, -1, -1);
    }

    if (a3)
    {
      v16 = a2;
      a3(0, a2);
    }
  }

  else
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v18 = sub_1B8C23C38();
    __swift_project_value_buffer(v18, qword_1EBAA77B0);
    v19 = sub_1B8C23C18();
    v20 = sub_1B8C25468();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B8B22000, v19, v20, "AppleConnect login successful, resuming.", v21, 2u);
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
    }

    if (a3)
    {
      a3(a1, 0);
    }
  }
}

void sub_1B8BA2510(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EBAA5908 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EBAA77B0);
  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25498();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1B8B5DD48(0xD000000000000036, 0x80000001B8C34BC0, v17);
    _os_log_impl(&dword_1B8B22000, v9, v10, "%{public}s", v11, 0xCu);
    v13 = __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CCB0E0](v12, -1, -1, v13);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  v17[4] = sub_1B8BA898C;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B8BA6A6C;
  v17[3] = &block_descriptor_101;
  v15 = _Block_copy(v17);
  v16 = a1;
  sub_1B8B247D4(a2, a3);

  FBKLoginWithAppleConnect();
  _Block_release(v15);
}

void sub_1B8BA2714(void *a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v7 = sub_1B8C23C38();
    __swift_project_value_buffer(v7, qword_1EBAA77B0);
    v8 = a1;
    v9 = sub_1B8C23C18();
    v10 = sub_1B8C25478();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1B8C25A68();
      v15 = sub_1B8B5DD48(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1B8B22000, v9, v10, "AppleConnect login failed. Error: %s", v11, 0xCu);
      v16 = __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B8CCB0E0](v12, -1, -1, v16);
      MEMORY[0x1B8CCB0E0](v11, -1, -1);
    }

    v17 = FBKErrorOfType();
    a2();
  }

  else
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v19 = sub_1B8C23C38();
    __swift_project_value_buffer(v19, qword_1EBAA77B0);
    v20 = sub_1B8C23C18();
    v21 = sub_1B8C25468();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B8B22000, v20, v21, "AppleConnect login successful, resuming.", v22, 2u);
      MEMORY[0x1B8CCB0E0](v22, -1, -1);
    }

    [a4 setIsAppleConnectUser_];
    (a2)(0);
  }
}

void sub_1B8BA29A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EBAA5908 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EBAA77B0);
  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25498();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B8B22000, v9, v10, "FBK is running on an internal install, and AppleConnect is available, so we will use AppleConnect to recover.", v11, 2u);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v15[4] = sub_1B8BA7138;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B8BA6A6C;
  v15[3] = &block_descriptor_4;
  v13 = _Block_copy(v15);
  v14 = a1;

  FBKLoginWithAppleConnect();
  _Block_release(v13);
}

uint64_t sub_1B8BA2B50(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = v6;
  *(v7 + 56) = a2;
  *(v7 + 64) = a5;
  *(v7 + 169) = a4;
  *(v7 + 168) = a3;
  *(v7 + 48) = a1;
  sub_1B8C25368();
  *(v7 + 88) = sub_1B8C25358();
  v9 = sub_1B8C25328();
  *(v7 + 96) = v9;
  *(v7 + 104) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B8BA2BF8, v9, v8);
}

uint64_t sub_1B8BA2BF8()
{
  if (sub_1B8BA7E74(*(v0 + 169)))
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v1 = sub_1B8C23C38();
    *(v0 + 112) = __swift_project_value_buffer(v1, qword_1EBAA77B0);
    v2 = sub_1B8C23C18();
    v3 = sub_1B8C25498();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B8B22000, v2, v3, "Will use AppleConnect to authenticate.", v4, 2u);
      MEMORY[0x1B8CCB0E0](v4, -1, -1);
    }

    return MEMORY[0x1EEE6DFA0](sub_1B8BA2E48, 0, 0);
  }

  else
  {
    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8C23C38();
    __swift_project_value_buffer(v5, qword_1EBAA77B0);
    v6 = sub_1B8C23C18();
    v7 = sub_1B8C25498();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B8B22000, v6, v7, "Will use AuthKit to authenticate.", v8, 2u);
      MEMORY[0x1B8CCB0E0](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_1B8BA32D0;
    v10 = *(v0 + 72);
    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
    v13 = *(v0 + 168);
    v14 = *(v0 + 48);

    return sub_1B8BA345C(v14, v11, v13, v12, v10);
  }
}

uint64_t sub_1B8BA2E48()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1B8BA2F3C;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B8BA2F3C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1B8BA30D8;
  }

  else
  {

    v2 = sub_1B8BA3058;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8BA3070()
{

  v1 = *(v0 + 8);

  return v1(1, 0);
}

uint64_t sub_1B8BA30D8()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1B8BA313C, v1, v2);
}

uint64_t sub_1B8BA313C()
{
  v16 = v0;
  v1 = *(v0 + 136);

  v2 = v1;
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1B8C25A68();
    v9 = sub_1B8B5DD48(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B8B22000, v3, v4, "AppleConnect login failed. Error: %s", v5, 0xCu);
    v10 = __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1, v10);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  v11 = *(v0 + 136);
  v12 = FBKErrorOfType();

  v13 = *(v0 + 8);

  return v13(4, v12);
}

uint64_t sub_1B8BA32D0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;

  v5 = *(v3 + 104);
  v6 = *(v3 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1B8BA33F8, v6, v5);
}

uint64_t sub_1B8BA33F8()
{

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_1B8BA345C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 248) = a5;
  *(v6 + 256) = v5;
  *(v6 + 232) = a2;
  *(v6 + 240) = a4;
  *(v6 + 312) = a3;
  *(v6 + 224) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8BA3488, 0, 0);
}

uint64_t sub_1B8BA3488()
{
  if (*(v0 + 240))
  {
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1B8C2C960;
    *(v0 + 280) = "login(loginManager:)";
    *(v0 + 288) = v1;
    *(v0 + 272) = 0xD000000000000052;

    return MEMORY[0x1EEE6DFA0](sub_1B8BA3810, 0, 0);
  }

  else
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 232);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_1B8BA3634;
    v4 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7828, &qword_1B8C2C9D8);
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1B8BA4FA8;
    *(v0 + 168) = &block_descriptor_152;
    *(v0 + 176) = v4;
    [v3 interactiveStartupUsingSystemAccount:v2 completion:v0 + 144];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1B8BA3634()
{
  v1 = *v0;
  *(v1 + 264) = swift_allocObject();

  return MEMORY[0x1EEE6DFA0](sub_1B8BA3728, 0, 0);
}

uint64_t sub_1B8BA3728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 264);
  v5 = *(v3 + 208);
  *(v4 + 16) = v5;
  v6 = sub_1B8BA80F8(v5, a2, a3);
  v7 = *(v4 + 24);
  if (!v6 && (v8 = *(v3 + 264), (v7 & 4) != 0))
  {
    *(v3 + 280) = "Sign in with your Apple Account";
    *(v3 + 288) = v8;
    *(v3 + 272) = 0xD00000000000003FLL;

    return MEMORY[0x1EEE6DFA0](sub_1B8BA3810, 0, 0);
  }

  else
  {

    v9 = *(v3 + 8);

    return v9(v7, v6);
  }
}

uint64_t sub_1B8BA3810()
{
  v1 = v0[36];
  v2 = v0[28];
  v3 = v0[29];
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1B8BA3BBC;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;

  v6 = [v3 authenticationContextForUsername_];
  [v6 setPresentingViewController_];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 mainBundle];
  sub_1B8C23348();

  v10 = sub_1B8C250F8();

  [v8 setTitle_];

  [v8 setShouldAllowAppleIDCreation_];
  [v8 setIsUsernameEditable_];
  v11 = [v7 mainBundle];
  sub_1B8C23348();

  v12 = sub_1B8C250F8();

  [v8 setReason_];

  v13 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
  if (v13)
  {
    v14 = v13;
    v15 = v0[31];
    v16 = v0[32];
    v17 = v0[29];
    v18 = v0[30];
    v19 = swift_allocObject();
    *(v19 + 16) = v18 != 0;
    *(v19 + 24) = sub_1B8BA8D18;
    *(v19 + 32) = v5;
    *(v19 + 40) = v18;
    *(v19 + 48) = v15;
    *(v19 + 56) = v16;
    *(v19 + 64) = v17;
    v0[22] = sub_1B8BA9010;
    v0[23] = v19;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1B8BA4978;
    v0[21] = &block_descriptor_165;
    v20 = _Block_copy(v0 + 18);
    v21 = v14;

    sub_1B8B247D4(v18, v15);
    v22 = v17;

    [v21 authenticateWithContext:v8 completion:v20];

    _Block_release(v20);
  }

  else
  {
  }

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B8BA3BBC()
{
  *(*v0 + 296) = *(*v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1B8BA3CA4, 0, 0);
}

uint64_t sub_1B8BA3CA4()
{

  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[1];

  return v3(v1, v2);
}

void sub_1B8BA3D08(uint64_t a1, void *a2, char a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v80 = a4;
  v81 = a5;
  v15 = sub_1B8C24FD8();
  v79 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B8C25008();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v77 = v20;
    v78 = v19;
    v23 = a2;
    v24 = sub_1B8C23358();
    v25 = [v24 code];

    if (v25 == -7003)
    {
      if (a3)
      {
        if (qword_1EBAA5908 != -1)
        {
          swift_once();
        }

        v26 = sub_1B8C23C38();
        __swift_project_value_buffer(v26, qword_1EBAA77B0);
        v81 = sub_1B8C23C18();
        v27 = sub_1B8C25458();
        if (os_log_type_enabled(v81, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1B8B22000, v81, v27, "User cancelled re-authentication", v28, 2u);
          MEMORY[0x1B8CCB0E0](v28, -1, -1);
        }

        v29 = v81;

        return;
      }

      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v56 = sub_1B8C25538();
      v64 = swift_allocObject();
      v59 = v80;
      v58 = v81;
      *(v64 + 16) = v80;
      *(v64 + 24) = v58;
      v87 = sub_1B8BA888C;
      v88 = v64;
      aBlock = MEMORY[0x1E69E9820];
      v84 = 1107296256;
      v60 = &block_descriptor_61;
      goto LABEL_26;
    }

    if (qword_1EBAA5908 != -1)
    {
      swift_once();
    }

    v36 = sub_1B8C23C38();
    __swift_project_value_buffer(v36, qword_1EBAA77B0);
    v37 = a2;
    v38 = sub_1B8C23C18();
    v39 = sub_1B8C25498();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v82 = a2;
      aBlock = v41;
      *v40 = 136446210;
      v42 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
      v43 = sub_1B8C25178();
      v45 = sub_1B8B5DD48(v43, v44, &aBlock);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1B8B22000, v38, v39, "AK Authentication error: %{public}s", v40, 0xCu);
      v46 = __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1B8CCB0E0](v41, -1, -1, v46);
      MEMORY[0x1B8CCB0E0](v40, -1, -1);
    }

    v47 = sub_1B8C23358();
    v48 = [v47 domain];

    v49 = sub_1B8C25128();
    v51 = v50;

    if (v49 == sub_1B8C25128() && v51 == v52)
    {
    }

    else
    {
      v53 = sub_1B8C25A08();

      if ((v53 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v54 = sub_1B8C23358();
    v55 = [v54 code];

    if (v55 == -7005)
    {
      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v56 = sub_1B8C25538();
      v57 = swift_allocObject();
      v59 = v80;
      v58 = v81;
      *(v57 + 16) = v80;
      *(v57 + 24) = v58;
      v87 = sub_1B8BA886C;
      v88 = v57;
      aBlock = MEMORY[0x1E69E9820];
      v84 = 1107296256;
      v60 = &block_descriptor_55;
LABEL_26:
      v85 = sub_1B8B8B9F4;
      v86 = v60;
      v62 = _Block_copy(&aBlock);
      goto LABEL_27;
    }

LABEL_24:
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v56 = sub_1B8C25538();
    v61 = swift_allocObject();
    v59 = v80;
    v58 = v81;
    v61[2] = v80;
    v61[3] = v58;
    v61[4] = a2;
    v87 = sub_1B8BA883C;
    v88 = v61;
    aBlock = MEMORY[0x1E69E9820];
    v84 = 1107296256;
    v85 = sub_1B8B8B9F4;
    v86 = &block_descriptor_49;
    v62 = _Block_copy(&aBlock);
    v63 = a2;
LABEL_27:
    sub_1B8B247D4(v59, v58);

    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v22, v17, v62);
    _Block_release(v62);

    goto LABEL_28;
  }

  if (!a1)
  {
    v65 = v19;
    v66 = v20;
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v67 = sub_1B8C25538();
    v68 = swift_allocObject();
    v70 = v80;
    v69 = v81;
    *(v68 + 16) = v80;
    *(v68 + 24) = v69;
    v87 = sub_1B8BA8808;
    v88 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v84 = 1107296256;
    v85 = sub_1B8B8B9F4;
    v86 = &block_descriptor_37;
    v71 = _Block_copy(&aBlock);
    sub_1B8B247D4(v70, v69);

    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v22, v17, v71);
    _Block_release(v71);

    (*(v79 + 8))(v17, v15);
    (*(v66 + 8))(v22, v65);
    return;
  }

  if (a6)
  {
    v77 = v20;
    v78 = v19;
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);

    sub_1B8B247D4(a6, a7);
    v76 = sub_1B8C25538();
    v30 = swift_allocObject();
    v30[2] = a6;
    v30[3] = a7;
    v30[4] = a8;
    v30[5] = a9;
    v31 = v80;
    v32 = v81;
    v30[6] = a1;
    v30[7] = v31;
    v30[8] = v32;
    v87 = sub_1B8BA8828;
    v88 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v84 = 1107296256;
    v85 = sub_1B8B8B9F4;
    v86 = &block_descriptor_43;
    v33 = _Block_copy(&aBlock);
    sub_1B8B247D4(v31, v32);
    sub_1B8B247D4(a6, a7);
    v34 = a9;

    sub_1B8C24FF8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B8BA8930(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    v35 = v76;
    MEMORY[0x1B8CCA210](0, v22, v17, v33);
    _Block_release(v33);

    sub_1B8B30A44(a6, a7);
LABEL_28:
    (*(v79 + 8))(v17, v15);
    (*(v77 + 8))(v22, v78);
    return;
  }

  sub_1B8BA1B04(v72);
  v74 = v73;

  sub_1B8BA8160(a9, v74, v80, v81);
}

double sub_1B8BA483C(void (*a1)(uint64_t (*)(), void *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v14 = a4;

  sub_1B8B247D4(a6, a7);
  a1(sub_1B8BA88AC, v13);

  return result;
}

void sub_1B8BA4900(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a3;
    sub_1B8BA8754(a1, a2, a3);
    v5 = swift_allocError();
    *v6 = v3;
    a1();
  }
}

uint64_t sub_1B8BA4978(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA77F0, &unk_1B8C2C9A0);
    v4 = sub_1B8C25098();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1B8BA4A28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B8C25128();
  if (*(a1 + 16))
  {
    v10 = sub_1B8B5E2DC(v8, v9);
    v12 = v11;

    if (v12)
    {
      aBlock[6] = *(*(a1 + 56) + 8 * v10);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v13 = sub_1B8C250F8();

      sub_1B8BA1D28(a1);
      v14 = sub_1B8C25088();

      v15 = swift_allocObject();
      *(v15 + 16) = a3;
      *(v15 + 24) = a4;
      aBlock[4] = sub_1B8BA8914;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B8BA4C04;
      aBlock[3] = &block_descriptor_76;
      v16 = _Block_copy(aBlock);
      sub_1B8B247D4(a3, a4);

      [a2 loginWithUsername:v13 authenticationResults:v14 completion:v16];
      _Block_release(v16);

      return;
    }

    __break(1u);
  }

  __break(1u);
}