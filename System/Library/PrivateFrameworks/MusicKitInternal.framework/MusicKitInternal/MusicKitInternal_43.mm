uint64_t sub_1D526323C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 136) = a8;
  *(v9 + 144) = v8;
  *(v9 + 120) = a6;
  *(v9 + 128) = a7;
  *(v9 + 104) = a4;
  *(v9 + 112) = a5;
  *(v9 + 88) = a1;
  *(v9 + 96) = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  *(v9 + 152) = v12;
  *(v9 + 160) = *(v12 - 8);
  *(v9 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  *(v9 + 176) = swift_task_alloc();
  type metadata accessor for MusicPlaybackIntent(0);
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = *(a7 - 8);
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 304) = *a2;
  sub_1D56153C8();
  *(v9 + 208) = sub_1D56153B8();
  v14 = sub_1D5615338();
  *(v9 + 216) = v14;
  *(v9 + 224) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D5263414, v14, v13);
}

uint64_t sub_1D5263414()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 144);
  v6 = *(v0 + 104);
  v38 = *(v0 + 128);
  v7 = *(v0 + 128);
  sub_1D5612868();
  sub_1D5612858();
  v8 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player;
  *(v0 + 232) = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player;
  OUTLINED_FUNCTION_59(v5 + v8, v0 + 56);
  swift_weakLoadStrong();

  *(v0 + 40) = v38;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v7);
  sub_1D560D838();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_1D5424200();
  sub_1D4E50004(v4, &unk_1EC7EEC20, &unk_1D5623F70);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v14 = *v3;
  *(v0 + 240) = *v3;
  if (v6)
  {

    OUTLINED_FUNCTION_128();
    v15 = sub_1D5614D38();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v0 + 120);
  [v14 setPlayActivityFeatureName_];

  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_98();
    sub_1D4F48DE4(v18, v19);
    OUTLINED_FUNCTION_98();
    v17 = sub_1D560C168();
  }

  [v14 setPlayActivityRecommendationData_];

  v20 = OUTLINED_FUNCTION_93();
  sub_1D50153E4(v20, v21);
  Strong = swift_weakLoadStrong();
  *(v0 + 248) = Strong;
  if (Strong)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 256) = v23;
    *v23 = v24;
    v23[1] = sub_1D5263744;
    OUTLINED_FUNCTION_89();

    return sub_1D5433A24(v25);
  }

  else
  {
    *(v0 + 264) = 0;
    *(v0 + 272) = 0;
    v28 = swift_weakLoadStrong();
    *(v0 + 280) = v28;
    if (!v28)
    {

      v32 = *(v0 + 192);
      v31 = *(v0 + 200);
      v33 = *(v0 + 184);
      v34 = *(v0 + 128);
      swift_unknownObjectRelease();
      (*(v32 + 8))(v31, v34);
      OUTLINED_FUNCTION_0_150();
      sub_1D526D3A4(v33, v35);

      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_89();

      __asm { BRAA            X1, X16 }
    }

    v29 = swift_task_alloc();
    *(v0 + 288) = v29;
    *v29 = v0;
    OUTLINED_FUNCTION_62_24(v29);
    OUTLINED_FUNCTION_89();

    return sub_1D5434158();
  }
}

uint64_t sub_1D5263744()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D526387C, v5, v4);
}

uint64_t sub_1D526387C()
{
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 152);
  sub_1D5612858();
  v2 = OUTLINED_FUNCTION_58_1();
  v3(v2);
  v4 = *(v0 + 80);
  if (v4)
  {
    v5 = [*(v0 + 80) musicKit_playerResponse_tracklist];
    OUTLINED_FUNCTION_180_2();
    v6 = [v1 musicKit_responseTracklist_insertCommand];
    OUTLINED_FUNCTION_82();
    swift_unknownObjectRelease();
  }

  *(v0 + 264) = v4;
  switch(*(v0 + 304))
  {
    case 1:
      if (v4)
      {
        v7 = [v4 musicKit:*(v0 + 240) insertItemsCommand:? insertAtEndOfTracklistCommandRequestWithPlaybackIntent:?];
        goto LABEL_13;
      }

      break;
    case 2:
      if (v4)
      {
        v7 = [v4 musicKit:*(v0 + 240) insertItemsCommand:? insertAtEndOfUpNextCommandRequestWithPlaybackIntent:?];
        goto LABEL_13;
      }

      break;
    case 3:
      if (v4)
      {
        v8 = [v4 musicKit_insertItemCommand_insertAfterLastSection];
        if (v8)
        {
          v9 = [v8 musicKit:*(v0 + 240) insertWithPlaybackIntent:?];
          OUTLINED_FUNCTION_82();
          swift_unknownObjectRelease();
        }

        else
        {
          v4 = 0;
        }
      }

      break;
    default:
      if (v4)
      {
        v7 = [v4 musicKit:*(v0 + 240) insertItemsCommand:? insertAfterPlayingItemCommandRequestWithPlaybackIntent:?];
LABEL_13:
        v4 = v7;
      }

      break;
  }

  *(v0 + 272) = v4;
  Strong = swift_weakLoadStrong();
  *(v0 + 280) = Strong;
  if (Strong)
  {
    v11 = swift_task_alloc();
    *(v0 + 288) = v11;
    *v11 = v0;
    OUTLINED_FUNCTION_62_24(v11);

    return sub_1D5434158();
  }

  else
  {

    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = *(v0 + 128);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v14 + 8))(v13, v16);
    OUTLINED_FUNCTION_0_150();
    sub_1D526D3A4(v15, v17);

    OUTLINED_FUNCTION_22_1();

    return v18();
  }
}

uint64_t sub_1D5263B14()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 296) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = sub_1D5263D24;
  }

  else
  {
    v7 = sub_1D5263C60;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D5263C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();

  v12 = v10[24];
  v11 = v10[25];
  v13 = v10[23];
  v14 = v10[16];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v12 + 8))(v11, v14);
  OUTLINED_FUNCTION_0_150();
  sub_1D526D3A4(v13, v15);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1D5263D24()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[16];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v4);
  OUTLINED_FUNCTION_0_150();
  sub_1D526D3A4(v2, v5);

  OUTLINED_FUNCTION_55();

  return v6();
}

void InternalMusicPlayer.Queue.remove(_:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_68_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = &v32[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32[-1] - v15;
  v17 = sub_1D52EB690();
  if (v17)
  {
    v32[0] = [v17 musicKit_playerResponseItem_removeCommandRequest];
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
    sub_1D5612878();
    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player, v32);
    Strong = swift_weakLoadStrong();
    (*(v9 + 16))(v14, v16, v7);
    v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 4) = Strong;
    (*(v9 + 32))(&v24[v23], v14, v7);
    OUTLINED_FUNCTION_41_7();
    sub_1D5264534();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_1D4E50004(v1, &qword_1EC7EB710, &qword_1D561F440);
    v25 = OUTLINED_FUNCTION_75_2();
    v26(v25);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_21_42(v0 + 16, v32);
    v28 = *(v0 + 16);
    MEMORY[0x1EEE9AC00](v27);
    *(&v31 - 2) = v4;

    v29 = OUTLINED_FUNCTION_145_7();
    *(v2 + 16) = sub_1D525C17C(v29, v30, v28);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D52640E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D526410C, 0, 0);
}

uint64_t sub_1D526410C()
{
  OUTLINED_FUNCTION_60();
  if (*(v0 + 24))
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_1D52641D8;
    OUTLINED_FUNCTION_93_0(*(v0 + 32));

    return sub_1D5434850();
  }

  else
  {
    **(v0 + 16) = 1;
    OUTLINED_FUNCTION_55();

    return v3();
  }
}

uint64_t sub_1D52641D8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_55();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1D52642F0()
{
  **(v0 + 16) = *(v0 + 24) == 0;
  OUTLINED_FUNCTION_22_1();
  return v1();
}

void sub_1D5264320()
{
  OUTLINED_FUNCTION_191();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_97_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_118_1();
  OUTLINED_FUNCTION_137_8(v4);
  v11 = sub_1D5615458();
  v12 = OUTLINED_FUNCTION_35_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v0, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    sub_1D5615448();
    (*(*(v11 - 8) + 8))(v0, v11);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_132_8();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1D5615338();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_75_2();
  sub_1D5614DE8();

  OUTLINED_FUNCTION_132_8();
  swift_task_create();
  OUTLINED_FUNCTION_82();

LABEL_9:
  OUTLINED_FUNCTION_190();
}

void sub_1D5264534()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_126_4();
  v4 = OUTLINED_FUNCTION_97_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_118_1();
  OUTLINED_FUNCTION_137_8(v2);
  v8 = sub_1D5615458();
  v9 = OUTLINED_FUNCTION_35_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, v10, v8);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v1, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    sub_1D5615448();
    v12 = OUTLINED_FUNCTION_21_1();
    v13(v12);
  }

  v14 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C40, &qword_1D563C1F0);
    OUTLINED_FUNCTION_132_8();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1D5615338();
  swift_unknownObjectRelease();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D5614DE8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C40, &qword_1D563C1F0);
  OUTLINED_FUNCTION_132_8();
  swift_task_create();
  OUTLINED_FUNCTION_82();

LABEL_9:
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1D5264748(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1D5616168() ^ 1;
  }

  return v3 & 1;
}

void InternalMusicPlayer.Queue.move(_:before:)()
{
  OUTLINED_FUNCTION_191();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B70, &qword_1D564A650);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  v8 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_71_1();
  v12 = sub_1D52EB690();
  if (v12)
  {
    v13 = v12;
    if (sub_1D52EB690())
    {
      OUTLINED_FUNCTION_147();
      sub_1D5615458();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
      OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player, v29);
      Strong = swift_weakLoadStrong();
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = Strong;
      v19[5] = v13;
      v19[6] = v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_41_7();
      sub_1D5264320();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_1D4E50004(v3, &qword_1EC7EB710, &qword_1D561F440);
LABEL_10:
      OUTLINED_FUNCTION_190();
      return;
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_59(v0 + 16, v29);

  OUTLINED_FUNCTION_8_80();
  sub_1D525C7E4();
  v21 = v20;

  if (v21)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_80();
  sub_1D525C7E4();
  v23 = v22;
  v25 = v24;

  if (v25)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_54_0(v0 + 16, v28);
  OUTLINED_FUNCTION_68_19();
  sub_1D525CB8C();
  swift_endAccess();
  OUTLINED_FUNCTION_1_116();
  sub_1D526D3A4(v2, v26);
  OUTLINED_FUNCTION_54_0(v0 + 16, v28);
  if (*(*(v0 + 16) + 16) < v23)
  {
    __break(1u);
  }

  else if ((v23 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_22_48();
    sub_1D526D7D8();
    OUTLINED_FUNCTION_67_25();
    sub_1D526D0B0(v23, v23, v1, v27, sub_1D54FBBC4);
    swift_endAccess();
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1D5264B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5264C6C, 0, 0);
}

uint64_t sub_1D5264C6C()
{
  OUTLINED_FUNCTION_60();
  if (v0[4])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[13] = v1;
    *v1 = v2;
    v1[1] = sub_1D5264D64;
    v3 = v0[12];

    return sub_1D5433A24(v3);
  }

  else
  {
    OUTLINED_FUNCTION_151_6();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
    OUTLINED_FUNCTION_116_12(v5);
    v6 = OUTLINED_FUNCTION_85_14();
    v7(v6);
    OUTLINED_FUNCTION_139_8();

    OUTLINED_FUNCTION_22_1();

    return v8();
  }
}

uint64_t sub_1D5264D64()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5264E48()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_170_3();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  v5 = *(v1 + 24);
  if (v5)
  {
    v6 = [*(v1 + 24) musicKit_playerResponse_tracklist];
    OUTLINED_FUNCTION_180_2();
    v7 = [v0 musicKit_responseTracklist_reorderCommand];
    OUTLINED_FUNCTION_82();
    swift_unknownObjectRelease();
    v8 = [v5 musicKit:*(v1 + 40) reorderItemsCommand:*(v1 + 48) moveItem:? beforeItem:?];
  }

  OUTLINED_FUNCTION_136_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
  sub_1D5612878();
  if (v2)
  {
    v9 = swift_task_alloc();
    *(v1 + 128) = v9;
    *v9 = v1;
    v9[1] = sub_1D5264FEC;
    OUTLINED_FUNCTION_93_0(*(v1 + 72));

    return sub_1D5434850();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_85_14();
    v12(v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_139_8();

    OUTLINED_FUNCTION_22_1();

    return v13();
  }
}

uint64_t sub_1D5264FEC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void InternalMusicPlayer.Queue.move(_:after:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B70, &qword_1D564A650);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  v8 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  v9 = OUTLINED_FUNCTION_69(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32[-v12];
  v14 = sub_1D52EB690();
  if (v14)
  {
    v15 = v14;
    if (sub_1D52EB690())
    {
      OUTLINED_FUNCTION_147();
      sub_1D5615458();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
      OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player, v33);
      Strong = swift_weakLoadStrong();
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = Strong;
      v21[5] = v15;
      v21[6] = v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_41_7();
      sub_1D5264320();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_1D4E50004(v13, &qword_1EC7EB710, &qword_1D561F440);
LABEL_12:
      OUTLINED_FUNCTION_46();
      return;
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_59(v0 + 16, v33);

  OUTLINED_FUNCTION_8_80();
  sub_1D525C7E4();
  v23 = v22;

  if (v23)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_80();
  sub_1D525C7E4();
  v25 = v24;
  v27 = v26;

  if (v27)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_54_0(v0 + 16, v32);
  OUTLINED_FUNCTION_68_19();
  sub_1D525CB8C();
  swift_endAccess();
  OUTLINED_FUNCTION_1_116();
  sub_1D526D3A4(v2, v28);
  if (v25 >= *(*(v0 + 16) + 16))
  {
    swift_beginAccess();
    sub_1D4EFF604();
    v30 = *(*(v0 + 16) + 16);
    sub_1D4EFF83C(v30);
    v31 = *(v0 + 16);
    *(v31 + 16) = v30 + 1;
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_22_48();
    sub_1D526D7D8();
    *(v3 + 16) = v31;
    goto LABEL_11;
  }

  swift_beginAccess();
  if (v25 >= -1)
  {
    OUTLINED_FUNCTION_22_48();
    sub_1D526D7D8();
    OUTLINED_FUNCTION_67_25();
    sub_1D526D0B0(v25 + 1, v25 + 1, v1, v29, sub_1D54FBBC4);
LABEL_11:
    swift_endAccess();
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1D5265500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5265638, 0, 0);
}

uint64_t sub_1D5265638()
{
  OUTLINED_FUNCTION_60();
  if (v0[4])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[13] = v1;
    *v1 = v2;
    v1[1] = sub_1D5265730;
    v3 = v0[12];

    return sub_1D5433A24(v3);
  }

  else
  {
    OUTLINED_FUNCTION_151_6();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
    OUTLINED_FUNCTION_116_12(v5);
    v6 = OUTLINED_FUNCTION_85_14();
    v7(v6);
    OUTLINED_FUNCTION_139_8();

    OUTLINED_FUNCTION_22_1();

    return v8();
  }
}

uint64_t sub_1D5265730()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5265814()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_170_3();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  v5 = *(v1 + 24);
  if (v5)
  {
    v6 = [*(v1 + 24) musicKit_playerResponse_tracklist];
    OUTLINED_FUNCTION_180_2();
    v7 = [v0 musicKit_responseTracklist_reorderCommand];
    OUTLINED_FUNCTION_82();
    swift_unknownObjectRelease();
    v8 = [v5 musicKit:*(v1 + 40) reorderItemsCommand:*(v1 + 48) moveItem:? afterItem:?];
  }

  OUTLINED_FUNCTION_136_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
  sub_1D5612878();
  if (v2)
  {
    v9 = swift_task_alloc();
    *(v1 + 128) = v9;
    *v9 = v1;
    v9[1] = sub_1D52659B8;
    OUTLINED_FUNCTION_93_0(*(v1 + 72));

    return sub_1D5434850();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_85_14();
    v12(v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_139_8();

    OUTLINED_FUNCTION_22_1();

    return v13();
  }
}

uint64_t sub_1D52659B8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5265AB0()
{
  OUTLINED_FUNCTION_80();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_15_8();
  v1(v0);
  OUTLINED_FUNCTION_139_8();

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D5265B3C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_70();
  v1(v0);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

void InternalMusicPlayer.Queue.skip(to:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_59(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player, v26);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a1;
    if (sub_1D52EB690())
    {
      OUTLINED_FUNCTION_147();
      sub_1D5615458();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v7;
      v13[5] = v8;

      swift_unknownObjectRetain();
      v14 = OUTLINED_FUNCTION_41_7();
      sub_1D4F405A0(v14, v15, v2, v16, v13);

      swift_unknownObjectRelease();

      sub_1D4E50004(v2, &qword_1EC7EB710, &qword_1D561F440);
    }

    else
    {
      if (qword_1EDD54498 != -1)
      {
        OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
      }

      v22 = sub_1D560C758();
      OUTLINED_FUNCTION_62_4(v22, qword_1EDD76AC0);
      v23 = sub_1D560C738();
      v24 = sub_1D56156C8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_63_12();
        *v25 = 0;
        _os_log_impl(&dword_1D4E3F000, v23, v24, "Cannot set the current entry to a pending entry.", v25, 2u);
        OUTLINED_FUNCTION_122();
      }
    }
  }

  else
  {
    if (qword_1EDD54498 != -1)
    {
      OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
    }

    v17 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v17, qword_1EDD76AC0);
    v18 = sub_1D560C738();
    v19 = sub_1D56156C8();
    if (os_log_type_enabled(v18, v19))
    {
      *OUTLINED_FUNCTION_63_12() = 0;
      OUTLINED_FUNCTION_168(&dword_1D4E3F000, v20, v21, "InternalMusicPlayer updating current entry mode failed with due to the queue not being attached to a player.");
      OUTLINED_FUNCTION_122();
    }
  }
}

uint64_t sub_1D5265E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v8 = swift_task_alloc();
  v5[11] = v8;
  v9 = swift_task_alloc();
  v5[12] = v9;
  *v9 = v5;
  v9[1] = sub_1D5265FA4;

  return sub_1D5433A24(v8);
}

uint64_t sub_1D5265FA4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5266088()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 72);
  sub_1D5612858();
  v2 = OUTLINED_FUNCTION_58_1();
  v3(v2);
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = [*(v0 + 16) musicKit_playerResponse_tracklist];
    OUTLINED_FUNCTION_180_2();
    v6 = [v1 musicKit_responseTracklist_changeItemCommand];
    OUTLINED_FUNCTION_82();
    swift_unknownObjectRelease();
    v7 = [v4 musicKit:*(v0 + 40) changeItemCommand:? changeToItem:?];
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 104) = v7;
  *(v0 + 112) = v4;
  *(v0 + 24) = v7;
  swift_unknownObjectRetain();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
  OUTLINED_FUNCTION_116_12(v8);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_1D52661DC;
  OUTLINED_FUNCTION_93_0(*(v0 + 64));

  return sub_1D5434850();
}

uint64_t sub_1D52661DC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52662D4()
{
  OUTLINED_FUNCTION_80();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_15_8();
  v1(v0);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5266368()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_15_8();
  v3(v2);
  if (qword_1EDD54498 != -1)
  {
    OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
  }

  v4 = sub_1D560C758();
  __swift_project_value_buffer(v4, qword_1EDD76AC0);
  v5 = OUTLINED_FUNCTION_82();
  v6 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_177_4();
  v7 = OUTLINED_FUNCTION_152_0();
  v8 = *(v0 + 128);
  if (v7)
  {
    OUTLINED_FUNCTION_142();
    v9 = OUTLINED_FUNCTION_38_12();
    OUTLINED_FUNCTION_175_3(5.8381e-34);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_88_1(v10);
    OUTLINED_FUNCTION_74_18(&dword_1D4E3F000, v11, v1, "InternalMusicPlayer updating current entry mode failed with error: %{public}@");
    sub_1D4E50004(v9, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t InternalMusicPlayer.Queue.clearUpNext()()
{
  OUTLINED_FUNCTION_60();
  v1[7] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v1[8] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[9] = v3;
  v1[10] = OUTLINED_FUNCTION_127();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v1[11] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[12] = v5;
  v1[13] = OUTLINED_FUNCTION_127();
  sub_1D56153C8();
  v1[14] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  v7 = sub_1D5615338();
  v1[15] = v7;
  v1[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D5266608, v7, v6);
}

uint64_t sub_1D5266608()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[7];
  v2 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player;
  v0[17] = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player;
  OUTLINED_FUNCTION_59(v1 + v2, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[19] = v4;
    *v4 = v5;
    v4[1] = sub_1D52667B8;
    v6 = v0[13];

    return sub_1D5433A24(v6);
  }

  else
  {
    v0[6] = 0;
    v0[20] = 0;
    v0[21] = 0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
    OUTLINED_FUNCTION_116_12(v8);
    v9 = swift_weakLoadStrong();
    v0[22] = v9;
    if (v9)
    {
      v10 = swift_task_alloc();
      v0[23] = v10;
      *v10 = v0;
      OUTLINED_FUNCTION_53_25(v10);

      return sub_1D5434850();
    }

    else
    {

      OUTLINED_FUNCTION_105_12();
      v11 = OUTLINED_FUNCTION_15_8();
      v12(v11);

      OUTLINED_FUNCTION_22_1();

      return v13();
    }
  }
}

uint64_t sub_1D52667B8()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D52668F0, v5, v4);
}

uint64_t sub_1D52668F0()
{
  OUTLINED_FUNCTION_80();
  sub_1D5612858();
  v1 = OUTLINED_FUNCTION_58_1();
  v2(v1);
  v3 = *(v0 + 40);
  if (v3)
  {
    v4 = [*(v0 + 40) musicKit_playerResponse_tracklist];
    swift_unknownObjectRelease();
    v5 = [v4 musicKit_responseTracklist_resetCommand];
    swift_unknownObjectRelease();
    if (v5)
    {
      v3 = [v5 musicKit_resetTracklistCommand_clearUpNextItemsCommandRequest];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 160) = v3;
  *(v0 + 168) = v5;
  *(v0 + 48) = v3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
  sub_1D5612878();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_53_25(v7);

    return sub_1D5434850();
  }

  else
  {

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_105_12();
    v9 = OUTLINED_FUNCTION_15_8();
    v10(v9);

    OUTLINED_FUNCTION_22_1();

    return v11();
  }
}

uint64_t sub_1D5266AC4()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1D5266CA0;
  }

  else
  {
    v7 = sub_1D5266C10;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D5266C10()
{
  OUTLINED_FUNCTION_80();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_105_12();
  v0 = OUTLINED_FUNCTION_15_8();
  v1(v0);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D5266CA0()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_55();

  return v4();
}

void sub_1D5266D50(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 musicKit_playerResponse_tracklist];
  }

  OUTLINED_FUNCTION_98();

  sub_1D5266DC0();
}

void sub_1D5266DC0()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AA8, &unk_1D564A5C0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_118_1();
  v8 = _s5QueueC10PropertiesVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_7();
  v10 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v31 = v8[9];
  *(v1 + v31) = 3;
  v32 = v8[10];
  *(v1 + v32) = 3;
  v14 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  v36 = v14;
  v37 = v14;
  v34 = 0;
  v35 = v14;
  if (v5)
  {
    v18 = [v5 musicKit_responseTracklist_sectionedCollection];
    v19 = swift_allocObject();
    v19[2] = v5;
    v19[3] = v3;
    v19[4] = &v38;
    v19[5] = v0;
    v19[6] = &v34;
    v19[7] = &v37;
    v19[8] = &v36;
    v19[9] = &v35;
    v20 = swift_allocObject();
    v21 = sub_1D526DB60;
    *(v20 + 16) = sub_1D526DB60;
    *(v20 + 24) = v19;
    v33[4] = sub_1D526DB90;
    v33[5] = v20;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 1107296256;
    v33[2] = sub_1D526C668;
    v33[3] = &block_descriptor_18;
    v22 = _Block_copy(v33);
    swift_unknownObjectRetain();

    [v18 enumeratePlayerSectionsUsingBlock_];

    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return;
    }
  }

  else
  {

    v21 = 0;
    v19 = 0;
  }

  v24 = v8[7];
  *v1 = v38;

  sub_1D526CE34();
  v25 = v36;
  *(v1 + v8[6]) = v37;
  *(v1 + v24) = v25;
  *(v1 + v8[8]) = v35;

  if (v5)
  {
    v26 = [v5 musicKit_responseTracklist_repeatType];
  }

  else
  {
    v26 = 0;
  }

  sub_1D5192D08(v26, v5 == 0, v33);
  *(v1 + v31) = v33[0];
  if (v5)
  {
    v27 = [v5 musicKit_responseTracklist_shuffleType];
  }

  else
  {
    v27 = 0;
  }

  v28 = v8[11];
  sub_1D5192E08(v27, v5 == 0, v33);
  *(v1 + v32) = v33[0];
  if (v5)
  {
    *(v1 + v28) = [v5 musicKit_responseTracklist_actionAtQueueEnd] == 3;
    v29 = [v5 musicKit_globalItemCount];
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0;
    *(v1 + v28) = 0;
  }

  v30 = v1 + v8[12];
  *v30 = v29;
  v30[8] = v5 == 0;

  sub_1D4E50004(v0, &qword_1EC7F2AA8, &unk_1D564A5C0);

  OUTLINED_FUNCTION_30_42();
  sub_1D526D94C();
  sub_1D4EA7420(v21, v19);
  OUTLINED_FUNCTION_46();
}

