uint64_t sub_267BD997C()
{
  v2 = OUTLINED_FUNCTION_35_23();
  OUTLINED_FUNCTION_83(v2, v21);

  v3 = OUTLINED_FUNCTION_19_35();
  v6 = sub_267BD9AD4(v3, v4, v5);
  v8 = v7;
  v10 = v9;

  OUTLINED_FUNCTION_83(v1 + 384, v20);
  v11 = *(v1 + 384);

  v12 = sub_267BD9C8C(v8, v10, v11);

  if (v6 < 1)
  {
    *(v0 + 32) = 0;
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_83(v1 + 56, v19);
    v14 = *(v1 + 56);
    v15 = v14 & 0xC000000000000001;
    sub_267BBD0EC(v12, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v17 = OUTLINED_FUNCTION_33();
      v15 = MEMORY[0x26D609870](v17);
    }

    else
    {
      OUTLINED_FUNCTION_25_31();
    }

    OUTLINED_FUNCTION_83(v15 + 24, &v18);
    v16 = *(v15 + 24);

    if (v6 > *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_267B9AFEC(v16 + 40 * v6 - 8, v0);
    }
  }

  return result;
}

uint64_t sub_267BD9AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_267BA9948(), (v5 & 1) != 0))
  {
    v6 = *(*(a3 + 56) + 24 * v4);

    return v6;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);
    v9 = sub_267EF89F8();
    v10 = sub_267EF95E8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_267BA33E8(0xD000000000000035, 0x8000000267F1B8E0, &v13);
      _os_log_impl(&dword_267B93000, v9, v10, "Fatal error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x26D60A7B0](v12, -1, -1);
      MEMORY[0x26D60A7B0](v11, -1, -1);
    }

    result = sub_267EF9C98();
    __break(1u);
  }

  return result;
}

uint64_t sub_267BD9C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_267BA9948();
    if (v5)
    {
      return *(*(a3 + 56) + 8 * v4);
    }
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_267BA33E8(0xD000000000000035, 0x8000000267F1B8E0, &v12);
    _os_log_impl(&dword_267B93000, v8, v9, "Fatal error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D60A7B0](v11, -1, -1);
    MEMORY[0x26D60A7B0](v10, -1, -1);
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267BD9E24()
{
  v2 = OUTLINED_FUNCTION_35_23();
  OUTLINED_FUNCTION_83(v2, v27);

  v3 = OUTLINED_FUNCTION_19_35();
  v6 = sub_267BD9AD4(v3, v4, v5);
  v8 = v7;
  v10 = v9;

  OUTLINED_FUNCTION_83(v1 + 384, v26);
  v11 = *(v1 + 384);

  v12 = sub_267BD9C8C(v8, v10, v11);

  v13 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_83(v1 + 56, v25);
    v14 = *(v1 + 56);
    sub_267BBD0EC(v12, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) == 0)
    {
      v15 = *(v14 + 8 * v12 + 32);

      goto LABEL_4;
    }
  }

  v22 = OUTLINED_FUNCTION_37_1();
  v15 = MEMORY[0x26D609870](v22);

LABEL_4:
  OUTLINED_FUNCTION_83(v15 + 24, v24);
  v16 = *(v15 + 24);

  v17 = *(v16 + 16);

  if (v13 >= v17)
  {
    *(v0 + 32) = 0;
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  else
  {
    v19 = *(v1 + 56);
    v20 = v19 & 0xC000000000000001;
    sub_267BBD0EC(v12, (v19 & 0xC000000000000001) == 0, v19);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = MEMORY[0x26D609870](v12, v19);
    }

    else
    {
      OUTLINED_FUNCTION_25_31();
    }

    OUTLINED_FUNCTION_83(v20 + 24, v23);
    v21 = *(v20 + 24);

    if (v13 < 0)
    {
      __break(1u);
    }

    else if (v13 < *(v21 + 16))
    {
      sub_267B9AFEC(v21 + 40 * v13 + 32, v0);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_267BDA00C()
{
  OUTLINED_FUNCTION_12();
  v1[9] = v2;
  v1[10] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229670, qword_267EFDED0);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267BDA120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_267BDA184(void *a1, id a2, char a3)
{
  if ((a3 & 1) != 0 && [a2 code] == 3)
  {
    if (!sub_267C86CD0(a2))
    {
      goto LABEL_6;
    }

    v6 = sub_267C86CD0(a2);
    if (!v6)
    {
      __break(1u);
      return;
    }

    sub_267BAF0DC(v6);
    OUTLINED_FUNCTION_45_3();
    if (!v3)
    {
LABEL_6:
      if (sub_267DA7A98(a1))
      {
        sub_267BC1E68();
        [a1 copy];
        sub_267EF99B8();
        v7 = swift_unknownObjectRelease();
        OUTLINED_FUNCTION_0_45(v7);
        sub_267DE9088();
      }
    }
  }
}

void sub_267BDA27C(uint64_t a1)
{
  v2 = *(v1 + 353);
  v3 = *(v1 + 336);
  v15 = *(v1 + 304);
  sub_267EF7C18();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_19_29();
  sub_267EF8348();
  if (v15)
  {
    OUTLINED_FUNCTION_39_17();
    v4 = *(v1 + 192);
    OUTLINED_FUNCTION_56_15();
    (*(v5 + 8))(v4);
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    v6 = *(v1 + 192);
    v7 = *(v1 + 200);
    OUTLINED_FUNCTION_56_15();
    v8 = *(v1 + 56);
    (*(v9 + 8))(v6);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
    sub_267BD3DDC(v7, v8 + *(v3 + 24));
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267BDA4A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_267BDA4FC(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_267BDA534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A100, &qword_267F00480);
  OUTLINED_FUNCTION_18(v0);
  v1 = OUTLINED_FUNCTION_18_11();

  return sub_267BDA5EC(v1);
}

void sub_267BDA6DC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedPreferences];
  v8[4] = sub_267BDA4FC;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_267BDA4A0;
  v8[3] = &block_descriptor_17;
  v7 = _Block_copy(v8);

  [v6 getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_267BDA7EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267BDA880()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = *(v2 + 48);
  v7 = *(v4 + 8);

  return v7(v6);
}

uint64_t sub_267BDA980()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 353) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267BDAA94(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229698, &unk_267EFDF80) + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229670, qword_267EFDED0);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v8[v9] = a3;
  swift_storeEnumTagMultiPayload();
  v11 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state;
  swift_beginAccess();
  sub_267BDABD0(v8, a2 + v11);
  return swift_endAccess();
}

uint64_t sub_267BDABD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BDAC34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267BDA00C();
}

uint64_t sub_267BDACF4(char a1)
{
  result = 0x646E657070417369;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_11_0();
      result = v3 + 9;
      break;
    case 2:
      OUTLINED_FUNCTION_11_0();
      result = v6 | 8;
      break;
    case 3:
      OUTLINED_FUNCTION_11_0();
      result = v7 | 0xC;
      break;
    case 4:
      OUTLINED_FUNCTION_11_0();
      result = v4 + 5;
      break;
    case 5:
      OUTLINED_FUNCTION_11_0();
      result = v8 + 16;
      break;
    case 6:
      result = OUTLINED_FUNCTION_3_29();
      break;
    case 7:
      result = OUTLINED_FUNCTION_4_30();
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      OUTLINED_FUNCTION_11_0();
      result = v5 + 1;
      break;
    case 10:
      OUTLINED_FUNCTION_11_0();
      result = v9 + 3;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267BDAEA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void *OUTLINED_FUNCTION_139_1()
{

  return __swift_project_boxed_opaque_existential_0((v1 - 128), v0);
}

uint64_t sub_267BDAF74(uint64_t a1)
{
  sub_267EF7C18();
  if (!v1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);
    v7 = sub_267EF89F8();
    v19 = sub_267EF95D8();
    if (os_log_type_enabled(v7, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_267B93000, v7, v19, "#AnnounceSettingsUtils#shouldShowAnnounceButton No app Bundle Identifier found, returning false", v20, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_29;
  }

  v2 = objc_opt_self();
  v3 = [v2 currentNotificationSettingsCenter];
  v4 = sub_267EF8FF8();
  v5 = [v3 notificationSourceWithIdentifier_];

  v6 = [v5 sourceSettings];
  v7 = [v6 notificationSettings];

  if ([v7 carPlaySetting]!= 2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);

    v22 = sub_267EF89F8();
    v23 = sub_267EF95D8();

    if (os_log_type_enabled(v22, v23))
    {
      swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_5_4();
      v26 = OUTLINED_FUNCTION_1_68(4.8149e-34, v24, v25);

      *(v5 + 4) = v26;
      v29 = "#AnnounceSettingsUtils#shouldShowAnnounceButton CarPlay banners disabled for bundle=%s, not showing Announce button";
LABEL_17:
      OUTLINED_FUNCTION_22_1(&dword_267B93000, v27, v28, v29);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_32_0();
LABEL_22:
      OUTLINED_FUNCTION_32_0();
LABEL_28:

LABEL_29:
      return 0;
    }

LABEL_27:

    goto LABEL_28;
  }

  v8 = [v2 currentNotificationSettingsCenter];
  v9 = [v8 notificationSystemSettings];

  v10 = [v9 announcementCarPlaySetting];
  if ((v10 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v30 = sub_267EF8A08();
    __swift_project_value_buffer(v30, qword_280240FB0);
    v22 = sub_267EF89F8();
    v31 = sub_267EF95D8();
    if (!os_log_type_enabled(v22, v31))
    {
      goto LABEL_28;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_267B93000, v22, v31, "#AnnounceSettingsUtils#shouldShowAnnounceButton Announce is disabled, not showing Announce button", v32, 2u);
    goto LABEL_22;
  }

  if ([v7 announcementSetting]!= 2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v33 = sub_267EF8A08();
    __swift_project_value_buffer(v33, qword_280240FB0);

    v22 = sub_267EF89F8();
    v34 = sub_267EF95D8();

    if (os_log_type_enabled(v22, v34))
    {
      swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_5_4();
      v36 = OUTLINED_FUNCTION_1_68(4.8149e-34, v24, v35);

      *(v5 + 4) = v36;
      v29 = "#AnnounceSettingsUtils#shouldShowAnnounceButton Announce is disabled for bundle=%s, not showing Announce button";
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v11 = sub_267EF8A08();
  __swift_project_value_buffer(v11, qword_280240FB0);

  v12 = sub_267EF89F8();
  v13 = sub_267EF95D8();

  if (os_log_type_enabled(v12, v13))
  {
    swift_slowAlloc();
    v38 = OUTLINED_FUNCTION_5_4();
    v15 = OUTLINED_FUNCTION_1_68(4.8149e-34, v38, v14);

    *(v5 + 4) = v15;
    OUTLINED_FUNCTION_22_1(&dword_267B93000, v16, v17, "#AnnounceSettingsUtils#shouldShowAnnounceButton all conditions met for bundle=%s, showing Announce button");
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  return 1;
}

id sub_267BDB494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_267EF2CC8();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) != 1)
  {
    v11 = sub_267EF2C48();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v10) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_267EF2C48();
    (*(*(v10 - 8) + 8))(a2, v10);
  }

  v13 = sub_267EF2E98();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v13) != 1)
  {
    v14 = sub_267EF2E58();
    (*(*(v13 - 8) + 8))(a3, v13);
  }

  v15 = sub_267EF2EF8();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v15) != 1)
  {
    v16 = sub_267EF2EC8();
    (*(*(v15 - 8) + 8))(a4, v15);
  }

  v17 = [v5 initWithStartDate:v11 endDate:v12 onCalendar:v14 inTimeZone:v16];

  return v17;
}

id sub_267BDB698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F58, &unk_267EFFCF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C228, &qword_267F09BA8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = sub_267EF2CC8();
  v20 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v19) != 1)
  {
    sub_267BF9918(a3, v18);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v19);
    v21 = sub_267EF2E98();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);
    v22 = sub_267EF2EF8();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v22);
    v23 = objc_allocWithZone(MEMORY[0x277CD3B68]);
    v20 = sub_267BDB494(v18, v16, v12, v9);
  }

  if (!a4)
  {
    v24 = 0;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_7:
    v25 = 0;
    goto LABEL_8;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v24 = sub_267EF92D8();

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v25 = sub_267EF92D8();

LABEL_8:
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = [v26 initWithRecipients:0 senders:v24 searchTerms:0 attributes:v30 dateTimeRange:v20 identifiers:0 notificationIdentifiers:0 speakableGroupNames:0 conversationIdentifiers:v25];

  sub_267B9FF34(a3, &qword_28022BD90, &unk_267EFCDD0);
  return v27;
}

uint64_t sub_267BDB970(uint64_t a1, void *a2, void *a3, void (*a4)(void), unint64_t a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v36 - v13;
  OUTLINED_FUNCTION_94();
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v16 = *(a1 + 112);
  if (!v16)
  {
    v27 = qword_280228818;

    if (v27 == -1)
    {
LABEL_18:
      v28 = sub_267EF8A08();
      __swift_project_value_buffer(v28, qword_280240FB0);
      v29 = sub_267EF89F8();
      v30 = sub_267EF95D8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_267B93000, v29, v30, "No app conversationID for the Conversation, not searching for new messages to append", v31, 2u);
        MEMORY[0x26D60A7B0](v31, -1, -1);
      }

      v32 = [objc_allocWithZone(MEMORY[0x277CD4050]) initWithCode:3 userActivity:0];
      sub_267C1C27C(v32);
      a4(0);
      goto LABEL_26;
    }

