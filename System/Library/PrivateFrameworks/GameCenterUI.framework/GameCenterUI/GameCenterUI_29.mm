void sub_24E240394()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_isMessageSent) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_isFriendCodeCancelled) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E240420(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for FriendRequestComposeViewController();
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, a1 & 1);
  v3 = [objc_opt_self() local];
  [v3 setIsShowingFriendRequestUI_];

  v4 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
  v5 = OUTLINED_FUNCTION_1_123();
  v6 = sub_24E347CB8();
  v7 = OUTLINED_FUNCTION_2_100();
  v8 = OUTLINED_FUNCTION_5_38();
  [v8 v9];
}

id sub_24E24055C(void *a1, uint64_t a2)
{
  v4 = &selRef_local;
  switch(a2)
  {
    case 2:
      v23 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
      v24 = sub_24E347CF8();
      v26 = v25;
      sub_24E347CF8();
      OUTLINED_FUNCTION_14_18();
      sub_24E08FD58(v24, v26, v27, v28, v23);

      v29 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
      v30 = sub_24E347CB8();
      v31 = sub_24E347CB8();
      v32 = OUTLINED_FUNCTION_11_42();
      v33 = OUTLINED_FUNCTION_1_123();
      v34 = OUTLINED_FUNCTION_2_100();
      [v29 recordClickWithAction:v30 targetId:v31 targetType:v32 pageId:v33 pageType:v34];

      goto LABEL_11;
    case 1:
      v2[OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_isMessageSent] = 1;
      v5 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
      v6 = sub_24E347CF8();
      v8 = v7;
      sub_24E347CF8();
      OUTLINED_FUNCTION_14_18();
      sub_24E08FD58(v6, v8, v9, v10, v5);

      v11 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
      v12 = sub_24E347CB8();
      v13 = sub_24E347CB8();
      v14 = OUTLINED_FUNCTION_11_42();
      v15 = OUTLINED_FUNCTION_1_123();
      v16 = OUTLINED_FUNCTION_2_100();
      [v11 recordClickWithAction:v12 targetId:v13 targetType:v14 pageId:v15 pageType:v16];

      v4 = &selRef_local;
      v17 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
      v18 = [objc_opt_self() currentGame];
      v19 = [v18 bundleIdentifier];

      v20 = sub_24E347CF8();
      v22 = v21;

      sub_24E2418B4(1, v20, v22, v17);
LABEL_11:
      v54 = [objc_opt_self() *v4];
      [v54 setIsShowingFriendRequestUI_];

      return [a1 dismissViewControllerAnimated:1 completion:0];
    case 0:
      v35 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
      v36 = sub_24E347CF8();
      v38 = v37;
      sub_24E347CF8();
      OUTLINED_FUNCTION_14_18();
      sub_24E08FD58(v36, v38, v39, v40, v35);

      if ((v2[OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_isMessageSent] & 1) == 0)
      {
        v41 = [objc_allocWithZone(MEMORY[0x277D0BFA8]) init];
        v42 = sub_24E347CB8();
        v43 = sub_24E347CB8();
        v44 = OUTLINED_FUNCTION_11_42();
        v45 = OUTLINED_FUNCTION_1_123();
        v46 = OUTLINED_FUNCTION_2_100();
        [v41 recordClickWithAction:v42 targetId:v43 targetType:v44 pageId:v45 pageType:v46];

        v47 = objc_opt_self();
        v48 = [v47 local];
        LODWORD(v42) = [v48 isAuthenticated];

        if (v42)
        {
          if ((v2[OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_isFriendCodeCancelled] & 1) == 0)
          {
            if (*&v2[OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_friendCode + 8])
            {
              v49 = [v47 local];
              v50 = sub_24E347CB8();
              v51 = swift_allocObject();
              *(v51 + 16) = v2;
              v56[4] = sub_24E241930;
              v56[5] = v51;
              v56[0] = MEMORY[0x277D85DD0];
              v56[1] = 1107296256;
              v56[2] = sub_24E052CF0;
              v56[3] = &block_descriptor_81;
              v52 = _Block_copy(v56);
              v53 = v2;

              [v49 cancelFriendRequestWithIdentifier:v50 handler:v52];
              _Block_release(v52);
            }
          }
        }
      }

      goto LABEL_11;
  }

  type metadata accessor for MessageComposeResult(0);
  result = sub_24E348C58();
  __break(1u);
  return result;
}

void sub_24E240AF8(void *a1, uint64_t a2)
{
  v4 = sub_24E343F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_24E343C98();
    v9 = a1;
    v10 = sub_24E343F78();
    v11 = sub_24E348258();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24DE53000, v10, v11, "cancelFriendRequest error: %@", v12, 0xCu);
      sub_24DFA9298(v13, &unk_27F1DF730, &qword_24E36DA40);
      MEMORY[0x253040EE0](v13, -1, -1);
      MEMORY[0x253040EE0](v12, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    v17 = sub_24E347CF8();
    v19 = v18;
    v20 = sub_24E347CF8();
    sub_24E08FD58(v17, v19, v20, v21, v16);

    *(a2 + OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_isFriendCodeCancelled) = 1;
  }
}

id sub_24E240EA0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24E240F2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24DFB4D64;

  return v6();
}

uint64_t sub_24E241014(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_24DFB3184;

  return v7();
}

uint64_t sub_24E2410FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_24E0F78FC(a3, v22 - v10);
  v12 = sub_24E348098();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_24DFA9298(v11, &unk_27F1DFC70, &qword_24E36BAF0);
  }

  else
  {
    sub_24E348088();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_24E347FF8();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_24E347D58() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_24DFA9298(a3, &unk_27F1DFC70, &qword_24E36BAF0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24DFA9298(a3, &unk_27F1DFC70, &qword_24E36BAF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_24E2413C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DFF1340;

  return v6(a1);
}

unint64_t sub_24E2414D8()
{
  result = qword_27F1E8848;
  if (!qword_27F1E8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8848);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FriendRequestFacilitator.FailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_24E241618(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_24E347CB8();

  [a4 setMessage:a1 withExtensionBundleIdentifier:v6];
}

void sub_24E241694(uint64_t a1, void *a2)
{
  v3 = sub_24E347EE8();

  [a2 setRecipients_];
}

void sub_24E241700(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();

  [a3 setChatGUID_];
}

void sub_24E241764(uint64_t a1, void *a2)
{
  sub_24DF88A8C(0, &qword_27F1E2F40, 0x277CBDA58);
  v3 = sub_24E347EE8();
  [a2 setRecipients_];
}

uint64_t sub_24E2417E0(void *a1)
{
  v1 = [a1 suggestedHandle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

uint64_t sub_24E241844(void *a1)
{
  v2 = [a1 handle];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347CF8();

  return v3;
}

void sub_24E2418B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_24E347CB8();

  [a4 recordFriendInviteActivityEventAtStage:a1 hostApp:v6];
}

double block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24E241968()
{
  OUTLINED_FUNCTION_29_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_8_67(v1);

  return v3(v2);
}

uint64_t sub_24E241A08()
{
  OUTLINED_FUNCTION_29_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_8_67(v1);

  return v3(v2);
}

uint64_t objectdestroy_30Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_21_14();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24E241AE4()
{
  OUTLINED_FUNCTION_29_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v1[1] = sub_24DFB4D64;
  v3 = OUTLINED_FUNCTION_3_20();

  return v4(v3);
}

uint64_t sub_24E241B9C()
{
  OUTLINED_FUNCTION_8_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v1[1] = sub_24DFB4D64;
  v3 = OUTLINED_FUNCTION_3_20();

  return v4(v3);
}

uint64_t sub_24E241C40()
{
  OUTLINED_FUNCTION_8_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v1[1] = sub_24DFB3184;
  v3 = OUTLINED_FUNCTION_3_20();

  return v4(v3);
}

uint64_t sub_24E241CE4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E88E0, &qword_24E387128);
  OUTLINED_FUNCTION_6_15(v3);
  OUTLINED_FUNCTION_15_33();
  v5 = *(v1 + 16);
  v7 = *(v1 + v6);
  v9 = *(v1 + v8);
  v10 = *(v1 + v8 + 8);
  v11 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E23E3AC(a1, v5, v1 + v4, v7, v9, v10, v11);
}

uint64_t sub_24E241D94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E88E0, &qword_24E387128);
  OUTLINED_FUNCTION_6_15(v3);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_24DFB3184;

  return sub_24E23E628(a1, v9, v10, v11, v1 + v5, v12, v13, v14);
}

uint64_t sub_24E241F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E88E0, &qword_24E387128);
  OUTLINED_FUNCTION_6_15(v11);
  OUTLINED_FUNCTION_15_33();
  return sub_24E23FB70(a1, a2, a3, a4, a5, v5 + v14, *(v5 + v12), *(v5 + v13), *(v5 + v13 + 8));
}

uint64_t sub_24E241FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24E242040()
{
  OUTLINED_FUNCTION_29_5();
  v1 = v0[3];
  v2 = v0[12];
  v3 = v0[13];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_4(v4);
  *v5 = v6;
  v5[1] = sub_24DFB4D64;
  v7 = OUTLINED_FUNCTION_3_20();

  return sub_24E23F528(v7, v8, v1, v9, v2, v3);
}

uint64_t OUTLINED_FUNCTION_1_123()
{

  return sub_24E347CB8();
}

uint64_t OUTLINED_FUNCTION_2_100()
{

  return sub_24E347CB8();
}

uint64_t OUTLINED_FUNCTION_11_42()
{

  return sub_24E347CB8();
}

__n128 OUTLINED_FUNCTION_19_27()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  result = *(v0 + 112);
  *(v0 + 48) = result;
  return result;
}

unint64_t sub_24E2421FC()
{
  result = qword_27F1E8900;
  if (!qword_27F1E8900)
  {
    type metadata accessor for UpdateAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8900);
  }

  return result;
}

uint64_t sub_24E242254(uint64_t a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  type metadata accessor for UpdateAction(0);
  sub_24DFD8A60();

  v7 = *a1;
  if (*a1)
  {
    v8 = *(a1 + 8);

    v7(0);
    sub_24E059AAC(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  return sub_24E347AA8();
}

unint64_t sub_24E2423BC()
{
  result = qword_27F1E2698;
  if (!qword_27F1E2698)
  {
    type metadata accessor for GameAchievementsAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2698);
  }

  return result;
}

uint64_t sub_24E242414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_24E347218();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = v5;
    LOBYTE(v35[0]) = 0;
    v11 = *a1;
    v10 = *(a1 + 8);
    if (v10[2] == 1)
    {
      v12 = v10[4];
      v13 = v10[5];
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    type metadata accessor for GameLayerAchievementsPresenter();
    swift_allocObject();
    v15 = v11;

    v16 = GameLayerAchievementsPresenter.init(gameRecord:entryPoint:achievementIdsToHighlight:achievementIdToPresent:)(v11, v35, v10, v12, v13);
    v17 = *(v3 + 8);
    v18 = [v15 player];
    sub_24DF95978();
    v19 = sub_24E348628();

    if ((v19 & 1) == 0)
    {
      swift_beginAccess();
      *(v16 + 50) = 0;
    }

    LOBYTE(v35[0]) = 3;
    v20 = objc_allocWithZone(type metadata accessor for GameLayerAchievementsViewController());

    GameLayerAchievementsViewController.init(presenter:theme:objectGraph:)();
    v22 = v21;
    v23 = *(v3 + 16);
    v24 = v31;
    if (v23 == 1)
    {
      v25 = OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_scrollDirection;
      swift_beginAccess();
      v22[v25] = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0, qword_24E375630);
    sub_24E347328();
    if (v34)
    {
      sub_24DE56CE8(&v33, v35);
      v26 = v36;
      v27 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      (*(v27 + 8))(v22, 1, v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else
    {
      sub_24E0B9DD0(&v33);
      v28 = [v24 navigationController];
      if (v28)
      {
        v29 = v28;
        [v28 pushViewController:v22 animated:1];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
    (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v32);
    v14 = sub_24E347AA8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
    (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
    return sub_24E347AA8();
  }

  return v14;
}

id sub_24E2427A4(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AchievementsLinkCollectionViewCell(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t sub_24E24289C(void *a1)
{
  v1 = a1;
  v2 = sub_24E2428D0();

  return v2 & 1;
}

id sub_24E2428D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementsLinkCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

void sub_24E242908(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_24E24295C(v3);
}

void sub_24E24295C(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AchievementsLinkCollectionViewCell(0);
  objc_msgSendSuper2(&v3, sel_setHighlighted_, a1 & 1);
  sub_24E1DA8D8();
}

id sub_24E2429A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFFA8, &qword_24E387320);
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v59 - v8;
  v10 = type metadata accessor for AchievementsLinkData(0);
  MEMORY[0x28223BE20](v10);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v59 - v14;
  swift_getKeyPath();
  v59[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_dynamicCast();
  [objc_msgSend(a3 container)];
  v17 = v16;
  v19 = v18;
  swift_unknownObjectRelease();
  v62 = v15;
  sub_24E243600(v15, v12);
  sub_24E2435B8(&qword_27F1DFFA0, type metadata accessor for AchievementsLinkData, &unk_24E376678);
  sub_24E347158();
  type metadata accessor for AchievementsLinkView();
  v20 = sub_24DFD9D9C(v17, v19);
  v22 = v21;
  (*(v6 + 8))(v9, v4, v20);
  v23 = objc_opt_self();
  v24 = &selRef_setRequiresValidation_;
  v25 = [v23 fractionalWidthDimension_];
  v26 = &selRef_setRequiresValidation_;
  v27 = [v23 absoluteDimension_];
  v28 = objc_opt_self();
  v61 = [v28 sizeWithWidthDimension:v25 heightDimension:v27];

  v29 = [v23 fractionalWidthDimension_];
  if (qword_27F1DDA08 != -1)
  {
    swift_once();
  }

  v30 = [v23 absoluteDimension_];
  v60 = v28;
  v31 = [v28 sizeWithWidthDimension:v29 heightDimension:v30];

  swift_getKeyPath();
  sub_24E347128();

  v32 = *(v63 + 16);

  if (v32 < 2)
  {
    v46 = objc_opt_self();
    v42 = v61;
    v45 = [v46 itemWithLayoutSize_];
  }

  else
  {
    v59[2] = sub_24DF88A8C(0, &qword_27F1EA590, 0x277CFB860);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_24E369990;
    v59[1] = sub_24DF88A8C(0, &qword_27F1E5838, 0x277CFB880);
    type metadata accessor for SeparatorView();
    v34 = sub_24DFEA80C();
    v36 = v35;
    v37 = objc_opt_self();
    v38 = [v37 layoutAnchorWithEdges_];
    v39 = [v37 layoutAnchorWithEdges_];
    v40 = v31;
    v41 = v36;
    v24 = &selRef_setRequiresValidation_;
    *(v33 + 32) = sub_24E1DB9C0(v40, v34, v41, v38, v39);
    v42 = v61;
    v43 = v61;
    v44 = v33;
    v26 = &selRef_setRequiresValidation_;
    v45 = sub_24E14E72C(v43, v44);
  }

  v47 = v45;
  swift_getKeyPath();
  sub_24E347128();

  v48 = *(v63 + 16);

  v49 = [v23 v24[23]];
  v50 = [v23 v26[165]];
  v51 = [v60 sizeWithWidthDimension:v49 heightDimension:v50];

  v52 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_24E369990;
  *(v53 + 32) = v47;
  sub_24DF88A8C(0, &qword_27F1EA590, 0x277CFB860);
  v54 = v47;
  v55 = sub_24E347EE8();

  v56 = [v52 verticalGroupWithLayoutSize:v51 subitems:v55];

  v57 = [objc_opt_self() sectionWithGroup_];
  sub_24E243664(v62);
  return v57;
}

double sub_24E243040(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  sub_24E120A58(a2, &v22 - v15);
  sub_24E120A58(a3, &v16[*(v14 + 56)]);
  if (qword_27F1DDC48 != -1)
  {
    swift_once();
  }

  v17 = sub_24E3444F8();
  __swift_project_value_buffer(v17, qword_27F20B4E8);
  v18 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v20 = v19;

  (*(v9 + 8))(v12, v7);
  sub_24E120AC8(v16);
  return v20;
}

double sub_24E24320C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  sub_24E120A58(a1, v20 - v10);
  sub_24E120A58(a2, &v11[*(v9 + 56)]);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for PlayerCardTheme(0);
  v13 = *(__swift_project_value_buffer(v12, qword_27F20BF00) + 64);
  *a4 = v13;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 33) = 0u;
  *(a4 + 56) = -1;
  v14 = v13;
  v15 = [a3 traitCollection];
  sub_24E33670C(v15, v20);

  v16 = v20[1];
  *(a4 + 64) = v20[0];
  *(a4 + 80) = v16;
  *(a4 + 96) = v21;
  v17 = [a3 traitCollection];
  sub_24E33670C(v17, v22);

  sub_24E120AC8(v11);
  result = *v22;
  v19 = v22[1];
  *(a4 + 104) = v22[0];
  *(a4 + 120) = v19;
  *(a4 + 136) = v23;
  return result;
}

id sub_24E2433A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementsLinkCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AchievementsLinkCollectionViewCell(uint64_t a1)
{
  result = qword_27F1E8908;
  if (!qword_27F1E8908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E243478(uint64_t a1)
{
  result = sub_24E2435B8(&qword_27F1E8918, type metadata accessor for AchievementsLinkCollectionViewCell, &unk_24E3872B4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E243560(uint64_t a1)
{
  result = sub_24E2435B8(&qword_27F1E6450, type metadata accessor for AchievementsLinkCollectionViewCell, &unk_24E3872E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E2435B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E243600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsLinkData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E243664(uint64_t a1)
{
  v2 = type metadata accessor for AchievementsLinkData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24E2436C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_24E346EE8();
  OUTLINED_FUNCTION_0_14();
  v41 = v7;
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v39 = v9 - v8;
  v40 = sub_24E346F08();
  OUTLINED_FUNCTION_0_14();
  v38 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v36 = v13 - v12;
  type metadata accessor for AppStorePlatterData.ContentData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = (v16 - v15);
  v18 = *(v2 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_titleView);
  v19 = *(v18 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel);
  v20 = *(a1 + 48);
  v21 = v19;
  if (v20)
  {
    v20 = sub_24E347CB8();
  }

  [v19 setText_];

  sub_24DF8BD90(a1 + 128, __dst, &qword_27F1DEE90, &unk_24E369E90);
  if (*(&__dst[1] + 1))
  {
    sub_24DE56CE8(__dst, v44);
    sub_24DF8BD90(a1 + 56, __dst, &qword_27F1DEE88, &unk_24E36BF90);
    sub_24E27ECCC(__dst);
    sub_24DE56CE8(v44, __dst);
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    sub_24DE56CE8(__dst, v22 + 24);
    v23 = (v18 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction);
    v24 = *(v18 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction);
    v25 = v23[1];
    *v23 = sub_24E2454B0;
    v23[1] = v22;

    sub_24DE73FA0(v24, v25);
  }

  else
  {
    sub_24DF8BFF4(__dst, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24E244188(0);
  sub_24E244128(0);
  v26 = *(type metadata accessor for AppStorePlatterData(0) + 36);
  sub_24E00A4D4(a1 + v26, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    sub_24E244188(1);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_24E24544C(v17);
  }

  else
  {
    memcpy(__dst, v17, 0x58uLL);
    memcpy(v44, v17, sizeof(v44));
    v28 = objc_allocWithZone(type metadata accessor for ErrorView());
    sub_24E0A63D0(__dst, &v43);
    v29 = sub_24E1DE940(v44);
    sub_24E244128(v29);
    sub_24DFC13E4(__dst);
  }

  (*((*MEMORY[0x277D85000] & *v3) + 0x138))(a1 + v26, a2);
  [v3 setNeedsLayout];
  v30 = *(v3 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_contentContainer);
  if (*(v3 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_isLoading))
  {
    return [*(v3 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_contentContainer) setHidden_];
  }

  [*(v3 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_contentContainer) setAlpha_];
  [v30 setHidden_];
  sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
  v32 = sub_24E348368();
  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  *&__dst[2] = sub_24E2454A8;
  *(&__dst[2] + 1) = v33;
  *&__dst[0] = MEMORY[0x277D85DD0];
  *(&__dst[0] + 1) = 1107296256;
  *&__dst[1] = sub_24E00B24C;
  *(&__dst[1] + 1) = &block_descriptor_23_0;
  v34 = _Block_copy(__dst);
  v35 = v3;

  sub_24E346EF8();
  *&__dst[0] = MEMORY[0x277D84F90];
  sub_24DFC151C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
  sub_24DFCD5F4();
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v37, v39, v34);
  _Block_release(v34);

  (*(v41 + 8))(v39, v42);
  return (*(v38 + 8))(v37, v40);
}

char *sub_24E243C34(char a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_titleView;
  type metadata accessor for TitleHeaderView(0);
  *&v1[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_materialBackgroundView;
  type metadata accessor for BackgroundView();
  *&v1[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_contentContainer;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v11 = &v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_titleActionBlock];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_loadingIndicator;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  *&v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_errorView] = 0;
  v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_isLoading] = 0;
  v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_orientation] = a1 & 1;
  v13 = type metadata accessor for AppStoreContentPlatterView();
  v52.receiver = v1;
  v52.super_class = v13;
  v14 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v14 setInsetsLayoutMarginsFromSafeArea_];
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v14 setBackgroundColor_];

  [v14 setLayoutMargins_];
  [v14 setClipsToBounds_];
  v17 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_titleView;
  v18 = *&v14[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_titleView];
  sub_24E099EA0();
  v19 = v3[5];
  v20 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __swift_storeEnumTagSinglePayload(v7 + v19, 1, 1, v20);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for PlayerCardTheme(0);
  v22 = __swift_project_value_buffer(v21, qword_27F20BF00);
  v23 = *(v22 + *(v21 + 40));
  v24 = v3[8];
  *(v7 + v3[6]) = 0;
  *(v7 + v3[7]) = 0;
  *(v7 + v24) = 0;
  *(v7 + v3[9]) = 0;
  *(v7 + v3[11]) = 0;
  *(v7 + v3[13]) = v23;
  *(v7 + v3[10]) = 1;
  *(v7 + v3[12]) = 1;
  v25 = v23;
  sub_24E27E608(v7);

  v26 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_materialBackgroundView;
  v27 = *&v14[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_materialBackgroundView];
  sub_24DFEB9A0(0x6579614C656D6167, 0xEE0070756F724772);

  [*&v14[v26] _setContinuousCornerRadius_];
  v28 = *&v14[v26];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 _gkGameLayerModuleVisualEffect];
  sub_24DF88A8C(0, &qword_27F1E9F20, 0x277D75D58);
  v32 = sub_24E347F08();

  v47 = v32;
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  v51 = 2;
  sub_24DFEB8F4(&v47);

  v33 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_loadingIndicator;
  [*&v14[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_loadingIndicator] setHidesWhenStopped_];
  v34 = *&v14[v33];
  v35 = [v15 secondaryLabelColor];
  [v34 setTintColor_];

  v36 = [*&v14[v33] layer];
  if (*(v22 + *(v21 + 56) + 8))
  {
    v37 = sub_24E347CB8();
  }

  else
  {
    v37 = 0;
  }

  [v36 setCompositingFilter_];

  swift_unknownObjectRelease();
  v38 = *&v14[v26];
  v46.receiver = v14;
  v46.super_class = v13;
  objc_msgSendSuper2(&v46, sel_addSubview_, v38);
  v39 = *&v14[v17];
  v45.receiver = v14;
  v45.super_class = v13;
  objc_msgSendSuper2(&v45, sel_addSubview_, v39);
  v40 = *&v14[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_contentContainer];
  v44.receiver = v14;
  v44.super_class = v13;
  objc_msgSendSuper2(&v44, sel_addSubview_, v40);
  v41 = *&v14[v33];
  v43.receiver = v14;
  v43.super_class = v13;
  objc_msgSendSuper2(&v43, sel_addSubview_, v41);

  return v14;
}

void sub_24E244128(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_errorView);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_errorView) = a1;
  v2 = a1;
  sub_24E244314(v3);
}

id sub_24E244188(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_isLoading);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_isLoading) = a1;
  return sub_24E244474(v2);
}

id sub_24E2441A0(id result)
{
  v2 = v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_orientation];
  v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_orientation] = result & 1;
  if (v2 != v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_orientation])
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_24E2441D8()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_titleView;
  type metadata accessor for TitleHeaderView(0);
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_materialBackgroundView;
  type metadata accessor for BackgroundView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_contentContainer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = (v0 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_titleActionBlock);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_loadingIndicator;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_errorView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_isLoading) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E244314(void *a1)
{
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_errorView];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_contentContainer];
    v4 = v2;
    [v3 setHidden_];
    [*&v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_loadingIndicator] setHidden_];
    [*&v4[OBJC_IVAR____TtC12GameCenterUI9ErrorView_contentView] setLayoutMargins_];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    v9.receiver = v1;
    v9.super_class = type metadata accessor for AppStoreContentPlatterView();
    objc_msgSendSuper2(&v9, sel_addSubview_, v6);
  }

  else
  {
    v8 = *&v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_contentContainer];

    [v8 setHidden_];
  }
}