void sub_1D52671E4()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v110 = v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C28, &unk_1D564AB60);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v107 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v91 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AA8, &unk_1D564A5C0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = _s5QueueC10PropertiesVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v91 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AC8, &qword_1D564A5E8);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  v106 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v91 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v91 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v91 - v31;
  v33 = *v2;
  v100 = v2[1];
  v99 = v33;
  v34 = *(v2 + 5);
  v101 = *(v2 + 4);
  v105 = v34;
  v35 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_properties;
  OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_properties, &v115);
  v98 = v35;
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_10_82();
  v36 = v110;
  sub_1D526D7D8();
  v109 = v32;
  v111 = v30;
  sub_1D4F0AE7C();
  v95 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientRepeatMode;
  OUTLINED_FUNCTION_152_6();
  if (v56)
  {
    v102 = 0;
  }

  else
  {
    v102 = v37 == *(v36 + v13[9]);
    if (!OUTLINED_FUNCTION_106_10())
    {
      v111[v13[9]] = 3;
    }
  }

  v40 = v106;
  v39 = v107;
  v93 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientShuffleMode;
  OUTLINED_FUNCTION_152_6();
  if (v56)
  {
    v104 = 0;
  }

  else
  {
    v104 = v41 == *(v36 + v13[10]);
    if (!OUTLINED_FUNCTION_106_10())
    {
      v111[v13[10]] = 3;
    }
  }

  v92 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled;
  v43 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled);
  if (v43 == 2)
  {
    v103 = 0;
  }

  else
  {
    v44 = *(v36 + v13[11]);
    v103 = (v44 != 2) & (v44 ^ v43 ^ 1);
    if (!OUTLINED_FUNCTION_106_10())
    {
      v111[v13[11]] = 2;
    }
  }

  v107 = 1;
  OUTLINED_FUNCTION_21_42(v0 + 16, &v114);
  if (!*(*(v0 + 16) + 16))
  {
    OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_pendingStartEntry, &v112);
    v45 = v91;
    sub_1D4F0AE7C();
    v46 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
    OUTLINED_FUNCTION_57(v45, 1, v46);
    if (v56)
    {
      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    v107 = v47;
    v48 = OUTLINED_FUNCTION_93();
    v40 = v106;
    sub_1D4E50004(v48, v49, &unk_1D564A5C0);
  }

  OUTLINED_FUNCTION_10_82();
  v106 = v17;
  sub_1D526D7D8();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v13);
  v53 = *(v108 + 48);
  sub_1D4F0AE7C();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_23_1(v8);
  if (v56)
  {
    sub_1D4E50004(v27, &qword_1EC7F2AC8, &qword_1D564A5E8);
    OUTLINED_FUNCTION_23_1(&v8[v53]);
    if (v56)
    {
      sub_1D4E50004(v8, &qword_1EC7F2AC8, &qword_1D564A5E8);
      v54 = v106;
      if (!v107)
      {
        goto LABEL_31;
      }

LABEL_30:
      sub_1D525F948();
      goto LABEL_31;
    }

LABEL_29:
    sub_1D4E50004(v8, &qword_1EC7F2C28, &unk_1D564AB60);
    v54 = v106;
    goto LABEL_30;
  }

  v55 = v94;
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_23_1(&v8[v53]);
  if (v56)
  {
    sub_1D4E50004(v27, &qword_1EC7F2AC8, &qword_1D564A5E8);
    OUTLINED_FUNCTION_27_45();
    sub_1D526D3A4(v55, v57);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_30_42();
  v84 = v97;
  sub_1D526D94C();
  OUTLINED_FUNCTION_93();
  sub_1D526B954();
  v86 = v85;
  sub_1D526D3A4(v84, _s5QueueC10PropertiesVMa);
  sub_1D4E50004(v27, &qword_1EC7F2AC8, &qword_1D564A5E8);
  sub_1D526D3A4(v55, _s5QueueC10PropertiesVMa);
  sub_1D4E50004(v8, &qword_1EC7F2AC8, &qword_1D564A5E8);
  v54 = v106;
  if (v107 & 1 | ((v86 & 1) == 0))
  {
    goto LABEL_30;
  }

LABEL_31:
  if (v102)
  {
    *(v0 + v95) = 3;
  }

  if (v104)
  {
    *(v0 + v93) = 3;
  }

  if (v103)
  {
    *(v0 + v92) = 2;
  }

  OUTLINED_FUNCTION_10_82();
  sub_1D526D7D8();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v13);
  v61 = *(v108 + 48);
  sub_1D4F0AE7C();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_23_1(v39);
  if (v56)
  {
    v62 = v107;
    sub_1D4E50004(v40, &qword_1EC7F2AC8, &qword_1D564A5E8);
    OUTLINED_FUNCTION_23_1(v39 + v61);
    if (v56)
    {
      sub_1D4E50004(v39, &qword_1EC7F2AC8, &qword_1D564A5E8);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v62 = v107;
  v63 = v96;
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_23_1(v39 + v61);
  if (v64)
  {
    sub_1D4E50004(v40, &qword_1EC7F2AC8, &qword_1D564A5E8);
    OUTLINED_FUNCTION_27_45();
    sub_1D526D3A4(v63, v65);
LABEL_45:
    sub_1D4E50004(v39, &qword_1EC7F2C28, &unk_1D564AB60);
LABEL_46:
    OUTLINED_FUNCTION_10_82();
    sub_1D526D7D8();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v13);
    OUTLINED_FUNCTION_54_0(v0 + v98, v113);
    sub_1D526DFE4();
    swift_endAccess();
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_30_42();
  v87 = v97;
  sub_1D526D94C();
  sub_1D526B954();
  LODWORD(v108) = v88;
  sub_1D526D3A4(v87, _s5QueueC10PropertiesVMa);
  sub_1D4E50004(v40, &qword_1EC7F2AC8, &qword_1D564A5E8);
  v89 = OUTLINED_FUNCTION_128();
  sub_1D526D3A4(v89, v90);
  v54 = v106;
  sub_1D4E50004(v39, &qword_1EC7F2AC8, &qword_1D564A5E8);
  if ((v108 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_47:
  OUTLINED_FUNCTION_27_45();
  sub_1D526D3A4(v54, v69);
  sub_1D4E50004(v109, &qword_1EC7F2AC8, &qword_1D564A5E8);
  v70 = v105;
  if (v62)
  {
    *(v0 + 16) = MEMORY[0x1E69E7CC0];

    type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
    OUTLINED_FUNCTION_54_0(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_pendingStartEntry, v113);
    sub_1D526DFE4();
    swift_endAccess();
  }

  if (v70)
  {
    v75 = v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath;
    v76 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 16);
    v77 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 24);
    v78 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 32);
    v79 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 40);
    v80 = v99;
    v81 = v100;
    *v75 = v99;
    *(v75 + 16) = v81;
    *(v75 + 32) = v101;
    *(v75 + 40) = v70;
    sub_1D4E5EEC0(v80, *(&v80 + 1), v81);

    swift_unknownObjectRetain();
    v82 = OUTLINED_FUNCTION_71();
    sub_1D526CDE8(v82, v83, v76, v77, v78, v79);
  }

  sub_1D4E50004(v111, &qword_1EC7F2AC8, &qword_1D564A5E8);
  OUTLINED_FUNCTION_46();
}

void sub_1D5267BA4()
{
  OUTLINED_FUNCTION_47();
  v116 = v3;
  v5 = v4;
  v122 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v121 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v14);
  v117 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v115 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v17 = type metadata accessor for Playlist.Entry.InternalItem(0);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_7();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v108 - v21;
  v23 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v114 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AA8, &unk_1D564A5C0);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v108 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = v108 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v108 - v40;
  sub_1D4E628D4(v5, v128);
  v42 = v0;
  InternalMusicPlayer.Queue.currentEntry.getter();
  v43 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_57(v37, 1, v43);
  if (v49)
  {
    v44 = &qword_1EC7F2AA8;
    v45 = &unk_1D564A5C0;
    v46 = v37;
  }

  else
  {
    v109 = v43;
    v108[5] = _s21EntryPropertyProviderVMa(0);
    sub_1D4F0AE7C();
    OUTLINED_FUNCTION_1_116();
    sub_1D526D3A4(v37, v47);
    v48 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(0);
    OUTLINED_FUNCTION_57(v41, 1, v48);
    if (!v49)
    {
      InternalMusicPlayer.Queue.Entry.Item.innerItem.getter(v126);
      sub_1D526D3A4(v41, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
      sub_1D4E48324(v126, v127);
      sub_1D4E628D4(v128, v126);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      v51 = swift_dynamicCast();
      if (v51)
      {
        OUTLINED_FUNCTION_64_0();
        __swift_storeEnumTagSinglePayload(v52, v53, v54, v23);
        v55 = v114;
        (*(v114 + 32))(v28, v22, v23);
        v56 = (v42 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath);
        if (*(v42 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 40))
        {
          v108[4] = v50;
          v57 = *v56;
          v58 = v56[1];
          v59 = v56[2];
          v108[2] = v56[3];
          v60 = v56[4];
          v108[0] = v57;
          v108[3] = v59;
          sub_1D4E5EEC0(v57, v58, v59);
          v108[1] = v60;

          if ([swift_unknownObjectRetain() musicKit_playerPath_isLocal])
          {
            (*(v55 + 8))(v28, v23);
            OUTLINED_FUNCTION_92_13();
          }

          else
          {
            Playlist.Entry.internalItem.getter();
            Playlist.Entry.InternalItem.innerItem.getter(v126);
            OUTLINED_FUNCTION_92_13();
            sub_1D526D3A4(v1, type metadata accessor for Playlist.Entry.InternalItem);
            (*(v55 + 8))(v28, v23);
            __swift_destroy_boxed_opaque_existential_1(v128);
            sub_1D4E48324(v126, v128);
          }
        }

        else
        {
          (*(v55 + 8))(v28, v23);
        }
      }

      else
      {
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v61, v62, v63, v23);
        sub_1D4E50004(v22, &unk_1EC7F2BE0, &qword_1D56250F0);
      }

      sub_1D4E628D4(v128, v126);
      v64 = v117;
      v65 = swift_dynamicCast();
      v66 = v122;
      v67 = v119;
      v68 = v118;
      if (v65)
      {
        (*(v115 + 8))(v2, v64);
        InternalMusicPlayer.Queue.currentEntry.getter();
        OUTLINED_FUNCTION_57(v35, 1, v109);
        if (!v49)
        {
          OUTLINED_FUNCTION_83_15();
          v91 = v110;
          sub_1D4F0AE7C();
          OUTLINED_FUNCTION_1_116();
          sub_1D526D3A4(v35, v92);
          type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
          v93 = OUTLINED_FUNCTION_35_1();
          OUTLINED_FUNCTION_57(v93, v94, v95);
          v69 = v121;
          if (!v96)
          {
            InternalMusicPlayer.Queue.Entry.Container.innerItem.getter(&v124);
            OUTLINED_FUNCTION_80_10();
            sub_1D4E48324(&v124, v126);
            OUTLINED_FUNCTION_64_18(v126);
            OUTLINED_FUNCTION_150();
            OUTLINED_FUNCTION_71();
            sub_1D560EC98();
            OUTLINED_FUNCTION_42_30(v128);
            sub_1D560D528();
            v106 = OUTLINED_FUNCTION_149_4();
            v68(v106);
            v107 = OUTLINED_FUNCTION_70();
            v68(v107);
            __swift_destroy_boxed_opaque_existential_1(v126);
LABEL_42:
            __swift_destroy_boxed_opaque_existential_1(v127);
            goto LABEL_43;
          }

          sub_1D4E50004(v91, &unk_1EC7F1280, &qword_1D5636138);
LABEL_20:
          v70 = v120;
          sub_1D4F0AE7C();
          if (!v125)
          {
            sub_1D4E50004(&v124, &qword_1EC7EEC40, &unk_1D561C070);
            goto LABEL_30;
          }

          sub_1D4E48324(&v124, v126);
          InternalMusicPlayer.Queue.currentEntry.getter();
          OUTLINED_FUNCTION_57(v68, 1, v109);
          if (v49)
          {
            v71 = &qword_1EC7F2AA8;
            v72 = &unk_1D564A5C0;
            v73 = v68;
          }

          else
          {
            OUTLINED_FUNCTION_83_15();
            v74 = v111;
            sub_1D4F0AE7C();
            OUTLINED_FUNCTION_1_116();
            sub_1D526D3A4(v68, v75);
            type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
            v76 = OUTLINED_FUNCTION_35_1();
            OUTLINED_FUNCTION_57(v76, v77, v78);
            if (!v79)
            {
              InternalMusicPlayer.Queue.Entry.Container.innerItem.getter(v123);
              OUTLINED_FUNCTION_80_10();
              sub_1D4E48324(v123, &v124);
              OUTLINED_FUNCTION_64_18(&v124);
              OUTLINED_FUNCTION_71();
              sub_1D560EC98();
              OUTLINED_FUNCTION_42_30(v126);
              v101 = sub_1D560D528();
              v102 = *(v69 + 8);
              v102(v67, v66);
              v103 = OUTLINED_FUNCTION_132_1();
              (v102)(v103);
              if (v101)
              {
                OUTLINED_FUNCTION_64_18(v127);
                OUTLINED_FUNCTION_71();
                sub_1D560EC98();
                OUTLINED_FUNCTION_42_30(v128);
                v104 = sub_1D560D528();
                v102(v67, v66);
                v105 = OUTLINED_FUNCTION_132_1();
                (v102)(v105);
                __swift_destroy_boxed_opaque_existential_1(&v124);
                __swift_destroy_boxed_opaque_existential_1(v126);
                if (v104)
                {
                  goto LABEL_42;
                }

LABEL_30:
                OUTLINED_FUNCTION_64_18(v127);
                OUTLINED_FUNCTION_71();
                sub_1D560EC98();
                v80 = v129[8];
                OUTLINED_FUNCTION_42_30(v128);
                sub_1D560D528();
                v81 = OUTLINED_FUNCTION_149_4();
                v70(v81);
                v82 = OUTLINED_FUNCTION_132_1();
                v70(v82);
                if (v80)
                {
                  v83 = v112;
                  InternalMusicPlayer.Queue.currentEntry.getter();
                  v84 = OUTLINED_FUNCTION_45_1();
                  v85 = v109;
                  OUTLINED_FUNCTION_57(v84, v86, v109);
                  if (v49)
                  {
                    sub_1D4E50004(v83, &qword_1EC7F2AA8, &unk_1D564A5C0);
                    type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
                    OUTLINED_FUNCTION_169_0(v129);
                    OUTLINED_FUNCTION_33();
                    __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_83_15();
                    v85 = v113;
                    sub_1D4F0AE7C();
                    OUTLINED_FUNCTION_1_116();
                    sub_1D526D3A4(v83, v97);
                    type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
                    v98 = OUTLINED_FUNCTION_35_1();
                    OUTLINED_FUNCTION_57(v98, v99, v100);
                  }

                  sub_1D4E50004(v85, &unk_1EC7F1280, &qword_1D5636138);
                }

                goto LABEL_42;
              }

              __swift_destroy_boxed_opaque_existential_1(&v124);
LABEL_29:
              __swift_destroy_boxed_opaque_existential_1(v126);
              goto LABEL_30;
            }

            v71 = &unk_1EC7F1280;
            v72 = &qword_1D5636138;
            v73 = v74;
          }

          sub_1D4E50004(v73, v71, v72);
          goto LABEL_29;
        }

        sub_1D4E50004(v35, &qword_1EC7F2AA8, &unk_1D564A5C0);
      }

      v69 = v121;
      goto LABEL_20;
    }

    v44 = &qword_1EC7F0140;
    v45 = &qword_1D5636130;
    v46 = v41;
  }

  sub_1D4E50004(v46, v44, v45);
LABEL_43:
  __swift_destroy_boxed_opaque_existential_1(v128);
  OUTLINED_FUNCTION_46();
}

void sub_1D52686DC()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_93_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AC0, &qword_1D564A5E0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_71_1();
  v8 = type metadata accessor for MusicPlaybackIntent(0);
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v66 - v14);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackIntent;
  OUTLINED_FUNCTION_59(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackIntent, &v73);
  OUTLINED_FUNCTION_111_10();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_57(v2, 1, v8);
  if (!v18)
  {
    sub_1D526D94C();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C20, &qword_1D561DC20);
    v23 = OUTLINED_FUNCTION_104_14(v22);
    *(v23 + 16) = xmmword_1D561C050;
    sub_1D526D94C();
    goto LABEL_30;
  }

  v19 = v10;
  sub_1D4E50004(v2, &qword_1EC7F2AC0, &qword_1D564A5E0);
  v20 = *(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems);
  if (!v20[2])
  {
    v17 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest;
    OUTLINED_FUNCTION_59(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest + v3, v71);
    sub_1D4F0AE7C();
    if (v69)
    {
      sub_1D4E48324(&v68, v72);
      v27 = v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem;
      OUTLINED_FUNCTION_59(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem, &v68);
      if (*(v27 + 24))
      {
        v17 = *(v27 + 32);
        v28 = OUTLINED_FUNCTION_21_1();
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v20 = v66;
        OUTLINED_FUNCTION_1_0();
        v31 = v30;
        MEMORY[0x1EEE9AC00](v32);
        OUTLINED_FUNCTION_5();
        (*(v31 + 16))(v34 - v33);
        sub_1D560EC98();
        v35 = OUTLINED_FUNCTION_21_1();
        v36(v35);
        sub_1D560D838();
        OUTLINED_FUNCTION_64_0();
      }

      else
      {
        sub_1D560D838();
        OUTLINED_FUNCTION_33();
      }

      __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
      OUTLINED_FUNCTION_150();
      sub_1D5424200();
      sub_1D4E50004(v1, &unk_1EC7EEC20, &unk_1D5623F70);
      v48 = v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName;
      OUTLINED_FUNCTION_59(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName, v70);
      v49 = *v17;
      if (*(v48 + 8))
      {

        OUTLINED_FUNCTION_91_0();
        v8 = sub_1D5614D38();
      }

      else
      {
        v8 = 0;
      }

      [v49 setPlayActivityFeatureName_];

      OUTLINED_FUNCTION_59(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData, v67);
      OUTLINED_FUNCTION_154_6();
      if (!(!v18 & v50))
      {
        v51 = OUTLINED_FUNCTION_91_0();
        sub_1D4F48DE4(v51, v52);
        OUTLINED_FUNCTION_91_0();
        v20 = sub_1D560C168();
      }

      [v49 setPlayActivityRecommendationData_];

      v53 = OUTLINED_FUNCTION_91_0();
      sub_1D50153E4(v53, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C20, &qword_1D561DC20);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D561C050;
      OUTLINED_FUNCTION_24_49();
    }

    else
    {
      sub_1D4E50004(&v68, &qword_1EC7F06A0, &unk_1D5638850);
      v17 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed;
      OUTLINED_FUNCTION_59(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed, v70);
      sub_1D4F0AE7C();
      if (!v69)
      {
        sub_1D4E50004(&v68, &unk_1EC7F2AB0, &unk_1D564A5D0);
        if (qword_1EDD54498 == -1)
        {
LABEL_22:
          v55 = sub_1D560C758();
          OUTLINED_FUNCTION_62_4(v55, qword_1EDD76AC0);
          v56 = sub_1D560C738();
          v57 = sub_1D56156C8();
          if (os_log_type_enabled(v56, v57))
          {
            *OUTLINED_FUNCTION_63_12() = 0;
            OUTLINED_FUNCTION_168(&dword_1D4E3F000, v58, v59, "Unable to generate playback intents because queue has neither playable items nor a playable request ");
            OUTLINED_FUNCTION_122();
          }

          goto LABEL_38;
        }

LABEL_42:
        OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
        goto LABEL_22;
      }

      sub_1D4E48324(&v68, v72);
      sub_1D542628C(v72, v15);
      v46 = v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName;
      OUTLINED_FUNCTION_59(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName, &v68);
      v47 = *v15;
      if (*(v46 + 8))
      {

        OUTLINED_FUNCTION_91_0();
        v8 = sub_1D5614D38();
      }

      else
      {
        v8 = 0;
      }

      [v47 setPlayActivityFeatureName_];

      OUTLINED_FUNCTION_59(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData, v67);
      OUTLINED_FUNCTION_154_6();
      if (!(!v18 & v50))
      {
        v60 = OUTLINED_FUNCTION_91_0();
        sub_1D4F48DE4(v60, v61);
        OUTLINED_FUNCTION_91_0();
        v20 = sub_1D560C168();
      }

      [v47 setPlayActivityRecommendationData_];

      v62 = OUTLINED_FUNCTION_91_0();
      sub_1D50153E4(v62, v63);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C20, &qword_1D561DC20);
      v10 = v19;
      v23 = OUTLINED_FUNCTION_104_14(v64);
      *(v23 + 16) = xmmword_1D561C050;
      OUTLINED_FUNCTION_24_49();
    }

    sub_1D526D94C();
    __swift_destroy_boxed_opaque_existential_1(v72);
LABEL_30:
    if (*(v23 + 16))
    {
      v8 = ((*(v10 + 80) + 32) & ~*(v10 + 80));
      OUTLINED_FUNCTION_5_89();
      v17 = v66[2];
      sub_1D526D7D8();
      InternalMusicPlayer.Queue.shuffleMode.getter(v72);
      if (LOBYTE(v72[0]) != 3)
      {
        [*v17 setShuffleMode_];
      }

      InternalMusicPlayer.Queue.repeatMode.getter(v72);
      if (LOBYTE(v72[0]) != 3)
      {
        [*v17 setRepeatMode_];
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_36;
      }
    }

    else
    {
      __break(1u);
    }

    sub_1D54B461C(v23, v24, v25, v26);
    v23 = v65;
LABEL_36:
    if (*(v23 + 16))
    {
      sub_1D526DAFC(v17, v8 + v23);
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_59(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem, &v68);
  sub_1D4F0AE7C();
  v67[0] = *(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackSource);
  v21 = *(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 40);

  if (v21)
  {
    [v21 musicKit_playerPath_isLocal];
  }

  v41 = v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName;
  OUTLINED_FUNCTION_59(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName, v71);
  v8 = *(v41 + 8);
  v42 = (v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData);
  OUTLINED_FUNCTION_59(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData, v70);
  v43 = *v42;
  v44 = v42[1];

  sub_1D50BA3D8(v43, v44);
  sub_1D542497C();
  v23 = v45;
  sub_1D50153E4(v43, v44);

  sub_1D4E50004(v72, &unk_1EC7F65C0, &qword_1D562E6B0);
  if (*(v23 + 16))
  {
    goto LABEL_30;
  }

LABEL_38:
  OUTLINED_FUNCTION_46();
}

void sub_1D5268FB8()
{
  OUTLINED_FUNCTION_47();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250);
  v2 = OUTLINED_FUNCTION_69(v1);
  v26 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v6);
  v7 = v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackIntent;
  OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackIntent, &v41);
  v8 = type metadata accessor for MusicPlaybackIntent(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    type metadata accessor for MusicPlaybackIntentDonation(0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    sub_1D4F0AE7C();
  }

  v25 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems);
  OUTLINED_FUNCTION_59(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest + v0, &v39);
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed, &v37);
  OUTLINED_FUNCTION_111_10();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem, &v35);
  sub_1D4F0AE7C();
  InternalMusicPlayer.Queue.repeatMode.getter(v33);
  v24 = v33[0];
  InternalMusicPlayer.Queue.shuffleMode.getter(v33);
  v13 = v33[0];
  OUTLINED_FUNCTION_46_1();
  sub_1D4F0AE7C();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_111_10();
  sub_1D4F0AE7C();
  sub_1D4F0AE7C();
  v14 = (v5 + ((*(v26 + 80) + 16) & ~*(v26 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1D4F0AB3C();
  *(v17 + v14) = v25;
  v18 = v17 + v15;
  *(v18 + 32) = v34;
  v19 = v33[1];
  *v18 = v33[0];
  *(v18 + 16) = v19;
  v20 = v17 + v16;
  *v20 = v30;
  *(v20 + 16) = v31;
  *(v20 + 32) = v32;
  v21 = v17 + ((v16 + 47) & 0xFFFFFFFFFFFFFFF8);
  *(v21 + 32) = v29;
  *v21 = v27;
  *(v21 + 16) = v28;
  *(v21 + 40) = v24;
  *(v21 + 41) = v13;

  sub_1D4FDCD38();

  sub_1D4E50004(&v36, &unk_1EC7F65C0, &qword_1D562E6B0);
  sub_1D4E50004(&v38, &unk_1EC7F2AB0, &unk_1D564A5D0);
  sub_1D4E50004(&v40, &qword_1EC7F06A0, &unk_1D5638850);
  v22 = OUTLINED_FUNCTION_46_1();
  sub_1D4E50004(v22, v23, &unk_1D5625250);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D526935C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 613) = a8;
  *(v8 + 612) = a7;
  *(v8 + 496) = a5;
  *(v8 + 504) = a6;
  *(v8 + 480) = a3;
  *(v8 + 488) = a4;
  *(v8 + 464) = a1;
  *(v8 + 472) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250);
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  *(v8 + 528) = type metadata accessor for MusicPlaybackIntentDonation(0);
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5269450, 0, 0);
}

uint64_t sub_1D5269450()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 528);
  sub_1D4F0AE7C();
  v2 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v2, v3, v1);
  if (v4)
  {
    v5 = *(v0 + 480);
    sub_1D4E50004(*(v0 + 520), &unk_1EC7ED460, &unk_1D5625250);
    v6 = *(v5 + 16);
    *(v0 + 552) = v6;
    if (v6)
    {
      *(v0 + 608) = *(v0 + 612);
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v0 + 560) = v7;
      *v7 = v8;
      v7[1] = sub_1D5269860;

      return static MusicPlaybackIntentDonation.playbackIntentDonation(with:startItem:repeatMode:shuffleMode:)();
    }

    else
    {
      sub_1D4F0AE7C();
      if (*(v0 + 320))
      {
        v15 = *(v0 + 612);
        sub_1D4E48324((v0 + 296), v0 + 256);
        *(v0 + 610) = v15;
        swift_task_alloc();
        OUTLINED_FUNCTION_58();
        *(v0 + 576) = v16;
        *v16 = v17;
        v16[1] = sub_1D5269958;

        return static MusicPlaybackIntentDonation.libraryPlaybackIntentDonation(from:startItem:repeatMode:shuffleMode:)();
      }

      else
      {
        sub_1D4E50004(v0 + 296, &qword_1EC7F06A0, &unk_1D5638850);
        sub_1D4F0AE7C();
        if (*(v0 + 400))
        {
          sub_1D4E48324((v0 + 376), v0 + 336);
          swift_task_alloc();
          OUTLINED_FUNCTION_58();
          *(v0 + 592) = v18;
          *v18 = v19;
          v18[1] = sub_1D526A110;
          v20 = *(v0 + 512);

          return static MusicPlaybackIntentDonation.radioPlaybackIntentDonation(from:)(v20, v0 + 336);
        }

        else
        {
          sub_1D4E50004(v0 + 376, &unk_1EC7F2AB0, &unk_1D564A5D0);
          if (qword_1EDD544B0 != -1)
          {
            swift_once();
          }

          v21 = sub_1D560C758();
          OUTLINED_FUNCTION_62_4(v21, qword_1EDD76AF0);
          v22 = sub_1D560C738();
          v23 = sub_1D56156C8();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = OUTLINED_FUNCTION_63_12();
            *v24 = 0;
            _os_log_impl(&dword_1D4E3F000, v22, v23, "Unable to generate MusicPlaybackIntentDonation from the given queue because it does not contain playable items, a playable request, or a station seed.", v24, 2u);
            OUTLINED_FUNCTION_122();
          }

          v25 = *(v0 + 528);

          OUTLINED_FUNCTION_33();
          __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
          v29 = OUTLINED_FUNCTION_21_53();

          return MEMORY[0x1EEE6DFA0](v29, v30, v31);
        }
      }
    }
  }

  else
  {
    v10 = *(v0 + 528);
    sub_1D526D94C();
    sub_1D526D94C();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    OUTLINED_FUNCTION_54_24();

    OUTLINED_FUNCTION_55();

    return v14();
  }
}