LABEL_29:
    swift_once();
    goto LABEL_18;
  }

  v17 = *(a1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_267EFC020;
  *(v18 + 32) = v17;
  *(v18 + 40) = v16;

  sub_267DE0D58(v14);
  v19 = sub_267EF2CC8();
  v42 = v14;
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v19);
  v20 = sub_267E2D6E4(a2);
  if (v20)
  {
    v21 = v20;
    v36[0] = v18;
    v36[1] = a1;
    v37 = a3;
    v38 = v15;
    v39 = a5;
    v40 = a6;
    v41 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
    v22 = sub_267BAF0DC(v20);
    v23 = 0;
    a4 = (v21 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v22 == v23)
      {

        a3 = v37;
        v15 = v38;
        v18 = v36[0];
        v26 = v41;
        goto LABEL_22;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x26D609870](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      [v24 copy];
      sub_267EF99B8();
      swift_unknownObjectRelease();

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      if ((swift_dynamicCast() & 1) != 0 && v43)
      {
        MEMORY[0x26D608F90]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v41 = v44;
        ++v23;
      }

      else
      {
        ++v23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = 0;
LABEL_22:
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  v32 = sub_267BDB698(2, v18, v42, v26);
  sub_267EF7C18();
  if (v33)
  {
    v34 = sub_267EF8FF8();
  }

  else
  {
    v34 = 0;
  }

  [v32 _setLaunchId_];

  sub_267BC42D8(a3, v32, sub_267C86E14, v15);
LABEL_26:
}

uint64_t sub_267BDBDEC()
{

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_267BDBE28(void (*a1)(void), unint64_t a2)
{
  v6 = v2[5];
  v5 = v2[6];
  v7 = v5[8];
  v8 = v5[5];
  v9 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v8);
  v10 = *(v9 + 16);
  v11 = v7;
  v10(v13, v8, v9);

  sub_267BDB970(v6, v11, v13, a1, a2, v2);

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_267BDBEF4()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267BDC014()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_94_4();
  sub_267BD6DA0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267BDC09C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1248) = v0;

  OUTLINED_FUNCTION_76_2();
  if (!v0)
  {
    *(v3 + 1256) = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267BDC3FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 360) = v4;
  *(v2 + 368) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267BDC500()
{
  v1 = v0[42];
  sub_267EF3CA8();
  OUTLINED_FUNCTION_11_18();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  v2 = *(v1 + 24);
  v39 = *(v2 + 16);
  if (!v39)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_36:
    v0[47] = v5;
    v30 = v0[35];
    sub_267EF7C18();
    v0[48] = v31;
    __swift_project_boxed_opaque_existential_0((v30 + 16), *(v30 + 40));
    v32 = OUTLINED_FUNCTION_68_0();
    v33(v32);
    __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
    OUTLINED_FUNCTION_68_0();
    sub_267EF3B98();
    v0[20] = &type metadata for MessagesFeatureFlagsImpl;
    v0[21] = off_2878D1228;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[49] = v34;
    *v34 = v35;
    v34[1] = sub_267BF8490;

    return sub_267BF57AC();
  }

  v3 = v0 + 27;
  v38 = v2 + 32;

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v36 = v0;
  while (1)
  {
    sub_267B9AFEC(v38 + 40 * v4, (v0 + 7));
    v6 = v0[10];
    v7 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v6);
    v8 = (*(v7 + 16))(v6, v7);

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v40 = v4;
    v9 = v8 >> 62 ? sub_267EF9A68() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v5 >> 62;
    result = v5 >> 62 ? sub_267EF9A68() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = result + v9;
    if (__OFADD__(result, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v42 = v9;
    if (result)
    {
      if (!v10)
      {
        v13 = v5 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        if (v14 >= v12)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

LABEL_13:
      sub_267EF9A68();
      goto LABEL_14;
    }

    if (v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    result = sub_267EF9BB8();
    v5 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
    v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_15:
    v15 = v14 - *(v13 + 16);
    if (v8 >> 62)
    {
      v17 = sub_267EF9A68();
      if (v17)
      {
        v18 = v17;
        result = sub_267EF9A68();
        if (v15 < result)
        {
          goto LABEL_42;
        }

        if (v18 < 1)
        {
          goto LABEL_44;
        }

        v37 = result;
        sub_267CF6EF8();
        do
        {
          v19 = OUTLINED_FUNCTION_115_6();
          __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
          v21 = OUTLINED_FUNCTION_75_13();
          v23 = sub_267C73FD8(v21, v22, v8);
          v25 = *v24;
          v23(v3, 0);
          OUTLINED_FUNCTION_104_9();
        }

        while (!v26);
        v0 = v36;
        v16 = v37;
        goto LABEL_26;
      }
    }

    else
    {
      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        if (v15 < v16)
        {
          goto LABEL_43;
        }

        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        swift_arrayInitWithCopy();
LABEL_26:

        if (v16 < v42)
        {
          goto LABEL_40;
        }

        if (v16 > 0)
        {
          v27 = *(v13 + 16);
          v28 = __OFADD__(v27, v16);
          v29 = v27 + v16;
          if (v28)
          {
            goto LABEL_41;
          }

          *(v13 + 16) = v29;
        }

        goto LABEL_31;
      }
    }

    if (v9 > 0)
    {
      goto LABEL_40;
    }

LABEL_31:
    v4 = v40 + 1;
    if (v40 + 1 == v39)
    {

      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_267BDC968(void *a1)
{
  v1 = [a1 conversationIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

void sub_267BDC9CC()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SearchForMessagesFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v39 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v17 = v16 - v15;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v18 = sub_267EF8A08();
  __swift_project_value_buffer(v18, qword_280240FB0);
  (*(v13 + 16))(v17, v3, v11);
  v19 = sub_267EF89F8();
  v20 = sub_267EF95C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_48();
    v37 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    v38 = v4;
    v36 = v23;
    v41[0] = v23;
    *v22 = 136315138;
    sub_267BC1DB4(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v24 = sub_267EF9E58();
    v25 = v1;
    v27 = v26;
    (*(v13 + 8))(v17, v11);
    sub_267BA33E8(v24, v27, v41);
    OUTLINED_FUNCTION_25_0();
    v1 = v25;

    *(v22 + 4) = v24;
    _os_log_impl(&dword_267B93000, v19, v20, "#SearchForMessagesFlow received input %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v4 = v38;
    OUTLINED_FUNCTION_32_0();
    v10 = v37;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v13 + 8))(v17, v11);
  }

  v28 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  OUTLINED_FUNCTION_83(v1 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state, v41);
  sub_267BC0ABC(v1 + v28, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_267B9F658(v10);
  if (EnumCaseMultiPayload)
  {

    v30 = sub_267EF89F8();
    v31 = sub_267EF95D8();

    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_48();
      v32 = OUTLINED_FUNCTION_64_2();
      v40 = v32;
      *v4 = 136315138;
      sub_267BC0ABC(v1 + v28, v39);
      v33 = sub_267EF9098();
      v35 = sub_267BA33E8(v33, v34, &v40);

      *(v4 + 4) = v35;
      _os_log_impl(&dword_267B93000, v30, v31, "#SearchForMessagesFlow input received in state %s, ignoring", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_26();
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t type metadata accessor for SearchForMessagesUnsupportedValueFlowStrategy(uint64_t a1)
{
  result = qword_28022B468;
  if (!qword_28022B468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267BDCDC8()
{
  OUTLINED_FUNCTION_48_0();
  v56 = v0;
  v2 = v1;
  v59 = v3;
  v5 = v4;
  v62 = v6;
  v63 = v7;
  v9 = v8;
  v11 = v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  OUTLINED_FUNCTION_58();
  v61 = v12;
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v13);
  v60 = &v54 - v14;
  v15 = sub_267EF7B88();
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v18 = OUTLINED_FUNCTION_18(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_60();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v54 - v23;
  v87 = sub_267EF8938();
  v88 = MEMORY[0x277D5FDD8];
  v55 = v87;
  v86[0] = v5;
  v85[3] = &type metadata for CATProvider;
  v85[4] = &off_2878CE7A0;
  v84[3] = &type metadata for MessagesFeatureFlagsImpl;
  v84[4] = off_2878D1228;
  v25 = sub_267EF68A8();
  v83[3] = v25;
  v83[4] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v83);
  v27 = *(*(v25 - 8) + 32);
  v27(boxed_opaque_existential_0, v59, v25);
  v59 = v11;
  sub_267B9AFEC(v11, v82);
  sub_267B9AFEC(v85, v81);
  sub_267B9AFEC(v84, v80);
  v58 = v9;
  sub_267BB170C(v9, v24, &qword_28022A660, &unk_267F013A0);
  sub_267B9AFEC(v86, v79);
  sub_267B9AFEC(v83, v78);
  __swift_mutable_project_boxed_opaque_existential_1(v81, v81[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v80, v80[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v78, v78[3]);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_0();
  v30 = OUTLINED_FUNCTION_26_30(v29);
  v31(v30);
  v76 = &type metadata for CATProvider;
  v77 = &off_2878CE7A0;
  v73 = &type metadata for MessagesFeatureFlagsImpl;
  v74 = off_2878D1228;
  v70 = v25;
  v71 = &off_2878D54D8;
  v32 = __swift_allocate_boxed_opaque_existential_0(&v69);
  v27(v32, v11, v25);
  v33 = v57;
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  *(v2 + 56) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v75, v76);
  *(v2 + 64) = sub_267BB4A3C();
  sub_267BB170C(v24, v21, &qword_28022A660, &unk_267F013A0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v33) == 1)
  {
    v68[3] = v25;
    v68[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v68);
    sub_267EF6898();
    v34 = v55;
    v35 = sub_267EF8928();
    v67[3] = v34;
    v67[4] = MEMORY[0x277D5FDD8];
    v67[0] = v35;
    sub_267B9AFEC(v82, v66);
    sub_267B9AFEC(v68, v65);
    sub_267B9AFEC(v67, v64);
    v36 = swift_allocObject();
    sub_267B9A5E8(v66, v36 + 16);
    sub_267B9A5E8(v65, v36 + 56);
    sub_267B9A5E8(v64, v36 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v37 = v60;
    OUTLINED_FUNCTION_99_0();
    sub_267EF7058();
    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v38, v39, v40);
    __swift_destroy_boxed_opaque_existential_0(v59);
    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v41, v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v86);
    OUTLINED_FUNCTION_12_39();
    __swift_destroy_boxed_opaque_existential_0(v67);
    __swift_destroy_boxed_opaque_existential_0(v68);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v33);
    v45 = v61;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v21, &qword_28022A660, &unk_267F013A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v46, v47, v48);
    __swift_destroy_boxed_opaque_existential_0(v59);
    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v49, v50, v51);
    __swift_destroy_boxed_opaque_existential_0(v86);
    OUTLINED_FUNCTION_12_39();
    v37 = v60;
    v45 = v61;
    (*(v61 + 32))(v60, v21, v33);
  }

  (*(v45 + 32))(v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer, v37, v33);
  v52 = (v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  v53 = v63;
  *v52 = v62;
  v52[1] = v53;
  sub_267B9A5E8(&v72, v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags);
  sub_267B9A5E8(v79, v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver);
  sub_267B9A5E8(&v69, v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);
  sub_267B9A5E8(v82, v2 + 16);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v78);
  __swift_destroy_boxed_opaque_existential_0(v80);
  __swift_destroy_boxed_opaque_existential_0(v81);
  OUTLINED_FUNCTION_47();
}

uint64_t type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy(uint64_t a1)
{
  result = qword_28022C948;
  if (!qword_28022C948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BDD444(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v14 = sub_267EF2CC8();
  OUTLINED_FUNCTION_23();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v20 = (v19 - v18);
  sub_267EF2CB8();
  v21 = v20;
  sub_267EF2C88();
  v23 = v22;
  v59 = *(v16 + 8);
  v59(v20, v14);
  if (qword_280228818 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v24 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);

    v63 = v21;
    v25 = sub_267EF89F8();
    v26 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v26))
    {
      v27 = OUTLINED_FUNCTION_48();
      *v27 = 134217984;
      *(v27 + 4) = sub_267BAF0DC(a1);

      _os_log_impl(&dword_267B93000, v25, v26, "#ConversationStateBuilder Beginning to create Conversation State for %ld messages", v27, 0xCu);
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    if (!sub_267BAF0DC(a1))
    {
      v34 = sub_267EF89F8();
      v35 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_36(v35))
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    v28 = sub_267CF5230(a1, a4, a5);
    if (!sub_267BAF0DC(v28))
    {

      v34 = sub_267EF89F8();
      v36 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_36(v36))
      {
LABEL_12:
        v37 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v37);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v38, v39, v40, v41, v42, 2u);
        OUTLINED_FUNCTION_26();
      }

LABEL_13:

      return MEMORY[0x277D84F90];
    }

    v29 = sub_267BDD9A0(v28);

    v30 = sub_267BDE368(v29, a8, a2, a3, a11 & 1);

    v21 = v63;
    v31 = sub_267EF89F8();
    v32 = sub_267EF95D8();
    v58 = v14;
    v57 = v20;
    if (OUTLINED_FUNCTION_36(v32))
    {
      v33 = OUTLINED_FUNCTION_48();
      *v33 = 134217984;
      *(v33 + 4) = *(v30 + 16);

      _os_log_impl(&dword_267B93000, v31, v63, "#ConversationStateBuilder Created components grouped into %ld conversations", v33, 0xCu);
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    a1 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    v20 = *(v30 + 16);
    v14 = a7;
    if (!v20)
    {
      break;
    }

    a8 = 0;
    a4 = a10;
    while (a8 < *(v30 + 16))
    {
      v43 = *(v30 + 32 + 8 * a8);
      if (*(v43 + 16))
      {
        type metadata accessor for Conversation();
        swift_allocObject();

        sub_267BE591C(v43, a2, a6, v14, a9, a10);
        v21 = &v66;
        MEMORY[0x26D608F90]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        a1 = v66;
      }

      else
      {
        v21 = sub_267EF89F8();
        v44 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_5_2(v44))
        {
          v45 = OUTLINED_FUNCTION_32();
          *v45 = 0;
          _os_log_impl(&dword_267B93000, v21, v44, "#ConversationStateBuilder Skipping empty readable components", v45, 2u);
          v14 = a7;
          OUTLINED_FUNCTION_32_0();
        }
      }

      if (v20 == ++a8)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_32:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

LABEL_26:

  sub_267EF2CB8();
  sub_267EF2C88();
  v47 = v46;
  v59(v57, v58);

  v48 = sub_267EF89F8();
  v49 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134218240;
    *(v50 + 4) = sub_267BAF0DC(a1);
    *(v50 + 12) = 2048;
    *(v50 + 14) = v47 - v23;

    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
    OUTLINED_FUNCTION_26();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_267BDD9A0(unint64_t isUniquelyReferenced_nonNull_native)
{
  v60 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v59 = v6 - v5;
  if (qword_280228818 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v7 = sub_267EF8A08();
    __swift_project_value_buffer(v7, qword_280240FB0);

    v8 = sub_267EF89F8();
    v9 = sub_267EF95D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = sub_267BAF0DC(isUniquelyReferenced_nonNull_native);

      _os_log_impl(&dword_267B93000, v8, v9, "#ConversationStateBuilder Beginning to group messages by conversation: %ld messages to be grouped", v10, 0xCu);
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
    v11 = MEMORY[0x277D84F90];
    v12 = sub_267EF8F28();
    v63 = sub_267BAF0DC(isUniquelyReferenced_nonNull_native);
    if (v63)
    {
      break;
    }

    v64 = v11;
LABEL_44:
    isUniquelyReferenced_nonNull_native = 0;
    v45 = *(v64 + 16);
    v46 = (v64 + 40);
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v45 == isUniquelyReferenced_nonNull_native)
      {

        return v47;
      }

      if (isUniquelyReferenced_nonNull_native >= *(v64 + 16))
      {
        break;
      }

      if (!v12[2])
      {
        goto LABEL_56;
      }

      v3 = *v46;

      v48 = sub_267BA9948();
      v50 = v49;

      if ((v50 & 1) == 0)
      {
        goto LABEL_57;
      }

      v51 = *(v12[7] + 8 * v48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_7();
        sub_267C70744();
        v47 = v54;
      }

      v53 = *(v47 + 16);
      v52 = *(v47 + 24);
      v3 = (v53 + 1);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v52);
        sub_267C70744();
        v47 = v55;
      }

      *(v47 + 16) = v3;
      *(v47 + 8 * v53 + 32) = v51;
      v46 += 2;
      ++isUniquelyReferenced_nonNull_native;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v13 = 0;
  v62 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v58 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v64 = MEMORY[0x277D84F90];
  v57 = (v3 + 8);
  v61 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v62)
    {
      v14 = MEMORY[0x26D609870](v13, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v13 >= *(v58 + 16))
      {
        goto LABEL_60;
      }

      v14 = *(isUniquelyReferenced_nonNull_native + 8 * v13 + 32);
    }

    v3 = v14;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_58;
    }

    v15 = sub_267BDC968(v14);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
    }

    else
    {
      sub_267EF2D18();
      v17 = sub_267EF2CE8();
      v18 = v19;
      (*v57)(v59, v60);
    }

    if (!v12[2])
    {
      break;
    }

    OUTLINED_FUNCTION_50_1();
    sub_267BA9948();
    if ((v20 & 1) == 0)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_50_1();
    v21 = sub_267BA9948();
    if (__OFADD__(v12[2], (v22 & 1) == 0))
    {
      goto LABEL_62;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AAF8, &qword_267F02C70);
    if (sub_267EF9C68())
    {
      OUTLINED_FUNCTION_50_1();
      v25 = sub_267BA9948();
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_65;
      }

      v23 = v25;
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_63;
    }

    v65 = *(v12[7] + 8 * v23);
    v3 = v3;
    MEMORY[0x26D608F90]();
    v27 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v27 >> 1)
    {
      OUTLINED_FUNCTION_8_2(v27);
      sub_267EF9328();
    }

    sub_267EF9368();
    if (v65)
    {

      *(v12[7] + 8 * v23) = v65;
    }

    else
    {

      sub_267CF6F5C(v12[6] + 16 * v23);
      sub_267EF9C88();
    }

    v42 = v13 + 1;

    isUniquelyReferenced_nonNull_native = v61;
LABEL_41:
    ++v13;
    if (v42 == v63)
    {
      goto LABEL_44;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_7();
    sub_267BF4EE8();
    v64 = v43;
  }

  v29 = *(v64 + 16);
  v28 = *(v64 + 24);
  if (v29 >= v28 >> 1)
  {
    OUTLINED_FUNCTION_8_2(v28);
    sub_267BF4EE8();
    v64 = v44;
  }

  *(v64 + 16) = v29 + 1;
  v30 = v64 + 16 * v29;
  *(v30 + 32) = v17;
  *(v30 + 40) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_267EFCA40;
  *(v31 + 32) = v3;
  v3 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_50_1();
  v32 = sub_267BA9948();
  if (__OFADD__(v12[2], (v33 & 1) == 0))
  {
    goto LABEL_59;
  }

  v34 = v32;
  v35 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AAF8, &qword_267F02C70);
  if ((sub_267EF9C68() & 1) == 0)
  {
LABEL_34:
    if (v35)
    {
      *(v12[7] + 8 * v34) = v31;
    }

    else
    {
      v12[(v34 >> 6) + 8] |= 1 << v34;
      v38 = (v12[6] + 16 * v34);
      *v38 = v17;
      v38[1] = v18;
      *(v12[7] + 8 * v34) = v31;
      v39 = v12[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_61;
      }

      v12[2] = v41;
    }

    isUniquelyReferenced_nonNull_native = v61;
    v42 = v13 + 1;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_50_1();
  v36 = sub_267BA9948();
  if ((v35 & 1) == (v37 & 1))
  {
    v34 = v36;
    goto LABEL_34;
  }

LABEL_65:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267BDE080(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  swift_bridgeObjectRetain_n();
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    v11 = sub_267EF9098();
    v13 = sub_267BA33E8(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    v14 = sub_267BAF0DC(a1);

    *(v9 + 14) = v14;

    _os_log_impl(&dword_267B93000, v7, v8, "#SearchForMessagesFlowSource Applying reading qualifier: %s for %ld messages", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D60A7B0](v10, -1, -1);
    MEMORY[0x26D60A7B0](v9, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return a1;
    }

    sub_267C6EFF4(a2, a1);
    OUTLINED_FUNCTION_0_29();
    if ((a3 & 1) == 0)
    {
      goto LABEL_15;
    }

    sub_267EF9ED8();
    swift_unknownObjectRetain_n();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = MEMORY[0x277D84F90];
    }

    v16 = *(v15 + 16);

    v17 = (a3 >> 1) - a2;
    if (!__OFSUB__(a3 >> 1, a2))
    {
LABEL_19:
      if (v16 == v17)
      {
        a1 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!a1)
        {
          a1 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }

        return a1;
      }

      swift_unknownObjectRelease();
LABEL_15:
      sub_267C73A14(v7, a1, a2, a3);
      a1 = v18;
LABEL_22:
      swift_unknownObjectRelease();
      return a1;
    }

    __break(1u);
  }

  sub_267D2E59C(a2, a1);
  OUTLINED_FUNCTION_0_29();
  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_267EF9ED8();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x277D84F90];
  }

  v16 = *(v19 + 16);

  v17 = (a3 >> 1) - a2;
  if (!__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_267BDE368(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = a2;
  v10 = MEMORY[0x277D84F90];
  v11 = a1 + 32;
  do
  {

    v13 = sub_267BE6CAC(v12, v9, a3, a4, a5 & 1);

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v14 = sub_267EF8A08();
    __swift_project_value_buffer(v14, qword_280240FB0);

    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = a3;
      v18 = a4;
      v19 = a5;
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v13[2];

      _os_log_impl(&dword_267B93000, v15, v16, "#ConversationStateBuilder Created %ld component(s)", v20, 0xCu);
      v21 = v20;
      a5 = v19;
      a4 = v18;
      a3 = v17;
      v9 = a2;
      MEMORY[0x26D60A7B0](v21, -1, -1);
    }

    else
    {
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267BE58F8(0, *(v10 + 16) + 1, 1, v10);
      v10 = v24;
    }

    v23 = *(v10 + 16);
    v22 = *(v10 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_267BE58F8(v22 > 1, v23 + 1, 1, v10);
      v10 = v25;
    }

    *(v10 + 16) = v23 + 1;
    *(v10 + 8 * v23 + 32) = v13;
    v11 += 8;
    --v5;
  }

  while (v5);
  return v10;
}

uint64_t sub_267BDE58C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a5)
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_267BE6A64(v14, a3, a4, a5);
  return sub_267EF9BE8();
}