id sub_24E244474(id result)
{
  v2 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_isLoading;
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_isLoading) != (result & 1))
  {
    v3 = (*(v1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_isLoading) ? &selRef_startAnimating : &selRef_stopAnimating);
    [*(v1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_loadingIndicator) *v3];
    result = *(v1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_errorView);
    if (result)
    {
      v4 = *(v1 + v2);

      return [result setHidden_];
    }
  }

  return result;
}

double sub_24E24450C(double a1, double a2)
{
  v3 = v2;
  type metadata accessor for PageGrid();
  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];

  v7 = [v2 traitCollection];
  v8 = PageGrid.__allocating_init(size:traitCollection:)();
  v9 = v8;
  if ((*(v2 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_orientation) & 1) == 0)
  {
    v15 = *&v8[OBJC_IVAR___GameLayerPageGrid_columnWidth] + *&v8[OBJC_IVAR___GameLayerPageGrid_columnWidth] + *&v8[OBJC_IVAR___GameLayerPageGrid_interColumnSpacing];
LABEL_8:
    GKIsXRUIIdiomShouldUsePadUI();
    GKIsXRUIIdiomShouldUsePadUI();
    a1 = v15 + 16.0 + 16.0;
    goto LABEL_9;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    v12 = [v3 traitCollection];
    v13 = sub_24E3483A8();

    if (v13)
    {
      v14 = *&v9[OBJC_IVAR___GameLayerPageGrid_columnCount];
      if (v14 >= 4)
      {
        v14 = 4;
      }

      v15 = *&v9[OBJC_IVAR___GameLayerPageGrid_columnWidth] * v14 + (v14 + -1.0) * *&v9[OBJC_IVAR___GameLayerPageGrid_interColumnSpacing];
      goto LABEL_8;
    }
  }

LABEL_9:
  if (a2 <= 0.0)
  {
    a2 = 1.79769313e308;
  }

  v16 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v3) + 0x98))())
  {
    [*(v3 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_titleView) sizeThatFits_];
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v19 = 9.0;
  }

  else
  {
    v19 = 0.0;
  }

  (*((*v16 & *v3) + 0x128))(a1 + -16.0 + -16.0, a2 - v19 - v18);
  GKIsXRUIIdiomShouldUsePadUI();
  GKIsXRUIIdiomShouldUsePadUI();

  return a1;
}

uint64_t sub_24E244830()
{
  ObjectType = swift_getObjectType();
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AppStoreContentPlatterView();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_materialBackgroundView];
    [v0 bounds];
    [v2 setFrame_];
  }

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = ObjectType;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24E24542C;
  *(v5 + 24) = v4;
  v10[4] = sub_24DFA0D30;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E2C314C;
  v10[3] = &block_descriptor_82;
  v6 = _Block_copy(v10);
  v7 = v0;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_24E2449E8(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x98))();
  v4 = 0.0;
  v5 = 0.0;
  if (v3)
  {
    v6 = *(a1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_titleView);
    [a1 bounds];
    [a1 layoutMargins];
    sub_24E3484F8();
    [v6 sizeThatFits_];
    v4 = v9;
    v5 = v10;
  }

  [a1 bounds];
  v12 = v11;
  v14 = v13;
  [a1 layoutMargins];
  v16 = v15;
  v88.origin.x = v17;
  v19 = v12 - v17 - v18;
  v88.size.height = v14 - v16 - v20;
  v88.origin.y = v16;
  v88.size.width = v19;
  MinY = CGRectGetMinY(v88);
  v22 = *(a1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_titleView);
  [v22 setHidden_];
  [v22 setFrame_];
  [a1 bounds];
  v24 = v23;
  v26 = v25;
  [a1 layoutMargins];
  v28 = v27;
  v89.origin.x = v29;
  v31 = v24 - v29 - v30;
  v89.size.height = v26 - v28 - v32;
  v89.origin.y = v28;
  v89.size.width = v31;
  CGRectGetMinX(v89);
  v90.origin.x = 16.0;
  v90.origin.y = MinY;
  v90.size.width = v4;
  v90.size.height = v5;
  CGRectGetMaxY(v90);
  [a1 bounds];
  v34 = v33;
  v36 = v35;
  [a1 layoutMargins];
  v38 = v37;
  v91.origin.x = v39;
  v41 = v34 - v39 - v40;
  v91.size.height = v36 - v38 - v42;
  v91.origin.y = v38;
  v91.size.width = v41;
  CGRectGetWidth(v91);
  [a1 bounds];
  v44 = v43;
  v46 = v45;
  [a1 layoutMargins];
  v48 = v47;
  v92.origin.x = v49;
  v51 = v44 - v49 - v50;
  v92.size.height = v46 - v48 - v52;
  v92.origin.y = v48;
  v92.size.width = v51;
  CGRectGetMaxY(v92);
  v93.origin.x = 16.0;
  v93.origin.y = MinY;
  v93.size.width = v4;
  v93.size.height = v5;
  CGRectGetMaxY(v93);
  GKIsXRUIIdiomShouldUsePadUI();
  sub_24E3484F8();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = *(a1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_contentContainer);
  [v61 setFrame_];
  (*((*v2 & *a1) + 0x130))([v61 bounds]);
  v62 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_errorView;
  v63 = *(a1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_errorView);
  if (v63)
  {
    [v63 setFrame_];
    v64 = *(a1 + v62);
    if (v64)
    {
      [v64 layoutIfNeeded];
    }
  }

  v65 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_loadingIndicator;
  [*(a1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_loadingIndicator) sizeToFit];
  v66 = *(a1 + v65);
  [a1 bounds];
  v68 = v67;
  v70 = v69;
  [a1 layoutMargins];
  v72 = v71;
  v74 = v73;
  v76 = v68 - v73 - v75;
  v78 = v70 - v71 - v77;
  v94.origin.x = v73;
  v94.origin.y = v72;
  v94.size.width = v76;
  v94.size.height = v78;
  MidX = CGRectGetMidX(v94);
  v95.origin.x = v74;
  v95.origin.y = v72;
  v95.size.width = v76;
  v95.size.height = v78;
  [v66 setCenter_];

  result = GKIsXRUIIdiomShouldUsePadUI();
  if (result)
  {
    v81 = *(a1 + OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_materialBackgroundView);
    [a1 bounds];
    v83 = v82;
    v85 = v84;
    v96.origin.x = 16.0;
    v96.origin.y = MinY;
    v96.size.width = v4;
    v96.size.height = v5;
    MaxY = CGRectGetMaxY(v96);

    return [v81 setFrame_];
  }

  return result;
}

id sub_24E244EF0(uint64_t a1)
{
  [*&v1[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_contentContainer] addSubview_];

  return [v1 setNeedsLayout];
}

uint64_t sub_24E244FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_24DF8BFF4(v9, &unk_27F1EAC90, &unk_24E36E890);
  }

  (*(v4 + 104))(v6, *MEMORY[0x277D21E18], v3);
  sub_24E3473B8();

  (*(v4 + 8))(v6, v3);
  return (*(*(v10 - 8) + 8))(v9, v10);
}

void sub_24E245194(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v11 = sub_24E2454BC;
  v12 = v3;
  v7 = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = sub_24E00B24C;
  v10 = &block_descriptor_32_1;
  v4 = _Block_copy(&v7);
  v5 = a1;

  v11 = CGSizeMake;
  v12 = 0;
  v7 = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = sub_24DFD47C8;
  v10 = &block_descriptor_35_2;
  v6 = _Block_copy(&v7);
  [v2 animateWithDuration:4 delay:v4 options:v6 animations:0.2 completion:0.0];
  _Block_release(v6);
  _Block_release(v4);
}

id sub_24E245344(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppStoreContentPlatterView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24E24544C(uint64_t a1)
{
  v2 = type metadata accessor for AppStorePlatterData.ContentData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI10FooterDataV5StyleO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E24550C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 57))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E245560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

double sub_24E2455C8(uint64_t a1, int a2)
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
    *(a1 + 40) = (a2 - 1);
  }

  return result;
}

void sub_24E245634(uint64_t a1)
{
  sub_24E2456A8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AchievementsLinkData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24E2456A8()
{
  if (!qword_280BE0260)
  {
    v0 = type metadata accessor for DetailData(0);
    if (!v1)
    {
      atomic_store(v0, &qword_280BE0260);
    }
  }
}

void sub_24E245738(uint64_t a1)
{
  sub_24E0ADC44();
  if (v1 <= 0x3F)
  {
    sub_24DFEA770();
    if (v2 <= 0x3F)
    {
      sub_24E2457DC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E2457DC(uint64_t a1)
{
  if (!qword_280BE0AF8)
  {
    type metadata accessor for FooterData.Attachment(255);
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE0AF8);
    }
  }
}

uint64_t String.localized.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  v5 = sub_24E347CF8();
  return v5;
}

unint64_t sub_24E2458B0(uint64_t a1, uint64_t *a2)
{
  v11 = a2;
  result = sub_24DFD8654();
  v12 = result;
  v4 = 0;
  while (1)
  {
    if (v12 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25303F560](v4, a1);
      v5 = v6;
      goto LABEL_6;
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v5 = *(a1 + 8 * v4 + 32);

LABEL_6:
    v7 = *v11;
    v13 = v5;
    MEMORY[0x28223BE20](v6);
    v10[2] = &v13;

    v8 = sub_24E024034(sub_24E2502C0, v10, v7);

    if (v8)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_24E245A0C()
{
  v1 = [v0 internal];
  v2 = [v1 playerID];

  v3 = sub_24E347CF8();
  v5 = v4;

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 0xE000000000000000;
  }

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_19();
    v7 = sub_24E348C08();

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

id sub_24E245AC4()
{
  result = [objc_opt_self() isPreferences];
  byte_27F20B1D8 = result;
  return result;
}

uint64_t sub_24E245AF8()
{
  if (qword_27F1DDAC8 != -1)
  {
    swift_once();
  }

  return byte_27F20B1D8;
}

void sub_24E245B74()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34 = v9;
  v11 = v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40, &unk_24E375E80);
  OUTLINED_FUNCTION_0_14();
  v37 = v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v36 = &v33 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1760, &qword_24E370F90);
  OUTLINED_FUNCTION_0_14();
  v16 = v15;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39_5();
  LOBYTE(v8) = *v8;
  v18 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_pageMericsPresenter;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_pageMericsPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_isDeeplinked) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredDataPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_nicknamePresenter) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89B0, &qword_24E3874C0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_primarySections) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_secondarySections) = v23;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_sections) = v23;
  v24 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData;
  sub_24DFE6CAC(v40);
  memcpy((v2 + v24), v40, 0x90uLL);
  v25 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_onNicknameChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E35F0, &unk_24E375EA0);
  swift_allocObject();
  *(v2 + v25) = sub_24E346F88();
  v26 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_onShowAvatarEditor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E35E0, &unk_24E375E90);
  swift_allocObject();
  *(v2 + v26) = sub_24E347B58();
  *(v2 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_profileType) = v8;
  v33 = v4;
  *(v2 + v18) = v4;

  *(v2 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_pageContext) = v6;
  v27 = sub_24E195BF0(v11, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1768, &unk_24E388A80);
  v28 = MEMORY[0x277D21A98];
  sub_24DFB4C28(&qword_27F1E1770, &qword_27F1E1768, &unk_24E388A80, MEMORY[0x277D21A98]);
  v29 = v27;

  OUTLINED_FUNCTION_60();
  sub_24E347198();
  type metadata accessor for PlayerProfilePresenter(0);
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v39);
  (*(v16 + 8))(v1, v35);
  v30 = OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  sub_24DFB4C28(&unk_27F1E1C50, &unk_27F1E6CC0, &unk_24E36FA60, v28);

  sub_24E347198();
  v32 = v36;
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v39);
  (*(v37 + 8))(v32, v38);
  OUTLINED_FUNCTION_18();
}

void (*sub_24E246004(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E250180;
}

uint64_t (*sub_24E2460A0(void *a1))(uint64_t a1)
{
  v1 = sub_24E246004(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E0418F4;
}

void **(*sub_24E2460F8(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E250178;
}

void **sub_24E24615C(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  return sub_24E24B8E0(&v3);
}

uint64_t sub_24E2461D4()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_profileType))
  {
    v1 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_56_3(OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData, v4);
    if (sub_24DF8BF80(&v4) == 1 || v6 != 1 || (v5 & 1) != 0)
    {
      v2 = sub_24E287BD0();
      v1 = sub_24E245A0C();
    }

    else
    {
      v1 = 1;
    }
  }

  return v1 & 1;
}

uint64_t sub_24E246394()
{
  v1 = 0;
  switch(v0[OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_profileType])
  {
    case 1:
      OUTLINED_FUNCTION_75();
      v5 = sub_24E347CB8();
      v6 = GKGameCenterUIFrameworkBundle();
      v7 = OUTLINED_FUNCTION_23_7(v6);
      goto LABEL_6;
    case 2:
      v5 = sub_24E347CB8();
      v8 = GKGameCenterUIFrameworkBundle();
      v7 = OUTLINED_FUNCTION_23_7(v8);
LABEL_6:
      v9 = v7;

      v1 = sub_24E347CF8();
      return v1;
    case 3:
      return v1;
    default:
      v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_nicknamePresenter];
      if (v2)
      {
        v3 = v2;
        v4 = sub_24E2EEF28();
      }

      else
      {
        memcpy(__dst, &v0[OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData], sizeof(__dst));
        v10 = __dst[0];
        memcpy(v112, &v0[OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData + 8], sizeof(v112));
        memcpy(v115, &v0[OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData + 8], sizeof(v115));
        v114 = __dst[0];
        v11 = sub_24DF8BF80(&v114);
        if (v11 == 1)
        {
          v19 = OUTLINED_FUNCTION_57_3(1, v12, v13, v14, v15, v16, v17, v18, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
          OUTLINED_FUNCTION_80(v19, v20, v21, v22, v23, v24, v25, v26, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7], v112[8], v112[9], v112[10], v112[11], v112[12], v112[13], v112[14], v112[15], v112[16]);
          sub_24DF8BFF4(&v94, &qword_27F1DEEA0, qword_24E369EA0);
          return 0;
        }

        v27 = OUTLINED_FUNCTION_57_3(v11, v12, v13, v14, v15, v16, v17, v18, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
        OUTLINED_FUNCTION_80(v27, v28, v29, v30, v31, v32, v33, v34, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7], v112[8], v112[9], v112[10], v112[11], v112[12], v112[13], v112[14], v112[15], v112[16]);
        v35 = v10;
        sub_24DF8BFF4(&v94, &qword_27F1DEEA0, qword_24E369EA0);
        v3 = [v35 displayNameWithOptions_];

        v4 = sub_24E347CF8();
      }

      v1 = v4;

      return v1;
  }
}

uint64_t sub_24E2465D8(uint64_t a1)
{
  v1 = sub_24E287BD0();
  v2 = sub_24E245A0C();

  return v2 & 1;
}

void sub_24E24660C()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  v6 = sub_24E347458();
  v7 = OUTLINED_FUNCTION_4_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_46_6();
  v8 = sub_24E3479D8();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  *&v65 = v12 - v13;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_1();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = *(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_profileType);
  if (v26 == 1)
  {
    sub_24E347118();
    OUTLINED_FUNCTION_8_6();
    OUTLINED_FUNCTION_18();

    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }

  else
  {
    v64 = v16;
    v66 = v10;
    LODWORD(v67) = v3;
    v69 = v5;
    v68 = v1;
    v70 = &v61 - v25;
    v63 = v8;
    if (v26 == 2)
    {
      *(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_pageContext) = 1;
      v27 = 0xEA00000000006567;
      v28 = 0x6150646E65697266;
    }

    else
    {
      v27 = 0xEB00000000726573;
      v28 = 0x55746E6572727563;
      v34 = *(v0 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_playerId + 8);
      if (v34)
      {
        v62 = v19;
        v35 = v17;
        v36 = *(v0 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_playerId);
        v37 = [objc_opt_self() local];
        v38 = [v37 internal];

        v39 = [v38 playerID];
        v40 = sub_24E347CF8();
        v42 = v41;

        if (v36 == v40 && v34 == v42)
        {
        }

        else
        {
          v44 = sub_24E348C08();

          if ((v44 & 1) == 0)
          {
            v28 = 0x74616E7265746C61;
            v27 = 0xED00007265735565;
          }
        }

        v17 = v35;
        v19 = v62;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2778, &unk_24E37AEC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E369B70;
    *(inited + 32) = sub_24E347CF8();
    *(inited + 40) = v46;
    *(inited + 48) = v28;
    *(inited + 56) = v27;
    *(inited + 64) = sub_24E347CF8();
    *(inited + 72) = v47;
    v48 = 0x656C69666F7270;
    v49 = 0xE700000000000000;
    *(inited + 80) = 0x656C69666F7270;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = sub_24E347CF8();
    *(inited + 104) = v50;
    if (*(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_pageContext))
    {
      v51 = v67;
      v52 = v66;
      v53 = v64;
      if (*(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_pageContext) != 1)
      {
        v49 = 0xEA00000000007974;
        v48 = 0x7261506472696874;
      }
    }

    else
    {
      v49 = 0xE900000000000064;
      v48 = 0x72616F6268736164;
      v51 = v67;
      v52 = v66;
      v53 = v64;
    }

    *(inited + 112) = v48;
    *(inited + 120) = v49;
    OUTLINED_FUNCTION_19_1();
    v67 = sub_24E347C28();
    v54 = sub_24E347C28();
    v55 = v70;
    sub_24E0A7788(v54);

    if (v51)
    {
      sub_24E3479B8();
      v56 = sub_24E347068();
      OUTLINED_FUNCTION_31_9();
      sub_24E1C3144();
      (*(v52 + 8))(v53, v63);
      v56(&v71, 0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2740, &qword_24E374260);
    sub_24E3470B8();
    v57 = swift_allocObject();
    v65 = xmmword_24E36A270;
    *(v57 + 16) = xmmword_24E36A270;
    (*(v19 + 16))(v23, v55, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2748, &unk_24E372FA0);
    sub_24E347108();
    v66 = v17;
    *(swift_allocObject() + 16) = xmmword_24E367D20;
    sub_24E3470F8();
    sub_24E1AD060();
    sub_24E3470A8();
    if (qword_27F1DD808 != -1)
    {
      OUTLINED_FUNCTION_1_43(&qword_27F1DD808);
    }

    v58 = sub_24E347058();
    __swift_project_value_buffer(v58, qword_27F20AE00);
    sub_24E347028();
    *(swift_allocObject() + 16) = v65;
    sub_24E3470E8();
    sub_24E3470D8();
    sub_24E1AD060();
    sub_24E3470A8();
    sub_24E335A58(v67);

    sub_24E347448();
    sub_24E0241AC(MEMORY[0x277D84F90]);
    v59 = v69;
    OUTLINED_FUNCTION_60();
    sub_24E3470C8();
    (*(v19 + 8))(v70, v66);
    v60 = sub_24E347118();
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
    OUTLINED_FUNCTION_18();
  }
}

uint64_t sub_24E246E30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89E8, &qword_24E387510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89F0, &qword_24E387518);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89F8, &unk_24E387520);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_24DFE6CAC(v20);
  memcpy(v21, (v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData), 0x90uLL);
  memcpy((v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData), v20, 0x90uLL);
  sub_24DF8BFF4(v21, &qword_27F1DEEA0, qword_24E369EA0);
  v11 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredDataPresenter;
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredDataPresenter))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00C0, &qword_24E36D4B0);
    sub_24DFB4C28(&qword_27F1E8A00, &qword_27F1E00C0, &qword_24E36D4B0, MEMORY[0x277D21A98]);

    sub_24E347198();
    type metadata accessor for PlayerProfilePresenter(0);
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v19);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8A08, &unk_24E387530);
  v14 = 1;
  __swift_storeEnumTagSinglePayload(v10, v12, 1, v13);
  sub_24DF8BFF4(v10, &qword_27F1E89F8, &unk_24E387520);
  if (*(v1 + v11))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00C8, &qword_24E36D4B8);
    sub_24DFB4C28(&qword_27F1E8A10, &qword_27F1E00C8, &qword_24E36D4B8, MEMORY[0x277D21A98]);

    sub_24E347198();
    type metadata accessor for PlayerProfilePresenter(0);
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v19);
    v14 = 0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8A18, &unk_24E387540);
  v16 = 1;
  __swift_storeEnumTagSinglePayload(v7, v14, 1, v15);
  sub_24DF8BFF4(v7, &qword_27F1E89F0, &qword_24E387518);
  if (*(v1 + v11))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00D0, &unk_24E36D4C0);
    sub_24DFB4C28(&qword_27F1E8A20, &qword_27F1E00D0, &unk_24E36D4C0, MEMORY[0x277D21A98]);

    sub_24E347198();
    type metadata accessor for PlayerProfilePresenter(0);
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v19);
    v16 = 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8A28, &qword_24E387550);
  __swift_storeEnumTagSinglePayload(v4, v16, 1, v17);
  return sub_24DF8BFF4(v4, &qword_27F1E89E8, &qword_24E387510);
}