uint64_t sub_1D5269860()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 568) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5269958()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5269A50()
{
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  v1 = OUTLINED_FUNCTION_21_53();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D5269AA0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  __swift_destroy_boxed_opaque_existential_1((v1 + 256));
  v2 = *(v1 + 584);
  if (qword_1EDD54498 != -1)
  {
    OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
  }

  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76AC0);
  v4 = OUTLINED_FUNCTION_82();
  v5 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_177_4();
  if (OUTLINED_FUNCTION_152_0())
  {
    OUTLINED_FUNCTION_142();
    v6 = OUTLINED_FUNCTION_38_12();
    OUTLINED_FUNCTION_175_3(5.8381e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_88_1(v7);
    OUTLINED_FUNCTION_74_18(&dword_1D4E3F000, v8, v0, "Unable to generate MusicPlaybackIntentDonation from the given queue with error: %{public}@.");
    sub_1D4E50004(v6, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_54_24();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1D5269BFC()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 512);
  v3 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v3, v4, v1);
  if (!v5)
  {
    sub_1D526D94C();
    OUTLINED_FUNCTION_70();
    sub_1D526D94C();
    OUTLINED_FUNCTION_64_0();
    v13 = v1;
    goto LABEL_19;
  }

  v6 = *(v0 + 552);
  sub_1D4E50004(v2, &unk_1EC7ED460, &unk_1D5625250);
  if (v6)
  {
    v7 = *(v0 + 480);
    sub_1D5615B68();

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
    v9 = MEMORY[0x1DA6EAF70](v7, v8);
    MEMORY[0x1DA6EAC70](v9);

    OUTLINED_FUNCTION_174_4();
  }

  else
  {
    sub_1D4F0AE7C();
    if (*(v0 + 80))
    {
      sub_1D4E48324((v0 + 56), v0 + 16);
      sub_1D5615B68();
      *(v0 + 448) = 0;
      *(v0 + 456) = 0xE000000000000000;
      MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D56891B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C10, &qword_1D5638890);
      sub_1D5615D48();
      OUTLINED_FUNCTION_174_4();

      v14 = (v0 + 16);
    }

    else
    {
      sub_1D4E50004(v0 + 56, &qword_1EC7F06A0, &unk_1D5638850);
      sub_1D4F0AE7C();
      if (!*(v0 + 160))
      {
        sub_1D4E50004(v0 + 136, &unk_1EC7F2AB0, &unk_1D564A5D0);
        goto LABEL_10;
      }

      sub_1D4E48324((v0 + 136), v0 + 96);
      *(v0 + 432) = 0;
      *(v0 + 440) = 0xE000000000000000;
      MEMORY[0x1DA6EAC70](0x536E6F6974617473, 0xED0000203A646565);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F06B8, &unk_1D564AB50);
      sub_1D5615D48();
      OUTLINED_FUNCTION_174_4();

      v14 = (v0 + 96);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

LABEL_10:
  sub_1D4F0AE7C();
  if (*(v0 + 240))
  {
    sub_1D4E48324((v0 + 216), v0 + 176);
    sub_1D5615B68();
    *(v0 + 416) = 0;
    *(v0 + 424) = 0xE000000000000000;
    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D5689190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
    sub_1D5615D48();
    OUTLINED_FUNCTION_174_4();

    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  }

  else
  {
    sub_1D4E50004(v0 + 216, &unk_1EC7F65C0, &qword_1D562E6B0);
  }

  if (qword_1EDD54498 != -1)
  {
    OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
  }

  v15 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v15, qword_1EDD76AC0);

  v16 = sub_1D560C738();
  v17 = sub_1D56156C8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_142();
    v25 = swift_slowAlloc();
    *v18 = 136446210;
    v19 = OUTLINED_FUNCTION_98();
    v22 = sub_1D4E6835C(v19, v20, v21);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1D4E3F000, v16, v17, "Unable to generate MusicPlaybackIntentDonation from the given queue: %{public}s.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  OUTLINED_FUNCTION_33();
LABEL_19:
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54_24();

  OUTLINED_FUNCTION_55();

  return v23();
}