unint64_t sub_267BDE638(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_267EF9A68();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_267BDE6DC(void *a1)
{
  v1 = [a1 referencedCommands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A400, &qword_267F08350);
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267BDE748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
    while (2)
    {
      v19 = v4;
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v11 = v7;
      do
      {
        v12 = *v11;
        v13 = v9;
        v14 = v12;
        v15 = sub_267BDE844(v13, v14);

        if (!v15)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v16 = *v11;
        v9 = *(v11 + 8);
        *v11 = v9;
        *(v11 + 8) = v16;
        v11 -= 8;
      }

      while (!__CFADD__(v10++, 1));
      v4 = v19 + 1;
      v7 += 8;
      --v8;
      if (v19 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

BOOL sub_267BDE844(void (*a1)(uint64_t), void *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_6_55(v10, v31);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_70();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_3_83();
  if (v15)
  {
    v16 = v15;
    v32 = a1;
    sub_267EF2C98();

    v17 = OUTLINED_FUNCTION_5_70();
    a1(v17);
    v18 = [a2 (v3 + 1583)];
    if (v18)
    {
      v19 = v18;
      sub_267EF2C98();

      (a1)(v4, v5, v2);
      sub_267EF2C88();
      v21 = v20;
      sub_267EF2C88();
      v22 = OUTLINED_FUNCTION_8_58();
      v4(v22);
      v23 = OUTLINED_FUNCTION_100_1();
      v4(v23);
      return v21 < v6;
    }

    v25 = OUTLINED_FUNCTION_100_1();
    v26(v25);
  }

  v27 = [a1 (v3 + 1583)];
  if (v27)
  {
    v28 = v27;
    sub_267EF2C98();

    OUTLINED_FUNCTION_1_86(v33, 0);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_86(v33, 1);
    if (qword_280228820 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_280228820);
    }

    v29 = qword_280240FC8;
    v30 = sub_267EF95D8();
    sub_267EF8998("#dateSorterOldest Found message with no dateTime", 48, 2, &dword_267B93000, v29, v30, MEMORY[0x277D84F90]);
    return 1;
  }
}

char *sub_267BDEADC(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
  v2 = MEMORY[0x277D84F90];
  v19 = OUTLINED_FUNCTION_12_17();
  v18 = OUTLINED_FUNCTION_12_17();
  v16 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];
  v3 = sub_267BAF0DC(a1);
  v4 = a1 & 0xC000000000000001;
  if (v3)
  {
    while (!__OFSUB__(v3--, 1))
    {
      if (v4)
      {
        v6 = MEMORY[0x26D609870](v3, a1);
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 32 + 8 * v3);
      }

      v7 = v6;
      v15 = v6;
      sub_267BE5258(&v15, &v19, &v16, &v17, &v18);

      if (!v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_10:
    v15 = v2;
    if (a1 >> 62)
    {
LABEL_26:
      v8 = sub_267EF9A68();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v8 != i; ++i)
    {
      if (v4)
      {
        v10 = MEMORY[0x26D609870](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v10 = *(a1 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14[0] = v10;
      sub_267BE704C(v14, &v17, &v16, &v19, &v15);
    }
  }

  v12 = sub_267BDED24(v15, &v17);

  return v12;
}

uint64_t sub_267BDECD8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_267EF9328();
  }

  return result;
}

char *sub_267BDED04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_267BE55F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_267BDED24(unint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_267EF9A68())
  {
    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v4;
    }

    v31 = MEMORY[0x277D84F90];
    result = sub_267BDED04(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v6 = 0;
    v27 = i;
    v28 = v2 & 0xC000000000000001;
    v4 = v31;
    v26 = v2 & 0xFFFFFFFFFFFFFF8;
    v25 = v2 + 32;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v30 = v4;
      if (v28)
      {
        v8 = MEMORY[0x26D609870]();
      }

      else
      {
        if (v6 >= *(v26 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(v25 + 8 * v6);
      }

      v9 = *a2;
      v10 = v8;

      v11 = [v10 identifier];
      v12 = sub_267EF9028();
      v14 = v13;

      if (*(v9 + 16))
      {
        sub_267EF9FC8();
        sub_267EF9128();
        v15 = sub_267EFA018();
        v16 = ~(-1 << *(v9 + 32));
        do
        {
          v17 = v15 & v16;
          v18 = (1 << (v15 & v16)) & *(v9 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8));
          v19 = v18 != 0;
          if (!v18)
          {
            break;
          }

          v20 = (*(v9 + 48) + 16 * v17);
          if (*v20 == v12 && v20[1] == v14)
          {
            break;
          }

          v22 = sub_267EF9EA8();
          v15 = v17 + 1;
        }

        while ((v22 & 1) == 0);
      }

      else
      {
        v19 = 0;
      }

      v4 = v30;
      v2 = *(v30 + 16);
      v23 = *(v30 + 24);
      if (v2 >= v23 >> 1)
      {
        sub_267BDED04((v23 > 1), v2 + 1, 1);
        v4 = v30;
      }

      *(v4 + 16) = v2 + 1;
      v24 = v4 + 16 * v2;
      *(v24 + 32) = v10;
      *(v24 + 40) = v19;
      v6 = v7;
      if (v7 == v27)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_267BDEF8C(void *a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v424 = a5;
  v421 = a4;
  v429 = a3;
  LODWORD(v422) = a2;
  v417 = type metadata accessor for ImageComponent(0);
  v6 = MEMORY[0x28223BE20](v417);
  v419 = &v416 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v418 = &v416 - v8;
  v9 = type metadata accessor for SafetySessionComponent(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v416 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v416 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v416 - v16;
  v18 = sub_267EF2BA8();
  v19 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v21 = &v416 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_267EF2728();
  v431 = *(v22 - 8);
  v432 = v22;
  MEMORY[0x28223BE20](v22);
  v430 = &v416 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = sub_267EF2D28();
  v439 = *(v437 - 8);
  MEMORY[0x28223BE20](v437);
  v436 = &v416 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_267EF2E38();
  v434 = *(v25 - 8);
  v435 = v25;
  MEMORY[0x28223BE20](v25);
  v425 = (&v416 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v428 = type metadata accessor for TextComponent(0);
  v27 = MEMORY[0x28223BE20](v428);
  v420 = &v416 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v423 = &v416 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v427 = &v416 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v433 = &v416 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v426 = &v416 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v416 - v37;
  v460[0] = MEMORY[0x277D84F90];
  *&v438 = a1;
  v39 = [a1 messageType];
  switch(v39)
  {
    case 0uLL:
      sub_267BB8214(v438);
      if (!v163)
      {
        goto LABEL_72;
      }

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v164 = sub_267EF8A08();
      __swift_project_value_buffer(v164, qword_280240FB0);
      v165 = sub_267EF89F8();
      v166 = sub_267EF95D8();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        *v167 = 0;
        _os_log_impl(&dword_267B93000, v165, v166, "#ConversationStateBuilder: Unspecified messageType with content, treating as a text message", v167, 2u);
        MEMORY[0x26D60A7B0](v167, -1, -1);
      }

      goto LABEL_61;
    case 1uLL:
LABEL_61:
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v168 = sub_267EF8A08();
      __swift_project_value_buffer(v168, qword_280240FB0);
      v169 = sub_267EF89F8();
      v170 = sub_267EF95D8();
      v171 = os_log_type_enabled(v169, v170);
      v172 = v438;
      v173 = v425;
      if (v171)
      {
        v174 = swift_slowAlloc();
        *v174 = 0;
        _os_log_impl(&dword_267B93000, v169, v170, "#ConversationStateBuilder: Received a text message", v174, 2u);
        MEMORY[0x26D60A7B0](v174, -1, -1);
      }

      v175 = sub_267BB8214(v172);
      if (v176)
      {
        v177 = v175;
      }

      else
      {
        v177 = 0;
      }

      v178 = 0xE000000000000000;
      if (v176)
      {
        v178 = v176;
      }

      v433 = v178;
      v179 = sub_267BE56FC(v172);
      if (v179)
      {
        v180 = sub_267BE2128(v179);
      }

      else
      {
        v180 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v295 = swift_allocObject();
      *(v295 + 16) = xmmword_267EFCA40;
      *(v295 + 32) = v172;
      v296 = v172;
      v297 = sub_267BE2268(v295);
      v299 = v298;
      v300 = [v296 sender];
      v301 = [v296 messageEffectType];
      v434[2](v173, v429, v435);
      sub_267BE28D0(v296, &selRef_translatedToLanguage);
      v303 = v302;
      if (v302)
      {
      }

      *v38 = 0;
      *(v38 + 1) = 0;
      v304 = v433;
      *(v38 + 2) = v177;
      *(v38 + 3) = v304;
      *(v38 + 4) = v180;
      *(v38 + 5) = v297;
      *(v38 + 6) = v299;
      v305 = v436;
      sub_267EF2D18();
      v306 = sub_267EF2CE8();
      v308 = v307;
      (*(v439 + 8))(v305, v437);
      *(v38 + 7) = v306;
      *(v38 + 8) = v308;
      *(v38 + 9) = v300;
      *(v38 + 10) = v301;
      *(v38 + 44) = 0;
      v309 = v428;
      v434[4](&v38[*(v428 + 48)], v173, v435);
      *&v38[v309[13]] = 0x4024000000000000;
      *&v38[v309[14]] = 0x4034000000000000;
      v310 = &v38[v309[15]];
      *(v310 + 4) = 0;
      *v310 = 0u;
      *(v310 + 1) = 0u;
      v38[v309[16]] = v303 != 0;
      v311 = v426;
      sub_267BE2990(v38, v426, type metadata accessor for TextComponent);
      sub_267BE2AD0();
      v313 = v312;
      v314 = *(v312 + 16);
      if (v314 >= *(v312 + 24) >> 1)
      {
        sub_267BE2AD0();
        v313 = v402;
      }

      v449 = v309;
      v450 = sub_267BE2AF4(&qword_28022BE88, 255, type metadata accessor for TextComponent, &unk_267F09728);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v447);
      sub_267BE2990(v311, boxed_opaque_existential_0, type metadata accessor for TextComponent);
      *(v313 + 16) = v314 + 1;
      sub_267B9A5E8(&v447, v313 + 40 * v314 + 32);
      sub_267BE2B3C(v311, type metadata accessor for TextComponent);
      v460[0] = v313;
      v142 = v38;
      goto LABEL_140;
    case 2uLL:
      v186 = v438;
      v187 = [v438 sender];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v188 = swift_allocObject();
      *(v188 + 16) = xmmword_267EFCA40;
      *(v188 + 32) = v186;
      v189 = v186;
      v190 = sub_267BE2268(v188);
      v192 = v191;
      v193 = [v189 messageEffectType];
      v194 = v436;
      sub_267EF2D18();
      v195 = sub_267EF2CE8();
      v197 = v196;
      (*(v439 + 8))(v194, v437);
      sub_267BE2AD0();
      v199 = v198;
      v200 = *(v198 + 16);
      v201 = v200 + 1;
      if (v200 >= *(v198 + 24) >> 1)
      {
        sub_267BE2AD0();
        v199 = v403;
      }

      v446[0] = 0;
      v449 = &type metadata for AudioComponent;
      v450 = sub_267DB6C84();
      v202 = swift_allocObject();
      *&v447 = v202;
      *(v202 + 16) = v187;
      *(v202 + 24) = v190;
      *(v202 + 32) = v192;
      *(v202 + 40) = v195;
      *(v202 + 48) = v197;
      *(v202 + 56) = v193;
      *(v202 + 64) = v446[0];
      *(v202 + 65) = 0;
      v203 = v199 + 40 * v200;
      goto LABEL_125;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x1BuLL:
    case 0x1CuLL:
      goto LABEL_2;
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0x12uLL:
      goto LABEL_72;
    case 0xFuLL:
      v449 = &type metadata for Features;
      v450 = sub_267BAFCAC();
      LOBYTE(v447) = 4;
      v217 = sub_267EF5128();
      v218 = __swift_destroy_boxed_opaque_existential_0(&v447);
      v219 = v438;
      if ((v217 & 1) != 0 && (sub_267BE84FC(v218) & 1) != 0 && (v220 = sub_267E51BAC(v219)) != 0 && (v221 = sub_267BAF0DC(v220), , v221 == 1))
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v222 = sub_267EF8A08();
        __swift_project_value_buffer(v222, qword_280240FB0);
        v223 = sub_267EF89F8();
        v224 = sub_267EF95D8();
        v225 = os_log_type_enabled(v223, v224);
        v227 = v417;
        v226 = v418;
        if (v225)
        {
          v228 = swift_slowAlloc();
          *v228 = 0;
          _os_log_impl(&dword_267B93000, v223, v224, "#ConversationStateBuilder creating a media image component", v228, 2u);
          MEMORY[0x26D60A7B0](v228, -1, -1);
        }

        v229 = sub_267BB8214(v219);
        if (v230)
        {
          v231 = v229;
        }

        else
        {
          v231 = 0;
        }

        if (v230)
        {
          v232 = v230;
        }

        else
        {
          v232 = 0xE000000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v233 = swift_allocObject();
        *(v233 + 16) = xmmword_267EFCA40;
        *(v233 + 32) = v219;
        v234 = v219;
        v235 = sub_267BE2268(v233);
        v237 = v236;
        v238 = [v234 sender];
        v239 = [v234 messageEffectType];
        v434[2]((v226 + SLODWORD(v227[3].Kind)), v429, v435);
        *v226 = 0;
        *(v226 + 8) = 0;
        *(v226 + 16) = v231;
        *(v226 + 24) = v232;
        *(v226 + 32) = 0;
        *(v226 + 40) = v235;
        *(v226 + 48) = v237;
        v240 = v436;
        sub_267EF2D18();
        v241 = sub_267EF2CE8();
        v243 = v242;
        (*(v439 + 8))(v240, v437);
        *(v226 + 56) = v241;
        *(v226 + 64) = v243;
        *(v226 + 72) = v238;
        *(v226 + 80) = v239;
        *(v226 + 88) = 0;
        v244 = v419;
        sub_267BE2990(v226, v419, type metadata accessor for ImageComponent);
        sub_267BE2AD0();
        v246 = v245;
        v247 = *(v245 + 16);
        if (v247 >= *(v245 + 24) >> 1)
        {
          sub_267BE2AD0();
          v246 = v410;
        }

        v449 = v227;
        v450 = sub_267BE2AF4(&qword_28022BE98, 255, type metadata accessor for ImageComponent, &unk_267F0C720);
        v248 = __swift_allocate_boxed_opaque_existential_0(&v447);
        sub_267BE2990(v244, v248, type metadata accessor for ImageComponent);
        *(v246 + 16) = v247 + 1;
        sub_267B9A5E8(&v447, v246 + 40 * v247 + 32);
        sub_267BE2B3C(v244, type metadata accessor for ImageComponent);
        v460[0] = v246;
        sub_267BE2B3C(v226, type metadata accessor for ImageComponent);
      }

      else
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v261 = sub_267EF8A08();
        __swift_project_value_buffer(v261, qword_280240FB0);
        v262 = v219;
        v263 = sub_267EF89F8();
        v264 = sub_267EF95D8();
        if (os_log_type_enabled(v263, v264))
        {
          v265 = -1;
          v266 = swift_slowAlloc();
          *v266 = 134217984;
          v267 = [v262 numberOfAttachments];
          if (v267)
          {
            v268 = v267;
            v265 = [v267 integerValue];
          }

          *(v266 + 4) = v265;

          _os_log_impl(&dword_267B93000, v263, v264, "#ConversationStateBuilder iamge type, number of attachments %ld", v266, 0xCu);
          MEMORY[0x26D60A7B0](v266, -1, -1);
        }

        else
        {

          v263 = v262;
        }

        sub_267CF53E8(v262, &v447);
        v316 = v449;
        v317 = v450;
        v318 = __swift_mutable_project_boxed_opaque_existential_1(&v447, v449);
        MEMORY[0x28223BE20](v318);
        v320 = &v416 - ((v319 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v321 + 16))(v320);
        sub_267BE2B94(v320, v460, v316, v317);
        __swift_destroy_boxed_opaque_existential_0(&v447);
      }

      v322 = sub_267BB8214(v219);
      if (!v323)
      {
        return v460[0];
      }

      v324 = v322;
      v325 = v323;
      *&v447 = v322;
      *(&v447 + 1) = v323;
      v326 = v430;
      sub_267EF26D8();
      sub_267BB5034();
      v327 = sub_267EF9918();
      v329 = v328;
      (*(v431 + 8))(v326, v432);

      v330 = HIBYTE(v329) & 0xF;
      if ((v329 & 0x2000000000000000) == 0)
      {
        v330 = v327 & 0xFFFFFFFFFFFFLL;
      }

      if (!v330)
      {
        goto LABEL_152;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v331 = swift_allocObject();
      *(v331 + 16) = xmmword_267EFCA40;
      *(v331 + 32) = v219;
      v332 = v219;
      v333 = sub_267BE2268(v331);
      v335 = v334;
      v336 = [v332 sender];
      v337 = [v332 messageEffectType];
      v338 = v428;
      v339 = v423;
      v434[2](&v423[*(v428 + 48)], v429, v435);
      v340 = v339 + v338[15];
      *(v340 + 32) = 0;
      *v340 = 0u;
      *(v340 + 16) = 0u;
      *v339 = 0;
      *(v339 + 8) = 0;
      *(v339 + 16) = v324;
      *(v339 + 24) = v325;
      *(v339 + 32) = 0;
      *(v339 + 40) = v333;
      *(v339 + 48) = v335;
      v341 = v436;
      sub_267EF2D18();
      v342 = sub_267EF2CE8();
      v344 = v343;
      (*(v439 + 8))(v341, v437);
      *(v339 + 56) = v342;
      *(v339 + 64) = v344;
      *(v339 + 72) = v336;
      *(v339 + 80) = v337;
      *(v339 + 88) = 0;
      *(v339 + v338[13]) = 0x4024000000000000;
      *(v339 + v338[14]) = 0x4034000000000000;
      *(v339 + v338[16]) = 0;
      v345 = v420;
      sub_267BE2990(v339, v420, type metadata accessor for TextComponent);
      v346 = v460[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267BE2AD0();
        v346 = v406;
      }

      v347 = *(v346 + 16);
      if (v347 >= *(v346 + 24) >> 1)
      {
        sub_267BE2AD0();
        v346 = v407;
      }

      v449 = v338;
      v450 = sub_267BE2AF4(&qword_28022BE88, 255, type metadata accessor for TextComponent, &unk_267F09728);
      v348 = __swift_allocate_boxed_opaque_existential_0(&v447);
      sub_267BE2990(v345, v348, type metadata accessor for TextComponent);
      *(v346 + 16) = v347 + 1;
      sub_267B9A5E8(&v447, v346 + 40 * v347 + 32);
      sub_267BE2B3C(v345, type metadata accessor for TextComponent);
      v460[0] = v346;
      v142 = v423;
      goto LABEL_140;
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
      v60 = v438;
      v61 = sub_267D60610();
      if (v62 == 0xFF)
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v411 = sub_267EF8A08();
        __swift_project_value_buffer(v411, qword_280240FB0);
        v412 = sub_267EF89F8();
        v413 = sub_267EF95E8();
        if (os_log_type_enabled(v412, v413))
        {
          v414 = swift_slowAlloc();
          v415 = swift_slowAlloc();
          *&v447 = v415;
          *v414 = 136315138;
          *(v414 + 4) = sub_267BA33E8(0xD00000000000003FLL, 0x8000000267F1BE20, &v447);
          _os_log_impl(&dword_267B93000, v412, v413, "Fatal error: %s", v414, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v415);
          MEMORY[0x26D60A7B0](v415, -1, -1);
          MEMORY[0x26D60A7B0](v414, -1, -1);
        }

        sub_267EF9C98();
        __break(1u);
        JUMPOUT(0x267BE1CB8);
      }

      v63 = v61;
      v64 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_267EFCA40;
      *(v65 + 32) = v60;
      v66 = v60;
      *&v438 = sub_267BE2268(v65);
      v435 = v67;
      v434 = [v66 sender];
      v433 = [v66 messageEffectType];
      if (v64 >= 2u && (v68 = sub_267BB8214(v66), v69))
      {
        v70 = v68;
        v71 = v69;
      }

      else
      {
        v70 = 0;
        v71 = 0xE000000000000000;
      }

      v87 = v436;
      sub_267EF2D18();
      v88 = sub_267EF2CE8();
      v90 = v89;
      (*(v439 + 8))(v87, v437);
      sub_267BE2AD0();
      v92 = v91;
      v93 = *(v91 + 16);
      if (v93 >= *(v91 + 24) >> 1)
      {
        sub_267BE2AD0();
        v92 = v399;
      }

      v446[0] = 0;
      v449 = &type metadata for PaymentComponent;
      v450 = sub_267DBCBC8();
      v94 = swift_allocObject();
      *&v447 = v94;
      *(v94 + 16) = 0;
      *(v94 + 24) = 0;
      v95 = v435;
      *(v94 + 32) = v438;
      *(v94 + 40) = v95;
      *(v94 + 48) = xmmword_267EFC050;
      v96 = v433;
      *(v94 + 64) = v434;
      *(v94 + 72) = v96;
      *(v94 + 80) = v446[0];
      *(v94 + 81) = 0;
      *(v94 + 88) = v88;
      *(v94 + 96) = v90;
      *(v94 + 104) = v70;
      *(v94 + 112) = v71;
      *(v94 + 120) = v63;
      *(v94 + 128) = v64;
      *(v92 + 16) = v93 + 1;
      sub_267B9A5E8(&v447, v92 + 40 * v93 + 32);
      v460[0] = v92;
      return v460[0];
    case 0x19uLL:
      v143 = v438;
      v144 = [v438 linkMetadata];
      if (!v144)
      {
        v144 = [objc_allocWithZone(MEMORY[0x277CD3DF0]) init];
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v145 = sub_267EF8A08();
        __swift_project_value_buffer(v145, qword_280240FB0);
        v146 = sub_267EF89F8();
        v147 = sub_267EF95E8();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&dword_267B93000, v146, v147, "#ConversationStateBuilder linkMetadata for link message is nil", v148, 2u);
          MEMORY[0x26D60A7B0](v148, -1, -1);
        }
      }

      sub_267CF5620(v143, v424, &v447);
      if (v449)
      {
        sub_267B9A5E8(&v447, &v443);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v149 = swift_allocObject();
        *(v149 + 16) = xmmword_267EFCA40;
        *(v149 + 32) = v143;
        v150 = v143;
        v151 = sub_267BE2268(v149);
        v153 = v152;
        v154 = [v150 sender];
        v155 = [v150 messageEffectType];
        sub_267B9AFEC(&v443, v457);
        v456 = off_2878D1228;
        *&v447 = v151;
        *(&v447 + 1) = v153;
        v448 = 1;
        v449 = v154;
        v450 = v155;
        v451 = 0;
        v455 = &type metadata for MessagesFeatureFlagsImpl;
        v452 = v144;
        v156 = v436;
        sub_267EF2D18();
        v157 = sub_267EF2CE8();
        v159 = v158;
        (*(v439 + 8))(v156, v437);
        v453 = v157;
        v454 = v159;
        v459 = 3;
        sub_267C1023C(&v447, v446);
        sub_267BE2AD0();
        v161 = v160;
        v162 = *(v160 + 16);
        if (v162 >= *(v160 + 24) >> 1)
        {
          sub_267BE2AD0();
          v161 = v404;
        }

        v441 = &unk_2878CE588;
        v442 = sub_267C100F0();
        *&v440 = swift_allocObject();
        sub_267C1023C(v446, v440 + 16);
        *(v161 + 16) = v162 + 1;
        sub_267B9A5E8(&v440, v161 + 40 * v162 + 32);
        sub_267C10274(v446);
        v460[0] = v161;
        __swift_destroy_boxed_opaque_existential_0(&v443);
        goto LABEL_26;
      }

      sub_267B9F98C(&v447, &qword_280228F90, &qword_267EFC0A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v349 = swift_allocObject();
      *(v349 + 16) = xmmword_267EFCA40;
      *(v349 + 32) = v143;
      v350 = v143;
      v351 = sub_267BE2268(v349);
      v353 = v352;
      v354 = [v350 sender];
      v355 = [v350 messageEffectType];
      v455 = &type metadata for MessagesFeatureFlagsImpl;
      v456 = off_2878D1228;
      *&v447 = v351;
      *(&v447 + 1) = v353;
      v448 = 1;
      v449 = v354;
      v450 = v355;
      v451 = 0;
      v356 = v436;
      sub_267EF2D18();
      v357 = sub_267EF2CE8();
      v359 = v358;
      (*(v439 + 8))(v356, v437);
      v452 = v357;
      v453 = v359;
      v454 = v144;
      sub_267D68B34(&v447, v446);
      sub_267BE2AD0();
      v361 = v360;
      v362 = *(v360 + 16);
      if (v362 >= *(v360 + 24) >> 1)
      {
        sub_267BE2AD0();
        v361 = v408;
      }

      v444 = &type metadata for LinkComponent;
      v445 = sub_267D689E8();
      *&v443 = swift_allocObject();
      sub_267D68B34(v446, v443 + 16);
      *(v361 + 16) = v362 + 1;
      sub_267B9A5E8(&v443, v361 + 40 * v362 + 32);
      sub_267C6AC38(v446);
      v460[0] = v361;
      sub_267C6AC38(&v447);
      return v460[0];
    case 0x1AuLL:
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v204 = sub_267EF8A08();
      __swift_project_value_buffer(v204, qword_280240FB0);
      v205 = sub_267EF89F8();
      v206 = sub_267EF95C8();
      v207 = os_log_type_enabled(v205, v206);
      v208 = v438;
      if (v207)
      {
        v209 = swift_slowAlloc();
        *v209 = 0;
        _os_log_impl(&dword_267B93000, v205, v206, "#ConversationStateBuilder reaction type message received", v209, 2u);
        MEMORY[0x26D60A7B0](v209, -1, -1);
      }

      v210 = [v208 reaction];
      if (!v210 || (v211 = v210, v212 = [v210 reactionType], v211, v212 != *MEMORY[0x277CD44E8]))
      {
        v283 = sub_267CF5A04(v208);
        if (v284 != -1)
        {
          v285 = v284;
          v435 = v283;
          v286 = [v208 referencedMessage];
          if ((v286 && (v287 = v286, v288 = [v286 messageType], v287, v288 == 1) || (v289 = objc_msgSend(v208, sel_referencedMessage)) != 0 && (v290 = v289, v291 = objc_msgSend(v289, sel_messageType), v290, v291 == 21)) && (v292 = objc_msgSend(v208, sel_referencedMessage)) != 0 && (v293 = sub_267BBE6F8(v292), v294))
          {
            v433 = v294;
            v434 = v293;
          }

          else
          {

            v433 = 0xE000000000000000;
            v434 = 0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
          v363 = swift_allocObject();
          *(v363 + 16) = xmmword_267EFCA40;
          *(v363 + 32) = v208;
          v364 = v208;
          v365 = sub_267BE2268(v363);
          v367 = v366;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE40, &unk_267F08CB0);
          v368 = swift_allocObject();
          *(v368 + 16) = xmmword_267EFC020;
          *(v368 + 32) = [v364 sender];
          *&v447 = MEMORY[0x277D84F90];
          *(&v447 + 1) = MEMORY[0x277D84FA0];
          sub_267D29F84(v368, &v447);
          swift_setDeallocating();
          sub_267DB6FC0();
          v438 = v447;
          v369 = [v364 referencedMessage];
          v370 = v436;
          sub_267EF2D18();
          v371 = sub_267EF2CE8();
          v373 = v372;
          (*(v439 + 8))(v370, v437);
          sub_267BE2AD0();
          v375 = v374;
          v376 = *(v374 + 16);
          if (v376 >= *(v374 + 24) >> 1)
          {
            sub_267BE2AD0();
            v375 = v405;
          }

          v446[0] = v285 & 1;
          v449 = &type metadata for ReactionComponent;
          v450 = sub_267C77294();
          v377 = swift_allocObject();
          *&v447 = v377;
          *(v377 + 16) = 0;
          *(v377 + 24) = 0;
          v378 = v433;
          *(v377 + 32) = v434;
          *(v377 + 40) = v378;
          *(v377 + 48) = 0;
          *(v377 + 56) = v365;
          v379 = v435;
          *(v377 + 64) = v367;
          *(v377 + 72) = v379;
          *(v377 + 80) = v446[0];
          *(v377 + 88) = v438;
          *(v377 + 104) = v369;
          *(v377 + 112) = v371;
          *(v377 + 120) = v373;
          *(v377 + 128) = 0;
          *(v375 + 16) = v376 + 1;
          sub_267B9A5E8(&v447, v375 + 40 * v376 + 32);
          v460[0] = v375;
        }

        return v460[0];
      }

      v213 = sub_267EF89F8();
      v214 = sub_267EF95C8();
      if (!os_log_type_enabled(v213, v214))
      {
        goto LABEL_114;
      }

      v215 = swift_slowAlloc();
      *v215 = 0;
      v216 = "#ConversationStateBuilder skip reading custom acknowledgement";
      goto LABEL_113;
    default:
      v416 = v21;
      v425 = v9;
      v426 = v19;
      v423 = v14;
      v424 = v18;
      if ((v39 - 1001) < 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_267EFCA40;
        v73 = v438;
        *(v72 + 32) = v438;
        v74 = v73;
        v75 = sub_267BE2268(v72);
        v77 = v76;
        v78 = [v74 sender];
        v79 = [v74 messageEffectType];
        memset(v457, 0, sizeof(v457));
        v458 = 0;
        LOBYTE(v74) = sub_267C0FE90([v74 messageType]);
        v456 = off_2878D1228;
        *&v447 = v75;
        *(&v447 + 1) = v77;
        v448 = 1;
        v449 = v78;
        v450 = v79;
        v451 = 0;
        v455 = &type metadata for MessagesFeatureFlagsImpl;
        v452 = 0;
        v80 = v436;
        sub_267EF2D18();
        v81 = sub_267EF2CE8();
        v83 = v82;
        (*(v439 + 8))(v80, v437);
        v453 = v81;
        v454 = v83;
        v459 = v74;
        sub_267C1023C(&v447, v446);
        sub_267BE2AD0();
        v85 = v84;
        v86 = *(v84 + 16);
        if (v86 >= *(v84 + 24) >> 1)
        {
          sub_267BE2AD0();
          v85 = v400;
        }

        v444 = &unk_2878CE588;
        v445 = sub_267C100F0();
        *&v443 = swift_allocObject();
        sub_267C1023C(v446, v443 + 16);
        *(v85 + 16) = v86 + 1;
        sub_267B9A5E8(&v443, v85 + 40 * v86 + 32);
        sub_267C10274(v446);
        v460[0] = v85;
LABEL_26:
        sub_267C10274(&v447);
        return v460[0];
      }

      if ((v39 - 1004) < 2)
      {
        goto LABEL_2;
      }

      if (v39 != 1000)
      {
        if (v39 == 1100)
        {
LABEL_2:
          v40 = v438;
          v41 = sub_267D70D78([v438 messageType]);
          if (v41 == 18)
          {
            if (qword_280228818 != -1)
            {
              swift_once();
            }

            v42 = sub_267EF8A08();
            __swift_project_value_buffer(v42, qword_280240FB0);
            v43 = v40;
            v44 = sub_267EF89F8();
            v45 = sub_267EF95E8();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              *v46 = 134217984;
              *(v46 + 4) = [v43 messageType];

              _os_log_impl(&dword_267B93000, v44, v45, "#ConversationStateBuilder Failed to convert ungroupable message type to GenericCountableComponent: %ld", v46, 0xCu);
              MEMORY[0x26D60A7B0](v46, -1, -1);
            }

            else
            {
            }
          }

          else
          {
            v47 = v41;
            if (qword_280228818 != -1)
            {
              swift_once();
            }

            v48 = sub_267EF8A08();
            __swift_project_value_buffer(v48, qword_280240FB0);
            v49 = v40;
            v50 = sub_267EF89F8();
            v51 = sub_267EF95D8();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = -1;
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              *&v447 = v54;
              *v53 = 136315394;
              v55 = INMessageType.description.getter([v49 messageType]);
              v57 = sub_267BA33E8(v55, v56, &v447);

              *(v53 + 4) = v57;
              *(v53 + 12) = 2048;
              v58 = [v49 numberOfAttachments];
              if (v58)
              {
                v59 = v58;
                v52 = [v58 integerValue];
              }

              else
              {
                v59 = v49;
              }

              *(v53 + 14) = v52;
              _os_log_impl(&dword_267B93000, v50, v51, "#ConversationStateBuilder %s, number of attachments %ld", v53, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v54);
              MEMORY[0x26D60A7B0](v54, -1, -1);
              MEMORY[0x26D60A7B0](v53, -1, -1);
            }

            else
            {
            }

            v97 = [v49 numberOfAttachments];
            if (v97)
            {
              v98 = v97;
              *&v438 = [v97 integerValue];
            }

            else
            {
              *&v438 = 1;
            }

            v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
            v99 = swift_allocObject();
            v422 = xmmword_267EFCA40;
            *(v99 + 16) = xmmword_267EFCA40;
            *(v99 + 32) = v49;
            v100 = v49;
            v101 = sub_267BE2268(v99);
            v425 = v102;
            v426 = v101;
            v103 = [v100 sender];
            v104 = [v100 messageEffectType];
            v105 = v436;
            sub_267EF2D18();
            v106 = sub_267EF2CE8();
            v108 = v107;
            v109 = *(v439 + 8);
            v439 += 8;
            v424 = v109;
            v109(v105, v437);
            sub_267BE2AD0();
            v111 = v110;
            v112 = *(v110 + 16);
            if (v112 >= *(v110 + 24) >> 1)
            {
              sub_267BE2AD0();
              v111 = v397;
            }

            v446[0] = 0;
            v449 = &type metadata for GenericCountableComponent;
            v450 = sub_267C82888();
            v113 = swift_allocObject();
            *&v447 = v113;
            *(v113 + 16) = v47;
            v114 = v425;
            v115 = v426;
            *(v113 + 24) = v438;
            *(v113 + 32) = v115;
            *(v113 + 40) = v114;
            *(v113 + 48) = v106;
            *(v113 + 56) = v108;
            *(v113 + 64) = v103;
            *(v113 + 72) = v104;
            *(v113 + 80) = v446[0];
            *(v113 + 81) = 0;
            *(v111 + 16) = v112 + 1;
            sub_267B9A5E8(&v447, v111 + 40 * v112 + 32);
            v460[0] = v111;
            v116 = sub_267BB8214(v100);
            if (v117)
            {
              v118 = v116;
              v119 = v117;
              *&v447 = v116;
              *(&v447 + 1) = v117;
              v120 = v430;
              sub_267EF26D8();
              sub_267BB5034();
              v121 = sub_267EF9918();
              v123 = v122;
              (*(v431 + 8))(v120, v432);

              v124 = HIBYTE(v123) & 0xF;
              if ((v123 & 0x2000000000000000) == 0)
              {
                v124 = v121 & 0xFFFFFFFFFFFFLL;
              }

              if (v124)
              {
                v125 = swift_allocObject();
                *(v125 + 16) = v422;
                *(v125 + 32) = v100;
                v126 = v100;
                v127 = sub_267BE2268(v125);
                v129 = v128;
                v130 = [v126 sender];
                v131 = [v126 messageEffectType];
                v132 = v428;
                v133 = v433;
                v434[2](&v433[*(v428 + 48)], v429, v435);
                v134 = v133 + v132[15];
                *(v134 + 32) = 0;
                *v134 = 0u;
                *(v134 + 16) = 0u;
                *v133 = 0;
                *(v133 + 8) = 0;
                *(v133 + 16) = v118;
                *(v133 + 24) = v119;
                *(v133 + 32) = 0;
                *(v133 + 40) = v127;
                *(v133 + 48) = v129;
                v135 = v436;
                sub_267EF2D18();
                v136 = sub_267EF2CE8();
                v138 = v137;
                v424(v135, v437);
                *(v133 + 56) = v136;
                *(v133 + 64) = v138;
                *(v133 + 72) = v130;
                *(v133 + 80) = v131;
                *(v133 + 88) = 0;
                *(v133 + v132[13]) = 0x4024000000000000;
                *(v133 + v132[14]) = 0x4034000000000000;
                *(v133 + v132[16]) = 0;
                v139 = v427;
                sub_267BE2990(v133, v427, type metadata accessor for TextComponent);
                v140 = *(v111 + 16);
                if (v140 >= *(v111 + 24) >> 1)
                {
                  sub_267BE2AD0();
                  v111 = v398;
                }

                v449 = v132;
                v450 = sub_267BE2AF4(&qword_28022BE88, 255, type metadata accessor for TextComponent, &unk_267F09728);
                v141 = __swift_allocate_boxed_opaque_existential_0(&v447);
                sub_267BE2990(v139, v141, type metadata accessor for TextComponent);
                *(v111 + 16) = v140 + 1;
                sub_267B9A5E8(&v447, v111 + 40 * v140 + 32);
                sub_267BE2B3C(v139, type metadata accessor for TextComponent);
                v460[0] = v111;
                v142 = v433;
LABEL_140:
                sub_267BE2B3C(v142, type metadata accessor for TextComponent);
              }

              else
              {
LABEL_152:
              }
            }
          }
        }

        else
        {
LABEL_72:
          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v181 = sub_267EF8A08();
          __swift_project_value_buffer(v181, qword_280240FB0);
          v182 = v438;
          v183 = sub_267EF89F8();
          v184 = sub_267EF95D8();
          if (os_log_type_enabled(v183, v184))
          {
            v185 = swift_slowAlloc();
            *v185 = 134217984;
            *(v185 + 4) = [v182 messageType];

            _os_log_impl(&dword_267B93000, v183, v184, "#ConversationStateBuilder Unhandled message type: %ld, adding generic message in place", v185, 0xCu);
            MEMORY[0x26D60A7B0](v185, -1, -1);
          }

          else
          {

            v183 = v182;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
          v269 = swift_allocObject();
          *(v269 + 16) = xmmword_267EFCA40;
          *(v269 + 32) = v182;
          v270 = v182;
          v271 = sub_267BE2268(v269);
          v273 = v272;
          v274 = [v270 sender];
          v275 = [v270 messageEffectType];
          v276 = v436;
          sub_267EF2D18();
          v277 = sub_267EF2CE8();
          v279 = v278;
          (*(v439 + 8))(v276, v437);
          sub_267BE2AD0();
          v199 = v280;
          v281 = *(v280 + 16);
          v201 = v281 + 1;
          if (v281 >= *(v280 + 24) >> 1)
          {
            sub_267BE2AD0();
            v199 = v401;
          }

          v446[0] = 0;
          v449 = &type metadata for GenericCountableComponent;
          v450 = sub_267C82888();
          v282 = swift_allocObject();
          *&v447 = v282;
          *(v282 + 16) = 6;
          *(v282 + 24) = 1;
          *(v282 + 32) = v271;
          *(v282 + 40) = v273;
          *(v282 + 48) = v277;
          *(v282 + 56) = v279;
          *(v282 + 64) = v274;
          *(v282 + 72) = v275;
          *(v282 + 80) = v446[0];
          *(v282 + 81) = 0;
          v203 = v199 + 40 * v281;
LABEL_125:
          *(v199 + 16) = v201;
          sub_267B9A5E8(&v447, v203 + 32);
          v460[0] = v199;
        }

        return v460[0];
      }

      v249 = v12;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v250 = sub_267EF8A08();
      __swift_project_value_buffer(v250, qword_280240FB0);
      v251 = sub_267EF89F8();
      v252 = sub_267EF95D8();
      v253 = os_log_type_enabled(v251, v252);
      v254 = v425;
      v255 = v416;
      if (v253)
      {
        v256 = swift_slowAlloc();
        *v256 = 0;
        _os_log_impl(&dword_267B93000, v251, v252, "#ConversationStateBuilder: Received a safety monitor message", v256, 2u);
        MEMORY[0x26D60A7B0](v256, -1, -1);
      }

      sub_267BB8214(v438);
      v257 = v426;
      if (v258)
      {
        sub_267EF2B88();

        v259 = v424;
        if (__swift_getEnumTagSinglePayload(v17, 1, v424) != 1)
        {
          (*(v257 + 32))(v255, v17, v259);
          v380 = v438;
          v381 = [v438 sender];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
          v382 = swift_allocObject();
          *(v382 + 16) = xmmword_267EFCA40;
          *(v382 + 32) = v380;
          v383 = v380;
          v384 = sub_267BE2268(v382);
          v386 = v385;
          Kind_high = SHIDWORD(v254[2].Kind);
          v388 = v423;
          (*(v257 + 16))(&v423[Kind_high], v416, v259);
          v389 = v436;
          sub_267EF2D18();
          v390 = sub_267EF2CE8();
          v392 = v391;
          (*(v439 + 8))(v389, v437);
          *v388 = 0;
          *(v388 + 8) = v381;
          *(v388 + 16) = 0;
          *(v388 + 24) = 1;
          *(v388 + 32) = v384;
          *(v388 + 40) = v386;
          *(v388 + 48) = v390;
          *(v388 + 56) = v392;
          sub_267BE2990(v388, v249, type metadata accessor for SafetySessionComponent);
          sub_267BE2AD0();
          v394 = v393;
          v395 = *(v393 + 16);
          if (v395 >= *(v393 + 24) >> 1)
          {
            sub_267BE2AD0();
            v394 = v409;
          }

          v449 = v425;
          v450 = sub_267BE2AF4(&qword_280229F48, 255, type metadata accessor for SafetySessionComponent, &unk_267EFFCB0);
          v396 = __swift_allocate_boxed_opaque_existential_0(&v447);
          sub_267BE2990(v249, v396, type metadata accessor for SafetySessionComponent);
          *(v394 + 16) = v395 + 1;
          sub_267B9A5E8(&v447, v394 + 40 * v395 + 32);
          sub_267BE2B3C(v249, type metadata accessor for SafetySessionComponent);
          v460[0] = v394;
          sub_267BE2B3C(v423, type metadata accessor for SafetySessionComponent);
          (*(v426 + 8))(v416, v424);
          return v460[0];
        }

        sub_267B9F98C(v17, &qword_280229E20, &unk_267EFDCC0);
      }

      v213 = sub_267EF89F8();
      v214 = sub_267EF95E8();
      if (os_log_type_enabled(v213, v214))
      {
        v215 = swift_slowAlloc();
        *v215 = 0;
        v216 = "#ConversationStateBuilder: Message content is empty or content is not a valid URL";
LABEL_113:
        _os_log_impl(&dword_267B93000, v213, v214, v216, v215, 2u);
        MEMORY[0x26D60A7B0](v215, -1, -1);
      }

LABEL_114:

      return MEMORY[0x277D84F90];
  }
}

uint64_t sub_267BE1D2C()
{

  return MEMORY[0x2821FE8E8](v0, 82, 7);
}

uint64_t sub_267BE1D7C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  return MEMORY[0x2821FE8E8](v0, 169, 7);
}

uint64_t sub_267BE1DEC()
{

  sub_267DBCBB4(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_267BE1E60()
{

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_267BE1ED8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_267BE1F38()
{

  return MEMORY[0x2821FE8E8](v0, 66, 7);
}

uint64_t type metadata accessor for SafetySessionComponent(uint64_t a1)
{
  result = qword_280229F18;
  if (!qword_280229F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ImageComponent(uint64_t a1)
{
  result = qword_28022CA00;
  if (!qword_28022CA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267BE2020()
{
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_12_8();
  if (v6)
  {
    OUTLINED_FUNCTION_2_21();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_24_4();
  if (v3)
  {
    v15 = OUTLINED_FUNCTION_50_6(v9, v10, v11, v12, v13, v14);
    v16 = OUTLINED_FUNCTION_37_3(v15);
    _swift_stdlib_malloc_size(v16);
    OUTLINED_FUNCTION_14_14();
    OUTLINED_FUNCTION_41_5(v17);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_48_5();
  if (v1)
  {
    if (v16 != v0 || v5 + 8 * v2 <= v4)
    {
      v19 = OUTLINED_FUNCTION_68_0();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_19();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_25_9(v24);
  }

  OUTLINED_FUNCTION_60_2();
}

uint64_t sub_267BE2128(uint64_t a1)
{
  v2 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  sub_267BE20E8();
  v3 = a1 + 32;
  v4 = v8;
  if (v2)
  {
    while (1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5F0, &unk_267F0C690);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B50, &qword_267EFEFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = *(v8 + 16);
      if (v5 >= *(v8 + 24) >> 1)
      {
        sub_267BE20E8();
      }

      *(v8 + 16) = v5 + 1;
      *(v8 + 8 * v5 + 32) = v7;
      v3 += 8;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t sub_267BE2268(uint64_t a1)
{
  v4[0] = MEMORY[0x277D84F90];
  if (sub_267BAF0DC(MEMORY[0x277D84F90]))
  {
    sub_267E6E8F0(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v4[1] = v2;
  sub_267BE22E4(a1, v4);

  return v4[0];
}

void sub_267BE22E4(uint64_t a1, void *a2)
{
  v4 = sub_267BAF0DC(a1);
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v22 = a1;
  v26 = a2;
  v27 = a1 + 32;
  v24 = a1 & 0xC000000000000001;
  v25 = v4;
  v23 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v5 != v4)
  {
    if (v6)
    {
      v8 = MEMORY[0x26D609870](v5, v22);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(v27 + 8 * v5);
    }

    v9 = v8;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v11 = a2[1];
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = v8;
      v13 = sub_267EF9AA8();

      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*(v11 + 16))
      {
        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        v14 = sub_267EF9808();
        v15 = ~(-1 << *(v11 + 32));
        while (1)
        {
          v16 = v14 & v15;
          if (((*(v11 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
          {
            break;
          }

          v17 = *(*(v11 + 48) + 8 * v16);
          v18 = sub_267EF9818();

          v14 = v16 + 1;
          if (v18)
          {

            v4 = v25;
            a2 = v26;
            v7 = v23;
            v6 = v24;
            goto LABEL_2;
          }
        }

        v4 = v25;
        a2 = v26;
        v7 = v23;
        v6 = v24;
      }

LABEL_16:
      v19 = v9;
      MEMORY[0x26D608F90]();
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v20 = v19;
      sub_267BE2754(&v28, v20);
      v21 = v28;
    }
  }
}

uint64_t sub_267BE24FC(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_267EF9A78();

    if (v17)
    {

      sub_267BA9F38(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v32;
    }

    else
    {
      result = sub_267EF9A68();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v25 = sub_267D304C0(v15, result + 1, a5, a6, a3, a4);
        v26 = v25[2];
        if (v25[3] <= v26)
        {
          sub_267D30FF8(v26 + 1, a5, a6);
        }

        v27 = v16;
        sub_267D311A0(v27, v25);

        *v11 = v25;
        *a1 = v27;
        return 1;
      }
    }
  }

  else
  {
    sub_267BA9F38(0, a3, a4);
    sub_267EF9808();
    OUTLINED_FUNCTION_16_18();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v14 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v33 = *v11;
        v28 = a2;
        sub_267BE2778();
        *v11 = v33;
        *a1 = v28;
        return 1;
      }

      v23 = *(*(v14 + 48) + 8 * v22);
      v24 = sub_267EF9818();

      if (v24)
      {
        break;
      }

      v19 = v22 + 1;
    }

    v29 = *(*(v14 + 48) + 8 * v22);
    *a1 = v29;
    v30 = v29;
    return 0;
  }

  return result;
}

void sub_267BE2778()
{
  OUTLINED_FUNCTION_10_25();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(*v0 + 16);
  v13 = *(*v0 + 24);
  if (v13 <= v12 || (v1 & 1) == 0)
  {
    if (v1)
    {
      sub_267D30FF8(v12 + 1, v2, v3);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_267BE5768();
LABEL_8:
      v14 = *v0;
      sub_267EF9808();
      OUTLINED_FUNCTION_16_18();
      v17 = ~v16;
      while (1)
      {
        v9 = v15 & v17;
        if (((*(v14 + 56 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v17)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_267BA9F38(0, v7, v5);
        v18 = *(*(v14 + 48) + 8 * v9);
        v19 = sub_267EF9818();

        if (v19)
        {
          goto LABEL_15;
        }

        v15 = v9 + 1;
      }
    }

    sub_267D31CEC(v2, v3);
  }

LABEL_12:
  v20 = *v0;
  *(*v0 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v20 + 48) + 8 * v9) = v11;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_15:
    sub_267EF9F18();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
    OUTLINED_FUNCTION_9_28();
  }
}

uint64_t sub_267BE28D0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_267EF9028();

  return v4;
}

uint64_t sub_267BE2930(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_22();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267BE2990(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_22();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_267BE29F0()
{
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_12_8();
  if (v6)
  {
    OUTLINED_FUNCTION_2_21();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_24_4();
  if (v3)
  {
    OUTLINED_FUNCTION_50_6(v9, v10, v11, v12, v13, v14);
    v4 = 40;
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_41_5((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_48_5();
  if (v1)
  {
    if (v15 != v0 || v5 + 40 * v2 <= v4)
    {
      v18 = OUTLINED_FUNCTION_68_0();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_19();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_25_9(v23);
  }

  OUTLINED_FUNCTION_60_2();
}

uint64_t sub_267BE2AF4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_267BE2B3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267BE2B94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_23();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v13 = v12 - v11;
  sub_267BE2C9C();
  v14 = *(*a2 + 16);
  sub_267BE2D38(v14);
  (*(v9 + 16))(v13, a1, a3);
  sub_267BE2D98(v14, v13, a2, a3, a4);
  return (*(v9 + 8))(a1, a3);
}

void sub_267BE2C9C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_267BE29F0();
    *v0 = v3;
  }
}

uint64_t sub_267BE2D08()
{
  v1 = *(v0 + 56);

  return v1;
}

void sub_267BE2D38(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_267BE29F0();
    *v1 = v2;
  }
}

uint64_t sub_267BE2D98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_267B9A5E8(&v12, v10 + 40 * a1 + 32);
}

void *sub_267BE2E30(void *a1)
{
  if (qword_280228818 != -1)
  {
LABEL_116:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);

  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();

  v125 = a1;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *&__src[0] = v6;
    *v5 = 136315138;
    v8 = a1[2];
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v121 = v6;
      v123 = v5;
      v133[0] = MEMORY[0x277D84F90];
      sub_267BC7934(0, v8, 0);
      v9 = v133[0];
      v10 = a1 + 4;
      do
      {
        __swift_project_boxed_opaque_existential_0(v10, v10[3]);
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v11);
        OUTLINED_FUNCTION_0_0();
        (*(v14 + 16))(v13 - v12);
        v15 = sub_267EF90A8();
        v17 = v16;
        v133[0] = v9;
        v19 = *(v9 + 16);
        v18 = *(v9 + 24);
        if (v19 >= v18 >> 1)
        {
          v21 = OUTLINED_FUNCTION_8_2(v18);
          sub_267BC7934(v21, v19 + 1, 1);
          v9 = v133[0];
        }

        *(v9 + 16) = v19 + 1;
        v20 = v9 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        v10 += 5;
        --v8;
      }

      while (v8);
      v5 = v123;
      a1 = v125;
      v7 = v121;
    }

    v22 = MEMORY[0x26D608FD0](v9, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_267BA33E8(v22, v24, __src);

    *(v5 + 4) = v25;
    _os_log_impl(&dword_267B93000, v3, v4, "#ConversationStateBuilder Attempting to group eligible ReactionComponents. Component types: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v26 = 0;
  v27 = 0;
  v28 = a1[2];
  v29 = a1 + 4;
  v30 = -1;
  v118 = MEMORY[0x277D84F90];
  while (1)
  {
    v31 = 0uLL;
    v32 = v28;
    v33 = 0uLL;
    v34 = 0uLL;
    if (v26 != v28)
    {
      if (v26 >= v28)
      {
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
        goto LABEL_116;
      }

      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_110;
      }

      *&__src[0] = v26;
      sub_267B9AFEC(&v29[5 * v26], __src + 8);
      v31 = __src[0];
      v33 = __src[1];
      v34 = __src[2];
    }

    v134[0] = v31;
    v134[1] = v33;
    v134[2] = v34;
    if (!v34)
    {
      break;
    }

    v127 = v31;
    sub_267BE58F4((v134 + 8), v132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      memcpy(v133, __src, 0x71uLL);
      if (v30 == -1)
      {
        v37 = __OFADD__(v27++, 1);
        if (v37)
        {
          goto LABEL_114;
        }

        v53 = sub_267EF89F8();
        v54 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v54))
        {
          a1 = OUTLINED_FUNCTION_35_0();
          *a1 = 134218240;
          v30 = v127;
          *(a1 + 4) = v127;
          *(a1 + 6) = 2048;
          *(a1 + 14) = v27;
          OUTLINED_FUNCTION_10_22(&dword_267B93000, v53, v3, "#ConversationStateBuilder startIndex: %ld, reactionCounter: %ld");
          OUTLINED_FUNCTION_40_0();
          sub_267C77240(v133);
        }

        else
        {
          sub_267C77240(v133);

          v30 = v127;
        }

        v26 = v32;
      }

      else
      {
        v35 = v127 - 1;
        if (__OFSUB__(v127, 1))
        {
          goto LABEL_111;
        }

        if (v35 >= v28)
        {
          goto LABEL_112;
        }

        sub_267B9AFEC(&v29[5 * v35], &v129);
        if (swift_dynamicCast())
        {
          memcpy(v130, v131, 0x71uLL);
          a1 = v130[11];
          v3 = v133[11];
          if (!v130[11])
          {
            if (!v133[11])
            {
              goto LABEL_24;
            }

LABEL_46:
            sub_267C77240(v130);
            goto LABEL_47;
          }

          if (!v133[11])
          {
            goto LABEL_46;
          }

          sub_267CF6EB4();
          v3 = v3;
          a1 = a1;
          v36 = sub_267EF9818();

          if ((v36 & 1) == 0)
          {
            goto LABEL_46;
          }

LABEL_24:
          v37 = __OFADD__(v27++, 1);
          if (v37)
          {
            goto LABEL_115;
          }

          v38 = sub_267EF89F8();
          v39 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v39))
          {
            v40 = OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_1_32(v40);
            *(v41 + 14) = v27;
            OUTLINED_FUNCTION_10_22(&dword_267B93000, v38, v3, "#ConversationStateBuilder encountered consecutive reactions with same referencedMessage. startIndex: %ld, reactionCounter: %ld");
            OUTLINED_FUNCTION_40_0();
          }

          sub_267C77240(v133);
          sub_267C77240(v130);
          v26 = v32;
        }

        else
        {
LABEL_47:
          v55 = sub_267EF89F8();
          v56 = sub_267EF95D8();
          if (!OUTLINED_FUNCTION_27(v56))
          {

            sub_267C77240(v133);
            goto LABEL_51;
          }

          v30 = -1;
          v57 = OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_1_32(v57);
          *(v58 + 14) = 0;
          OUTLINED_FUNCTION_10_22(&dword_267B93000, v55, v3, "#ConversationStateBuilder consecutive reactions were not to the same referencedMessage. Resetting startIndex: %ld, reactionCounter: %ld");
          OUTLINED_FUNCTION_40_0();

          sub_267C77240(v133);
LABEL_49:
          v27 = 0;
          v26 = v32;
        }
      }
    }

    else
    {
      if (v27 >= 3)
      {
        v42 = v127 - 1;
        if (__OFSUB__(v127, 1))
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = OUTLINED_FUNCTION_4_7();
          sub_267C7083C(v59, v60, v61, v62);
          v118 = v63;
        }

        v3 = *(v118 + 16);
        v43 = *(v118 + 24);
        if (v3 >= v43 >> 1)
        {
          v64 = OUTLINED_FUNCTION_8_2(v43);
          sub_267C7083C(v64, v3 + 1, 1, v118);
          v118 = v65;
        }

        *(v118 + 16) = v3 + 1;
        v44 = v118 + 16 * v3;
        *(v44 + 32) = v30;
        *(v44 + 40) = v42;
        v45 = sub_267EF89F8();
        v46 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v46))
        {
          v47 = OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_1_32(v47);
          *(v48 + 14) = v42;
          OUTLINED_FUNCTION_10_22(&dword_267B93000, v45, v3, "#ConversationStateBuilder currentComponent is not a ReactionComponent. Appending array slice (%ld, %ld)");
          OUTLINED_FUNCTION_40_0();
        }
      }

      v49 = sub_267EF89F8();
      v50 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v50))
      {
        v30 = -1;
        v51 = OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_1_32(v51);
        *(v52 + 14) = 0;
        OUTLINED_FUNCTION_10_22(&dword_267B93000, v49, v3, "#ConversationStateBuilder Resetting startIndex: %ld, reactionCounter: %ld");
        OUTLINED_FUNCTION_40_0();

        goto LABEL_49;
      }

LABEL_51:
      v27 = 0;
      v30 = -1;
      v26 = v32;
    }
  }

  if (v30 == -1 || v27 < 3)
  {
    v68 = v118;
    v67 = v125;
  }

  else
  {
    v68 = v118;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v125;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v112 = OUTLINED_FUNCTION_4_7();
      sub_267C7083C(v112, v113, v114, v118);
      v68 = v115;
    }

    v70 = v28 - 1;
    v72 = *(v68 + 16);
    v71 = *(v68 + 24);
    if (v72 >= v71 >> 1)
    {
      v116 = OUTLINED_FUNCTION_8_2(v71);
      sub_267C7083C(v116, v72 + 1, 1, v68);
      v68 = v117;
    }

    *(v68 + 16) = v72 + 1;
    v73 = v68 + 16 * v72;
    *(v73 + 32) = v30;
    *(v73 + 40) = v70;
    v74 = sub_267EF89F8();
    v75 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v75))
    {
      v76 = OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_1_32(v76);
      *(v77 + 14) = v70;
      OUTLINED_FUNCTION_10_22(&dword_267B93000, v74, v72, "#ConversationStateBuilder Appending array slice (%ld, %ld)");
      OUTLINED_FUNCTION_40_0();
    }
  }

  v129 = v67;
  v78 = *(v68 + 16);
  if (v78)
  {
    v120 = v68 + 32;

    v119 = v68;
    while (v78 <= *(v68 + 16))
    {
      --v78;
      v79 = (v120 + 16 * v78);
      v80 = *v79;
      v81 = v79[1];
      if (v81 < *v79)
      {
        goto LABEL_102;
      }

      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_103;
      }

      if ((v80 & 0x8000000000000000) != 0)
      {
        goto LABEL_104;
      }

      v128 = v78;
      v83 = v129;
      v84 = v129[2];
      if (v84 < v80 || v84 < v82)
      {
        goto LABEL_105;
      }

      if (v82 < 0)
      {
        goto LABEL_106;
      }

      v122 = v81;
      v124 = v81 + 1;
      a1 = ((2 * v82) | 1);
      v86 = v80;

      v88 = sub_267CF6D9C(v87, v83 + 32, v86, a1);
      v126 = v86;
      if (v88)
      {
        v89 = v88;

        v90 = v89;
      }

      else
      {
        sub_267C73B1C(v83, v83 + 32, v86, a1);
        v90 = v91;
      }

      v92 = *(v90 + 16);
      if (v92)
      {
        a1 = (v90 + 32);
        v93 = v92 - 1;
        v94 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_267B9AFEC(a1, v134);
          sub_267BE58F4(v134, v132);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          if (!v133[3])
          {
            goto LABEL_90;
          }

          memcpy(v131, v133, 0x71uLL);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_4_7();
            sub_267C70768();
            v94 = v97;
          }

          v96 = *(v94 + 16);
          v95 = *(v94 + 24);
          if (v96 >= v95 >> 1)
          {
            OUTLINED_FUNCTION_8_2(v95);
            sub_267C70768();
            v94 = v98;
          }

          memcpy(v130, v131, 0x71uLL);
          *(v94 + 16) = v96 + 1;
          memcpy((v94 + 120 * v96 + 32), v130, 0x71uLL);
          if (!v93)
          {
LABEL_92:

            v68 = v119;
            goto LABEL_94;
          }

LABEL_91:
          --v93;
          a1 += 5;
        }

        memset(v133, 0, 113);
LABEL_90:
        memcpy(v131, v133, 0x71uLL);
        sub_267B9FF34(v131, &qword_28022AAE8, &qword_267F02C58);
        if (!v93)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      v94 = MEMORY[0x277D84F90];
LABEL_94:
      sub_267D57660(v94, __src);
      v99 = *(&__src[1] + 1);
      if (*(&__src[1] + 1))
      {
        v100 = sub_267EF89F8();
        v101 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v101))
        {
          a1 = OUTLINED_FUNCTION_35_0();
          *a1 = 134218240;
          *(a1 + 4) = v126;
          *(a1 + 6) = 2048;
          *(a1 + 14) = v122;
          OUTLINED_FUNCTION_10_22(&dword_267B93000, v100, v94, "#ConversationStateBuilder replacing array slice (%ld, %ld) with an AggregatedReactionComponent");
          OUTLINED_FUNCTION_40_0();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B38, &unk_267F02C60);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_267EFC020;
        *(v102 + 56) = &type metadata for AggregatedReactionComponent;
        *(v102 + 64) = sub_267CF6E60();
        v103 = swift_allocObject();
        *(v102 + 32) = v103;
        *(v103 + 16) = __src[0];
        *(v103 + 32) = *&__src[1];
        *(v103 + 40) = v99;
        memcpy((v103 + 48), &__src[2], 0x51uLL);
        sub_267CF5CF4(v126, v124, v102);
      }

      v78 = v128;
      if (!v128)
      {
        goto LABEL_99;
      }
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

LABEL_99:

  a1 = v129;

  v78 = sub_267EF89F8();
  v104 = sub_267EF95D8();
  if (!os_log_type_enabled(v78, v104))
  {
LABEL_107:

    goto LABEL_108;
  }

  v105 = swift_slowAlloc();
  v106 = swift_slowAlloc();
  v133[0] = v106;
  *v105 = 136315138;
  sub_267BE3C00(a1);
  v107 = MEMORY[0x26D608FD0]();
  v109 = v108;

  v110 = sub_267BA33E8(v107, v109, v133);

  *(v105 + 4) = v110;

  _os_log_impl(&dword_267B93000, v78, v104, "#ConversationStateBuilder Resulting components: %s", v105, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v106);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
LABEL_108:

  return a1;
}

uint64_t sub_267BE3A78()
{

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_267BE3B18(void (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return OUTLINED_FUNCTION_144_1(v5, v6);
}

double OUTLINED_FUNCTION_149()
{
  result = 0.0;
  *(v0 + 528) = 0u;
  *(v0 + 544) = 0u;
  return result;
}

void OUTLINED_FUNCTION_149_0(uint64_t a1@<X8>)
{
  *(v2 + 240) = 0;
  *(v2 + 264) = a1;
  *(v2 + 272) = 0x7461636F4C736168;
  *(v2 + 280) = 0xEB000000006E6F69;
  *(v2 + 288) = *(v1 + *(v3 + 32));
  *(v2 + 312) = a1;
  strcpy((v2 + 320), "isAudioReply");
  *(v2 + 333) = 0;
  *(v2 + 334) = -5120;
  *(v2 + 336) = *(v1 + *(v3 + 36));
}

uint64_t sub_267BE3C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_267BC7934(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 32);
    do
    {
      v5 = __swift_project_boxed_opaque_existential_0(v4, v4[3]);
      MEMORY[0x28223BE20](v5);
      (*(v7 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v8 = sub_267EF90A8();
      v10 = v9;
      v16 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_267BC7934((v11 > 1), v12 + 1, 1);
        v2 = v16;
      }

      *(v2 + 16) = v12 + 1;
      v13 = v2 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_267BE3DA8(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  if ([a1 sender])
  {
    MEMORY[0x26D608F90]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_267EF9328();
    }

    sub_267EF9368();
    v2 = v12;
  }

  v3 = sub_267BE3F34(a1);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  result = sub_267BAF0DC(v3);
  if (!result)
  {
LABEL_16:

LABEL_17:
    sub_267BE3F94(v2);
    v11 = v10;

    return v11;
  }

  v6 = result;
  if (result >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D609870](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      MEMORY[0x26D608F90]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
    }

    v2 = v12;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_267BE3F34(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BCA2C8();
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267BE3F94(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D609870](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    if ([v4 isMe])
    {
    }

    else
    {
      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }
  }
}

uint64_t sub_267BE40A0(void *a1)
{
  v2 = [a1 conversationIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

void sub_267BE4134(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  *(v2 + 16) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277D576E0]);
  v7 = v5;
  v8 = [v6 init];
  [v7 setSmsContext_];

  v9 = [*(v2 + 16) smsContext];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277D576A8]) init];
    [v10 setRichAttachmentIntelligenceFeatureUsage_];
  }

  v24 = *(a1 + 16);
  if (!v24)
  {
LABEL_21:

    return;
  }

  v12 = 0;
  v22 = a1;
  v23 = a1 + 32;
  while (v12 < *(a1 + 16))
  {
    sub_267B9AFEC(v23 + 40 * v12, v25);
    __swift_project_boxed_opaque_existential_0(v25, v25[3]);
    v13 = OUTLINED_FUNCTION_33();
    v15 = v14(v13);
    __swift_destroy_boxed_opaque_existential_0(v25);

    if (v15 >> 62)
    {
      v16 = sub_267EF9A68();
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    if (v16 < 1)
    {
      goto LABEL_23;
    }

    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D609870](i, v15);
      }

      else
      {
        v18 = *(v15 + 8 * i + 32);
      }

      v19 = v18;
      v20 = [*(v2 + 16) smsContext];
      if (v20)
      {
        v21 = v20;
        [v20 addIsGroupMessage_];
      }
    }

LABEL_17:
    ++v12;

    a1 = v22;
    if (v12 == v24)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_267BE43E8(char a1)
{
  v2 = v1;
  if (qword_280228818 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v3 = sub_267EF8A08();
    __swift_project_value_buffer(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v6);
      OUTLINED_FUNCTION_90_0(&dword_267B93000, v4, v5, "#ConversationStateManager Initialize maps for navigation");
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_83(v2 + 56, v73);
    v7 = *(v2 + 56);
    v56 = v7 & 0xC000000000000001;
    v57 = sub_267BAF0DC(v7);
    v55 = v7 + 32;
    v58 = v7;

    v8 = 0;
LABEL_5:
    if (v8 == v57)
    {
    }

    sub_267BBD0EC(v8, v56 == 0, v58);
    if (v56)
    {
      v9 = MEMORY[0x26D609870](v8, v58);
    }

    else
    {
      v9 = *(v55 + 8 * v8);
    }

    if (!__OFADD__(v8, 1))
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  *(&v70 + 1) = &type metadata for Features;
  *&v71 = sub_267BAFCAC();
  LOBYTE(v69) = 12;
  v10 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v69);
  if ((v10 & 1) == 0 || (a1 & 1) == 0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_83((v9 + 5), v63);
  sub_267BE4994((v9 + 5), &v66);
  if (!*(&v67 + 1))
  {
    sub_267B9FF34(&v66, &qword_280229910, &unk_267EFEB70);
LABEL_16:
    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v16))
    {
      v17 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v17);
      OUTLINED_FUNCTION_90_0(&dword_267B93000, v15, v16, "#ConversationStateManager using non-summary components for readableComponents before creating navigation map");
      OUTLINED_FUNCTION_32_0();
    }

    v18 = v9[4];
    swift_beginAccess();
    v9[3] = v18;

    goto LABEL_19;
  }

  sub_267BE58F4(&v66, &v69);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v12))
  {
    v13 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_61(v13);
    OUTLINED_FUNCTION_90_0(&dword_267B93000, v11, v12, "#ConversationStateManager using ConversationSummaryComponent for readableComponents before creating navigation map");
    OUTLINED_FUNCTION_32_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B38, &unk_267F02C60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267EFC020;
  sub_267BE58F4(&v69, v14 + 32);
  swift_beginAccess();
  v9[3] = v14;
LABEL_19:

  v19 = v9[11];
  v20 = v9[12];
  OUTLINED_FUNCTION_66_3(v2 + 384, &v69);
  swift_isUniquelyReferenced_nonNull_native();
  *&v66 = *(v2 + 384);
  sub_267BE4A04(v8, v19, v20);
  *(v2 + 384) = v66;
  swift_endAccess();
  OUTLINED_FUNCTION_83((v9 + 3), v72);
  v59 = v9[3] + 32;
  v60 = v9[3];

  for (i = v9; ; v9 = i)
  {
    *&v22 = OUTLINED_FUNCTION_6_45();
    if (!v25)
    {
      if (v21 >= *(v60 + 16))
      {
        goto LABEL_37;
      }

      *&v66 = v21;
      sub_267B9AFEC(v59 + 40 * v21, &v66 + 8);
      v24 = v66;
      v23 = v67;
      v22 = v68;
    }

    v69 = v24;
    v70 = v23;
    v71 = v22;
    if (!v22)
    {

      ++v8;
      goto LABEL_5;
    }

    v62 = v24;
    sub_267BE58F4((&v69 + 8), &v66);
    v26 = *(&v67 + 1);
    v27 = v68;
    __swift_project_boxed_opaque_existential_0(&v66, *(&v67 + 1));
    v28 = (*(v27 + 32))(v26, v27);
    v30 = v29;
    v31 = v9[11];
    v32 = v9[12];
    OUTLINED_FUNCTION_66_3(v2 + 392, v65);

    swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v2 + 392);
    v33 = v2;
    *(v2 + 392) = 0x8000000000000000;
    sub_267BA9948();
    OUTLINED_FUNCTION_5_55();
    if (__OFADD__(v36, v37))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v2 = v34;
    v38 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C7B8, &qword_267F0B668);
    if (sub_267EF9C68())
    {
      break;
    }