void (*sub_24E2472D8(void *a1))(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E250154;
}

uint64_t (*sub_24E24733C(void *a1))(void *__src)
{
  v1 = sub_24E2472D8(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E250110;
}

uint64_t (*sub_24E247394(void *a1))(char a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2500EC;
}

uint64_t (*sub_24E2473F8(void *a1))(unsigned __int8 *a1)
{
  v1 = sub_24E247394(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E2500C0;
}

uint64_t (*sub_24E247450(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E25009C;
}

uint64_t sub_24E2474B4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredDataPresenter) = a1;

  sub_24E246E30();
}

uint64_t (*sub_24E247510(void *a1))(void *__src)
{
  v1 = sub_24E247450(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E250058;
}

void *sub_24E24759C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_nicknamePresenter);
  v2 = v1;
  return v1;
}

void sub_24E247628(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_nicknamePresenter);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_nicknamePresenter) = a1;
  v2 = a1;
  sub_24E247688(v3);
}

uint64_t sub_24E247688(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89B8, &qword_24E3874E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89B0, &qword_24E3874C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v14 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_nicknameUpdatedSubscription;
  swift_beginAccess();
  sub_24E0E8958(v2 + v14, v9, &qword_27F1E89B8, &qword_24E3874E0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_24DF8BFF4(v9, &qword_27F1E89B8, &qword_24E3874E0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (a1)
    {
      sub_24E346F68();
    }

    (*(v11 + 8))(v13, v10);
  }

  if (*(v2 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_nicknamePresenter))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA5D0, &qword_24E38C900);
    sub_24DFB4C28(&qword_27F1E89E0, &unk_27F1EA5D0, &qword_24E38C900, MEMORY[0x277D21A98]);

    sub_24E347198();
    type metadata accessor for PlayerProfilePresenter(0);
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v17);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v15, 1, v10);
  swift_beginAccess();
  sub_24E24FFBC(v6, v2 + v14);
  return swift_endAccess();
}

void (*sub_24E247998(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E250034;
}

uint64_t (*sub_24E2479FC(void *a1))()
{
  v1 = sub_24E247998(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E25002C;
}

void sub_24E247A54(uint64_t a1)
{
  v2 = a1;
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView) == 1)
  {
    v40 = a1;
    v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_primarySections);
    v4 = sub_24DFD8654();

    v5 = 0;
    while (v4 != v5)
    {
      v6 = v5;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25303F560](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      v8 = sub_24E32CAFC(*(v7 + 16));
      v10 = v9;
      if (v8 == sub_24E32CAFC(v40) && v10 == v11)
      {
        goto LABEL_45;
      }

      v13 = sub_24E348C08();

      v5 = v6 + 1;
      if (v13)
      {
        goto LABEL_46;
      }
    }

    v28 = *(v1 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_secondarySections);
    v29 = sub_24DFD8654();

    v30 = 0;
    while (v29 != v30)
    {
      v31 = v30;
      if ((v28 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x25303F560](v30, v28);
      }

      else
      {
        if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v32 = *(v28 + 8 * v30 + 32);
      }

      if (__OFADD__(v31, 1))
      {
        goto LABEL_51;
      }

      v33 = sub_24E32CAFC(*(v32 + 16));
      v35 = v34;
      v36 = sub_24E32CAFC(v40);
      if (v33 == v36 && v35 == v37)
      {
        goto LABEL_45;
      }

      v39 = OUTLINED_FUNCTION_58_3(v36);

      v30 = v31 + 1;
      if (v39)
      {
        break;
      }
    }
  }

  else
  {
    v14 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_sections;
    OUTLINED_FUNCTION_8_11();
    swift_beginAccess();
    v15 = *(v1 + v14);
    v16 = sub_24DFD8654();

    v17 = 0;
    while (v16 != v17)
    {
      v18 = v17;
      if ((v15 & 0xC000000000000001) != 0)
      {
        v27 = OUTLINED_FUNCTION_19_1();
        v19 = MEMORY[0x25303F560](v27);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v19 = *(v15 + 8 * v17 + 32);
      }

      if (__OFADD__(v18, 1))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return;
      }

      v20 = sub_24E32CAFC(*(v19 + 16));
      v22 = v21;
      v23 = sub_24E32CAFC(v2);
      if (v20 == v23 && v22 == v24)
      {
LABEL_45:

        break;
      }

      v26 = OUTLINED_FUNCTION_58_3(v23);

      v17 = v18 + 1;
      if (v26)
      {
        break;
      }
    }
  }

LABEL_46:
}

void sub_24E247E7C()
{
  OUTLINED_FUNCTION_32();
  v69 = v2;
  v70 = v3;
  OUTLINED_FUNCTION_67_0();
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_profileType))
  {
LABEL_24:
    OUTLINED_FUNCTION_18();
    return;
  }

  v83 = MEMORY[0x277D84F90];
  memcpy(v84, (v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData), 0x90uLL);
  memcpy((v2 - 224), (v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData), 0x90uLL);
  if (sub_24DF8BF80((v2 - 224)) != 1)
  {
    v4 = *(v2 - 216);
    if (v4)
    {
      memcpy(v82, v84, sizeof(v82));
      sub_24DF8BF98(v82, &v64);
      if ((*(v2 - 215) & 1) == 0)
      {
        sub_24DF88A8C(0, &qword_27F1DFB08, 0x277D750C8);
        v5 = sub_24E347CB8();
        v6 = GKGameCenterUIFrameworkBundle();
        v7 = OUTLINED_FUNCTION_5_22(v6);

        sub_24E347CF8();
        v9 = v8;

        OUTLINED_FUNCTION_21_2();
        v10 = swift_allocObject();
        OUTLINED_FUNCTION_35_11(v10);
        OUTLINED_FUNCTION_8_11();
        OUTLINED_FUNCTION_14_38();
        sub_24E348658();
        v11 = MEMORY[0x25303EA30]();
        OUTLINED_FUNCTION_25_20(v11, v12, v13, v14, v15, v16, v17, v18, 0, 0, 0, sub_24E24FF2C, v7, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v83);
        if (v19)
        {
          OUTLINED_FUNCTION_11_43();
        }

        sub_24E347F88();
LABEL_14:
        if (GKIsRemoteUI())
        {
          sub_24DF88A8C(0, &qword_27F1DFB08, 0x277D750C8);
          v45 = sub_24E347CB8();
          v46 = GKGameCenterUIFrameworkBundle();
          v47 = OUTLINED_FUNCTION_5_22(v46);

          sub_24E347CF8();
          OUTLINED_FUNCTION_21_2();
          v48 = swift_allocObject();
          OUTLINED_FUNCTION_35_11(v48);
          OUTLINED_FUNCTION_8_11();
          OUTLINED_FUNCTION_14_38();
          v49 = sub_24E348658();
          MEMORY[0x25303EA30](v49, v50, v51, v52, v53);
          OUTLINED_FUNCTION_43_7();
          if (v19)
          {
            OUTLINED_FUNCTION_14_2(v54);
            sub_24E347F48();
          }

          sub_24E347F88();
        }

LABEL_18:
        sub_24DF8BFF4(v84, &qword_27F1DEEA0, qword_24E369EA0);
        goto LABEL_19;
      }
    }

    else
    {
      sub_24DF88A8C(0, &qword_27F1DFB08, 0x277D750C8);
      memcpy(v82, v84, sizeof(v82));
      sub_24DF8BF98(v82, &v64);
      v20 = sub_24E347CB8();
      v21 = GKGameCenterUIFrameworkBundle();
      v22 = OUTLINED_FUNCTION_9_53(v21);

      v1 = sub_24E347CF8();
      sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
      sub_24DFD29F8(0xD000000000000016, 0x800000024E39EA90);
      OUTLINED_FUNCTION_21_2();
      v23 = swift_allocObject();
      OUTLINED_FUNCTION_35_11(v23);
      OUTLINED_FUNCTION_8_11();
      OUTLINED_FUNCTION_14_38();
      sub_24E348658();
      v24 = MEMORY[0x25303EA30]();
      OUTLINED_FUNCTION_25_20(v24, v25, v26, v27, v28, v29, v30, v31, 0, 0, 0, sub_24E24FEFC, v22, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v83);
      if (v19)
      {
        OUTLINED_FUNCTION_11_43();
      }

      sub_24E347F88();
      if (*(v2 - 215) != 1)
      {
        goto LABEL_18;
      }
    }

    sub_24DF88A8C(0, &qword_27F1DFB08, 0x277D750C8);
    v32 = sub_24E347CB8();
    v33 = GKGameCenterUIFrameworkBundle();
    v34 = OUTLINED_FUNCTION_9_53(v33);

    v9 = sub_24E347CF8();
    sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
    OUTLINED_FUNCTION_75();
    sub_24DFD29F8(0xD000000000000012, v35);
    OUTLINED_FUNCTION_21_2();
    v36 = swift_allocObject();
    OUTLINED_FUNCTION_35_11(v36);
    OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_14_38();
    sub_24E348658();
    v37 = MEMORY[0x25303EA30]();
    OUTLINED_FUNCTION_25_20(v37, v38, v39, v40, v41, v42, v43, v44, 0, 2, 0, sub_24E24FF8C, v34, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v83);
    if (v19)
    {
      OUTLINED_FUNCTION_11_43();
    }

    sub_24E347F88();
    if ((v4 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_19:
  v55 = [objc_opt_self() shared];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 isInternalBuild];

    if (v57)
    {
      sub_24DF88A8C(0, &qword_27F1DFB08, 0x277D750C8);
      sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
      sub_24E1A5748(0x637269632E746E61, 0xEF6C6C69662E656CLL, 0);
      OUTLINED_FUNCTION_8_11();
      OUTLINED_FUNCTION_14_38();
      v58 = sub_24E348658();
      MEMORY[0x25303EA30](v58, v59, v60, v61, v62);
      OUTLINED_FUNCTION_43_7();
      if (v19)
      {
        OUTLINED_FUNCTION_14_2(v63);
        sub_24E347F48();
      }

      sub_24E347F88();
    }

    goto LABEL_24;
  }

  __break(1u);
}

void sub_24E2484EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_24E248544()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_24E343288();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityFeedBaseData(0);
  sub_24E0E6D4C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_24DF8BFF4(v2, &qword_27F1DEFB8, &unk_24E36FFA0);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v8 = result;
    v9 = sub_24E343228();
    [v8 openURL_];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_24E248800()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  *v32 = MEMORY[0x277D84F90];
  sub_24E247E7C();
  v4 = v3;
  if (sub_24DFD8654() >= 1)
  {
    if (GKIsRemoteUI())
    {
      v5 = objc_allocWithZone(type metadata accessor for CloseButton(0));
      v6 = CloseButton.init(with:)(0x73697370696C6C65, 0xE800000000000000);
    }

    else
    {
      v7 = [objc_opt_self() buttonWithType_];
      sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
      v6 = v7;
      v8 = sub_24DFD29F8(0x73697370696C6C65, 0xEF656C637269632ELL);
      [v6 setImage:v8 forState:0];
    }

    [v6 setShowsMenuAsPrimaryAction_];
    if (v4 >> 62)
    {
      sub_24DF88A8C(0, &qword_27F1E0060, 0x277D75720);

      v9 = sub_24E348AF8();
    }

    else
    {

      sub_24E348C18();
      sub_24DF88A8C(0, &qword_27F1E0060, 0x277D75720);
      v9 = v4;
    }

    sub_24DF88A8C(0, &qword_27F1E0068, 0x277D75710);
    v29 = v9;
    OUTLINED_FUNCTION_8_11();
    v10 = sub_24E348588();
    [v6 setMenu_];

    OUTLINED_FUNCTION_75();
    sub_24DFD8050(0xD000000000000024, v11, v6);
    v12 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

    MEMORY[0x25303EA30]([v12 setTag_]);
    v13 = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
    {
      OUTLINED_FUNCTION_14_2(v13);
      sub_24E347F48();
    }

    OUTLINED_FUNCTION_26_0();
    sub_24E347F88();
    v2 = *v32;
  }

  if (GKIsXRUIIdiomShouldUsePadUI() && *(v1 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_profileType) == 2)
  {
    v31 = type metadata accessor for PlayerProfilePresenter(0);
    objc_allocWithZone(MEMORY[0x277D751E0]);
    v1;
    sub_24E05E770(4, v30, sel_addFriends, v15, v16, v17, v18, v19, v29, v1, v30[1], v30[2], v31, *v32, v33, v34, v35, v36, v37, v38);
    v21 = v20;
    result = [objc_opt_self() shared];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v22 = result;

    v23 = [v22 isAddingFriendsRestricted];

    [v21 setEnabled_];
    [v21 setTag_];
    v24 = v21;
    MEMORY[0x25303EA30]();
    OUTLINED_FUNCTION_62_1();
    if (v26)
    {
      OUTLINED_FUNCTION_14_2(v25);
      sub_24E347F48();
    }

    sub_24E347F88();
    v2 = *v32;
    sub_24E248C5C();
    if (v27)
    {
      MEMORY[0x25303EA30]([v27 setTag_]);
      OUTLINED_FUNCTION_62_1();
      if (v26)
      {
        OUTLINED_FUNCTION_14_2(v28);
        sub_24E347F48();
      }

      OUTLINED_FUNCTION_13_0();
      sub_24E347F88();
      v2 = *v32;
    }
  }

  else
  {
  }

  if (sub_24DFD8654() < 1)
  {

    return 0;
  }

  return v2;
}