uint64_t sub_1D526A110()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 600) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D526A208()
{
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  v1 = OUTLINED_FUNCTION_21_53();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D526A258()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  __swift_destroy_boxed_opaque_existential_1((v1 + 336));
  v2 = *(v1 + 600);
  if (qword_1EDD54498 != -1)
  {
    OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
  }

  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76AC0);
  v4 = OUTLINED_FUNCTION_82();
  v5 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_177_4();
  if (OUTLINED_FUNCTION_152_0())
  {
    OUTLINED_FUNCTION_142();
    v6 = OUTLINED_FUNCTION_38_12();
    OUTLINED_FUNCTION_175_3(5.8381e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_88_1(v7);
    OUTLINED_FUNCTION_74_18(&dword_1D4E3F000, v8, v0, "Unable to generate MusicPlaybackIntentDonation from the given queue with error: %{public}@.");
    sub_1D4E50004(v6, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_54_24();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1D526A3B4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = *(v1 + 568);
  if (qword_1EDD54498 != -1)
  {
    OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
  }

  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76AC0);
  v4 = OUTLINED_FUNCTION_82();
  v5 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_177_4();
  if (OUTLINED_FUNCTION_152_0())
  {
    OUTLINED_FUNCTION_142();
    v6 = OUTLINED_FUNCTION_38_12();
    OUTLINED_FUNCTION_175_3(5.8381e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_88_1(v7);
    OUTLINED_FUNCTION_74_18(&dword_1D4E3F000, v8, v0, "Unable to generate MusicPlaybackIntentDonation from the given queue with error: %{public}@.");
    sub_1D4E50004(v6, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_54_24();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1D526A508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  if (a4)
  {
    v7 = swift_task_alloc();
    v6[3] = v7;
    *v7 = v6;
    v7[1] = sub_1D526A5D8;

    return sub_1D5434850();
  }

  else
  {
    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1D526A5D8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D526A6EC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  if (qword_1EDD54498 != -1)
  {
    OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
  }

  v2 = *(v0 + 32);
  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v3, qword_1EDD76AC0);
  v4 = v2;
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 32);
    OUTLINED_FUNCTION_142();
    v8 = OUTLINED_FUNCTION_38_12();
    *v1 = 138543362;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_88_1(v10);
    OUTLINED_FUNCTION_74_18(&dword_1D4E3F000, v11, v6, "InternalMusicPlayer updating repeat mode failed with error: %{public}@");
    sub_1D4E50004(v8, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  sub_1D56153C8();
  *(v0 + 40) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D526A844()
{
  OUTLINED_FUNCTION_60();

  sub_1D526A8A8();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D526A8A8()
{
  result = sub_1D525F948();
  *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientRepeatMode) = 3;
  return result;
}

uint64_t sub_1D526A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  if (a4)
  {
    v7 = swift_task_alloc();
    v6[3] = v7;
    *v7 = v6;
    v7[1] = sub_1D526A9A0;

    return sub_1D5434850();
  }

  else
  {
    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1D526A9A0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D526AAB4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  if (qword_1EDD54498 != -1)
  {
    OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
  }

  v2 = *(v0 + 32);
  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v3, qword_1EDD76AC0);
  v4 = v2;
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 32);
    OUTLINED_FUNCTION_142();
    v8 = OUTLINED_FUNCTION_38_12();
    *v1 = 138543362;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_88_1(v10);
    OUTLINED_FUNCTION_74_18(&dword_1D4E3F000, v11, v6, "InternalMusicPlayer updating shuffle mode failed with error: %{public}@");
    sub_1D4E50004(v8, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  sub_1D56153C8();
  *(v0 + 40) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D526AC0C()
{
  OUTLINED_FUNCTION_60();

  sub_1D526AC70();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D526AC70()
{
  result = sub_1D525F948();
  *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientShuffleMode) = 3;
  return result;
}

uint64_t sub_1D526AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  if (a4)
  {
    v7 = swift_task_alloc();
    v6[3] = v7;
    *v7 = v6;
    v7[1] = sub_1D526AD68;

    return sub_1D5434850();
  }

  else
  {
    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1D526AD68()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D526AE7C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  if (qword_1EDD54498 != -1)
  {
    OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
  }

  v2 = *(v0 + 32);
  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v3, qword_1EDD76AC0);
  v4 = v2;
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 32);
    OUTLINED_FUNCTION_142();
    v8 = OUTLINED_FUNCTION_38_12();
    *v1 = 138543362;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_88_1(v10);
    OUTLINED_FUNCTION_74_18(&dword_1D4E3F000, v11, v6, "InternalMusicPlayer updating auto-play failed with error: %{public}@");
    sub_1D4E50004(v8, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  sub_1D56153C8();
  *(v0 + 40) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D526AFD4()
{
  OUTLINED_FUNCTION_60();

  sub_1D526B090();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D526B038()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D526B090()
{
  result = sub_1D525F948();
  *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled) = 2;
  return result;
}

uint64_t sub_1D526B0B8(uint64_t result, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a4)
  {
    v16 = result;
    v23 = [a4 musicKit_responseTracklist_sectionedCollection];
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a4;
    v19[4] = v16;
    v19[5] = a5;
    v19[6] = a6;
    v19[7] = a7;
    v19[8] = a8;
    v19[9] = a9;
    v19[10] = a10;
    v19[11] = a11;
    v19[12] = a3;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1D526DBB8;
    *(v20 + 24) = v19;
    aBlock[4] = sub_1D526DBEC;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D526C5FC;
    aBlock[3] = &block_descriptor_95;
    v21 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v23 enumeratePlayerItemsInSectionAtIndex:a2 usingBlock:v21];

    _Block_release(v21);
    LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

    if (a5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D526B29C(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, _BYTE *a14)
{
  v52 = a8;
  v53 = a3;
  v59 = a6;
  v60 = a10;
  v61 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C30, &qword_1D564AB70);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v52 - v20;
  v58 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  v54 = *(v58 - 8);
  v22 = MEMORY[0x1EEE9AC00](v58);
  v55 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v52 - v24);
  v26 = sub_1D560C4A8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560C498();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F0160, &qword_1D5636220);
  v31 = &v21[*(v30 + 48)];
  v56 = v27;
  v57 = v26;
  (*(v27 + 16))(v21, v29, v26);
  if (a5)
  {
    v32 = [a5 musicKit_responseTracklist_underlyingSectionObjectAtIndexPathBlock];
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    v34 = sub_1D526DC14;
  }

  else
  {
    v34 = 0;
    v33 = 0;
  }

  *v31 = v34;
  *(v31 + 1) = v33;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v30);
  v35 = [a1 musicKit_playerResponseItem_contentItemIdentifier];
  v36 = sub_1D5614D68();
  v38 = v37;

  *v25 = v36;
  v25[1] = v38;
  sub_1D4F0AE7C();
  v39 = v58;
  v40 = *(v58 + 20);
  v41 = swift_unknownObjectRetain();
  sub_1D5103E84(v41, v19, (v25 + v40));
  sub_1D4E50004(v21, &unk_1EC7F2C30, &qword_1D564AB70);
  v42 = v60;
  v43 = v61;
  switch(v59)
  {
    case 1:
      if (!sub_1D52F8A78(3u, v61))
      {
        goto LABEL_31;
      }

      sub_1D526D7D8();
      v44 = v52;
      goto LABEL_42;
    case 2:
      (*(v56 + 8))(v29, v57);
      sub_1D4E50004(a9, &qword_1EC7F2AA8, &unk_1D564A5C0);
      sub_1D526D94C();
      return __swift_storeEnumTagSinglePayload(a9, 0, 1, v39);
    case 3:
      v45 = *v60;
      if (sub_1D52F8A78(2u, v61))
      {
        if (v45 >= 99)
        {
          goto LABEL_31;
        }
      }

      else if (sub_1D52F8A78(1u, v43))
      {
        if (v45 >= 1)
        {
          goto LABEL_31;
        }
      }

      else if ((v45 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v44 = a11;
      goto LABEL_41;
    case 4:
      v45 = *v60;
      if (sub_1D52F8A78(2u, v61))
      {
        if (v45 >= 99)
        {
          goto LABEL_31;
        }
      }

      else if (sub_1D52F8A78(1u, v43))
      {
        if (v45 >= 1)
        {
          goto LABEL_31;
        }
      }

      else if ((v45 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v44 = a12;
      goto LABEL_41;
    case 5:
      v45 = *v60;
      if (sub_1D52F8A78(2u, v61))
      {
        if (v45 >= 99)
        {
LABEL_31:
          v47 = *v42;
          if (sub_1D52F8A78(2u, v43))
          {
            v49 = v56;
            v48 = v57;
            if (v47 < 99)
            {
LABEL_34:
              sub_1D526D3A4(v25, type metadata accessor for InternalMusicPlayer.Queue.Entry);
              return (*(v49 + 8))(v29, v48);
            }
          }

          else
          {
            v50 = sub_1D52F8A78(1u, v43);
            v49 = v56;
            v48 = v57;
            if (v50)
            {
              if (v47 < 1)
              {
                goto LABEL_34;
              }
            }

            else if (v47 < 0)
            {
              goto LABEL_34;
            }
          }

          *v53 = 1;
          *a14 = 1;
          goto LABEL_34;
        }
      }

      else if (sub_1D52F8A78(1u, v43))
      {
        if (v45 >= 1)
        {
          goto LABEL_31;
        }
      }

      else if ((v45 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v44 = a13;
LABEL_41:
      *v42 = v45 + 1;
      sub_1D526D7D8();
LABEL_42:
      sub_1D4EFF604();
      v51 = *(*v44 + 16);
      sub_1D4EFF83C(v51);
      sub_1D526D3A4(v25, type metadata accessor for InternalMusicPlayer.Queue.Entry);
      (*(v56 + 8))(v29, v57);
      *(*v44 + 16) = v51 + 1;
      return sub_1D526D94C();
    default:
      goto LABEL_31;
  }
}

double sub_1D526B8BC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = sub_1D560C478();
  v5 = (*(a1 + 16))(a1, v4);

  if (v5)
  {
    sub_1D56159A8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1D526B954()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_69_0();
  v3 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AA8, &unk_1D564A5C0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_71_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BD0, &qword_1D564AB30);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  sub_1D4EFA358();
  if ((v9 & 1) == 0)
  {
    goto LABEL_22;
  }

  _s5QueueC10PropertiesVMa(0);
  v10 = *(v7 + 48);
  OUTLINED_FUNCTION_111_10();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_111_10();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_57(v0, 1, v3);
  if (!v11)
  {
    sub_1D4F0AE7C();
    OUTLINED_FUNCTION_57(v0 + v10, 1, v3);
    if (!v11)
    {
      OUTLINED_FUNCTION_25_48();
      sub_1D526D94C();
      v15 = *v2 == *v1 && v2[1] == v1[1];
      if (v15 || (sub_1D5616168() & 1) != 0)
      {
        v16 = sub_1D5104E50((v2 + *(v3 + 20)), (v1 + *(v3 + 20)));
        sub_1D526D3A4(v1, type metadata accessor for InternalMusicPlayer.Queue.Entry);
        v17 = OUTLINED_FUNCTION_97_1();
        sub_1D526D3A4(v17, v18);
        sub_1D4E50004(v0, &qword_1EC7F2AA8, &unk_1D564A5C0);
        if ((v16 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      sub_1D526D3A4(v1, type metadata accessor for InternalMusicPlayer.Queue.Entry);
      sub_1D526D3A4(v2, type metadata accessor for InternalMusicPlayer.Queue.Entry);
      v13 = &qword_1EC7F2AA8;
      v14 = &unk_1D564A5C0;
LABEL_11:
      sub_1D4E50004(v0, v13, v14);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_1_116();
    sub_1D526D3A4(v2, v12);
LABEL_10:
    v13 = &unk_1EC7F2BD0;
    v14 = &qword_1D564AB30;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_57(v0 + v10, 1, v3);
  if (!v11)
  {
    goto LABEL_10;
  }

  sub_1D4E50004(v0, &qword_1EC7F2AA8, &unk_1D564A5C0);
LABEL_18:
  sub_1D4EFA358();
  if (v19)
  {
    sub_1D4EFA358();
    if (v20)
    {
      sub_1D4EFA358();
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_46();
}

void sub_1D526BCF8()
{
  OUTLINED_FUNCTION_191();
  v3 = v2;
  v4 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v6 = OUTLINED_FUNCTION_97_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_118_1();
  sub_1D4F08A4C(v3);
  v10 = _s5QueueC10PropertiesVMa(0);
  OUTLINED_FUNCTION_137_8(v0 + v10[5]);
  v11 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v11, v12, v4);
  if (v13)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_48();
    sub_1D526D94C();
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
    sub_1D5105370(v3);
    OUTLINED_FUNCTION_1_116();
    sub_1D526D3A4(v1, v14);
  }

  sub_1D4F08A4C(v3);
  sub_1D4F08A4C(v3);
  sub_1D4F08A4C(v3);
  v15 = *(v0 + v10[9]);
  if (v15 == 3)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v15);
  }

  v16 = *(v0 + v10[10]);
  if (v16 == 3)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v16);
  }

  if (*(v0 + v10[11]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v17 = (v0 + v10[12]);
  if (*(v17 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v18 = *v17;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v18);
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D526BEEC()
{
  OUTLINED_FUNCTION_47();
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v7 = OUTLINED_FUNCTION_23_48();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BC0, &qword_1D564AB28);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_118_1();
  v11 = *(v10 + 56);
  sub_1D526D7D8();
  sub_1D526D7D8();
  OUTLINED_FUNCTION_1(v0);
  if (!v13)
  {
    OUTLINED_FUNCTION_6_85();
    OUTLINED_FUNCTION_21_1();
    sub_1D526D7D8();
    OUTLINED_FUNCTION_1(v0 + v11);
    if (!v13)
    {
      (*(v5 + 32))(v1, v0 + v11, v3);
      OUTLINED_FUNCTION_61();
      sub_1D560C348();
      v14 = *(v5 + 8);
      v15 = OUTLINED_FUNCTION_98();
      v14(v15);
      (v14)(v2, v3);
      OUTLINED_FUNCTION_29_42();
      sub_1D526D3A4(v0, v16);
      goto LABEL_10;
    }

    (*(v5 + 8))(v2, v3);
LABEL_9:
    sub_1D4E50004(v0, &unk_1EC7F2BC0, &qword_1D564AB28);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1(v0 + v11);
  if (!v13)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_29_42();
  sub_1D526D3A4(v0, v12);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D526C100()
{
  OUTLINED_FUNCTION_147();
  sub_1D560C368();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v2 = OUTLINED_FUNCTION_23_48();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_6_85();
  OUTLINED_FUNCTION_75_2();
  sub_1D526D7D8();
  OUTLINED_FUNCTION_1(v0);
  if (v3)
  {
    return MEMORY[0x1DA6EC0D0](0);
  }

  v4 = OUTLINED_FUNCTION_46_1();
  v5(v4);
  MEMORY[0x1DA6EC0D0](1);
  OUTLINED_FUNCTION_28_47();
  sub_1D4E64524(v6, v7, MEMORY[0x1E69695B8]);
  sub_1D5614CB8();
  v8 = OUTLINED_FUNCTION_98();
  return v9(v8);
}

uint64_t sub_1D526C250(uint64_t (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

void sub_1D526C298()
{
  OUTLINED_FUNCTION_69_0();
  if (sub_1D4F0B2E4())
  {
    _s5QueueC3KeyVMa(0);

    sub_1D526BEEC();
  }
}

uint64_t sub_1D526C2FC(uint64_t a1)
{
  sub_1D560C368();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v3 = OUTLINED_FUNCTION_23_48();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  sub_1D4F0B2F8();
  _s5QueueC3KeyVMa(0);
  OUTLINED_FUNCTION_6_85();
  sub_1D526D7D8();
  OUTLINED_FUNCTION_1(v1);
  if (v4)
  {
    return MEMORY[0x1DA6EC0D0](0);
  }

  v5 = OUTLINED_FUNCTION_70();
  v6(v5);
  MEMORY[0x1DA6EC0D0](1);
  OUTLINED_FUNCTION_28_47();
  sub_1D4E64524(v7, v8, MEMORY[0x1E69695B8]);
  sub_1D5614CB8();
  v9 = OUTLINED_FUNCTION_98();
  return v10(v9);
}

uint64_t sub_1D526C474()
{
  sub_1D560C368();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v2 = OUTLINED_FUNCTION_23_48();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_7();
  sub_1D56162D8();
  sub_1D4F0B2F8();
  _s5QueueC3KeyVMa(0);
  OUTLINED_FUNCTION_6_85();
  sub_1D526D7D8();
  OUTLINED_FUNCTION_1(v0);
  if (v3)
  {
    MEMORY[0x1DA6EC0D0](0);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_46_1();
    v5(v4);
    MEMORY[0x1DA6EC0D0](1);
    OUTLINED_FUNCTION_28_47();
    sub_1D4E64524(v6, v7, MEMORY[0x1E69695B8]);
    sub_1D5614CB8();
    v8 = OUTLINED_FUNCTION_98();
    v9(v8);
  }

  return sub_1D5616328();
}

uint64_t sub_1D526C5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D526C734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

uint64_t sub_1D526C784(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D560C368();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s5QueueC4KindOMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D56162D8();
  sub_1D4F0B2F8();
  sub_1D526D7D8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    MEMORY[0x1DA6EC0D0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1DA6EC0D0](1);
    sub_1D4E64524(&qword_1EDD5F560, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D5614CB8();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1D5616328();
}

uint64_t InternalMusicPlayer.Queue.deinit()
{

  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_pendingStartEntry, &qword_1EC7F2AA8, &unk_1D564A5C0);

  OUTLINED_FUNCTION_29_42();
  sub_1D526D3A4(v0 + v1, v2);
  swift_weakDestroy();

  sub_1D50153E4(*(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData + 8));

  sub_1D4E50004(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest + v0, &qword_1EC7F06A0, &unk_1D5638850);
  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed, &unk_1EC7F2AB0, &unk_1D564A5D0);
  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem, &unk_1EC7F65C0, &qword_1D562E6B0);
  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackIntent, &qword_1EC7F2AC0, &qword_1D564A5E0);
  sub_1D526CDE8(*(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 8), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 16), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 24), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 32), *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 40));
  sub_1D4E50004(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_properties, &qword_1EC7F2AC8, &qword_1D564A5E8);
  v3 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_activeMonitoringPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t InternalMusicPlayer.Queue.__deallocating_deinit()
{
  InternalMusicPlayer.Queue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D526CB9C@<X0>(uint64_t *a1@<X8>)
{
  result = InternalMusicPlayer.Queue.objectWillChange.getter();
  *a1 = result;
  return result;
}

double static InternalMusicPlayer.Queue.EntryInsertionPosition.allCases.getter()
{
  OUTLINED_FUNCTION_59(&off_1EC7F2AA0, v1);

  return result;
}

uint64_t static InternalMusicPlayer.Queue.EntryInsertionPosition.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_97_13(a1, v3);
  off_1EC7F2AA0 = a1;
}

uint64_t (*static InternalMusicPlayer.Queue.EntryInsertionPosition.allCases.modify())(uint64_t)
{
  v0 = OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_54_0(v0, v1);
  return j_j__swift_endAccess;
}

double sub_1D526CCA4@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7F2AA0;

  return result;
}

uint64_t sub_1D526CCF4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7F2AA0 = v1;
}

uint64_t sub_1D526CDE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_1D4E62868(result, a2, a3);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D526CE34()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_186_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D526CEC8()
{
  OUTLINED_FUNCTION_91();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_22(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_19_57();

  return sub_1D52640E8(v4, v5, v6, v7, v8);
}

void sub_1D526D00C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(*v3 + 16);
  if (v4 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(a3 + 16);
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v4, v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1D4F061A4(v4 + v8, 1);

  sub_1D54FBA98();
}

uint64_t sub_1D526D0B0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v5 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __OFSUB__(1, v7);
  v9 = 1 - v7;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  a4(result, 1);
  v10 = OUTLINED_FUNCTION_61();

  return a5(v10);
}

uint64_t sub_1D526D160()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_163_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_19_57();

  return sub_1D5264B34(v5, v6, v7, v8, v2, v0);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D526D258()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_163_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_19_57();

  return sub_1D5265500(v5, v6, v7, v8, v2, v0);
}

uint64_t sub_1D526D300()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_153_1();

  return sub_1D5265E34(v3, v4, v5, v6, v7);
}

uint64_t sub_1D526D3A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D526D444()
{
  result = qword_1EDD5E280;
  if (!qword_1EDD5E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E280);
  }

  return result;
}

unint64_t sub_1D526D4E0()
{
  result = qword_1EC7F2B98;
  if (!qword_1EC7F2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2B98);
  }

  return result;
}

unint64_t sub_1D526D538()
{
  result = qword_1EC7F2BA0;
  if (!qword_1EC7F2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2BA0);
  }

  return result;
}

_BYTE *sub_1D526D61C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D526D7D8()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

void sub_1D526D830()
{
  OUTLINED_FUNCTION_191();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = *(*v0 + 16);
  if (v4 < v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v1;
  v6 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v1 - v2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1D4F061BC(v4 - v6, 1);
  v8 = *v0;
  sub_1D5613838();
  OUTLINED_FUNCTION_120_8();
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v12 = *(v11 + 72);
  v13 = v10 + v12 * v5;
  OUTLINED_FUNCTION_46_1();
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v0 = v8;
    OUTLINED_FUNCTION_190();
    return;
  }

  v14 = *(v8 + 16);
  if (__OFSUB__(v14, v3))
  {
    goto LABEL_16;
  }

  sub_1D4F037CC(v10 + v12 * v3, v14 - v3, v13);
  v15 = *(v8 + 16);
  v16 = __OFADD__(v15, v7);
  v17 = v15 - v6;
  if (!v16)
  {
    *(v8 + 16) = v17;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1D526D94C()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D526D9A4()
{
  OUTLINED_FUNCTION_142_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED460, &unk_1D5625250);
  OUTLINED_FUNCTION_69(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v6);
  v10 = v0 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 41);
  v12 = *(v10 + 40);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_86(v13);
  *v14 = v15;
  v14[1] = sub_1D4E73560;

  return sub_1D526935C(v1, v0 + v4, v9, v0 + v7, v0 + v8, v0 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8), v12, v11);
}

uint64_t sub_1D526DAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPlaybackIntent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D526DC1C()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_142_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_69(v0);
  OUTLINED_FUNCTION_41_33();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_86(v1);
  *v2 = v3;
  v2[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_25_3();

  return sub_1D526AC98(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D526DD14()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_142_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_69(v0);
  OUTLINED_FUNCTION_41_33();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_86(v1);
  *v2 = v3;
  v2[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_25_3();

  return sub_1D526A8D0(v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_116Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D526DEEC()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_142_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  OUTLINED_FUNCTION_69(v0);
  OUTLINED_FUNCTION_41_33();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_86(v1);
  *v2 = v3;
  v2[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_25_3();

  return sub_1D526A508(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D526DFE4()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_186_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_33_42(uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_42_30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1D560EC98();
}

void OUTLINED_FUNCTION_74_18(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_78_17()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_80_10()
{

  return sub_1D526D3A4(v0, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
}

uint64_t OUTLINED_FUNCTION_97_13(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_105_12()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_106_10()
{
  *(v2 + v0) = v1;
  v6 = *(v4 - 192);

  return __swift_getEnumTagSinglePayload(v6, 1, v3);
}

uint64_t OUTLINED_FUNCTION_110_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_116_12(uint64_t a1)
{

  return sub_1D5612878();
}

void OUTLINED_FUNCTION_121_8(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  *v3 = a2;
  v3[1] = a2;
  v3[2].n128_u64[0] = 0;
}

uint64_t OUTLINED_FUNCTION_131_5()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_134_7()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_135_9()
{

  return sub_1D56151B8();
}

uint64_t OUTLINED_FUNCTION_136_7()
{
  v2[14] = v0;
  v2[15] = v1;
  v2[2] = v0;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_139_8()
{
}

void OUTLINED_FUNCTION_151_6()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[2] = 0;
}

uint64_t OUTLINED_FUNCTION_170_3()
{

  return sub_1D5612858();
}

uint64_t *OUTLINED_FUNCTION_171_3()
{
  v3 = *(v1 - 296);
  *(v1 - 136) = v0;
  *(v1 - 128) = v3;

  return __swift_allocate_boxed_opaque_existential_0((v1 - 160));
}

void OUTLINED_FUNCTION_174_4()
{

  JUMPOUT(0x1DA6EAC70);
}

id OUTLINED_FUNCTION_175_3(float a1)
{
  *v2 = a1;

  return v1;
}

void OUTLINED_FUNCTION_177_4()
{
}

uint64_t OUTLINED_FUNCTION_180_2()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_181_4()
{

  return sub_1D4F0AE7C();
}

uint64_t sub_1D526E550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v27[1] = a3;
  v7 = sub_1D560D838();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D560F0C8();
  if (result)
  {
    v16 = 3;
LABEL_3:
    *a4 = v16;
    return result;
  }

  v27[0] = v8;
  v28 = a1;
  sub_1D4E5A1CC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  if ((v37[0] & 0xFE) == 2)
  {
    v17 = v28;
  }

  else
  {
    v17 = v28;
    if (v37[0])
    {
      v16 = 4;
      goto LABEL_3;
    }
  }

  (*(v12 + 16))(v14, v17, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if (swift_dynamicCast())
  {
    sub_1D4F69344(&v34, v37);
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    sub_1D560DB68();
    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      if (swift_dynamicCast())
      {
        if (*(&v32 + 1))
        {
          sub_1D4F69344(&v31, &v34);
          v18 = *(&v35 + 1);
          v19 = v36;
          v20 = __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
          sub_1D4F67EE4(v20, v18, v19);
          v21 = v31;
          v22 = BYTE8(v31);
          if ((MusicLibrary.isRemovalRestricted.getter() & 1) == 0)
          {
            sub_1D560EC98();
            sub_1D560D728();
            v24 = v23;
            (*(v27[0] + 8))(v11, v7);
            if (!v24)
            {
              if (!v22 || (v22 == 2 ? (v26 = (v21 & 0xFFFFFFFFFFFFFFFELL) == 2) : (v26 = 0), v26))
              {
                v25 = 5;
              }

              else
              {
                v25 = 2;
              }

              goto LABEL_16;
            }
          }

          v25 = 1;
LABEL_16:
          *a4 = v25;
          __swift_destroy_boxed_opaque_existential_1(&v34);
          return __swift_destroy_boxed_opaque_existential_1(v37);
        }
      }

      else
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
      }
    }

    else
    {
      sub_1D4E6C9CC(v29, &qword_1EC7EEC40, &unk_1D561C070);
      v31 = 0u;
      v32 = 0u;
      v33 = 0;
    }

    sub_1D4E6C9CC(&v31, &qword_1EC7EC548, &qword_1D5621090);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    result = sub_1D4E6C9CC(&v34, &qword_1EC7EC548, &qword_1D5621090);
  }

  *a4 = 0;
  return result;
}

uint64_t MusicLibrary.RemoveDownloadAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D526EA04()
{
  result = qword_1EC7F2C80;
  if (!qword_1EC7F2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2C80);
  }

  return result;
}

_BYTE *_s20RemoveDownloadActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s20RemoveDownloadActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D526EC2C()
{
  OUTLINED_FUNCTION_47();
  v1 = OUTLINED_FUNCTION_116_9();
  type metadata accessor for Playlist.Folder(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_206_2();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_92_14();
    sub_1D4F03D34(v3, v4, v5);
    OUTLINED_FUNCTION_65_23();
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_93_14();
      if (v6)
      {
        OUTLINED_FUNCTION_150_9();
        sub_1D4F03D34(v9, v10, v11);
      }

      v7 = sub_1D5286090(&qword_1EC7EA530, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
      OUTLINED_FUNCTION_181_2(v7);
      OUTLINED_FUNCTION_123_4();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_188_4();
      OUTLINED_FUNCTION_221_1();
      OUTLINED_FUNCTION_291_0();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D526EE28()
{
  OUTLINED_FUNCTION_47();
  v25 = v0;
  v26 = v1;
  v24 = v2;
  v4 = v3;
  v6 = v5(0);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = *(v4 + 16);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_109_14();
    sub_1D4F047CC(v13, v12, 0);
    v14 = v29;
    v17 = *(v8 + 16);
    v16 = v8 + 16;
    v15 = v17;
    v18 = v4 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v23 = *(v16 + 56);
    do
    {
      v15(v11, v18, v6);
      v29 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D4F047CC(v19 > 1, v20 + 1, 1);
      }

      v28 = v6;
      v21 = sub_1D5286090(v24, v25, v26);
      v22 = OUTLINED_FUNCTION_181_2(v21);
      v15(v22, v11, v6);
      v14 = v29;
      *(v29 + 16) = v20 + 1;
      sub_1D4E48324(&v27, v14 + 40 * v20 + 32);
      (*(v16 - 8))(v11, v6);
      v18 += v23;
      --v12;
    }

    while (v12);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D526F3EC()
{
  OUTLINED_FUNCTION_47();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    v3 = OUTLINED_FUNCTION_109_14();
    sub_1D4F03D74(v3, v1, 0);
    v4 = v2 + 32;
    v5 = v19;
    do
    {
      sub_1D4E62938(v4, &v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      swift_dynamicCast();
      v19 = v5;
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D4F03D74(v6 > 1, v7 + 1, 1);
      }

      v8 = v18[3];
      v9 = v18[4];
      v10 = OUTLINED_FUNCTION_204_3();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
      MEMORY[0x1EEE9AC00](v12);
      OUTLINED_FUNCTION_5();
      v15 = v14 - v13;
      (*(v16 + 16))(v14 - v13);
      sub_1D5285F50(v7, v15, &v19, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v5 = v19;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D526F5DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v7 = OUTLINED_FUNCTION_108_11();
    sub_1D4F047CC(v7, v8, v9);
    v4 = v16;
    do
    {
      v16 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_270_0(v10 > 1);
        v4 = v16;
      }

      v14 = a2;
      v15 = a3();
      *(v4 + 16) = v11 + 1;
      sub_1D4E48324(&v13, v4 + 40 * v11 + 32);
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1D526F70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v26 = MEMORY[0x1E69E7CC0];
    v8 = OUTLINED_FUNCTION_108_11();
    sub_1D4F047CC(v8, v9, v10);
    v4 = v26;
    v11 = a1 + 32;
    do
    {
      ++v11;
      OUTLINED_FUNCTION_284_0();
      if (v13)
      {
        OUTLINED_FUNCTION_270_0(v12 > 1);
        v4 = v26;
      }

      v14 = a3();
      OUTLINED_FUNCTION_254_0(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, a2, v25);
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1D526F7E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v26 = MEMORY[0x1E69E7CC0];
    v8 = OUTLINED_FUNCTION_108_11();
    sub_1D4F047CC(v8, v9, v10);
    v4 = v26;
    v11 = a1 + 32;
    do
    {
      OUTLINED_FUNCTION_284_0();
      if (v13)
      {
        OUTLINED_FUNCTION_270_0(v12 > 1);
        v4 = v26;
      }

      v14 = a3();
      OUTLINED_FUNCTION_254_0(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, a2, v25);
      ++v11;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_1D526F8A8()
{
  OUTLINED_FUNCTION_47();
  v1 = OUTLINED_FUNCTION_116_9();
  type metadata accessor for TVSeason(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_206_2();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_92_14();
    sub_1D4F03D74(v3, v4, v5);
    OUTLINED_FUNCTION_65_23();
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_93_14();
      if (v6)
      {
        OUTLINED_FUNCTION_150_9();
        sub_1D4F03D74(v9, v10, v11);
      }

      v7 = sub_1D5286090(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      OUTLINED_FUNCTION_181_2(v7);
      OUTLINED_FUNCTION_123_4();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_188_4();
      OUTLINED_FUNCTION_221_1();
      OUTLINED_FUNCTION_291_0();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D526FA14()
{
  OUTLINED_FUNCTION_47();
  v1 = OUTLINED_FUNCTION_116_9();
  type metadata accessor for TVEpisode(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_206_2();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_92_14();
    sub_1D4F03D74(v3, v4, v5);
    OUTLINED_FUNCTION_65_23();
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_93_14();
      if (v6)
      {
        OUTLINED_FUNCTION_150_9();
        sub_1D4F03D74(v9, v10, v11);
      }

      v7 = sub_1D5286090(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_181_2(v7);
      OUTLINED_FUNCTION_123_4();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_188_4();
      OUTLINED_FUNCTION_221_1();
      OUTLINED_FUNCTION_291_0();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D526FBC0()
{
  OUTLINED_FUNCTION_47();
  v1 = OUTLINED_FUNCTION_116_9();
  type metadata accessor for MusicMovie(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_206_2();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_92_14();
    sub_1D4F03D74(v3, v4, v5);
    OUTLINED_FUNCTION_65_23();
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_93_14();
      if (v6)
      {
        OUTLINED_FUNCTION_150_9();
        sub_1D4F03D74(v9, v10, v11);
      }

      v7 = sub_1D5286090(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_181_2(v7);
      OUTLINED_FUNCTION_123_4();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_188_4();
      OUTLINED_FUNCTION_221_1();
      OUTLINED_FUNCTION_291_0();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

void sub_1D526FD4C()
{
  OUTLINED_FUNCTION_47();
  v25 = v3;
  v5 = v4;
  v7 = v6(0);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_150_1();
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_109_14();
    sub_1D4F03D74(v12, v11, 0);
    v15 = *(v9 + 16);
    v13 = v9 + 16;
    v14 = v15;
    v16 = v5 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v24 = *(v13 + 56);
    do
    {
      v17 = OUTLINED_FUNCTION_91_0();
      v14(v17);
      OUTLINED_FUNCTION_93_14();
      if (v18)
      {
        OUTLINED_FUNCTION_150_9();
        sub_1D4F03D74(v21, v22, v23);
      }

      v27 = v7;
      v28 = v25;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v26);
      (v14)(boxed_opaque_existential_0, v0, v7);
      v20 = v29;
      *(v29 + 16) = v1;
      sub_1D4E48324(&v26, v20 + 40 * v2 + 32);
      (*(v13 - 8))(v0, v7);
      v16 += v24;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D526FECC(uint64_t a1)
{
  v2 = sub_1D526FF88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D526FF08(uint64_t a1)
{
  v2 = sub_1D526FF88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D526FF88()
{
  result = qword_1EC7F2C90;
  if (!qword_1EC7F2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2C90);
  }

  return result;
}

uint64_t sub_1D527001C(uint64_t a1)
{
  v2 = sub_1D52700D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5270058(uint64_t a1)
{
  v2 = sub_1D52700D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D52700D8()
{
  result = qword_1EC7F2CA0;
  if (!qword_1EC7F2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2CA0);
  }

  return result;
}

uint64_t sub_1D5270144(uint64_t a1)
{
  v2 = sub_1D5270200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5270180(uint64_t a1)
{
  v2 = sub_1D5270200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D5270200()
{
  result = qword_1EC7F2CB0;
  if (!qword_1EC7F2CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2CB0);
  }

  return result;
}

uint64_t sub_1D527026C(uint64_t a1)
{
  v2 = sub_1D5270428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52702A8(uint64_t a1)
{
  v2 = sub_1D5270428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D5270328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_4();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_1D56163D8();
  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5270428()
{
  result = qword_1EC7F2CC0;
  if (!qword_1EC7F2CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2CC0);
  }

  return result;
}

void CloudMusicShareableItem.id.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v26 = type metadata accessor for CloudUploadedVideo(0);
  v27 = OUTLINED_FUNCTION_22(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v116 = v28;
  v29 = OUTLINED_FUNCTION_70_0();
  v30 = type metadata accessor for CloudTVShow(v29);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v115 = v32;
  v33 = OUTLINED_FUNCTION_70_0();
  v34 = type metadata accessor for CloudTVEpisode(v33);
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v114 = v36;
  OUTLINED_FUNCTION_70_0();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v112 = v38;
  v113 = v37;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  v111 = v39;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614A18();
  OUTLINED_FUNCTION_4();
  v109 = v41;
  v110 = v40;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  v108 = v42;
  OUTLINED_FUNCTION_70_0();
  sub_1D5611998();
  OUTLINED_FUNCTION_4();
  v106 = v44;
  v107 = v43;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v105 = v45;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610C48();
  OUTLINED_FUNCTION_4();
  v103 = v47;
  v104 = v46;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  v102 = v48;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610908();
  OUTLINED_FUNCTION_4();
  v100 = v50;
  v101 = v49;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  v99 = v51;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v97 = v53;
  v98 = v52;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v54);
  v55 = sub_1D560D068();
  v56 = OUTLINED_FUNCTION_12_0(v55, &a17);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  v58 = OUTLINED_FUNCTION_48(v57);
  v59 = type metadata accessor for CloudMusicMovie(v58);
  v60 = OUTLINED_FUNCTION_22(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v61);
  v62 = sub_1D560F478();
  v63 = OUTLINED_FUNCTION_12_0(v62, &a13);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  v64 = sub_1D560FB08();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v66 = sub_1D560F7A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v68 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v69);
  v70 = OUTLINED_FUNCTION_13_0();
  v71 = type metadata accessor for CloudMusicShareableItem(v70);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5();
  v75 = v74 - v73;
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  OUTLINED_FUNCTION_143();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_172();
      (*(v89 + 32))(v22, v75, v66);
      sub_1D560F6F8();
      (*(v71 + 8))(v22, v66);
      break;
    case 2u:
      OUTLINED_FUNCTION_172();
      (*(v85 + 32))(v23, v75, v64);
      sub_1D560FA38();
      OUTLINED_FUNCTION_297_0();
      (*(v71 + 8))(v23, v64);
      break;
    case 3u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_56_1();
      v86();
      sub_1D560F3C8();
      OUTLINED_FUNCTION_297_0();
      (*(v68 + 8))(v21, v71);
      break;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_165_4();
      sub_1D5285360();
      OUTLINED_FUNCTION_299_0();
      v80 = type metadata accessor for CloudMusicMovie;
      goto LABEL_15;
    case 5u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_11_21();
      OUTLINED_FUNCTION_56_1();
      v90();
      sub_1D560CFB8();
      goto LABEL_19;
    case 6u:
      v68 = v97;
      v71 = v98;
      OUTLINED_FUNCTION_33_1();
      v91 = OUTLINED_FUNCTION_11_21();
      v92(v91, v75, v98);
      sub_1D56104A8();
      goto LABEL_19;
    case 7u:
      v20 = v99;
      v68 = v100;
      v87 = OUTLINED_FUNCTION_81_20();
      v71 = v101;
      v88(v87);
      sub_1D5610868();
      goto LABEL_19;
    case 8u:
      v20 = v102;
      v68 = v103;
      v95 = OUTLINED_FUNCTION_81_20();
      v71 = v104;
      v96(v95);
      sub_1D5610B98();
      goto LABEL_19;
    case 9u:
      v20 = v105;
      v68 = v106;
      v83 = OUTLINED_FUNCTION_81_20();
      v71 = v107;
      v84(v83);
      sub_1D5611938();
      goto LABEL_19;
    case 0xAu:
      v20 = v108;
      v68 = v109;
      v93 = OUTLINED_FUNCTION_81_20();
      v71 = v110;
      v94(v93);
      sub_1D5614968();
      goto LABEL_19;
    case 0xBu:
      v20 = v111;
      v68 = v112;
      v81 = OUTLINED_FUNCTION_81_20();
      v71 = v113;
      v82(v81);
      sub_1D560FC88();
LABEL_19:
      OUTLINED_FUNCTION_297_0();
      (*(v68 + 8))(v20, v71);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v71 = v114;
      sub_1D5285360();
      OUTLINED_FUNCTION_299_0();
      v80 = type metadata accessor for CloudTVEpisode;
      goto LABEL_15;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v71 = v115;
      sub_1D5285360();
      OUTLINED_FUNCTION_299_0();
      v80 = type metadata accessor for CloudTVShow;
      goto LABEL_15;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v71 = v116;
      sub_1D5285360();
      OUTLINED_FUNCTION_299_0();
      v80 = type metadata accessor for CloudUploadedVideo;
LABEL_15:
      sub_1D5285EA4(v71, v80);
      break;
    default:
      v76 = OUTLINED_FUNCTION_135_2();
      v77(v76, v75, v68);
      sub_1D560F248();
      OUTLINED_FUNCTION_297_0();
      v78 = OUTLINED_FUNCTION_222();
      v79(v78);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t type metadata accessor for CloudMusicShareableItem(uint64_t a1)
{
  result = qword_1EC7F2FF0;
  if (!qword_1EC7F2FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CloudMusicShareableItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v185 = v24;
  v186 = v23;
  v25 = type metadata accessor for CloudUploadedVideo(0);
  v26 = OUTLINED_FUNCTION_22(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v28 = OUTLINED_FUNCTION_48(v27);
  v29 = type metadata accessor for CloudTVShow(v28);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v32 = OUTLINED_FUNCTION_48(v31);
  v33 = type metadata accessor for CloudTVEpisode(v32);
  v34 = OUTLINED_FUNCTION_22(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v35);
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v174 = v37;
  v175 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v38);
  sub_1D5614A18();
  OUTLINED_FUNCTION_4();
  v172 = v40;
  v173 = v39;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v41);
  sub_1D5611998();
  OUTLINED_FUNCTION_4();
  v170 = v43;
  v171 = v42;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v44);
  sub_1D5610C48();
  OUTLINED_FUNCTION_4();
  v168 = v46;
  v169 = v45;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v47);
  sub_1D5610908();
  OUTLINED_FUNCTION_4();
  v166 = v49;
  v167 = v48;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v50);
  v51 = sub_1D5610588();
  v52 = OUTLINED_FUNCTION_12_0(v51, &a18);
  v165[26] = v53;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v54);
  v55 = sub_1D560D068();
  v56 = OUTLINED_FUNCTION_12_0(v55, &a16);
  v165[24] = v57;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  v59 = OUTLINED_FUNCTION_48(v58);
  v60 = type metadata accessor for CloudMusicMovie(v59);
  v61 = OUTLINED_FUNCTION_22(v60);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v62);
  v63 = sub_1D560F478();
  v64 = OUTLINED_FUNCTION_12_0(v63, &a14);
  v165[22] = v65;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v66);
  v67 = sub_1D560FB08();
  v68 = OUTLINED_FUNCTION_12_0(v67, &a12);
  v165[20] = v69;
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v70);
  v71 = sub_1D560F7A8();
  v72 = OUTLINED_FUNCTION_12_0(v71, &a10);
  v165[18] = v73;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v74);
  v75 = sub_1D560F308();
  v76 = OUTLINED_FUNCTION_12_0(v75, &v187);
  v165[16] = v77;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5_0();
  v79 = OUTLINED_FUNCTION_48(v78);
  type metadata accessor for CloudMusicShareableItem(v79);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13();
  v184 = v81;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_135();
  v183 = v83;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_135();
  v182 = v85;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_135();
  v181 = v87;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_135();
  v180 = v89;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_135();
  v179 = v91;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_135();
  v178 = v93;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_135();
  v177 = v95;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_135();
  v176 = v97;
  OUTLINED_FUNCTION_23();
  v99 = MEMORY[0x1EEE9AC00](v98);
  v101 = v165 - v100;
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_205_3();
  v103 = MEMORY[0x1EEE9AC00](v102);
  v105 = v165 - v104;
  v106 = MEMORY[0x1EEE9AC00](v103);
  v108 = v165 - v107;
  v109 = MEMORY[0x1EEE9AC00](v106);
  v111 = v165 - v110;
  MEMORY[0x1EEE9AC00](v109);
  v113 = v165 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CC8, &unk_1D564AD50);
  OUTLINED_FUNCTION_22(v114);
  OUTLINED_FUNCTION_11();
  v116 = MEMORY[0x1EEE9AC00](v115);
  v118 = v165 - v117;
  v119 = *(v116 + 56);
  sub_1D5285E4C();
  v186 = v119;
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_117();
      OUTLINED_FUNCTION_258();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 1)
      {
        OUTLINED_FUNCTION_30_19();
        OUTLINED_FUNCTION_94_7();
        v141();
        sub_1D560F6E8();
        v142 = *(v105 + 1);
        v143 = OUTLINED_FUNCTION_116();
        v142(v143);
        (v142)(v111, v108);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_136();
      v121 = v111;
      v122 = &a10;
      goto LABEL_49;
    case 2u:
      OUTLINED_FUNCTION_1_117();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 2)
      {
        OUTLINED_FUNCTION_35_0();
        v133 = OUTLINED_FUNCTION_78();
        v134(v133);
        OUTLINED_FUNCTION_68_4();
        sub_1D560FA28();
        v135 = *(v101 + 1);
        v136 = OUTLINED_FUNCTION_93();
        v135(v136);
        v137 = OUTLINED_FUNCTION_222();
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_136();
      v121 = v108;
      v122 = &a12;
      goto LABEL_49;
    case 3u:
      OUTLINED_FUNCTION_1_117();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() != 3)
      {
        OUTLINED_FUNCTION_136();
        v121 = v105;
        v122 = &a14;
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_94_7();
      v138();
      sub_1D560F3B8();
      v135 = *(v101 + 1);
      (v135)(v113, v108);
      v137 = OUTLINED_FUNCTION_63_1();
LABEL_18:
      v135(v137);
      goto LABEL_58;
    case 4u:
      OUTLINED_FUNCTION_1_117();
      OUTLINED_FUNCTION_211_2();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 4)
      {
        OUTLINED_FUNCTION_5_90();
        OUTLINED_FUNCTION_117_0();
        sub_1D5285360();
        static CloudMusicMovie.== infix(_:_:)();
        v128 = type metadata accessor for CloudMusicMovie;
        sub_1D5285EA4(v108, type metadata accessor for CloudMusicMovie);
        v129 = v20;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_7_89();
      v160 = v20;
      goto LABEL_47;
    case 5u:
      OUTLINED_FUNCTION_1_117();
      OUTLINED_FUNCTION_215();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 5)
      {
        OUTLINED_FUNCTION_30_19();
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_94_7();
        v144();
        OUTLINED_FUNCTION_27_1();
        sub_1D560CFA8();
        v145 = *(v105 + 1);
        v145(v113, v108);
        v145(v101, v108);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_136();
      v121 = v101;
      v122 = &a16;
      goto LABEL_49;
    case 6u:
      OUTLINED_FUNCTION_1_117();
      v146 = v176;
      sub_1D5285E4C();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        OUTLINED_FUNCTION_35_0();
        v147 = OUTLINED_FUNCTION_78();
        v148 = v165[27];
        v149(v147);
        sub_1D5610498();
        v150 = *(v101 + 1);
        v151 = OUTLINED_FUNCTION_93();
        v150(v151);
        (v150)(v146, v148);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_136();
      v121 = v146;
      v122 = &a18;
      goto LABEL_49;
    case 7u:
      OUTLINED_FUNCTION_1_117();
      v113 = v177;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 7)
      {
        v105 = v166;
        v108 = v167;
        OUTLINED_FUNCTION_80_11();
        v139 = OUTLINED_FUNCTION_148_9();
        v140(v139);
        OUTLINED_FUNCTION_75_2();
        sub_1D5610858();
        goto LABEL_56;
      }

      v158 = v166;
      v157 = v167;
      goto LABEL_52;
    case 8u:
      OUTLINED_FUNCTION_1_117();
      v113 = v178;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 8)
      {
        v105 = v168;
        v108 = v169;
        OUTLINED_FUNCTION_80_11();
        v154 = OUTLINED_FUNCTION_148_9();
        v155(v154);
        OUTLINED_FUNCTION_75_2();
        sub_1D5610B88();
        goto LABEL_56;
      }

      v158 = v168;
      v157 = v169;
      goto LABEL_52;
    case 9u:
      OUTLINED_FUNCTION_1_117();
      v113 = v179;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 9)
      {
        v105 = v170;
        v108 = v171;
        OUTLINED_FUNCTION_80_11();
        v131 = OUTLINED_FUNCTION_148_9();
        v132(v131);
        OUTLINED_FUNCTION_75_2();
        sub_1D5611918();
        goto LABEL_56;
      }

      v158 = v170;
      v157 = v171;
      goto LABEL_52;
    case 0xAu:
      OUTLINED_FUNCTION_1_117();
      v113 = v180;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 10)
      {
        v105 = v172;
        v108 = v173;
        OUTLINED_FUNCTION_80_11();
        v152 = OUTLINED_FUNCTION_148_9();
        v153(v152);
        OUTLINED_FUNCTION_75_2();
        sub_1D5614958();
        goto LABEL_56;
      }

      v158 = v172;
      v157 = v173;
      goto LABEL_52;
    case 0xBu:
      OUTLINED_FUNCTION_1_117();
      v113 = v181;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 11)
      {
        v105 = v174;
        v108 = v175;
        OUTLINED_FUNCTION_80_11();
        v126 = OUTLINED_FUNCTION_148_9();
        v127(v126);
        OUTLINED_FUNCTION_75_2();
        sub_1D560FC78();
        goto LABEL_56;
      }

      v158 = v174;
      v157 = v175;
LABEL_52:
      v120 = *(v158 + 1);
      v121 = v113;
      goto LABEL_53;
    case 0xCu:
      OUTLINED_FUNCTION_1_117();
      v123 = v182;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 12)
      {
        OUTLINED_FUNCTION_4_88();
        OUTLINED_FUNCTION_117_0();
        sub_1D5285360();
        v130 = OUTLINED_FUNCTION_63_1();
        static CloudTVEpisode.== infix(_:_:)(v130);
        v125 = type metadata accessor for CloudTVEpisode;
        goto LABEL_27;
      }

      v156 = type metadata accessor for CloudTVEpisode;
      goto LABEL_46;
    case 0xDu:
      OUTLINED_FUNCTION_1_117();
      v123 = v183;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 13)
      {
        OUTLINED_FUNCTION_3_117();
        OUTLINED_FUNCTION_117_0();
        sub_1D5285360();
        OUTLINED_FUNCTION_63_1();
        static CloudTVShow.== infix(_:_:)();
        v125 = type metadata accessor for CloudTVShow;
        goto LABEL_27;
      }

      v156 = type metadata accessor for CloudTVShow;
      goto LABEL_46;
    case 0xEu:
      OUTLINED_FUNCTION_1_117();
      v123 = v184;
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6() == 14)
      {
        OUTLINED_FUNCTION_6_86();
        OUTLINED_FUNCTION_117_0();
        sub_1D5285360();
        v124 = OUTLINED_FUNCTION_63_1();
        static CloudUploadedVideo.== infix(_:_:)(v124);
        v125 = type metadata accessor for CloudUploadedVideo;
LABEL_27:
        v128 = v125;
        sub_1D5285EA4(v108, v125);
        v129 = v123;
LABEL_28:
        sub_1D5285EA4(v129, v128);
        goto LABEL_58;
      }

      v156 = type metadata accessor for CloudUploadedVideo;
LABEL_46:
      v159 = v156;
      v160 = v123;
LABEL_47:
      sub_1D5285EA4(v160, v159);
      goto LABEL_54;
    default:
      OUTLINED_FUNCTION_1_117();
      OUTLINED_FUNCTION_132_1();
      sub_1D5285E4C();
      if (OUTLINED_FUNCTION_133_6())
      {
        OUTLINED_FUNCTION_136();
        v121 = v113;
        v122 = &v187;
LABEL_49:
        v157 = *(v122 - 32);
LABEL_53:
        v120(v121, v157);
LABEL_54:
        sub_1D4E50004(v118, &qword_1EC7F2CC8, &unk_1D564AD50);
      }

      else
      {
        OUTLINED_FUNCTION_30_19();
        OUTLINED_FUNCTION_94_7();
        v161();
        OUTLINED_FUNCTION_75_2();
        sub_1D560F238();
LABEL_56:
        v162 = *(v105 + 1);
        v163 = OUTLINED_FUNCTION_116();
        v162(v163);
        (v162)(v113, v108);
LABEL_58:
        OUTLINED_FUNCTION_0_151();
        sub_1D5285EA4(v118, v164);
      }

      OUTLINED_FUNCTION_46();
      return;
  }
}

void CloudMusicShareableItem.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v133 = type metadata accessor for CloudUploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v134 = v26;
  v27 = OUTLINED_FUNCTION_70_0();
  v28 = type metadata accessor for CloudTVShow(v27);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v130 = v30;
  v31 = OUTLINED_FUNCTION_70_0();
  v131 = type metadata accessor for CloudTVEpisode(v31);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v132 = v33;
  OUTLINED_FUNCTION_70_0();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v128 = v35;
  v129 = v34;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v127 = v36;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614A18();
  OUTLINED_FUNCTION_4();
  v125 = v38;
  v126 = v37;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  v124 = v39;
  OUTLINED_FUNCTION_70_0();
  sub_1D5611998();
  OUTLINED_FUNCTION_4();
  v122 = v41;
  v123 = v40;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  v121 = v42;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610C48();
  OUTLINED_FUNCTION_4();
  v119 = v44;
  v120 = v43;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v118 = v45;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610908();
  OUTLINED_FUNCTION_4();
  v116 = v47;
  v117 = v46;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v48);
  v49 = sub_1D5610588();
  v50 = OUTLINED_FUNCTION_12_0(v49, &a17);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v51);
  v52 = sub_1D560D068();
  v53 = OUTLINED_FUNCTION_12_0(v52, &a14);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  v55 = OUTLINED_FUNCTION_48(v54);
  v56 = type metadata accessor for CloudMusicMovie(v55);
  v57 = OUTLINED_FUNCTION_22(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v58);
  v59 = sub_1D560F478();
  v60 = OUTLINED_FUNCTION_12_0(v59, &a11);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v61 = sub_1D560FB08();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v63 = sub_1D560F7A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v65 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5();
  v67 = OUTLINED_FUNCTION_59_8();
  v68 = type metadata accessor for CloudMusicShareableItem(v67);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5();
  v72 = v71 - v70;
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  OUTLINED_FUNCTION_222();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_172();
      (*(v101 + 32))(v22, v72, v63);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_175_4();
      sub_1D5286090(v102, v103, MEMORY[0x1E6975818]);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v65 + 8))(v22, v63);
      break;
    case 2u:
      OUTLINED_FUNCTION_172();
      (*(v93 + 32))(v20, v72, v61);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_178_3();
      sub_1D5286090(v94, v95, MEMORY[0x1E6975A40]);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v65 + 8))(v20, v61);
      break;
    case 3u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_56_1();
      v96();
      MEMORY[0x1DA6EC0D0](3);
      OUTLINED_FUNCTION_177_5();
      sub_1D5286090(v97, v98, MEMORY[0x1E69756F8]);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v68 + 8))(v21, v65);
      break;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_165_4();
      sub_1D5285360();
      MEMORY[0x1DA6EC0D0](4);
      CloudMusicMovie.hash(into:)();
      v88 = type metadata accessor for CloudMusicMovie;
      goto LABEL_19;
    case 5u:
      OUTLINED_FUNCTION_30_19();
      v82 = v113;
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_56_1();
      v104();
      MEMORY[0x1DA6EC0D0](5);
      OUTLINED_FUNCTION_174_5();
      v87 = MEMORY[0x1E6974DE8];
      goto LABEL_23;
    case 6u:
      OUTLINED_FUNCTION_30_19();
      v82 = v114;
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_56_1();
      v107();
      MEMORY[0x1DA6EC0D0](6);
      OUTLINED_FUNCTION_173_2();
      v87 = MEMORY[0x1E6975D00];
      goto LABEL_23;
    case 7u:
      v68 = v116;
      v65 = v117;
      OUTLINED_FUNCTION_33_1();
      v82 = v115;
      v99 = OUTLINED_FUNCTION_116();
      v100(v99);
      MEMORY[0x1DA6EC0D0](7);
      OUTLINED_FUNCTION_176_3();
      v87 = MEMORY[0x1E6975E40];
      goto LABEL_23;
    case 8u:
      v82 = v118;
      v68 = v119;
      OUTLINED_FUNCTION_33_1();
      v110 = OUTLINED_FUNCTION_116();
      v65 = v120;
      v111(v110);
      MEMORY[0x1DA6EC0D0](8);
      OUTLINED_FUNCTION_171_4();
      v87 = MEMORY[0x1E6975FF8];
      goto LABEL_23;
    case 9u:
      v82 = v121;
      v68 = v122;
      OUTLINED_FUNCTION_33_1();
      v91 = OUTLINED_FUNCTION_116();
      v65 = v123;
      v92(v91);
      MEMORY[0x1DA6EC0D0](9);
      OUTLINED_FUNCTION_179_4();
      v87 = MEMORY[0x1E69762B8];
      goto LABEL_23;
    case 0xAu:
      v82 = v124;
      v68 = v125;
      OUTLINED_FUNCTION_33_1();
      v108 = OUTLINED_FUNCTION_116();
      v65 = v126;
      v109(v108);
      MEMORY[0x1DA6EC0D0](10);
      OUTLINED_FUNCTION_172_4();
      v87 = MEMORY[0x1E6977478];
      goto LABEL_23;
    case 0xBu:
      v82 = v127;
      v68 = v128;
      OUTLINED_FUNCTION_33_1();
      v83 = OUTLINED_FUNCTION_116();
      v65 = v129;
      v84(v83);
      MEMORY[0x1DA6EC0D0](11);
      OUTLINED_FUNCTION_180_3();
      v87 = MEMORY[0x1E6975B40];
LABEL_23:
      sub_1D5286090(v85, v86, v87);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v68 + 8))(v82, v65);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v79 = v132;
      sub_1D5285360();
      MEMORY[0x1DA6EC0D0](12);
      sub_1D5614E28();
      OUTLINED_FUNCTION_262_0();
      CloudTVEpisode.Attributes.hash(into:)();
      OUTLINED_FUNCTION_262_0();
      sub_1D4F872A4();
      OUTLINED_FUNCTION_262_0();
      sub_1D4F86E74();
      v89 = *(v132 + *(v131 + 32));
      if (v89 == 1 || (OUTLINED_FUNCTION_42_29(), !v89))
      {
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_42_29();
        v90 = OUTLINED_FUNCTION_98();
        sub_1D4F068B4(v90);
      }

      v112 = type metadata accessor for CloudTVEpisode;
      goto LABEL_29;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v65 = v130;
      sub_1D5285360();
      MEMORY[0x1DA6EC0D0](13);
      CloudTVShow.hash(into:)();
      v88 = type metadata accessor for CloudTVShow;