LABEL_28:
    if (v38)
    {

      v41 = v64;
      OUTLINED_FUNCTION_13_38();
      v44 = (v42 + v2 * v43);
      *v44 = v62;
      v44[1] = v31;
      v44[2] = v32;
    }

    else
    {
      v41 = v64;
      OUTLINED_FUNCTION_7_44(v64 + 8 * (v2 >> 6));
      v46 = (v45 + 16 * v2);
      *v46 = v28;
      v46[1] = v30;
      OUTLINED_FUNCTION_13_38();
      v49 = (v47 + v2 * v48);
      *v49 = v62;
      v49[1] = v31;
      v49[2] = v32;
      v50 = *(v41 + 16);
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_38;
      }

      *(v41 + 16) = v52;
    }

    v2 = v33;
    v33[49] = v41;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(&v66);
  }

  v39 = sub_267BA9948();
  if ((v38 & 1) == (v40 & 1))
  {
    v2 = v39;
    goto LABEL_28;
  }

  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267BE4994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229910, &unk_267EFEB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_267BE4A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_82(a1, a2, a3);
  OUTLINED_FUNCTION_0_73();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_267EF9F28();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_10_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C408, &unk_267F0A710);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_6_51();
    if (!v9)
    {
      goto LABEL_12;
    }

    v6 = v8;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    OUTLINED_FUNCTION_60_2();
  }

  else
  {
    OUTLINED_FUNCTION_5_67();
    sub_267BE6244(v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_60_2();
  }
}