void sub_24E248C5C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v2 = sub_24E343428();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  memcpy(v26, &v0[OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData], sizeof(v26));
  memcpy(v27, &v0[OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData], sizeof(v27));
  if (sub_24DF8BF80(v27) != 1)
  {
    memcpy(v25, v27, sizeof(v25));
    v9 = v27[6] >> 62 ? OUTLINED_FUNCTION_59_1() : *((v27[6] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= 1)
    {
      memcpy(v24, v26, sizeof(v24));
      sub_24DF8BF98(v24, v23);
      sub_24DFE2518();
      v10 = [objc_opt_self() currentLocale];
      sub_24E3433D8();

      v11 = sub_24E3433C8();
      (*(v4 + 8))(v8, v2);

      sub_24DFD8654();
      sub_24DFE2518();
      sub_24DFE2518();
      if (v12 < 1)
      {
        v19 = sub_24E347CB8();
        v20 = GKGameCenterUIFrameworkBundle();
        v21 = OUTLINED_FUNCTION_9_53(v20);

        sub_24E347CF8();
      }

      else
      {
        OUTLINED_FUNCTION_75();
        v13 = sub_24E347CB8();
        v14 = GKGameCenterUIFrameworkBundle();
        v15 = OUTLINED_FUNCTION_9_53(v14);

        sub_24E347CF8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_24E367D20;
        sub_24DFE2518();
        v17 = MEMORY[0x277D83C10];
        *(v16 + 56) = MEMORY[0x277D83B88];
        *(v16 + 64) = v17;
        *(v16 + 32) = v18;
        sub_24E347D18();
      }

      v23[3] = type metadata accessor for PlayerProfilePresenter(0);
      v23[0] = v1;
      objc_allocWithZone(MEMORY[0x277D751E0]);
      v22 = v1;
      sub_24E3076B4();
      sub_24DF8BFF4(v26, &qword_27F1DEEA0, qword_24E369EA0);
    }
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E248FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_32();
  a19 = v54;
  a20 = v55;
  OUTLINED_FUNCTION_67_0();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  OUTLINED_FUNCTION_0_14();
  v58 = v57;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_32_14();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  OUTLINED_FUNCTION_4_5(v60);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_16_9();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89C8, qword_24E38F9F0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_84(&a50);
  OUTLINED_FUNCTION_84((v54 - 232));
  OUTLINED_FUNCTION_33_11();
  if (!v64)
  {
    memcpy(&a32, (v54 - 232), 0x90uLL);
    v65 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph;
    v66 = *(v50 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph);
    if (v66)
    {
      v81 = v53;
      v82 = v58;
      v83 = v56;
      v84 = v51;
      v67 = sub_24E347CF8();
      v68 = v66;
      v70 = v69;
      v71 = sub_24E347CF8();
      v73 = v72;

      sub_24E0E8958(&a50, &a14, &qword_27F1DEEA0, qword_24E369EA0);
      ActionMetrics.init(domain:eventType:)(v67, v70, v71, v73);
      v74 = swift_allocObject();
      memcpy((v74 + 16), &a32, 0x90uLL);
      *(v74 + 160) = v68;
      *v52 = sub_24E24FDEC;
      *(v52 + 8) = v74;
      *(v52 + 16) = 0;
      if (*(v50 + v65))
      {
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);

        sub_24E0E8958(&a50, &a14, &qword_27F1DEEA0, qword_24E369EA0);

        sub_24E347328();

        OUTLINED_FUNCTION_17_4(v84, 1, v75);
        if (!v64)
        {
          a17 = v62;
          a18 = sub_24DFB4C28(&qword_27F1E89D0, &qword_27F1E89C8, qword_24E38F9F0, &unk_24E38E488);
          v79 = __swift_allocate_boxed_opaque_existential_1(&a14);
          sub_24E0E8958(v52, v79, &qword_27F1E89C8, qword_24E38F9F0);
          (*(v82 + 104))(v81, *MEMORY[0x277D21E18], v83);
          sub_24E3473B8();
          OUTLINED_FUNCTION_72_0();

          sub_24DF8BFF4(&a50, &qword_27F1DEEA0, qword_24E369EA0);
          (*(v82 + 8))(v81, v83);
          sub_24DF8BFF4(v52, &qword_27F1E89C8, qword_24E38F9F0);
          __swift_destroy_boxed_opaque_existential_1(&a14);
          OUTLINED_FUNCTION_22_0();
          (*(v80 + 8))(v84, v75);
          goto LABEL_9;
        }

        sub_24DF8BFF4(v52, &qword_27F1E89C8, qword_24E38F9F0);
        sub_24DF8BFF4(&a50, &qword_27F1DEEA0, qword_24E369EA0);

        v76 = &unk_27F1EAC90;
        v77 = &unk_24E36E890;
        v78 = v84;
      }

      else
      {
        v76 = &qword_27F1E89C8;
        v77 = qword_24E38F9F0;
        v78 = v52;
      }

      sub_24DF8BFF4(v78, v76, v77);
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E2493FC(void *a1, uint64_t a2)
{
  v44 = a2;
  v42 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v36 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v36 - v4;
  v5 = type metadata accessor for PlayerProfileAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24E347458();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24E347088();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24E347208();
  v41 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  v40 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v17 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v17;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  v18 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v19 = sub_24E347058();
  v20 = __swift_project_value_buffer(v19, qword_27F20AE00);
  MEMORY[0x25303DB90](0x656C69666F7270, 0xE700000000000000, 0x6E6F74747562, 0xE600000000000000, v18, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v40;
  (*(v10 + 16))(v22 + v21, v12, v9);
  sub_24E347448();
  sub_24E3471D8();
  (*(v10 + 8))(v12, v9);
  v23 = [v42 playerID];
  v24 = sub_24E347CF8();
  v26 = v25;

  v27 = v41;
  (*(v41 + 16))(&v7[*(v5 + 24)], v15, v13);
  *v7 = v24;
  *(v7 + 1) = v26;
  v7[16] = 0;
  v7[*(v5 + 28)] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  v29 = v43;
  sub_24E347328();
  v30 = v29;
  if (__swift_getEnumTagSinglePayload(v29, 1, v28) == 1)
  {
    sub_24E24FE00(v7, type metadata accessor for PlayerProfileAction);
    (*(v27 + 8))(v15, v13);
    return sub_24DF8BFF4(v29, &unk_27F1EAC90, &unk_24E36E890);
  }

  else
  {
    v45[3] = v5;
    v45[4] = sub_24E24FE58(&qword_27F1E2E48, type metadata accessor for PlayerProfileAction, &unk_24E38C764);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    sub_24E24FEA0(v7, boxed_opaque_existential_1, type metadata accessor for PlayerProfileAction);
    v33 = v38;
    v34 = v37;
    v35 = v39;
    (*(v38 + 104))(v37, *MEMORY[0x277D21E18], v39);
    sub_24E3473B8();

    (*(v33 + 8))(v34, v35);
    sub_24E24FE00(v7, type metadata accessor for PlayerProfileAction);
    (*(v27 + 8))(v15, v13);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return (*(*(v28 - 8) + 8))(v30, v28);
  }
}

void *sub_24E249A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *(a1 + 48);
  sub_24E0E8958(&v20, &v17, &qword_27F1E26F0, &unk_24E372F50);
  v5 = qword_27F1DE118;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for PlayerCardTheme(0);
  __swift_project_value_buffer(v6, qword_27F20BF00);
  result = [objc_opt_self() shared];
  if (result)
  {
    v8 = result;
    [result inboxContactsOnly];

    sub_24E346B78();
    v9 = v17;
    v10 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E26F0, &unk_24E372F50);
    sub_24E346B78();
    v11 = v17;
    v12 = v18;
    sub_24E346B78();
    LOBYTE(v8) = v17;
    v13 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89D8, &qword_24E387508);
    result = sub_24E346B78();
    v14 = v17;
    v15 = v18;
    v16 = v19;
    LOBYTE(v17) = v18;
    *a3 = v9;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    *(a3 + 24) = v12;
    *(a3 + 32) = v8;
    *(a3 + 40) = v13;
    *(a3 + 48) = xmmword_24E387420;
    *(a3 + 64) = sub_24E24FDF8;
    *(a3 + 72) = a2;
    *(a3 + 80) = v14;
    *(a3 + 88) = v15;
    *(a3 + 96) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E249CA8()
{
  OUTLINED_FUNCTION_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  OUTLINED_FUNCTION_0_14();
  v41 = v5;
  v42 = v4;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_74();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  OUTLINED_FUNCTION_4_5(v7);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_9();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFA60, qword_24E36F7F0);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42_8();
  v11 = sub_24E347458();
  v12 = OUTLINED_FUNCTION_4_5(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v13 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v19 = v18 - v17;
  memcpy(v49, (v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData), sizeof(v49));
  memcpy(v50, (v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData), sizeof(v50));
  OUTLINED_FUNCTION_33_11();
  if (!v20 && *(v0 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph))
  {
    v40 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph;
    *(&v47 + 1) = &type metadata for GKFeatureFlags;
    v48 = sub_24DFA0CB4();
    LOBYTE(v46) = 15;
    sub_24E0E8958(v49, v43, &qword_27F1DEEA0, qword_24E369EA0);

    v21 = sub_24E3435A8();
    __swift_destroy_boxed_opaque_existential_1(&v46);
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      inited = swift_initStackObject();
      v23 = OUTLINED_FUNCTION_8_68(inited, xmmword_24E367D20);
      v24 = MEMORY[0x277D837D0];
      v23[2].n128_u64[0] = v25;
      v23[2].n128_u64[1] = v26;
      v23[4].n128_u64[1] = v24;
      v23[3].n128_u64[0] = 0x657461676976616ELL;
      v23[3].n128_u64[1] = 0xE800000000000000;
      v27 = sub_24E347C28();
      if (qword_27F1DD808 != -1)
      {
        OUTLINED_FUNCTION_1_43(&qword_27F1DD808);
      }

      v28 = sub_24E347058();
      __swift_project_value_buffer(v28, qword_27F20AE00);
      OUTLINED_FUNCTION_41_9();
      MEMORY[0x25303DB90]();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
      v29 = OUTLINED_FUNCTION_77_0();
      *(v29 + 16) = xmmword_24E367D20;
      (*(v15 + 16))(v29 + v27, v19, v13);
      sub_24E347448();
      v44 = type metadata accessor for InviteFriendsFlowAction(0);
      v45 = sub_24E24FE58(&qword_27F1E0E30, type metadata accessor for InviteFriendsFlowAction, &unk_24E384D68);
      __swift_allocate_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_23_3();
      sub_24E3471D8();
      (*(v15 + 8))(v19, v13);
    }

    else
    {
      v30 = [objc_opt_self() localPlayer];
      v46 = 0u;
      v47 = 0u;
      LOBYTE(v48) = 1;
      sub_24E347208();
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
      v44 = type metadata accessor for AddFriendsAction(0);
      v45 = sub_24E24FE58(&qword_27F1DFA68, type metadata accessor for AddFriendsAction, &unk_24E389CB4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
      sub_24E2835B0(v30, &v46, v3, 0, boxed_opaque_existential_1);
    }

    if (*(v0 + v40))
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);

      sub_24E347328();

      v37 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_17_4(v37, v38, v36);
      if (v20)
      {
        __swift_destroy_boxed_opaque_existential_1(v43);
        sub_24DF8BFF4(v49, &qword_27F1DEEA0, qword_24E369EA0);

        sub_24DF8BFF4(v1, &unk_27F1EAC90, &unk_24E36E890);
      }

      else
      {
        (*(v41 + 104))(v2, *MEMORY[0x277D21E18], v42);
        sub_24E3473B8();
        sub_24DF8BFF4(v49, &qword_27F1DEEA0, qword_24E369EA0);

        (*(v41 + 8))(v2, v42);
        __swift_destroy_boxed_opaque_existential_1(v43);
        OUTLINED_FUNCTION_22_0();
        (*(v39 + 8))(v1, v36);
      }
    }

    else
    {
      sub_24DF8BFF4(v49, &qword_27F1DEEA0, qword_24E369EA0);

      __swift_destroy_boxed_opaque_existential_1(v43);
    }
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E24A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  OUTLINED_FUNCTION_32();
  a18 = v52;
  a19 = v53;
  OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  OUTLINED_FUNCTION_0_14();
  a15 = v55;
  a16 = v54;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v56);
  a14 = &a9 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  OUTLINED_FUNCTION_4_5(v58);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v59);
  v60 = OUTLINED_FUNCTION_42_8();
  a17 = type metadata accessor for ReportFriendAction(v60);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_1();
  v63 = OUTLINED_FUNCTION_79_0(v62);
  v64 = OUTLINED_FUNCTION_4_5(v63);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_1();
  v65 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v67 = v66;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_46_6();
  a20 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  a18 = v69;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7_1();
  v73 = v72 - v71;
  OUTLINED_FUNCTION_47_4(&a49);
  OUTLINED_FUNCTION_38_8();
  OUTLINED_FUNCTION_33_11();
  if (!v74)
  {
    v75 = *(v49 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph);
    if (v75)
    {
      a12 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph;
      a10 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      inited = swift_initStackObject();
      a11 = xmmword_24E367D20;
      v77 = OUTLINED_FUNCTION_8_68(inited, xmmword_24E367D20);
      v78 = MEMORY[0x277D837D0];
      v77[2].n128_u64[0] = v79;
      v77[2].n128_u64[1] = v80;
      v77[4].n128_u64[1] = v78;
      v77[3].n128_u64[0] = 0x74726F706572;
      v77[3].n128_u64[1] = 0xE600000000000000;
      a13 = v75;

      sub_24E0E8958(&a49, &a21, &qword_27F1DEEA0, qword_24E369EA0);
      v81 = sub_24E347C28();
      if (qword_27F1DD808 != -1)
      {
        OUTLINED_FUNCTION_1_43(&qword_27F1DD808);
      }

      v82 = sub_24E347058();
      __swift_project_value_buffer(v82, qword_27F20AE00);
      OUTLINED_FUNCTION_41_9();
      MEMORY[0x25303DB90]();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
      v83 = OUTLINED_FUNCTION_77_0();
      *(v83 + 16) = a11;
      (*(v67 + 16))(v83 + v81, v50, v65);
      sub_24E347448();
      sub_24E3471D8();
      (*(v67 + 8))(v50, v65);
      v84 = *(v52 - 232);
      v86 = a17;
      v85 = a18;
      v87 = a19;
      v88 = a20;
      (*(a18 + 16))(a19 + *(a17 + 20), v73, a20);
      *v87 = v84;
      if (*(v49 + a12))
      {
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
        v90 = v84;

        v91 = a10;
        sub_24E347328();

        v92 = OUTLINED_FUNCTION_49_6();
        OUTLINED_FUNCTION_17_4(v92, v93, v89);
        if (v74)
        {

          sub_24DF8BFF4(&a49, &qword_27F1DEEA0, qword_24E369EA0);
          OUTLINED_FUNCTION_5_95();
          (*(v85 + 8))(v73, v88);
          sub_24DF8BFF4(v91, &unk_27F1EAC90, &unk_24E36E890);
        }

        else
        {
          a24 = v86;
          a25 = sub_24E24FE58(&qword_27F1E0AD0, type metadata accessor for ReportFriendAction, &unk_24E383B30);
          v95 = __swift_allocate_boxed_opaque_existential_1(&a21);
          sub_24E24FEA0(a19, v95, type metadata accessor for ReportFriendAction);
          v97 = a14;
          v96 = a15;
          v98 = a16;
          (*(a15 + 104))(a14, *MEMORY[0x277D21E18], a16);
          sub_24E3473B8();

          sub_24DF8BFF4(&a49, &qword_27F1DEEA0, qword_24E369EA0);
          (*(v96 + 8))(v97, v98);
          OUTLINED_FUNCTION_5_95();
          (*(v85 + 8))(v73, a20);
          __swift_destroy_boxed_opaque_existential_1(&a21);
          OUTLINED_FUNCTION_22_0();
          v99 = OUTLINED_FUNCTION_60();
          v100(v99);
        }
      }

      else
      {
        v94 = v84;

        sub_24DF8BFF4(&a49, &qword_27F1DEEA0, qword_24E369EA0);
        OUTLINED_FUNCTION_5_95();
        (*(v85 + 8))(v73, v88);
      }
    }
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E24A99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  OUTLINED_FUNCTION_32();
  a18 = v53;
  a19 = v54;
  OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  OUTLINED_FUNCTION_0_14();
  a13 = v56;
  a14 = v55;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v57);
  a12 = &a9 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  OUTLINED_FUNCTION_4_5(v59);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_32_14();
  v61 = type metadata accessor for RemoveFriendAction(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_42_8();
  a20 = sub_24E347278();
  OUTLINED_FUNCTION_0_14();
  a16 = v63;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_1();
  v66 = OUTLINED_FUNCTION_79_0(v65);
  v67 = OUTLINED_FUNCTION_4_5(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_7_1();
  v68 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v70 = v69;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_39_5();
  a18 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  a15 = v72;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_7_1();
  a17 = v75 - v74;
  OUTLINED_FUNCTION_47_4(&a49);
  OUTLINED_FUNCTION_38_8();
  OUTLINED_FUNCTION_33_11();
  if (!v76 && *(v53 - 223) == 1)
  {
    v77 = *(v49 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph);
    if (v77)
    {
      a11 = v51;
      v78 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      inited = swift_initStackObject();
      a9 = xmmword_24E367D20;
      v80 = OUTLINED_FUNCTION_8_68(inited, xmmword_24E367D20);
      v81 = MEMORY[0x277D837D0];
      v80[2].n128_u64[0] = v82;
      v80[2].n128_u64[1] = v83;
      v80[4].n128_u64[1] = v81;
      v80[3].n128_u64[0] = 0x65766F6D6572;
      v80[3].n128_u64[1] = 0xE600000000000000;
      sub_24E0E8958(&a49, &a21, &qword_27F1DEEA0, qword_24E369EA0);
      a10 = v78;

      sub_24E347C28();
      if (qword_27F1DD808 != -1)
      {
        OUTLINED_FUNCTION_1_43(&qword_27F1DD808);
      }

      v84 = sub_24E347058();
      __swift_project_value_buffer(v84, qword_27F20AE00);
      OUTLINED_FUNCTION_41_9();
      MEMORY[0x25303DB90]();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
      v85 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v86 = swift_allocObject();
      *(v86 + 16) = a9;
      (*(v70 + 16))(v86 + v85, v50, v68);
      sub_24E347448();
      v87 = a17;
      sub_24E3471D8();
      v88 = OUTLINED_FUNCTION_27_2();
      v89(v88);
      v90 = [objc_opt_self() localPlayer];
      v91 = *(v53 - 232);
      v92 = a15;
      v93 = a18;
      (*(a15 + 16))(v52 + *(v61 + 28), v87, a18);
      *v52 = v90;
      *(v52 + 8) = v91;
      *(v52 + 16) = 0;
      swift_unknownObjectWeakInit();
      v94 = v91;
      sub_24E2A1924(CGSizeMake, 0);
      MEMORY[0x253040FB0](&a21);
      sub_24E24FE00(v52, type metadata accessor for RemoveFriendAction);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
      v96 = a11;
      sub_24E347328();
      v97 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_17_4(v97, v98, v95);
      if (v76)
      {

        sub_24DF8BFF4(&a49, &qword_27F1DEEA0, qword_24E369EA0);
        (*(a16 + 8))(a19, a20);
        (*(v92 + 8))(v87, v93);
        sub_24DF8BFF4(v96, &unk_27F1EAC90, &unk_24E36E890);
      }

      else
      {
        v99 = a20;
        a24 = a20;
        a25 = MEMORY[0x277D21D10];
        v100 = __swift_allocate_boxed_opaque_existential_1(&a21);
        v101 = a16;
        (*(a16 + 16))(v100, a19, v99);
        v103 = a13;
        v102 = a14;
        v104 = v92;
        v105 = a12;
        (*(a13 + 104))(a12, *MEMORY[0x277D21E18], a14);
        sub_24E3473B8();
        OUTLINED_FUNCTION_72_0();

        sub_24DF8BFF4(&a49, &qword_27F1DEEA0, qword_24E369EA0);
        (*(v103 + 8))(v105, v102);
        (*(v101 + 8))(a19, a20);
        (*(v104 + 8))(a17, a18);
        __swift_destroy_boxed_opaque_existential_1(&a21);
        OUTLINED_FUNCTION_22_0();
        v106 = OUTLINED_FUNCTION_13_0();
        v107(v106);
      }
    }
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E24B0B4()
{
  OUTLINED_FUNCTION_32();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_74();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  OUTLINED_FUNCTION_4_5(v6);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_46_6();
  v9 = type metadata accessor for FriendsListAction(v8);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_47_4(v28);
  OUTLINED_FUNCTION_38_8();
  OUTLINED_FUNCTION_33_11();
  if (!v11 && v29 == 1 && *(v0 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph))
  {
    v12 = v28[18];
    sub_24E0E8958(v28, v27, &qword_27F1DEEA0, qword_24E369EA0);

    v13 = [v12 playerID];
    v14 = sub_24E347CF8();
    v16 = v15;

    v17 = sub_24E347CF8();
    v19 = v18;
    sub_24E347CF8();
    OUTLINED_FUNCTION_69_0();
    ActionMetrics.init(domain:eventType:)(v17, v19, v20, v21);
    *v3 = v14;
    *(v3 + 8) = v16;
    *(v3 + 16) = 2;
    *(v3 + *(v9 + 32)) = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
    sub_24E347328();
    OUTLINED_FUNCTION_17_4(v1, 1, v22);
    if (v11)
    {
      OUTLINED_FUNCTION_21_27();

      sub_24DF8BFF4(v28, &qword_27F1DEEA0, qword_24E369EA0);
      sub_24DF8BFF4(v1, &unk_27F1EAC90, &unk_24E36E890);
    }

    else
    {
      v27[3] = v9;
      v27[4] = sub_24E24FE58(&qword_27F1DEEA8, type metadata accessor for FriendsListAction, &unk_24E369D84);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      sub_24E24FEA0(v3, boxed_opaque_existential_1, type metadata accessor for FriendsListAction);
      v24 = OUTLINED_FUNCTION_53_4();
      v25(v24);
      sub_24E3473B8();

      sub_24DF8BFF4(v28, &qword_27F1DEEA0, qword_24E369EA0);
      (*(v19 + 8))(v2, v4);
      OUTLINED_FUNCTION_21_27();
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_22_0();
      (*(v26 + 8))(v1, v22);
    }
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E24B488()
{
  OUTLINED_FUNCTION_32();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_74();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  OUTLINED_FUNCTION_4_5(v12);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_32_14();
  v14 = type metadata accessor for ExternalUrlAction(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_47_4(v32);
  OUTLINED_FUNCTION_38_8();
  OUTLINED_FUNCTION_33_11();
  if (v16)
  {
    goto LABEL_8;
  }

  if (v32[152] != 1)
  {
    goto LABEL_8;
  }

  v17 = *(v0 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph);
  if (!v17)
  {
    goto LABEL_8;
  }

  v30[1] = v6;
  sub_24E0E8958(v32, v31, &qword_27F1DEEA0, qword_24E369EA0);
  v30[2] = v17;

  sub_24E343268();
  v18 = sub_24E343288();
  OUTLINED_FUNCTION_17_4(v3, 1, v18);
  if (!v16)
  {
    v19 = sub_24E347CF8();
    v21 = v20;
    sub_24E347CF8();
    OUTLINED_FUNCTION_69_0();
    ActionMetrics.init(domain:eventType:)(v19, v21, v22, v23);
    OUTLINED_FUNCTION_22_0();
    (*(v24 + 32))(v2, v3, v18);
    *(v2 + *(v14 + 20)) = 1;
    *(v2 + *(v14 + 24)) = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
    sub_24E347328();
    OUTLINED_FUNCTION_17_4(v11, 1, v25);
    if (v16)
    {
      OUTLINED_FUNCTION_20_26();

      sub_24DF8BFF4(v32, &qword_27F1DEEA0, qword_24E369EA0);
      sub_24DF8BFF4(v11, &unk_27F1EAC90, &unk_24E36E890);
    }

    else
    {
      v31[3] = v14;
      v31[4] = sub_24E24FE58(&qword_27F1DF0A8, type metadata accessor for ExternalUrlAction, &unk_24E36D6C0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
      sub_24E24FEA0(v2, boxed_opaque_existential_1, type metadata accessor for ExternalUrlAction);
      v27 = OUTLINED_FUNCTION_53_4();
      v28(v27);
      sub_24E3473B8();
      OUTLINED_FUNCTION_72_0();

      sub_24DF8BFF4(v32, &qword_27F1DEEA0, qword_24E369EA0);
      (*(v21 + 8))(v1, v4);
      OUTLINED_FUNCTION_20_26();
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_22_0();
      (*(v29 + 8))(v11, v25);
    }

LABEL_8:
    OUTLINED_FUNCTION_18();
    return;
  }

  __break(1u);
}

void **sub_24E24B8E0(void **result)
{
  v1 = *result;
  if (*result - 1 >= 2)
  {
    v2 = v1;
    v3 = OUTLINED_FUNCTION_13_0();
    sub_24DF88BEC(v3, v4);
    v5 = OUTLINED_FUNCTION_13_0();
    sub_24DE73FA0(v5, v6);
    OUTLINED_FUNCTION_21_2();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v8 = v1;

    sub_24E346F78();

    sub_24E024148(v1, sub_24E24FDD0, v7);
  }

  return result;
}

void sub_24E24B9C8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  CGSizeMake();
  v3 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData;
  OUTLINED_FUNCTION_84(v6);
  memcpy((v1 + v3), __dst, 0x90uLL);
  sub_24DF8BF98(__src, &v4);
  sub_24DF8BFF4(v6, &qword_27F1DEEA0, qword_24E369EA0);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  sub_24E24C4D0(0);
}

uint64_t sub_24E24BA6C(char a1)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  sub_24DFE6CCC();
  v3 = swift_allocError();
  *v4 = a1;
  OUTLINED_FUNCTION_21_2();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24E346F78();

  sub_24E024148(v3, sub_24E2502BC, v5);
}

void sub_24E24BB50(uint64_t a1)
{
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_24E24C4D0(1);
  }
}

void sub_24E24BBA4(_BYTE *a1)
{
  memcpy(__dst, a1 + 8, sizeof(__dst));
  memcpy(__src, a1 + 8, sizeof(__src));
  CGSizeMake();
  v3 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData;
  OUTLINED_FUNCTION_84(v7);
  memcpy((v1 + v3), __src, 0x90uLL);
  sub_24DF8BF98(__dst, &v4);
  sub_24DF8BFF4(v7, &qword_27F1DEEA0, qword_24E369EA0);
  if (*a1 == 1)
  {
    sub_24E24BC58();
  }

  else
  {
    sub_24E24CA58();
  }
}

void sub_24E24BC58()
{
  OUTLINED_FUNCTION_32();
  v1 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_sections;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v49 = v1;
  v2 = *(v0 + v1);
  v3 = sub_24DFD8654();

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      v9 = v0;
      goto LABEL_18;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x25303F560](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_72;
    }

    if (sub_24E32CAFC(v5[16]) == 0xD000000000000011 && 0x800000024E39CDB0 == v6)
    {
      break;
    }

    v8 = sub_24E348C08();

    if (v8)
    {
      goto LABEL_16;
    }
  }

LABEL_16:

  v9 = v0;
  memcpy(v51, (v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData), 0x90uLL);
  v10 = *(*v5 + 112);

  sub_24E0E8958(v51, v50, &qword_27F1DEEA0, qword_24E369EA0);
  v11 = v10(v51, v0);
  sub_24DF8BFF4(v51, &qword_27F1DEEA0, qword_24E369EA0);

  if (v11)
  {
    sub_24E24FD64();
    v12 = sub_24E348918();
    MEMORY[0x28223BE20](v12);
    OUTLINED_FUNCTION_28_17();
    *(v13 - 16) = v50;
    *(v13 - 8) = v11;
    sub_24E0226A4(sub_24E24FDC8, v15, v14);

LABEL_37:
    sub_24DF8BE60(v50);
    OUTLINED_FUNCTION_18();
    return;
  }

LABEL_18:
  sub_24E24FD64();
  v16 = sub_24E348918();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_28_17();
  *(v17 - 16) = v50;
  sub_24E0226A4(sub_24E24FDB8, v19, v18);
  sub_24DF8BE60(v50);
  swift_beginAccess();
  v20 = *(v9 + v1);
  v21 = sub_24DFD8654();
  v22 = 0;
  while (1)
  {
    if (v21 == v22)
    {
      v22 = sub_24DFD8654();
      goto LABEL_35;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v27 = OUTLINED_FUNCTION_23_3();
      v23 = MEMORY[0x25303F560](v27);
    }

    else
    {
      if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }

      v23 = *(v20 + 8 * v22 + 32);
    }

    type metadata accessor for PlayerProfileSection();
    if (qword_27F1DDEA0 != -1)
    {
      OUTLINED_FUNCTION_16_36();
      swift_once();
    }

    v24 = qword_27F20B8E0;
    v25 = sub_24E32CEF8(v23, qword_27F20B8E0);

    v26 = __OFADD__(v22, 1);
    if (v25)
    {
      break;
    }

    ++v22;
    if (v26)
    {
      goto LABEL_75;
    }
  }

  if (v26)
  {
    goto LABEL_87;
  }

  if (v22 + 1 == sub_24DFD8654())
  {
LABEL_35:
    v28 = sub_24DFD8654();
    if (v28 < v22)
    {
      goto LABEL_83;
    }

    sub_24E25DF14(v22, v28);
    swift_endAccess();
    v29 = sub_24E348918();
    MEMORY[0x28223BE20](v29);
    OUTLINED_FUNCTION_28_17();
    *(v30 - 16) = v50;
    sub_24E0226A4(sub_24E24FDC0, v32, v31);

    goto LABEL_37;
  }

  v33 = v22 + 5;
  while (1)
  {
    v34 = v33 - 4;
    if ((v20 & 0xC000000000000001) != 0)
    {
      v48 = OUTLINED_FUNCTION_31_9();
      v36 = MEMORY[0x25303F560](v48);
    }

    else
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_73();
      if (v34 >= v35)
      {
        goto LABEL_77;
      }

      v36 = *(v20 + 8 * v33);
    }

    v37 = sub_24E32CEF8(v36, v24);

    if (v37)
    {
      goto LABEL_63;
    }

    if (v34 != v22)
    {
      break;
    }

LABEL_62:
    if (__OFADD__(v22++, 1))
    {
      goto LABEL_79;
    }

LABEL_63:
    v46 = v33 - 3;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_78;
    }

    if (v20 >> 62)
    {
      v47 = sub_24E348878();
    }

    else
    {
      v47 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v33;
    if (v46 == v47)
    {
      goto LABEL_35;
    }
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    v38 = OUTLINED_FUNCTION_23_3();
    v39 = MEMORY[0x25303F560](v38);
    v40 = OUTLINED_FUNCTION_31_9();
    v41 = MEMORY[0x25303F560](v40);
  }

  else
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_73();
    if (v22 >= v42)
    {
      goto LABEL_85;
    }

    if (v34 >= v42)
    {
      goto LABEL_86;
    }

    v39 = *(v20 + 8 * v22 + 32);
    v41 = *(v20 + 8 * v33);
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v0 + v49) = v20;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    v20 = sub_24E25ACD8();
    *(v0 + v49) = v20;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_80;
  }

  v44 = v20 & 0xFFFFFFFFFFFFFF8;
  if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_81;
  }

  *((v20 & 0xFFFFFFFFFFFFFF8) + 8 * v22 + 0x20) = v41;

  *(v0 + v49) = v20;
  if ((v20 & 0x8000000000000000) == 0 && (v20 & 0x4000000000000000) == 0)
  {
    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_60;
  }

  v20 = sub_24E25ACD8();
  *(v0 + v49) = v20;
  v44 = v20 & 0xFFFFFFFFFFFFFF8;
  if ((v34 & 0x8000000000000000) == 0)
  {
LABEL_60:
    if (v34 >= *(v44 + 16))
    {
      goto LABEL_82;
    }

    *(v44 + 8 * v33) = v39;

    *(v0 + v49) = v20;
    goto LABEL_62;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
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
}