LABEL_19:
      v105 = v88;
      v106 = v65;
      goto LABEL_30;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v79 = v134;
      sub_1D5285360();
      MEMORY[0x1DA6EC0D0](14);
      sub_1D5614E28();
      OUTLINED_FUNCTION_262_0();
      CloudUploadedVideo.Attributes.hash(into:)();
      OUTLINED_FUNCTION_262_0();
      sub_1D4F86198();
      sub_1D56162F8();
      v80 = *(v134 + *(v133 + 32));
      if (v80 == 1 || (OUTLINED_FUNCTION_42_29(), !v80))
      {
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_42_29();
        v81 = OUTLINED_FUNCTION_98();
        sub_1D4F068B4(v81);
      }

      v112 = type metadata accessor for CloudUploadedVideo;
LABEL_29:
      v105 = v112;
      v106 = v79;
LABEL_30:
      sub_1D5285EA4(v106, v105);
      break;
    default:
      OUTLINED_FUNCTION_113_9();
      v73 = OUTLINED_FUNCTION_116();
      v74(v73);
      MEMORY[0x1DA6EC0D0](0);
      OUTLINED_FUNCTION_181_5();
      sub_1D5286090(v75, v76, MEMORY[0x1E6975670]);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      v77 = OUTLINED_FUNCTION_134_0();
      v78(v77);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t CloudMusicShareableItem.hashValue.getter()
{
  sub_1D56162D8();
  CloudMusicShareableItem.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t sub_1D5272900(uint64_t a1)
{
  sub_1D56162D8();
  CloudMusicShareableItem.hash(into:)(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1D5616328();
}

void CloudMusicShareableItem.decodeRawAttributes(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v22;
  a20 = v23;
  a10 = v21;
  v151 = v20;
  v152 = v24;
  v150 = type metadata accessor for CloudUploadedVideo.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v148[3] = v26;
  v27 = OUTLINED_FUNCTION_70_0();
  v148[2] = type metadata accessor for CloudUploadedVideo(v27);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v149 = v29;
  v30 = OUTLINED_FUNCTION_70_0();
  v148[1] = type metadata accessor for CloudTVShow.Attributes(v30);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v147 = v32;
  v33 = OUTLINED_FUNCTION_70_0();
  v146 = type metadata accessor for CloudTVShow(v33);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v148[0] = v35;
  v36 = OUTLINED_FUNCTION_70_0();
  v145 = type metadata accessor for CloudTVEpisode.Attributes(v36);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  v143 = v38;
  v39 = OUTLINED_FUNCTION_70_0();
  v142 = type metadata accessor for CloudTVEpisode(v39);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  v144 = v41;
  OUTLINED_FUNCTION_70_0();
  v141[2] = sub_1D560FBB8();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v43);
  v141[3] = sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v141[1] = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v46);
  v47 = sub_1D56148C8();
  v48 = OUTLINED_FUNCTION_20(v47, &a14);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v49);
  v50 = sub_1D5614A18();
  v51 = OUTLINED_FUNCTION_12_0(v50, &a15);
  v139 = v52;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v53);
  v54 = sub_1D5611898();
  v55 = OUTLINED_FUNCTION_20(v54, &a9);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v56);
  v57 = sub_1D5611998();
  v58 = OUTLINED_FUNCTION_12_0(v57, &a10);
  v137[0] = v59;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v60);
  v61 = sub_1D5610B08();
  v62 = OUTLINED_FUNCTION_20(v61, &v153);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v63);
  v64 = sub_1D5610C48();
  v65 = OUTLINED_FUNCTION_12_0(v64, &v154);
  v135[0] = v66;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v67);
  v68 = sub_1D56107E8();
  v69 = OUTLINED_FUNCTION_20(v68, &v149);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v70);
  v71 = sub_1D5610908();
  v72 = OUTLINED_FUNCTION_12_0(v71, &v150);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v73);
  v74 = sub_1D56100B8();
  v75 = OUTLINED_FUNCTION_20(v74, &v147);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D5610588();
  v78 = OUTLINED_FUNCTION_12_0(v77, v148);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v79);
  v80 = sub_1D560CF18();
  v81 = OUTLINED_FUNCTION_20(v80, &v142);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v82);
  v83 = sub_1D560D068();
  v84 = OUTLINED_FUNCTION_12_0(v83, &v143);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5_0();
  v86 = OUTLINED_FUNCTION_48(v85);
  v87 = type metadata accessor for CloudMusicMovie.Attributes(v86);
  v88 = OUTLINED_FUNCTION_20(v87, v141);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5_0();
  v90 = OUTLINED_FUNCTION_48(v89);
  v91 = type metadata accessor for CloudMusicMovie(v90);
  v92 = OUTLINED_FUNCTION_20(v91, &v140);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v93);
  v94 = sub_1D560F328();
  v95 = OUTLINED_FUNCTION_20(v94, &v138);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v96);
  v97 = sub_1D560F478();
  v98 = OUTLINED_FUNCTION_12_0(v97, &v139);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v99);
  v100 = sub_1D560F9A8();
  v101 = OUTLINED_FUNCTION_20(v100, &v136);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v102);
  v103 = sub_1D560FB08();
  v104 = OUTLINED_FUNCTION_12_0(v103, v137);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v105);
  v106 = sub_1D560F648();
  v107 = OUTLINED_FUNCTION_20(v106, v135);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v108 = sub_1D560F7A8();
  v109 = OUTLINED_FUNCTION_12_0(v108, &v134);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  sub_1D560F1A8();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v111);
  v112 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudMusicShareableItem(v112);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_136_8();
      v125();
      OUTLINED_FUNCTION_243_0();
      sub_1D560F658();
      sub_1D5614C38();
      v126 = OUTLINED_FUNCTION_131_6();
      v127(v126);
      break;
    case 2u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v122();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172();
      sub_1D560F9B8();
      OUTLINED_FUNCTION_130_10();
      goto LABEL_17;
    case 3u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v123();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172();
      sub_1D560F338();
      OUTLINED_FUNCTION_130_10();
      goto LABEL_17;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_117_0();
      sub_1D5285360();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_165_4();
      sub_1D5285E4C();
      OUTLINED_FUNCTION_130_10();
      sub_1D5614C38();
      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v20, v120);
      break;
    case 5u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v128();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172();
      sub_1D560CF28();
      OUTLINED_FUNCTION_130_10();
      goto LABEL_17;
    case 6u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v129();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172();
      sub_1D56100C8();
      OUTLINED_FUNCTION_130_10();
      goto LABEL_17;
    case 7u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v124();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172();
      sub_1D56107F8();
      OUTLINED_FUNCTION_130_10();
      goto LABEL_17;
    case 8u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v131();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172();
      sub_1D5610B18();
      OUTLINED_FUNCTION_130_10();
      goto LABEL_17;
    case 9u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v121();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172();
      sub_1D56118A8();
      OUTLINED_FUNCTION_130_10();
      goto LABEL_17;
    case 0xAu:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v130();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172();
      sub_1D56148D8();
      OUTLINED_FUNCTION_130_10();
      goto LABEL_17;
    case 0xBu:
      OUTLINED_FUNCTION_60_1();
      v118 = OUTLINED_FUNCTION_61_8();
      v119(v118);
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_172();
      sub_1D560FBC8();
      OUTLINED_FUNCTION_130_10();
LABEL_17:
      sub_1D5614C38();
      goto LABEL_18;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v116 = v144;
      sub_1D5285360();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_272_1();
      OUTLINED_FUNCTION_130_10();
      sub_1D5614C38();
      v117 = type metadata accessor for CloudTVEpisode;
      goto LABEL_19;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v116 = v148[0];
      sub_1D5285360();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_272_1();
      OUTLINED_FUNCTION_130_10();
      sub_1D5614C38();
      v117 = type metadata accessor for CloudTVShow;
      goto LABEL_19;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v116 = v149;
      sub_1D5285360();
      OUTLINED_FUNCTION_243_0();
      OUTLINED_FUNCTION_272_1();
      OUTLINED_FUNCTION_130_10();
      sub_1D5614C38();
      v117 = type metadata accessor for CloudUploadedVideo;
LABEL_19:
      sub_1D5285EA4(v116, v117);
      break;
    default:
      OUTLINED_FUNCTION_113_9();
      v114 = OUTLINED_FUNCTION_42_3();
      v115(v114);
      OUTLINED_FUNCTION_243_0();
      sub_1D560F1B8();
      sub_1D5614C38();
LABEL_18:
      v132 = OUTLINED_FUNCTION_21_1();
      v133(v132);
      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudMusicShareableItem.decodeRawRelationships(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v26;
  a20 = v27;
  v212 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = OUTLINED_FUNCTION_85_15(v31);
  v206 = type metadata accessor for CloudUploadedVideo(v32);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v211 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v208 = v37;
  v38 = OUTLINED_FUNCTION_70_0();
  v203[2] = type metadata accessor for CloudTVShow(v38);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v209 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v205 = v43;
  v44 = OUTLINED_FUNCTION_70_0();
  v45 = type metadata accessor for CloudTVEpisode(v44);
  v46 = OUTLINED_FUNCTION_20(v45, &a14);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  v207 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CD8, &qword_1D564AD60);
  OUTLINED_FUNCTION_22(v48);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v50);
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v203[3] = v52;
  v204 = v51;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CE0, &unk_1D564AD68);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v56);
  v57 = sub_1D5614A18();
  v58 = OUTLINED_FUNCTION_12_0(v57, &a16);
  v202 = v59;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_78_18(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF378, &unk_1D56310D0);
  OUTLINED_FUNCTION_22(v61);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v63);
  v64 = sub_1D5611998();
  v65 = OUTLINED_FUNCTION_12_0(v64, &a11);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_77_13(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CE8, &qword_1D564AD78);
  OUTLINED_FUNCTION_22(v67);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v69);
  v70 = sub_1D5610C48();
  v71 = OUTLINED_FUNCTION_12_0(v70, &v216);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CF0, &unk_1D564AD80);
  OUTLINED_FUNCTION_22(v73);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v75);
  v76 = sub_1D5610908();
  v77 = OUTLINED_FUNCTION_12_0(v76, &v215);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_95_14(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_22(v79);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v81);
  v82 = sub_1D5610588();
  v83 = OUTLINED_FUNCTION_12_0(v82, &v214);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CF8, &unk_1D564AD90);
  OUTLINED_FUNCTION_22(v85);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v87);
  v88 = sub_1D560D068();
  v89 = OUTLINED_FUNCTION_12_0(v88, &v210);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_22(v91);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_3();
  v94 = OUTLINED_FUNCTION_48(v93);
  v95 = type metadata accessor for CloudMusicMovie(v94);
  v96 = OUTLINED_FUNCTION_20(v95, &v202);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D00, &unk_1D564ADA0);
  OUTLINED_FUNCTION_22(v98);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v100);
  v101 = sub_1D560F478();
  v102 = OUTLINED_FUNCTION_12_0(v101, &v204);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_86_17(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D08, &unk_1D565D100);
  OUTLINED_FUNCTION_22(v104);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_30_8();
  v106 = sub_1D560FB08();
  v107 = OUTLINED_FUNCTION_12_0(v106, v203);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D10, &unk_1D564ADB0);
  OUTLINED_FUNCTION_22(v109);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_15_3();
  v111 = sub_1D560F7A8();
  v112 = OUTLINED_FUNCTION_12_0(v111, &v201);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D18, &unk_1D565D110);
  OUTLINED_FUNCTION_22(v113);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_68();
  v115 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v116);
  v117 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudMusicShareableItem(v117);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  sub_1D5614A88();
  v213 = sub_1D5614BD8();
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_151();
      v157();
      sub_1D560F6B8();
      v158 = sub_1D560F6A8();
      OUTLINED_FUNCTION_35_3(v24, v159, v158);
      if (v122)
      {
        v160 = OUTLINED_FUNCTION_27_1();
        v161(v160);
        v125 = &qword_1EC7F2D10;
        v126 = &unk_1D564ADB0;
        v148 = v24;
        goto LABEL_48;
      }

      sub_1D4E50004(v24, &qword_1EC7F2D10, &unk_1D564ADB0);
      OUTLINED_FUNCTION_242();
      sub_1D560F6D8();
      OUTLINED_FUNCTION_239_0();
      sub_1D526EE28();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      v194 = OUTLINED_FUNCTION_27_1();
      v195(v194);
      break;
    case 2u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v143();
      sub_1D560F9F8();
      v144 = sub_1D560F9E8();
      OUTLINED_FUNCTION_35_3(v23, v145, v144);
      if (!v122)
      {

        sub_1D4E50004(v23, &qword_1EC7F2D08, &unk_1D565D100);
        OUTLINED_FUNCTION_242();
        sub_1D560FA18();
        OUTLINED_FUNCTION_238_0();
        goto LABEL_58;
      }

      v146 = OUTLINED_FUNCTION_89_0();
      v147(v146);
      v125 = &qword_1EC7F2D08;
      v126 = &unk_1D565D100;
      v148 = v23;
      goto LABEL_48;
    case 3u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v149();
      OUTLINED_FUNCTION_79_15();
      sub_1D560F378();
      v150 = sub_1D560F368();
      OUTLINED_FUNCTION_9_80(v150);
      if (!v122)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D00, &unk_1D564ADA0);
        OUTLINED_FUNCTION_242();
        sub_1D560F3A8();
        OUTLINED_FUNCTION_237();
        goto LABEL_58;
      }

      v151 = OUTLINED_FUNCTION_89_0();
      v152(v151);
      v125 = &qword_1EC7F2D00;
      v126 = &unk_1D564ADA0;
      goto LABEL_47;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_271();
      OUTLINED_FUNCTION_165_4();
      sub_1D4FB8150();
      v135 = type metadata accessor for CloudMusicMovie.Relationships(0);
      OUTLINED_FUNCTION_9_80(v135);
      if (!v122)
      {

        sub_1D4E50004(v20, &qword_1EC7EF310, &qword_1D565B640);
        OUTLINED_FUNCTION_242();
        OUTLINED_FUNCTION_189_3();
        OUTLINED_FUNCTION_302_0();
        OUTLINED_FUNCTION_236();
        sub_1D526F5DC(v184, v185, v186);
        OUTLINED_FUNCTION_82();

        OUTLINED_FUNCTION_204_3();
        sub_1D5614C18();
        OUTLINED_FUNCTION_7_89();
        sub_1D5285EA4(v22, v187);
        break;
      }

      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v22, v136);
      v125 = &qword_1EC7EF310;
      v126 = &qword_1D565B640;
      goto LABEL_47;
    case 5u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v162();
      OUTLINED_FUNCTION_79_15();
      sub_1D560CF78();
      v163 = sub_1D560CF68();
      OUTLINED_FUNCTION_9_80(v163);
      if (!v122)
      {

        sub_1D4E50004(v20, &qword_1EC7F2CF8, &unk_1D564AD90);
        OUTLINED_FUNCTION_242();
        sub_1D560CF98();
        OUTLINED_FUNCTION_235_0();
        goto LABEL_58;
      }

      v164 = OUTLINED_FUNCTION_89_0();
      v165(v164);
      v125 = &qword_1EC7F2CF8;
      v126 = &unk_1D564AD90;
      goto LABEL_47;
    case 6u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v168();
      OUTLINED_FUNCTION_79_15();
      sub_1D5610468();
      v169 = sub_1D5610458();
      OUTLINED_FUNCTION_9_80(v169);
      if (!v122)
      {

        sub_1D4E50004(v20, &qword_1EC7ECF48, &qword_1D5623AE0);
        OUTLINED_FUNCTION_242();
        sub_1D5610488();
        OUTLINED_FUNCTION_234_1();
        goto LABEL_58;
      }

      v170 = OUTLINED_FUNCTION_89_0();
      v171(v170);
      v125 = &qword_1EC7ECF48;
      v126 = &qword_1D5623AE0;
      goto LABEL_47;
    case 7u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v153();
      OUTLINED_FUNCTION_79_15();
      sub_1D5610828();
      v154 = sub_1D5610818();
      OUTLINED_FUNCTION_9_80(v154);
      if (!v122)
      {

        sub_1D4E50004(v20, &qword_1EC7F2CF0, &unk_1D564AD80);
        OUTLINED_FUNCTION_242();
        sub_1D5610848();
        OUTLINED_FUNCTION_233_1();
        goto LABEL_58;
      }

      v155 = OUTLINED_FUNCTION_89_0();
      v156(v155);
      v125 = &qword_1EC7F2CF0;
      v126 = &unk_1D564AD80;
      goto LABEL_47;
    case 8u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v176();
      OUTLINED_FUNCTION_79_15();
      sub_1D5610B58();
      v177 = sub_1D5610B48();
      OUTLINED_FUNCTION_9_80(v177);
      if (!v122)
      {

        sub_1D4E50004(v20, &qword_1EC7F2CE8, &qword_1D564AD78);
        OUTLINED_FUNCTION_242();
        sub_1D5610B78();
        goto LABEL_57;
      }

      v178 = OUTLINED_FUNCTION_89_0();
      v179(v178);
      v125 = &qword_1EC7F2CE8;
      v126 = &qword_1D564AD78;
      goto LABEL_47;
    case 9u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v139();
      OUTLINED_FUNCTION_79_15();
      sub_1D56118E8();
      v140 = sub_1D56118D8();
      OUTLINED_FUNCTION_9_80(v140);
      if (!v122)
      {

        sub_1D4E50004(v20, &qword_1EC7EF378, &unk_1D56310D0);
        OUTLINED_FUNCTION_242();
        sub_1D5611908();
        goto LABEL_57;
      }

      v141 = OUTLINED_FUNCTION_89_0();
      v142(v141);
      v125 = &qword_1EC7EF378;
      v126 = &unk_1D56310D0;
      goto LABEL_47;
    case 0xAu:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_72_21();
      OUTLINED_FUNCTION_140();
      v172();
      OUTLINED_FUNCTION_79_15();
      sub_1D5614928();
      v173 = sub_1D5614918();
      OUTLINED_FUNCTION_9_80(v173);
      if (!v122)
      {

        sub_1D4E50004(v20, &qword_1EC7F2CE0, &unk_1D564AD68);
        OUTLINED_FUNCTION_242();
        sub_1D5614948();
        OUTLINED_FUNCTION_232_1();
        goto LABEL_58;
      }

      v174 = OUTLINED_FUNCTION_89_0();
      v175(v174);
      v125 = &qword_1EC7F2CE0;
      v126 = &unk_1D564AD68;
      goto LABEL_47;
    case 0xBu:
      OUTLINED_FUNCTION_40_3();
      v130 = OUTLINED_FUNCTION_72_21();
      v131(v130);
      OUTLINED_FUNCTION_79_15();
      sub_1D560FC28();
      v132 = sub_1D560FBF8();
      OUTLINED_FUNCTION_9_80(v132);
      if (v122)
      {
        v133 = OUTLINED_FUNCTION_89_0();
        v134(v133);
        v125 = &qword_1EC7F2CD8;
        v126 = &qword_1D564AD60;
        goto LABEL_47;
      }

      sub_1D4E50004(v20, &qword_1EC7F2CD8, &qword_1D564AD60);
      OUTLINED_FUNCTION_242();
      sub_1D560FC68();