unint64_t sub_267BE4AD0(uint64_t a1)
{
  OUTLINED_FUNCTION_4_58(a1);
  v2 = *(v1 + 56);
  v3 = v2 & 0xC000000000000001;
  sub_267BBD0EC(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {

    MEMORY[0x26D609870](0, v2);
    OUTLINED_FUNCTION_43();
  }

  else
  {
    v3 = *(v2 + 32);
  }

  return v3;
}

uint64_t type metadata accessor for ConversationActionGroup(uint64_t a1)
{
  result = qword_280229980;
  if (!qword_280229980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BE4B90(uint64_t a1, char a2)
{
  *(&v40 + 1) = &type metadata for Features;
  *&v41 = sub_267BAFCAC();
  LOBYTE(v39) = 12;
  v4 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v39);
  if (v4 & 1) != 0 && (a2)
  {
    swift_beginAccess();
    sub_267BB16A4(a1 + 40, &v32, &qword_280229910, &unk_267EFEB70);
    if (*(&v33 + 1))
    {
      sub_267BE58F4(&v32, &v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A58, &unk_267F0D640);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_267EFC020;
      *(v5 + 32) = sub_267E2E1C8(&v39, *(v2 + 16), 0);
      *(v5 + 40) = v6;
      __swift_destroy_boxed_opaque_existential_0(&v39);
      goto LABEL_15;
    }

    sub_267B9FF34(&v32, &qword_280229910, &unk_267EFEB70);
  }

  v7 = *(v2 + 16);
  v30 = *(v7 + 88) != 0;
  swift_beginAccess();
  v8 = *(a1 + 24);
  v9 = *(v8 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v9)
  {
    v38 = MEMORY[0x277D84F90];

    sub_267BE50EC();
    v5 = v38;
    v10 = v8 + 32;
    do
    {
      sub_267B9AFEC(v10, v37);
      sub_267B9AFEC(v37, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v37);
        v39 = v32;
        v40 = v33;
        v41 = v34;
        v42 = v35;
        type metadata accessor for ReadAudioComponentAction();
        swift_allocObject();
        v11 = sub_267E38820(&v39, v7);
        v12 = type metadata accessor for ReadAudioComponentAction;
        v13 = &unk_267F0B9C8;
        v14 = &unk_280229268;
      }

      else
      {
        type metadata accessor for DefaultReadComponentAction();
        swift_allocObject();
        v11 = sub_267BF902C(v37, v7, v30 & a2);
        v12 = type metadata accessor for DefaultReadComponentAction;
        v13 = &unk_267F00350;
        v14 = &qword_280229258;
      }

      v15 = sub_267BF9074(v14, v12, v13);

      __swift_destroy_boxed_opaque_existential_0(v36);
      v38 = v5;
      v16 = *(v5 + 16);
      if (v16 >= *(v5 + 24) >> 1)
      {
        sub_267BE50EC();
        v5 = v38;
      }

      *(v5 + 16) = v16 + 1;
      v17 = v5 + 16 * v16;
      *(v17 + 32) = v11;
      *(v17 + 40) = v15;
      v10 += 40;
      --v9;
    }

    while (v9);
  }

LABEL_15:
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v18 = sub_267EF8A08();
  __swift_project_value_buffer(v18, qword_280240FB0);
  v19 = sub_267EF89F8();
  v20 = sub_267EF95D8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v32 = v22;
    *v21 = 136315138;

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE10, &qword_267EFEED0);
    v24 = MEMORY[0x26D608FD0](v5, v23);
    v26 = v25;

    v27 = sub_267BA33E8(v24, v26, &v32);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_267B93000, v19, v20, "#MessageReadingActionGroup Created actions for conversation: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26D60A7B0](v22, -1, -1);
    MEMORY[0x26D60A7B0](v21, -1, -1);
  }

  sub_267C36888(v28);

  return v5;
}