void sub_24E24C2B4(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  v6 = OUTLINED_FUNCTION_4_5(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = sub_24E347118();
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_39_5();
  *(v3 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph) = a1;

  if (*(v3 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_pageMericsPresenter))
  {

    sub_24E24660C();
    OUTLINED_FUNCTION_17_4(v12, 1, v13);
    if (v17)
    {

      sub_24DF8BFF4(v12, &qword_27F1E6C60, &unk_24E36C0F0);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_26_0();
      v19(v18);
      (*(v15 + 16))(v9, v2, v13);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
      sub_24E347698();

      (*(v15 + 8))(v2, v13);
    }
  }

  sub_24E24C4D0(0);
}

void sub_24E24C4D0(char a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v5);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_9();
  if ((*(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 1;

    sub_24E346F78();

    sub_24E348098();
    v7 = OUTLINED_FUNCTION_49_6();
    __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v3;
    *(v10 + 40) = a1 & 1;
    v11 = v3;
    sub_24DFC8700(0, 0, v2, &unk_24E387500, v10);
  }
}

uint64_t sub_24E24C5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_24E090108;

  return sub_24E24C698();
}

uint64_t sub_24E24C698()
{
  OUTLINED_FUNCTION_9_7();
  *(v1 + 16) = v0;
  *(v1 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v3);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E24C730, 0, 0);
}

uint64_t sub_24E24C730(uint64_t a1)
{
  if (sub_24E287CE4())
  {
    sub_24E20EA5C();
  }

  else
  {
    v2 = sub_24E287C88();
    v3 = *(v1 + 16);
    if ((v2 & 1) != 0 && ((v4 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredDataPresenter, !*&v3[OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredDataPresenter]) || *(v1 + 32)))
    {
      v16 = sub_24E287BD0();
      if (*&v3[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_playerId + 8])
      {
        v17 = *&v3[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_playerId];
        v18 = *&v3[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_playerId + 8];
      }

      else
      {
        v19 = sub_24E287BD0();
        v20 = [v19 internal];

        v21 = [v20 playerID];
        v17 = sub_24E347CF8();
        v18 = v22;
      }

      type metadata accessor for PlayerProfileRequiredDataPresenter();
      swift_allocObject();

      v23 = sub_24DFE2694(v16, v17, v18);
      sub_24E2474B4(v23);
      if (!*&v3[v4])
      {
        goto LABEL_8;
      }

      sub_24DFE35D8();
    }

    else
    {
      v5 = *(v1 + 24);
      sub_24E348098();
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
      sub_24E348068();
      v10 = v3;
      v11 = sub_24E348058();
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D85700];
      v12[2] = v11;
      v12[3] = v13;
      v12[4] = v10;
      sub_24DFC8700(0, 0, v5, &unk_24E3874F0, v12);
    }
  }

LABEL_8:

  OUTLINED_FUNCTION_12_5();

  return v14();
}

uint64_t sub_24E24C964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24E348068();
  *(v4 + 24) = sub_24E348058();
  v6 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E24C9FC, v6, v5);
}

uint64_t sub_24E24C9FC()
{
  OUTLINED_FUNCTION_9_7();

  sub_24E24CA58();
  OUTLINED_FUNCTION_12_5();

  return v0();
}

void sub_24E24CA58()
{
  OUTLINED_FUNCTION_32();
  v4 = MEMORY[0x277D84F90];
  v108 = MEMORY[0x277D84F90];
  v100 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_profileType;
  v5 = v0;
  v103 = v0;
  switch(*(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_profileType))
  {
    case 1:
      if (qword_27F1DDBE8 != -1)
      {
        goto LABEL_415;
      }

      goto LABEL_6;
    case 2:
      if (qword_27F1DDBF0 != -1)
      {
        swift_once();
      }

      v4 = qword_27F20B420;
      goto LABEL_12;
    case 3:
      goto LABEL_13;
    default:
      v6 = sub_24E287BD0();
      v7 = sub_24E245A0C();

      if ((v7 & 1) == 0)
      {
        if (qword_27F1DDBC8 != -1)
        {
          goto LABEL_419;
        }

        goto LABEL_11;
      }

      memcpy(v105, (v5 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData), sizeof(v105));
      memcpy(v106, (v5 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData), sizeof(v106));
      if (sub_24DF8BF80(v106) == 1)
      {
        v4 = MEMORY[0x277D84F90];
        goto LABEL_13;
      }

LABEL_311:
      v89 = v106[0];
      sub_24E0E8958(v105, v104, &qword_27F1DEEA0, qword_24E369EA0);
      v90 = [v89 playerID];
      v1 = sub_24E347CF8();
      v5 = v91;

      v92 = sub_24E287BD0();
      v93 = [v92 internal];

      v2 = [v93 playerID];
      v94 = sub_24E347CF8();
      v96 = v95;

      if (v1 == v94 && v5 == v96)
      {

        goto LABEL_323;
      }

      OUTLINED_FUNCTION_26_0();
      v1 = sub_24E348C08();

      if (v1)
      {
LABEL_323:
        objc_allocWithZone(type metadata accessor for NicknamePresenter());

        v99 = sub_24E2EED10(v98);
        sub_24E247628(v99);
        sub_24E247628(0);
        if (qword_27F1DDBD0 != -1)
        {
          swift_once();
        }

        v4 = qword_27F20B400;
        goto LABEL_326;
      }

      if ([v89 achievementsVisibility] && (objc_msgSend(v89, sel_achievementsVisibility) != 1 || BYTE1(v106[1]) != 1))
      {
        goto LABEL_329;
      }

      sub_24E247628(0);
      if (qword_27F1DDBD8 != -1)
      {
        swift_once();
      }

      v4 = qword_27F20B408;
LABEL_326:

      sub_24DF8BFF4(v105, &qword_27F1DEEA0, qword_24E369EA0);
      v108 = v4;
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_24E36BFC0;
      if (qword_27F1DDF10 == -1)
      {
        goto LABEL_14;
      }

LABEL_362:
      swift_once();
LABEL_14:
      *(v8 + 32) = qword_27F20B950;
      v9 = qword_27F1DDF18;

      if (v9 != -1)
      {
        swift_once();
      }

      *(v8 + 40) = qword_27F20B958;
      v104[0] = v8;

      v101 = v8;
      if (GKIsRemoteUI())
      {
        goto LABEL_40;
      }

      sub_24DFD8654();
      OUTLINED_FUNCTION_65_1();
      while (1)
      {
        if (v5 == v1)
        {
          v1 = sub_24DFD8654();
          goto LABEL_34;
        }

        if (v8)
        {
          v14 = OUTLINED_FUNCTION_27_2();
          MEMORY[0x25303F560](v14);
        }

        else
        {
          if (v1 >= *(v2 + 16))
          {
            goto LABEL_337;
          }
        }

        type metadata accessor for PlayerProfileSection();
        if (qword_27F1DDEF0 != -1)
        {
          OUTLINED_FUNCTION_3_101();
          swift_once();
        }

        v10 = qword_27F20B930;
        v11 = OUTLINED_FUNCTION_31_9();
        v3 = sub_24E32CEF8(v11, v12);

        v13 = __OFADD__(v1, 1);
        if (v3)
        {
          break;
        }

        ++v1;
        if (v13)
        {
          goto LABEL_338;
        }
      }

      if (v13)
      {
        __break(1u);
        goto LABEL_417;
      }

      if (v1 + 1 != sub_24DFD8654())
      {
        v3 = v1 + 5;
        do
        {
          v2 = v3 - 4;
          v8 = v4 & 0xC000000000000001;
          if ((v4 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_83();
            v5 = v75;
          }

          else
          {
            if ((v2 & 0x8000000000000000) != 0)
            {
              goto LABEL_346;
            }

            OUTLINED_FUNCTION_63_2();
            if (v2 >= v70)
            {
              goto LABEL_347;
            }

            v5 = *(v4 + 8 * v3);
          }

          v71 = sub_24E32CEF8(v5, v10);

          if ((v71 & 1) == 0)
          {
            if (v2 != v1)
            {
              if (v8)
              {
                v72 = OUTLINED_FUNCTION_27_2();
                v102 = MEMORY[0x25303F560](v72);
                OUTLINED_FUNCTION_83();
              }

              else
              {
                if ((v1 & 0x8000000000000000) != 0)
                {
                  goto LABEL_406;
                }

                OUTLINED_FUNCTION_63_2();
                if (v1 >= v73)
                {
                  goto LABEL_407;
                }

                if (v2 >= v73)
                {
                  goto LABEL_408;
                }

                OUTLINED_FUNCTION_78();
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
              {
                v4 = sub_24E25ACD8();
                v5 = (v4 >> 62) & 1;
              }

              else
              {
                v5 = 0;
              }

              OUTLINED_FUNCTION_76_0();
              if ((v4 & 0x8000000000000000) != 0 || v5)
              {
                v4 = sub_24E25ACD8();
                v8 = v4 & 0xFFFFFFFFFFFFFF8;
                if ((v2 & 0x8000000000000000) != 0)
                {
LABEL_244:
                  __break(1u);
                  goto LABEL_245;
                }
              }

              else if ((v2 & 0x8000000000000000) != 0)
              {
                goto LABEL_244;
              }

              if (v2 >= *(v8 + 16))
              {
                goto LABEL_374;
              }

              *(v8 + 8 * v3) = v102;

              v108 = v4;
            }

            v17 = __OFADD__(v1++, 1);
            if (v17)
            {
              goto LABEL_357;
            }
          }

          v8 = v3 - 3;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_348;
          }

          if (v4 >> 62)
          {
            v74 = sub_24E348878();
          }

          else
          {
            v74 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v3;
        }

        while (v8 != v74);
      }

LABEL_34:
      v15 = sub_24DFD8654();
      v16 = v15 - v1;
      if (v15 >= v1)
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_387;
        }

        v5 = v15;
        if (sub_24DFD8654() < v15)
        {
          goto LABEL_388;
        }

        v17 = __OFSUB__(0, v16);
        v18 = -v16;
        if (v17)
        {
          goto LABEL_389;
        }

        if (__OFADD__(sub_24DFD8654(), v18))
        {
          goto LABEL_390;
        }

        OUTLINED_FUNCTION_60_1();
        v19 = OUTLINED_FUNCTION_26_0();
        sub_24E05F0B4(v19, v20, 0);
        v4 = v108;
LABEL_40:
        sub_24DFD8654();
        OUTLINED_FUNCTION_65_1();
        while (1)
        {
          if (v5 == v1)
          {
            v1 = sub_24DFD8654();
            goto LABEL_57;
          }

          if (v8)
          {
            v25 = OUTLINED_FUNCTION_27_2();
            MEMORY[0x25303F560](v25);
          }

          else
          {
            if (v1 >= *(v2 + 16))
            {
              __break(1u);
LABEL_328:
              __break(1u);
LABEL_329:
              sub_24E247628(0);
              if (qword_27F1DDBE0 != -1)
              {
                swift_once();
              }

              v4 = qword_27F20B410;
              goto LABEL_326;
            }
          }

          type metadata accessor for PlayerProfileSection();
          if (qword_27F1DDEB8 != -1)
          {
            swift_once();
          }

          v21 = qword_27F20B8F8;
          v22 = OUTLINED_FUNCTION_31_9();
          v3 = sub_24E32CEF8(v22, v23);

          v24 = __OFADD__(v1, 1);
          if (v3)
          {
            if (!v24)
            {
              if (v1 + 1 != sub_24DFD8654())
              {
                goto LABEL_142;
              }

LABEL_57:
              v26 = sub_24DFD8654();
              v27 = v26 - v1;
              if (v26 < v1)
              {
                __break(1u);
LABEL_364:
                __break(1u);
LABEL_365:
                __break(1u);
LABEL_366:
                __break(1u);
                goto LABEL_367;
              }

              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_364;
              }

              if (sub_24DFD8654() < v26)
              {
                goto LABEL_365;
              }

              v17 = __OFSUB__(0, v27);
              v28 = -v27;
              if (v17)
              {
                goto LABEL_366;
              }

              if (!__OFADD__(sub_24DFD8654(), v28))
              {
                OUTLINED_FUNCTION_60_1();
                v29 = OUTLINED_FUNCTION_26_0();
                v31 = sub_24E05F0B4(v29, v30, 0);
                v1 = v108;
                if (qword_27F1DDED0 == -1)
                {
                  goto LABEL_63;
                }

                goto LABEL_368;
              }

LABEL_367:
              __break(1u);
LABEL_368:
              v31 = swift_once();
LABEL_63:
              v106[0] = qword_27F20B910;
              MEMORY[0x28223BE20](v31);
              OUTLINED_FUNCTION_28_17();
              *(v32 - 16) = v106;
              v4 = 0;
              if (sub_24E024034(sub_24E24FBEC, v33, v1))
              {

                MEMORY[0x25303EA30](v34);
                OUTLINED_FUNCTION_43_7();
                if (!v35)
                {
                  goto LABEL_65;
                }

                goto LABEL_392;
              }

              goto LABEL_66;
            }

            goto LABEL_391;
          }

          ++v1;
          if (v24)
          {
            goto LABEL_328;
          }
        }
      }

      while (1)
      {
        __break(1u);
LABEL_387:
        __break(1u);
LABEL_388:
        __break(1u);
LABEL_389:
        __break(1u);
LABEL_390:
        __break(1u);
LABEL_391:
        __break(1u);
LABEL_392:
        sub_24E347F48();
LABEL_65:
        sub_24E347F88();
        v101 = v104[0];
LABEL_66:
        v36 = sub_24DFD8654();
        v21 = 0;
        v5 = v1 & 0xC000000000000001;
        v8 = v1 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v36 == v21)
          {
            v21 = sub_24DFD8654();
            goto LABEL_85;
          }

          if (v5)
          {
            v37 = OUTLINED_FUNCTION_48_4();
            v3 = MEMORY[0x25303F560](v37);
          }

          else
          {
            if (v21 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_333:
              __break(1u);
LABEL_334:
              __break(1u);
LABEL_335:
              __break(1u);
LABEL_336:
              __break(1u);
LABEL_337:
              __break(1u);
LABEL_338:
              __break(1u);
LABEL_339:
              __break(1u);
LABEL_340:
              __break(1u);
LABEL_341:
              __break(1u);
LABEL_342:
              __break(1u);
LABEL_343:
              __break(1u);
LABEL_344:
              __break(1u);
LABEL_345:
              __break(1u);
LABEL_346:
              __break(1u);
LABEL_347:
              __break(1u);
LABEL_348:
              __break(1u);
LABEL_349:
              __break(1u);
LABEL_350:
              __break(1u);
LABEL_351:
              __break(1u);
LABEL_352:
              __break(1u);
LABEL_353:
              __break(1u);
LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
              goto LABEL_362;
            }

            OUTLINED_FUNCTION_85();
          }

          type metadata accessor for PlayerProfileSection();
          if (qword_27F1DDEE8 != -1)
          {
            swift_once();
          }

          v2 = qword_27F20B928;
          if (sub_24E32CEF8(v3, qword_27F20B928))
          {
            break;
          }

          if (qword_27F1DDEF0 != -1)
          {
            OUTLINED_FUNCTION_3_101();
            swift_once();
          }

          v4 = sub_24E32CEF8(v3, qword_27F20B930);

          if (v4)
          {
            goto LABEL_83;
          }

          v17 = __OFADD__(v21++, 1);
          if (v17)
          {
            goto LABEL_333;
          }
        }