LABEL_57:
      OUTLINED_FUNCTION_21_54();
LABEL_58:
      sub_1D526EE28();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      if (v21)
      {
        v191 = OUTLINED_FUNCTION_89_0();
        goto LABEL_60;
      }

      v199 = OUTLINED_FUNCTION_89_0();
      goto LABEL_62;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v127 = v207;
      sub_1D5285360();
      v20 = v205;
      sub_1D4FB8150();
      v137 = type metadata accessor for CloudTVEpisode.Relationships(0);
      OUTLINED_FUNCTION_9_80(v137);
      if (v122)
      {
        OUTLINED_FUNCTION_16_66();
        sub_1D5285EA4(v127, v138);
        v125 = &qword_1EC7ECD98;
        v126 = &unk_1D5627070;
        goto LABEL_47;
      }

      sub_1D4E50004(v20, &qword_1EC7ECD98, &unk_1D5627070);
      OUTLINED_FUNCTION_242();
      OUTLINED_FUNCTION_189_3();
      OUTLINED_FUNCTION_302_0();
      OUTLINED_FUNCTION_231_1();
      sub_1D526F70C(v188, v189, v190);
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      if (v21)
      {
        v183 = type metadata accessor for CloudTVEpisode;
      }

      else
      {
        OUTLINED_FUNCTION_59_22();
      }

      goto LABEL_67;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v127 = v209;
      sub_1D5285360();
      v20 = v208;
      sub_1D4FB8150();
      v166 = type metadata accessor for CloudTVShow.Relationships(0);
      OUTLINED_FUNCTION_9_80(v166);
      if (v122)
      {
        OUTLINED_FUNCTION_51_27();
        sub_1D5285EA4(v127, v167);
        v125 = &qword_1EC7ED190;
        v126 = &qword_1D5623F30;
        goto LABEL_47;
      }

      sub_1D4E50004(v20, &qword_1EC7ED190, &qword_1D5623F30);
      OUTLINED_FUNCTION_242();
      OUTLINED_FUNCTION_189_3();
      OUTLINED_FUNCTION_302_0();
      OUTLINED_FUNCTION_230_2();
      sub_1D526F5DC(v196, v197, v198);
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      if (v21)
      {
        v183 = type metadata accessor for CloudTVShow;
      }

      else
      {
        OUTLINED_FUNCTION_57_28();
      }

      goto LABEL_67;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v127 = v211;
      sub_1D5285360();
      v20 = v210;
      sub_1D4FB8150();
      v128 = type metadata accessor for CloudUploadedVideo.Relationships(0);
      OUTLINED_FUNCTION_9_80(v128);
      if (v122)
      {
        OUTLINED_FUNCTION_56_24();
        sub_1D5285EA4(v127, v129);
        v125 = &qword_1EC7ECD60;
        v126 = &qword_1D5622F50;
        goto LABEL_47;
      }

      sub_1D4E50004(v20, &qword_1EC7ECD60, &qword_1D5622F50);
      OUTLINED_FUNCTION_242();
      OUTLINED_FUNCTION_189_3();
      OUTLINED_FUNCTION_302_0();
      OUTLINED_FUNCTION_229_2();
      sub_1D526F7E8(v180, v181, v182);
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      if (v21)
      {
        v183 = type metadata accessor for CloudUploadedVideo;
      }

      else
      {
        OUTLINED_FUNCTION_58_27();
      }

LABEL_67:
      sub_1D5285EA4(v127, v183);
      break;
    default:
      v119 = OUTLINED_FUNCTION_82_17();
      v120(v119, v25, v115);
      sub_1D560F208();
      v121 = sub_1D560F1F8();
      OUTLINED_FUNCTION_9_80(v121);
      if (v122)
      {
        v123 = OUTLINED_FUNCTION_134_8();
        v124(v123, v115);
        v125 = &qword_1EC7F2D18;
        v126 = &unk_1D565D110;
LABEL_47:
        v148 = v20;
LABEL_48:
        sub_1D4E50004(v148, v125, v126);
      }

      else
      {

        sub_1D4E50004(v20, &qword_1EC7F2D18, &unk_1D565D110);
        OUTLINED_FUNCTION_242();
        sub_1D560F228();
        OUTLINED_FUNCTION_240_0();
        sub_1D526EE28();

        sub_1D5614C18();
        if (v21)
        {
          v191 = OUTLINED_FUNCTION_134_8();
          v193 = v115;
LABEL_60:
          v192(v191, v193);
        }

        else
        {
          v199 = OUTLINED_FUNCTION_134_8();
LABEL_62:
          v200(v199);
        }
      }

      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudMusicShareableItem.decodeRawAssociations(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v26;
  a20 = v27;
  v193 = v22;
  v192[0] = v28;
  v188[2] = type metadata accessor for CloudUploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v191 = v30;
  v31 = OUTLINED_FUNCTION_70_0();
  v186 = type metadata accessor for CloudTVShow(v31);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v190 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = OUTLINED_FUNCTION_85_15(v36);
  v182[2] = type metadata accessor for CloudTVEpisode(v37);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v189 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D20, &unk_1D564F660);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  v184 = v42;
  OUTLINED_FUNCTION_70_0();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v187 = v44;
  v188[0] = v43;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v185 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D28, &unk_1D564ADC0);
  OUTLINED_FUNCTION_22(v46);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v48);
  sub_1D5614A18();
  OUTLINED_FUNCTION_4();
  v183[0] = v50;
  v183[1] = v49;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF370, &unk_1D565D120);
  OUTLINED_FUNCTION_22(v52);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v54);
  v55 = sub_1D5611998();
  v56 = OUTLINED_FUNCTION_12_0(v55, &a16);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_83_16(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D30, &qword_1D564ADD0);
  OUTLINED_FUNCTION_22(v58);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v60);
  v61 = sub_1D5610C48();
  v62 = OUTLINED_FUNCTION_12_0(v61, &a12);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D38, &unk_1D565D130);
  OUTLINED_FUNCTION_22(v64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v66);
  v67 = sub_1D5610908();
  v68 = OUTLINED_FUNCTION_12_0(v67, &v195);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v70);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v72);
  v73 = sub_1D5610588();
  v74 = OUTLINED_FUNCTION_12_0(v73, &v194);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D40, &unk_1D5658BF0);
  OUTLINED_FUNCTION_22(v76);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v78);
  v79 = sub_1D560D068();
  v80 = OUTLINED_FUNCTION_12_0(v79, v192);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
  OUTLINED_FUNCTION_22(v82);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_3();
  v85 = OUTLINED_FUNCTION_48(v84);
  v86 = type metadata accessor for CloudMusicMovie(v85);
  v87 = OUTLINED_FUNCTION_20(v86, v183);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D48, &qword_1D564ADD8);
  OUTLINED_FUNCTION_22(v89);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v91);
  v92 = sub_1D560F478();
  v93 = OUTLINED_FUNCTION_12_0(v92, v188);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_94_15(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D50, &unk_1D564ADE0);
  OUTLINED_FUNCTION_22(v95);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_59_8();
  v97 = sub_1D560FB08();
  v98 = OUTLINED_FUNCTION_12_0(v97, &v184);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_86_17(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D58, &unk_1D565D140);
  OUTLINED_FUNCTION_22(v100);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_68();
  v102 = sub_1D560F7A8();
  v103 = OUTLINED_FUNCTION_12_0(v102, v182);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D60, &unk_1D564ADF0);
  OUTLINED_FUNCTION_22(v104);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_43_2();
  v106 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v107);
  v108 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudMusicShareableItem(v108);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  sub_1D5614A88();
  v192[1] = sub_1D5614BD8();
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  OUTLINED_FUNCTION_132_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_136_8();
      v147();
      sub_1D560F748();
      v148 = sub_1D560F678();
      OUTLINED_FUNCTION_9_80(v148);
      if (v114)
      {
        v149 = OUTLINED_FUNCTION_29_12();
        v150(v149);
        v117 = &qword_1EC7F2D58;
        v118 = &unk_1D565D140;
        goto LABEL_45;
      }

      sub_1D4E50004(v20, &qword_1EC7F2D58, &unk_1D565D140);
      OUTLINED_FUNCTION_244();
      sub_1D560F6C8();
      OUTLINED_FUNCTION_227_2();
      sub_1D526EE28();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      v179 = OUTLINED_FUNCTION_29_12();
      v180(v179);
      goto LABEL_61;
    case 2u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v134();
      sub_1D560FAA8();
      v135 = sub_1D560F9C8();
      OUTLINED_FUNCTION_35_3(v23, v136, v135);
      if (!v114)
      {

        sub_1D4E50004(v23, &qword_1EC7F2D50, &unk_1D564ADE0);
        OUTLINED_FUNCTION_244();
        sub_1D560FA08();
        goto LABEL_55;
      }

      v137 = OUTLINED_FUNCTION_55_2();
      v138(v137);
      v117 = &qword_1EC7F2D50;
      v118 = &unk_1D564ADE0;
      v119 = v23;
      goto LABEL_46;
    case 3u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v139();
      OUTLINED_FUNCTION_172();
      sub_1D560F418();
      v140 = sub_1D560F348();
      OUTLINED_FUNCTION_9_80(v140);
      if (!v114)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D48, &qword_1D564ADD8);
        OUTLINED_FUNCTION_244();
        sub_1D560F388();
        goto LABEL_55;
      }

      v141 = OUTLINED_FUNCTION_55_2();
      v142(v141);
      v117 = &qword_1EC7F2D48;
      v118 = &qword_1D564ADD8;
      goto LABEL_45;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_117_0();
      sub_1D5285360();
      OUTLINED_FUNCTION_165_4();
      sub_1D4FB8150();
      v126 = type metadata accessor for CloudMusicMovie.Associations(0);
      OUTLINED_FUNCTION_9_80(v126);
      if (!v114)
      {

        sub_1D4E50004(v20, &qword_1EC7ECD30, &unk_1D5622F30);
        OUTLINED_FUNCTION_244();
        OUTLINED_FUNCTION_226_2();
        sub_1D526F70C(v170, v171, v172);
        OUTLINED_FUNCTION_292_0();
        sub_1D5614C18();
        OUTLINED_FUNCTION_7_89();
        sub_1D5285EA4(v21, v173);
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v21, v127);
      v117 = &qword_1EC7ECD30;
      v118 = &unk_1D5622F30;
      goto LABEL_45;
    case 5u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v151();
      OUTLINED_FUNCTION_172();
      sub_1D560D008();
      v152 = sub_1D560CF48();
      OUTLINED_FUNCTION_9_80(v152);
      if (!v114)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D40, &unk_1D5658BF0);
        OUTLINED_FUNCTION_244();
        sub_1D560CF88();
        OUTLINED_FUNCTION_225_1();
        goto LABEL_56;
      }

      v153 = OUTLINED_FUNCTION_55_2();
      v154(v153);
      v117 = &qword_1EC7F2D40;
      v118 = &unk_1D5658BF0;
      goto LABEL_45;
    case 6u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v156();
      OUTLINED_FUNCTION_172();
      sub_1D5610518();
      v157 = sub_1D5610138();
      OUTLINED_FUNCTION_9_80(v157);
      if (!v114)
      {

        sub_1D4E50004(v20, &qword_1EC7ECF40, &unk_1D5623AC0);
        OUTLINED_FUNCTION_244();
        sub_1D5610478();
        OUTLINED_FUNCTION_224_2();
        goto LABEL_56;
      }

      v158 = OUTLINED_FUNCTION_55_2();
      v159(v158);
      v117 = &qword_1EC7ECF40;
      v118 = &unk_1D5623AC0;
      goto LABEL_45;
    case 7u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v143();
      OUTLINED_FUNCTION_172();
      sub_1D56108A8();
      v144 = sub_1D5610808();
      OUTLINED_FUNCTION_9_80(v144);
      if (!v114)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D38, &unk_1D565D130);
        OUTLINED_FUNCTION_244();
        sub_1D5610838();
        goto LABEL_55;
      }

      v145 = OUTLINED_FUNCTION_55_2();
      v146(v145);
      v117 = &qword_1EC7F2D38;
      v118 = &unk_1D565D130;
      goto LABEL_45;
    case 8u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v165();
      OUTLINED_FUNCTION_172();
      sub_1D5610BE8();
      v166 = sub_1D5610B28();
      OUTLINED_FUNCTION_9_80(v166);
      if (!v114)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D30, &qword_1D564ADD0);
        OUTLINED_FUNCTION_244();
        sub_1D5610B68();
        OUTLINED_FUNCTION_223_2();
        goto LABEL_56;
      }

      v167 = OUTLINED_FUNCTION_55_2();
      v168(v167);
      v117 = &qword_1EC7F2D30;
      v118 = &qword_1D564ADD0;
      goto LABEL_45;
    case 9u:
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_74_19();
      OUTLINED_FUNCTION_151();
      v130();
      OUTLINED_FUNCTION_172();
      sub_1D5611968();
      v131 = sub_1D56118B8();
      OUTLINED_FUNCTION_9_80(v131);
      if (!v114)
      {

        sub_1D4E50004(v20, &qword_1EC7EF370, &unk_1D565D120);
        OUTLINED_FUNCTION_244();
        sub_1D56118F8();
        goto LABEL_55;
      }

      v132 = OUTLINED_FUNCTION_55_2();
      v133(v132);
      v117 = &qword_1EC7EF370;
      v118 = &unk_1D565D120;
      goto LABEL_45;
    case 0xAu:
      v160 = OUTLINED_FUNCTION_74_19();
      v161(v160);
      OUTLINED_FUNCTION_172();
      sub_1D56149B8();
      v162 = sub_1D56148F8();
      OUTLINED_FUNCTION_9_80(v162);
      if (!v114)
      {

        sub_1D4E50004(v20, &qword_1EC7F2D28, &unk_1D564ADC0);
        OUTLINED_FUNCTION_244();
        sub_1D5614938();
        goto LABEL_55;
      }

      v163 = OUTLINED_FUNCTION_55_2();
      v164(v163);
      v117 = &qword_1EC7F2D28;
      v118 = &unk_1D564ADC0;
      goto LABEL_45;
    case 0xBu:
      (*(v187 + 32))(v185, v24, v188[0]);
      v20 = v184;
      sub_1D560FCD8();
      v123 = sub_1D560FBD8();
      OUTLINED_FUNCTION_9_80(v123);
      if (v114)
      {
        v124 = OUTLINED_FUNCTION_55_2();
        v125(v124);
        v117 = &qword_1EC7F2D20;
        v118 = &unk_1D564F660;
        goto LABEL_45;
      }

      sub_1D4E50004(v20, &qword_1EC7F2D20, &unk_1D564F660);
      OUTLINED_FUNCTION_244();
      sub_1D560FC58();
LABEL_55:
      OUTLINED_FUNCTION_21_54();
LABEL_56:
      sub_1D526EE28();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_204_3();
      sub_1D5614C18();
      v177 = OUTLINED_FUNCTION_55_2();
      goto LABEL_57;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v120 = v189;
      sub_1D5285360();
      v20 = v188[1];
      sub_1D4FB8150();
      v128 = type metadata accessor for CloudTVEpisode.Associations(0);
      OUTLINED_FUNCTION_9_80(v128);
      if (!v114)
      {

        sub_1D4E50004(v20, &qword_1EC7ECD80, &qword_1D5622F70);
        OUTLINED_FUNCTION_244();
        OUTLINED_FUNCTION_222_2();
        sub_1D526F70C(v174, v175, v176);
        OUTLINED_FUNCTION_292_0();
        sub_1D5614C18();
        v122 = type metadata accessor for CloudTVEpisode;
LABEL_60:
        sub_1D5285EA4(v120, v122);
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_16_66();
      sub_1D5285EA4(v120, v129);
      v117 = &qword_1EC7ECD80;
      v118 = &qword_1D5622F70;
LABEL_45:
      v119 = v20;
      goto LABEL_46;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v120 = v190;
      sub_1D5285360();
      OUTLINED_FUNCTION_295_0();
      if (v155)
      {
        v122 = type metadata accessor for CloudTVShow;
      }

      else
      {

        OUTLINED_FUNCTION_244();
        v181 = v193;
        if (qword_1EC7E8A88 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_21_54();
        sub_1D526EE28();
        OUTLINED_FUNCTION_292_0();
        sub_1D5614C18();
        if (v181)
        {
          v122 = type metadata accessor for CloudTVShow;
        }

        else
        {
          OUTLINED_FUNCTION_164_5();
        }
      }

      goto LABEL_60;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v120 = v191;
      sub_1D5285360();
      OUTLINED_FUNCTION_295_0();
      if (v121)
      {
        v122 = type metadata accessor for CloudUploadedVideo;
      }

      else
      {

        OUTLINED_FUNCTION_244();
        v169 = v193;
        if (qword_1EC7E8F70 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_21_54();
        sub_1D526EE28();
        OUTLINED_FUNCTION_292_0();
        sub_1D5614C18();
        if (v169)
        {
          v122 = type metadata accessor for CloudUploadedVideo;
        }

        else
        {
          OUTLINED_FUNCTION_165_6();
        }
      }

      goto LABEL_60;
    default:
      v110 = OUTLINED_FUNCTION_135_2();
      v111(v110, v24, v106);
      sub_1D560F298();
      v112 = sub_1D560F1D8();
      OUTLINED_FUNCTION_35_3(v25, v113, v112);
      if (v114)
      {
        v115 = OUTLINED_FUNCTION_42_3();
        v116(v115);
        v117 = &qword_1EC7F2D60;
        v118 = &unk_1D564ADF0;
        v119 = v25;
LABEL_46:
        sub_1D4E50004(v119, v117, v118);
      }

      else
      {

        sub_1D4E50004(v25, &qword_1EC7F2D60, &unk_1D564ADF0);
        OUTLINED_FUNCTION_244();
        sub_1D560F218();
        OUTLINED_FUNCTION_228_2();
        sub_1D526EE28();

        sub_1D5614C18();
        v177 = OUTLINED_FUNCTION_42_3();
LABEL_57:
        v178(v177);
      }

LABEL_61:
      OUTLINED_FUNCTION_248();
      OUTLINED_FUNCTION_26();
      return;
  }
}

void CloudMusicShareableItem.decodeRawMetadata(from:skippingValuesFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v23;
  a20 = v24;
  v208 = v21;
  v209 = v20;
  v206 = v25;
  v207[0] = v26;
  v202 = type metadata accessor for CloudUploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v205 = v28;
  v29 = OUTLINED_FUNCTION_70_0();
  v201[0] = type metadata accessor for CloudTVShow(v29);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v204 = v31;
  v32 = OUTLINED_FUNCTION_70_0();
  v200[0] = type metadata accessor for CloudTVEpisode(v32);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v203 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D68, &unk_1D565D150);
  v36 = OUTLINED_FUNCTION_20(v35, v197);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_2();
  v199 = v38;
  OUTLINED_FUNCTION_70_0();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v201[1] = v40;
  v201[2] = v39;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v200[1] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D70, &unk_1D564AE00);
  v43 = OUTLINED_FUNCTION_20(v42, &v196);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v45);
  v198[2] = sub_1D5614A18();
  OUTLINED_FUNCTION_4();
  v198[1] = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF368, &unk_1D56310C0);
  v50 = OUTLINED_FUNCTION_20(v49, &v195);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v52);
  v53 = sub_1D5611998();
  v54 = OUTLINED_FUNCTION_12_0(v53, &a15);
  v197[0] = v55;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_78_18(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D78, &unk_1D564AE10);
  v58 = OUTLINED_FUNCTION_20(v57, &v194);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v60);
  v61 = sub_1D5610C48();
  v62 = OUTLINED_FUNCTION_12_0(v61, &a11);
  v195 = v63;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_77_13(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D80, &unk_1D565D160);
  v66 = OUTLINED_FUNCTION_20(v65, &v193);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v68);
  v69 = sub_1D5610908();
  v70 = OUTLINED_FUNCTION_12_0(v69, &v211);
  v193 = v71;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D88, &qword_1D564AE20);
  v74 = OUTLINED_FUNCTION_20(v73, &v192);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D5610588();
  v78 = OUTLINED_FUNCTION_12_0(v77, &v210);
  v191 = v79;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_95_14(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D90, &qword_1D564AE28);
  v82 = OUTLINED_FUNCTION_20(v81, &v191);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v84);
  v85 = sub_1D560D068();
  v86 = OUTLINED_FUNCTION_12_0(v85, v207);
  v189 = v87;
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  v89 = OUTLINED_FUNCTION_48(v88);
  v90 = type metadata accessor for CloudMusicMovie(v89);
  v91 = OUTLINED_FUNCTION_20(v90, v201);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D98, &qword_1D564AE30);
  v94 = OUTLINED_FUNCTION_20(v93, &v190);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v96);
  v97 = sub_1D560F478();
  v98 = OUTLINED_FUNCTION_12_0(v97, &v202);
  v187[30] = v99;
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_94_15(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DA0, &qword_1D564AE38);
  v102 = OUTLINED_FUNCTION_20(v101, &v189);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v104);
  v105 = sub_1D560FB08();
  v106 = OUTLINED_FUNCTION_12_0(v105, v200);
  v187[25] = v107;
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_86_17(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DA8, &unk_1D564AE40);
  v110 = OUTLINED_FUNCTION_20(v109, &v188);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v111);
  v113 = v187 - v112;
  v114 = sub_1D560F7A8();
  v115 = OUTLINED_FUNCTION_12_0(v114, v198);
  v187[21] = v116;
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DB0, &unk_1D565D170);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_205_3();
  MEMORY[0x1EEE9AC00](v119);
  v121 = v187 - v120;
  v122 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v123);
  v124 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudMusicShareableItem(v124);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  sub_1D5614A88();
  v207[1] = sub_1D5614BD8();
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v157();
      sub_1D560F728();
      v158 = sub_1D560F798();
      OUTLINED_FUNCTION_9_80(v158);
      if (v130)
      {
        v159 = OUTLINED_FUNCTION_21_1();
        v160(v159);
        v133 = &qword_1EC7F2DA8;
        v134 = &unk_1D564AE40;
        goto LABEL_51;
      }

      sub_1D4E50004(v113, &qword_1EC7F2DA8, &unk_1D564AE40);
      OUTLINED_FUNCTION_241();
      OUTLINED_FUNCTION_172();
      sub_1D560F728();
      OUTLINED_FUNCTION_249_0();
      OUTLINED_FUNCTION_68_20();
      sub_1D5614C28();
      v182 = OUTLINED_FUNCTION_21_1();
      v183(v182);
      goto LABEL_55;
    case 2u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v145();
      OUTLINED_FUNCTION_172();
      sub_1D560FA88();
      v146 = sub_1D560FAF8();
      OUTLINED_FUNCTION_9_80(v146);
      if (!v130)
      {

        sub_1D4E50004(v113, &qword_1EC7F2DA0, &qword_1D564AE38);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172();
        sub_1D560FA88();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        goto LABEL_53;
      }

      v147 = OUTLINED_FUNCTION_45_31();
      v148(v147);
      v133 = &qword_1EC7F2DA0;
      v134 = &qword_1D564AE38;
      goto LABEL_51;
    case 3u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v149();
      OUTLINED_FUNCTION_172();
      sub_1D560F3F8();
      v150 = sub_1D560F468();
      OUTLINED_FUNCTION_9_80(v150);
      if (!v130)
      {

        sub_1D4E50004(v113, &qword_1EC7F2D98, &qword_1D564AE30);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172();
        sub_1D560F3F8();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        goto LABEL_53;
      }

      v151 = OUTLINED_FUNCTION_45_31();
      v152(v151);
      v133 = &qword_1EC7F2D98;
      v134 = &qword_1D564AE30;
      goto LABEL_51;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_117_0();
      sub_1D5285360();
      OUTLINED_FUNCTION_202_3();
      if (!v130)
      {

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_186_4();
        sub_1D4E67688(v21);
        v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DD0, &qword_1D565D1A0);
        OUTLINED_FUNCTION_138_8(v180);
      }

      v179 = type metadata accessor for CloudMusicMovie;
      goto LABEL_54;
    case 5u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v161();
      OUTLINED_FUNCTION_172();
      sub_1D560CFE8();
      v162 = sub_1D560D058();
      OUTLINED_FUNCTION_9_80(v162);
      if (!v130)
      {

        sub_1D4E50004(v113, &qword_1EC7F2D90, &qword_1D564AE28);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172();
        sub_1D560CFE8();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        goto LABEL_53;
      }

      v163 = OUTLINED_FUNCTION_45_31();
      v164(v163);
      v133 = &qword_1EC7F2D90;
      v134 = &qword_1D564AE28;
      goto LABEL_51;
    case 6u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v165();
      OUTLINED_FUNCTION_172();
      sub_1D56104F8();
      v166 = sub_1D5610578();
      OUTLINED_FUNCTION_9_80(v166);
      if (!v130)
      {

        sub_1D4E50004(v113, &qword_1EC7F2D88, &qword_1D564AE20);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172();
        sub_1D56104F8();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        goto LABEL_53;
      }

      v167 = OUTLINED_FUNCTION_45_31();
      v168(v167);
      v133 = &qword_1EC7F2D88;
      v134 = &qword_1D564AE20;
      goto LABEL_51;
    case 7u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v153();
      OUTLINED_FUNCTION_172();
      sub_1D5610888();
      v154 = sub_1D56108F8();
      OUTLINED_FUNCTION_9_80(v154);
      if (!v130)
      {

        sub_1D4E50004(v113, &qword_1EC7F2D80, &unk_1D565D160);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172();
        sub_1D5610888();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        goto LABEL_53;
      }

      v155 = OUTLINED_FUNCTION_45_31();
      v156(v155);
      v133 = &qword_1EC7F2D80;
      v134 = &unk_1D565D160;
      goto LABEL_51;
    case 8u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v174();
      OUTLINED_FUNCTION_172();
      sub_1D5610BC8();
      v175 = sub_1D5610C38();
      OUTLINED_FUNCTION_9_80(v175);
      if (!v130)
      {

        sub_1D4E50004(v113, &qword_1EC7F2D78, &unk_1D564AE10);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172();
        sub_1D5610BC8();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        goto LABEL_53;
      }

      v176 = OUTLINED_FUNCTION_45_31();
      v177(v176);
      v133 = &qword_1EC7F2D78;
      v134 = &unk_1D564AE10;
      goto LABEL_51;
    case 9u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v141();
      OUTLINED_FUNCTION_172();
      sub_1D5611958();
      v142 = sub_1D5611988();
      OUTLINED_FUNCTION_9_80(v142);
      if (!v130)
      {

        sub_1D4E50004(v113, &qword_1EC7EF368, &unk_1D56310C0);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172();
        sub_1D5611958();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        goto LABEL_53;
      }

      v143 = OUTLINED_FUNCTION_45_31();
      v144(v143);
      v133 = &qword_1EC7EF368;
      v134 = &unk_1D56310C0;
      goto LABEL_51;
    case 0xAu:
      OUTLINED_FUNCTION_69_2();
      v169 = OUTLINED_FUNCTION_61_8();
      v170(v169);
      OUTLINED_FUNCTION_172();
      sub_1D5614998();
      v171 = sub_1D5614A08();
      OUTLINED_FUNCTION_9_80(v171);
      if (!v130)
      {

        sub_1D4E50004(v113, &qword_1EC7F2D70, &unk_1D564AE00);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172();
        sub_1D5614998();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        goto LABEL_53;
      }

      v172 = OUTLINED_FUNCTION_45_31();
      v173(v172);
      v133 = &qword_1EC7F2D70;
      v134 = &unk_1D564AE00;
      goto LABEL_51;
    case 0xBu:
      OUTLINED_FUNCTION_40_3();
      v136 = OUTLINED_FUNCTION_42_3();
      v137(v136);
      v113 = v199;
      sub_1D560FCB8();
      v138 = sub_1D560FD58();
      OUTLINED_FUNCTION_9_80(v138);
      if (!v130)
      {

        sub_1D4E50004(v113, &qword_1EC7F2D68, &unk_1D565D150);
        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_172();
        sub_1D560FCB8();
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_68_20();
        goto LABEL_53;
      }

      v139 = OUTLINED_FUNCTION_45_31();
      v140(v139);
      v133 = &qword_1EC7F2D68;
      v134 = &unk_1D565D150;