void sub_267BE5024()
{
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_12_8();
  if (v6)
  {
    OUTLINED_FUNCTION_2_21();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_24_4();
  if (v3)
  {
    v15 = OUTLINED_FUNCTION_50_6(v9, v10, v11, v12, v13, v14);
    v16 = OUTLINED_FUNCTION_37_3(v15);
    _swift_stdlib_malloc_size(v16);
    OUTLINED_FUNCTION_7_14();
    v16[2] = v2;
    v16[3] = v17;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_48_5();
  if (v1)
  {
    if (v16 != v0 || v5 + 16 * v2 <= v4)
    {
      v19 = OUTLINED_FUNCTION_68_0();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_19();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_25_9(v24);
  }

  OUTLINED_FUNCTION_60_2();
}

uint64_t OUTLINED_FUNCTION_122_0()
{

  return sub_267EF8AE8();
}

uint64_t OUTLINED_FUNCTION_122_1()
{
}

uint64_t OUTLINED_FUNCTION_122_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267BC9B04(v3 + a3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_122_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_267EF90F8();
}

uint64_t OUTLINED_FUNCTION_122_6()
{
}

uint64_t sub_267BE5258(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  if ([*a1 messageType] == 26)
  {
    v8 = [v7 referencedMessage];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 identifier];
      v11 = sub_267EF9028();
      v13 = v12;

      v40 = v7;
      swift_isUniquelyReferenced_nonNull_native();
      v41 = *a2;
      v14 = v41;
      *a2 = 0x8000000000000000;
      v15 = sub_267BA9948();
      if (__OFADD__(*(v14 + 16), (v16 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v17 = v15;
        v18 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AAF8, &qword_267F02C70);
        if ((sub_267EF9C68() & 1) == 0)
        {
LABEL_7:
          *a2 = v41;

          if (v18)
          {
          }

          else
          {
            sub_267E87218(v17, v11, v13, MEMORY[0x277D84F90], *a2);
          }

          sub_267C74A48();
          sub_267CF5E78(0, 0, v40);
          v36 = [v40 identifier];
          v37 = sub_267EF9028();
          v39 = v38;

          sub_267D302A8(&v41, v37, v39);
        }

        v19 = sub_267BA9948();
        if ((v18 & 1) == (v20 & 1))
        {
          v17 = v19;
          goto LABEL_7;
        }
      }

      result = sub_267EF9F28();
      __break(1u);
      return result;
    }
  }

  v21 = [v7 identifier];
  v22 = sub_267EF9028();

  v23 = sub_267BC2EE0(v22);

  if (!v23)
  {
    return result;
  }

  sub_267CF5124(v25);

  v26 = [v7 identifier];
  v27 = sub_267EF9028();
  v29 = v28;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *a5;
  sub_267E86BAC(v23, v27, v29, isUniquelyReferenced_nonNull_native);
  *a5 = v41;

  v31 = [v7 identifier];
  sub_267EF9028();

  sub_267CF5F28();

  v32 = [v7 identifier];
  v33 = sub_267EF9028();
  v35 = v34;

  sub_267CF6ABC(v33, v35);
}

char *sub_267BE55F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B58, &qword_267EFEFF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_267BE56FC(void *a1)
{
  v1 = [a1 inlineGlyphContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5F0, &unk_267F0C690);
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267BE5768()
{
  OUTLINED_FUNCTION_10_25();
  OUTLINED_FUNCTION_15_19(v2, v3, v4);
  v5 = sub_267EF9B08();
  v6 = v5;
  if (*(v1 + 16))
  {
    v25 = v0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        *(*(v1 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = sub_267EF9808() & ~(-1 << *(v6 + 32));
        if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_5_5();
LABEL_21:
        OUTLINED_FUNCTION_22_16();
        *(v12 + v22) |= v23;
        OUTLINED_FUNCTION_18_18(v24);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_7_4();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*(v12 + 8 * v18) != -1)
        {
          OUTLINED_FUNCTION_6_23();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v0 = v25;
          goto LABEL_25;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v7))
        {
          OUTLINED_FUNCTION_12_5();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v6;
    OUTLINED_FUNCTION_9_28();
  }
}

void *sub_267BE591C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v48 = v15;
  v49 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v47 = v16;
  *(v6 + 67) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 5) = 0u;
  v6[19] = 0;
  v6[20] = 0;
  sub_267BBD3E4();
  v17 = v51;
  if (v51)
  {
    v18 = v52;
    __swift_project_boxed_opaque_existential_0(v50, v51);
    OUTLINED_FUNCTION_42_7();
    v19(v17, v18);
    OUTLINED_FUNCTION_76();
    if (sub_267BAF0DC(v20))
    {
      OUTLINED_FUNCTION_4_50();
      if (v17)
      {
        v21 = MEMORY[0x26D609870](0, v6);
      }

      else
      {
        v21 = v6[4];
      }

      v22 = v21;

      __swift_destroy_boxed_opaque_existential_0(v50);
      v6[2] = sub_267BE3DA8(v22);
      v6[3] = a1;
      v6[4] = a1;
      if (*(a1 + 16))
      {
        v44 = v22;
        v45 = a3;
        a3 = a4;
        a4 = a2;
        v23 = a5;
        v46 = a6;
        sub_267B9AFEC(a1 + 32, v50);
        v18 = v51;
        v24 = v52;
        v6 = __swift_project_boxed_opaque_existential_0(v50, v51);
        v22 = *(v24 + 16);
        swift_bridgeObjectRetain_n();
        (v22)(v18, v24);
        OUTLINED_FUNCTION_76();
        if (!sub_267BAF0DC(v25))
        {

          v6 = 0;
          v18 = 0;
          a5 = v23;
          v28 = a4;
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_4_50();
        a5 = v23;
        if (!v22)
        {
          v26 = v6[4];
LABEL_9:
          v27 = v26;
          v28 = a4;

          sub_267BE40A0(v27);
          OUTLINED_FUNCTION_76();
LABEL_11:
          __swift_destroy_boxed_opaque_existential_0(v50);
          v7[13] = v6;
          v7[14] = v18;
          sub_267B9AFEC(a1 + 32, v50);
          v29 = v51;
          v30 = v52;
          __swift_project_boxed_opaque_existential_0(v50, v51);
          OUTLINED_FUNCTION_42_7();
          v31(v29, v30);
          OUTLINED_FUNCTION_76();
          if (sub_267BAF0DC(v32))
          {
            OUTLINED_FUNCTION_4_50();
            if (v22)
            {
              v33 = MEMORY[0x26D609870](0, v6);
            }

            else
            {
              v33 = v6[4];
            }

            v34 = v33;

            v35 = [v34 groupName];
          }

          else
          {

            v35 = 0;
          }

          __swift_destroy_boxed_opaque_existential_0(v50);
          v7[15] = v35;
          sub_267EF2D18();
          sub_267EF2CE8();
          OUTLINED_FUNCTION_76();
          (*(v48 + 8))(v47, v49);
          v7[11] = v47;
          v7[12] = v29;
          *(v7 + 80) = 0;
          v7[16] = v28;
          v7[17] = v45;
          v7[18] = a3;
          v7[19] = a5;
          v7[20] = v46;

          type metadata accessor for ReadMessageSelfContext();
          swift_allocObject();
          sub_267BE4134(a1);
          v37 = v36;

          v7[21] = v37;
          return v7;
        }
      }

      else
      {
        __break(1u);
      }

      v26 = MEMORY[0x26D609870](0, v6);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    sub_267B9FF34(v50, &qword_280229910, &unk_267EFEB70);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v39 = sub_267EF8A08();
  __swift_project_value_buffer(v39, qword_280240FB0);
  v40 = sub_267EF89F8();
  v41 = sub_267EF95E8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_267BA33E8(0xD00000000000003FLL, 0x8000000267F1A4D0, v50);
    _os_log_impl(&dword_267B93000, v40, v41, "Fatal error: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267BE5E38(uint64_t result)
{
  v43 = *(result + 16);
  if (v43)
  {
    v1 = 0;
    v2 = 0;
    v42 = result + 32;
    while (1)
    {
      sub_267B9AFEC(v42 + 40 * v2, v53);
      v3 = v54;
      v4 = v55;
      __swift_project_boxed_opaque_existential_0(v53, v54);
      v5 = (*(v4 + 16))(v3, v4);

      v6 = v5 >> 62 ? sub_267EF9A68() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v44 = v2;
      if (v6)
      {
        break;
      }

LABEL_31:
      v2 = v44 + 1;

      __swift_destroy_boxed_opaque_existential_0(v53);
      if (v44 + 1 == v43)
      {
        return sub_267BA1BFC(v1, 0);
      }
    }

    v7 = 0;
    v47 = v5;
    v48 = v5 & 0xC000000000000001;
    v45 = v5 & 0xFFFFFFFFFFFFFF8;
    v46 = v6;
    while (1)
    {
      if (v48)
      {
        v8 = MEMORY[0x26D609870](v7, v5);
      }

      else
      {
        if (v7 >= *(v45 + 16))
        {
          goto LABEL_40;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      if (__OFADD__(v7, 1))
      {
        break;
      }

      v49 = v8;
      v50 = v7 + 1;
      v9 = [v8 identifier];
      v10 = sub_267EF9028();
      v12 = v11;

      v13 = v54;
      v14 = v55;
      __swift_project_boxed_opaque_existential_0(v53, v54);
      v15 = (*(v14 + 32))(v13, v14);
      v17 = v16;
      sub_267BA1BFC(v1, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v52 = *v51;
      v18 = v52;
      v19 = sub_267BA9948();
      if (__OFADD__(*(v18 + 16), (v20 & 1) == 0))
      {
        goto LABEL_36;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD08, &unk_267F0D8B0);
      if (sub_267EF9C68())
      {
        sub_267BA9948();
        OUTLINED_FUNCTION_3_80();
        if (!v24)
        {
          goto LABEL_41;
        }

        v21 = v23;
      }

      v25 = v52;
      *v51 = v52;
      if (v22)
      {
      }

      else
      {
        sub_267BE84B4(&v52);
        v26 = v52;
        v25[(v21 >> 6) + 8] |= 1 << v21;
        v27 = (v25[6] + 16 * v21);
        *v27 = v10;
        v27[1] = v12;
        *(v25[7] + 8 * v21) = v26;
        v28 = v25[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_38;
        }

        v25[2] = v30;
      }

      v31 = v25[7];
      swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v31 + 8 * v21);
      v32 = v52;
      *(v31 + 8 * v21) = 0x8000000000000000;
      v33 = OUTLINED_FUNCTION_12_45();
      if (__OFADD__(*(v32 + 16), (v34 & 1) == 0))
      {
        goto LABEL_37;
      }

      v35 = v33;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD00, &qword_267F0D8A8);
      if (sub_267EF9C68())
      {
        OUTLINED_FUNCTION_12_45();
        OUTLINED_FUNCTION_3_80();
        if (!v24)
        {
          goto LABEL_41;
        }

        v35 = v37;
      }

      if (v36)
      {

        v38 = v52;
        *(v52[7] + v35) = 0;
      }

      else
      {
        v38 = v52;
        v52[(v35 >> 6) + 8] |= 1 << v35;
        v39 = (v38[6] + 16 * v35);
        *v39 = v15;
        v39[1] = v17;
        *(v38[7] + v35) = 0;
        v40 = v38[2];
        v29 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v29)
        {
          goto LABEL_39;
        }

        v38[2] = v41;
      }

      *(v31 + 8 * v21) = v38;

      ++v7;
      v1 = sub_267BE84B4;
      v5 = v47;
      if (v50 == v46)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    result = sub_267EF9F28();
    __break(1u);
  }

  return result;
}

unint64_t sub_267BE6244(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_7_50(a1, a2, a3, a4, a5);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v7;
  }

  return result;
}

uint64_t sub_267BE6268()
{
  v1 = v0;
  v2 = sub_267EF7008();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-1] - v7;
  v9 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v9);
  (*(v10 + 8))(v19, v9, v10);
  __swift_project_boxed_opaque_existential_0(v19, v19[3]);
  sub_267EF3B78();
  (*(v3 + 104))(v6, *MEMORY[0x277D61C80], v2);
  sub_267BFBF08(&unk_28022A370, MEMORY[0x277D61CA8], MEMORY[0x277D61CB0]);
  v11 = sub_267EF8FE8();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v8, v2);
  v13 = __swift_destroy_boxed_opaque_existential_0(v19);
  if ((v11 & 1) != 0 || v1[11] || (v14 = sub_267E2B5FC(v13)) || (v15 = sub_267E2B49C(v14)))
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_267E2B648(v15) ^ 1;
  }

  return v16 & 1;
}

void *sub_267BE6480(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = *v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v52 - v11);
  *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow23ConversationActionGroup_conversation) = a1;
  v13 = sub_267BE6C54(a2);
  *(a2 + 416) = a1;
  swift_retain_n();

  swift_retain_n();

  v14 = sub_267BE4B90(a1, a3);
  v15 = sub_267DA8624(v14);

  if (v15[2])
  {
    v16 = *(v15[5] + 8);
    v17 = swift_unknownObjectRetain();
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v13[3] = v17;
  v13[4] = v16;

  swift_unknownObjectRelease();
  if ((a4 & 1) != 0 && sub_267E2B3E0())
  {
    v52 = v9;
    type metadata accessor for ComponentAppendingAction();
    swift_allocObject();
    v18 = sub_267C1C110(a2, a1, 0);
    if (sub_267C96D2C())
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_0_13();
      sub_267C6BAC4(v19, v20, &unk_267EFCD10);

      sub_267EF3DB8();
      swift_unknownObjectRelease();
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_267C71568();
      v15 = v50;
    }

    v22 = v15[2];
    if (v22 >= v15[3] >> 1)
    {
      sub_267C71568();
      v15 = v51;
    }

    OUTLINED_FUNCTION_0_13();
    v25 = sub_267C6BAC4(v23, v24, &unk_267EFCD50);
    v15[2] = v22 + 1;
    v26 = &v15[2 * v22];
    v26[4] = v18;
    v26[5] = v25;
  }

  v27 = *(a2 + 408);

  if (v27)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v28 = sub_267EF8A08();
    __swift_project_value_buffer(v28, qword_280240FB0);
    v29 = sub_267EF89F8();
    v30 = sub_267EF95D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_267B93000, v29, v30, "ConversationActionGroup# Device is offline, skipping reply offer", v31, 2u);
      MEMORY[0x26D60A7B0](v31, -1, -1);
    }

    v32 = sub_267BFB860();

    v33 = sub_267E623A8(a1, v32, a2);
    v35 = v34;
    v36 = sub_267BF42CC(v33);

    if (v36 != 1)
    {

      *v12 = v33;
      v12[1] = v35;
      goto LABEL_24;
    }

    type metadata accessor for DeviceOfflineNotificationActionGroup(0);
    OUTLINED_FUNCTION_27_4();
    v37 = swift_allocObject();
    ObjectType = swift_getObjectType();

    swift_unknownObjectRetain();
    v39 = sub_267DFA39C(a2, v33, v37, ObjectType, v35);

    swift_unknownObjectRelease();

    v40 = &unk_280229998;
    v41 = type metadata accessor for DeviceOfflineNotificationActionGroup;
    v42 = &unk_267F0D600;
  }

  else
  {

    v43 = swift_allocObject();
    v43[2] = a1;
    v43[3] = a2;
    v43[4] = v9;
    type metadata accessor for OfferTransitionActionGroup(0);
    OUTLINED_FUNCTION_27_4();
    swift_allocObject();
    v39 = sub_267CFB440(sub_267BA1BD8, v43);
    v40 = &qword_280229990;
    v41 = type metadata accessor for OfferTransitionActionGroup;
    v42 = &unk_267F02F50;
  }

  v44 = sub_267C6BAC4(v40, v41, v42);
  *v12 = v39;
  v12[1] = v44;
LABEL_24:
  v45 = *MEMORY[0x277D5BF58];
  v46 = sub_267EF4548();
  OUTLINED_FUNCTION_22();
  (*(v47 + 104))(v12, v45, v46);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v46);
  v48 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  swift_beginAccess();
  sub_267C13844(v12, v13 + v48);
  swift_endAccess();

  return v13;
}