LABEL_83:
        v4 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_385;
        }

        if (v4 == sub_24DFD8654())
        {
LABEL_85:
          v38 = sub_24DFD8654();
          v39 = v38 - v21;
          if (v38 < v21)
          {
            __break(1u);
          }

          else if ((v21 & 0x8000000000000000) == 0)
          {
            v4 = v38;
            if (sub_24DFD8654() >= v38)
            {
              v17 = __OFSUB__(0, v39);
              v40 = -v39;
              if (!v17)
              {
                if (!__OFADD__(sub_24DFD8654(), v40))
                {
                  OUTLINED_FUNCTION_60_1();
                  sub_24E05F0B4(v21, v4, 0);
                  v1 = v108;
                  if (*(v103 + v100) == 2)
                  {
                    goto LABEL_206;
                  }

                  v5 = sub_24DFD8654();
                  v10 = 0;
                  v8 = v1 & 0xC000000000000001;
                  while (1)
                  {
                    if (v5 == v10)
                    {
                      goto LABEL_175;
                    }

                    if (v8)
                    {
                      v42 = OUTLINED_FUNCTION_48_4();
                      MEMORY[0x25303F560](v42);
                    }

                    else
                    {
                      if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_340;
                      }
                    }

                    type metadata accessor for PlayerProfileSection();
                    if (qword_27F1DDEB0 != -1)
                    {
                      swift_once();
                    }

                    v2 = qword_27F20B8F0;
                    v3 = OUTLINED_FUNCTION_61_1();

                    v4 = v10 + 1;
                    v41 = __OFADD__(v10, 1);
                    if (v3)
                    {
                      break;
                    }

                    ++v10;
                    if (v41)
                    {
                      goto LABEL_343;
                    }
                  }

                  if (!v41)
                  {
                    if (v4 == sub_24DFD8654())
                    {
                      goto LABEL_178;
                    }

LABEL_245:
                    v8 = v10 + 5;
                    while (1)
                    {
                      v76 = v8 - 4;
                      v3 = v1 & 0xC000000000000001;
                      if ((v1 & 0xC000000000000001) != 0)
                      {
                        v4 = MEMORY[0x25303F560](v8 - 4, v1);
                      }

                      else
                      {
                        if ((v76 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_350;
                        }

                        OUTLINED_FUNCTION_71_0();
                        if (v76 >= v77)
                        {
                          goto LABEL_351;
                        }

                        v4 = *(v1 + 8 * v8);
                      }

                      v5 = OUTLINED_FUNCTION_61_1();

                      if ((v5 & 1) == 0)
                      {
                        if (v76 != v10)
                        {
                          if (v3)
                          {
                            v78 = OUTLINED_FUNCTION_48_4();
                            v102 = MEMORY[0x25303F560](v78);
                            v4 = MEMORY[0x25303F560](v8 - 4, v1);
                          }

                          else
                          {
                            if ((v10 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_409;
                            }

                            OUTLINED_FUNCTION_71_0();
                            if (v10 >= v79)
                            {
                              goto LABEL_410;
                            }

                            if (v76 >= v79)
                            {
                              goto LABEL_411;
                            }

                            v4 = *(v1 + 8 * v8);
                            v102 = *(v1 + 8 * v10 + 32);
                          }

                          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
                          {
                            v1 = sub_24E25ACD8();
                            v5 = (v1 >> 62) & 1;
                          }

                          else
                          {
                            v5 = 0;
                          }

                          v3 = v1 & 0xFFFFFFFFFFFFFF8;
                          *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v4;

                          if ((v1 & 0x8000000000000000) != 0 || v5)
                          {
                            v1 = sub_24E25ACD8();
                            v3 = v1 & 0xFFFFFFFFFFFFFF8;
                            if ((v76 & 0x8000000000000000) != 0)
                            {
LABEL_277:
                              __break(1u);
                              goto LABEL_278;
                            }
                          }

                          else if ((v76 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_277;
                          }

                          if (v76 >= *(v3 + 16))
                          {
                            goto LABEL_380;
                          }

                          *(v3 + 8 * v8) = v102;

                          v108 = v1;
                        }

                        v17 = __OFADD__(v10++, 1);
                        if (v17)
                        {
                          goto LABEL_359;
                        }
                      }

                      v4 = v8 - 3;
                      if (__OFADD__(v76, 1))
                      {
                        goto LABEL_352;
                      }

                      if (v1 >> 62)
                      {
                        v80 = OUTLINED_FUNCTION_59_1();
                      }

                      else
                      {
                        v80 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      ++v8;
                      if (v4 == v80)
                      {
                        goto LABEL_178;
                      }
                    }
                  }

LABEL_417:
                  __break(1u);
LABEL_418:
                  __break(1u);
LABEL_419:
                  swift_once();
LABEL_11:
                  v4 = qword_27F20B3F8;
LABEL_12:
                  v108 = v4;

                  goto LABEL_13;
                }

LABEL_373:
                __break(1u);
LABEL_374:
                __break(1u);
LABEL_375:
                __break(1u);
                goto LABEL_376;
              }

LABEL_372:
              __break(1u);
              goto LABEL_373;
            }

LABEL_371:
            __break(1u);
            goto LABEL_372;
          }

          __break(1u);
          goto LABEL_371;
        }

        v43 = v21 + 5;
        while (2)
        {
          v3 = v43 - 4;
          v8 = v1 & 0xC000000000000001;
          if ((v1 & 0xC000000000000001) != 0)
          {
            v4 = MEMORY[0x25303F560](v43 - 4, v1);
          }

          else
          {
            if ((v3 & 0x8000000000000000) != 0)
            {
              goto LABEL_334;
            }

            OUTLINED_FUNCTION_71_0();
            if (v3 >= v44)
            {
              goto LABEL_335;
            }

            v4 = *(v1 + 8 * v43);
          }

          if (OUTLINED_FUNCTION_61_1())
          {

            goto LABEL_133;
          }

          if (qword_27F1DDEF0 != -1)
          {
            OUTLINED_FUNCTION_3_101();
            swift_once();
          }

          v5 = sub_24E32CEF8(v4, qword_27F20B930);

          if (v5)
          {
            goto LABEL_133;
          }

          if (v3 == v21)
          {
            goto LABEL_132;
          }

          if (v8)
          {
            v45 = OUTLINED_FUNCTION_48_4();
            v102 = MEMORY[0x25303F560](v45);
            v4 = MEMORY[0x25303F560](v43 - 4, v1);
          }

          else
          {
            if ((v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_398;
            }

            OUTLINED_FUNCTION_71_0();
            if (v21 >= v46)
            {
              goto LABEL_399;
            }

            if (v3 >= v46)
            {
              goto LABEL_400;
            }

            v4 = *(v1 + 8 * v43);
            v102 = *(v1 + 8 * v21 + 32);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
          {
            v1 = sub_24E25ACD8();
            v5 = (v1 >> 62) & 1;
          }

          else
          {
            v5 = 0;
          }

          v8 = v1 & 0xFFFFFFFFFFFFFF8;
          *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 0x20) = v4;

          if ((v1 & 0x8000000000000000) == 0 && !v5)
          {
            if ((v3 & 0x8000000000000000) != 0)
            {
              goto LABEL_141;
            }

LABEL_130:
            if (v3 >= *(v8 + 16))
            {
              goto LABEL_361;
            }

            *(v8 + 8 * v43) = v102;

            v108 = v1;
LABEL_132:
            v17 = __OFADD__(v21++, 1);
            if (v17)
            {
              goto LABEL_356;
            }

LABEL_133:
            v4 = v43 - 3;
            if (__OFADD__(v3, 1))
            {
              goto LABEL_336;
            }

            if (v1 >> 62)
            {
              v47 = OUTLINED_FUNCTION_59_1();
            }

            else
            {
              v47 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v43;
            if (v4 == v47)
            {
              goto LABEL_85;
            }

            continue;
          }

          break;
        }

        v1 = sub_24E25ACD8();
        v8 = v1 & 0xFFFFFFFFFFFFFF8;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_130;
        }

LABEL_141:
        __break(1u);
LABEL_142:
        v3 = v1 + 5;
        while (2)
        {
          v2 = v3 - 4;
          v8 = v4 & 0xC000000000000001;
          if ((v4 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_83();
            v5 = v53;
          }

          else
          {
            if ((v2 & 0x8000000000000000) != 0)
            {
              goto LABEL_339;
            }

            OUTLINED_FUNCTION_63_2();
            if (v2 >= v48)
            {
              goto LABEL_341;
            }

            v5 = *(v4 + 8 * v3);
          }

          v49 = sub_24E32CEF8(v5, v21);

          if (v49)
          {
            goto LABEL_166;
          }

          if (v2 == v1)
          {
            goto LABEL_165;
          }

          if (v8)
          {
            v50 = OUTLINED_FUNCTION_27_2();
            v102 = MEMORY[0x25303F560](v50);
            OUTLINED_FUNCTION_83();
          }

          else
          {
            if ((v1 & 0x8000000000000000) != 0)
            {
              goto LABEL_382;
            }

            OUTLINED_FUNCTION_63_2();
            if (v1 >= v51)
            {
              goto LABEL_383;
            }

            if (v2 >= v51)
            {
              goto LABEL_384;
            }

            OUTLINED_FUNCTION_78();
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = sub_24E25ACD8();
            v5 = (v4 >> 62) & 1;
          }

          else
          {
            v5 = 0;
          }

          OUTLINED_FUNCTION_76_0();
          if ((v4 & 0x8000000000000000) == 0 && !v5)
          {
            if ((v2 & 0x8000000000000000) != 0)
            {
              goto LABEL_174;
            }

LABEL_163:
            if (v2 >= *(v8 + 16))
            {
              goto LABEL_358;
            }

            *(v8 + 8 * v3) = v102;

            v108 = v4;
LABEL_165:
            v17 = __OFADD__(v1++, 1);
            if (v17)
            {
              goto LABEL_349;
            }

LABEL_166:
            v8 = v3 - 3;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_342;
            }

            if (v4 >> 62)
            {
              v52 = sub_24E348878();
            }

            else
            {
              v52 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v3;
            if (v8 == v52)
            {
              goto LABEL_57;
            }

            continue;
          }

          break;
        }

        v4 = sub_24E25ACD8();
        v8 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_163;
        }

LABEL_174:
        __break(1u);
LABEL_175:
        v10 = sub_24DFD8654();
LABEL_178:
        v54 = sub_24DFD8654();
        v55 = v54 - v10;
        if (v54 < v10)
        {
          __break(1u);
LABEL_394:
          __break(1u);
LABEL_395:
          __break(1u);
LABEL_396:
          __break(1u);
LABEL_397:
          __break(1u);
LABEL_398:
          __break(1u);
LABEL_399:
          __break(1u);
LABEL_400:
          __break(1u);
LABEL_401:
          __break(1u);
LABEL_402:
          __break(1u);
LABEL_403:
          __break(1u);
LABEL_404:
          __break(1u);
LABEL_405:
          __break(1u);
LABEL_406:
          __break(1u);
LABEL_407:
          __break(1u);
LABEL_408:
          __break(1u);
LABEL_409:
          __break(1u);
LABEL_410:
          __break(1u);
LABEL_411:
          __break(1u);
LABEL_412:
          __break(1u);
LABEL_413:
          __break(1u);
LABEL_414:
          __break(1u);
LABEL_415:
          swift_once();
LABEL_6:
          v4 = qword_27F20B418;
          goto LABEL_12;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_394;
        }

        v4 = v54;
        if (sub_24DFD8654() < v54)
        {
          goto LABEL_395;
        }

        v17 = __OFSUB__(0, v55);
        v56 = -v55;
        if (v17)
        {
          goto LABEL_396;
        }

        if (__OFADD__(sub_24DFD8654(), v56))
        {
          goto LABEL_397;
        }

        OUTLINED_FUNCTION_60_1();
        sub_24E05F0B4(v10, v4, 0);
        v10 = v108;
        v5 = sub_24DFD8654();
        v1 = 0;
        v8 = v10 & 0xC000000000000001;
        while (1)
        {
          if (v5 == v1)
          {
            v1 = sub_24DFD8654();
            goto LABEL_200;
          }

          if (v8)
          {
            v58 = OUTLINED_FUNCTION_23_3();
            MEMORY[0x25303F560](v58);
          }

          else
          {
            if (v1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_344;
            }
          }

          type metadata accessor for PlayerProfileSection();
          if (qword_27F1DDEA0 != -1)
          {
            OUTLINED_FUNCTION_16_36();
            swift_once();
          }

          v2 = qword_27F20B8E0;
          v3 = OUTLINED_FUNCTION_61_1();

          v4 = v1 + 1;
          v57 = __OFADD__(v1, 1);
          if (v3)
          {
            break;
          }

          ++v1;
          if (v57)
          {
            goto LABEL_345;
          }
        }

        if (v57)
        {
          goto LABEL_418;
        }

        if (v4 != sub_24DFD8654())
        {
LABEL_278:
          v8 = v1 + 5;
          do
          {
            v81 = v8 - 4;
            v3 = v10 & 0xC000000000000001;
            if ((v10 & 0xC000000000000001) != 0)
            {
              v88 = OUTLINED_FUNCTION_31_9();
              v4 = MEMORY[0x25303F560](v88);
            }

            else
            {
              if ((v81 & 0x8000000000000000) != 0)
              {
                goto LABEL_353;
              }

              OUTLINED_FUNCTION_73();
              if (v81 >= v82)
              {
                goto LABEL_354;
              }

              v4 = *(v10 + 8 * v8);
            }

            v5 = OUTLINED_FUNCTION_61_1();

            if ((v5 & 1) == 0)
            {
              if (v81 != v1)
              {
                if (v3)
                {
                  v83 = OUTLINED_FUNCTION_23_3();
                  v84 = MEMORY[0x25303F560](v83);
                  v85 = OUTLINED_FUNCTION_31_9();
                  v4 = MEMORY[0x25303F560](v85);
                }

                else
                {
                  if ((v1 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_412;
                  }

                  OUTLINED_FUNCTION_73();
                  if (v1 >= v86)
                  {
                    goto LABEL_413;
                  }

                  if (v81 >= v86)
                  {
                    goto LABEL_414;
                  }

                  v84 = *(v10 + 8 * v1 + 32);
                  v4 = *(v10 + 8 * v8);
                }

                v102 = v84;
                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
                {
                  v10 = sub_24E25ACD8();
                  v5 = (v10 >> 62) & 1;
                }

                else
                {
                  v5 = 0;
                }

                v3 = v10 & 0xFFFFFFFFFFFFFF8;
                *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v1 + 0x20) = v4;

                if ((v10 & 0x8000000000000000) != 0 || v5)
                {
                  v10 = sub_24E25ACD8();
                  v3 = v10 & 0xFFFFFFFFFFFFFF8;
                  if ((v81 & 0x8000000000000000) != 0)
                  {
LABEL_310:
                    __break(1u);
                    goto LABEL_311;
                  }
                }

                else if ((v81 & 0x8000000000000000) != 0)
                {
                  goto LABEL_310;
                }

                if (v81 >= *(v3 + 16))
                {
                  goto LABEL_381;
                }

                *(v3 + 8 * v8) = v102;

                v108 = v10;
              }

              v17 = __OFADD__(v1++, 1);
              if (v17)
              {
                goto LABEL_360;
              }
            }

            v4 = v8 - 3;
            if (__OFADD__(v81, 1))
            {
              goto LABEL_355;
            }

            if (v10 >> 62)
            {
              v87 = sub_24E348878();
            }

            else
            {
              v87 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v8;
          }

          while (v4 != v87);
        }

LABEL_200:
        v59 = sub_24DFD8654();
        v60 = v59 - v1;
        if (v59 < v1)
        {
          goto LABEL_401;
        }

        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_402;
        }

        if (sub_24DFD8654() < v59)
        {
          goto LABEL_403;
        }

        v17 = __OFSUB__(0, v60);
        v61 = -v60;
        if (v17)
        {
          goto LABEL_404;
        }

        if (__OFADD__(sub_24DFD8654(), v61))
        {
          goto LABEL_405;
        }

        OUTLINED_FUNCTION_60_1();
        v62 = OUTLINED_FUNCTION_27_2();
        sub_24E05F0B4(v62, v63, 0);
        v1 = v108;
LABEL_206:
        v64 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_sections;
        swift_beginAccess();
        *(v103 + v64) = v1;
        swift_bridgeObjectRetain_n();

        v107 = v1;
        v4 = sub_24E24F8B4(&v107, v104);
        v65 = sub_24DFD8654();
        v66 = v65 - v4;
        if (v65 < v4)
        {
          goto LABEL_375;
        }

        if ((v4 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_376:
        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
LABEL_379:
        __break(1u);
LABEL_380:
        __break(1u);
LABEL_381:
        __break(1u);
LABEL_382:
        __break(1u);
LABEL_383:
        __break(1u);
LABEL_384:
        __break(1u);
LABEL_385:
        __break(1u);
      }

      v67 = v65;
      if (sub_24DFD8654() < v65)
      {
        goto LABEL_377;
      }

      v17 = __OFSUB__(0, v66);
      v68 = -v66;
      if (v17)
      {
        goto LABEL_378;
      }

      if (__OFADD__(sub_24DFD8654(), v68))
      {
        goto LABEL_379;
      }

      sub_24E05F670();
      sub_24E05F0B4(v4, v67, 0);
      v69 = v107;

      *(v103 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_primarySections) = v69;

      *(v103 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_secondarySections) = v101;

      *(v103 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
      sub_24E24DFFC();
      v105[1] = 0;
      v105[2] = 0;
      v105[0] = 2;

      sub_24E346F78();

      OUTLINED_FUNCTION_18();
      return;
  }
}

void sub_24E24DFFC()
{
  OUTLINED_FUNCTION_32();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1720, &unk_24E370F70);
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v71 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v71 - v10;
  v77 = type metadata accessor for Shelf(0);
  OUTLINED_FUNCTION_0_14();
  v75 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v76 = v14 - v15;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v73 = &v71 - v18;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v74 = &v71 - v21;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v22);
  if (v0[OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView] == 1)
  {
    v71 = v24;
    v72 = &v71 - v23;
    v26 = *&v0[OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_primarySections];
    v27 = sub_24DFD8654();
    v28 = v0;
    OUTLINED_FUNCTION_72_0();

    v29 = 0;
    v76 = MEMORY[0x277D84F90];
    while (v27 != v29)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25303F560](v29, v26);
      }

      else
      {
        if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_85();
      }

      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      sub_24E24E6A4(v11);

      OUTLINED_FUNCTION_17_4(v11, 1, v77);
      if (v31)
      {
        sub_24DF8BFF4(v11, &qword_27F1E1720, &unk_24E370F70);
        ++v29;
      }

      else
      {
        v32 = v72;
        sub_24E0646EC(v11, v72);
        sub_24E0646EC(v32, v74);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_5_10();
          sub_24E076D5C();
          v76 = v38;
        }

        v35 = *(v76 + 16);
        v34 = *(v76 + 24);
        if (v35 >= v34 >> 1)
        {
          OUTLINED_FUNCTION_14_2(v34);
          sub_24E076D5C();
          v76 = v39;
        }

        v36 = v75;
        v37 = v76;
        *(v76 + 16) = v35 + 1;
        sub_24E0646EC(v74, v37 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35);
        v29 = v30;
      }
    }

    OUTLINED_FUNCTION_1_19();
    sub_24E19A4A0();

    v54 = *&v0[OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_secondarySections];
    v55 = sub_24DFD8654();
    v56 = v0;

    v57 = 0;
    v58 = MEMORY[0x277D84F90];
    while (v55 != v57)
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25303F560](v57, v54);
      }

      else
      {
        if (v57 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_85();
      }

      v59 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_54;
      }

      sub_24E24E6A4(v8);

      v60 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_17_4(v60, v61, v77);
      if (v31)
      {
        sub_24DF8BFF4(v8, &qword_27F1E1720, &unk_24E370F70);
        ++v57;
      }

      else
      {
        v62 = v58;
        v63 = v71;
        sub_24E0646EC(v8, v71);
        v64 = v63;
        v58 = v62;
        sub_24E0646EC(v64, v73);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        if ((v65 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_10();
          sub_24E076D5C();
          v58 = v69;
        }

        OUTLINED_FUNCTION_34_12();
        if (v50)
        {
          OUTLINED_FUNCTION_14_2(v67);
          sub_24E076D5C();
          v66 = v70;
        }

        *(v66 + 16) = v62;
        OUTLINED_FUNCTION_32_15();
        sub_24E0646EC(v73, v68);
        v57 = v59;
      }
    }

    OUTLINED_FUNCTION_1_19();
    sub_24E22BF4C();
LABEL_49:

    OUTLINED_FUNCTION_18();
  }

  else
  {
    v74 = v25;
    v40 = OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_sections;
    OUTLINED_FUNCTION_8_11();
    swift_beginAccess();
    v41 = *&v0[v40];
    v42 = sub_24DFD8654();
    v43 = v0;

    v44 = 0;
    while (1)
    {
      if (v42 == v44)
      {

        OUTLINED_FUNCTION_1_19();
        sub_24E19A4A0();
        goto LABEL_49;
      }

      if ((v41 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25303F560](v44, v41);
      }

      else
      {
        if (v44 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        OUTLINED_FUNCTION_85();
      }

      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      sub_24E24E6A4(v5);

      OUTLINED_FUNCTION_17_4(v5, 1, v77);
      if (v31)
      {
        sub_24DF8BFF4(v5, &qword_27F1E1720, &unk_24E370F70);
        ++v44;
      }

      else
      {
        v46 = v74;
        sub_24E0646EC(v5, v74);
        sub_24E0646EC(v46, v76);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        if ((v47 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_10();
          sub_24E076D5C();
        }

        OUTLINED_FUNCTION_34_12();
        if (v50)
        {
          OUTLINED_FUNCTION_14_2(v49);
          sub_24E076D5C();
          v48 = v53;
        }

        *(v48 + 16) = v46;
        OUTLINED_FUNCTION_32_15();
        sub_24E0646EC(v51, v52);
        v44 = v45;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }
}

uint64_t sub_24E24E6A4@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData), sizeof(__dst));
  sub_24E0E8958(__dst, &v4, &qword_27F1DEEA0, qword_24E369EA0);
  sub_24E32C1CC(__dst, v1, a1);
  return sub_24DF8BFF4(__dst, &qword_27F1DEEA0, qword_24E369EA0);
}

void sub_24E24E740(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {

      sub_24E246394();
      sub_24E346F78();

      sub_24E24DFFC();
    }

    else
    {
      sub_24E24DFFC();

      sub_24E19A480(v2);
    }
  }
}

void sub_24E24E7F4(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v3 = sub_24E347CF8();
  v5 = v4;
  v6 = sub_24E347CF8();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80, &qword_24E37B8A0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_24_15(inited, xmmword_24E367D20);
  v10 = MEMORY[0x277D837D0];
  sub_24E348918();
  if (qword_27F1DD788 != -1)
  {
    OUTLINED_FUNCTION_7_57(&qword_27F1DD788);
  }

  if (byte_27F1E20F0)
  {
    OUTLINED_FUNCTION_9_57();
  }

  else
  {
    if (qword_27F1DD790 != -1)
    {
      OUTLINED_FUNCTION_6_79(&qword_27F1DD790);
    }

    OUTLINED_FUNCTION_22_26();
    v14 = v13 | 0x65726F7453700000;
    v12 = 0x73676E6974746573;
    if (v15)
    {
      v12 = v14;
    }

    v11 = 0xE800000000000000;
  }

  inited[6].n128_u64[0] = v10;
  inited[4].n128_u64[1] = v12;
  inited[5].n128_u64[0] = v11;
  v16 = sub_24E347C28();
  sub_24E32BF38(v3, v5, v6, v8, v16, v2);

  v17 = [objc_opt_self() shared];
  if (v17)
  {
    v18 = v17;
    [v17 setShouldAllowNearbyMultiplayer_];

    v19 = objc_opt_self();
    v20 = sub_24E287BD0();
    v21 = [v19 proxyForPlayer_];

    v22 = [v21 utilityServicePrivate];
    [v22 refreshPreferences];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_24E24EAA8()
{
  OUTLINED_FUNCTION_32();
  v32 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  OUTLINED_FUNCTION_0_14();
  v31 = v4;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  OUTLINED_FUNCTION_4_5(v6);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_74();
  v8 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  sub_24E347CF8();
  v9 = sub_24E347CF8();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80, &qword_24E37B8A0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_24_15(inited, xmmword_24E367D20);
  v33[0] = v13;
  v33[1] = v14;
  v15 = MEMORY[0x277D837D0];
  sub_24E348918();
  if (qword_27F1DD788 != -1)
  {
    OUTLINED_FUNCTION_7_57(&qword_27F1DD788);
  }

  if (byte_27F1E20F0)
  {
    OUTLINED_FUNCTION_9_57();
  }

  else
  {
    if (qword_27F1DD790 != -1)
    {
      OUTLINED_FUNCTION_6_79(&qword_27F1DD790);
    }

    OUTLINED_FUNCTION_22_26();
    v19 = v18 | 0x65726F7453700000;
    v17 = 0x73676E6974746573;
    if (v20)
    {
      v17 = v19;
    }

    v16 = 0xE800000000000000;
  }

  inited[6].n128_u64[0] = v15;
  inited[4].n128_u64[1] = v17;
  inited[5].n128_u64[0] = v16;
  sub_24E347C28();
  v21 = OUTLINED_FUNCTION_23_3();
  sub_24E32BF38(v21, v22, v9, v11, v23, v8);

  if (*&v32[OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph])
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);

    sub_24E347328();
    OUTLINED_FUNCTION_17_4(v2, 1, v24);
    if (v20)
    {
      sub_24DF8BFF4(v2, &unk_27F1EAC90, &unk_24E36E890);
    }

    else
    {
      v34 = &type metadata for GameCenterSignInAction;
      v35 = sub_24E0D8650();
      (*(v31 + 104))(v1, *MEMORY[0x277D21E18], v3);
      sub_24E3473B8();
      v25 = OUTLINED_FUNCTION_13_0();
      v26(v25);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_22_0();
      (*(v27 + 8))(v2, v24);
      OUTLINED_FUNCTION_21_2();
      *(swift_allocObject() + 16) = v32;
      OUTLINED_FUNCTION_21_2();
      *(swift_allocObject() + 16) = v32;
      v28 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
      v29 = v32;

      v30 = sub_24E348368();
      v34 = v28;
      v35 = MEMORY[0x277D225C0];
      v33[0] = v30;
      sub_24E347A78();

      __swift_destroy_boxed_opaque_existential_1(v33);
    }
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E24EF2C()
{

  v0 = sub_24E287BD0();
  OUTLINED_FUNCTION_21_2();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24E347B48();
}

void sub_24E24EFCC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_24E24DFFC();
    }
  }
}

uint64_t sub_24E24F074()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v1 = sub_24E347CF8();
  v3 = v2;
  v4 = sub_24E347CF8();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80, &qword_24E37B8A0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_24_15(inited, xmmword_24E367D20);
  v8 = MEMORY[0x277D837D0];
  sub_24E348918();
  if (qword_27F1DD788 != -1)
  {
    OUTLINED_FUNCTION_7_57(&qword_27F1DD788);
  }

  if (byte_27F1E20F0)
  {
    OUTLINED_FUNCTION_9_57();
  }

  else
  {
    if (qword_27F1DD790 != -1)
    {
      OUTLINED_FUNCTION_6_79(&qword_27F1DD790);
    }

    OUTLINED_FUNCTION_22_26();
    v12 = v11 | 0x65726F7453700000;
    v10 = 0x73676E6974746573;
    if (v13)
    {
      v10 = v12;
    }

    v9 = 0xE800000000000000;
  }

  inited[6].n128_u64[0] = v8;
  inited[4].n128_u64[1] = v10;
  inited[5].n128_u64[0] = v9;
  v14 = sub_24E347C28();
  sub_24E32BF38(v1, v3, v4, v6, v14, v0);

  sub_24E247628(0);
  return sub_24E2474B4(0);
}

uint64_t sub_24E24F26C(uint64_t result, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredDataPresenter))
  {
    v4 = result;

    sub_24DFE601C(v4, a2);
  }

  return result;
}

uint64_t sub_24E24F394()
{

  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_nicknameUpdatedSubscription, &qword_27F1E89B8, &qword_24E3874E0);

  OUTLINED_FUNCTION_56_3(OBJC_IVAR____TtC12GameCenterUI22PlayerProfilePresenter_requiredData, v2[0]);
  sub_24DF8BFF4(v2, &qword_27F1DEEA0, qword_24E369EA0);
}

id sub_24E24F474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerProfilePresenter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PlayerProfilePresenter(uint64_t a1)
{
  result = qword_27F1E89A0;
  if (!qword_27F1E89A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E24F5F8(uint64_t a1)
{
  sub_24E24F6E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E24F6E0(uint64_t a1)
{
  if (!qword_280BE0670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E89B0, &qword_24E3874C0);
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE0670);
    }
  }
}

uint64_t sub_24E24F744()
{
  v0 = [objc_opt_self() authenticatedLocalPlayers];
  v1 = sub_24E347F08();

  v10 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      sub_24DFB4104(v3, v9);
      sub_24E024710(v9, &v7);
      sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
      if ((swift_dynamicCast() & 1) != 0 && v8)
      {
        MEMORY[0x25303EA30]();
        v5 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v5 >> 1)
        {
          OUTLINED_FUNCTION_14_2(v5);
          sub_24E347F48();
        }

        OUTLINED_FUNCTION_48_4();
        sub_24E347F88();
        v4 = v10;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_24E24F8B4(unint64_t *a1, uint64_t *a2)
{
  v4 = a2;
  v6 = *a1;
  result = sub_24E2458B0(*a1, a2);
  v9 = v3;
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    return sub_24DFD8654();
  }

  v2 = result;
  v23 = a1;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v24 = v4;
    while (1)
    {
      result = v6 >> 62 ? sub_24E348878() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 == result)
      {
        return v2;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x25303F560](v10, v6);
        v11 = v12;
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          break;
        }

        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v13 = *v4;
      v25 = v11;
      MEMORY[0x28223BE20](v12);
      v22[2] = &v25;

      v14 = v9;
      v15 = sub_24E024034(sub_24E2502C0, v22, v13);

      if (v15)
      {
        v4 = v24;
        v9 = v14;
      }

      else
      {
        if (v2 == v10)
        {
          v4 = v24;
          v9 = v14;
        }

        else
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x25303F560](v2, v6);
            v17 = MEMORY[0x25303F560](v10, v6);
          }

          else
          {
            if ((v2 & 0x8000000000000000) != 0)
            {
              goto LABEL_47;
            }

            v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v2 >= v18)
            {
              goto LABEL_48;
            }

            if (v10 >= v18)
            {
              goto LABEL_49;
            }

            v16 = *(v6 + 32 + 8 * v2);
            v17 = *(v6 + 32 + 8 * v10);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = sub_24E25ACD8();
            v19 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v19) = 0;
          }

          v20 = v6 & 0xFFFFFFFFFFFFFF8;
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v17;

          if ((v6 & 0x8000000000000000) != 0 || v19)
          {
            result = sub_24E25ACD8();
            v6 = result;
            v20 = result & 0xFFFFFFFFFFFFFF8;
          }

          v4 = v24;
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          if (v10 >= *(v20 + 16))
          {
            goto LABEL_46;
          }

          v9 = v14;
          *(v20 + 8 * v10 + 32) = v16;

          *v23 = v6;
        }

        v21 = __OFADD__(v2++, 1);
        if (v21)
        {
          goto LABEL_44;
        }
      }

      v21 = __OFADD__(v10++, 1);
      if (v21)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E24FC0C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_1_53(v3);

  return sub_24E24C964(v4, v5, v6, v2);
}