LABEL_51:
      v135 = v113;
      goto LABEL_52;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v20 = v203;
      sub_1D5285360();
      OUTLINED_FUNCTION_202_3();
      if (!v130)
      {

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_186_4();
        sub_1D4E67688(v21);
        v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DC8, &unk_1D564AE60);
        OUTLINED_FUNCTION_138_8(v181);
      }

      v179 = type metadata accessor for CloudTVEpisode;
      goto LABEL_54;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v20 = v204;
      sub_1D5285360();
      OUTLINED_FUNCTION_202_3();
      if (!v130)
      {

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_186_4();
        sub_1D4E67688(v21);
        v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DC0, &qword_1D564AE58);
        OUTLINED_FUNCTION_138_8(v184);
      }

      v179 = type metadata accessor for CloudTVShow;
      goto LABEL_54;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v20 = v205;
      sub_1D5285360();
      OUTLINED_FUNCTION_202_3();
      if (!v130)
      {

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_186_4();
        sub_1D4E67688(v21);
        v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DB8, &qword_1D564AE50);
        OUTLINED_FUNCTION_138_8(v178);
      }

      v179 = type metadata accessor for CloudUploadedVideo;
LABEL_54:
      sub_1D5285EA4(v20, v179);
      goto LABEL_55;
    default:
      v126 = OUTLINED_FUNCTION_82_17();
      v127(v126, v22, v122);
      sub_1D560F278();
      v128 = sub_1D560F2F8();
      OUTLINED_FUNCTION_35_3(v121, v129, v128);
      if (v130)
      {
        v131 = OUTLINED_FUNCTION_45_31();
        v132(v131);
        v133 = &qword_1EC7F2DB0;
        v134 = &unk_1D565D170;
        v135 = v121;
LABEL_52:
        sub_1D4E50004(v135, v133, v134);
      }

      else
      {

        sub_1D4E50004(v121, &qword_1EC7F2DB0, &unk_1D565D170);
        OUTLINED_FUNCTION_241();
        sub_1D560F278();
        OUTLINED_FUNCTION_249_0();
LABEL_53:
        sub_1D5614C28();
        v185 = OUTLINED_FUNCTION_45_31();
        v186(v185);
      }

LABEL_55:
      OUTLINED_FUNCTION_248();
      OUTLINED_FUNCTION_26();
      return;
  }
}

void CloudMusicShareableItem.mergeAttributes(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v24;
  a20 = v25;
  a10 = v21;
  v150[0] = v20;
  v150[1] = v26;
  v150[2] = v27;
  v147[2] = type metadata accessor for CloudUploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v149 = v29;
  v30 = OUTLINED_FUNCTION_70_0();
  v146 = type metadata accessor for CloudTVShow(v30);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v148 = v32;
  v33 = OUTLINED_FUNCTION_70_0();
  v145[1] = type metadata accessor for CloudTVEpisode(v33);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v147[1] = v35;
  OUTLINED_FUNCTION_70_0();
  v147[0] = sub_1D560FBB8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v145[2] = v37;
  OUTLINED_FUNCTION_70_0();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v145[3] = v39;
  v145[4] = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v145[0] = v40;
  OUTLINED_FUNCTION_70_0();
  v144 = sub_1D56148C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v143[0] = v42;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614A18();
  OUTLINED_FUNCTION_4();
  v143[1] = v44;
  v143[2] = v43;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v142[1] = v45;
  OUTLINED_FUNCTION_70_0();
  v142[0] = sub_1D5611898();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v47);
  v141 = sub_1D5611998();
  OUTLINED_FUNCTION_4();
  v140[3] = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v50);
  v51 = sub_1D5610B08();
  v52 = OUTLINED_FUNCTION_12_0(v51, &a15);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v53);
  v54 = sub_1D5610C48();
  v55 = OUTLINED_FUNCTION_12_0(v54, &a14);
  v139 = v56;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v57);
  v58 = sub_1D56107E8();
  v59 = OUTLINED_FUNCTION_12_0(v58, &a10);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v60);
  v61 = sub_1D5610908();
  v62 = OUTLINED_FUNCTION_12_0(v61, &a9);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v63);
  v64 = sub_1D56100B8();
  v65 = OUTLINED_FUNCTION_12_0(v64, v150);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v66);
  v67 = sub_1D5610588();
  v68 = OUTLINED_FUNCTION_12_0(v67, &v149);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v69);
  v70 = sub_1D560CF18();
  v71 = OUTLINED_FUNCTION_12_0(v70, v147);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v72);
  v73 = sub_1D560D068();
  v74 = OUTLINED_FUNCTION_12_0(v73, &v146);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  v76 = OUTLINED_FUNCTION_48(v75);
  v77 = type metadata accessor for CloudMusicMovie(v76);
  v78 = OUTLINED_FUNCTION_20(v77, v143);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v79);
  v80 = sub_1D560F328();
  v81 = OUTLINED_FUNCTION_12_0(v80, v145);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v82);
  v83 = sub_1D560F478();
  v84 = OUTLINED_FUNCTION_12_0(v83, &v144);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v85);
  v86 = sub_1D560F9A8();
  v87 = OUTLINED_FUNCTION_12_0(v86, v142);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v88);
  v89 = sub_1D560FB08();
  v90 = OUTLINED_FUNCTION_12_0(v89, &v141);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v91);
  v92 = sub_1D560F648();
  v93 = OUTLINED_FUNCTION_12_0(v92, v140);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v94 = sub_1D560F7A8();
  v95 = OUTLINED_FUNCTION_12_0(v94, &v139);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  sub_1D560F1A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  v97 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v98);
  v99 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudMusicShareableItem(v99);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5();
  v103 = v102 - v101;
  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_258();
      OUTLINED_FUNCTION_151();
      v126();
      sub_1D560F658();
      sub_1D5286090(&qword_1EC7F2E28, MEMORY[0x1E6975768], MEMORY[0x1E6975770]);
      sub_1D5614C48();
      OUTLINED_FUNCTION_136();
      v127(v23);
      v128 = OUTLINED_FUNCTION_132_1();
      v129(v128);
      break;
    case 2u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v123();
      OUTLINED_FUNCTION_167_0();
      sub_1D560F9B8();
      sub_1D5286090(&qword_1EC7F2E20, MEMORY[0x1E6975990], MEMORY[0x1E6975998]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2();
      goto LABEL_24;
    case 3u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v124();
      OUTLINED_FUNCTION_167_0();
      sub_1D560F338();
      sub_1D5286090(&qword_1EC7F2E18, MEMORY[0x1E6975688], MEMORY[0x1E6975690]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2();
      goto LABEL_24;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_271();
      v116 = OUTLINED_FUNCTION_285_0();
      type metadata accessor for CloudMusicMovie.Attributes(v116);
      v117 = sub_1D5286090(&qword_1EC7F2E10, type metadata accessor for CloudMusicMovie.Attributes, &protocol conformance descriptor for CloudMusicMovie.Attributes);
      OUTLINED_FUNCTION_137_9(v117);
      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v22, v118);
      break;
    case 5u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v130();
      OUTLINED_FUNCTION_167_0();
      sub_1D560CF28();
      sub_1D5286090(&qword_1EC7F2E08, MEMORY[0x1E6974D70], MEMORY[0x1E6974D78]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2();
      goto LABEL_24;
    case 6u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v133();
      OUTLINED_FUNCTION_167_0();
      sub_1D56100C8();
      sub_1D5286090(&qword_1EC7F2E00, MEMORY[0x1E6975C00], MEMORY[0x1E6975C08]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2();
      goto LABEL_24;
    case 7u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v125();
      OUTLINED_FUNCTION_167_0();
      sub_1D56107F8();
      sub_1D5286090(&qword_1EC7F2DF8, MEMORY[0x1E6975DD8], MEMORY[0x1E6975DE0]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2();
      goto LABEL_24;
    case 8u:
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_140();
      v136();
      OUTLINED_FUNCTION_167_0();
      sub_1D5610B18();
      sub_1D5286090(&qword_1EC7F2DF0, MEMORY[0x1E6975F90], MEMORY[0x1E6975F98]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_192_2();
      goto LABEL_24;
    case 9u:
      OUTLINED_FUNCTION_69_2();
      v121 = OUTLINED_FUNCTION_61_8();
      v122(v121);
      OUTLINED_FUNCTION_167_0();
      sub_1D56118A8();
      sub_1D5286090(&qword_1EC7F2DE8, MEMORY[0x1E6976258], MEMORY[0x1E6976260]);
      OUTLINED_FUNCTION_73();
      sub_1D5614C48();
      goto LABEL_24;
    case 0xAu:
      OUTLINED_FUNCTION_40_3();
      v134 = OUTLINED_FUNCTION_42_3();
      v135(v134);
      sub_1D56148D8();
      sub_1D5286090(&qword_1EC7F2DE0, MEMORY[0x1E6977410], MEMORY[0x1E6977418]);
      OUTLINED_FUNCTION_73();
      sub_1D5614C48();
      goto LABEL_24;
    case 0xBu:
      OUTLINED_FUNCTION_40_3();
      v114 = OUTLINED_FUNCTION_42_3();
      v115(v114);
      sub_1D560FBC8();
      sub_1D5286090(&qword_1EC7F2DD8, MEMORY[0x1E6975A98], MEMORY[0x1E6975AA0]);
      OUTLINED_FUNCTION_73();
      sub_1D5614C48();
LABEL_24:
      OUTLINED_FUNCTION_136();
      v137 = OUTLINED_FUNCTION_13_8();
      v138(v137);
      v108 = OUTLINED_FUNCTION_45_31();
      goto LABEL_25;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      OUTLINED_FUNCTION_146_6();
      sub_1D5285360();
      v119 = OUTLINED_FUNCTION_285_0();
      type metadata accessor for CloudTVEpisode.Attributes(v119);
      v120 = sub_1D5286090(&qword_1EC7EDB30, type metadata accessor for CloudTVEpisode.Attributes, &protocol conformance descriptor for CloudTVEpisode.Attributes);
      OUTLINED_FUNCTION_137_9(v120);
      if (v21)
      {
        v113 = type metadata accessor for CloudTVEpisode;
      }

      else
      {
        OUTLINED_FUNCTION_59_22();
      }

      goto LABEL_23;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v22 = v148;
      sub_1D5285360();
      v131 = OUTLINED_FUNCTION_285_0();
      type metadata accessor for CloudTVShow.Attributes(v131);
      v132 = sub_1D5286090(&qword_1EC7ED1B0, type metadata accessor for CloudTVShow.Attributes, &protocol conformance descriptor for CloudTVShow.Attributes);
      OUTLINED_FUNCTION_137_9(v132);
      if (v21)
      {
        v113 = type metadata accessor for CloudTVShow;
      }

      else
      {
        OUTLINED_FUNCTION_57_28();
      }

      goto LABEL_23;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      v22 = v149;
      sub_1D5285360();
      v111 = OUTLINED_FUNCTION_285_0();
      type metadata accessor for CloudUploadedVideo.Attributes(v111);
      v112 = sub_1D5286090(&qword_1EC7F0EB0, type metadata accessor for CloudUploadedVideo.Attributes, &protocol conformance descriptor for CloudUploadedVideo.Attributes);
      OUTLINED_FUNCTION_137_9(v112);
      if (v21)
      {
        v113 = type metadata accessor for CloudUploadedVideo;
      }

      else
      {
        OUTLINED_FUNCTION_58_27();
      }

LABEL_23:
      sub_1D5285EA4(v22, v113);
      break;
    default:
      v104 = OUTLINED_FUNCTION_82_17();
      v105(v104, v103, v97);
      sub_1D560F1B8();
      sub_1D5286090(&qword_1EC7F2E30, MEMORY[0x1E69755F8], MEMORY[0x1E6975600]);
      OUTLINED_FUNCTION_286_0();
      sub_1D5614C48();
      OUTLINED_FUNCTION_136();
      v106 = OUTLINED_FUNCTION_91_0();
      v107(v106);
      v108 = OUTLINED_FUNCTION_134_8();
      v110 = v97;
LABEL_25:
      v109(v108, v110);
      break;
  }

  OUTLINED_FUNCTION_26();
}

void CloudMusicShareableItem.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v24;
  a20 = v25;
  v304 = v21;
  v302[1] = v26;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD60, &qword_1D5622F50);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v300 = v31;
  v32 = OUTLINED_FUNCTION_70_0();
  v301 = type metadata accessor for CloudUploadedVideo.Relationships(v32);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v35 = OUTLINED_FUNCTION_48(v34);
  v297 = type metadata accessor for CloudUploadedVideo(v35);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v302[0] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = OUTLINED_FUNCTION_64_19(v40);
  v298[1] = type metadata accessor for CloudTVShow.Relationships(v41);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v44 = OUTLINED_FUNCTION_48(v43);
  v293 = type metadata accessor for CloudTVShow(v44);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  v299 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_22(v47);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  v294 = v49;
  v50 = OUTLINED_FUNCTION_70_0();
  v295 = type metadata accessor for CloudTVEpisode.Relationships(v50);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v53 = OUTLINED_FUNCTION_48(v52);
  v290[2] = type metadata accessor for CloudTVEpisode(v53);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  v296 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CD8, &qword_1D564AD60);
  OUTLINED_FUNCTION_22(v56);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_3();
  v291[0] = v58;
  OUTLINED_FUNCTION_70_0();
  v292 = sub_1D560FBF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v60);
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v291[2] = v62;
  v291[3] = v61;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  v291[1] = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CE0, &unk_1D564AD68);
  OUTLINED_FUNCTION_22(v64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v66);
  v67 = sub_1D5614918();
  v68 = OUTLINED_FUNCTION_12_0(v67, &a18);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v69);
  v70 = sub_1D5614A18();
  v71 = OUTLINED_FUNCTION_12_0(v70, &a17);
  v289 = v72;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF378, &unk_1D56310D0);
  OUTLINED_FUNCTION_22(v74);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D56118D8();
  v78 = OUTLINED_FUNCTION_12_0(v77, &a13);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v79);
  v80 = sub_1D5611998();
  v81 = OUTLINED_FUNCTION_12_0(v80, &a12);
  v287 = v82;
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CE8, &qword_1D564AD78);
  OUTLINED_FUNCTION_22(v84);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v86);
  v87 = sub_1D5610B48();
  v88 = OUTLINED_FUNCTION_12_0(v87, &v305);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v89);
  v90 = sub_1D5610C48();
  v91 = OUTLINED_FUNCTION_12_0(v90, &v304);
  v285[0] = v92;
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CF0, &unk_1D564AD80);
  OUTLINED_FUNCTION_22(v94);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v96);
  v97 = sub_1D5610818();
  v98 = OUTLINED_FUNCTION_12_0(v97, v302);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v99);
  v100 = sub_1D5610908();
  v101 = OUTLINED_FUNCTION_12_0(v100, &v301);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_22(v103);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v105);
  v106 = sub_1D5610458();
  v107 = OUTLINED_FUNCTION_12_0(v106, v298);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v108);
  v109 = sub_1D5610588();
  v110 = OUTLINED_FUNCTION_12_0(v109, &v297);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CF8, &unk_1D564AD90);
  OUTLINED_FUNCTION_22(v112);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v114);
  v115 = sub_1D560CF68();
  v116 = OUTLINED_FUNCTION_12_0(v115, &v293);
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v117);
  v118 = sub_1D560D068();
  v119 = OUTLINED_FUNCTION_12_0(v118, &v292);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_22(v121);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_13_3();
  v124 = OUTLINED_FUNCTION_48(v123);
  v125 = type metadata accessor for CloudMusicMovie.Relationships(v124);
  v126 = OUTLINED_FUNCTION_20(v125, v291);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_5_0();
  v128 = OUTLINED_FUNCTION_48(v127);
  v129 = type metadata accessor for CloudMusicMovie(v128);
  v130 = OUTLINED_FUNCTION_20(v129, &v288);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v131);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D00, &unk_1D564ADA0);
  OUTLINED_FUNCTION_22(v132);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v134);
  v135 = sub_1D560F368();
  v136 = OUTLINED_FUNCTION_12_0(v135, v290);
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v137);
  v138 = sub_1D560F478();
  v139 = OUTLINED_FUNCTION_12_0(v138, &v289);
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D08, &unk_1D565D100);
  OUTLINED_FUNCTION_22(v141);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v143);
  v144 = sub_1D560F9E8();
  v145 = OUTLINED_FUNCTION_12_0(v144, &v287);
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v146);
  v147 = sub_1D560FB08();
  v148 = OUTLINED_FUNCTION_12_0(v147, &v286);
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v149);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D10, &unk_1D564ADB0);
  OUTLINED_FUNCTION_22(v150);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_15_3();
  v152 = sub_1D560F6A8();
  v153 = OUTLINED_FUNCTION_12_0(v152, v285);
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v154);
  v155 = sub_1D560F7A8();
  v156 = OUTLINED_FUNCTION_12_0(v155, &v284);
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_5();
  v159 = v158 - v157;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D18, &unk_1D565D110);
  OUTLINED_FUNCTION_22(v160);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_43_2();
  v162 = sub_1D560F1F8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v164 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v165);
  v166 = OUTLINED_FUNCTION_13_0();
  v167 = v28;
  v168 = type metadata accessor for CloudMusicShareableItem(v166);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v169);
  OUTLINED_FUNCTION_5();
  v172 = v171 - v170;
  v173 = *(v167 + 16);
  v302[2] = v167;
  if (v173)
  {

    v303 = v167;
  }

  else
  {
    v303 = 0;
  }

  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  OUTLINED_FUNCTION_13_8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_200_2();
      v215();
      sub_1D560F6B8();
      OUTLINED_FUNCTION_28_48(v22, 1, v285);
      if (v183)
      {
        v216 = OUTLINED_FUNCTION_250_0();
        v217(v216);
        v178 = &qword_1EC7F2D10;
        v179 = &unk_1D564ADB0;
        v180 = v22;
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_282_1();
      OUTLINED_FUNCTION_287_0();
      v268();
      sub_1D5286090(&qword_1EC7F2E88, MEMORY[0x1E69757E0], MEMORY[0x1E69757E8]);
      sub_1D5614C48();
      (*(v164 + 8))(v162, v159);
      v269 = OUTLINED_FUNCTION_250_0();
      v270(v269);
      goto LABEL_55;
    case 2u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v200();
      OUTLINED_FUNCTION_41_34();
      sub_1D560F9F8();
      v201 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v201, v202, &v287);
      if (!v183)
      {

        OUTLINED_FUNCTION_35_0();
        v256 = OUTLINED_FUNCTION_17_59();
        v257(v256);
        v253 = &qword_1EC7F2E80;
        v254 = MEMORY[0x1E69759C0];
        v255 = MEMORY[0x1E69759C8];
        goto LABEL_53;
      }

      v203 = OUTLINED_FUNCTION_61_5();
      v204(v203);
      v178 = &qword_1EC7F2D08;
      v179 = &unk_1D565D100;
      goto LABEL_49;
    case 3u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v205();
      OUTLINED_FUNCTION_41_34();
      sub_1D560F378();
      v206 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v206, v207, v290);
      if (!v183)
      {

        OUTLINED_FUNCTION_35_0();
        v258 = OUTLINED_FUNCTION_17_59();
        v259(v258);
        v253 = &qword_1EC7F2E78;
        v254 = MEMORY[0x1E69756B8];
        v255 = MEMORY[0x1E69756C0];
        goto LABEL_53;
      }

      v208 = OUTLINED_FUNCTION_61_5();
      v209(v208);
      v178 = &qword_1EC7F2D00;
      v179 = &unk_1D564ADA0;
      goto LABEL_49;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_271();
      OUTLINED_FUNCTION_117_0();
      sub_1D4FB8150();
      OUTLINED_FUNCTION_50_0(v20, 1, v291);
      if (!v183)
      {

        OUTLINED_FUNCTION_117_0();
        sub_1D5285360();
        sub_1D5286090(&qword_1EC7F2E70, type metadata accessor for CloudMusicMovie.Relationships, &protocol conformance descriptor for CloudMusicMovie.Relationships);
        OUTLINED_FUNCTION_198_4(v20);
        sub_1D5285EA4(v20, type metadata accessor for CloudMusicMovie.Relationships);
        OUTLINED_FUNCTION_7_89();
        sub_1D5285EA4(v164, v247);
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v164, v191);
      v178 = &qword_1EC7EF310;
      v179 = &qword_1D565B640;
      v180 = v20;
      goto LABEL_50;
    case 5u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v218();
      OUTLINED_FUNCTION_41_34();
      sub_1D560CF78();
      v219 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v219, v220, &v293);
      if (!v183)
      {

        OUTLINED_FUNCTION_35_0();
        v271 = OUTLINED_FUNCTION_17_59();
        v272(v271);
        v253 = &qword_1EC7F2E68;
        v254 = MEMORY[0x1E6974DB0];
        v255 = MEMORY[0x1E6974DB8];
        goto LABEL_53;
      }

      v221 = OUTLINED_FUNCTION_61_5();
      v222(v221);
      v178 = &qword_1EC7F2CF8;
      v179 = &unk_1D564AD90;
      goto LABEL_49;
    case 6u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v226();
      OUTLINED_FUNCTION_41_34();
      sub_1D5610468();
      v227 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v227, v228, v298);
      if (!v183)
      {

        OUTLINED_FUNCTION_35_0();
        v276 = OUTLINED_FUNCTION_17_59();
        v277(v276);
        v253 = &qword_1EC7F2E60;
        v254 = MEMORY[0x1E6975CA0];
        v255 = MEMORY[0x1E6975CA8];
        goto LABEL_53;
      }

      v229 = OUTLINED_FUNCTION_61_5();
      v230(v229);
      v178 = &qword_1EC7ECF48;
      v179 = &qword_1D5623AE0;
      goto LABEL_49;
    case 7u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v210();
      OUTLINED_FUNCTION_41_34();
      sub_1D5610828();
      v211 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v211, v212, v302);
      if (!v183)
      {

        OUTLINED_FUNCTION_35_0();
        v260 = OUTLINED_FUNCTION_17_59();
        v261(v260);
        v253 = &qword_1EC7F2E58;
        v254 = MEMORY[0x1E6975E08];
        v255 = MEMORY[0x1E6975E10];
        goto LABEL_53;
      }

      v213 = OUTLINED_FUNCTION_61_5();
      v214(v213);
      v178 = &qword_1EC7F2CF0;
      v179 = &unk_1D564AD80;
      goto LABEL_49;
    case 8u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v236();
      OUTLINED_FUNCTION_41_34();
      sub_1D5610B58();
      v237 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v237, v238, &v305);
      if (!v183)
      {

        OUTLINED_FUNCTION_35_0();
        v280 = OUTLINED_FUNCTION_17_59();
        v281(v280);
        v253 = &qword_1EC7F2E50;
        v254 = MEMORY[0x1E6975FC0];
        v255 = MEMORY[0x1E6975FC8];
        goto LABEL_53;
      }

      v239 = OUTLINED_FUNCTION_61_5();
      v240(v239);
      v178 = &qword_1EC7F2CE8;
      v179 = &qword_1D564AD78;
      goto LABEL_49;
    case 9u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v195();
      OUTLINED_FUNCTION_41_34();
      sub_1D56118E8();
      v196 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v196, v197, &a13);
      if (!v183)
      {

        OUTLINED_FUNCTION_35_0();
        v251 = OUTLINED_FUNCTION_17_59();
        v252(v251);
        v253 = &qword_1EC7F2E48;
        v254 = MEMORY[0x1E6976278];
        v255 = MEMORY[0x1E6976280];
        goto LABEL_53;
      }

      v198 = OUTLINED_FUNCTION_61_5();
      v199(v198);
      v178 = &qword_1EC7EF378;
      v179 = &unk_1D56310D0;
      goto LABEL_49;
    case 0xAu:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_151();
      v231();
      OUTLINED_FUNCTION_41_34();
      sub_1D5614928();
      v232 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v232, v233, &a18);
      if (!v183)
      {

        OUTLINED_FUNCTION_35_0();
        v278 = OUTLINED_FUNCTION_17_59();
        v279(v278);
        v253 = &qword_1EC7F2E40;
        v254 = MEMORY[0x1E6977440];
        v255 = MEMORY[0x1E6977448];
        goto LABEL_53;
      }

      v234 = OUTLINED_FUNCTION_61_5();
      v235(v234);
      v178 = &qword_1EC7F2CE0;
      v179 = &unk_1D564AD68;
      goto LABEL_49;
    case 0xBu:
      OUTLINED_FUNCTION_113_9();
      v185 = OUTLINED_FUNCTION_131_6();
      v186(v185);
      v168 = v291[0];
      sub_1D560FC28();
      v187 = OUTLINED_FUNCTION_45_1();
      v20 = v292;
      if (__swift_getEnumTagSinglePayload(v187, v188, v292) != 1)
      {

        OUTLINED_FUNCTION_35_0();
        v245 = OUTLINED_FUNCTION_17_59();
        v246(v245);
        v253 = &qword_1EC7F2E38;
        v254 = MEMORY[0x1E6975AB8];
        v255 = MEMORY[0x1E6975AC0];
LABEL_53:
        sub_1D5286090(v253, v254, v255);
        OUTLINED_FUNCTION_252_0();
        sub_1D5614C48();
        (*(v164 + 8))(v22, v20);
        v282 = OUTLINED_FUNCTION_61_5();
        v283(v282);
        goto LABEL_55;
      }

      v189 = OUTLINED_FUNCTION_61_5();
      v190(v189);
      v178 = &qword_1EC7F2CD8;
      v179 = &qword_1D564AD60;