uint64_t sub_267BE6A64(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a4)
{
  v9 = *(a1 + 8);
  result = sub_267EF9E48();
  if (result < v9)
  {
    v11 = result;
    a4 = a2(v9 / 2);
    v13[0] = v12;
    v13[1] = v9 / 2;
    result = a3(v13, v14, a1, v11);
    if (v4)
    {
      if (v9 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v9 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9)
  {
    return (a4)(0, v9, 1, a1);
  }

  return result;
}

void sub_267BE6B68()
{
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_12_8();
  if (v6)
  {
    OUTLINED_FUNCTION_2_21();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_24_4();
  if (v3)
  {
    v15 = OUTLINED_FUNCTION_50_6(v9, v10, v11, v12, v13, v14);
    v16 = OUTLINED_FUNCTION_37_3(v15);
    _swift_stdlib_malloc_size(v16);
    OUTLINED_FUNCTION_14_14();
    OUTLINED_FUNCTION_41_5(v17);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_48_5();
  if (v1)
  {
    if (v16 != v0 || v5 + 8 * v2 <= v4)
    {
      v19 = OUTLINED_FUNCTION_68_0();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_19();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_25_9(v24);
  }

  OUTLINED_FUNCTION_60_2();
}

void *sub_267BE6C54(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  v4 = sub_267EF4548();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  v1[2] = a1;
  return v1;
}

void *sub_267BE6CAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), int a5)
{
  v37 = a3;
  v38 = a4;
  v36 = a2;

  v44[0] = sub_267BE512C(v6);
  sub_267BDE58C(v44, sub_267BE6A4C, sub_267D2FE1C, sub_267E5053C, sub_267BDE748);
  v7 = sub_267BDEADC(v44[0]);

  v45[0] = MEMORY[0x277D84F90];
  v35 = *(v7 + 2);
  if (!v35)
  {

    if ((a5 & 1) == 0)
    {
      goto LABEL_20;
    }

    return v45[0];
  }

  HIDWORD(v32) = a5;
  v8 = 0;
  v33 = v7;
  v34 = v7 + 32;
  while (1)
  {
    if (v8 >= *(v7 + 2))
    {
      goto LABEL_24;
    }

    v9 = &v34[16 * v8];
    v10 = v9[8];
    v11 = *v9;
    v12 = sub_267BDEF8C(v11, v10, v36, v37, v38);
    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

LABEL_16:
    ++v8;

    if (v8 == v35)
    {

      if ((v32 & 0x100000000) != 0)
      {
        return v45[0];
      }

LABEL_20:
      v44[3] = &type metadata for Features;
      v44[4] = sub_267BAFCAC();
      LOBYTE(v44[0]) = 17;
      v29 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0(v44);
      v28 = v45[0];
      if (v29)
      {
        v30 = sub_267BE2E30(v45[0]);

        return v30;
      }

      return v28;
    }
  }

  v39 = v12;
  v40 = v11;
  v14 = v12 + 32;
  while (1)
  {
    sub_267B9AFEC(v14, v44);
    v15 = v45[0];
    v16 = *(v45[0] + 16);
    if (!v16)
    {
LABEL_12:
      sub_267B9AFEC(v44, v41);
      v21 = v42;
      v22 = v43;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      MEMORY[0x28223BE20](v23);
      v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25);
      sub_267BE2B94(v25, v45, v21, v22);
      __swift_destroy_boxed_opaque_existential_0(v44);
      __swift_destroy_boxed_opaque_existential_0(v41);
      goto LABEL_13;
    }

    sub_267B9AFEC(v44, v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267D5FF8C();
      v15 = v27;
    }

    if (v16 > v15[2])
    {
      break;
    }

    v17 = &v15[5 * v16];
    v18 = v17[2];
    v19 = v17[3];
    __swift_mutable_project_boxed_opaque_existential_1((v17 - 1), v18);
    v20 = (*(v19 + 80))(v41, v18, v19);
    sub_267B9F98C(v41, &qword_280229910, &unk_267EFEB70);
    v45[0] = v15;
    if ((v20 & 1) == 0)
    {
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_0(v44);
LABEL_13:
    v14 += 40;
    if (!--v13)
    {

      v7 = v33;
      v11 = v40;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);

  __break(1u);
  return result;
}

void sub_267BE704C(void **a1, void *a2, void **a3, uint64_t a4, void *a5)
{
  v213 = a4;
  v7 = *a1;
  v8 = *a2;

  v9 = [v7 identifier];
  v10 = sub_267EF9028();
  v12 = v11;

  LOBYTE(v9) = sub_267BC2F78(v10, v12, v8);

  if (v9)
  {
    return;
  }

  v13 = *a3;

  v14 = [v7 identifier];
  v15 = sub_267EF9028();
  v17 = v16;

  LOBYTE(v14) = sub_267BC2F78(v15, v17, v13);

  v18 = MEMORY[0x277D84F90];
  if ((v14 & 1) == 0)
  {
    v29 = v7;
    MEMORY[0x26D608F90]();
    sub_267BDECD0();
    sub_267EF9368();
    v30 = [v29 identifier];
    v31 = sub_267EF9028();

    v32 = sub_267BC2EE0(v31);

    if (!v32)
    {
      return;
    }

    v212[0] = v18;
    v33 = sub_267BAF0DC(v32);
    v34 = 0;
    v35 = v32 & 0xC000000000000001;
    while (v33 != v34)
    {
      if (v35)
      {
        v36 = MEMORY[0x26D609870](v34, v32);
      }

      else
      {
        if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_210;
        }

        v36 = *(v32 + 8 * v34 + 32);
      }

      v37 = v36;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
        goto LABEL_220;
      }

      if (sub_267D606A0())
      {
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }

      else
      {
      }

      ++v34;
    }

    v38 = v18;
    v39 = 0;
    v40 = v212[0];
    v212[0] = v38;
    while (v33 != v39)
    {
      if (v35)
      {
        v41 = MEMORY[0x26D609870](v39, v32);
      }

      else
      {
        if (v39 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_213;
        }

        v41 = *(v32 + 8 * v39 + 32);
      }

      v42 = v41;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_212;
      }

      if (sub_267D606A0())
      {
      }

      else
      {
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }

      ++v39;
    }

    v184 = v212[0];
    v43 = sub_267CF5A70(v40);
    v44 = v43;
    v180 = v5;
    v45 = v43 + 8;
    v46 = 1 << *(v43 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & v43[8];
    v49 = (v46 + 63) >> 6;

    v51 = 0;
    v52 = MEMORY[0x277D84F90];
    v201 = v49;
    v187 = v45;
    v191 = v50;
LABEL_43:
    if (v48)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_211;
      }

      if (v53 >= v49)
      {
        break;
      }

      v48 = v45[v53];
      ++v51;
      if (v48)
      {
        v51 = v53;
LABEL_48:
        v54 = *(v44[7] + ((v51 << 9) | (8 * __clz(__rbit64(v48)))));
        if (v54 >> 62)
        {
          v55 = sub_267EF9A68();
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v56 = v52 >> 62;
        if (v52 >> 62)
        {
          v57 = sub_267EF9A68();
        }

        else
        {
          v57 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v213 = v55;
        v58 = __OFADD__(v57, v55);
        v59 = v57 + v55;
        if (v58)
        {
          goto LABEL_221;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v56)
          {
            goto LABEL_60;
          }

LABEL_59:
          sub_267EF9A68();
          goto LABEL_60;
        }

        if (v56)
        {
          goto LABEL_59;
        }

        v60 = v52 & 0xFFFFFFFFFFFFFF8;
        if (v59 <= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v208 = v52;
          goto LABEL_61;
        }

LABEL_60:
        v208 = sub_267EF9BB8();
        v60 = v208 & 0xFFFFFFFFFFFFFF8;
LABEL_61:
        v48 &= v48 - 1;
        v61 = *(v60 + 16);
        v62 = (*(v60 + 24) >> 1) - v61;
        v63 = v60 + 8 * v61;
        v204 = v60;
        if (v54 >> 62)
        {
          v65 = sub_267EF9A68();
          if (!v65)
          {
            goto LABEL_75;
          }

          v66 = v65;
          v67 = sub_267EF9A68();
          if (v62 < v67)
          {
            goto LABEL_232;
          }

          v194 = v67;
          if (v66 < 1)
          {
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
LABEL_238:
            __break(1u);
            goto LABEL_239;
          }

          sub_267CF6EF8();
          for (i = 0; i != v66; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
            v69 = sub_267C73FD8(v212, i, v54);
            v71 = *v70;
            v69(v212, 0);
            *(v63 + 32 + 8 * i) = v71;
          }

          v45 = v187;
          v44 = v191;
          v52 = v208;
          v64 = v194;
LABEL_71:
          v72 = v213;

          v49 = v201;
          if (v64 < v72)
          {
            goto LABEL_222;
          }

          if (v64 > 0)
          {
            v73 = *(v204 + 16);
            v58 = __OFADD__(v73, v64);
            v74 = v73 + v64;
            if (v58)
            {
              goto LABEL_229;
            }

            *(v204 + 16) = v74;
          }
        }

        else
        {
          v64 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v64)
          {
            if (v62 < v64)
            {
              goto LABEL_231;
            }

            sub_267CF6EB4();
            swift_arrayInitWithCopy();
            v52 = v208;
            goto LABEL_71;
          }

LABEL_75:

          v52 = v208;
          v49 = v201;
          if (v213 > 0)
          {
            goto LABEL_222;
          }
        }

        goto LABEL_43;
      }
    }

    sub_267BD057C(v52);
    v75 = sub_267CF5A70(v184);
    v76 = v75;
    v77 = v180;
    v78 = v75 + 8;
    v79 = 1 << *(v75 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v81 = v80 & v75[8];
    v82 = (v79 + 63) >> 6;

    v84 = 0;
    v85 = MEMORY[0x277D84F90];
    v192 = v82;
    v195 = v78;
    v181 = v83;
    while (1)
    {
      if (!v81)
      {
        do
        {
          v86 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
            goto LABEL_214;
          }

          if (v86 >= v82)
          {

            sub_267BD057C(v85);
            return;
          }

          v81 = v78[v86];
          ++v84;
        }

        while (!v81);
        v84 = v86;
      }

      v87 = *(v76[7] + ((v84 << 9) | (8 * __clz(__rbit64(v81)))));
      v88 = v87 >> 62;
      v213 = v87;
      if (v87 >> 62)
      {
        v89 = sub_267EF9A68();
      }

      else
      {
        v89 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v90 = v85 >> 62;
      if (v85 >> 62)
      {
        v91 = sub_267EF9A68();
      }

      else
      {
        v91 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v209 = v89;
      v58 = __OFADD__(v91, v89);
      v92 = v91 + v89;
      if (v58)
      {
        goto LABEL_223;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v90)
      {
        goto LABEL_98;
      }

      v93 = v85 & 0xFFFFFFFFFFFFFF8;
      if (v92 > *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_99;
      }

      v205 = v85;
LABEL_100:
      v81 &= v81 - 1;
      v94 = *(v93 + 16);
      v95 = (*(v93 + 24) >> 1) - v94;
      v96 = v93 + 8 * v94;
      v198 = v93;
      if (v88)
      {
        v98 = sub_267EF9A68();
        if (!v98)
        {
          goto LABEL_114;
        }

        v99 = v98;
        v100 = sub_267EF9A68();
        if (v95 < v100)
        {
          goto LABEL_235;
        }

        v185 = v100;
        v188 = v81;
        v202 = v77;
        if (v99 < 1)
        {
          goto LABEL_236;
        }

        sub_267CF6EF8();
        v101 = 0;
        v102 = v213;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
          v103 = sub_267C73FD8(v212, v101, v102);
          v105 = *v104;
          v103(v212, 0);
          *(v96 + 32 + 8 * v101++) = v105;
        }

        while (v99 != v101);
        v77 = v202;
        v85 = v205;
        v76 = v181;
        v97 = v185;
        v82 = v192;
        v78 = v195;
        v81 = v188;
LABEL_110:

        if (v97 < v209)
        {
          goto LABEL_224;
        }

        if (v97 > 0)
        {
          v106 = *(v198 + 16);
          v58 = __OFADD__(v106, v97);
          v107 = v106 + v97;
          if (v58)
          {
            goto LABEL_230;
          }

          *(v198 + 16) = v107;
        }
      }

      else
      {
        v97 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v97)
        {
          if (v95 < v97)
          {
            goto LABEL_234;
          }

          sub_267CF6EB4();
          swift_arrayInitWithCopy();
          v82 = v192;
          v78 = v195;
          v85 = v205;
          goto LABEL_110;
        }

LABEL_114:

        v85 = v205;
        v82 = v192;
        v78 = v195;
        if (v209 > 0)
        {
          goto LABEL_224;
        }
      }
    }

    if (v90)
    {
LABEL_98:
      sub_267EF9A68();
    }

LABEL_99:
    v205 = sub_267EF9BB8();
    v93 = v205 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_100;
  }

  v19 = [v7 referencedMessage];
  if (!v19)
  {
    return;
  }

  v20 = v19;
  v21 = [v19 identifier];
  v22 = sub_267EF9028();

  v23 = sub_267BC2EE0(v22);

  if (!v23)
  {

    return;
  }

  v177 = v20;
  v212[0] = v18;
  v24 = sub_267BAF0DC(v23);
  v25 = 0;
  v26 = v23 & 0xC000000000000001;
  while (v24 != v25)
  {
    if (v26)
    {
      v27 = MEMORY[0x26D609870](v25, v23);
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_216;
      }

      v27 = *(v23 + 8 * v25 + 32);
    }

    v28 = v27;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_215;
    }

    if (sub_267D606A0())
    {
      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    else
    {
    }

    ++v25;
  }

  v108 = v18;
  v109 = 0;
  v110 = v212[0];
  v212[0] = v108;
  while (v24 != v109)
  {
    if (v26)
    {
      v111 = MEMORY[0x26D609870](v109, v23);
    }

    else
    {
      if (v109 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_219;
      }

      v111 = *(v23 + 8 * v109 + 32);
    }

    v112 = v111;
    if (__OFADD__(v109, 1))
    {
      goto LABEL_218;
    }

    if (sub_267D606A0())
    {
    }

    else
    {
      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    ++v109;
  }

  v178 = v212[0];
  v113 = sub_267CF5A70(v110);
  v114 = v113;
  v115 = v113 + 8;
  v116 = 1 << *(v113 + 32);
  v117 = -1;
  if (v116 < 64)
  {
    v117 = ~(-1 << v116);
  }

  v118 = v117 & v113[8];
  v119 = (v116 + 63) >> 6;

  v121 = 0;
  v122 = MEMORY[0x277D84F90];
  v196 = v119;
  v182 = v115;
  v186 = v120;
  while (2)
  {
    while (2)
    {
      if (v118)
      {
        goto LABEL_138;
      }

      do
      {
        v123 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_217;
        }

        if (v123 >= v119)
        {

          sub_267BD057C(v122);
          v145 = sub_267CF5A70(v178);
          v146 = v145;
          v147 = v145 + 8;
          v148 = 1 << *(v145 + 32);
          v149 = -1;
          if (v148 < 64)
          {
            v149 = ~(-1 << v148);
          }

          v150 = v149 & v145[8];
          v151 = (v148 + 63) >> 6;

          v153 = 0;
          v207 = MEMORY[0x277D84F90];
          v154 = &off_279C2E000;
          v190 = v151;
          v193 = v147;
          v179 = v152;
          while (1)
          {
            if (!v150)
            {
              while (1)
              {
                v155 = v153 + 1;
                if (__OFADD__(v153, 1))
                {
                  break;
                }

                if (v155 >= v151)
                {

                  sub_267BD057C(v207);
                  v176 = [v177 v154[424]];
                  sub_267EF9028();

                  sub_267CF5F28();

                  return;
                }

                v150 = v147[v155];
                ++v153;
                if (v150)
                {
                  v153 = v155;
                  goto LABEL_177;
                }
              }

LABEL_220:
              __break(1u);
LABEL_221:
              __break(1u);
LABEL_222:
              __break(1u);
LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
LABEL_225:
              __break(1u);
LABEL_226:
              __break(1u);
LABEL_227:
              __break(1u);
LABEL_228:
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
              goto LABEL_233;
            }

LABEL_177:
            v156 = *(v146[7] + ((v153 << 9) | (8 * __clz(__rbit64(v150)))));
            v157 = v156 >> 62;
            v211 = v156;
            if (v156 >> 62)
            {
              v158 = sub_267EF9A68();
            }

            else
            {
              v158 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v159 = v207 >> 62;
            if (v207 >> 62)
            {
              v160 = sub_267EF9A68();
            }

            else
            {
              v160 = *((v207 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v200 = v158;
            v58 = __OFADD__(v160, v158);
            v161 = v160 + v158;
            if (v58)
            {
              goto LABEL_227;
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v159)
            {
              goto LABEL_187;
            }

            v162 = v207 & 0xFFFFFFFFFFFFFF8;
            if (v161 > *((v207 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_188;
            }

LABEL_189:
            v150 &= v150 - 1;
            v163 = *(v162 + 16);
            v164 = (*(v162 + 24) >> 1) - v163;
            v165 = v162 + 8 * v163;
            v197 = v162;
            if (v157)
            {
              v167 = sub_267EF9A68();
              if (!v167)
              {
                goto LABEL_203;
              }

              v168 = v167;
              v169 = sub_267EF9A68();
              if (v164 < v169)
              {
                goto LABEL_243;
              }

              v183 = v169;
              if (v168 < 1)
              {
                goto LABEL_244;
              }

              sub_267CF6EF8();
              for (j = 0; j != v168; ++j)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
                v171 = sub_267C73FD8(v212, j, v211);
                v173 = *v172;
                v171(v212, 0);
                *(v165 + 32 + 8 * j) = v173;
              }

              v154 = &off_279C2E000;
              v146 = v179;
              v166 = v183;
LABEL_199:

              v151 = v190;
              v147 = v193;
              if (v166 < v200)
              {
                goto LABEL_228;
              }

              if (v166 > 0)
              {
                v174 = *(v197 + 16);
                v58 = __OFADD__(v174, v166);
                v175 = v174 + v166;
                if (v58)
                {
                  goto LABEL_238;
                }

                *(v197 + 16) = v175;
              }
            }

            else
            {
              v166 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v166)
              {
                if (v164 < v166)
                {
                  goto LABEL_242;
                }

                sub_267CF6EB4();
                swift_arrayInitWithCopy();
                goto LABEL_199;
              }

LABEL_203:

              v151 = v190;
              v147 = v193;
              if (v200 > 0)
              {
                goto LABEL_228;
              }
            }
          }

          if (v159)
          {
LABEL_187:
            sub_267EF9A68();
          }

LABEL_188:
          v207 = sub_267EF9BB8();
          v162 = v207 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_189;
        }

        v118 = v115[v123];
        ++v121;
      }

      while (!v118);
      v121 = v123;
LABEL_138:
      v124 = *(v114[7] + ((v121 << 9) | (8 * __clz(__rbit64(v118)))));
      v125 = v124 >> 62;
      if (v124 >> 62)
      {
        v126 = sub_267EF9A68();
      }

      else
      {
        v126 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v127 = v122 >> 62;
      if (v122 >> 62)
      {
        v128 = sub_267EF9A68();
      }

      else
      {
        v128 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v206 = v126;
      v58 = __OFADD__(v128, v126);
      v129 = v128 + v126;
      if (v58)
      {
        goto LABEL_225;
      }

      v210 = v124;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v127)
        {
          goto LABEL_150;
        }

LABEL_149:
        sub_267EF9A68();
        goto LABEL_150;
      }

      if (v127)
      {
        goto LABEL_149;
      }

      v130 = v122 & 0xFFFFFFFFFFFFFF8;
      if (v129 <= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v203 = v122;
        goto LABEL_151;
      }

LABEL_150:
      v203 = sub_267EF9BB8();
      v130 = v203 & 0xFFFFFFFFFFFFFF8;
LABEL_151:
      v118 &= v118 - 1;
      v131 = *(v130 + 16);
      v132 = (*(v130 + 24) >> 1) - v131;
      v133 = v130 + 8 * v131;
      v199 = v130;
      if (!v125)
      {
        v134 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v134)
        {
          if (v132 >= v134)
          {
            sub_267CF6EB4();
            swift_arrayInitWithCopy();
            v122 = v203;
            v135 = v206;
            goto LABEL_161;
          }

LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
          goto LABEL_241;
        }

LABEL_165:

        v122 = v203;
        v119 = v196;
        if (v206 > 0)
        {
          goto LABEL_226;
        }

        continue;
      }

      break;
    }

    v136 = sub_267EF9A68();
    if (!v136)
    {
      goto LABEL_165;
    }

    v137 = v136;
    v138 = sub_267EF9A68();
    if (v132 < v138)
    {
      goto LABEL_240;
    }

    v189 = v138;
    if (v137 >= 1)
    {
      sub_267CF6EF8();
      for (k = 0; k != v137; ++k)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
        v140 = sub_267C73FD8(v212, k, v210);
        v142 = *v141;
        v140(v212, 0);
        *(v133 + 32 + 8 * k) = v142;
      }

      v115 = v182;
      v114 = v186;
      v122 = v203;
      v135 = v206;
      v134 = v189;
LABEL_161:

      v119 = v196;
      if (v134 < v135)
      {
        goto LABEL_226;
      }

      if (v134 > 0)
      {
        v143 = *(v199 + 16);
        v58 = __OFADD__(v143, v134);
        v144 = v143 + v134;
        if (v58)
        {
          goto LABEL_237;
        }

        *(v199 + 16) = v144;
      }

      continue;
    }

    break;
  }

LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
}

uint64_t sub_267BE8214()
{
  v1 = [v0 groupName];
  if (v1)
  {
    v2 = v1;
    if (!sub_267EB8F8C())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v12 = sub_267EF8A08();
      __swift_project_value_buffer(v12, qword_280240FB0);
      v13 = sub_267EF89F8();
      v14 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v14))
      {
        v15 = OUTLINED_FUNCTION_32();
        *v15 = 0;
        _os_log_impl(&dword_267B93000, v13, v14, "Is group message (group name)", v15, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      return 1;
    }
  }

  v3 = sub_267BE3F34(v0);
  if (v3)
  {
    v4 = v3;
    sub_267BE3F94(v3);
    v6 = sub_267BAF0DC(v5);

    if (v6)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v7 = sub_267EF8A08();
      __swift_project_value_buffer(v7, qword_280240FB0);

      v8 = sub_267EF89F8();
      v9 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        v11 = sub_267BAF0DC(v4);

        *(v10 + 4) = v11;

        _os_log_impl(&dword_267B93000, v8, v9, "Is group message (recipient count: %ld", v10, 0xCu);
        OUTLINED_FUNCTION_32_0();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      return 1;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v16 = sub_267EF8A08();
  __swift_project_value_buffer(v16, qword_280240FB0);
  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_32();
    *v19 = 0;
    _os_log_impl(&dword_267B93000, v17, v18, "Not a group message", v19, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  return 0;
}

uint64_t sub_267BE84B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267EF8F28();
  *a1 = result;
  return result;
}

uint64_t sub_267BE84FC(uint64_t a1)
{
  sub_267EF7C18();
  v1 = sub_267EF9218();

  return v1 & 1;
}

uint64_t sub_267BE855C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_177_0()
{
  sub_267B9A5E8((v0 + 496), v0 + 456);

  return sub_267B9B050(v0 + 456, v0 + 536);
}

uint64_t *OUTLINED_FUNCTION_177_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a24 = a1;

  return __swift_allocate_boxed_opaque_existential_0(&a20);
}

uint64_t OUTLINED_FUNCTION_142_1()
{

  return sub_267EF8F08();
}

void sub_267BE881C(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    OUTLINED_FUNCTION_116_7();
    v4 = (v2 + 32);
    do
    {
      v11 = *v4++;
      v10 = v11;
      if (v11)
      {
        v2 = sub_267BBD380(v10);
      }

      else
      {
        v2 = 0;
      }

      OUTLINED_FUNCTION_158_2();
      if (v13)
      {
        sub_267BE8B74((v12 > 1), v3, 1);
      }

      OUTLINED_FUNCTION_156_0();
    }

    while (!v14);
  }

  if (a2)
  {
    sub_267BAF0DC(a2);
    OUTLINED_FUNCTION_126_6();
    while (1)
    {
      if (v8 == v2)
      {
        v17 = sub_267BAF0DC(v9);
        if (v17)
        {
          OUTLINED_FUNCTION_115_5(v17);
          if (v8 < 0)
          {
            goto LABEL_38;
          }

          v18 = v9;
          do
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x26D609870](0, v9);
            }

            else
            {
              v19 = *(v9 + 32);
            }

            v20 = v19;
            sub_267BBD380(v19);

            OUTLINED_FUNCTION_152_2();
            if (v13)
            {
              sub_267BE8B74((v21 > 1), v4, 1);
              v18 = v9;
            }

            OUTLINED_FUNCTION_120_6();
          }

          while (!v14);
        }

        else
        {

          v18 = MEMORY[0x277D84F90];
        }

        sub_267BE8BC8(v18);
        return;
      }

      if (v4)
      {
        v15 = MEMORY[0x26D609870](v2, a2);
      }

      else
      {
        if (v2 >= *(v5 + 16))
        {
          goto LABEL_37;
        }

        v15 = *(a2 + 8 * v2 + 32);
      }

      v16 = v15;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if ([v15 (v6 + 3192)])
      {
      }

      else
      {
        sub_267EF9BD8();
        OUTLINED_FUNCTION_154_1();
        sub_267EF9C08();
        OUTLINED_FUNCTION_154_1();
        sub_267EF9C18();
        sub_267EF9BE8();
      }

      ++v2;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }
}

void *sub_267BE8A44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A60, &qword_267EFEED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_267BE8B74(void *a1, int64_t a2, char a3)
{
  result = sub_267BE8A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_160()
{
  *(v0 + 168) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 144));
}