uint64_t sub_24E24FCB0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_1_53(v4);

  return sub_24E24C5FC(v5, v6, v7, v2, v3);
}

unint64_t sub_24E24FD64()
{
  result = qword_27F1E89C0;
  if (!qword_27F1E89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E89C0);
  }

  return result;
}

uint64_t sub_24E24FE00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E24FE58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E24FEA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E24FFBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E89B8, &qword_24E3874E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E250058(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, sizeof(__dst));
  return v2(__dst);
}

uint64_t sub_24E250110(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(v4, __src, sizeof(v4));
  return v2(v4);
}

_BYTE *storeEnumTagSinglePayload for PlayerProfilePresenter.UpdateType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E250268()
{
  result = qword_27F1E8A30;
  if (!qword_27F1E8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8A30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_95()
{

  return sub_24E24FE00(v0, type metadata accessor for ReportFriendAction);
}

uint64_t OUTLINED_FUNCTION_6_79(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_57(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_43()
{

  return sub_24E347F48();
}

uint64_t OUTLINED_FUNCTION_20_26()
{

  return sub_24E24FE00(v0, type metadata accessor for ExternalUrlAction);
}

uint64_t OUTLINED_FUNCTION_21_27()
{

  return sub_24E24FE00(v0, type metadata accessor for FriendsListAction);
}

double OUTLINED_FUNCTION_35_11(uint64_t a1)
{

  swift_unknownObjectWeakInit();
  return result;
}

void *OUTLINED_FUNCTION_38_8()
{

  return memcpy((v2 - 232), (v0 + v1), 0x90uLL);
}

void *OUTLINED_FUNCTION_47_4(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x90uLL);
}

void *OUTLINED_FUNCTION_56_3@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return memcpy(&a2, (v2 + a1), 0x90uLL);
}

void *OUTLINED_FUNCTION_57_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va1, a45);
  va_start(__srca, a45);
  __src = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);
  v53 = va_arg(va1, void);
  v54 = va_arg(va1, void);
  v55 = va_arg(va1, void);
  v56 = va_arg(va1, void);
  v57 = va_arg(va1, void);
  v58 = va_arg(va1, void);
  v59 = va_arg(va1, void);
  v60 = va_arg(va1, void);
  v61 = va_arg(va1, void);
  v62 = va_arg(va1, void);
  v63 = va_arg(va1, void);
  v64 = va_arg(va1, void);

  return memcpy(&a29, __srca, 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_58_3(uint64_t a1)
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return sub_24E348878();
}

uint64_t OUTLINED_FUNCTION_60_1()
{

  return sub_24E05F670();
}

uint64_t OUTLINED_FUNCTION_61_1()
{

  return sub_24E32CEF8(v0, v1);
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  *((v0 & 0xFFFFFFFFFFFFFF8) + 8 * v1 + 0x20) = v2;
}

uint64_t OUTLINED_FUNCTION_77_0()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_78()
{
  *(v0 + 32) = *(v1 + 8 * v2 + 32);

  return result;
}

uint64_t OUTLINED_FUNCTION_79_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 88) = v1 - a1;

  return sub_24E347458();
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);

  return sub_24E0E8958(va, &a10, v62, v63);
}

void OUTLINED_FUNCTION_83()
{

  JUMPOUT(0x25303F560);
}

void *OUTLINED_FUNCTION_84(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x90uLL);
}

double OUTLINED_FUNCTION_85()
{

  return result;
}

uint64_t sub_24E2507F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE230, &qword_24E37C830);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = __src - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8A38, &qword_24E387650);
  MEMORY[0x28223BE20](v4);
  v6 = __src - v5;
  sub_24E345348();
  sub_24E346E28();
  sub_24E3457F8();
  (*(v1 + 32))(v6, v3, v0);
  memcpy(&v6[*(v4 + 36)], __src, 0x70uLL);
  sub_24E2509B4();
  sub_24E346758();
  return sub_24E250AA4(v6);
}

unint64_t sub_24E2509B4()
{
  result = qword_27F1E8A40;
  if (!qword_27F1E8A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8A38, &qword_24E387650);
    sub_24E250A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8A40);
  }

  return result;
}

unint64_t sub_24E250A40()
{
  result = qword_27F1E2088;
  if (!qword_27F1E2088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DE230, &qword_24E37C830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2088);
  }

  return result;
}

uint64_t sub_24E250AA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8A38, &qword_24E387650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E250B0C()
{
  result = qword_27F1E8A48;
  if (!qword_27F1E8A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8A50, qword_24E387658);
    sub_24E2509B4();
    sub_24E144CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8A48);
  }

  return result;
}

double *sub_24E250B98()
{
  v0 = type metadata accessor for Achievement(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E152638(3, v2);
  type metadata accessor for AchievementBadge();
  if (qword_27F1DD8F0 != -1)
  {
    swift_once();
  }

  LOBYTE(v8) = byte_27F20AFF8;
  v3 = sub_24E2BF448();
  v4 = v2[10];
  v5 = v2[11];
  *&v8 = v2[9];
  *(&v8 + 1) = v4;
  v9 = v5;
  sub_24E09B300(v8, v4, v5);
  AchievementBadge.status.setter(&v8);
  sub_24E250C9C(v2);
  return v3;
}

uint64_t sub_24E250C9C(uint64_t a1)
{
  v2 = type metadata accessor for Achievement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AchievementUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AchievementUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AchievementUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UpdateAction(uint64_t a1)
{
  result = qword_27F1E8A58;
  if (!qword_27F1E8A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E250EFC(uint64_t a1)
{
  sub_24DFEA174(319);
  if (v1 <= 0x3F)
  {
    sub_24E347208();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24E250F80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  sub_24E3442D8();
  OUTLINED_FUNCTION_0_14();
  v46 = v4;
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_38();
  v44 = v5;
  MEMORY[0x28223BE20](v6);
  v45 = &v39 - v7;
  sub_24E344988();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_38();
  v39 = v11;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  sub_24E344428();
  OUTLINED_FUNCTION_0_14();
  v41 = v20;
  v42 = v19;
  MEMORY[0x28223BE20](v19);
  v40 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v49 = &v39 - v23;
  v24 = *v1;
  v25 = v1[1];
  v26 = v1[2];
  v27 = v1[3];
  sub_24E344408();
  sub_24DF89628((v1 + 24), v54);
  sub_24E344938();
  v43 = sub_24E344958();
  v52 = v43;
  v53 = MEMORY[0x277D22970];
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_24E344968();
  sub_24DF89628((v1 + 4), v18);
  v28 = *(v9 + 104);
  OUTLINED_FUNCTION_2_101();
  v28();
  sub_24DF89628((v1 + 9), v15);
  OUTLINED_FUNCTION_2_101();
  v28();
  OUTLINED_FUNCTION_2_101();
  v28();
  OUTLINED_FUNCTION_2_101();
  v28();
  v55 = sub_24E344998();
  v56 = MEMORY[0x277D22998];
  __swift_allocate_boxed_opaque_existential_1(v54);
  sub_24E3449A8();
  sub_24E2514D4(v1, v51);
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_3_102(v29);
  v30 = v40;
  sub_24E344418();

  v31 = v42;
  v41 = *(v41 + 8);
  (v41)(v30, v42);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v32 = v44;
  sub_24E3442B8();
  v33 = v45;
  sub_24E3442C8();
  v34 = v47;
  v35 = *(v46 + 8);
  v35(v32, v47);
  sub_24E2514D4(v2, v51);
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_3_102(v36);
  v50[3] = v34;
  v50[4] = MEMORY[0x277D226E0];
  __swift_allocate_boxed_opaque_existential_1(v50);
  sub_24E3442C8();

  v35(v33, v34);
  v55 = v31;
  v56 = MEMORY[0x277D22778];
  __swift_allocate_boxed_opaque_existential_1(v54);
  v37 = v49;
  sub_24E344418();
  (v41)(v37, v31);
  __swift_destroy_boxed_opaque_existential_1(v50);
  sub_24E344948();
  v52 = v43;
  v53 = MEMORY[0x277D22970];
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_24E344968();
  return MEMORY[0x25303B510](v51, v24, v25, v26, v27);
}

uint64_t objectdestroyTm_27()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);
  __swift_destroy_boxed_opaque_existential_1(v0 + 36);

  return MEMORY[0x2821FE8E8](v0, 329, 7);
}

uint64_t sub_24E251580(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 313))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_24E2515C0(uint64_t result, int a2, int a3)
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E251678(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E25177C();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_24E2516D4()
{
  result = qword_27F1E8A68;
  if (!qword_27F1E8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8A68);
  }

  return result;
}

unint64_t sub_24E25177C()
{
  result = qword_27F1E8A70;
  if (!qword_27F1E8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8A70);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_102(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 128), 0x139uLL);
}

uint64_t sub_24E25180C(uint64_t a1)
{
  result = sub_24E346288();
  qword_27F1E8A78 = result;
  return result;
}

uint64_t sub_24E25182C(uint64_t a1)
{
  result = sub_24E3469E8();
  qword_27F1E8A80 = result;
  return result;
}

void sub_24E25184C(uint64_t a1@<X8>)
{
  v2 = *(sub_24E345648() + 16);

  if (v2)
  {
    v3 = *MEMORY[0x277CDF9D0];
    v4 = sub_24E345658();
    v5 = *(*(v4 - 8) + 104);

    v5(a1, v3, v4);
  }

  else
  {
    v6 = sub_24E345648();
    sub_24E30B440(v6);
    if (*(v7 + 16))
    {
      v8 = v7;
      v9 = sub_24E345658();
      (*(*(v9 - 8) + 16))(a1, v8 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)), v9);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24E25198C(uint64_t a1)
{
  sub_24E346378();
  sub_24E3462C8();
  v1 = sub_24E346338();

  qword_27F1E8AA8 = v1;
  return result;
}

uint64_t sub_24E2519D0(uint64_t a1)
{
  result = sub_24E3469D8();
  qword_27F1E8AB0 = result;
  return result;
}

uint64_t sub_24E251A2C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_24E346948();
  *a3 = result;
  return result;
}

uint64_t sub_24E251A9C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t type metadata accessor for ActivityFeedLockupTheme(uint64_t a1)
{
  result = qword_27F1E8B80;
  if (!qword_27F1E8B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E251BC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedLockupTheme(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E251C4C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, int a5)
{
  v38 = a5;
  v37 = a4;
  sub_24E345658();
  OUTLINED_FUNCTION_0_14();
  v39 = v9;
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_157();
  v10 = sub_24E346E88();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActivityFeedLockupTheme(0);
  __swift_allocate_value_buffer(v16, a2);
  v17 = __swift_project_value_buffer(v16, a2);
  if (qword_27F1DDAD0 != -1)
  {
    swift_once();
  }

  v18 = qword_27F1E8A78;

  v20 = a3(v19);
  v35 = v21;
  v36 = v20;
  if (qword_27F1DDAD8 != -1)
  {
    swift_once();
  }

  v22 = qword_27F1E8A80;
  v23 = qword_27F1DDAE0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_27F1E8A88;
  v25 = qword_27F1DDAE8;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v10, qword_27F1E8A90);
  (*(v12 + 16))(v15, v26, v10);
  sub_24E25184C(v5);
  *v17 = xmmword_24E3878B0;
  v27 = v37;
  *(v17 + 16) = 0x402A000000000000;
  *(v17 + 24) = v27;
  *(v17 + 32) = v18;
  __asm { FMOV            V0.2D, #16.0 }

  *(v17 + 40) = _Q0;
  *(v17 + 56) = _Q0;
  *(v17 + 72) = v38;
  v33 = v35;
  *(v17 + 80) = v36;
  *(v17 + 88) = v33;
  *(v17 + 96) = 1;
  *(v17 + 104) = v22;
  *(v17 + 112) = v24;
  (*(v12 + 32))(v17 + *(v16 + 60), v15, v10);
  return (*(v39 + 32))(v17 + *(v16 + 64), v5, v40);
}

uint64_t sub_24E251FA4(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_24E346E88();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_0_157();
  v7 = type metadata accessor for ActivityFeedLockupTheme(v6);
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (qword_27F1DDAF0 != -1)
  {
    OUTLINED_FUNCTION_6_80(&qword_27F1DDAF0);
  }

  v21 = sub_24E346E28();
  v10 = v9;
  if (qword_27F1DDAF8 != -1)
  {
    OUTLINED_FUNCTION_5_96(&qword_27F1DDAF8);
  }

  v11 = qword_27F1DDB08;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_4_86(&qword_27F1DDB08);
  }

  v12 = qword_27F1DDB10;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_3_103(&qword_27F1DDB10);
  }

  __swift_project_value_buffer(v4, qword_27F1E8AD8);
  v13 = OUTLINED_FUNCTION_9_58();
  v14(v13);
  if (qword_27F1DDB00 != -1)
  {
    OUTLINED_FUNCTION_2_102(&qword_27F1DDB00);
  }

  v15 = sub_24E345658();
  __swift_project_value_buffer(v15, qword_27F1E8AB8);
  OUTLINED_FUNCTION_8_69();
  (*(v16 + 16))(v8 + v17);
  *v8 = xmmword_24E3878C0;
  *(v8 + 16) = 0x4020000000000000;
  *(v8 + 24) = 3;
  OUTLINED_FUNCTION_10_54();
  *(v8 + 72) = 2;
  *(v8 + 80) = v21;
  *(v8 + 88) = v10;
  v18 = OUTLINED_FUNCTION_7_58(a3);
  return v19(v18);
}

uint64_t sub_24E252260(__n128 a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = sub_24E346E88();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_0_157();
  v8 = type metadata accessor for ActivityFeedLockupTheme(v7);
  __swift_allocate_value_buffer(v8, a3);
  v9 = __swift_project_value_buffer(v8, a3);
  if (qword_27F1DDAF0 != -1)
  {
    OUTLINED_FUNCTION_6_80(&qword_27F1DDAF0);
  }

  v22 = sub_24E346E28();
  v11 = v10;
  if (qword_27F1DDAF8 != -1)
  {
    OUTLINED_FUNCTION_5_96(&qword_27F1DDAF8);
  }

  v12 = qword_27F1DDB08;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_4_86(&qword_27F1DDB08);
  }

  v13 = qword_27F1DDB10;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_3_103(&qword_27F1DDB10);
  }

  __swift_project_value_buffer(v5, qword_27F1E8AD8);
  v14 = OUTLINED_FUNCTION_9_58();
  v15(v14);
  if (qword_27F1DDB00 != -1)
  {
    OUTLINED_FUNCTION_2_102(&qword_27F1DDB00);
  }

  v16 = sub_24E345658();
  __swift_project_value_buffer(v16, qword_27F1E8AB8);
  OUTLINED_FUNCTION_8_69();
  (*(v17 + 16))(v9 + v18);
  *v9 = a1;
  v9[1].n128_u64[0] = 0x4024000000000000;
  v9[1].n128_u64[1] = a4;
  OUTLINED_FUNCTION_10_54();
  v9[4].n128_u8[8] = 1;
  v9[5].n128_u64[0] = v22;
  v9[5].n128_u64[1] = v11;
  v19 = OUTLINED_FUNCTION_7_58(1);
  return v20(v19);
}

uint64_t sub_24E2524C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ActivityFeedLockupTheme(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_24E251BC0(v7, a4);
}