LABEL_49:
      v180 = v168;
      goto LABEL_50;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v20 = v296;
      sub_1D5285360();
      v164 = v294;
      sub_1D4FB8150();
      v192 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_14_54(v192, v193);
      if (!v183)
      {

        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_271();
        sub_1D5286090(&qword_1EC7EDB38, type metadata accessor for CloudTVEpisode.Relationships, &protocol conformance descriptor for CloudTVEpisode.Relationships);
        v248 = OUTLINED_FUNCTION_286_0();
        OUTLINED_FUNCTION_198_4(v248);
        v249 = OUTLINED_FUNCTION_152_7();
        sub_1D5285EA4(v249, v250);
        v244 = type metadata accessor for CloudTVEpisode;
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_16_66();
      sub_1D5285EA4(v20, v194);
      v178 = &qword_1EC7ECD98;
      v179 = &unk_1D5627070;
      goto LABEL_39;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v20 = v299;
      sub_1D5285360();
      v164 = v298[0];
      sub_1D4FB8150();
      v223 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_14_54(v223, v224);
      if (!v183)
      {

        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_271();
        sub_1D5286090(&qword_1EC7ED1B8, type metadata accessor for CloudTVShow.Relationships, &protocol conformance descriptor for CloudTVShow.Relationships);
        v273 = OUTLINED_FUNCTION_286_0();
        OUTLINED_FUNCTION_198_4(v273);
        v274 = OUTLINED_FUNCTION_152_7();
        sub_1D5285EA4(v274, v275);
        v244 = type metadata accessor for CloudTVShow;
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_51_27();
      sub_1D5285EA4(v20, v225);
      v178 = &qword_1EC7ED190;
      v179 = &qword_1D5623F30;
      goto LABEL_39;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      OUTLINED_FUNCTION_261_0();
      sub_1D5285360();
      OUTLINED_FUNCTION_146_6();
      sub_1D4FB8150();
      v181 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_14_54(v181, v182);
      if (!v183)
      {

        OUTLINED_FUNCTION_212_3();
        OUTLINED_FUNCTION_271();
        sub_1D5286090(&qword_1EC7F0EB8, type metadata accessor for CloudUploadedVideo.Relationships, &protocol conformance descriptor for CloudUploadedVideo.Relationships);
        v241 = OUTLINED_FUNCTION_286_0();
        OUTLINED_FUNCTION_198_4(v241);
        v242 = OUTLINED_FUNCTION_152_7();
        sub_1D5285EA4(v242, v243);
        v244 = type metadata accessor for CloudUploadedVideo;
LABEL_54:
        sub_1D5285EA4(v20, v244);
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_56_24();
      sub_1D5285EA4(v20, v184);
      v178 = &qword_1EC7ECD60;
      v179 = &qword_1D5622F50;
LABEL_39:
      v180 = v164;
      goto LABEL_50;
    default:
      v174 = OUTLINED_FUNCTION_135_2();
      v175(v174, v172, v164);
      sub_1D560F208();
      if (__swift_getEnumTagSinglePayload(v23, 1, v162) == 1)
      {
        v176 = OUTLINED_FUNCTION_21_1();
        v177(v176);
        v178 = &qword_1EC7F2D18;
        v179 = &unk_1D565D110;
        v180 = v23;
LABEL_50:
        sub_1D4E50004(v180, v178, v179);
      }

      else
      {

        OUTLINED_FUNCTION_69_2();
        v262 = OUTLINED_FUNCTION_211_2();
        v263(v262);
        sub_1D5286090(&qword_1EC7F2E90, MEMORY[0x1E6975638], MEMORY[0x1E6975640]);
        sub_1D5614C48();
        v264 = OUTLINED_FUNCTION_258();
        v265(v264);
        v266 = OUTLINED_FUNCTION_21_1();
        v267(v266);
      }

LABEL_55:
      OUTLINED_FUNCTION_248();
      OUTLINED_FUNCTION_26();
      return;
  }
}

void CloudMusicShareableItem.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v25;
  a20 = v26;
  v277[0] = v22;
  v274[2] = v27;
  v28 = OUTLINED_FUNCTION_116_9();
  v272[3] = type metadata accessor for CloudUploadedVideo(v28);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v274[1] = v30;
  v31 = OUTLINED_FUNCTION_70_0();
  v272[0] = type metadata accessor for CloudTVShow(v31);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v274[0] = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = OUTLINED_FUNCTION_64_19(v36);
  v272[2] = type metadata accessor for CloudTVEpisode.Associations(v37);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v40 = OUTLINED_FUNCTION_48(v39);
  v268 = type metadata accessor for CloudTVEpisode(v40);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v273 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D20, &unk_1D564F660);
  OUTLINED_FUNCTION_22(v43);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v269[0] = v45;
  OUTLINED_FUNCTION_70_0();
  v271 = sub_1D560FBD8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v47);
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v269[2] = v49;
  v270 = v48;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v269[1] = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D28, &unk_1D564ADC0);
  OUTLINED_FUNCTION_22(v51);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v53);
  v267 = sub_1D56148F8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v55);
  sub_1D5614A18();
  OUTLINED_FUNCTION_4();
  v265 = v57;
  v266 = v56;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  v264[3] = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF370, &unk_1D565D120);
  OUTLINED_FUNCTION_22(v59);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v61);
  v62 = sub_1D56118B8();
  v63 = OUTLINED_FUNCTION_12_0(v62, &a17);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v64);
  v65 = sub_1D5611998();
  v66 = OUTLINED_FUNCTION_12_0(v65, &a16);
  v263 = v67;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_83_16(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D30, &qword_1D564ADD0);
  OUTLINED_FUNCTION_22(v69);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v71);
  v72 = sub_1D5610B28();
  v73 = OUTLINED_FUNCTION_12_0(v72, &a12);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v74);
  v75 = sub_1D5610C48();
  v76 = OUTLINED_FUNCTION_12_0(v75, &a11);
  v261[0] = v77;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_77_13(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D38, &unk_1D565D130);
  OUTLINED_FUNCTION_22(v79);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v81);
  v82 = sub_1D5610808();
  v83 = OUTLINED_FUNCTION_12_0(v82, v277);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v84);
  v85 = sub_1D5610908();
  v86 = OUTLINED_FUNCTION_12_0(v85, &v276);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v88);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v90);
  v91 = sub_1D5610138();
  v92 = OUTLINED_FUNCTION_12_0(v91, v274);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v93);
  v94 = sub_1D5610588();
  v95 = OUTLINED_FUNCTION_12_0(v94, &v273);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D40, &unk_1D5658BF0);
  OUTLINED_FUNCTION_22(v97);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v99);
  v100 = sub_1D560CF48();
  v101 = OUTLINED_FUNCTION_12_0(v100, v272);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v102);
  v103 = sub_1D560D068();
  v104 = OUTLINED_FUNCTION_12_0(v103, &v271);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
  OUTLINED_FUNCTION_22(v106);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13_3();
  v109 = OUTLINED_FUNCTION_48(v108);
  v110 = type metadata accessor for CloudMusicMovie.Associations(v109);
  v111 = OUTLINED_FUNCTION_20(v110, v269);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_5_0();
  v113 = OUTLINED_FUNCTION_48(v112);
  v114 = type metadata accessor for CloudMusicMovie(v113);
  v115 = OUTLINED_FUNCTION_20(v114, v264);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D48, &qword_1D564ADD8);
  OUTLINED_FUNCTION_22(v117);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v119);
  v120 = sub_1D560F348();
  v121 = OUTLINED_FUNCTION_12_0(v120, &v266);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v122);
  v123 = sub_1D560F478();
  v124 = OUTLINED_FUNCTION_12_0(v123, &v265);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D50, &unk_1D564ADE0);
  OUTLINED_FUNCTION_22(v126);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v128);
  v129 = sub_1D560F9C8();
  v130 = OUTLINED_FUNCTION_12_0(v129, &v263);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v131);
  v132 = sub_1D560FB08();
  v133 = OUTLINED_FUNCTION_12_0(v132, &v262);
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v134);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D58, &unk_1D565D140);
  OUTLINED_FUNCTION_22(v135);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_59_8();
  v137 = sub_1D560F678();
  v138 = OUTLINED_FUNCTION_12_0(v137, v261);
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v139);
  v140 = sub_1D560F7A8();
  v141 = OUTLINED_FUNCTION_12_0(v140, &v260);
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_5();
  v144 = v143 - v142;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D60, &unk_1D564ADF0);
  OUTLINED_FUNCTION_22(v145);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_68();
  v147 = sub_1D560F1D8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v149 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v150);
  v151 = OUTLINED_FUNCTION_13_0();
  v152 = type metadata accessor for CloudMusicShareableItem(v151);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_5();
  v154 = *(v24 + 16);
  v275 = v24;
  if (v154)
  {

    v276 = v24;
  }

  else
  {
    v276 = 0;
  }

  OUTLINED_FUNCTION_1_117();
  sub_1D5285E4C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_132_9();
      OUTLINED_FUNCTION_136_8();
      v197();
      v21 = v144;
      sub_1D560F748();
      v198 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_28_48(v198, v199, v261);
      if (!v171)
      {

        OUTLINED_FUNCTION_69_2();
        v243(v257, v23, v144);
        v230 = &qword_1EC7F2EE8;
        v231 = MEMORY[0x1E6975788];
        v232 = MEMORY[0x1E6975790];
        goto LABEL_55;
      }

      v200 = OUTLINED_FUNCTION_67_0();
      v201(v200);
      v161 = &qword_1EC7F2D58;
      v162 = &unk_1D565D140;
      goto LABEL_32;
    case 2u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v182();
      OUTLINED_FUNCTION_41_34();
      sub_1D560FAA8();
      v183 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v183, v184, &v263);
      if (!v171)
      {

        OUTLINED_FUNCTION_69_2();
        v233 = OUTLINED_FUNCTION_17_59();
        v234(v233);
        v230 = &unk_1EC7F2EE0;
        v231 = MEMORY[0x1E69759A0];
        v232 = MEMORY[0x1E69759A8];
        goto LABEL_55;
      }

      v185 = OUTLINED_FUNCTION_67_0();
      v186(v185);
      v161 = &qword_1EC7F2D50;
      v162 = &unk_1D564ADE0;
      goto LABEL_46;
    case 3u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v187();
      OUTLINED_FUNCTION_41_34();
      sub_1D560F418();
      v188 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v188, v189, &v266);
      if (!v171)
      {

        OUTLINED_FUNCTION_69_2();
        v235 = OUTLINED_FUNCTION_17_59();
        v236(v235);
        v230 = &unk_1EC7F2ED8;
        v231 = MEMORY[0x1E6975698];
        v232 = MEMORY[0x1E69756A0];
        goto LABEL_55;
      }

      v190 = OUTLINED_FUNCTION_67_0();
      v191(v190);
      v161 = &qword_1EC7F2D48;
      v162 = &qword_1D564ADD8;
      goto LABEL_46;
    case 4u:
      OUTLINED_FUNCTION_5_90();
      sub_1D5285360();
      OUTLINED_FUNCTION_117_0();
      sub_1D4FB8150();
      OUTLINED_FUNCTION_50_0(v21, 1, v269);
      if (!v171)
      {

        OUTLINED_FUNCTION_117_0();
        sub_1D5285360();
        sub_1D5286090(&qword_1EC7F2ED0, type metadata accessor for CloudMusicMovie.Associations, &protocol conformance descriptor for CloudMusicMovie.Associations);
        OUTLINED_FUNCTION_198_4(v21);
        sub_1D5285EA4(v21, type metadata accessor for CloudMusicMovie.Associations);
        OUTLINED_FUNCTION_7_89();
        sub_1D5285EA4(v259, v227);
        break;
      }

      OUTLINED_FUNCTION_7_89();
      sub_1D5285EA4(v259, v172);
      v161 = &qword_1EC7ECD30;
      v162 = &unk_1D5622F30;
      v173 = v21;
      goto LABEL_47;
    case 5u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v202();
      OUTLINED_FUNCTION_41_34();
      sub_1D560D008();
      v203 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v203, v204, v272);
      if (!v171)
      {

        OUTLINED_FUNCTION_69_2();
        v244 = OUTLINED_FUNCTION_17_59();
        v245(v244);
        v230 = &unk_1EC7F2EC8;
        v231 = MEMORY[0x1E6974D90];
        v232 = MEMORY[0x1E6974D98];
        goto LABEL_55;
      }

      v205 = OUTLINED_FUNCTION_67_0();
      v206(v205);
      v161 = &qword_1EC7F2D40;
      v162 = &unk_1D5658BF0;
      goto LABEL_46;
    case 6u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v208();
      OUTLINED_FUNCTION_41_34();
      sub_1D5610518();
      v209 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v209, v210, v274);
      if (!v171)
      {

        OUTLINED_FUNCTION_69_2();
        v247 = OUTLINED_FUNCTION_17_59();
        v248(v247);
        v230 = &unk_1EC7F2EC0;
        v231 = MEMORY[0x1E6975C20];
        v232 = MEMORY[0x1E6975C28];
        goto LABEL_55;
      }

      v211 = OUTLINED_FUNCTION_67_0();
      v212(v211);
      v161 = &qword_1EC7ECF40;
      v162 = &unk_1D5623AC0;
      goto LABEL_46;
    case 7u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v192();
      OUTLINED_FUNCTION_41_34();
      sub_1D56108A8();
      v193 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v193, v194, v277);
      if (!v171)
      {

        OUTLINED_FUNCTION_69_2();
        v237 = OUTLINED_FUNCTION_17_59();
        v238(v237);
        v230 = &unk_1EC7F2EB8;
        v231 = MEMORY[0x1E6975DE8];
        v232 = MEMORY[0x1E6975DF0];
        goto LABEL_55;
      }

      v195 = OUTLINED_FUNCTION_67_0();
      v196(v195);
      v161 = &qword_1EC7F2D38;
      v162 = &unk_1D565D130;
      goto LABEL_46;
    case 8u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v219();
      OUTLINED_FUNCTION_41_34();
      sub_1D5610BE8();
      v220 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v220, v221, &a12);
      if (!v171)
      {

        OUTLINED_FUNCTION_69_2();
        v251 = OUTLINED_FUNCTION_17_59();
        v252(v251);
        v230 = &unk_1EC7F2EB0;
        v231 = MEMORY[0x1E6975FB0];
        v232 = MEMORY[0x1E6975FB8];
        goto LABEL_55;
      }

      v222 = OUTLINED_FUNCTION_67_0();
      v223(v222);
      v161 = &qword_1EC7F2D30;
      v162 = &qword_1D564ADD0;
      goto LABEL_46;
    case 9u:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_136_8();
      v177();
      OUTLINED_FUNCTION_41_34();
      sub_1D5611968();
      v178 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_28_48(v178, v179, &a17);
      if (!v171)
      {

        OUTLINED_FUNCTION_69_2();
        v228 = OUTLINED_FUNCTION_17_59();
        v229(v228);
        v230 = &unk_1EC7F2EA8;
        v231 = MEMORY[0x1E6976268];
        v232 = MEMORY[0x1E6976270];
        goto LABEL_55;
      }

      v180 = OUTLINED_FUNCTION_67_0();
      v181(v180);
      v161 = &qword_1EC7EF370;
      v162 = &unk_1D565D120;
      goto LABEL_46;
    case 0xAu:
      OUTLINED_FUNCTION_113_9();
      v213 = OUTLINED_FUNCTION_132_9();
      v149 = v266;
      v214(v213);
      OUTLINED_FUNCTION_41_34();
      sub_1D56149B8();
      v215 = OUTLINED_FUNCTION_45_1();
      v21 = v267;
      if (__swift_getEnumTagSinglePayload(v215, v216, v267) == 1)
      {
        v217 = OUTLINED_FUNCTION_67_0();
        v218(v217);
        v161 = &qword_1EC7F2D28;
        v162 = &unk_1D564ADC0;
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_69_2();
      v249 = OUTLINED_FUNCTION_17_59();
      v250(v249);
      v230 = &unk_1EC7F2EA0;
      v231 = MEMORY[0x1E6977420];
      v232 = MEMORY[0x1E6977428];
      goto LABEL_55;
    case 0xBu:
      OUTLINED_FUNCTION_113_9();
      v165 = OUTLINED_FUNCTION_132_9();
      v149 = v270;
      v166(v165);
      v20 = v269[0];
      sub_1D560FCD8();
      v167 = OUTLINED_FUNCTION_45_1();
      v21 = v271;
      if (__swift_getEnumTagSinglePayload(v167, v168, v271) == 1)
      {
        v169 = OUTLINED_FUNCTION_67_0();
        v170(v169);
        v161 = &qword_1EC7F2D20;
        v162 = &unk_1D564F660;
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_69_2();
      v225 = OUTLINED_FUNCTION_17_59();
      v226(v225);
      v230 = &unk_1EC7F2E98;
      v231 = MEMORY[0x1E6975AA8];
      v232 = MEMORY[0x1E6975AB0];
LABEL_55:
      sub_1D5286090(v230, v231, v232);
      OUTLINED_FUNCTION_252_0();
      sub_1D5614C48();
      v253 = OUTLINED_FUNCTION_210_3();
      v254(v253, v21);
      v255 = OUTLINED_FUNCTION_124_7();
      v256(v255, v149);
      break;
    case 0xCu:
      OUTLINED_FUNCTION_4_88();
      v21 = v273;
      sub_1D5285360();
      v23 = v272[1];
      sub_1D4FB8150();
      v174 = OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_14_54(v174, v175);
      if (v171)
      {
        OUTLINED_FUNCTION_16_66();
        sub_1D5285EA4(v21, v176);
        v161 = &qword_1EC7ECD80;
        v162 = &qword_1D5622F70;
LABEL_32:
        v173 = v23;
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_212_3();
      sub_1D5285360();
      sub_1D5286090(&qword_1EC7EDB40, type metadata accessor for CloudTVEpisode.Associations, &protocol conformance descriptor for CloudTVEpisode.Associations);
      OUTLINED_FUNCTION_198_4(v258);
      OUTLINED_FUNCTION_190_4();
      v164 = type metadata accessor for CloudTVEpisode;
LABEL_58:
      sub_1D5285EA4(v21, v164);
      break;
    case 0xDu:
      OUTLINED_FUNCTION_3_117();
      v21 = v274[0];
      sub_1D5285360();
      OUTLINED_FUNCTION_295_0();
      if (v207 == 1)
      {
        v164 = type metadata accessor for CloudTVShow;
      }

      else
      {

        sub_1D4FCEEA0();
        v246 = v277[0];
        sub_1D5614C48();
        if (v246)
        {
          v164 = type metadata accessor for CloudTVShow;
        }

        else
        {
          OUTLINED_FUNCTION_164_5();
        }
      }

      goto LABEL_58;
    case 0xEu:
      OUTLINED_FUNCTION_6_86();
      OUTLINED_FUNCTION_261_0();
      sub_1D5285360();
      OUTLINED_FUNCTION_295_0();
      if (v163 == 1)
      {
        v164 = type metadata accessor for CloudUploadedVideo;
      }

      else
      {

        sub_1D517B7D8();
        v224 = v277[0];
        sub_1D5614C48();
        if (v224)
        {
          v164 = type metadata accessor for CloudUploadedVideo;
        }

        else
        {
          OUTLINED_FUNCTION_165_6();
        }
      }

      goto LABEL_58;
    default:
      OUTLINED_FUNCTION_67();
      v155 = OUTLINED_FUNCTION_68_4();
      v156(v155);
      sub_1D560F298();
      v157 = OUTLINED_FUNCTION_45_1();
      if (__swift_getEnumTagSinglePayload(v157, v158, v147) == 1)
      {
        v159 = OUTLINED_FUNCTION_121();
        v160(v159);
        v161 = &qword_1EC7F2D60;
        v162 = &unk_1D564ADF0;
LABEL_46:
        v173 = v20;
LABEL_47:
        sub_1D4E50004(v173, v161, v162);
      }

      else
      {

        OUTLINED_FUNCTION_69_2();
        v239 = OUTLINED_FUNCTION_59_2();
        v240(v239);
        sub_1D5286090(&qword_1EC7F2EF0, MEMORY[0x1E6975618], MEMORY[0x1E6975620]);
        OUTLINED_FUNCTION_252_0();
        sub_1D5614C48();
        v241 = OUTLINED_FUNCTION_210_3();
        v242(v241, v147);
        (*(v152 + 8))(v21, v149);
      }

      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}