void sub_267BE8BC8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_23(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_267BDAEA8(v4, 1, sub_267C70644);
  OUTLINED_FUNCTION_96_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_15_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
  OUTLINED_FUNCTION_105_3(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_94_2();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_267BE8C80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229FC0, &qword_267EFFDD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BE8CF0()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267BE8D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_53();
  a18 = v20;
  v23 = *(v20 + 440);
  *(v20 + 336) = v23;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v51 = *(v20 + 368);
    OUTLINED_FUNCTION_79_5(v51, v26, v27, *(v20 + 376));
    sub_267B9FED8(v51, &qword_28022ABC0, &unk_267F030D0);
LABEL_10:
    v54 = *(v20 + 440);
    v55 = v54;
    v56 = sub_267EF89F8();
    v57 = sub_267EF95E8();

    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v20 + 440);
    if (v58)
    {
      v60 = OUTLINED_FUNCTION_48();
      v61 = OUTLINED_FUNCTION_52();
      a9 = v61;
      *v60 = 136315138;
      *(v20 + 344) = v59;
      v62 = v59;
      v63 = sub_267EF9098();
      v65 = sub_267BA33E8(v63, v64, &a9);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_267B93000, v56, v57, "Gatekeeper# new message search failed: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_18_2();
    }

    else
    {
    }

    v66 = *(v20 + 360);
    if (*(v66 + 120))
    {
      v67 = 0;
      v68 = 2;
    }

    else
    {
      v69 = type metadata accessor for SendMessageState();
      OUTLINED_FUNCTION_89_1(v69);
      sub_267BC963C(2);
      OUTLINED_FUNCTION_53_17();
      v66 = *(v20 + 360);
      v68 = 1;
    }

    v70 = *(v20 + 416);
    *(v20 + 128) = v67;
    *(v20 + 176) = v68;
    OUTLINED_FUNCTION_66_3(v66 + 56, v20 + 288);
    sub_267BE9CA0(v20 + 128, v66 + 56);
    swift_endAccess();
    OUTLINED_FUNCTION_101_8();

    goto LABEL_17;
  }

  v29 = *(v20 + 392);
  v28 = *(v20 + 400);
  v30 = *(v20 + 376);
  v31 = *(v20 + 384);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
  v35 = OUTLINED_FUNCTION_100_0();
  v36(v35);
  (*(v31 + 16))(v29, v28, v30);
  if ((*(v31 + 88))(v29, v30) != *MEMORY[0x277D5BE70])
  {
    v52 = *(*(v20 + 384) + 8);
    (v52)(*(v20 + 400), *(v20 + 376));
    v53 = OUTLINED_FUNCTION_108();
    v52(v53);
    goto LABEL_10;
  }

  v37 = *(v20 + 392);
  (*(*(v20 + 384) + 96))(v37, *(v20 + 376));
  v38 = *v37;
  v39 = sub_267EF2A68();
  v40 = [v39 code];

  if (v40 != *MEMORY[0x277D48478])
  {
    (*(*(v20 + 384) + 8))(*(v20 + 400), *(v20 + 376));

    goto LABEL_10;
  }

  v41 = sub_267EF89F8();
  v42 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v42))
  {
    v43 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v43);
    OUTLINED_FUNCTION_29_19(&dword_267B93000, v44, v25, "Gatekeeper# App is disabled for Siri. TCC is required");
    OUTLINED_FUNCTION_29_1();
  }

  v45 = *(v20 + 440);
  v46 = *(v20 + 416);
  v47 = *(v20 + 360);

  *(v20 + 184) = v46;
  *(v20 + 232) = 4;
  OUTLINED_FUNCTION_66_3(v47 + 56, v20 + 312);
  v48 = v46;
  sub_267BE9CA0(v20 + 184, v47 + 56);
  swift_endAccess();
  sub_267EF3FB8();

  v49 = OUTLINED_FUNCTION_44_0();
  v50(v49);
LABEL_17:

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12);
}

uint64_t sub_267BE916C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_4_3();

    return v10();
  }
}

uint64_t sub_267BE9290()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

void sub_267BE93C8(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4)
{
  v7 = sub_267EF43D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229FC0, &qword_267EFFDD8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v31 - v12);
  sub_267BE8C80(a1, &v31 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_267BE9CD8(&unk_28022AE10, MEMORY[0x277D5BE90], MEMORY[0x277D5BE98]);
    v14 = swift_allocError();
    (*(v8 + 16))(v15, v10, v7);
    a2(v14, 1);

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v16 = *v13;
    v17 = [a4 typeName];
    v18 = sub_267EF9028();
    v20 = v19;

    v21 = sub_267C86350(v16, v18, v20);

    if (v21 && (objc_opt_self(), (v22 = swift_dynamicCastObjCClass()) != 0))
    {
      v23 = v22;
      v21 = v21;
      a2(v23, 0);
    }

    else
    {
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v24 = sub_267EF8A08();
      __swift_project_value_buffer(v24, qword_280240FB0);
      v25 = sub_267EF89F8();
      v26 = sub_267EF95E8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_267B93000, v25, v26, "No valid intent response found", v27, 2u);
        MEMORY[0x26D60A7B0](v27, -1, -1);
      }

      sub_267EF3E98();
      swift_allocObject();
      v28 = sub_267EF3E88();
      sub_267BE9CD8(&qword_280229FC8, MEMORY[0x277D5BCB8], MEMORY[0x277D5BCC0]);
      v29 = swift_allocError();
      *v30 = v28;
      a2(v29, 1);
    }
  }
}

uint64_t sub_267BE97B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_1_69();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267BE986C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_76_4(a1, a2, a3);
  OUTLINED_FUNCTION_18(v4);
  v5 = OUTLINED_FUNCTION_18_11();

  return a4(v5);
}

uint64_t sub_267BE98D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 432) = v4;
  *(v2 + 440) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267BE99DC(id a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    if (sub_267EF9E78())
    {
      sub_267C095E0(a1);
    }

    else
    {
      swift_allocError();
      *v6 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3C0, &qword_267F00A88);
    return sub_267EF93B8();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3C0, &qword_267F00A88);
    return sub_267EF93C8();
  }
}

uint64_t sub_267BE9AD8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267BE9BBC(void *a1)
{
  v2 = [a1 typeName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267BE9C54(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_267BE9CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267BE9D20(uint64_t a1)
{
  result = sub_267EF7C18();
  if (!v2)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_267BE9D64(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267BE9D90()
{
  OUTLINED_FUNCTION_56();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 248) = v1;
  *v1 = v2;
  v1[1] = sub_267BCED24;

  return sub_267BE9E58();
}

uint64_t sub_267BE9E58()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  *(v1 + 456) = v3;
  *(v1 + 224) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v5);
  *(v1 + 248) = OUTLINED_FUNCTION_2();
  v6 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 256) = OUTLINED_FUNCTION_2();
  v7 = sub_267EF48A8();
  *(v1 + 264) = v7;
  OUTLINED_FUNCTION_30_0(v7);
  *(v1 + 272) = v8;
  *(v1 + 280) = OUTLINED_FUNCTION_2();
  v9 = sub_267EF8228();
  *(v1 + 288) = v9;
  OUTLINED_FUNCTION_30_0(v9);
  *(v1 + 296) = v10;
  *(v1 + 304) = OUTLINED_FUNCTION_2();
  v11 = sub_267EF79B8();
  *(v1 + 312) = v11;
  OUTLINED_FUNCTION_30_0(v11);
  *(v1 + 320) = v12;
  *(v1 + 328) = OUTLINED_FUNCTION_50();
  *(v1 + 336) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267BE9FF4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 240);
  v35 = *(v2 + 104);
  v35(v1, *MEMORY[0x277D5D458], v3);
  v5 = v4[5];
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v5);
  OUTLINED_FUNCTION_14_4();
  v7(v5, v6);
  v8 = sub_267BEA714(v1, (v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v9 = *(v2 + 8);
  v9(v1, v3);
  *(v0 + 208) = v8;
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v10 = *(v0 + 304);
  v11 = *(v0 + 288);

  v35(v10, *MEMORY[0x277D5D4B8], v11);
  v12 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
  v13 = OUTLINED_FUNCTION_25_0();
  v14(v13, v12);
  v15 = sub_267BEA714(v10, (v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v9(v10, v11);
  *(v0 + 216) = v15;
  sub_267EF8348();
  v16 = *(v0 + 240);
  v17 = *(v0 + 456);

  __swift_project_boxed_opaque_existential_0((v16 + 392), *(v16 + 416));
  v18 = *(v0 + 336);
  if (v17)
  {
    if (v17 == 1)
    {
      v20 = *(v0 + 232);
      v19 = *(v0 + 240);
      v21 = swift_task_alloc();
      *(v0 + 392) = v21;
      v21[2] = v20;
      v21[3] = v19;
      v21[4] = v18;
      v22 = swift_task_alloc();
      *(v0 + 400) = v22;
      *v22 = v0;
      v22[1] = sub_267E1BFF4;
      OUTLINED_FUNCTION_15();

      return sub_267EC0238();
    }

    else
    {
      v31 = *(v0 + 328);
      v32 = swift_task_alloc();
      *(v0 + 368) = v32;
      *(v32 + 16) = v18;
      *(v32 + 24) = v31;
      v33 = swift_task_alloc();
      *(v0 + 376) = v33;
      *v33 = v0;
      v33[1] = sub_267BC7CF8;
      OUTLINED_FUNCTION_15();

      return sub_267BEA460();
    }
  }

  else
  {
    v25 = *(v0 + 328);
    v27 = *(v0 + 232);
    v26 = *(v0 + 240);
    v28 = swift_task_alloc();
    *(v0 + 344) = v28;
    v28[2] = v27;
    v28[3] = v26;
    v28[4] = v18;
    v28[5] = v25;
    v29 = swift_task_alloc();
    *(v0 + 352) = v29;
    *v29 = v0;
    v29[1] = sub_267E1BBA4;
    OUTLINED_FUNCTION_15();

    return sub_267EBFBEC();
  }
}

uint64_t sub_267BEA460()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_22_38(v1, v2);
  v4 = type metadata accessor for GatekeeperSendCallParameters(v3);
  OUTLINED_FUNCTION_79_3(v4);
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267BEA4E0()
{
  OUTLINED_FUNCTION_62();
  v1 = OUTLINED_FUNCTION_25_44();
  OUTLINED_FUNCTION_0_78(v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_60(v2);

  return v4(v3);
}

uint64_t sub_267BEA59C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_60_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_71_5(v3);

  return sub_267BEAB3C(v5, v6, v1);
}

uint64_t OUTLINED_FUNCTION_102_0()
{
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return sub_267EF9B68();
}

void OUTLINED_FUNCTION_102_5(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_102_6(uint64_t result)
{
  v1[8] = result;
  v1[4] = v2;
  v1[5] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_102_8(uint64_t a1)
{

  return sub_267EF4468();
}

__n128 *OUTLINED_FUNCTION_102_9(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_102_10()
{
  v4 = *(v2 + 16);
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  return v4;
}

id sub_267BEA714(uint64_t a1, void *a2)
{
  v3 = sub_267EF8428();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  sub_267BA9F38(0, &unk_28022BC90, 0x277D5C220);
  (*(v5 + 104))(v9, *MEMORY[0x277D5D6F8], v3);
  v10 = sub_267EF8418();
  v12 = v11;
  v13 = OUTLINED_FUNCTION_108();
  v14(v13);
  v15 = sub_267BEA93C(v10, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA78, &unk_267F08660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  v17 = MEMORY[0x277D837D0];
  sub_267EF9AE8();
  v18 = sub_267EF8218();
  *(inited + 96) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = sub_267EF8F28();
  sub_267BEA9B0(v20, v15);
  v21 = objc_opt_self();
  OUTLINED_FUNCTION_131(a2);
  v22 = sub_267EF3C68();
  v23 = [v21 runSiriKitExecutorCommandWithContext:v22 payload:v15];

  return v23;
}

id sub_267BEA93C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_267EF8FF8();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

void sub_267BEA9B0(uint64_t a1, void *a2)
{
  v3 = sub_267EF8EE8();

  [a2 setUserData_];
}

uint64_t sub_267BEAA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[3];
  v14 = v12[4];
  v15 = v12[2];
  v16 = *(type metadata accessor for GatekeeperSendCallParameters(0) + 20);
  OUTLINED_FUNCTION_74();
  sub_267B9FED8(v17, v18, v19);
  v20 = sub_267EF79B8();
  OUTLINED_FUNCTION_5_0();
  v22 = *(v21 + 16);
  v22(v15 + v16, v13, v20);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v20);
  OUTLINED_FUNCTION_74();
  sub_267B9FED8(v26, v27, v28);
  v22(v15, v14, v20);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v20);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_267BEAB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_267BEAA30, 0, 0);
}

uint64_t sub_267BEAB60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BEAC5C()
{
  *(v0 + 72) = sub_267BEAD24(type metadata accessor for GatekeeperSendCallParameters);
  v1 = OUTLINED_FUNCTION_28_0();
  *(v0 + 80) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_55_2(v1);
  v2 = OUTLINED_FUNCTION_28_2(19);

  return v3(v2);
}

uint64_t sub_267BEAD24(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_267F00200;
  OUTLINED_FUNCTION_12_1();
  *(v19 + 32) = 0xD000000000000012;
  *(v19 + 40) = v20;
  sub_267C2FB6C(v1, v17, &unk_28022AE30, &qword_267EFC0B0);
  v21 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v17);
  if (v22)
  {
    sub_267B9F98C(v17, &unk_28022AE30, &qword_267EFC0B0);
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0u;
  }

  else
  {
    *(v18 + 72) = v21;
    __swift_allocate_boxed_opaque_existential_0((v18 + 48));
    OUTLINED_FUNCTION_8_9();
    (*(v23 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v18 + 80) = 0xD000000000000017;
  *(v18 + 88) = v24;
  v25 = MEMORY[0x277D839B0];
  *(v18 + 96) = 0;
  *(v18 + 120) = v25;
  *(v18 + 128) = 0xD000000000000018;
  *(v18 + 136) = 0x8000000267F1D420;
  v26 = a1(0);
  sub_267C2FB6C(v1 + v26[5], v15, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v15);
  if (v22)
  {
    sub_267B9F98C(v15, &unk_28022AE30, &qword_267EFC0B0);
    *(v18 + 144) = 0u;
    *(v18 + 160) = 0u;
  }

  else
  {
    *(v18 + 168) = v21;
    __swift_allocate_boxed_opaque_existential_0((v18 + 144));
    OUTLINED_FUNCTION_8_9();
    (*(v27 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v18 + 176) = 0xD00000000000001FLL;
  *(v18 + 184) = v28;
  sub_267C2FB6C(v1 + v26[6], v12, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v12);
  if (v22)
  {
    sub_267B9F98C(v12, &unk_28022AE30, &qword_267EFC0B0);
    *(v18 + 192) = 0u;
    *(v18 + 208) = 0u;
  }

  else
  {
    *(v18 + 216) = v21;
    __swift_allocate_boxed_opaque_existential_0((v18 + 192));
    OUTLINED_FUNCTION_8_9();
    (*(v29 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v18 + 224) = 0xD000000000000026;
  *(v18 + 232) = v30;
  sub_267C2FB6C(v1 + v26[7], v9, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v9);
  if (v22)
  {
    sub_267B9F98C(v9, &unk_28022AE30, &qword_267EFC0B0);
    *(v18 + 240) = 0u;
    *(v18 + 256) = 0u;
  }

  else
  {
    *(v18 + 264) = v21;
    __swift_allocate_boxed_opaque_existential_0((v18 + 240));
    OUTLINED_FUNCTION_8_9();
    (*(v31 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v18 + 272) = 0xD00000000000001CLL;
  *(v18 + 280) = v32;
  sub_267C2FB6C(v1 + v26[8], v6, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v6);
  if (v22)
  {
    sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);
    *(v18 + 288) = 0u;
    *(v18 + 304) = 0u;
  }

  else
  {
    *(v18 + 312) = v21;
    __swift_allocate_boxed_opaque_existential_0((v18 + 288));
    OUTLINED_FUNCTION_8_9();
    (*(v33 + 32))();
  }

  return v18;
}

void OUTLINED_FUNCTION_118_2()
{
}

uint64_t OUTLINED_FUNCTION_118_4()
{

  return sub_267EF79B8();
}

uint64_t OUTLINED_FUNCTION_118_6(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_118_7()
{
  v2 = *(v0 - 144);

  return __swift_project_boxed_opaque_existential_0((v0 - 168), v2);
}

uint64_t ConversationEventStore.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_267BEB478(0xD00000000000001BLL, 0x8000000267F132A0);
  if (v3)
  {
    v4 = v3;
    result = sub_267BEB4DC();
    *(a1 + 24) = result;
    *(a1 + 32) = &off_2878D36E8;
    *a1 = v4;
    *(a1 + 80) = 0xD00000000000001BLL;
    *(a1 + 88) = 0x8000000267F132A0;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD00000000000004DLL, 0x8000000267F132C0);
    MEMORY[0x26D608E60](0xD00000000000001BLL, 0x8000000267F132A0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    OUTLINED_FUNCTION_43();

    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_48();
      v10 = OUTLINED_FUNCTION_52();
      v11[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_267BA33E8(0, 0xE000000000000000, v11);
      _os_log_impl(&dword_267B93000, v7, v8, "Fatal error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    result = sub_267EF9C98();
    __break(1u);
  }

  return result;
}

id sub_267BEB478(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_267EF8FF8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_267BEB4DC()
{
  result = qword_280229280;
  if (!qword_280229280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229280);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_267BEB588()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v87 = v9;
  v82 = type metadata accessor for SendMessageFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v83 = v12 - v11;
  OUTLINED_FUNCTION_26_2();
  v13 = sub_267EF4C08();
  v14 = OUTLINED_FUNCTION_18(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v79 = v16 - v15;
  OUTLINED_FUNCTION_26_2();
  sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v80 = v18;
  v81 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6();
  v77 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  v78 = &v77 - v21;
  OUTLINED_FUNCTION_26_2();
  v22 = sub_267EF68A8();
  OUTLINED_FUNCTION_23();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_62();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v27 = OUTLINED_FUNCTION_18(v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v77 - v28;
  v88 = v8;
  v30 = sub_267BEC254();
  *(v30 + 104) = v6;

  *(v30 + 144) = v4;
  sub_267BEBE48();
  v85 = v2;
  sub_267B9AFEC(v2 + 16, &v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v86 = v29;
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = qword_2802286F0;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  sub_267B9AFEC(qword_2802405A0, v103);
  sub_267EF8668();
  sub_267EF3838();
  sub_267EF6898();
  v36 = type metadata accessor for StewieStateMonitor();
  inited = swift_initStaticObject();
  __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
  v99 = &type metadata for CATProvider;
  v100 = &off_2878CE7A0;
  v96 = &type metadata for MessagesFeatureFlagsImpl;
  v97 = off_2878D1228;
  v93 = v22;
  v94 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v92);
  (*(v24 + 16))(boxed_opaque_existential_0, v1, v22);
  v91[3] = v36;
  v91[4] = &off_2878CE700;
  v91[0] = inited;
  type metadata accessor for SendMessageRCHFlowStrategy(0);
  OUTLINED_FUNCTION_27_4();
  v39 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
  __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
  v40 = v93;
  __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
  OUTLINED_FUNCTION_28_7();
  v84 = v41;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_0_0();
  v45 = (v44 - v43);
  (*(v46 + 16))(v44 - v43);
  __swift_mutable_project_boxed_opaque_existential_1(v91, v36);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_0_0();
  v49 = OUTLINED_FUNCTION_28_29(v48);
  v50(v49);
  v51 = sub_267BEC408(v30, &v89, v86, v102, v101, v45, *v40, v39);
  (*(v24 + 8))(v1, v22);
  __swift_destroy_boxed_opaque_existential_0(v91);
  __swift_destroy_boxed_opaque_existential_0(v92);
  __swift_destroy_boxed_opaque_existential_0(v95);
  __swift_destroy_boxed_opaque_existential_0(v98);
  __swift_destroy_boxed_opaque_existential_0(v103);
  v52 = v85;
  sub_267BED974();
  v54 = v53;
  v55 = v88;
  sub_267BCCFA4(v88, &v89);
  v86 = v51;
  if (BYTE8(v90[1]))
  {
    v56 = *(&v89 + 1);

    __swift_project_boxed_opaque_existential_0((v52 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory), *(v52 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory + 24));
    sub_267BF04E0();

LABEL_7:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v65 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v65, qword_280240FB0);
    v66 = sub_267EF89F8();
    v67 = sub_267EF95C8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_32();
      *v68 = 0;
      _os_log_impl(&dword_267B93000, v66, v67, "#SendMessageFlow pushing RCHFlow", v68, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v69 = v83;
    swift_storeEnumTagMultiPayload();
    v70 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
    OUTLINED_FUNCTION_66_3(v52 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state, &v89);
    sub_267B9DC10(v69, v52 + v70);
    swift_endAccess();
    sub_267BCCFA4(v55, &v89);
    v71 = swift_allocObject();
    *(v71 + 16) = v52;
    v72 = v90[0];
    *(v71 + 24) = v89;
    *(v71 + 40) = v72;
    *(v71 + 49) = *(v90 + 9);

    sub_267EF3FD8();

    goto LABEL_17;
  }

  sub_267B9A5E8(&v89, v103);
  __swift_project_boxed_opaque_existential_0((v52 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory), *(v52 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory + 24));
  v84 = v54;
  sub_267E2F338();
  v57 = v104;
  v58 = v105;
  __swift_project_boxed_opaque_existential_0(v103, v104);
  v59 = *(v58 + 8);

  v60 = v77;
  v59(v57, v58);
  sub_267EF4B88();
  v61 = v81;
  v62 = *(v80 + 8);
  v62(v60, v81);
  v63 = v78;
  sub_267EF4B98();
  v64 = sub_267EF3528();

  v62(v63, v61);
  if (v64)
  {
    __swift_destroy_boxed_opaque_existential_0(v103);
    v55 = v88;
    goto LABEL_7;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v73 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
  v74 = sub_267EF89F8();
  v75 = sub_267EF95E8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_31_5(v76);
    OUTLINED_FUNCTION_66_16(&dword_267B93000, v74, v75, "#SendMessageFlow RCHFlow.on() returned false");
    OUTLINED_FUNCTION_18_2();
  }

  sub_267EF4018();

  __swift_destroy_boxed_opaque_existential_0(v103);
LABEL_17:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BEBDE4()
{

  if (*(v0 + 64))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

void sub_267BEBE48()
{
  if (*(v0 + 16) - 3 >= 3)
  {
    v4 = v0;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (os_log_type_enabled(v6, v7))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v8, v9, "#SendMessageState initializing SendMessageIntentConfirmationInferrer");
      OUTLINED_FUNCTION_32_0();
    }

    type metadata accessor for SendMessageIntentConfirmationInferrer();
    swift_allocObject();
    *(v4 + 112) = sub_267BEC01C(0);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v1 = sub_267EF8A08();
    __swift_project_value_buffer(v1, qword_280240FB0);
    oslog = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = OUTLINED_FUNCTION_32();
      *v3 = 0;
      _os_log_impl(&dword_267B93000, oslog, v2, "#SendMessageState not initializing SendMessageIntentConfirmationInferrer", v3, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }
}