uint64_t sub_24E25254C(uint64_t a1)
{
  result = sub_24E346E88();
  if (v2 <= 0x3F)
  {
    result = sub_24E345658();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActivityFeedLockupTheme.LockupAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E252718()
{
  result = qword_27F1E8B90;
  if (!qword_27F1E8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8B90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_102(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_103(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_86(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_96(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_80(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_58@<X0>(char a1@<W8>)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v3;
  *(v2 + 112) = v4;
  return v2 + *(v1 + 60);
}

double OUTLINED_FUNCTION_10_54()
{
  *(v0 + 32) = v1;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

void AchievementDetailViewModel.init(using:friendsWhoEarnedThis:shareAction:dismissAction:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v25 = sub_24E252A34(a1);
  v26 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFEF0, qword_24E36CB90);
  sub_24E15535C();
  sub_24E348918();
  v15 = type metadata accessor for AchievementDetailViewModel(0);
  sub_24E152638(3, a7 + v15[5]);
  v16 = [a1 game];
  v17 = [v16 adamID];

  *(a7 + v15[6]) = v17;
  v18 = [a1 internal];
  v19 = [v18 rarityPercent];

  if (v19)
  {
    [v19 doubleValue];
    v21 = v20;
  }

  else
  {

    v21 = 0;
  }

  v22 = a7 + v15[8];
  *v22 = v21;
  v22[8] = v19 == 0;
  *(a7 + v15[7]) = a2;
  v23 = (a7 + v15[9]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a7 + v15[10]);
  *v24 = a5;
  v24[1] = a6;
}

uint64_t sub_24E252A34(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

uint64_t type metadata accessor for AchievementDetailViewModel(uint64_t a1)
{
  result = qword_27F1E8B98;
  if (!qword_27F1E8B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E252B0C(uint64_t a1)
{
  type metadata accessor for Achievement(319);
  if (v1 <= 0x3F)
  {
    sub_24DF97DD4();
    if (v2 <= 0x3F)
    {
      sub_24E252BE8(319);
      if (v3 <= 0x3F)
      {
        sub_24E232110();
        if (v4 <= 0x3F)
        {
          sub_24DFEA174(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E252BE8(uint64_t a1)
{
  if (!qword_27F1E8BA8)
  {
    type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel(255);
    v1 = sub_24E347FC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E8BA8);
    }
  }
}

uint64_t type metadata accessor for OnboardingTrayButtonsPlatter(uint64_t a1)
{
  result = qword_27F1E8BB0;
  if (!qword_27F1E8BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E252CB4(uint64_t a1)
{
  sub_24DFB4374(319);
  if (v1 <= 0x3F)
  {
    sub_24E04ACC8(319);
    if (v2 <= 0x3F)
    {
      sub_24DFA1058();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E252D7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for OnboardingTrayButtonsPlatter(0);
  sub_24E253C34(v1 + *(v12 + 24), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345658();
    OUTLINED_FUNCTION_5_2();
    return (*(v13 + 32))(a1, v11);
  }

  else
  {
    sub_24E348268();
    v15 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v3);
  }
}

void *sub_24E252F50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  sub_24E345658();
  OUTLINED_FUNCTION_0_14();
  v28 = v4;
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8BC0, &qword_24E387AA8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8BC8, &qword_24E387AB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v28 - v14);
  *v15 = sub_24E346E28();
  v15[1] = v16;
  v17 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8BD0, &qword_24E387AB8) + 44);
  v18 = sub_24E345708();
  v19 = sub_24E3461E8();
  *v12 = sub_24E345BF8();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8BD8, &qword_24E387AC0);
  sub_24E253344(v2, &v12[*(v20 + 44)]);
  sub_24DFAE87C(v12, v9, &qword_27F1E8BC0, &qword_24E387AA8);
  *v17 = v18;
  v17[8] = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8BE0, &qword_24E387AC8);
  sub_24DFAE87C(v9, &v17[*(v21 + 48)], &qword_27F1E8BC0, &qword_24E387AA8);
  sub_24DF8BFF4(v12, &qword_27F1E8BC0, &qword_24E387AA8);
  sub_24DF8BFF4(v9, &qword_27F1E8BC0, &qword_24E387AA8);
  type metadata accessor for OnboardingTrayButtonsPlatter(0);
  sub_24E252D7C(v6);
  sub_24E345638();
  v22 = v29;
  v23 = *(v28 + 8);
  v23(v6, v29);
  sub_24E252D7C(v6);
  v24 = sub_24E345638();
  v23(v6, v22);
  if ((v24 & 1) == 0)
  {
    sub_24E327150();
  }

  sub_24E346E28();
  sub_24E3457F8();
  v25 = v30;
  sub_24DFB4B20(v15, v30, &qword_27F1E8BC8, &qword_24E387AB0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8BE8, &qword_24E387AD0);
  return memcpy((v25 + *(v26 + 36)), __src, 0x70uLL);
}

uint64_t sub_24E253344@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v62 = sub_24E345658();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OnboardingTrayButtonsPlatter(0);
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830, &qword_24E36BC10);
  v7 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v9 = &v55 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8BF0, &qword_24E387AD8);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8BF8, &qword_24E387AE0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8C00, &qword_24E387AE8);
  MEMORY[0x28223BE20](v60);
  v65 = &v55 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8C08, &unk_24E387AF0);
  MEMORY[0x28223BE20](v64);
  v67 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v63 = &v55 - v19;
  MEMORY[0x28223BE20](v20);
  v66 = &v55 - v21;
  sub_24E253CA4(a1, &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v23 = swift_allocObject();
  sub_24E253D08(&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v69 = a1;
  sub_24E346BD8();
  sub_24E16A8AC(__src);
  sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830, &qword_24E36BC10, MEMORY[0x277CDF028]);
  sub_24E04B194();
  v24 = v57;
  sub_24E346598();
  memcpy(__dst, __src, sizeof(__dst));
  sub_24E04B1E8(__dst);
  (*(v7 + 8))(v9, v24);
  v25 = sub_24E3461F8();
  sub_24E252D7C(v4);
  sub_24E345638();
  v26 = *(v61 + 8);
  v27 = v62;
  v26(v4, v62);
  sub_24E3451B8();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  (*(v58 + 32))(v15, v11, v59);
  v36 = &v15[*(v13 + 44)];
  *v36 = v25;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_24E346208();
  sub_24E252D7C(v4);
  LOBYTE(v9) = sub_24E345638();
  v26(v4, v27);
  if ((v9 & 1) == 0)
  {
    sub_24E327150();
  }

  sub_24E3451B8();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v65;
  sub_24DFB4B20(v15, v65, &qword_27F1E8BF8, &qword_24E387AE0);
  v47 = v46 + *(v60 + 36);
  *v47 = v37;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  sub_24E3242B4(0x4071C00000000000, 0, 0x4076800000000000, 0, 0x7FF0000000000000, 0, 0x4074700000000000);
  sub_24E346E28();
  sub_24E3457F8();
  v48 = v63;
  sub_24DFB4B20(v46, v63, &qword_27F1E8C00, &qword_24E387AE8);
  memcpy((v48 + *(v64 + 36)), __src, 0x70uLL);
  v49 = v66;
  sub_24DFB4B20(v48, v66, &qword_27F1E8C08, &unk_24E387AF0);
  v50 = v67;
  sub_24DFAE87C(v49, v67, &qword_27F1E8C08, &unk_24E387AF0);
  v51 = v68;
  *v68 = 0;
  *(v51 + 8) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8C10, &qword_24E387B00);
  sub_24DFAE87C(v50, v51 + *(v52 + 48), &qword_27F1E8C08, &unk_24E387AF0);
  v53 = v51 + *(v52 + 64);
  *v53 = 0;
  v53[8] = 1;
  sub_24DF8BFF4(v49, &qword_27F1E8C08, &unk_24E387AF0);
  return sub_24DF8BFF4(v50, &qword_27F1E8C08, &unk_24E387AF0);
}

uint64_t sub_24E253BB0@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for OnboardingTrayButtonsPlatter(0);
  sub_24DF90C4C();

  result = sub_24E3464E8();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24E253C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E253CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingTrayButtonsPlatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E253D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingTrayButtonsPlatter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E253D6C()
{
  v1 = *(type metadata accessor for OnboardingTrayButtonsPlatter(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24E253B74(v2);
}

unint64_t sub_24E253DD4()
{
  result = qword_27F1E8C18;
  if (!qword_27F1E8C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8BE8, &qword_24E387AD0);
    sub_24DFB4C28(&qword_27F1E8C20, &qword_27F1E8BC8, &qword_24E387AB0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8C18);
  }

  return result;
}

uint64_t sub_24E253E8C(char *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_24E342EE8();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [v4 playerID];
  v15 = sub_24E347CF8();
  v17 = v16;

  v27[0] = v15;
  v27[1] = v17;
  sub_24E342EB8();
  sub_24DF90C4C();
  v18 = sub_24E348748();
  v20 = v19;
  (*(v9 + 8))(v12, v8);

  if (!v20)
  {
    v21 = [v4 playerID];
    v18 = sub_24E347CF8();
    v20 = v22;
  }

  strcpy(v27, "avatarimage://");
  HIBYTE(v27[1]) = -18;
  MEMORY[0x25303E950](v18, v20);

  v26 = v13;
  v25[0] = 25186;
  v25[1] = 0xE200000000000000;
  type metadata accessor for Artwork();
  swift_allocObject();
  return Artwork.init(template:size:backgroundColor:style:crop:variants:)(v27, 0, &v26, v25, MEMORY[0x277D84F90], a2, a3);
}

uint64_t sub_24E254098(uint64_t a1)
{
  LOBYTE(v3[0]) = 0;
  sub_24E253E8C(v3, 300.0, 300.0);
  v3[0] = 0;
  v3[1] = 0;
  sub_24E0ABE8C(v3, 0, 300.0, 300.0);

  if (a1)
  {
    sub_24E202DEC();
  }
}

double sub_24E254138(void *a1, double a2, double a3)
{
  v4 = a2;
  if (sub_24E2541B4(*(*(v3 + 72) + 16), v3, a1, a2) < 1)
  {
    return *MEMORY[0x277D22A78];
  }

  return v4;
}

uint64_t sub_24E2541B4(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = sub_24E348BC8();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a3 traitCollection];
  v14 = sub_24E3483C8();

  if (v14)
  {
    if ((*(a2 + 64) & 1) == 0 && *(a2 + 56) < a1)
    {
      a1 = *(a2 + 56);
    }

    v15 = *(a2 + 40);
    v16 = *(a2 + 48);
    __swift_project_boxed_opaque_existential_1((a2 + 16), v15);
    sub_24E2548A0(v15, v16);
    OUTLINED_FUNCTION_2_103();
    sub_24E344198();
    (*(v9 + 8))(v12, v8);
    return a1;
  }

  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  __swift_project_boxed_opaque_existential_1((a2 + 16), v17);
  sub_24E2548A0(v17, v18);
  OUTLINED_FUNCTION_2_103();
  sub_24E344198();
  v20 = v19;
  result = (*(v9 + 8))(v12, v8);
  v22 = (v20 + a4) / (v20 + *a2);
  if (COERCE__INT64(fabs(v22)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = v22;
  if (v22 < 1)
  {
    return 0;
  }

  if (__OFADD__(v23, 1))
  {
    goto LABEL_24;
  }

  v24 = ceil(a1 / v23);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v24 < 9.22337204e18)
  {
    v25 = *(a2 + 56);
    if (v25 >= v24)
    {
      v25 = v24;
    }

    if (*(a2 + 64))
    {
      return v24;
    }

    else
    {
      return v25;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24E254458(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v27 = *(v5 + 72);
  result = sub_24E2541B4(*(v27 + 16), v5, a1, a4);
  v30 = v10;
  if (result < 0)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    if (!result)
    {
LABEL_17:
      v37.origin.x = OUTLINED_FUNCTION_0_158();
      CGRectGetMinY(v37);
      v38.origin.x = OUTLINED_FUNCTION_0_158();
      CGRectGetWidth(v38);
      return sub_24E343FE8();
    }

    v11 = v9;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = 0;
      v14 = v27 + 32;
      v23 = 40 * v9;
      v24 = result;
      while (2)
      {
        v15 = 0;
        v25 = v13 + 1;
        v26 = v14;
        v16 = (v13 * v11) >> 64 != (v13 * v11) >> 63;
        v28 = v30 * v13;
        v29 = v13;
        while (v11 != v15)
        {
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          if (v16)
          {
            goto LABEL_19;
          }

          if ((v12 + v15) >= *(v27 + 16))
          {
            break;
          }

          if (v12 < 0)
          {
            goto LABEL_20;
          }

          sub_24DF89628(v14, v31);
          v17 = [a1 traitCollection];
          v18 = sub_24E3483C8();

          if ((v18 & 1) != 0 && v11 == 1)
          {
            __swift_project_boxed_opaque_existential_1(v31, v32);
            sub_24E3440E8();
            v33.origin.x = OUTLINED_FUNCTION_0_158();
            Width = CGRectGetWidth(v33);
          }

          else
          {
            Width = *v6;
          }

          v20 = v6[1];
          v34.origin.x = OUTLINED_FUNCTION_0_158();
          v21 = (v30 + Width) * v15 + v30 + CGRectGetMinX(v34);
          v35.origin.x = OUTLINED_FUNCTION_0_158();
          v22 = v28 + v20 * v29 + v30 + CGRectGetMinY(v35);
          __swift_project_boxed_opaque_existential_1(v31, v32);
          OUTLINED_FUNCTION_0_158();
          sub_24E348508();
          sub_24E344088();
          v36.origin.x = v21;
          v36.origin.y = v22;
          v36.size.width = Width;
          v36.size.height = v20;
          CGRectGetMaxY(v36);
          result = __swift_destroy_boxed_opaque_existential_1(v31);
          ++v15;
          v14 += 40;
        }

        v12 += v11;
        v13 = v25;
        result = v24;
        v14 = v26 + v23;
        if (v25 != v24)
        {
          continue;
        }

        goto LABEL_17;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E25472C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_24E25476C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E2547CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_24E25480C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double FlankedHorizontalLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v5 = sub_24E348BC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E3447A8();
  if (v18)
  {
    v9 = OUTLINED_FUNCTION_0_159();
    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_24E3447D8();
    OUTLINED_FUNCTION_2_104();
    v10 = OUTLINED_FUNCTION_1_124();
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v11 = a2 - (v9 + v10);
  }

  else
  {
    sub_24DF8C95C(v17, &qword_27F1DEE30, &qword_24E369B60);
    v11 = a2;
  }

  sub_24E3447B8();
  if (v18)
  {
    v12 = OUTLINED_FUNCTION_0_159();
    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_24E3447F8();
    OUTLINED_FUNCTION_2_104();
    v13 = OUTLINED_FUNCTION_1_124();
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v11 = v11 - (v12 + v13);
  }

  else
  {
    sub_24DF8C95C(v17, &qword_27F1DEE30, &qword_24E369B60);
  }

  sub_24E344818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8C28, &qword_24E387BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2478, &qword_24E372AD8);
  if (swift_dynamicCast())
  {
    sub_24DE56CE8(v15, v17);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_24E3440D8(v11, a3);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_24DF8C95C(v15, &unk_27F1E8C30, qword_24E387BD8);
  }

  return a2;
}

double OUTLINED_FUNCTION_0_159()
{
  __swift_project_boxed_opaque_existential_1((v1 - 184), v0);

  return sub_24E3440D8(v2, v3);
}

double OUTLINED_FUNCTION_1_124()
{

  sub_24E344198();
  return result;
}

uint64_t OUTLINED_FUNCTION_2_104()
{
  __swift_project_boxed_opaque_existential_1((v0 - 184), *(v0 - 160));

  return sub_24E343F98();
}

void DashboardPlayerPhotoView.init(playerInternal:onContentReady:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];

  *a4 = v8;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t sub_24E254CB8()
{
  v1 = *(v0 + OBJC_IVAR____TtCV12GameCenterUI24DashboardPlayerPhotoView11Coordinator_onContentReady);
  if (v1)
  {
    return v1();
  }

  return result;
}

id DashboardPlayerPhotoView.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DashboardPlayerPhotoView.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardPlayerPhotoView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DashboardPlayerPhotoView.makeUIView(context:)()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(GKDashboardPlayerPhotoView) init];
  v6[4] = CGSizeMake;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24E00B24C;
  v6[3] = &block_descriptor_83;
  v3 = _Block_copy(v6);
  [v2 setPlayer:v1 completionHandler:v3];
  _Block_release(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8C48, &qword_24E387C20);
  sub_24E346008();
  v4 = v6[0];
  [v2 setDelegate_];

  return v2;
}

double block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id DashboardPlayerPhotoView.makeCoordinator()()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for DashboardPlayerPhotoView.Coordinator();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV12GameCenterUI24DashboardPlayerPhotoView11Coordinator_onContentReady];
  *v5 = v1;
  v5[1] = v2;
  sub_24DF88BEC(v1, v2);
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_24E255018@<X0>(void *a1@<X8>)
{
  result = DashboardPlayerPhotoView.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_24E255040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E25518C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E2550A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E25518C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E255108(uint64_t a1)
{
  sub_24E25518C();
  sub_24E345E08();
  __break(1u);
}

unint64_t sub_24E25518C()
{
  result = qword_27F1E8C60;
  if (!qword_27F1E8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8C60);
  }

  return result;
}

uint64_t sub_24E255264(uint64_t a1, uint64_t a2)
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v3 = 64.0;
  v4 = 32.0;
  qword_27F1E8CA8 = MEMORY[0x277D839F8];
  unk_27F1E8CB0 = MEMORY[0x277D22A30];
  v5 = 0.0;
  if (result)
  {
    v5 = 4.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
  }

  qword_27F1E8CD0 = MEMORY[0x277D839F8];
  unk_27F1E8CD8 = MEMORY[0x277D22A30];
  qword_27F1E8CB8 = *&v4;
  v6 = 18.0;
  qword_27F1E8CF8 = MEMORY[0x277D839F8];
  unk_27F1E8D00 = MEMORY[0x277D22A30];
  if (!result)
  {
    v6 = 14.0;
  }

  qword_27F1E8CE0 = *&v5;
  qword_27F1E8C70 = 0x402C000000000000;
  qword_27F1E8C78 = *&v6;
  qword_27F1E8C80 = 0x402C000000000000;
  qword_27F1E8C88 = *&v6;
  unk_27F1E8C90 = *&v3;
  return result;
}

char *sub_24E2552F0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v103 - v18;
  v20 = OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_focusGuide;
  *&v5[v20] = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v21 = &v5[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotActionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v5[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_maximumAdditionalPlayers] = 1;
  if (qword_27F1DE030 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v11, qword_27F20BC90);
  v23 = *(v13 + 16);
  v23(v19, v22, v11);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v11);
  v24 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel(0));
  *&v5[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotLabel] = sub_24E0AEF24(v19, 0, 2, 0, 1, 0);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v25 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
    *&v5[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotButton] = v25;
    v26 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v27 = objc_allocWithZone(type metadata accessor for VibrancyHostView());
    v28 = MEMORY[0x277D84F90];
    v29 = v26;
  }

  else
  {
    type metadata accessor for DynamicTypeButton(0);
    if (qword_27F1DE038 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v11, qword_27F20BCA8);
    v23(v16, v30, v11);
    v31 = sub_24E28C8D0(v16);
    *&v5[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotButton] = v31;
    objc_allocWithZone(type metadata accessor for VibrancyHostView());
    v29 = v31;
    v28 = MEMORY[0x277D84F90];
  }

  *&v5[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_vibrancyHost] = sub_24E300F20(v29, v28, 0);
  v32 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v5[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_contentBackgroundView] = v32;
  v33 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v5[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotImageView] = v33;
  v103.receiver = v5;
  v103.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v103, sel_initWithFrame_, a1, a2, a3, a4);
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v35 = OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotButton;
    v36 = [*&v34[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotButton] titleLabel];
    if (v36)
    {
      v37 = v36;
      [v36 setLineBreakMode_];
    }

    v38 = *&v34[v35];
    v39 = objc_opt_self();
    v40 = v38;
    v41 = [v39 secondaryLabelColor];
    [v40 setTintColor_];

    v42 = [*&v34[v35] titleLabel];
    if (v42)
    {
      v43 = v42;
      [v42 setTextAlignment_];
    }

    type metadata accessor for DynamicTypeButton(0);
    v44 = swift_dynamicCastClass();
    if (v44)
    {
      v45 = (v44 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_touchOutsideMargin);
      __asm { FMOV            V0.2D, #10.0 }

      *v45 = _Q0;
      v45[1] = _Q0;
    }
  }

  v51 = OUTLINED_FUNCTION_3_104();
  v52 = GKIsXRUIIdiom();
  v53 = 14.0;
  if (v52)
  {
    v53 = 16.0;
  }

  [v51 _setContinuousCornerRadius_];

  v54 = OUTLINED_FUNCTION_3_104();
  v55 = objc_opt_self();
  v56 = [v55 clearColor];
  [v54 setBackgroundColor_];

  v57 = OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_contentBackgroundView;
  v58 = [*&v34[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_contentBackgroundView] layer];
  if (qword_27F1DDDB8 != -1)
  {
    swift_once();
  }

  v59 = [qword_27F20B7E0 CGColor];
  [v58 setBackgroundColor_];

  [*&v34[v57] _setContinuousCornerRadius_];
  v60 = [*&v34[v57] layer];
  [v60 setCompositingFilter_];

  v61 = OUTLINED_FUNCTION_3_104();
  [v61 addSubview_];

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v62 = v34;
    v63 = [v62 contentView];
    [v63 addSubview_];

    v64 = [v62 contentView];
    v65 = OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotLabel;
    [v64 addSubview_];

    v66 = [v62 contentView];
    [v66 addSubview_];

    [*&v62[v65] setLineBreakMode_];
    v67 = *&v62[v65];
    v68 = [v55 secondaryLabelColor];
    [v67 setTintColor_];

    [*&v62[v65] setTextAlignment_];
    [*&v62[v65] setNumberOfLines_];
    v69 = *&v62[v65];
    v70 = OUTLINED_FUNCTION_8_70();
    v71 = GKGameCenterUIFrameworkBundle();
    v72 = OUTLINED_FUNCTION_5_22(v71);

    v73 = sub_24E347CF8();
    v75 = v74;

    sub_24DFA0B40(v73, v75, v68);
  }

  else
  {
    v78 = OUTLINED_FUNCTION_3_104();
    [v78 addSubview_];

    v79 = OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotButton;
    v80 = *&v34[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotButton];
    v81 = OUTLINED_FUNCTION_8_70();
    v82 = GKGameCenterUIFrameworkBundle();
    v83 = OUTLINED_FUNCTION_5_22(v82);

    v84 = sub_24E347CF8();
    v86 = v85;

    sub_24E2BE6B4(v84, v86, 0, v78);
    v87 = *&v34[v79];
    type metadata accessor for DynamicTypeButton(0);
    v88 = swift_dynamicCastClass();
    if (v88)
    {
      v89 = v88;
      v90 = v87;
      sub_24E257764(v89, 5.0);
    }

    v91 = OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_focusGuide;
    v92 = *&v34[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_focusGuide];
    v93 = v34;
    [v93 addLayoutGuide_];
    v94 = *&v34[v91];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_24E369990;
    v96 = *&v34[v79];
    *(v95 + 32) = v96;
    v97 = v96;
    sub_24DFD7FD0(v95, v94);
    v98 = objc_opt_self();
    v99 = *&v34[v91];
    [v98 _gkInstallEdgeConstraintsForLayoutGuide_containedWithinParentView_];

    v76 = v93;
  }

  _s12GameCenterUI38GKMultiplayerAddSlotCollectionViewCellC05traitG9DidChangeyySo07UITraitG0CSgF_0(v76, v77);
  v100 = OUTLINED_FUNCTION_3_104();
  v101 = [v100 layer];

  [v101 setAllowsGroupBlending_];
  return v34;
}

void _s12GameCenterUI38GKMultiplayerAddSlotCollectionViewCellC05traitG9DidChangeyySo07UITraitG0CSgF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v5 = objc_opt_self();
  if (ShouldUsePadUI)
  {
    v6 = [v5 systemFontOfSize:70.0 weight:*MEMORY[0x277D74418]];
    v7 = [objc_opt_self() configurationWithFont_];

    sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
    v14 = v7;
    v8 = sub_24E0AC60C(1937075312, 0xE400000000000000, v7);
    if (v8)
    {
      v9 = v8;
      [*(v3 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotImageView) setImage_];
LABEL_7:
    }
  }

  else
  {
    v10 = [v5 _preferredFontForTextStyle_variant_];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    v12 = [objc_opt_self() configurationWithFont_];

    sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
    v14 = v12;
    v13 = sub_24E0AC60C(1937075312, 0xE400000000000000, v12);
    if (v13)
    {
      v9 = v13;
      [*(v3 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotButton) setImage:v13 forState:0];
      goto LABEL_7;
    }
  }
}

void sub_24E255E6C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_focusGuide;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v2 = (v0 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotActionHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_maximumAdditionalPlayers) = 1;
  sub_24E348AE8();
  __break(1u);
}

uint64_t GKMultiplayerAddSlotCollectionViewCell.addSlotActionHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotActionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_24DE56C38(*v1, v1[1]);
  return v2;
}

uint64_t sub_24E256030(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t GKMultiplayerAddSlotCollectionViewCell.addSlotActionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotActionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24DE73FA0(v6, v7);
}

uint64_t sub_24E25618C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotActionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24E052988;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24DE56C38(v4, v5);
}

uint64_t sub_24E25622C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24DF88ACC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotActionHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24DE56C38(v3, v4);
  return sub_24DE73FA0(v8, v9);
}

uint64_t GKMultiplayerAddSlotCollectionViewCell.maximumAdditionalPlayers.getter()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_maximumAdditionalPlayers;
  swift_beginAccess();
  return *(v0 + v1);
}

void GKMultiplayerAddSlotCollectionViewCell.maximumAdditionalPlayers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_maximumAdditionalPlayers;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_24E2564AC();
}

uint64_t sub_24E256454@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_maximumAdditionalPlayers;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_24E2564AC()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_maximumAdditionalPlayers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 <= 1)
  {
    v2 = 1;
  }

  *(v0 + v1) = v2;
  sub_24E256500();
}

void sub_24E256500()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotButton);
  [v1 setContextMenuIsPrimary_];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_24E2580D0;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_24E257534;
  v4[3] = &block_descriptor_14;
  v3 = _Block_copy(v4);

  [v1 _setMenuProvider_];
  _Block_release(v3);
}

void (*GKMultiplayerAddSlotCollectionViewCell.maximumAdditionalPlayers.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_9_1();
  return sub_24E25664C;
}

void sub_24E25664C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24E2564AC();
  }
}

double GKMultiplayerAddSlotCollectionViewCell.measurements(fitting:in:)(void (*a1)(uint64_t, uint64_t), double a2, double a3)
{
  swift_getObjectType();

  return sub_24E257AD4(a1, v3, a2, a3);
}

CGSize __swiftcall GKMultiplayerAddSlotCollectionViewCell.sizeThatFits(_:)(CGSize a1)
{
  v2 = sub_24E2577F0(v1, v1, a1.width, a1.height);
  result.height = v3;
  result.width = v2;
  return result;
}

Swift::Void __swiftcall GKMultiplayerAddSlotCollectionViewCell.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61.receiver = v1;
  v61.super_class = ObjectType;
  objc_msgSendSuper2(&v61, sel_layoutSubviews, v7);
  v10 = [v1 contentView];
  [v10 bounds];
  OUTLINED_FUNCTION_8_2();

  OUTLINED_FUNCTION_2_105();
  v11 = [v1 traitCollection];
  v12 = [v11 userInterfaceIdiom];

  if ((!v12 || GKIsXRUIIdiomShouldUsePhoneUI()) && (v13 = [v1 window]) != 0)
  {
    v14 = v13;
    v15 = [v1 traitCollection];
    v16 = sub_24E3483C8();

    v17 = v14;
    [v17 frame];
    Width = CGRectGetWidth(v62);
    [v17 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v63.origin.x = v20;
    v63.origin.y = v22;
    v63.size.width = v24;
    v63.size.height = v26;
    Height = CGRectGetHeight(v63);

    if (v16)
    {
      v28 = Height < Width;
    }

    else
    {
      v28 = Width < Height;
    }

    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (qword_27F1DDB48 != -1)
    {
      OUTLINED_FUNCTION_0_160(&qword_27F1DDB48);
    }

    sub_24E257DC0(&qword_27F1E8C70, v54);
    v30 = *&v1[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotImageView];
    v31 = sub_24DF88A8C(0, &qword_27F1DFF00, 0x277D755E8);
    v32 = MEMORY[0x277D22A58];
    v56 = v31;
    v57 = MEMORY[0x277D22A58];
    v55 = v30;
    v33 = *&v1[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotLabel];
    *(&v59 + 1) = type metadata accessor for DynamicTypeLabel(0);
    v60 = v32;
    *&v58 = v33;
    v34 = v30;
    v35 = v33;
    [v1 bounds];
    sub_24E0A7190(v1, v36, v37, v38, v39);
    (*(v5 + 8))(v9, v3);
    [v34 frame];
    v40 = CGRectGetWidth(v64);
    v41 = [v34 layer];
    [v41 setCornerRadius_];

    v42 = [v34 layer];
    [v42 setCornerCurve_];

    v43 = [v1 contentView];
    [v43 bounds];
    OUTLINED_FUNCTION_8_2();

    OUTLINED_FUNCTION_2_105();
  }

  else
  {
    v44 = [*&v1[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_addSlotButton] titleLabel];
    if (v44)
    {
      v45 = v44;
      if (v29)
      {
        v46 = 2;
      }

      else
      {
        v46 = 0;
      }

      [v44 setNumberOfLines_];
    }

    type metadata accessor for DynamicTypeButton(0);
    if (swift_dynamicCastClass())
    {
      if (v29)
      {
        v47 = 0;
      }

      else
      {
        v47 = 2;
      }

      sub_24E28CC24(v47);
    }

    if (qword_27F1DDB48 != -1)
    {
      OUTLINED_FUNCTION_0_160(&qword_27F1DDB48);
    }

    sub_24E257DC0(&qword_27F1E8C70, v54);
    v48 = *&v1[OBJC_IVAR____TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell_vibrancyHost];
    v56 = type metadata accessor for VibrancyHostView();
    v57 = MEMORY[0x277D22A58];
    v55 = v48;
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    v49 = v48;
    [v1 bounds];
    sub_24E0A7190(v1, v50, v51, v52, v53);
    (*(v5 + 8))(v9, v3);
  }

  sub_24E257E1C(v54);
  sub_24E256CA0();
}