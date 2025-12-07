uint64_t sub_264A47AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[95] = v3;
  v4[94] = a3;
  v4[93] = a2;
  v4[92] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v4[96] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v4[97] = v5;
  v4[98] = *(v5 - 8);
  v4[99] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E50, &qword_264B495B0);
  v4[100] = v6;
  v4[101] = *(v6 - 8);
  v4[102] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E58, &qword_264B495B8);
  v4[103] = v7;
  v4[104] = *(v7 - 8);
  v4[105] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E60, &unk_264B495C0);
  v4[106] = v8;
  v4[107] = *(v8 - 8);
  v4[108] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E68, &qword_264B4E4E0);
  v4[109] = v9;
  v4[110] = *(v9 - 8);
  v4[111] = swift_task_alloc();
  v4[112] = sub_264B41244();
  v4[113] = sub_264B41234();
  v11 = sub_264B411C4();
  v4[114] = v11;
  v4[115] = v10;

  return MEMORY[0x2822009F8](sub_264A47D9C, v11, v10);
}

uint64_t sub_264A47D9C()
{
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[108];
  v4 = v0[107];
  v12 = v0[109];
  v13 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[103];
  type metadata accessor for ProxyingClientStatusEventConsumer(0);
  v8 = swift_allocObject();
  v0[116] = v8;
  swift_defaultActor_initialize();
  *(v8 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated) = 0;
  (*(v6 + 104))(v5, *MEMORY[0x277D85778], v7);
  sub_264B41284();
  (*(v6 + 8))(v5, v7);
  (*(v2 + 32))(v8 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_eventStream, v1, v12);
  (*(v4 + 32))(v8 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_eventContinuation, v3, v13);
  v0[117] = sub_264B41234();
  v10 = sub_264B411C4();
  v0[118] = v10;
  v0[119] = v9;

  return MEMORY[0x2822009F8](sub_264A47F48, v10, v9);
}

uint64_t sub_264A47F48(double a1)
{
  v2 = v1[116];
  v3 = v1[95];
  v1[120] = sub_264B41234();
  v4 = swift_task_alloc();
  v1[121] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v1[122] = v5;
  *v5 = v1;
  v5[1] = sub_264A4805C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A4805C()
{
  v1 = *v0;

  v2 = *(v1 + 952);
  v3 = *(v1 + 944);

  return MEMORY[0x2822009F8](sub_264A481BC, v3, v2);
}

uint64_t sub_264A481BC()
{

  v1 = *(v0 + 920);
  v2 = *(v0 + 912);

  return MEMORY[0x2822009F8](sub_264A48224, v2, v1);
}

uint64_t sub_264A48224()
{
  sub_2649CB5C0(*(v0 + 760) + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityPrimitives, v0 + 16);
  type metadata accessor for ProxyingAccessibilityMessageConsumer();
  v1 = swift_allocObject();
  *(v0 + 984) = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  *(v1 + 120) = 0u;
  sub_2649D2AAC((v0 + 16), v0 + 56);
  swift_beginAccess();
  sub_2649FECCC(v0 + 56, v1 + 120, &qword_27FF89E70, &unk_264B495D0);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_264A48318, v1, 0);
}

uint64_t sub_264A48318()
{
  v1 = v0[123];
  v2 = sub_264A54920(&qword_27FF89E78, type metadata accessor for ProxyingAccessibilityMessageConsumer, &unk_264B46CE0);
  v0[124] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E80, &unk_264B51AB0);
  swift_allocObject();
  v3 = sub_264B409D4();
  type metadata accessor for NotifyingPlaybackEventConsumer();
  v4 = swift_allocObject();
  v0[125] = v4;
  swift_defaultActor_initialize();
  v4[14] = v1;
  v4[15] = v2;
  v4[16] = v3;
  v5 = v0[115];
  v6 = v0[114];

  return MEMORY[0x2822009F8](sub_264A48414, v6, v5);
}

uint64_t sub_264A48414()
{
  v39 = v0;
  v34 = *(v0 + 1000);
  v1 = *(v0 + 760);
  v35 = *(v0 + 752);
  v2 = *(v0 + 744);
  v37 = v1;
  *(v0 + 1008) = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityMessageProducer);
  v38 = 1;
  type metadata accessor for ControlMessageSession(0);
  v3 = swift_allocObject();
  ObjectType = swift_getObjectType();
  swift_retain_n();

  v5 = swift_unknownObjectRetain();
  v36 = sub_264A78D6C(v5, &v38, v3, ObjectType, v2);
  *(v0 + 1016) = v36;
  v6 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
  *(v0 + 1024) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
  v7 = *(v1 + v6);
  type metadata accessor for UHIDKitBackedControlEventConsumerVendor();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 24) = 1;
  *(v8 + 32) = v7;
  *(v0 + 1032) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E88, &qword_264B495E0);
  v9 = swift_allocObject();
  *(v0 + 1040) = v9;
  swift_allocObject();
  v10 = v7;
  v11 = sub_264B409D4();
  v33 = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v11;
  sub_2649CB5C0(v35, v0 + 136);
  v12 = *(v0 + 160);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v12);
  v14 = *(v12 - 8);
  v15 = swift_task_alloc();
  (*(v14 + 16))(v15, v13, v12);
  v16 = *v15;
  v17 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  *(v0 + 200) = v17;
  *(v0 + 208) = &off_28765B720;
  *(v0 + 176) = v16;
  type metadata accessor for SpringBoardBackedSystemEventConsumerVendor();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v17);
  v20 = *(v17 - 8);
  v21 = swift_task_alloc();
  (*(v20 + 16))(v21, v19, v17);
  v22 = *v21;
  *(v0 + 240) = v17;
  *(v0 + 248) = &off_28765B720;
  *(v0 + 216) = v22;
  sub_2649D2AAC((v0 + 216), v18 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  *(v0 + 1048) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E90, &qword_264B495E8);
  v23 = swift_allocObject();
  *(v0 + 1056) = v23;
  swift_allocObject();
  v24 = sub_264B409D4();
  v32 = v23;
  *(v23 + 16) = v18;
  *(v23 + 24) = v24;
  swift_allocObject();
  v25 = sub_264B409D4();
  *(v0 + 1064) = v25;
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v36;
  *(v27 + 24) = v25;
  v28 = *(v37 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_dragAndDropShieldWindowSceneContainer);
  *(v0 + 1072) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E98, &unk_264B49600);
  v29 = swift_allocObject();
  *(v0 + 1080) = v29;
  swift_allocObject();

  v30 = sub_264B409D4();
  v29[6] = v28;
  v29[7] = v30;
  v29[2] = &unk_264B495F8;
  v29[3] = v27;
  v29[4] = sub_264A5482C;
  v29[5] = v26;
  *(v0 + 696) = v30;
  *(v0 + 1088) = sub_2649CB4C8(&unk_27FF89EA0, &qword_27FF89E80, &unk_264B51AB0, MEMORY[0x277CBCE20]);

  *(v0 + 688) = sub_264B40AB4();
  *(v0 + 1096) = *(v37 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubject);
  *(v0 + 1104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887B0, &qword_264B44018);
  *(v0 + 1112) = sub_2649CB4C8(&qword_27FF89EB0, &qword_27FF887B0, &qword_264B44018, MEMORY[0x277CBCD90]);
  *(v0 + 1120) = sub_2649CB4C8(&qword_27FF89EB8, &qword_27FF89E80, &unk_264B51AB0, MEMORY[0x277CBCE18]);
  sub_264B40B34();
  *(v0 + 1128) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubscriptions;
  swift_beginAccess();
  *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EC0, &unk_264B44020);
  *(v0 + 1144) = sub_2649CB4C8(&qword_27FF887C8, &unk_27FF89EC0, &unk_264B44020, MEMORY[0x277D83990]);
  sub_264B40984();
  swift_endAccess();

  *(v0 + 680) = v25;
  *(v0 + 656) = sub_264B40AB4();
  sub_264B40B34();
  swift_beginAccess();
  sub_264B40984();
  swift_endAccess();

  *(v0 + 624) = *(v33 + 24);
  *(v0 + 632) = sub_264B40AB4();
  sub_264B40B34();
  swift_beginAccess();
  sub_264B40984();
  swift_endAccess();

  *(v0 + 640) = *(v32 + 24);
  *(v0 + 648) = sub_264B40AB4();
  sub_264B40B34();
  swift_beginAccess();
  sub_264B40984();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_264A48C0C, v34, 0);
}

uint64_t sub_264A48C0C()
{
  v0[83] = *(v0[125] + 128);
  v0[144] = sub_264B40AB4();
  v1 = v0[115];
  v2 = v0[114];

  return MEMORY[0x2822009F8](sub_264A48C8C, v2, v1);
}

uint64_t sub_264A48C8C()
{
  v79 = (v0 + 376);
  v1 = *(v0 + 1016);
  *(v0 + 672) = *(v0 + 1152);
  sub_264B40B34();
  swift_beginAccess();
  sub_264B40984();
  swift_endAccess();

  swift_allocObject();
  v2 = sub_264B409D4();
  *(v0 + 1160) = v2;
  v3 = sub_264A49BB0(v1, v2);
  if (v3)
  {
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EF0, &qword_264B49618);
    v11 = swift_allocObject();
    swift_allocObject();
    v12 = sub_264B409D4();
    v11[5] = v10;
    v11[6] = v12;
    v11[2] = v7;
    v11[3] = v8;
    v11[4] = v9;
    *(v0 + 704) = v12;

    *(v0 + 712) = sub_264B40AB4();
    sub_264B40B34();
    swift_beginAccess();
    sub_264B40984();
    swift_endAccess();

    *(v0 + 720) = v2;
    *(v0 + 728) = sub_264B40AB4();
    sub_264B40B34();
    swift_beginAccess();
    sub_264B40984();
    swift_endAccess();
  }

  else
  {
    v11 = 0;
  }

  v13 = *(v0 + 1080);
  v14 = *(v0 + 1072);
  v15 = *(v0 + 1056);
  v16 = *(v0 + 1048);
  v17 = *(v0 + 1024);
  v18 = *(v0 + 760);
  *v79 = 0u;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 0;
  *(v0 + 360) = v16;
  *(v0 + 368) = &off_281EDF320;
  *(v0 + 328) = &off_281EDF320;
  *(v0 + 336) = v15;
  *(v0 + 320) = v14;
  *(v0 + 296) = v13;
  v77 = *(v18 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_statusEventProxy);
  v78 = *(v18 + v17);
  if (v11)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EF0, &qword_264B49618);
    v20 = &off_281EDF320;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    *(v0 + 264) = 0;
    *(v0 + 272) = 0;
  }

  *(v0 + 1168) = v11;
  v21 = *(v0 + 1040);
  v22 = *(v0 + 1032);
  v76 = *(v0 + 1008);
  v68 = *(v0 + 928);
  v69 = *(v0 + 1016);
  v23 = *(v0 + 816);
  v24 = *(v0 + 808);
  v25 = *(v0 + 792);
  v26 = *(v0 + 784);
  v70 = *(v0 + 800);
  v71 = *(v0 + 776);
  *(v0 + 256) = v11;
  *(v0 + 280) = v19;
  *(v0 + 288) = v20;
  v27 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v72 = sub_264A54920(&unk_27FF89ED0, type metadata accessor for ProxyingClientStatusEventConsumer, &unk_264B4E480);
  v73 = sub_264A54920(&qword_27FF887A0, type metadata accessor for NotifyingPlaybackEventConsumer, &unk_264B51A68);
  *(v0 + 120) = v22;
  *(v0 + 128) = sub_264A54968();
  *(v0 + 96) = v21;
  type metadata accessor for PlaybackServer(0);
  v28 = swift_allocObject();
  *(v0 + 1176) = v28;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  v29 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__interactionState;
  *(v0 + 608) = 0;
  *(v0 + 616) = 1;
  v74 = v78;

  swift_retain_n();

  sub_264B40A44();
  (*(v24 + 32))(v28 + v29, v23, v70);
  v30 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__isActive;
  *(v0 + 617) = 0;
  sub_264B40A44();
  (*(v26 + 32))(v28 + v30, v25, v71);
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_startupEventsQueue) = MEMORY[0x277D84F90];
  v31 = (v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  *v35 = 0;
  v35[1] = 0;
  v36 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  (*(*(v37 - 8) + 56))(v28 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v39 - 8) + 56))(v28 + v38, 1, 1, v39);
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle) = 0;
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle) = 0;
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle) = 0;
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle) = 0;
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle) = 0;
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle) = 0;
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle) = 0;
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription) = 0;
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription) = 0;
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session) = v69;
  v40 = v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider;
  if (*(v0 + 400))
  {
    sub_2649CB5C0(v79, v40);
  }

  else
  {
    v41 = *(v0 + 392);
    *v40 = *v79;
    *(v40 + 16) = v41;
    *(v40 + 32) = *(v0 + 408);
  }

  sub_2649CB5C0(v0 + 96, v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider);
  v42 = v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider;
  if (*(v0 + 360))
  {
    sub_2649CB5C0(v0 + 336, v42);
  }

  else
  {
    v43 = *(v0 + 352);
    *v42 = *(v0 + 336);
    *(v42 + 16) = v43;
    *(v42 + 32) = *(v0 + 368);
  }

  v44 = (v0 + 296);
  v45 = v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider;
  if (*(v0 + 320))
  {
    sub_2649CB5C0(v44, v45);
  }

  else
  {
    v46 = *(v0 + 312);
    *v45 = *v44;
    *(v45 + 16) = v46;
    *(v45 + 32) = *(v0 + 328);
  }

  v47 = *(v0 + 1000);
  v48 = (v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  *v48 = v68;
  v48[1] = v72;
  v49 = (v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer);
  *v49 = v77;
  v49[1] = &off_287660260;
  *(v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_telemetry) = v78;
  v50 = (v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  *v50 = v47;
  v50[1] = v73;
  v51 = (v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer);
  *v51 = v76;
  v51[1] = &off_287660260;
  v52 = v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider;
  if (*(v0 + 280))
  {
    sub_2649CB5C0(v0 + 256, v52);
  }

  else
  {
    v53 = *(v0 + 272);
    *v52 = *(v0 + 256);
    *(v52 + 16) = v53;
    *(v52 + 32) = *(v0 + 288);
  }

  v54 = *(v0 + 768);
  v55 = (v28 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler);
  *v55 = sub_264A54918;
  v55[1] = v27;

  v75 = v74;

  sub_264B41254();
  v56 = sub_264B41274();
  (*(*(v56 - 8) + 56))(v54, 0, 1, v56);
  v57 = swift_allocObject();
  swift_weakInit();

  v58 = sub_264B41234();
  v59 = swift_allocObject();
  v60 = MEMORY[0x277D85700];
  v59[2] = v58;
  v59[3] = v60;
  v59[4] = v57;

  sub_264A10C20(0, 0, v54, &unk_264B49610, v59);

  if (*(v0 + 400))
  {
    __swift_destroy_boxed_opaque_existential_0(v79);
  }

  if (*(v0 + 280))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  }

  if (*(v0 + 320))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  }

  if (*(v0 + 360))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  }

  v61 = *(v0 + 760);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  *(v61 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackServer) = v28;

  v62 = sub_264B41234();
  *(v0 + 1184) = v62;
  v63 = swift_task_alloc();
  *(v0 + 1192) = v63;
  *(v63 + 16) = v61;
  *(v63 + 24) = v28;
  v64 = swift_task_alloc();
  *(v0 + 1200) = v64;
  *v64 = v0;
  v64[1] = sub_264A49754;
  v65 = MEMORY[0x277D85700];
  v66 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v64, v62, v65, 0xD00000000000002ELL, 0x8000000264B5C6E0, sub_264A54AD8, v63, v66);
}

uint64_t sub_264A49754()
{
  v2 = *v1;
  *(*v1 + 1208) = v0;

  v3 = *(v2 + 920);
  v4 = *(v2 + 912);
  if (v0)
  {
    v5 = sub_264A49A50;
  }

  else
  {
    v5 = sub_264A498D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264A498D0()
{
  v1 = *(v0 + 760);

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription))
  {

    sub_264B40994();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A49A50()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_264A49BB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_featureFlagPrimitives + 24);
  v6 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_featureFlagPrimitives + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_featureFlagPrimitives), v5);
  v13 = 0;
  if ((*(v6 + 8))(&v13, v5, v6))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    return &unk_264B49628;
  }

  else
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AEB8);
    v10 = sub_264B40944();
    v11 = sub_264B414B4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2649C6000, v10, v11, "RemoteTextInput feature is not enabled, skipping RTI setup", v12, 2u);
      MEMORY[0x266749940](v12, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_264A49D7C(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v20 - v5;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FF8AE70);
  v8 = a1;
  v9 = sub_264B40944();
  v10 = sub_264B41494();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[1] = a1;
    v21 = v12;
    *v11 = 136315138;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v14 = sub_264B41064();
    v16 = sub_2649CC004(v14, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2649C6000, v9, v10, "PlaybackServer interrupted with fatal error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v21 = 12;
  v22 = 0x80;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_264A380B0(&v21, v6);

  return sub_2649D04D4(v6, &unk_27FF899E0, &qword_264B53440);
}

uint64_t sub_264A49FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - v12;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  swift_endAccess();
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  sub_2649CB4C8(&qword_27FF89B38, &unk_27FF89F00, &unk_264B48E00, MEMORY[0x277CBCEC8]);
  v16 = sub_264B40B54();

  (*(v10 + 8))(v13, v9);
  *(v18 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription) = v16;
}

void sub_264A4A264(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = sub_264B40944();
  v4 = sub_264B41484();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_2649C6000, v3, v4, "Playback server isActive: %{BOOL,public}d", v5, 8u);
    MEMORY[0x266749940](v5, -1, -1);
  }

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
    sub_264B411E4();
  }
}

uint64_t sub_264A4A37C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = Strong + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  if (*(Strong + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 24) && (*(v3 + 56) & 1) == 0)
  {
    v4 = *(v3 + 48) & 1;
  }

  else
  {
    v4 = 0;
  }

  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FF8AEA0);
  v6 = sub_264B40944();
  v7 = sub_264B414B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    if (v4)
    {
      v10 = 7562617;
    }

    else
    {
      v10 = 28526;
    }

    if (v4)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE200000000000000;
    }

    v12 = sub_2649CC004(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v6, v7, "Client supports drag and drop: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  return v4;
}

uint64_t sub_264A4A540(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 24) = *a3;
  *(v3 + 48) = 0;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_264A4A618;

  return sub_264A75684(a1, (v3 + 48));
}

uint64_t sub_264A4A618()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_264A558E0;
  }

  else
  {
    v2 = sub_264A558E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264A4A72C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = Strong + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  if (*(Strong + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 24) && (*(v3 + 56) & 1) == 0)
  {
    v4 = (*(v3 + 48) >> 2) & 1;
  }

  else
  {
    v4 = 0;
  }

  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FF8AEA0);
  v6 = sub_264B40944();
  v7 = sub_264B414B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    if (v4)
    {
      v10 = 7562617;
    }

    else
    {
      v10 = 28526;
    }

    if (v4)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE200000000000000;
    }

    v12 = sub_2649CC004(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v6, v7, "doesClientSupportRemoteTextInput: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  return v4;
}

uint64_t sub_264A4A8F0(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 24) = *a3;
  *(v3 + 48) = 0;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_264A4A9C8;

  return sub_264A75684(a1, (v3 + 48));
}

uint64_t sub_264A4A9C8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_264A4AB78;
  }

  else
  {
    v2 = sub_264A4AADC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264A4AADC()
{
  sub_2649CB4C8(&qword_27FF89EB8, &qword_27FF89E80, &unk_264B51AB0, MEMORY[0x277CBCE18]);
  sub_264B40A34();
  v1 = *(v0 + 8);

  return v1();
}

void sub_264A4AB90(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState;
  if ((*&v1[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v20 = &type metadata for AccessibilityMessage;
    v21 = &off_28765A468;
    v18 = v4;
    v19 = v3;
    sub_264A5448C(v4, v3);
    sub_264B409C4();
    __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  else
  {
    if (qword_27FF88400 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AE58);
    sub_264A5448C(v4, v3);
    v7 = v1;
    oslog = sub_264B40944();
    v8 = sub_264B41484();
    sub_2649E7004(v4, v3);

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315394;
      v18 = v4;
      v19 = v3;
      sub_264A5448C(v4, v3);
      v11 = sub_264B41064();
      v13 = sub_2649CC004(v11, v12, &v22);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      sub_264A32420(*&v2[v5]);
      v14 = sub_264B41064();
      v16 = sub_2649CC004(v14, v15, &v22);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_2649C6000, oslog, v8, "Cannot send accessibility message: %s, invalid state: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v10, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    else
    {
    }
  }
}

void *sub_264A4AE00(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    sub_2649DEF18(v2, v3);
    sub_264A4AB90(&v6);

    return sub_2649E7004(v6, v7);
  }

  return result;
}

uint64_t sub_264A4AE80(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v25 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v24 - v14;
  v16 = sub_264B41274();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v7 + 16))(v11, a1, v6);
  sub_264B41244();

  v17 = a3;
  v18 = sub_264B41234();
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v18;
  *(v21 + 24) = v22;
  (*(v7 + 32))(v21 + v19, v11, v25);
  *(v21 + v20) = a2;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  sub_264A10C20(0, 0, v15, &unk_264B49638, v21);
}

uint64_t sub_264A4B0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[134] = a6;
  v6[133] = a5;
  v6[132] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F10, &qword_264B49640);
  v6[135] = v7;
  v6[136] = *(v7 - 8);
  v6[137] = swift_task_alloc();
  v6[138] = sub_264B41244();
  v6[139] = sub_264B41234();
  v9 = sub_264B411C4();
  v6[140] = v9;
  v6[141] = v8;

  return MEMORY[0x2822009F8](sub_264A4B1D4, v9, v8);
}

uint64_t sub_264A4B1D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  v0[142] = OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_eventStream;
  v1 = v0[141];
  v2 = v0[140];

  return MEMORY[0x2822009F8](sub_264A4B264, v2, v1);
}

uint64_t sub_264A4B264()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E68, &qword_264B4E4E0);
  sub_264B412C4();
  v1 = sub_264B41234();
  v0[143] = v1;
  v2 = swift_task_alloc();
  v0[144] = v2;
  *v2 = v0;
  v2[1] = sub_264A4B354;
  v3 = v0[135];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 15, v1, v4, v3);
}

uint64_t sub_264A4B354()
{
  v1 = *v0;

  v2 = *(v1 + 1128);
  v3 = *(v1 + 1120);

  return MEMORY[0x2822009F8](sub_264A4B498, v3, v2);
}

uint64_t sub_264A4B498()
{
  v50 = v0;
  v1 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 32) = v1;
  v2 = *(v0 + 168);
  *(v0 + 48) = *(v0 + 152);
  *(v0 + 64) = v2;
  v3 = *(v0 + 200);
  *(v0 + 80) = *(v0 + 184);
  *(v0 + 96) = v3;
  v4 = *(v0 + 216);
  *(v0 + 112) = v4;
  v5 = *(v0 + 24);
  v6 = *(v0 + 72);
  if (v5 >> 2 == 0xFFFFFFFF && v6 < 2)
  {
    (*(*(v0 + 1088) + 8))(*(v0 + 1096), *(v0 + 1080));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v38 = *(v0 + 104);
    v39 = *(v0 + 96);
    v40 = *(v0 + 88);
    v41 = *(v0 + 80);
    v42 = *(v0 + 64);
    v43 = *(v0 + 56);
    v44 = *(v0 + 48);
    v45 = *(v0 + 40);
    v46 = *(v0 + 32);
    v47 = *(v0 + 16);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE70);
    v10 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v10;
    *(v0 + 320) = *(v0 + 112);
    v11 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v11;
    v12 = *(v0 + 64);
    *(v0 + 256) = *(v0 + 48);
    *(v0 + 272) = v12;
    sub_264A54F24(v0 + 224, v0 + 328);
    v13 = sub_264B40944();
    v14 = sub_264B41484();
    sub_2649D04D4(v0 + 16, &qword_27FF89F18, &qword_264B49648);
    v37 = v4;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49 = v16;
      *v15 = 136446210;
      *(v0 + 848) = v47;
      *(v0 + 856) = v5;
      *(v0 + 864) = v46;
      *(v0 + 872) = v45;
      *(v0 + 880) = v44;
      *(v0 + 888) = v43;
      *(v0 + 896) = v42;
      *(v0 + 904) = v6;
      *(v0 + 912) = v41;
      *(v0 + 920) = v40;
      *(v0 + 928) = v39;
      *(v0 + 936) = v38;
      *(v0 + 944) = v4;
      v17 = *(v0 + 32);
      *(v0 + 744) = *(v0 + 16);
      *(v0 + 760) = v17;
      v18 = *(v0 + 48);
      v19 = *(v0 + 64);
      v20 = *(v0 + 80);
      v21 = *(v0 + 96);
      *(v0 + 840) = *(v0 + 112);
      *(v0 + 808) = v20;
      *(v0 + 824) = v21;
      *(v0 + 776) = v18;
      *(v0 + 792) = v19;
      sub_264A54F24(v0 + 744, v0 + 952);
      v22 = sub_264B41064();
      v24 = sub_2649CC004(v22, v23, &v49);

      *(v15 + 4) = v24;
      _os_log_impl(&dword_2649C6000, v13, v14, "Received client status event: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x266749940](v16, -1, -1);
      MEMORY[0x266749940](v15, -1, -1);
    }

    if (v6 >> 62)
    {
      if (v6 >> 62 == 1)
      {
        v48 = v47;
        sub_264A4BC08(&v48);
      }

      else
      {
        v30 = sub_264B40944();
        v31 = sub_264B41494();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_2649C6000, v30, v31, "Received unknown client status event, ignoring", v32, 2u);
          MEMORY[0x266749940](v32, -1, -1);

          sub_2649D04D4(v0 + 16, &qword_27FF89F18, &qword_264B49648);
        }

        else
        {
        }
      }
    }

    else
    {
      *(v0 + 536) = v47;
      *(v0 + 544) = v5;
      *(v0 + 552) = v46;
      *(v0 + 560) = v45;
      *(v0 + 568) = v44;
      *(v0 + 576) = v43;
      *(v0 + 584) = v42;
      *(v0 + 592) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *(v0 + 600) = v41;
      *(v0 + 608) = v40;
      *(v0 + 616) = v39;
      *(v0 + 624) = v38;
      *(v0 + 632) = v37;
      v25 = *(v0 + 32);
      *(v0 + 432) = *(v0 + 16);
      *(v0 + 448) = v25;
      v26 = *(v0 + 48);
      v27 = *(v0 + 64);
      v28 = *(v0 + 80);
      v29 = *(v0 + 96);
      *(v0 + 528) = *(v0 + 112);
      *(v0 + 496) = v28;
      *(v0 + 512) = v29;
      *(v0 + 464) = v26;
      *(v0 + 480) = v27;
      sub_264A54F24(v0 + 432, v0 + 640);
      sub_264A4B998((v0 + 536));
      sub_2649D04D4(v0 + 16, &qword_27FF89F18, &qword_264B49648);
      sub_2649D04D4(v0 + 16, &qword_27FF89F18, &qword_264B49648);
    }

    v33 = sub_264B41234();
    *(v0 + 1144) = v33;
    v34 = swift_task_alloc();
    *(v0 + 1152) = v34;
    *v34 = v0;
    v34[1] = sub_264A4B354;
    v35 = *(v0 + 1080);
    v36 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 120, v33, v36, v35);
  }
}

void sub_264A4B998(__int128 *a1)
{
  v2 = a1[5];
  v27 = a1[4];
  v28 = v2;
  v29 = *(a1 + 12);
  v3 = a1[1];
  v23 = *a1;
  v24 = v3;
  v4 = a1[3];
  v25 = a1[2];
  v26 = v4;
  v5 = v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 24))
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AE70);
    oslog = sub_264B40944();
    v7 = sub_264B41494();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v7, "We already have a client configuration, we shouldn't be getting another. Ignoring.", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE70);
    v10 = sub_264B40944();
    v11 = sub_264B414B4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2649C6000, v10, v11, "7. Received client startup configuration", v12, 2u);
      MEMORY[0x266749940](v12, -1, -1);
    }

    v13 = *(v5 + 80);
    v21[4] = *(v5 + 64);
    v21[5] = v13;
    v22 = *(v5 + 96);
    v14 = *(v5 + 16);
    v21[0] = *v5;
    v21[1] = v14;
    v15 = *(v5 + 48);
    v21[2] = *(v5 + 32);
    v21[3] = v15;
    v16 = v24;
    *v5 = v23;
    *(v5 + 16) = v16;
    *(v5 + 96) = v29;
    v17 = v28;
    *(v5 + 64) = v27;
    *(v5 + 80) = v17;
    v18 = v26;
    *(v5 + 32) = v25;
    *(v5 + 48) = v18;
    sub_264A189F8(&v23, v20);
    sub_2649D04D4(v21, &qword_27FF89DC8, &unk_264B494D0);
    sub_264A4BF04();
  }
}

void sub_264A4BC08(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
  swift_beginAccess();
  sub_2649D046C(v1 + v3, &v20, &qword_27FF89DA8, &qword_264B49498);
  if (v21)
  {
    sub_2649D2AAC(&v20, v22);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AE70);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v20 = v8;
      *v7 = 136446210;
      v9 = sub_264B41064();
      v11 = sub_2649CC004(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2649C6000, v5, v6, "Window capture event of type %{public}s received, notifying SceneInteractor", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x266749940](v8, -1, -1);
      MEMORY[0x266749940](v7, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    LOBYTE(v20) = v2;
    sub_264A7FAA8(&v20);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    sub_2649D04D4(&v20, &qword_27FF89DA8, &qword_264B49498);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FF8AE70);
    v13 = sub_264B40944();
    v14 = sub_264B41494();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136446210;
      LOBYTE(v20) = v2;
      v17 = sub_264B41064();
      v19 = sub_2649CC004(v17, v18, v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2649C6000, v13, v14, "Window capture event of type %{public}s arrived before SceneInteractor exists, ignoring", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x266749940](v16, -1, -1);
      MEMORY[0x266749940](v15, -1, -1);
    }
  }
}

uint64_t sub_264A4BF04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v73 - v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F20, &qword_264B49650);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v5);
  v84 = v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F28, &qword_264B49658);
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v85 = v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F30, &qword_264B49660);
  v91 = *(v10 - 8);
  v92 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v90 = v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F38, &qword_264B49668);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v93 = v73 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F40, &qword_264B49670);
  v82 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v73 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F48, &qword_264B49678);
  v83 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v26);
  v28 = v73 - v27;
  v29 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
  swift_beginAccess();
  sub_2649D046C(v0 + v29, &v95, &qword_27FF89DA8, &qword_264B49498);
  if (v96)
  {
    sub_2649D2AAC(&v95, &v97);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v73[0] = v25;
    v76 = v0;
    v79 = v17;
    v80 = v14;
    v81 = v13;
    v30 = sub_264B40964();
    v78 = __swift_project_value_buffer(v30, qword_27FF8AE70);
    v31 = sub_264B40944();
    v32 = sub_264B414B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2649C6000, v31, v32, "7.5. Monitoring SceneInteractor status changes", v33, 2u);
      MEMORY[0x266749940](v33, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(&v97, v99);
    v34 = off_28765B730;
    v35 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
    *&v95 = v34(v35, &off_28765B720);
    v36 = sub_2649CB2F0();
    v37 = sub_264B41554();
    v94 = v37;
    v38 = sub_264B41514();
    v39 = *(v38 - 8);
    v40 = *(v39 + 56);
    v41 = v93;
    v75 = v38;
    v74 = v40;
    v73[2] = v39 + 56;
    (v40)(v93, 1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F50, &qword_264B49680);
    sub_2649CB4C8(&qword_27FF89F58, &qword_27FF89F50, &qword_264B49680, MEMORY[0x277CBCD90]);
    v42 = sub_264A54920(&qword_27FF887B8, sub_2649CB2F0, MEMORY[0x277D85228]);
    v77 = v36;
    v73[1] = v42;
    sub_264B40B14();
    sub_2649D04D4(v41, &qword_27FF89DE0, &qword_264B4BC00);

    sub_2649CB4C8(&qword_27FF89F60, &qword_27FF89F40, &qword_264B49670, MEMORY[0x277CBCD60]);
    sub_264B40AE4();
    (*(v82 + 8))(v24, v21);
    v43 = swift_allocObject();
    v44 = v76;
    swift_unknownObjectUnownedInit();
    sub_2649CB5C0(&v97, &v95);
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    sub_2649D2AAC(&v95, v45 + 24);
    sub_2649CB4C8(&qword_27FF89F68, &qword_27FF89F48, &qword_264B49678, MEMORY[0x277CBCBE0]);
    v46 = v73[0];
    sub_264B40B54();

    (*(v83 + 8))(v28, v46);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EC0, &unk_264B44020);
    sub_2649CB4C8(&qword_27FF887C8, &unk_27FF89EC0, &unk_264B44020, MEMORY[0x277D83990]);
    sub_264B40984();
    swift_endAccess();

    v47 = sub_264B40944();
    v48 = sub_264B41484();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2649C6000, v47, v48, "7.75. Monitoring bring up sensor observers", v49, 2u);
      MEMORY[0x266749940](v49, -1, -1);
    }

    v50 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_bringupMicrophoneDeviceSensorPrimitives + 24);
    v51 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_bringupMicrophoneDeviceSensorPrimitives + 32);
    __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_bringupMicrophoneDeviceSensorPrimitives), v50);
    *&v95 = (*(v51 + 8))(v50, v51);
    v52 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives + 24);
    v53 = *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives + 32);
    __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives), v52);
    v94 = (*(v53 + 8))(v52, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F70, &qword_264B49688);
    sub_2649CB4C8(&qword_27FF89F78, &qword_27FF89F70, &qword_264B49688, MEMORY[0x277CBCD90]);
    v54 = v84;
    sub_264B40AD4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
    sub_2649CB4C8(&qword_27FF89F80, &qword_27FF89F20, &qword_264B49650, MEMORY[0x277CBCAF0]);
    v55 = v85;
    v56 = v87;
    sub_264B40AC4();
    (*(v86 + 8))(v54, v56);
    sub_2649CB4C8(&qword_27FF89F88, &qword_27FF89F28, &qword_264B49658, MEMORY[0x277CBCB10]);
    v57 = v89;
    v58 = v90;
    sub_264B40AE4();
    (*(v88 + 8))(v55, v57);
    v59 = sub_264B41554();
    *&v95 = v59;
    v60 = v93;
    v74(v93, 1, 1, v75);
    sub_2649CB4C8(&qword_27FF89F90, &qword_27FF89F30, &qword_264B49660, MEMORY[0x277CBCBE0]);
    v61 = v79;
    v62 = v92;
    sub_264B40B14();
    sub_2649D04D4(v60, &qword_27FF89DE0, &qword_264B4BC00);

    (*(v91 + 8))(v58, v62);
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_2649CB4C8(&qword_27FF89F98, &qword_27FF89F38, &qword_264B49668, MEMORY[0x277CBCD60]);
    v63 = v81;
    v64 = sub_264B40B54();

    (*(v80 + 8))(v61, v63);
    *(v44 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription) = v64;

    v65 = sub_264B40944();
    v66 = sub_264B414B4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_2649C6000, v65, v66, "8. Activating the scene interactor, steps are not necessarily monotonic from here forward", v67, 2u);
      MEMORY[0x266749940](v67, -1, -1);
    }

    v68 = __swift_project_boxed_opaque_existential_1(&v97, v99);
    v69 = *v68;
    v70 = OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session;
    [*(*v68 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) activate];
    [*(v69 + v70) staging_adoptedMacDrivenScreenCaptureNotifications];
    return __swift_destroy_boxed_opaque_existential_0(&v97);
  }

  else
  {
    sub_2649D04D4(&v95, &qword_27FF89DA8, &qword_264B49498);
    v97 = 8;
    v98 = 0x80;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v72 - 8) + 56))(v4, 1, 1, v72);
    sub_264A380B0(&v97, v4);
    return sub_2649D04D4(v4, &unk_27FF899E0, &qword_264B53440);
  }
}

uint64_t _s16ScreenSharingKit19SceneInteractorStepO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_2649E127C(*a2, 0);
      sub_2649E127C(v2, 0);
      v6 = sub_264B0EF58(v2, v4);
      sub_2649E12C0(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_2649E127C(*a2, 1u);
      sub_2649E127C(v2, 1u);
      LOBYTE(v6) = sub_264B0EF58(v2, v4);
      sub_2649E12C0(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_19:
      sub_2649E12C0(v7, v8);
      return v6 & 1;
    }

    goto LABEL_6;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v5 != 2 || v4 != 3)
      {
        goto LABEL_6;
      }

      sub_2649E12C0(3, 2u);
      v9 = 3;
    }

    else if (v2 == 4)
    {
      if (v5 != 2 || v4 != 4)
      {
        goto LABEL_6;
      }

      sub_2649E12C0(4, 2u);
      v9 = 4;
    }

    else
    {
      if (v5 != 2 || v4 != 5)
      {
        goto LABEL_6;
      }

      sub_2649E12C0(5, 2u);
      v9 = 5;
    }

    goto LABEL_32;
  }

  if (!v2)
  {
    if (v5 != 2 || v4)
    {
      goto LABEL_6;
    }

    sub_2649E12C0(0, 2u);
    v9 = 0;
    goto LABEL_32;
  }

  if (v2 != 1)
  {
    if (v5 != 2 || v4 != 2)
    {
      goto LABEL_6;
    }

    sub_2649E12C0(2, 2u);
    v9 = 2;
LABEL_32:
    sub_2649E12C0(v9, 2u);
    return 1;
  }

  if (v5 == 2 && v4 == 1)
  {
    sub_2649E12C0(1, 2u);
    sub_2649E12C0(1, 2u);
    return v4;
  }

LABEL_6:
  sub_2649E127C(*a2, *(a2 + 8));
  sub_2649E127C(v2, v3);
  sub_2649E12C0(v2, v3);
  sub_2649E12C0(v4, v5);
  return 0;
}

void sub_264A4CF4C(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_264A53554(v4, v5, *v6, Strong);
}

uint64_t sub_264A4CFC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  result = sub_264AB54B4(v4, v3);
  *a2 = result;
  return result;
}

void sub_264A4D010(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_264A4D068(v2);
}

void sub_264A4D068(uint64_t a1)
{
  v2 = v1;
  v3 = sub_264B40F14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2649CB2F0();
  *v7 = sub_264B41554();
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v8 = sub_264B40F34();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_50:
    swift_once();
LABEL_43:
    v53 = sub_264B40964();
    __swift_project_value_buffer(v53, qword_27FF8AE70);
    v45 = sub_264B40944();
    v54 = sub_264B414B4();
    if (os_log_type_enabled(v45, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2649C6000, v45, v54, "In use device sensors changed, but we're too far along. Ignore and let the alert catch it.", v55, 2u);
      MEMORY[0x266749940](v55, -1, -1);
    }

LABEL_45:

    __swift_destroy_boxed_opaque_existential_0(v59);
    return;
  }

  v9 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
  swift_beginAccess();
  sub_2649D046C(v2 + v9, &v57, &qword_27FF89DA8, &qword_264B49498);
  if (v58)
  {
    sub_2649D2AAC(&v57, v59);
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v10 = off_28765B728[0];
    type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
    v10();
    v11 = v57;
    if (BYTE8(v57))
    {
      if (BYTE8(v57) == 1)
      {
        v12 = 1;
        goto LABEL_42;
      }

      if (v57 > 2)
      {
        if (v57 != 3 && v57 != 4)
        {
          v11 = 5;
        }

        goto LABEL_41;
      }

      if (v57)
      {
        if (v57 != 1)
        {
          v11 = 2;
        }

LABEL_41:
        v12 = 2;
LABEL_42:
        sub_2649E12C0(v11, v12);
        sub_2649E12C0(1, 2u);
        if (qword_27FF88408 == -1)
        {
          goto LABEL_43;
        }

        goto LABEL_50;
      }

      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    sub_2649E12C0(v57, v17);
    sub_2649E12C0(1, 2u);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v18 = sub_264B40964();
    v19 = __swift_project_value_buffer(v18, qword_27FF8AE70);

    v20 = sub_264B40944();
    v21 = sub_264B41484();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v57 = v23;
      *v22 = 136315138;
      sub_2649E5670();
      v24 = sub_264B41424();
      v26 = sub_2649CC004(v24, v25, &v57);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_2649C6000, v20, v21, "In use device sensors changed, updating sceneInteractor: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x266749940](v23, -1, -1);
      MEMORY[0x266749940](v22, -1, -1);
    }

    v27 = sub_264A54FD4();
    v28 = MEMORY[0x266748730](2, &type metadata for SceneInteractorBlockedReasons, v27);
    v29 = sub_264AABDA8();
    v56[0] = v27;
    v56[1] = v19;
    if (v29)
    {
      sub_264B41B84();
      sub_264B41084();
      v30 = sub_264B41BB4();
      v31 = -1 << *(v28 + 32);
      v32 = v30 & ~v31;
      if ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v34 = *(*(v28 + 48) + v32);
          if (v34 >= 4)
          {
            break;
          }

          v35 = sub_264B41AA4();

          if (v35)
          {
            goto LABEL_23;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v57 = v28;
        sub_264A14944(4, v32, isUniquelyReferenced_nonNull_native);
        v28 = v57;
      }
    }

LABEL_23:
    if (sub_264AABDA8())
    {
      sub_264B41B84();
      sub_264B41084();
      v37 = sub_264B41BB4();
      v38 = -1 << *(v28 + 32);
      v39 = v37 & ~v38;
      if ((*(v28 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
      {
        v40 = ~v38;
        while (1)
        {
          v41 = *(*(v28 + 48) + v39);
          if (v41 > 2 && v41 != 4)
          {
            break;
          }

          v42 = sub_264B41AA4();

          if (v42)
          {
            goto LABEL_31;
          }

          v39 = (v39 + 1) & v40;
          if (((*(v28 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
LABEL_30:
        v43 = swift_isUniquelyReferenced_nonNull_native();
        *&v57 = v28;
        sub_264A14944(3, v39, v43);
      }
    }

LABEL_31:
    __swift_project_boxed_opaque_existential_1(v59, v60);

    sub_264A7E734(v44);

    v45 = sub_264B40944();
    v46 = sub_264B41484();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v57 = v48;
      *v47 = 136446210;

      v49 = sub_264B41424();
      v51 = v50;

      v52 = sub_2649CC004(v49, v51, &v57);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_2649C6000, v45, v46, "Device sensors currently in use updated to %{public}s on sceneInteractor", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x266749940](v48, -1, -1);
      MEMORY[0x266749940](v47, -1, -1);
    }

    goto LABEL_45;
  }

  sub_2649D04D4(&v57, &qword_27FF89DA8, &qword_264B49498);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v13 = sub_264B40964();
  __swift_project_value_buffer(v13, qword_27FF8AE70);
  v14 = sub_264B40944();
  v15 = sub_264B41484();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2649C6000, v14, v15, "SceneInteractor is unavailable to receive sensor status update, ignoring change", v16, 2u);
    MEMORY[0x266749940](v16, -1, -1);
  }
}

uint64_t sub_264A4D998(uint64_t a1)
{
  v2 = sub_264B40F14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2649CB2F0();
  *v6 = sub_264B41554();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = sub_264B40F34();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_27FF88408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = sub_264B40964();
  __swift_project_value_buffer(v8, qword_27FF8AE70);

  v9 = sub_264B40944();
  v10 = sub_264B41484();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v19[0] = v12;
    *v11 = 136315138;
    sub_2649E5670();
    v13 = sub_264B41424();
    v15 = sub_2649CC004(v13, v14, v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2649C6000, v9, v10, "Device sensors current in use updated to %s, notifying client", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  *&v17[0] = a1;
  v18[24] = 96;

  sub_264A40100(v17);
  v19[0] = v17[0];
  v19[1] = v17[1];
  v20[0] = *v18;
  *(v20 + 9) = *&v18[9];
  return sub_264A52520(v19);
}

uint64_t sub_264A4DC28(uint64_t a1)
{
  v2 = type metadata accessor for HIDMessage(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_264AAFCD0(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_264A55188(v9, v6, type metadata accessor for HIDMessage);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_264AAFCD0((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &off_28765E6C8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_264A55188(v6, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
      *(v8 + 16) = v12 + 1;
      sub_2649D2AAC(&v15, v8 + 40 * v12 + 32);
      sub_264A551F0(v6, type metadata accessor for HIDMessage);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_264A4DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v6[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v6[6] = swift_task_alloc();
  v6[7] = sub_264B41244();
  v6[8] = sub_264B41234();
  v8 = sub_264B411C4();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](sub_264A4DF08, v8, v7);
}

uint64_t sub_264A4DF08()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 88) = __swift_project_value_buffer(v1, qword_27FF8AE70);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Moving PlaybackServer to .control", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  return MEMORY[0x2822009F8](sub_264A4E028, 0, 0);
}

uint64_t sub_264A4E028()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_264B41274();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  v4 = sub_264B41234();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  *(v5 + 32) = v2;
  *(v5 + 40) = 1;
  *(v5 + 48) = 1;
  v7 = sub_2649CD944(0, 0, v1, &unk_264B496B8, v5);
  v0[12] = v7;
  v8 = swift_task_alloc();
  v0[13] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  *v8 = v0;
  v8[1] = sub_264A4E1A8;
  v10 = MEMORY[0x277D84950];
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v9, v7, v11, v9, v10);
}

uint64_t sub_264A4E1A8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_264A4E4BC;
  }

  else
  {
    v2 = sub_264A4E2BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264A4E2BC()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_264A4E320, v1, v2);
}

uint64_t sub_264A4E320()
{

  v1 = sub_264B40944();
  v2 = sub_264B414B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2649C6000, v1, v2, "PlaybackServer changed to .control, notifying SceneInteractor", v3, 2u);
    MEMORY[0x266749940](v3, -1, -1);
  }

  v4 = *(v0 + 24);

  v5 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v6 = *v5;
  if ((*(*v5 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_hasNotifiedSpringBoardOfConfiguredHIDServices) & 1) == 0)
  {
    *(v6 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_hasNotifiedSpringBoardOfConfiguredHIDServices) = 1;
    [*(v6 + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_session) noteHIDServicesConfigured];
  }

  v7 = sub_264B40944();
  v8 = sub_264B414B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2649C6000, v7, v8, "Notified SceneInteractor that HID services are configured.", v9, 2u);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_264A4E4BC()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_264A4E520, v1, v2);
}

uint64_t sub_264A4E520()
{
  v17 = v0;
  v1 = v0[14];

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to move PlaybackServer to .control, tearing down: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v10 = v0[14];
  v11 = v0[5];

  v15 = 13;
  v16 = 0x80;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_264A380B0(&v15, v11);

  sub_2649D04D4(v11, &unk_27FF899E0, &qword_264B53440);

  v13 = v0[1];

  return v13();
}

uint64_t sub_264A4E718()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v2 = sub_264B40104();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_264B41244();
  v1[12] = sub_264B41234();
  v4 = sub_264B411C4();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x2822009F8](sub_264A4E85C, v4, v3);
}

uint64_t sub_264A4E85C()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration + 8);
  v0[15] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_264A4EA40, v1, 0);
  }

  else
  {
    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[7];

    (*(v3 + 56))(v4, 1, 1, v2);
    sub_2649D04D4(v0[7], &unk_27FF8BFC0, &qword_264B47140);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FF8AE70);
    v6 = sub_264B40944();
    v7 = sub_264B41494();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, "Cannot start session because transport session lacks device ID", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_264A4EA40()
{
  v1 = *(v0[15] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
  if (v1 && (v2 = [v1 destinationDevice]) != 0 && (v3 = v2, v4 = objc_msgSend(v2, sel_identifier), v3, v4))
  {
    sub_264B41044();

    sub_264B40094();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v0[9] + 56))(v0[7], 1, 1, v0[8]);
  }

  v5 = v0[13];
  v6 = v0[14];

  return MEMORY[0x2822009F8](sub_264A4EB70, v5, v6);
}

uint64_t sub_264A4EB70()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_2649D04D4(v0[7], &unk_27FF8BFC0, &qword_264B47140);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AE70);
    v5 = sub_264B40944();
    v6 = sub_264B41494();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Cannot start session because transport session lacks device ID", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[5];
    (*(v2 + 32))(v0[11], v3, v1);
    __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker), *(v10 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker + 24));
    v13 = (*MEMORY[0x277D4B7E8] + MEMORY[0x277D4B7E8]);
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_264A4EDBC;
    v12 = v0[11];

    return v13(v12);
  }
}

uint64_t sub_264A4EDBC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_264A4F208;
  }

  else
  {
    v5 = sub_264A4EEF8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264A4EEF8()
{
  v31 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];

  v6 = *(v3 + 16);
  v6(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
  swift_beginAccess();
  sub_2649FECCC(v4, v5 + v7, &unk_27FF8BFC0, &qword_264B47140);
  swift_endAccess();
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[8];
  v11 = sub_264B40964();
  __swift_project_value_buffer(v11, qword_27FF8AE70);
  v6(v8, v9, v10);
  v12 = sub_264B40944();
  v13 = sub_264B414B4();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[10];
  v16 = v0[11];
  v18 = v0[8];
  v17 = v0[9];
  if (v14)
  {
    v29 = v0[11];
    v19 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v19 = 136315138;
    sub_264A54920(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_264B41A64();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_2649CC004(v20, v22, &v30);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_2649C6000, v12, v13, "Started session for device: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x266749940](v28, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);

    v23(v29, v18);
  }

  else
  {

    v25 = *(v17 + 8);
    v25(v15, v18);
    v25(v16, v18);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_264A4F208()
{

  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2649C6000, v4, v5, "Unable to record start of session: %{public}@", v11, 0xCu);
    sub_2649D04D4(v12, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v8, v9);

  v15 = v0[1];

  return v15();
}

uint64_t sub_264A4F400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 168) = a4;
  *(v5 + 176) = a5;
  return MEMORY[0x2822009F8](sub_264A4F420, 0, 0);
}

uint64_t sub_264A4F420()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (!Strong)
  {
LABEL_4:
    v3 = *(v0 + 8);

    return v3();
  }

  v2 = Strong;
  if (sub_264B41314())
  {

    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 176), *(*(v0 + 176) + 24));
  v5 = off_28765B770;
  v6 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v8 = (v5 + *v5);
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_264A4F5D0;

  return (v8)(v6, &off_28765B720);
}

uint64_t sub_264A4F5D0()
{

  return MEMORY[0x2822009F8](sub_264A4F6CC, 0, 0);
}

uint64_t sub_264A4F6CC(uint64_t a1)
{
  if (sub_264B41314())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AE70);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Local rendering is now active, notifying client", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    *(v1 + 16) = 4;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = -96;
    *(v1 + 200) = sub_264B41244();
    *(v1 + 208) = sub_264B41234();
    v9 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A4F884, v9, v8);
  }
}

uint64_t sub_264A4F884()
{

  sub_264A40100((v0 + 16));

  return MEMORY[0x2822009F8](sub_264A4F8F8, 0, 0);
}

uint64_t sub_264A4F8F8(uint64_t a1)
{
  if (sub_264B41314())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v1 + 216) = v4;
    *v4 = v1;
    v4[1] = sub_264A4F9C8;

    return sub_264A4E718();
  }
}

uint64_t sub_264A4F9C8()
{

  return MEMORY[0x2822009F8](sub_264A4FAC4, 0, 0);
}

uint64_t sub_264A4FAC4(uint64_t a1)
{
  if (sub_264B41314())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(v1 + 224) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentContinuityLiveActivity;
    *(v1 + 232) = sub_264B41234();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A4FB9C, v5, v4);
  }
}

uint64_t sub_264A4FB9C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);

  swift_beginAccess();
  if (*(v2 + v1 + 24))
  {
    sub_2649CB5C0(*(v0 + 184) + *(v0 + 224), v0 + 80);
    v3 = sub_264A4FD18;
  }

  else
  {
    v3 = sub_264A4FC4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264A4FC4C(uint64_t a1)
{
  if (sub_264B41314())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(v1 + 248) = sub_264B41234();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A5000C, v5, v4);
  }
}

uint64_t sub_264A4FD18()
{
  v1 = v0[13];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_264A4FE3C;

  return v5(v1, v2);
}

uint64_t sub_264A4FE3C()
{

  return MEMORY[0x2822009F8](sub_264A4FF38, 0, 0);
}

uint64_t sub_264A4FF38()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  if (sub_264B41314())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 248) = sub_264B41234();
    v4 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A5000C, v4, v3);
  }
}

uint64_t sub_264A5000C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  v3 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_264A53F38(*v3, v2);

  return MEMORY[0x2822009F8](sub_264A50090, 0, 0);
}

uint64_t sub_264A50090(uint64_t a1)
{
  if (sub_264B41314())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(v1 + 256) = sub_264B41234();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A5015C, v5, v4);
  }
}

uint64_t sub_264A5015C()
{

  sub_264A50368();

  return MEMORY[0x2822009F8](sub_264A501CC, 0, 0);
}

uint64_t sub_264A501CC(uint64_t a1)
{
  if (sub_264B41314())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(v1 + 264) = sub_264B41234();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A50298, v5, v4);
  }
}

uint64_t sub_264A50298()
{

  sub_264A509E4();

  return MEMORY[0x2822009F8](sub_264A50308, 0, 0);
}

uint64_t sub_264A50308()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A50368()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v44 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F20, &qword_264B49650);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F28, &qword_264B49658);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F30, &qword_264B49660);
  v15 = *(v14 - 8);
  v42 = v14;
  v43 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F38, &qword_264B49668);
  v20 = *(v19 - 8);
  v45 = v19;
  v46 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v40 = &v37 - v22;
  v41 = v0;
  v24 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_inSessionMicrophoneDeviceSensorPrimitives + 24);
  v23 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_inSessionMicrophoneDeviceSensorPrimitives + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_inSessionMicrophoneDeviceSensorPrimitives), v24);
  v48 = (*(v23 + 8))(v24, v23);
  v25 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives + 24);
  v26 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives), v25);
  v47 = (*(v26 + 8))(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89F70, &qword_264B49688);
  sub_2649CB4C8(&qword_27FF89F78, &qword_27FF89F70, &qword_264B49688, MEMORY[0x277CBCD90]);
  sub_264B40AD4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
  sub_2649CB4C8(&qword_27FF89F80, &qword_27FF89F20, &qword_264B49650, MEMORY[0x277CBCAF0]);
  sub_264B40AC4();
  (*(v5 + 8))(v8, v4);
  sub_2649CB4C8(&qword_27FF89F88, &qword_27FF89F28, &qword_264B49658, MEMORY[0x277CBCB10]);
  v27 = v38;
  sub_264B40AE4();
  (*(v39 + 8))(v13, v27);
  sub_2649CB2F0();
  v28 = sub_264B41554();
  v48 = v28;
  v29 = sub_264B41514();
  v30 = v44;
  (*(*(v29 - 8) + 56))(v44, 1, 1, v29);
  sub_2649CB4C8(&qword_27FF89F90, &qword_27FF89F30, &qword_264B49660, MEMORY[0x277CBCBE0]);
  sub_264A54920(&qword_27FF887B8, sub_2649CB2F0, MEMORY[0x277D85228]);
  v31 = v40;
  v32 = v42;
  sub_264B40B14();
  sub_2649D04D4(v30, &qword_27FF89DE0, &qword_264B4BC00);

  (*(v43 + 8))(v18, v32);
  swift_allocObject();
  v33 = v41;
  swift_unknownObjectUnownedInit();
  sub_2649CB4C8(&qword_27FF89F98, &qword_27FF89F38, &qword_264B49668, MEMORY[0x277CBCD60]);
  v34 = v45;
  v35 = sub_264B40B54();

  (*(v46 + 8))(v31, v34);
  *(v33 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseInSessionSubscription) = v35;
}

void sub_264A509E4()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyApplicator;
  if (!*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyApplicator))
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyEngine;
    if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyEngine))
    {
    }

    else
    {
      *(v0 + v3) = sub_264A50E4C();
    }

    v4 = sub_264A79FA4();

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ServerPolicyApplicator(0);
    v6 = swift_allocObject();
    v6[3] = 0;

    sub_264B400F4();
    v6[2] = v4;
    v6[4] = sub_264A554E4;
    v6[5] = v5;

    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FF8AE70);
    v8 = sub_264B40944();
    v9 = sub_264B414B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2649C6000, v8, v9, "Starting policy application", v10, 2u);
      MEMORY[0x266749940](v10, -1, -1);
    }

    sub_264B3F3BC();
    *(v2 + v1) = v6;
  }
}

void sub_264A50C00(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5[0] = v2;
  v6 = v3;
  sub_264A50C64(v5);
}

void sub_264A50C64(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FF8AE70);
  v4 = sub_264B40944();
  v5 = sub_264B41484();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    LOBYTE(v12) = v1;
    *(&v12 + 1) = v2;
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Orientation availability changed, notifying client: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  *&v12 = v1;
  *(&v12 + 1) = v2;
  v13 = 64;
  sub_264A40100(&v12);
}

void sub_264A50DF4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_264A4D998(v2);
}

uint64_t sub_264A50E4C()
{
  v1 = sub_264A51028(0xD000000000000021, 0x8000000264B5C710, v0);
  if (v3)
  {
    v4 = 0x43561A8829300000;
  }

  else
  {
    v4 = v1;
  }

  if (v3)
  {
    v5 = 16;
  }

  else
  {
    v5 = v2;
  }

  v6 = sub_264A51028(0xD000000000000021, 0x8000000264B5C740, v0);
  if (v8)
  {
    v9 = 0x94049F30F7200000;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v10 = 97;
  }

  else
  {
    v10 = v7;
  }

  sub_2649CB5C0(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_taskSleepPrimitives, v18);
  v11 = type metadata accessor for MediaExperienceBackedMediaPlaybackStatusPrimitives();
  swift_allocObject();
  v12 = sub_264AFA780();
  v20 = v11;
  v21 = &off_281EE4E98;
  v19 = v12;
  v13 = type metadata accessor for UIDeviceBackedPowerPrimitives();
  swift_allocObject();
  v14 = sub_264B0E248();
  v23 = v13;
  v24 = &off_281EE57E0;
  v22 = v14;
  v17[0] = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E80, &unk_264B51AB0);
  sub_2649CB4C8(&unk_27FF89EA0, &qword_27FF89E80, &unk_264B51AB0, MEMORY[0x277CBCE20]);
  v25 = sub_264B40AB4();
  v26 = v4;
  v27 = v5;
  v28 = v9;
  v29 = v10;
  sub_2649CB564(v18, v17);
  type metadata accessor for ServerPolicyEngine();
  swift_allocObject();
  v15 = sub_264A79C48(v17);
  sub_2649CB510(v18);
  return v15;
}

uint64_t sub_264A51028(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_userDefaultsPrimitives + 24);
  v6 = *(a3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_userDefaultsPrimitives + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_userDefaultsPrimitives), v5);
  (*(v6 + 8))(&v14, a1, a2, 1, MEMORY[0x277D83B88], v5, v6);
  if (v15)
  {
    return 0;
  }

  v8 = v14;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FF8AE70);

  v10 = sub_264B40944();
  v11 = sub_264B414B4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_2649CC004(a1, a2, &v14);
    *(v12 + 12) = 2050;
    *(v12 + 14) = v8;
    _os_log_impl(&dword_2649C6000, v10, v11, "Policy engine: %{public}s is overridden by user defaults to %{public}ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  return 1000000000000000000 * v8;
}

void *sub_264A51218(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *a1;
  v8 = *(a1 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v13 = v7;
    v14 = v8;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_2649E1260(v7, v8);
    sub_264A380B0(&v13, v6);

    sub_2649D04D4(v6, &unk_27FF899E0, &qword_264B53440);
    return sub_2649E1290(v7, v8);
  }

  return result;
}

id AngelServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AngelServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AngelServer.clientName.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 24))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32);

  return v1;
}

uint64_t AngelServer.tearDownFromLiveActivity()()
{
  v1[2] = v0;
  v1[3] = sub_264B41244();
  v1[4] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_264A519A4, v3, v2);
}

uint64_t sub_264A519A4()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE70);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Tear down from live activity", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[2];

  v0[7] = sub_264B41234();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_264A51B5C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A51B5C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_264A51CBC, v3, v2);
}

uint64_t sub_264A51CBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A51D1C()
{
  if (!*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 24))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32);

  return v1;
}

uint64_t sub_264A51D6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return AngelServer.tearDownFromLiveActivity()();
}

void sub_264A51DF8(id a1)
{
  if (a1 >= 7)
  {
  }
}

uint64_t type metadata accessor for AngelServer(uint64_t a1)
{
  result = qword_27FF89D60;
  if (!qword_27FF89D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A51EA4(uint64_t a1)
{
  sub_264A0DF00(319);
  if (v1 <= 0x3F)
  {
    sub_264A52108(319, &qword_27FF88BB0, &unk_27FF89D80, &qword_264B45588, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_264A52108(319, &unk_27FF897E0, &qword_27FF893A0, &unk_264B44E60, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_264A52108(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_264A5216C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  if (a4)
  {

    sub_264A187C4(a10, a11, a12, a13);
  }
}

uint64_t sub_264A521E8(uint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2649E12C0(result, a2);
  }

  return result;
}

uint64_t sub_264A521FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = *(v0 + 40);
  if (v5 <= 0xFB)
  {
    sub_2649E12A4(*(v0 + 32), v5);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_264A52368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A523D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2649CD850;

  return sub_264A3C530(a1, v7, v8, v9, v11, v1 + v6, v10);
}

unint64_t sub_264A52574()
{
  result = qword_27FF89DD0;
  if (!qword_27FF89DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89DD0);
  }

  return result;
}

uint64_t sub_264A52624()
{
  sub_264A52680(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

void sub_264A52680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  if ((a8 & 0x2000000000000000) != 0)
  {
    sub_264A52734(a1, a2, a3, a4, a5, a6, a7, a8 & 0xDFFFFFFFFFFFFFFFLL, a9, a10, a11, a12, a13);
  }

  else
  {
    sub_264A526A8(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_264A526A8(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v9 = a8 >> 5;
  if (v9 <= 2)
  {
    if (!(a8 >> 5))
    {
    }

    if (v9 != 1)
    {
      return result;
    }

LABEL_10:
  }

  if (v9 == 3)
  {
    goto LABEL_10;
  }

  if (v9 == 4)
  {

    return sub_2649E1290(result, a2);
  }

  return result;
}

void sub_264A52734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  if (!(a8 >> 62))
  {

    sub_264A187C4(a10, a11, a12, a13);
  }
}

uint64_t sub_264A527B4(void *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v74 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v74 - v10;
  v89 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v90 = &off_28765B720;
  v88[0] = a1;
  v12 = (*__swift_project_boxed_opaque_existential_1(v88, v89) + OBJC_IVAR____TtC16ScreenSharingKit42SpringBoardUIServicesBackedSceneInteractor_targetedDisplayIdentifier);
  v13 = v12[1];
  if (!v13)
  {
    v42 = qword_27FF88408;
    v43 = a1;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = sub_264B40964();
    __swift_project_value_buffer(v44, qword_27FF8AE70);
    v45 = sub_264B40944();
    v46 = sub_264B41494();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2649C6000, v45, v46, "SceneInteractor does not have targetedDisplayIdentifier, tearing down", v47, 2u);
      MEMORY[0x266749940](v47, -1, -1);
    }

    v48 = 9;
    goto LABEL_20;
  }

  v75 = v11;
  v14 = *v12;
  v15 = qword_27FF88408;
  v16 = a1;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_264B40964();
  __swift_project_value_buffer(v17, qword_27FF8AE70);

  v18 = sub_264B40944();
  v19 = sub_264B41484();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v84[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_2649CC004(v14, v13, v84);
    _os_log_impl(&dword_2649C6000, v18, v19, "SceneInteractor provided displayIdentifier: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x266749940](v21, -1, -1);
    MEMORY[0x266749940](v20, -1, -1);
  }

  v22 = *&a2[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackServer];
  if (!v22)
  {

    v49 = sub_264B40944();
    v50 = sub_264B41494();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2649C6000, v49, v50, "Missing playback server when trying to connect HID services, tearing down", v51, 2u);
      MEMORY[0x266749940](v51, -1, -1);
    }

    v48 = 10;
LABEL_20:
    *&v84[0] = v48;
    BYTE8(v84[0]) = 0x80;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v52 - 8) + 56))(v7, 1, 1, v52);
    sub_264A380B0(v84, v7);
    sub_2649D04D4(v7, &unk_27FF899E0, &qword_264B53440);
    return __swift_destroy_boxed_opaque_existential_0(v88);
  }

  v76 = a2;

  v23 = sub_264B40944();
  v24 = sub_264B41484();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2649C6000, v23, v24, "Enqueueing known startup events", v25, 2u);
    MEMORY[0x266749940](v25, -1, -1);
  }

  swift_beginAccess();
  *(v22 + 16) = v14;
  *(v22 + 24) = v13;

  v26 = v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider;
  swift_beginAccess();
  v27 = *(v26 + 24);
  v28 = *(v26 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v29 = *(v28 + 24);

  v29(v14, v13, v27, v28);
  swift_endAccess();
  v30 = v76;
  v31 = *&v76[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 80];
  v85 = *&v76[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 64];
  v86 = v31;
  v32 = *&v76[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32];
  v84[3] = *&v76[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 48];
  v33 = *&v76[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 16];
  v84[0] = *&v76[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration];
  v84[1] = v33;
  v83 = MEMORY[0x277D84F90];
  v34 = *&v76[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 96];
  v87 = v34;
  v84[2] = v32;
  if (*(&v33 + 1))
  {
    v35 = *(&v85 + 1);
    v36 = v86;
    v37 = v85;

    sub_264A18764(v35, v36, *(&v36 + 1), v34);
    v38 = sub_264A4DC28(v37);
    sub_2649D7A48(v38);

    sub_264A18764(v35, v36, *(&v36 + 1), v34);
    v39 = sub_264B40944();
    v40 = sub_264B41484();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134349056;
      *(v41 + 4) = *(v37 + 16);
      sub_2649D04D4(v84, &qword_27FF89DC8, &unk_264B494D0);
      _os_log_impl(&dword_2649C6000, v39, v40, "Enqueued %{public}ld HID services", v41, 0xCu);
      MEMORY[0x266749940](v41, -1, -1);
    }

    else
    {
      sub_2649D04D4(v84, &qword_27FF89DC8, &unk_264B494D0);
    }

    v30 = v76;
    if (v36 == 4)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v80 = 0;
      *(&v79 + 1) = 0;
    }

    else
    {
      v53 = swift_allocObject();
      *(v53 + 16) = v35;
      *(v53 + 24) = v36;
      *(v53 + 40) = v34;
      v55 = &off_28765C718;
      v54 = &type metadata for SystemGestureEvent;
    }

    *&v79 = v53;
    v81 = v54;
    v82 = v55;
    sub_264A18764(v35, v36, *(&v36 + 1), v34);
    sub_264A37FAC(&v79);
    sub_2649D04D4(&v79, &qword_27FF89FB0, &qword_264B496A0);
    v56 = *(&v85 + 1);
    v57 = v86;
    v58 = v87;

    sub_264A18764(v56, v57, *(&v57 + 1), v58);
    v59 = sub_264B40944();
    v60 = sub_264B41484();
    sub_2649D04D4(v84, &qword_27FF89DC8, &unk_264B494D0);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v78 = v62;
      *v61 = 136446210;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FB8, &qword_264B496A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FC0, &qword_264B496B0);
      v63 = sub_264B41064();
      v65 = sub_2649CC004(v63, v64, &v78);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_2649C6000, v59, v60, "Enqueue launching payload: %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x266749940](v62, -1, -1);
      MEMORY[0x266749940](v61, -1, -1);
    }

    sub_2649D04D4(v84, &qword_27FF89DC8, &unk_264B494D0);
  }

  v66 = v83;
  swift_beginAccess();
  sub_2649D7A48(v66);
  swift_endAccess();
  v67 = sub_264B41274();
  v68 = v75;
  (*(*(v67 - 8) + 56))(v75, 1, 1, v67);
  sub_2649CB5C0(v88, &v79);
  sub_264B41244();

  v69 = v30;
  v70 = sub_264B41234();
  v71 = swift_allocObject();
  v72 = MEMORY[0x277D85700];
  v71[2] = v70;
  v71[3] = v72;
  v71[4] = v22;
  sub_2649D2AAC(&v79, (v71 + 5));
  v71[10] = v69;
  sub_264A10C20(0, 0, v68, &unk_264B49698, v71);

  return __swift_destroy_boxed_opaque_existential_0(v88);
}

uint64_t sub_264A53194(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v27 - v6;
  v32[3] = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v32[4] = &off_28765B720;
  v32[0] = a1;
  v8 = qword_27FF88408;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_264B40964();
  __swift_project_value_buffer(v10, qword_27FF8AE70);
  v11 = sub_264B40944();
  v12 = sub_264B414B4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2649C6000, v11, v12, "1x+1. SceneInteractor is active, starting animation transaction and notifying client", v13, 2u);
    MEMORY[0x266749940](v13, -1, -1);
  }

  v14 = sub_264B40944();
  v15 = sub_264B41474();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2649C6000, v14, v15, "Cancelling device sensor bring up monitoring, sceneInteractor is now active", v16, 2u);
    MEMORY[0x266749940](v16, -1, -1);
  }

  v17 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription;
  if (*(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription))
  {

    sub_264B40994();
  }

  *(a2 + v17) = 0;

  v18 = a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_screenContinuityLiveActivityVendor;
  swift_beginAccess();
  if (*(v18 + 24))
  {
    sub_2649CB5C0(v18, &v27);
    v19 = v28;
    v20 = v29;
    __swift_project_boxed_opaque_existential_1(&v27, v28);
    (*(v20 + 16))(v30, v19, v20);
    __swift_destroy_boxed_opaque_existential_0(&v27);
  }

  else
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
  }

  v21 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentContinuityLiveActivity;
  swift_beginAccess();
  sub_264A5536C(v30, a2 + v21);
  swift_endAccess();
  v22 = sub_264B41274();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2649CB5C0(v32, &v27);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;
  sub_2649D2AAC(&v27, (v24 + 5));
  v25 = sub_2649F62D0(0, 0, v7, &unk_264B496C8, v24);
  sub_2649D04D4(v7, &qword_27FF898C0, &unk_264B44190);
  sub_2649D04D4(v30, &unk_27FF89DB0, &unk_264B494A0);
  *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask) = v25;

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_264A53554(uint64_t a1, unsigned __int8 a2, void *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v65 - v10;
  v12 = sub_264B40F14();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v72 = &off_28765B720;
  v70[0] = a3;
  sub_2649CB2F0();
  v17 = a3;
  *v16 = sub_264B41554();
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  LOBYTE(a3) = sub_264B40F34();
  (*(v13 + 8))(v16, v12);
  if (a3)
  {
    if (qword_27FF88408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = sub_264B40964();
  __swift_project_value_buffer(v18, qword_27FF8AE70);
  sub_2649E127C(a1, a2);
  v19 = sub_264B40944();
  v20 = sub_264B41484();
  sub_2649E12C0(a1, a2);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v66 = v11;
    v23 = a4;
    v24 = v22;
    *&v67[0] = v22;
    *v21 = 136446210;
    *v69 = a1;
    v69[8] = a2;
    sub_2649E127C(a1, a2);
    v25 = sub_264B41064();
    v27 = sub_2649CC004(v25, v26, v67);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_2649C6000, v19, v20, "SceneInteractor step changed: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v28 = v24;
    a4 = v23;
    v11 = v66;
    MEMORY[0x266749940](v28, -1, -1);
    MEMORY[0x266749940](v21, -1, -1);
  }

  if (a2)
  {
    if (a2 != 1)
    {
      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v55 = sub_264B40944();
          v56 = sub_264B414B4();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_2649C6000, v55, v56, "11. SceneInteractor is ready for HID services to connect, enqueueing startup events", v57, 2u);
            MEMORY[0x266749940](v57, -1, -1);
          }

          v58 = __swift_project_boxed_opaque_existential_1(v70, v71);
          sub_264A527B4(*v58, a4);
          return __swift_destroy_boxed_opaque_existential_0(v70);
        }

        if (a1 != 4)
        {
          v62 = __swift_project_boxed_opaque_existential_1(v70, v71);
          sub_264A53194(*v62, a4);
          return __swift_destroy_boxed_opaque_existential_0(v70);
        }

        v49 = sub_264B40944();
        v50 = sub_264B414B4();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_2649C6000, v49, v50, "1x. SceneInteractor is waiting for active, notifying client", v51, 2u);
          MEMORY[0x266749940](v51, -1, -1);
        }

        v48 = 3;
      }

      else
      {
        if (!a1)
        {
          v52 = sub_264B40944();
          v53 = sub_264B41494();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_2649C6000, v52, v53, "Unknown SceneInteractor step, ignoring", v54, 2u);
            MEMORY[0x266749940](v54, -1, -1);
          }

          return __swift_destroy_boxed_opaque_existential_0(v70);
        }

        if (a1 == 1)
        {
          v45 = sub_264B40944();
          v46 = sub_264B414B4();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_2649C6000, v45, v46, "9. SceneInteractor is ready to unlock, notifying client", v47, 2u);
            MEMORY[0x266749940](v47, -1, -1);
          }

          v48 = 1;
        }

        else
        {
          v59 = sub_264B40944();
          v60 = sub_264B414B4();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&dword_2649C6000, v59, v60, "10. SceneInteractor is ready for audio/video streams, notifying client", v61, 2u);
            MEMORY[0x266749940](v61, -1, -1);
          }

          v48 = 2;
        }
      }

      *v69 = v48;
      memset(&v69[8], 0, 48);
      v69[56] = -96;
      sub_264A40100(v69);
      return __swift_destroy_boxed_opaque_existential_0(v70);
    }

    v66 = a4;

    v29 = sub_264B40944();
    v30 = sub_264B41484();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2649C6000, v29, v30, "SceneInteractor invalidated, tearing down", v31, 2u);
      MEMORY[0x266749940](v31, -1, -1);
    }

    if (*(a1 + 16) && (sub_264B41B84(), sub_264B41084(), v32 = sub_264B41BB4(), v33 = -1 << *(a1 + 32), v34 = v32 & ~v33, ((*(a1 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
    {
      v35 = ~v33;
      while (*(*(a1 + 48) + v34) > 2u || !*(*(a1 + 48) + v34) || *(*(a1 + 48) + v34) == 2)
      {
        v36 = sub_264B41AA4();

        if (v36)
        {
          goto LABEL_44;
        }

        v34 = (v34 + 1) & v35;
        if (((*(a1 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_44:
      sub_2649E12C0(a1, 1u);
      *v69 = 11;
      v69[8] = 0x80;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
      (*(*(v63 - 8) + 56))(v11, 1, 1, v63);
      sub_264A380B0(v69, v11);
      sub_2649D04D4(v11, &unk_27FF899E0, &qword_264B53440);
    }

    else
    {
LABEL_17:
      *v69 = a1;
      v69[8] = 64;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
      (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
      sub_264A380B0(v69, v11);
      sub_2649D04D4(v11, &unk_27FF899E0, &qword_264B53440);
      sub_2649E1290(a1, 0x40u);
    }
  }

  else
  {

    v38 = sub_264B40944();
    v39 = sub_264B414B4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v69 = v41;
      *v40 = 136446210;
      sub_264A54FD4();
      v42 = sub_264B41424();
      v44 = sub_2649CC004(v42, v43, v69);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2649C6000, v38, v39, "8.5. SceneInteractor is blocked because: %{public}s, notifying client", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x266749940](v41, -1, -1);
      MEMORY[0x266749940](v40, -1, -1);
    }

    *&v67[0] = a1;
    v68[24] = 32;
    sub_264A40100(v67);
    *v69 = v67[0];
    *&v69[16] = v67[1];
    *&v69[32] = *v68;
    *&v69[41] = *&v68[9];
    sub_264A52520(v69);
  }

  return __swift_destroy_boxed_opaque_existential_0(v70);
}

uint64_t sub_264A53F38(void *a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v24 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FC8, &qword_264B496D8);
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FD0, &qword_264B496E0);
  v12 = *(v11 - 8);
  v26 = v11;
  v27 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v31[3] = v16;
  v31[4] = &off_28765B720;
  v31[0] = a1;
  __swift_project_boxed_opaque_existential_1(v31, v16);
  v17 = off_28765B740;
  v18 = a1;
  v29 = v17(v16, &off_28765B720);
  sub_2649CB2F0();
  v19 = sub_264B41554();
  v30 = v19;
  v20 = sub_264B41514();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FD8, &qword_264B496E8);
  sub_2649CB4C8(&qword_27FF89FE0, &qword_27FF89FD8, &qword_264B496E8, MEMORY[0x277CBCD90]);
  sub_264A54920(&qword_27FF887B8, sub_2649CB2F0, MEMORY[0x277D85228]);
  sub_264B40B14();
  sub_2649D04D4(v6, &qword_27FF89DE0, &qword_264B4BC00);

  sub_2649CB4C8(&qword_27FF89FE8, &qword_27FF89FC8, &qword_264B496D8, MEMORY[0x277CBCD60]);
  v21 = v25;
  sub_264B40AE4();
  (*(v7 + 8))(v10, v21);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_2649CB4C8(&qword_27FF89FF0, &qword_27FF89FD0, &qword_264B496E0, MEMORY[0x277CBCBE0]);
  v22 = v26;
  sub_264B40B54();

  (*(v27 + 8))(v15, v22);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EC0, &unk_264B44020);
  sub_2649CB4C8(&qword_27FF887C8, &unk_27FF89EC0, &unk_264B44020, MEMORY[0x277D83990]);
  sub_264B40984();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t sub_264A5444C()
{
  MEMORY[0x266749A30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_264A5448C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    return sub_2649DEF18(a1, a2);
  }

  return result;
}

uint64_t sub_264A544A4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_264A544EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649E0EE4;

  return sub_264A41084(a1, v4, v5, (v1 + 4), v6, v7);
}

void sub_264A545B0(id a1)
{
  if (a1 != 4)
  {
    sub_2649FE684(a1);
  }
}

uint64_t sub_264A545C4(uint64_t a1)
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
  v10[1] = sub_2649CD850;

  return sub_264A423D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_264A546E8(uint64_t a1)
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
  v10[1] = sub_2649E0EE4;

  return sub_264A44824(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_264A547BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A54838(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return sub_264A4A540(a1, v5, v4);
}

uint64_t sub_264A548E0()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A54920(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_264A54968()
{
  result = qword_27FF89EE0;
  if (!qword_27FF89EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89E88, &qword_264B495E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89EE0);
  }

  return result;
}

uint64_t sub_264A549E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A54A24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B24554(a1, v4, v5, v6);
}

uint64_t sub_264A54AE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_264A54B74(unsigned __int8 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);

  sub_264A4A264(a1);
}

uint64_t objectdestroy_57Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264A54C38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return sub_264A4A8F0(a1, v5, v4);
}

uint64_t sub_264A54CE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264A54DDC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2649E0EE4;

  return sub_264A4B0C4(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_264A54F80()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_264A54FD4()
{
  result = qword_27FF89FA0;
  if (!qword_27FF89FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89FA0);
  }

  return result;
}

uint64_t sub_264A55028()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_264A55078(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649E0EE4;

  return sub_264A4DDF8(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_264A55140()
{
  if (v0[3] >= 4uLL)
  {

    sub_2649DEF6C(v0[4], v0[5]);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A55188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A551F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_67Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_264A552A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264B2245C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_264A5536C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89DB0, &unk_264B494A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A553DC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264A55424(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264A4F400(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_264A554FC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264A55544(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264A42F6C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_264A55604()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264A5563C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_264A556EC()
{
  result = qword_27FF8A080;
  if (!qword_27FF8A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A080);
  }

  return result;
}

uint64_t sub_264A55740()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_264A557DC()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t dispatch thunk of MediaTransportSessionProviding.activate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649E0EE4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MediaTransportSessionProviding.invalidate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return v7(a1, a2);
}

uint64_t sub_264A55B34(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_264A55B94()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_264A55BE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_264A55C34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t sub_264A55CCC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void sub_264A55D14()
{
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FF8AE40);
  oslog = sub_264B40944();
  v1 = sub_264B41494();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2649C6000, oslog, v1, "Should be using a subclass", v2, 2u);
    MEMORY[0x266749940](v2, -1, -1);
  }
}

uint64_t CATelemetryConsumer.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  return v0;
}

uint64_t CATelemetryConsumer.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_264A55EFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_264A55F4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

void sub_264A560D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_264B408F4();
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v15 = 0x27FF88000uLL;
  if (kdebug_trace())
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FF8AE40);
    v17 = sub_264B40944();
    v18 = sub_264B41494();
    if (os_log_type_enabled(v17, v18))
    {
      v37 = v10;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42 = v20;
      *v19 = 67109378;
      *(v19 + 4) = MEMORY[0x266747C70]();
      *(v19 + 8) = 2080;
      v21 = MEMORY[0x266747C70]();
      if (!strerror(v21))
      {
LABEL_29:
        __break(1u);
        return;
      }

      v22 = sub_264B410A4();
      v24 = sub_2649CC004(v22, v23, &v42);

      *(v19 + 10) = v24;
      _os_log_impl(&dword_2649C6000, v17, v18, "SignpostConsumer: kdebug_trace returned %d %s", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);

      v10 = v37;
      v15 = 0x27FF88000;
    }

    else
    {
    }
  }

  if (sub_264B40914())
  {
    LOBYTE(v42) = v14;
    v25 = SignpostCode.signpostName.getter();
    v15 = v26;
    sub_264B408E4();
    v27 = sub_264B40924();
    v28 = sub_264B41584();
    if ((sub_264B41604() & 1) == 0)
    {
LABEL_25:

      (v41[1].isa)(v13, v10);
      return;
    }

    if ((v15 & 1) == 0)
    {
      if (!v25)
      {
        __break(1u);
        goto LABEL_13;
      }

      goto LABEL_24;
    }

    if (v25 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v25 & 0xFFFFF800) == 0xD800)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v25 >> 16 <= 0x10)
      {
        v25 = &v43;
LABEL_24:
        v33 = swift_slowAlloc();
        *v33 = 134218752;
        *(v33 + 4) = a2;
        *(v33 + 12) = 2048;
        v34 = v39;
        *(v33 + 14) = v38;
        *(v33 + 22) = 2048;
        *(v33 + 24) = v34;
        *(v33 + 32) = 2048;
        *(v33 + 34) = v40;
        v35 = sub_264B408D4();
        _os_signpost_emit_with_name_impl(&dword_2649C6000, v27, v28, v35, v25, "param1=%llu, param2=%llu, param3=%llu, param4=%llu", v33, 0x2Au);
        MEMORY[0x266749940](v33, -1, -1);
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_13:
  if (*(v15 + 1016) != -1)
  {
    swift_once();
  }

  v29 = sub_264B40964();
  __swift_project_value_buffer(v29, qword_27FF8AE40);
  v41 = sub_264B40944();
  v30 = sub_264B41494();
  if (os_log_type_enabled(v41, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2649C6000, v41, v30, "signposter is not activated", v31, 2u);
    MEMORY[0x266749940](v31, -1, -1);
  }

  v32 = v41;
}

uint64_t sub_264A5652C()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit21SignpostingPrimitives_signposter;
  v2 = sub_264B40934();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignpostingPrimitives(uint64_t a1)
{
  result = qword_27FF8A098;
  if (!qword_27FF8A098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264A5661C(uint64_t a1)
{
  result = sub_264B40934();
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

BOOL sub_264A566AC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_264B41044();

    sub_264B41074();
  }

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();
  if (!has_internal_ui)
  {
    return 0;
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_264B41014();
  v5 = [v3 integerForKey_];

  return v5 == 1;
}

uint64_t sub_264A567D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_264B3FFD4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A56948, 0, 0);
}

uint64_t sub_264A56948()
{
  v82 = v0;
  v1 = (*(v0[12] + 104))(v0[11]);
  if (v1)
  {

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v2 = v0[10];
    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FFA71D0);
    v4 = v2;
    swift_unknownObjectRetain();
    v5 = sub_264B40944();
    v6 = sub_264B41494();
    swift_unknownObjectRelease();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_17;
    }

    v7 = v0[13];
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v81 = v10;
    *v9 = 136446466;
    v0[8] = v7;
    swift_unknownObjectRetain();
    v11 = sub_264B41064();
    v13 = sub_2649CC004(v11, v12, &v81);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v0[9] = v8;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v15 = sub_264B41064();
    v17 = sub_2649CC004(v15, v16, &v81);

    *(v9 + 14) = v17;
    v18 = "%{public}s has already interrupted, ignoring: %{public}s";
LABEL_16:
    _os_log_impl(&dword_2649C6000, v5, v6, v18, v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
LABEL_17:

    goto LABEL_18;
  }

  v19 = *(v0[12] + 48);
  v19(&v81, v0[11]);
  if (v81 == 5)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v20 = v0[10];
    v21 = sub_264B40964();
    __swift_project_value_buffer(v21, qword_27FFA71D0);
    v22 = v20;
    swift_unknownObjectRetain();
    v5 = sub_264B40944();
    v6 = sub_264B41494();
    swift_unknownObjectRelease();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_17;
    }

    v23 = v0[13];
    v24 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v81 = v10;
    *v9 = 136446466;
    v0[6] = v23;
    swift_unknownObjectRetain();
    v25 = sub_264B41064();
    v27 = sub_2649CC004(v25, v26, &v81);

    *(v9 + 4) = v27;
    *(v9 + 12) = 2082;
    v0[7] = v24;
    v28 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v29 = sub_264B41064();
    v31 = sub_2649CC004(v29, v30, &v81);

    *(v9 + 14) = v31;
    v18 = "%{public}s is already invalidated, ignoring interruption due to: %{public}s)";
    goto LABEL_16;
  }

  (v19)(&v81, v0[11], v0[12]);
  if (v81 == 4)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v32 = v0[10];
    v33 = sub_264B40964();
    __swift_project_value_buffer(v33, qword_27FFA71D0);
    v34 = v32;
    swift_unknownObjectRetain();
    v5 = sub_264B40944();
    v6 = sub_264B41494();
    swift_unknownObjectRelease();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_17;
    }

    v35 = v0[13];
    v36 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v81 = v10;
    *v9 = 136446466;
    v0[4] = v35;
    swift_unknownObjectRetain();
    v37 = sub_264B41064();
    v39 = sub_2649CC004(v37, v38, &v81);

    *(v9 + 4) = v39;
    *(v9 + 12) = 2082;
    v0[5] = v36;
    v40 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v41 = sub_264B41064();
    v43 = sub_2649CC004(v41, v42, &v81);

    *(v9 + 14) = v43;
    v18 = "%{public}s is already tearing down, ignoring interruption due to: %{public}s)";
    goto LABEL_16;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v47 = v0[20];
  v46 = v0[21];
  v48 = v0[19];
  v49 = v0[10];
  v50 = sub_264B40964();
  __swift_project_value_buffer(v50, qword_27FFA71D0);
  v51 = sub_264B41494();
  v0[2] = v49;
  v52 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v53 = sub_264B41064();
  v55 = v54;
  sub_264B3FF94();
  v56 = sub_264B3FFA4();
  v58 = v57;
  (*(v47 + 8))(v46, v48);
  v59 = sub_264B40944();
  if (os_log_type_enabled(v59, v51))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v81 = v61;
    *v60 = 136446978;
    v62 = sub_2649CC004(v56, v58, &v81);

    *(v60 + 4) = v62;
    *(v60 + 12) = 2050;
    *(v60 + 14) = 60;
    *(v60 + 22) = 2082;
    *(v60 + 24) = sub_2649CC004(0xD000000000000010, 0x8000000264B5A2B0, &v81);
    *(v60 + 32) = 2082;
    *(v60 + 34) = sub_2649CC004(v53, v55, &v81);
    _os_log_impl(&dword_2649C6000, v59, v51, "%{public}s:%{public}ld %{public}s %{public}s", v60, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v61, -1, -1);
    MEMORY[0x266749940](v60, -1, -1);
  }

  else
  {
  }

  v63 = v0[18];
  v64 = v0[14];
  v65 = v0[15];
  v66 = v0[12];
  v67 = v0[10];
  v68 = v0[11];
  v69 = *(v66 + 112);
  v70 = v67;
  v69(v67, v68, v66);
  (*(v66 + 56))(v68, v66);
  v71 = (*(v65 + 48))(v63, 1, v64);
  v72 = v0[18];
  if (v71)
  {
    sub_264A58C44(v0[18]);
  }

  else
  {
    v74 = v0[15];
    v73 = v0[16];
    v75 = v0[14];
    v76 = v0[10];
    (*(v74 + 16))(v73, v0[18], v75);
    sub_264A58C44(v72);
    v0[3] = v67;
    v77 = v76;
    sub_264B41384();
    (*(v74 + 8))(v73, v75);
  }

  v78 = v0[17];
  v79 = v0[12];
  v80 = v0[11];
  (*(v0[15] + 56))(v78, 1, 1, v0[14]);
  (*(v79 + 64))(v78, v80, v79);
LABEL_18:

  v44 = v0[1];

  return v44();
}

uint64_t sub_264A5720C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649E0EE4;

  return sub_264A567D8(a1, a2, a3);
}

uint64_t sub_264A572B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_264A57374;

  return sub_264A57478(a1, a2, a3, a4);
}

uint64_t sub_264A57374(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_264A57478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_264B3FFD4();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A57540, 0, 0);
}

uint64_t sub_264A57540()
{
  v28 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v27);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 105;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001CLL, 0x8000000264B5C920, v27);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[2];
  v13 = v0[3];
  v15 = objc_allocWithZone(MEMORY[0x277CE5708]);
  sub_2649DEF18(v14, v13);
  v16 = sub_264A58B84(v14, v13);
  v0[10] = v16;
  v0[11] = 0;
  v26 = v0[5];
  v17 = v0[4];
  v18 = v16;
  sub_2649DEF6C(v0[2], v0[3]);
  v19 = *(v26 + 32);
  v20 = v18;
  v19(v18, v17, v26);
  (*(v26 + 88))(1, v17);
  v25 = (*(v26 + 144) + **(v26 + 144));
  v21 = swift_task_alloc();
  v0[12] = v21;
  *v21 = v0;
  v21[1] = sub_264A57A44;
  v22 = v0[5];
  v23 = v0[4];

  return v25(v23, v22);
}

uint64_t sub_264A57A44()
{

  return MEMORY[0x2822009F8](sub_264A57B40, 0, 0);
}

uint64_t sub_264A57B40()
{
  v1 = *(v0 + 80);
  v2 = [v1 answer];
  v3 = sub_264B40024();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_264A57BE4()
{

  return MEMORY[0x2822009F8](sub_264A57CE0, 0, 0);
}

uint64_t sub_264A57CE0()
{

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t sub_264A57D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649CD850;

  return sub_264A57E0C(a1, a2, a3, a4);
}

uint64_t sub_264A57E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_264B3FFD4();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A57F00, 0, 0);
}

uint64_t sub_264A57F00()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v40);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 123;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001DLL, 0x8000000264B5C900, v40);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = (*(v0[6] + 24))(v0[5]);
  v0[11] = v13;
  if (v13)
  {
    v14 = v13;
    v15 = sub_264B40014();
    v0[2] = 0;
    v16 = [v14 setAnswer:v15 withError:v0 + 2];

    v17 = v0[2];
    if (v16)
    {
      v37 = v0[6];
      v18 = v0[5];
      v19 = *(v37 + 88);
      v20 = v17;
      v19(1, v18, v37);
      v35 = (*(v37 + 144) + **(v37 + 144));
      v21 = swift_task_alloc();
      v0[12] = v21;
      *v21 = v0;
      v21[1] = sub_264A58528;
      v22 = v0[6];
      v23 = v0[5];

      return v35(v23, v22);
    }

    v39 = v0[6];
    v32 = v17;
    v28 = sub_264B3FF84();
    v0[15] = v28;

    swift_willThrow();
    v36 = (*(v39 + 128) + **(v39 + 128));
    v30 = swift_task_alloc();
    v0[16] = v30;
    *v30 = v0;
    v31 = sub_264A58844;
  }

  else
  {
    v25 = sub_264B40944();
    v26 = sub_264B41494();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2649C6000, v25, v26, "Negotiator is not available", v27, 2u);
      MEMORY[0x266749940](v27, -1, -1);
    }

    v38 = v0[6];

    sub_264A02DF0();
    v28 = swift_allocError();
    v0[13] = v28;
    *v29 = 5;
    v36 = (*(v38 + 128) + **(v38 + 128));
    v30 = swift_task_alloc();
    v0[14] = v30;
    *v30 = v0;
    v31 = sub_264A586E4;
  }

  v30[1] = v31;
  v33 = v0[6];
  v34 = v0[5];

  return v36(v28, v34, v33);
}

uint64_t sub_264A58528()
{

  return MEMORY[0x2822009F8](sub_264A58650, 0, 0);
}

uint64_t sub_264A58650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A586E4()
{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264A58844()
{

  return MEMORY[0x2822009F8](sub_264A5896C, 0, 0);
}

uint64_t sub_264A5896C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A58A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_264A58CAC;

  return sub_264A57478(a1, a2, a3, a4);
}

uint64_t sub_264A58AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649E0EE4;

  return sub_264A57E0C(a1, a2, a3, a4);
}

id sub_264A58B84(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_264B40014();
  v8[0] = 0;
  v4 = [v2 initWithOffer:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_264B3FF84();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_264A58C44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_264A58CB0()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_264A58CFC(void *a1)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;
  [v4 removeFromSuperlayer];
  v6 = *&v1[v3];
  if (v6)
  {
    v7 = v6;
    [v1 addSublayer_];
  }
}

void (*sub_264A58D98(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_264A58E34;
}

void sub_264A58E34(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_264A58CFC(v3);
  }

  else
  {
    sub_264A58CFC(*(*a1 + 24));
  }

  free(v2);
}

void sub_264A58EA0()
{
  v34.receiver = v0;
  v34.super_class = type metadata accessor for CAPackageViewLayer();
  objc_msgSendSuper2(&v34, sel_layoutSublayers);
  v1 = OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v3 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v35.origin.x = v5;
    v35.origin.y = v7;
    v35.size.width = v9;
    v35.size.height = v11;
    rect = CGRectGetWidth(v35);
    v27 = v5;
    v36.origin.x = v5;
    v36.origin.y = v7;
    v28 = v11;
    v36.size.width = v9;
    v36.size.height = v11;
    v20 = rect / CGRectGetHeight(v36);
    v37.origin.x = v13;
    v37.origin.y = v15;
    v37.size.width = v17;
    v37.size.height = v19;
    Width = CGRectGetWidth(v37);
    v38.origin.x = v13;
    v38.origin.y = v15;
    v38.size.width = v17;
    v38.size.height = v19;
    if (v20 >= Width / CGRectGetHeight(v38))
    {
      v41.origin.x = v27;
      v41.origin.y = v7;
      v41.size.width = v9;
      v41.size.height = v28;
      Height = CGRectGetWidth(v41);
      v42.origin.x = v13;
      v42.origin.y = v15;
      v42.size.width = v17;
      v42.size.height = v19;
      v23 = CGRectGetWidth(v42);
    }

    else
    {
      v39.origin.x = v27;
      v39.origin.y = v7;
      v39.size.width = v9;
      v39.size.height = v28;
      Height = CGRectGetHeight(v39);
      v40.origin.x = v13;
      v40.origin.y = v15;
      v40.size.width = v17;
      v40.size.height = v19;
      v23 = CGRectGetHeight(v40);
    }

    CGAffineTransformMakeScale(&v32, Height / v23, Height / v23);
    m21 = v32.m21;
    m22 = v32.m22;
    v29 = *&v32.m13;
    recta = *&v32.m11;
    [v3 setGeometryFlipped_];
    *&m.c = v29;
    *&m.a = recta;
    m.tx = m21;
    m.ty = m22;
    CATransform3DMakeAffineTransform(&v32, &m);
    [v3 setTransform_];
    [v0 bounds];
    MidX = CGRectGetMidX(v43);
    [v0 bounds];
    [v3 setPosition_];
  }
}

id CAPackageViewLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CAPackageViewLayer.init()()
{
  *&v0[OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CAPackageViewLayer.__allocating_init(layer:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

void *CAPackageViewLayer.init(layer:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_264B41A94();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CAPackageViewLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithLayer_, v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id CAPackageViewLayer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CAPackageViewLayer.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CAPackageViewLayer();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CAPackageViewLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_264A59510@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_264A59578(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_264A58CFC(v1);
}

uint64_t sub_264A5966C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649E0EE4;

  return sub_264A59FDC(v8, a2, a3, a4);
}

uint64_t sub_264A5973C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 240) = a4;
  *(v5 + 248) = v4;
  *(v5 + 224) = a2;
  *(v5 + 232) = a3;
  *(v5 + 320) = a1;
  v6 = sub_264B3FFD4();
  *(v5 + 256) = v6;
  *(v5 + 264) = *(v6 - 8);
  *(v5 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A59804, v4, 0);
}

uint64_t sub_264A59804()
{
  v29 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v28);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 70;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000011, 0x8000000264B5C9B0, v28);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 320);
  v14 = sub_264AA0BE0();
  *(v0 + 280) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B44150;
  *(inited + 32) = 1701869940;
  v16 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  if (v13 <= 1)
  {
    v17 = 0xE700000000000000;
    if (v13)
    {
      v18 = 0x646570706F7473;
    }

    else
    {
      v18 = 0x64657472617473;
    }
  }

  else if (v13 == 2)
  {
    v17 = 0x8000000264B58C30;
    v18 = 0xD000000000000019;
  }

  else if (v13 == 3)
  {
    v17 = 0x8000000264B58C50;
    v18 = 0xD000000000000011;
  }

  else
  {
    v18 = 0x746169746F67656ELL;
    v17 = 0xEF617461446E6F69;
  }

  v19 = *(v0 + 224);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v17;
  v20 = sub_264A24308(inited);
  swift_setDeallocating();
  sub_2649D04D4(v16, &qword_27FF89220, &qword_264B48430);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = v20;
  sub_264A5B9D0(v19, sub_264A5B684, 0, isUniquelyReferenced_nonNull_native, v28);

  v22 = v28[0];
  v23 = sub_264B41014();
  *(v0 + 288) = v23;

  sub_264AB4744(v22);

  v24 = sub_264B40F54();
  *(v0 + 296) = v24;

  v25 = sub_264B41014();
  *(v0 + 304) = v25;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_264A59D98;
  v26 = swift_continuation_init();
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  *(v0 + 160) = MEMORY[0x277D85DD0];
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_2649F4D64;
  *(v0 + 184) = &block_descriptor_24;
  *(v0 + 192) = v26;
  [v14 sendEventID:v23 event:v24 destinationID:v25 options:0 completion:v0 + 160];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_264A59D98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 248);
  if (v2)
  {
    v4 = sub_264A59F40;
  }

  else
  {
    v4 = sub_264A59EB8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264A59EB8()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_264A59F40(uint64_t a1)
{
  v2 = v1[38];
  v4 = v1[36];
  v3 = v1[37];
  v5 = v1[35];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_264A59FDC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 240) = a4;
  *(v5 + 248) = v4;
  *(v5 + 224) = a2;
  *(v5 + 232) = a3;
  *(v5 + 320) = a1;
  v6 = sub_264B3FFD4();
  *(v5 + 256) = v6;
  *(v5 + 264) = *(v6 - 8);
  *(v5 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A5A0A4, v4, 0);
}

uint64_t sub_264A5A0A4()
{
  v33 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v32);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 70;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000011, 0x8000000264B5C9B0, v32);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(*(v0 + 248) + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
  *(v0 + 280) = v13;
  if (v13)
  {
    v14 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B44150;
    *(inited + 32) = 1701869940;
    v16 = inited + 32;
    *(inited + 40) = 0xE400000000000000;
    if (v14 <= 1)
    {
      v17 = 0xE700000000000000;
      if (v14)
      {
        v18 = 0x646570706F7473;
      }

      else
      {
        v18 = 0x64657472617473;
      }
    }

    else if (v14 == 2)
    {
      v17 = 0x8000000264B58C30;
      v18 = 0xD000000000000019;
    }

    else if (v14 == 3)
    {
      v17 = 0x8000000264B58C50;
      v18 = 0xD000000000000011;
    }

    else
    {
      v18 = 0x746169746F67656ELL;
      v17 = 0xEF617461446E6F69;
    }

    v22 = *(v0 + 224);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v18;
    *(inited + 56) = v17;
    v23 = inited;
    v24 = v13;
    v25 = sub_264A24308(v23);
    swift_setDeallocating();
    sub_2649D04D4(v16, &qword_27FF89220, &qword_264B48430);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = v25;
    sub_264A5B9D0(v22, sub_264A5B684, 0, isUniquelyReferenced_nonNull_native, v32);

    v27 = v32[0];
    v28 = sub_264B41014();
    *(v0 + 288) = v28;

    sub_264AB4744(v27);

    v29 = sub_264B40F54();
    *(v0 + 296) = v29;

    v30 = sub_264B41014();
    *(v0 + 304) = v30;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_264A5A6C8;
    v31 = swift_continuation_init();
    *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
    *(v0 + 160) = MEMORY[0x277D85DD0];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_2649F4D64;
    *(v0 + 184) = &block_descriptor_12;
    *(v0 + 192) = v31;
    [v24 sendEventID:v28 event:v29 destinationID:v30 options:0 completion:v0 + 160];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_2649FEC60();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_264A5A6C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 248);
  if (v2)
  {
    v4 = sub_264A5A870;
  }

  else
  {
    v4 = sub_264A5A7E8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264A5A7E8()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_264A5A870(uint64_t a1)
{
  v2 = v1[38];
  v4 = v1[36];
  v3 = v1[37];
  v5 = v1[35];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_264A5A904(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649E0EE4;

  return sub_264A5AF18(v6, a2, a3);
}

uint64_t sub_264A5A9C8(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 360) = a3;
  *(v4 + 368) = v3;
  *(v4 + 352) = a2;
  *(v4 + 440) = a1;
  v5 = sub_264B3FFD4();
  *(v4 + 376) = v5;
  *(v4 + 384) = *(v5 - 8);
  *(v4 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A5AA90, v3, 0);
}

uint64_t sub_264A5AA90()
{
  v24 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v23);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 83;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001FLL, 0x8000000264B5C990, &v23);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 440);
  v14 = sub_264AA0BE0();
  *(v0 + 400) = v14;
  v15 = sub_264B41014();
  *(v0 + 408) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  *(v0 + 320) = 1701869940;
  *(v0 + 328) = 0xE400000000000000;
  v17 = MEMORY[0x277D837D0];
  sub_264B416F4();
  *(inited + 96) = v17;
  *(inited + 72) = 0xD000000000000011;
  *(inited + 80) = 0x8000000264B58C50;
  *(v0 + 336) = 0x79546D6165727473;
  *(v0 + 344) = 0xEA00000000006570;
  sub_264B416F4();
  v18 = 0x6F69647561;
  if (v13)
  {
    v18 = 0x6F65646976;
  }

  *(inited + 168) = v17;
  *(inited + 144) = v18;
  *(inited + 152) = 0xE500000000000000;
  sub_264A240D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
  swift_arrayDestroy();
  v19 = sub_264B40F54();
  *(v0 + 416) = v19;

  v20 = sub_264B41014();
  *(v0 + 424) = v20;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2649EB72C;
  v21 = swift_continuation_init();
  *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  *(v0 + 256) = MEMORY[0x277D85DD0];
  *(v0 + 264) = 1107296256;
  *(v0 + 272) = sub_2649F4D64;
  *(v0 + 280) = &block_descriptor_18_0;
  *(v0 + 288) = v21;
  [v14 sendEventID:v15 event:v19 destinationID:v20 options:0 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_264A5AF18(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 360) = a3;
  *(v4 + 368) = v3;
  *(v4 + 352) = a2;
  *(v4 + 440) = a1;
  v5 = sub_264B3FFD4();
  *(v4 + 376) = v5;
  *(v4 + 384) = *(v5 - 8);
  *(v4 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A5AFE0, v3, 0);
}

uint64_t sub_264A5AFE0()
{
  v27 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v26);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 83;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001FLL, 0x8000000264B5C990, v26);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(*(v0 + 368) + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
  *(v0 + 400) = v13;
  if (v13)
  {
    v14 = *(v0 + 440);
    v25 = v13;
    v15 = sub_264B41014();
    *(v0 + 408) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B46A70;
    *(v0 + 320) = 1701869940;
    *(v0 + 328) = 0xE400000000000000;
    v17 = MEMORY[0x277D837D0];
    sub_264B416F4();
    *(inited + 96) = v17;
    *(inited + 72) = 0xD000000000000011;
    *(inited + 80) = 0x8000000264B58C50;
    *(v0 + 336) = 0x79546D6165727473;
    *(v0 + 344) = 0xEA00000000006570;
    sub_264B416F4();
    v18 = 0x6F69647561;
    if (v14)
    {
      v18 = 0x6F65646976;
    }

    *(inited + 168) = v17;
    *(inited + 144) = v18;
    *(inited + 152) = 0xE500000000000000;
    sub_264A240D0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
    swift_arrayDestroy();
    v19 = sub_264B40F54();
    *(v0 + 416) = v19;

    v20 = sub_264B41014();
    *(v0 + 424) = v20;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2649EAEB4;
    v21 = swift_continuation_init();
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
    *(v0 + 256) = MEMORY[0x277D85DD0];
    *(v0 + 264) = 1107296256;
    *(v0 + 272) = sub_2649F4D64;
    *(v0 + 280) = &block_descriptor_9;
    *(v0 + 288) = v21;
    [v25 sendEventID:v15 event:v19 destinationID:v20 options:0 completion:v0 + 256];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_2649FEC60();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_264A5B4F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649E0EE4;

  return sub_264A5973C(a1, a2, a3, a4);
}

uint64_t sub_264A5B5C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649CD850;

  return sub_264A5A9C8(v6, a2, a3);
}

uint64_t sub_264A5B684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2649C964C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_264A5B6D0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2649C964C(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_264A23FD8(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_2649D04D4(v21, &qword_27FF8A0B0, &unk_264B49928);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_264A5B830@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_264A1FB04(*(v3 + 48) + 40 * v13, &v17);
    sub_2649C964C(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = sub_264A23FD8(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return sub_2649D04D4(&v17, &qword_27FF8A0B8, qword_264B49950);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_264A5B9D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_264A5B6D0(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_264A23FD8(v47, v45);
  v14 = *a5;
  result = sub_264A20ACC(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_264A20FA0(v20, a4 & 1);
    result = sub_264A20ACC(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_264B41AE4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_264A23238();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_2649C964C(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_0(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_0((v25 + v24));
    sub_264A23FD8(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_264A23FD8(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_264A5B6D0(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_264A23FD8(v47, v45);
        v34 = *a5;
        result = sub_264A20ACC(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_264A20FA0(v38, 1);
          result = sub_264A20ACC(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_2649C964C(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_0(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_0((v33 + v32));
          sub_264A23FD8(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_264A23FD8(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_264A5B6D0(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_264A0E7A0(v48);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t MockFeatureFlagPrimitives.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_264A24768(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_264A5BDB8(char *a1, char a2)
{
  v4 = *a1;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_264A22F68(a2, v4, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_264A5BE40(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_264A20BD8(v2), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + v4);
  }

  else
  {
    return 1;
  }
}

uint64_t MockFeatureFlagPrimitives.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ContinuityDeviceBackedMediaTransportClientSessionVendor.__allocating_init(userDefaults:timeoutPrimitives:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_2649D2AAC(a1, v4 + 16);
  v5 = *(a2 + 80);
  *(v4 + 120) = *(a2 + 64);
  *(v4 + 136) = v5;
  *(v4 + 152) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 56) = *a2;
  *(v4 + 72) = v6;
  v7 = *(a2 + 48);
  *(v4 + 88) = *(a2 + 32);
  *(v4 + 168) = *(a2 + 112);
  *(v4 + 104) = v7;
  return v4;
}

uint64_t ContinuityDeviceBackedMediaTransportClientSessionVendor.init(userDefaults:timeoutPrimitives:)(__int128 *a1, uint64_t a2)
{
  sub_2649D2AAC(a1, v2 + 16);
  v4 = *(a2 + 80);
  *(v2 + 120) = *(a2 + 64);
  *(v2 + 136) = v4;
  *(v2 + 152) = *(a2 + 96);
  v5 = *(a2 + 16);
  *(v2 + 56) = *a2;
  *(v2 + 72) = v5;
  v6 = *(a2 + 48);
  *(v2 + 88) = *(a2 + 32);
  *(v2 + 168) = *(a2 + 112);
  *(v2 + 104) = v6;
  return v2;
}

uint64_t ContinuityDeviceBackedMediaTransportClientSessionVendor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_2649D2BB4(v0 + 56);
  return v0;
}

uint64_t ContinuityDeviceBackedMediaTransportClientSessionVendor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_2649D2BB4(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t ContinuityDeviceBackedMediaTransportClientSessionVendor.createMediaTransportClientSession(continuityDevice:sessionConfig:discoveryTimeout:discoveryBluetoothRSSIThreshold:telemetry:)(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, void *a4, double a5)
{
  v10 = *a2;
  v11 = v5[5];
  v12 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v11);
  v13 = (*(v12 + 24))(0xD000000000000016, 0x8000000264B5A720, 1, v11, v12);
  if (v13)
  {
    v39 = a4;
    v14 = v5[10];
    v15 = __swift_project_boxed_opaque_existential_1(v5 + 7, v14);
    v16 = *(v14 - 8);
    MEMORY[0x28223BE20](v15, v15);
    v18 = &v37[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v16 + 16))(v18);
    if (sub_264B41644() < 65)
    {
      v21 = sub_264B41654();
      v38 = v10;
      v22 = v21;
      v23 = sub_264B41634();
      (*(v16 + 8))(v18, v14);
      v19 = v23;
      v10 = v38;
      if ((v22 & 1) == 0)
      {
        v19 = v23;
      }
    }

    else
    {
      sub_2649D376C();
      sub_2649D37C0();
      sub_264B40F44();
      (*(v16 + 8))(v18, v14);
      v19 = *v40;
    }

    v20 = *&v19;
    a4 = v39;
  }

  else
  {
    v20 = 0;
  }

  if (v10)
  {
    v24 = 512;
  }

  else
  {
    v24 = 0x1000000;
  }

  v25 = type metadata accessor for RapportBackedMediaTransportDeviceDiscoverer(0);
  swift_allocObject();
  v26 = sub_264B02258(a3, 0, v24, a5);
  v27 = *a1;
  v28 = a1[1];
  v40[3] = v25;
  v40[4] = &off_28765F938;
  v40[0] = v26;
  type metadata accessor for MediaTransportClientSession(0);
  v29 = swift_allocObject();
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v40, v25);
  MEMORY[0x28223BE20](v30, v30);
  v32 = &v37[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v33 + 16))(v32);
  v34 = *v32;

  v35 = sub_264A5C500(1, v27, v28, v34, a4, v20, ((v13 & 1) == 0) << 8, v29);
  __swift_destroy_boxed_opaque_existential_0(v40);
  sub_264A5CB50(&qword_27FF8A0C0, type metadata accessor for MediaTransportClientSession, &unk_264B50AA8);
  return v35;
}

uint64_t sub_264A5C500(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v51 = a7;
  v49 = a5;
  v50 = a6;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v10 = sub_264B3FFD4();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_264B41544();
  v13 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_264B414F4();
  MEMORY[0x28223BE20](v17, v18);
  v19 = sub_264B40EE4();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v54 = type metadata accessor for RapportBackedMediaTransportDeviceDiscoverer(0);
  v55 = &off_28765F938;
  *&v53 = a4;
  swift_defaultActor_initialize();
  sub_2649CB2F0();
  sub_264B40ED4();
  v52 = MEMORY[0x277D84F90];
  sub_264A5CB50(&qword_27FF88CA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88CA8, &unk_264B471C0);
  sub_264A5CB98();
  sub_264B41684();
  (*(v13 + 104))(v16, *MEMORY[0x277D85260], v42);
  *(a8 + 184) = sub_264B41574();
  *(a8 + 192) = 0;
  *(a8 + 200) = MEMORY[0x277D84FA0];
  v21 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionID;
  v22 = sub_264B40104();
  (*(*(v22 - 8) + 56))(a8 + v21, 1, 1, v22);
  *(a8 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_wifiReservation) = 0;
  v23 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  (*(*(v24 - 8) + 56))(a8 + v23, 1, 1, v24);
  *(a8 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_didRemoteStop) = 0;
  *(a8 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState) = 0;
  v25 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType;
  v26 = MEMORY[0x277D84F90];
  *(a8 + v25) = sub_264A2420C(MEMORY[0x277D84F90]);
  *(a8 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_tearDownContinuations) = v26;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v27 = sub_264B40964();
  __swift_project_value_buffer(v27, qword_27FFA71D0);
  v28 = sub_264B41484();
  v29 = v43;
  sub_264B3FF94();
  v30 = sub_264B3FFA4();
  v32 = v31;
  (*(v44 + 8))(v29, v45);

  v33 = sub_264B40944();

  if (os_log_type_enabled(v33, v28))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v52 = v35;
    *v34 = 136446722;
    v36 = sub_2649CC004(v30, v32, &v52);

    *(v34 + 4) = v36;
    *(v34 + 12) = 2050;
    *(v34 + 14) = 126;
    *(v34 + 22) = 2082;
    *(v34 + 24) = sub_2649CC004(0xD000000000000043, 0x8000000264B5CB20, &v52);
    _os_log_impl(&dword_2649C6000, v33, v28, "%{public}s:%{public}ld %{public}s", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v35, -1, -1);
    MEMORY[0x266749940](v34, -1, -1);
  }

  else
  {
  }

  *(a8 + 112) = v46 & 1;
  v37 = v48;
  *(a8 + 120) = v47;
  *(a8 + 128) = v37;
  sub_2649D2AAC(&v53, a8 + 136);
  v38 = v50;
  *(a8 + 176) = v49;
  if ((v51 & 0x100) != 0)
  {
    v38 = 0;
  }

  v39 = v51 | BYTE1(v51) & 1;
  v40 = a8 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_avStreamActivationDelay;
  *v40 = v38;
  *(v40 + 8) = v39 & 1;
  return a8;
}

uint64_t sub_264A5CB50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_264A5CB98()
{
  result = qword_27FF88CB0;
  if (!qword_27FF88CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88CA8, &unk_264B471C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88CB0);
  }

  return result;
}

uint64_t NotifyBackedRTIStateCoordinator.NotifyBackedRTIStateCoordinatorError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

ScreenSharingKit::NotifyBackedRTIStateCoordinator __swiftcall NotifyBackedRTIStateCoordinator.init()()
{
  *v0 = 0xD000000000000026;
  v0[1] = 0x8000000264B5CB70;
  return result;
}

BOOL NotifyBackedRTIStateCoordinator.isRTIEnabled.getter()
{
  v16 = *MEMORY[0x277D85DE8];
  out_token = 0;
  v0 = sub_264B41074();
  v1 = notify_register_check((v0 + 32), &out_token);

  if (v1)
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v2 = sub_264B40964();
    __swift_project_value_buffer(v2, qword_27FF8AEB8);
    v3 = sub_264B40944();
    v4 = sub_264B41494();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_2649C6000, v3, v4, "Registering token for RTI failed with status: %u", v5, 8u);
      MEMORY[0x266749940](v5, -1, -1);
    }

    sub_264A5D2DC();
    swift_allocError();
    *v6 = 0;
  }

  else
  {
    state64 = 0;
    if (notify_get_state(out_token, &state64))
    {
      return state64 != 0;
    }

    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AEB8);
    v10 = sub_264B40944();
    v11 = sub_264B41494();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      _os_log_impl(&dword_2649C6000, v10, v11, "Getting state for RTI failed with status: %u", v12, 8u);
      MEMORY[0x266749940](v12, -1, -1);
    }

    sub_264A5D2DC();
    swift_allocError();
    *v13 = 1;
  }

  swift_willThrow();
  return v7;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NotifyBackedRTIStateCoordinator.setIsRTIEnabled(_:)(Swift::Bool a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  out_token = 0;
  v2 = sub_264B41074();
  v3 = notify_register_check((v2 + 32), &out_token);

  if (v3)
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AEB8);
    v5 = sub_264B40944();
    v6 = sub_264B41494();
    if (!os_log_type_enabled(v5, v6))
    {
      v8 = 0;
      goto LABEL_19;
    }

    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_2649C6000, v5, v6, "Registering token for RTI failed with status: %u", v7, 8u);
    v8 = 0;
LABEL_11:
    MEMORY[0x266749940](v7, -1, -1);
LABEL_19:

    sub_264A5D2DC();
    swift_allocError();
    *v18 = v8;
    swift_willThrow();
    return;
  }

  v9 = notify_set_state(out_token, a1);
  if (v9)
  {
    v10 = v9;
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FF8AEB8);
    v5 = sub_264B40944();
    v12 = sub_264B41494();
    if (!os_log_type_enabled(v5, v12))
    {
      v8 = 2;
      goto LABEL_19;
    }

    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v5, v12, "Setting state for RTI failed with status: %u", v7, 8u);
    v8 = 2;
    goto LABEL_11;
  }

  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v13 = sub_264B40964();
  __swift_project_value_buffer(v13, qword_27FF8AEB8);
  v14 = sub_264B40944();
  v15 = sub_264B414B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_2649CC004(0xD000000000000013, 0x8000000264B5CBA0, v20);
    *(v16 + 12) = 1024;
    *(v16 + 14) = a1;
    _os_log_impl(&dword_2649C6000, v14, v15, "%s successfully set rti enabled state to %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x266749940](v17, -1, -1);
    MEMORY[0x266749940](v16, -1, -1);
  }
}

unint64_t sub_264A5D2DC()
{
  result = qword_27FF8A0C8;
  if (!qword_27FF8A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A0C8);
  }

  return result;
}

unint64_t sub_264A5D334()
{
  result = qword_27FF8A0D0;
  if (!qword_27FF8A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A0D0);
  }

  return result;
}

uint64_t sub_264A5D3B8(uint64_t a1)
{
  v2 = sub_264A5E128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A5D3F4(uint64_t a1)
{
  v2 = sub_264A5E128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A5D43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264A5D4BC(uint64_t a1)
{
  v2 = sub_264A5E0D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A5D4F8(uint64_t a1)
{
  v2 = sub_264A5E0D4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264A5D534()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_264A5D570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000264B5CBC0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000264B5CBE0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264B41AA4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_264A5D654(uint64_t a1)
{
  v2 = sub_264A5E080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A5D690(uint64_t a1)
{
  v2 = sub_264A5E080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AccessibilityMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A0D8, &qword_264B49B90);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A0E0, &qword_264B49B98);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A0E8, &qword_264B49BA0);
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v12);
  v14 = &v21 - v13;
  v15 = v1[1];
  v25 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A5E080();
  sub_264B41BD4();
  if ((v15 & 0x2000000000000000) != 0)
  {
    LOBYTE(v27) = 1;
    sub_264A5E0D4();
    v19 = v26;
    sub_264B419B4();
    v20 = v24;
    sub_264B419F4();
    (*(v23 + 8))(v6, v20);
    return (*(v11 + 8))(v14, v19);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_264A5E128();
    v16 = v26;
    sub_264B419B4();
    v27 = v25;
    v28 = v15;
    sub_264A2E90C();
    v17 = v22;
    sub_264B41A24();
    (*(v21 + 8))(v10, v17);
    return (*(v11 + 8))(v14, v16);
  }
}

uint64_t AccessibilityMessage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A108, &qword_264B49BA8);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A110, &qword_264B49BB0);
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A118, &unk_264B49BB8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v35 - v14;
  v16 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_264A5E080();
  v17 = v40;
  sub_264B41BC4();
  if (!v17)
  {
    v35 = v7;
    v40 = v12;
    v19 = v38;
    v18 = v39;
    v20 = sub_264B419A4();
    v21 = (2 * *(v20 + 16)) | 1;
    v43 = v20;
    v44 = v20 + 32;
    v45 = 0;
    v46 = v21;
    v22 = sub_2649E0ED8();
    v23 = v11;
    if (v22 == 2 || v45 != v46 >> 1)
    {
      v27 = sub_264B417A4();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
      *v29 = &type metadata for AccessibilityMessage;
      sub_264B41904();
      sub_264B41794();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v40 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v22)
      {
        LOBYTE(v41) = 1;
        sub_264A5E0D4();
        sub_264B418F4();
        v24 = v40;
        v25 = v18;
        v26 = sub_264B41954();
        (*(v37 + 8))(v6, v19);
        (*(v24 + 8))(v15, v23);
        swift_unknownObjectRelease();
        v33 = v26 & 1;
        v34 = 0x2000000000000000;
      }

      else
      {
        LOBYTE(v41) = 0;
        sub_264A5E128();
        sub_264B418F4();
        v31 = v40;
        v25 = v18;
        sub_264A2E960();
        v32 = v35;
        sub_264B41984();
        (*(v36 + 8))(v10, v32);
        (*(v31 + 8))(v15, v23);
        swift_unknownObjectRelease();
        v33 = v41;
        v34 = v42;
      }

      *v25 = v33;
      v25[1] = v34;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

double sub_264A5DF34@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v3;
  a1[1] = v2;
  type metadata accessor for ControlMessage(0);
  swift_storeEnumTagMultiPayload();

  return sub_264A5448C(v3, v2);
}

BOOL _s16ScreenSharingKit20AccessibilityMessageO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v5 & 0x2000000000000000) == 0)
    {
      sub_264A5448C(*a2, *(a2 + 8));
      sub_264A5448C(v2, v3);
      v6 = sub_264A2E750(v2, v3, v4, v5);
      sub_2649E7004(v2, v3);
      sub_2649E7004(v4, v5);
      return v6;
    }

    sub_2649DEF18(*a1, v3);
    goto LABEL_7;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_7:
    sub_264A5448C(v4, v5);
    sub_2649E7004(v2, v3);
    sub_2649E7004(v4, v5);
    v8 = 0;
    return v8 & 1;
  }

  sub_2649E7004(*a1, v3);
  sub_2649E7004(v4, v5);
  v8 = v4 ^ v2 ^ 1;
  return v8 & 1;
}

unint64_t sub_264A5E080()
{
  result = qword_27FF8A0F0;
  if (!qword_27FF8A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A0F0);
  }

  return result;
}

unint64_t sub_264A5E0D4()
{
  result = qword_27FF8A0F8;
  if (!qword_27FF8A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A0F8);
  }

  return result;
}

unint64_t sub_264A5E128()
{
  result = qword_27FF8A100;
  if (!qword_27FF8A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A100);
  }

  return result;
}

uint64_t sub_264A5E188(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264A5E1DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

unint64_t sub_264A5E290()
{
  result = qword_27FF8A120;
  if (!qword_27FF8A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A120);
  }

  return result;
}

unint64_t sub_264A5E2E8()
{
  result = qword_27FF8A128;
  if (!qword_27FF8A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A128);
  }

  return result;
}

unint64_t sub_264A5E340()
{
  result = qword_27FF8A130;
  if (!qword_27FF8A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A130);
  }

  return result;
}

unint64_t sub_264A5E398()
{
  result = qword_27FF8A138;
  if (!qword_27FF8A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A138);
  }

  return result;
}

unint64_t sub_264A5E3F0()
{
  result = qword_27FF8A140;
  if (!qword_27FF8A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A140);
  }

  return result;
}

unint64_t sub_264A5E448()
{
  result = qword_27FF8A148;
  if (!qword_27FF8A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A148);
  }

  return result;
}

unint64_t sub_264A5E4A0()
{
  result = qword_27FF8A150;
  if (!qword_27FF8A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A150);
  }

  return result;
}

unint64_t sub_264A5E4F8()
{
  result = qword_27FF8A158;
  if (!qword_27FF8A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A158);
  }

  return result;
}

unint64_t sub_264A5E550()
{
  result = qword_27FF8A160;
  if (!qword_27FF8A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A160);
  }

  return result;
}

uint64_t dispatch thunk of HIDEventObserverPrimitives.coordinateTransform.setter(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  return v3(v6, a2);
}

id sub_264A5E6C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_264A5EC94();
    v4 = sub_264B40F54();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_264A5E784(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AE40);

    v7 = sub_264B40944();
    v8 = sub_264B41484();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_2649CC004(a1, a2, aBlock);
      _os_log_impl(&dword_2649C6000, v7, v8, "Sending report to CA event:%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x266749940](v10, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    v11 = sub_264B40944();
    v12 = sub_264B41484();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136315138;
      sub_264A5EC94();
      v15 = sub_264B40F74();
      v17 = sub_2649CC004(v15, v16, aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2649C6000, v11, v12, "Report = %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    v18 = sub_264B41014();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    aBlock[4] = sub_264A5EC74;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264A5E6C0;
    aBlock[3] = &block_descriptor_10;
    v20 = _Block_copy(aBlock);

    v21 = AnalyticsSendEventLazy();
    _Block_release(v20);

    if ((v21 & 1) == 0)
    {

      v22 = sub_264B40944();
      v23 = sub_264B41494();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_2649CC004(a1, a2, aBlock);
        _os_log_impl(&dword_2649C6000, v22, v23, "Analytics for %s is not enabled in the current config", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x266749940](v25, -1, -1);
        MEMORY[0x266749940](v24, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v26 = sub_264B40964();
    __swift_project_value_buffer(v26, qword_27FF8AE40);
    oslog = sub_264B40944();
    v27 = sub_264B41494();
    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v27, "missing event name", v28, 2u);
      MEMORY[0x266749940](v28, -1, -1);
    }
  }
}

uint64_t sub_264A5EC3C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_264A5EC94()
{
  result = qword_27FF8A8C0;
  if (!qword_27FF8A8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF8A8C0);
  }

  return result;
}

id ManagedConfigurationBackedDeviceRestrictionPrimitives.isDeviceRestricted.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isOnenessAllowed];

    return (v2 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264A5ED44()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isOnenessAllowed];

    return (v2 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of MediaTransportClientSessionProviding.createMediaStream(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649E0EE4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MediaTransportClientSessionProviding.captureVideoScreenshot()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264A33224;

  return v7(a1, a2);
}

uint64_t dispatch thunk of MediaTransportClientSessionProviding.setScreenSharingVideoLayer(layer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649CD850;

  return v9(a1, a2, a3);
}

id FBSDisplayConfiguration.isContinuityDisplay.getter()
{
  v1 = [v0 identity];
  v2 = [v1 isContinuityDisplay];

  return v2;
}

uint64_t FBSDisplayConfiguration.identifier.getter()
{
  v1 = [v0 hardwareIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_264B41044();

    return v3;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

id sub_264A5F250()
{
  v1 = [*v0 identity];
  v2 = [v1 isContinuityDisplay];

  return v2;
}

uint64_t sub_264A5F2A0()
{
  v1 = [*v0 hardwareIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_264B41044();

    return v3;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t sub_264A5F37C(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 128) = 0;
  v3 = OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_activeStrokeUUID;
  v4 = sub_264B40104();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_strokeRedComponent) = 0x3FE7F7F7F7F7F7F8;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_strokeGreenComponent) = 0x3FD6969696969697;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_strokeBlueComponent) = 0x3FEE5E5E5E5E5E5ELL;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_isInterrupted) = 0;
  v5 = (v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_interruptionHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + 120) = a1;
  return v1;
}

uint64_t sub_264A5F470()
{
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_activeStrokeUUID, &unk_27FF8BFC0, &qword_264B47140);
  sub_2649CB67C(*(v0 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_interruptionHandler), *(v0 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_interruptionHandler + 8));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AccessibilityBackedDrawEventConsumer(uint64_t a1)
{
  result = qword_27FF8A198;
  if (!qword_27FF8A198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A5F538(uint64_t a1)
{
  sub_264A0DF00(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264A5F604(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_264A5F628, v2, 0);
}

uint64_t sub_264A5F628()
{
  receiver = v0[8].receiver;
  v2 = (v0[8].super_class + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_interruptionHandler);
  v3 = *v2;
  v4 = v2[1];
  *v2 = v0[7].super_class;
  v2[1] = receiver;

  sub_2649CB67C(v3, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v0[2].super_class = &type metadata for ConcreteAXUIClientProvider;
  v0[3].receiver = &off_287657A80;
  v6 = type metadata accessor for AnnotationServicesClient();
  v7 = objc_allocWithZone(v6);
  __swift_mutable_project_boxed_opaque_existential_1(&v0[1], &type metadata for ConcreteAXUIClientProvider);
  v0[5].receiver = &type metadata for ConcreteAXUIClientProvider;
  v0[5].super_class = &off_287657A80;
  v8 = &v7[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_serviceName];
  *v8 = 0xD000000000000020;
  *(v8 + 1) = 0x8000000264B5CE30;
  v9 = &v7[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v7[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_interruptionHandler];
  *v10 = sub_264A61AA4;
  v10[1] = v5;
  sub_2649CB5C0(&v0[3].super_class, &v7[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClientProvider]);
  v0[6].receiver = v7;
  v0[6].super_class = v6;

  v0[9].receiver = objc_msgSendSuper2(v0 + 6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(&v0[3].super_class);
  __swift_destroy_boxed_opaque_existential_0(&v0[1].receiver);

  v11 = swift_task_alloc();
  v0[9].super_class = v11;
  *v11 = v0;
  *(v11 + 1) = sub_264A5F814;

  return AnnotationServicesClient.startAnnotationService()();
}

uint64_t sub_264A5F814()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_264A5F9AC;
  }

  else
  {
    v4 = sub_264A5F940;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264A5F940()
{
  v1 = v0[17];
  v2 = *(v1 + 112);
  *(v1 + 112) = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264A5F9AC()
{
  v21 = v0;

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);

  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136446466;
    *(v0 + 112) = v7;
    type metadata accessor for AccessibilityBackedDrawEventConsumer(0);

    v11 = sub_264B41064();
    v13 = sub_2649CC004(v11, v12, &v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_2649C6000, v4, v5, "%{public}s error starting accessibility %{public}@", v8, 0x16u);
    sub_2649D04D4(v9, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v16 = *(v0 + 160);
  sub_2649E24BC();
  swift_allocError();
  *v17 = 0;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_264A5FC18(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_264B41274();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = a1;
    v11 = a1;
    sub_264A10C20(0, 0, v6, &unk_264B4A350, v10);
  }

  return result;
}

uint64_t sub_264A5FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_264A5FD70, a4, 0);
}

uint64_t sub_264A5FD70()
{
  v1 = v0[2];
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_isInterrupted) = 1;
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_interruptionHandler;
  v3 = *v2;
  if (*v2)
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = *(v2 + 8);
    v7 = sub_264A61BB4(&qword_27FF8A1B8, &unk_264B4A2E0);

    v3(v5, v7, v4);
    sub_2649CB67C(v3, v6);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_264A5FE78()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_264A5FF5C;

    return AnnotationServicesClient.stopAnnotationService()();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_264A5FF5C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);

    return MEMORY[0x2822009F8](sub_264A60098, v3, 0);
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_264A60098()
{
  v21 = v0;

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);

  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136446466;
    *(v0 + 16) = v7;
    type metadata accessor for AccessibilityBackedDrawEventConsumer(0);

    v11 = sub_264B41064();
    v13 = sub_2649CC004(v11, v12, &v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_2649C6000, v4, v5, "%{public}s error stopping accessibility %{public}@", v8, 0x16u);
    sub_2649D04D4(v9, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v16 = *(v0 + 48);
  sub_2649E24BC();
  swift_allocError();
  *v17 = 2;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_264A60308(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = sub_264B40104();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = type metadata accessor for ControlMessage(0);
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A60454, v1, 0);
}

uint64_t sub_264A60454()
{
  v96 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = sub_264B40964();
  *(v0 + 312) = __swift_project_value_buffer(v2, qword_27FFA71B8);
  sub_2649CB5C0(v1, v0 + 16);

  v3 = sub_264B40944();
  v4 = sub_264B41474();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v95[0] = v7;
    *v6 = 136315394;
    *(v0 + 216) = v5;
    type metadata accessor for AccessibilityBackedDrawEventConsumer(0);

    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, v95);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = *(v0 + 40);
    v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    *(v0 + 80) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v14 = sub_264B41C44();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v17 = sub_2649CC004(v14, v16, v95);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_2649C6000, v3, v4, "%s did receive message: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  v18 = *(v0 + 232);
  v19 = *(v18 + 112);
  *(v0 + 320) = v19;
  if (!v19)
  {
    sub_2649E24BC();
    swift_allocError();
    *v20 = 4;
    goto LABEL_10;
  }

  if (*(v18 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_isInterrupted))
  {
    sub_264A61A18();
    swift_allocError();
LABEL_10:
    swift_willThrow();

    v21 = *(v0 + 8);
    v22 = 0;
LABEL_15:

    return v21(v22);
  }

  v23 = *(v0 + 224);
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v26 = *(v25 + 8);
  v27 = v19;
  v26(v24, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *(v0 + 368) = EnumCaseMultiPayload;
  v29 = *(v0 + 304);
  if (EnumCaseMultiPayload)
  {
    sub_2649DEEBC(v29);

    v30 = sub_264B40944();
    v31 = sub_264B41494();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 232);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v95[0] = v34;
      *v33 = 136315138;
      *(v0 + 184) = v32;
      type metadata accessor for AccessibilityBackedDrawEventConsumer(0);

      v35 = sub_264B41064();
      v37 = sub_2649CC004(v35, v36, v95);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2649C6000, v30, v31, "%s error decoding draw event", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x266749940](v34, -1, -1);
      MEMORY[0x266749940](v33, -1, -1);
    }

    v21 = *(v0 + 8);
    v22 = *(v0 + 368) == 0;
    goto LABEL_15;
  }

  v39 = *(v29 + 8);
  v94 = *v29;
  v40 = *(v29 + 16);
  if (*(v29 + 32))
  {
    v41 = *(v0 + 288);
    v42 = *(v0 + 240);
    v43 = *(v0 + 248);
    v44 = *(v0 + 232);
    v45 = *(v29 + 24);
    v46 = OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_activeStrokeUUID;
    swift_beginAccess();
    v92 = v46;
    v93 = v44;
    sub_264A61938(v44 + v46, v41);
    v89 = *(v43 + 48);
    v47 = v89(v41, 1, v42);
    v48 = *(v0 + 288);
    if (v47)
    {
      sub_2649D04D4(*(v0 + 288), &unk_27FF8BFC0, &qword_264B47140);
      v49 = 0;
      v50 = 0;
      v51 = LOBYTE(v39);
      if (LOBYTE(v39))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v70 = *(v0 + 248);
      v69 = *(v0 + 256);
      v91 = v40;
      v71 = *(v0 + 240);
      (*(v70 + 16))(v69, v48, v71);
      sub_2649D04D4(v48, &unk_27FF8BFC0, &qword_264B47140);
      v49 = sub_264B400A4();
      v50 = v72;
      v73 = v71;
      v40 = v91;
      (*(v70 + 8))(v69, v73);
      v51 = LOBYTE(v39);
      if (LOBYTE(v39))
      {
LABEL_21:
        if (v51 == 1)
        {
          v52 = *(v0 + 232);
          if ((*(v52 + 128) & 1) == 0)
          {

            v53 = sub_264B40944();
            v54 = sub_264B41494();

            v90 = v40;
            if (os_log_type_enabled(v53, v54))
            {
              v55 = *(v0 + 232);
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v95[0] = v57;
              *v56 = 136315138;
              *(v0 + 200) = v55;
              type metadata accessor for AccessibilityBackedDrawEventConsumer(0);

              v58 = sub_264B41064();
              v60 = sub_2649CC004(v58, v59, v95);

              *(v56 + 4) = v60;
              _os_log_impl(&dword_2649C6000, v53, v54, "%s Playback received inner stroke before a start stroke.", v56, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v57);
              MEMORY[0x266749940](v57, -1, -1);
              MEMORY[0x266749940](v56, -1, -1);
            }

            v61 = *(v0 + 280);
            v62 = (v0 + 264);
            v63 = *(v0 + 264);
            v65 = *(v0 + 240);
            v64 = *(v0 + 248);
            *(v52 + 128) = 1;
            sub_264B400F4();
            (*(v64 + 56))(v61, 0, 1, v65);
            swift_beginAccess();
            sub_264A619A8(v61, v93 + v92);
            swift_endAccess();
            sub_264A61938(v93 + v92, v63);
            v66 = v63;
            v67 = v65;
            goto LABEL_33;
          }
        }

        else
        {
          v79 = *(v0 + 280);
          v80 = *(v0 + 240);
          v81 = *(v0 + 248);
          v82 = *(v0 + 232);
          *(v82 + 128) = 0;
          (*(v81 + 56))(v79, 1, 1, v80);
          swift_beginAccess();
          sub_264A619A8(v79, v93 + v92);
          swift_endAccess();
          if (*(v82 + 120))
          {
            LOBYTE(v95[0]) = 12;
            sub_264A9113C(v95, 0);
          }
        }

        if (v50)
        {
LABEL_40:
          *(v0 + 344) = v50;
          v88 = swift_task_alloc();
          *(v0 + 352) = v88;
          *v88 = v0;
          v88[1] = sub_264A61120;

          return AnnotationServicesClient.sendDragEvent(_:point:telemetryEventID:)(v49, v50, v94, v40, v45);
        }

LABEL_38:

        v49 = 0;
        v50 = 0xE000000000000000;
        goto LABEL_40;
      }
    }

    v90 = v40;
    v62 = (v0 + 272);
    v75 = *(v0 + 272);
    v74 = *(v0 + 280);
    v77 = *(v0 + 240);
    v76 = *(v0 + 248);
    v78 = *(v0 + 232);

    *(v78 + 128) = 1;
    sub_264B400F4();
    (*(v76 + 56))(v74, 0, 1, v77);
    swift_beginAccess();
    sub_264A619A8(v74, v93 + v92);
    swift_endAccess();
    sub_264A61938(v93 + v92, v75);
    v66 = v75;
    v67 = v77;
LABEL_33:
    if (!v89(v66, 1, v67))
    {
      v83 = *v62;
      v84 = *(v0 + 248);
      v85 = *(v0 + 256);
      v86 = *(v0 + 240);
      (*(v84 + 16))(v85, *v62, v86);
      sub_2649D04D4(v83, &unk_27FF8BFC0, &qword_264B47140);
      v49 = sub_264B400A4();
      v50 = v87;
      (*(v84 + 8))(v85, v86);
      v40 = v90;
      goto LABEL_40;
    }

    sub_2649D04D4(*v62, &unk_27FF8BFC0, &qword_264B47140);
    v40 = v90;
    goto LABEL_38;
  }

  if (*(*(v0 + 232) + 120))
  {
    LOBYTE(v95[0]) = 11;
    sub_264A9113C(v95, 0);
  }

  v68 = swift_task_alloc();
  *(v0 + 328) = v68;
  *v68 = v0;
  v68[1] = sub_264A60F38;

  return AnnotationServicesClient.sendTapEvent(_:_:)(v94, v39, v40);
}

uint64_t sub_264A60F38()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_264A61248;
  }

  else
  {
    v4 = sub_264A61064;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264A61064()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 368) == 0;

  return v1(v2);
}

uint64_t sub_264A61120()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = sub_264A614B8;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_264A61C60;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264A61248()
{
  v21 = v0;
  v1 = v0[42];

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[42];
    v6 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v0[26] = v6;
    type metadata accessor for AccessibilityBackedDrawEventConsumer(0);

    v10 = sub_264B41064();
    v12 = sub_2649CC004(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s error sending tap event %{public}@", v7, 0x16u);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v15 = v0[42];
  v16 = v0[40];
  sub_2649E24BC();
  swift_allocError();
  *v17 = 5;
  swift_willThrow();

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_264A614B8()
{
  v21 = v0;
  v1 = v0[45];

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v6 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v0[24] = v6;
    type metadata accessor for AccessibilityBackedDrawEventConsumer(0);

    v10 = sub_264B41064();
    v12 = sub_2649CC004(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s error sending drag event %{public}@", v7, 0x16u);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v15 = v0[45];
  v16 = v0[40];
  sub_2649E24BC();
  swift_allocError();
  *v17 = 6;
  swift_willThrow();

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_264A61730(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_264A5F604(a1, a2);
}

uint64_t sub_264A617D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264A5FE58();
}

uint64_t sub_264A61860(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264A60308(a1);
}

uint64_t sub_264A618F4(uint64_t a1)
{
  result = sub_264A61BB4(&qword_27FF8A1A8, &unk_264B4A2FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264A61938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A619A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_264A61A18()
{
  result = qword_27FF8A1B0;
  if (!qword_27FF8A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A1B0);
  }

  return result;
}

uint64_t sub_264A61A6C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A61AAC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A61AF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649CD850;

  return sub_264A5FD50(a1, v4, v5, v7, v6);
}

uint64_t sub_264A61BB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessibilityBackedDrawEventConsumer(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264A61C0C()
{
  result = qword_27FF8A1C0;
  if (!qword_27FF8A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A1C0);
  }

  return result;
}

uint64_t sub_264A61C64()
{
  v1 = v0;
  v2 = sub_264B40964();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v9;
    if (qword_27FF88410 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v10 = __swift_project_value_buffer(v2, qword_27FF8AE88);

  v11 = sub_264B40944();
  v12 = sub_264B41484();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(v1 + 16);

    _os_log_impl(&dword_2649C6000, v11, v12, "UHIDBackedSystemEventConsumerVendor sessionID: %ld", v13, 0xCu);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v14 = *(v1 + 16);
  type metadata accessor for UHIDBackedSystemEventConsumer(0);
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_264B400F4();
  *(v15 + OBJC_IVAR____TtC16ScreenSharingKit29UHIDBackedSystemEventConsumer_sessionID) = v14;
  sub_264B402C4();
  swift_allocObject();
  v16 = sub_264B402B4();
  if (v16)
  {
    *(v15 + 112) = v16;
    (*(v3 + 16))(v6, v10, v2);
    type metadata accessor for KeyboardEventService();
    swift_allocObject();
    sub_264A62038(&qword_27FF8A1C8, type metadata accessor for KeyboardEventService, &unk_264B511D4);
    sub_264B40234();
    swift_allocObject();

    v17 = sub_264B40224();
    sub_264B401D4();
    sub_264B401F4();
    sub_264B401F4();
    sub_264B40214();

    *(v15 + 120) = v17;
    sub_264A62038(&qword_27FF8A1D0, type metadata accessor for UHIDBackedSystemEventConsumer, &unk_264B51190);
    return v15;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t sub_264A6200C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264A61C64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_264A62038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *ScreenSharingAnnotationView.init(viewModel:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for ScreenSharingAnnotationViewModel(0);
  result = sub_264B40E24();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t ScreenSharingAnnotationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1D8, &qword_264B4A460);
  MEMORY[0x28223BE20](v3, v4);
  v6 = (v26 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1E0, &qword_264B4A468);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1E8, &qword_264B4A470);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12, v14);
  v16 = v26 - v15;
  v18 = *v1;
  v17 = v1[1];
  *v6 = sub_264B40E64();
  v6[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1F0, &qword_264B4A478);
  sub_264A62350(v18, v17, (v6 + *(v20 + 44)));
  sub_264A62618();
  sub_264B40DF4();
  sub_264A6267C(v6);
  sub_264B40E64();
  sub_264B40C64();
  (*(v8 + 32))(v16, v11, v7);
  v21 = &v16[*(v13 + 44)];
  v22 = v26[5];
  *(v21 + 4) = v26[4];
  *(v21 + 5) = v22;
  *(v21 + 6) = v26[6];
  v23 = v26[1];
  *v21 = v26[0];
  *(v21 + 1) = v23;
  v24 = v26[3];
  *(v21 + 2) = v26[2];
  *(v21 + 3) = v24;
  LOBYTE(v17) = sub_264B40D94();
  sub_264A626E4(v16, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A200, &qword_264B4A480);
  *(a1 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_264A62350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for RipplesView(0);
  v6 = v5 - 8;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v24 - v11);
  v30 = a1;
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A218, &qword_264B4A530);
  sub_264B40E34();
  v13 = v27;
  swift_getKeyPath();
  v30 = v13;
  sub_264A62970();
  sub_264B40174();

  swift_beginAccess();
  v14 = *(v13 + 16);

  v27 = a1;
  v28 = a2;
  sub_264B40E34();
  v15 = v29;
  swift_getKeyPath();
  v27 = v15;
  sub_264B40174();

  v24 = *(v15 + 32);

  v27 = a1;
  v28 = a2;
  sub_264B40E34();
  v16 = v29;
  swift_getKeyPath();
  v27 = v16;
  sub_264B40174();

  swift_beginAccess();
  v17 = *(v16 + 24);

  *(v12 + *(v6 + 28)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A220, &qword_264B4A5E0);
  swift_storeEnumTagMultiPayload();
  *v12 = v17;
  v18 = v25;
  sub_264A62AC8(v12, v25);
  v19 = v26;
  v20 = v24;
  *v26 = v14;
  v19[1] = v20;
  v21 = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A228, &qword_264B4A5E8);
  sub_264A62AC8(v18, v21 + *(v22 + 48));

  sub_264A62B2C(v12);
  sub_264A62B2C(v18);
}

unint64_t sub_264A62618()
{
  result = qword_27FF8A1F8;
  if (!qword_27FF8A1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A1D8, &qword_264B4A460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A1F8);
  }

  return result;
}

uint64_t sub_264A6267C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1D8, &qword_264B4A460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264A626E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1E8, &qword_264B4A470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A6277C(uint64_t *a1, int a2)
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

uint64_t sub_264A627C4(uint64_t result, int a2, int a3)
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

unint64_t sub_264A62814()
{
  result = qword_27FF8A208;
  if (!qword_27FF8A208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A200, &qword_264B4A480);
    sub_264A628A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A208);
  }

  return result;
}

unint64_t sub_264A628A0()
{
  result = qword_27FF8A210;
  if (!qword_27FF8A210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A1E8, &qword_264B4A470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A1D8, &qword_264B4A460);
    sub_264A62618();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A210);
  }

  return result;
}

unint64_t sub_264A62970()
{
  result = qword_27FF88A68;
  if (!qword_27FF88A68)
  {
    type metadata accessor for ScreenSharingAnnotationViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A68);
  }

  return result;
}

uint64_t sub_264A629FC(uint64_t a1)
{
  v2 = sub_264B40C44();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_264B40C84();
}

uint64_t sub_264A62AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RipplesView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A62B2C(uint64_t a1)
{
  v2 = type metadata accessor for RipplesView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264A62B88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264B40104();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v23 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 uuid];
  if (v17)
  {
    v18 = v17;
    sub_264B400D4();

    v19 = *(v5 + 32);
    v19(v12, v9, v4);
    v19(v16, v12, v4);
    *&v16[*(v13 + 20)] = a1;
    sub_264A69288(v16, a2, type metadata accessor for RTIMessageConsumer.SessionInfo);
    return (*(v23 + 56))(a2, 0, 1, v13);
  }

  else
  {

    v21 = *(v23 + 56);

    return v21(a2, 1, 1, v13);
  }
}

uint64_t sub_264A62DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_264B400C4() & 1) == 0)
  {
    return 0;
  }

  sub_2649D8B90(0, &qword_27FF8A8C0, 0x277D82BB8);
  return sub_264B415E4() & 1;
}

uint64_t sub_264A62E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for RTIMessage(0);
  v5[7] = swift_task_alloc();
  type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A338, &qword_264B4A7D0);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8A340, &qword_264B4A7D8);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6301C, 0, 0);
}

uint64_t sub_264A6301C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788);
  sub_264B412C4();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_264A63100;
  v2 = v0[13];
  v3 = v0[14];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_264A63100()
{

  return MEMORY[0x2822009F8](sub_264A631FC, 0, 0);
}

uint64_t sub_264A631FC()
{
  v1 = v0[13];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) != 1)
  {
    sub_264A69288(v1, v0[12], type metadata accessor for RTIMessageConsumer.RTISessionAction);
    Strong = swift_weakLoadStrong();
    v0[18] = Strong;
    v3 = v0[12];
    if (Strong)
    {
      sub_264A692F0(v3, v0[11], type metadata accessor for RTIMessageConsumer.RTISessionAction);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v5 = v0[11];
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_264A69288(v5, v0[7], type metadata accessor for RTIMessage);
          v10 = swift_task_alloc();
          v0[21] = v10;
          *v10 = v0;
          v10[1] = sub_264A638A4;
          v11 = v0[7];

          return sub_264A65AA8(v11);
        }

        else
        {
          sub_264A69288(v5, v0[7], type metadata accessor for RTIMessage);
          v14 = swift_task_alloc();
          v0[22] = v14;
          *v14 = v0;
          v14[1] = sub_264A639A0;
          v15 = v0[7];

          return sub_264A66810(v15);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_264A69288(v5, v0[8], type metadata accessor for RTIMessageConsumer.SessionInfo);
        v12 = swift_task_alloc();
        v0[20] = v12;
        *v12 = v0;
        v12[1] = sub_264A637A8;
        v13 = v0[8];

        return sub_264A64CE8(v13);
      }

      else
      {
        sub_264A69288(v5, v0[8], type metadata accessor for RTIMessageConsumer.SessionInfo);
        v6 = swift_task_alloc();
        v0[19] = v6;
        *v6 = v0;
        v6[1] = sub_264A635C4;
        v7 = v0[8];

        return sub_264A63B84(v7);
      }
    }

    sub_264A691B8(v3, type metadata accessor for RTIMessageConsumer.RTISessionAction);
  }

  (*(v0[15] + 8))(v0[16], v0[14]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_264A635C4()
{

  return MEMORY[0x2822009F8](sub_264A636C0, 0, 0);
}

uint64_t sub_264A636C0()
{
  v1 = v0[8];

  sub_264A691B8(v1, type metadata accessor for RTIMessageConsumer.SessionInfo);
  sub_264A691B8(v0[12], type metadata accessor for RTIMessageConsumer.RTISessionAction);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_264A63100;
  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x2822003E8](v3, 0, 0, v4);
}

uint64_t sub_264A637A8()
{

  return MEMORY[0x2822009F8](sub_264A6B50C, 0, 0);
}

uint64_t sub_264A638A4()
{

  return MEMORY[0x2822009F8](sub_264A6B510, 0, 0);
}

uint64_t sub_264A639A0()
{

  return MEMORY[0x2822009F8](sub_264A63A9C, 0, 0);
}

uint64_t sub_264A63A9C()
{
  v1 = v0[7];

  sub_264A691B8(v1, type metadata accessor for RTIMessage);
  sub_264A691B8(v0[12], type metadata accessor for RTIMessageConsumer.RTISessionAction);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_264A63100;
  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x2822003E8](v3, 0, 0, v4);
}

uint64_t sub_264A63B84(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for RTIMessage(0);
  v2[11] = swift_task_alloc();
  v3 = sub_264B40104();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A63D2C, v1, 0);
}

uint64_t sub_264A63D2C()
{
  v56 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[8];
  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FF8AEB8);
  sub_264A692F0(v2, v1, type metadata accessor for RTIMessageConsumer.SessionInfo);
  v4 = sub_264B40944();
  v5 = sub_264B414B4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55 = v9;
    *v8 = 136315138;
    sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_264B41A64();
    v12 = v11;
    sub_264A691B8(v7, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v13 = sub_2649CC004(v10, v12, &v55);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2649C6000, v4, v5, "inputSessionDidBegin: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  else
  {

    sub_264A691B8(v7, type metadata accessor for RTIMessageConsumer.SessionInfo);
  }

  v14 = v0[18];
  v15 = v0[19];
  v16 = v0[17];
  v17 = v0[9];
  v18 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  v0[22] = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  swift_beginAccess();
  sub_264A69218(v17 + v18, v16);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    sub_2649D04D4(v0[17], &qword_27FF8A328, &qword_264B4A798);
LABEL_10:
    v19 = v0[22];
    v20 = v0[18];
    v21 = v0[19];
    v22 = v0[16];
    v23 = v0[9];
    sub_264A692F0(v0[8], v22, type metadata accessor for RTIMessageConsumer.SessionInfo);
    (*(v21 + 56))(v22, 0, 1, v20);
    swift_beginAccess();
    sub_264A6B49C(v22, v23 + v19);
    swift_endAccess();
    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    v24[1] = sub_264A6460C;
    v25 = v0[8];

    return sub_264A647DC(v25);
  }

  sub_264A69288(v0[17], v0[20], type metadata accessor for RTIMessageConsumer.SessionInfo);
  sub_264A69358(&unk_27FF89390, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  if (sub_264B40F94())
  {
    sub_264A691B8(v0[20], type metadata accessor for RTIMessageConsumer.SessionInfo);
    goto LABEL_10;
  }

  v28 = v0[14];
  v27 = v0[15];
  v29 = v0[12];
  v30 = *(v0[13] + 16);
  v30(v27, v0[20], v29);
  v30(v28, v27, v29);
  v31 = sub_264B40944();
  v32 = sub_264B41494();
  v33 = os_log_type_enabled(v31, v32);
  v35 = v0[13];
  v34 = v0[14];
  v36 = v0[12];
  if (v33)
  {
    buf = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = v54;
    *buf = 136315138;
    sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v37 = v30;
    v38 = sub_264B41A64();
    v40 = v39;
    v52 = v32;
    v43 = *(v35 + 8);
    v42 = v35 + 8;
    v41 = v43;
    v43(v34, v36);
    v44 = v38;
    v30 = v37;
    v45 = sub_2649CC004(v44, v40, &v55);

    *(buf + 4) = v45;
    _os_log_impl(&dword_2649C6000, v31, v52, "Received inputSessionDidBegin with a new sessionID while one already exists with ID: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x266749940](v54, -1, -1);
    MEMORY[0x266749940](buf, -1, -1);
  }

  else
  {

    v46 = *(v35 + 8);
    v42 = v35 + 8;
    v41 = v46;
    v46(v34, v36);
  }

  v0[23] = v42;
  v0[24] = v41;
  v47 = v0[11];
  v48 = v0[10];
  v30(v47, v0[15], v0[12]);
  v49 = v47 + *(v48 + 20);
  *v49 = xmmword_264B4A5F0;
  *(v49 + 16) = 0x1000000000000000;
  *(v49 + 24) = 1;
  v50 = swift_task_alloc();
  v0[25] = v50;
  *v50 = v0;
  v50[1] = sub_264A6438C;
  v51 = v0[11];

  return sub_264A65AA8(v51);
}

uint64_t sub_264A6438C()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_264A6449C, v1, 0);
}

uint64_t sub_264A6449C()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[15];
  v4 = v0[12];
  sub_264A691B8(v0[11], type metadata accessor for RTIMessage);
  v1(v3, v4);
  sub_264A691B8(v2, type metadata accessor for RTIMessageConsumer.SessionInfo);
  v5 = v0[22];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[9];
  sub_264A692F0(v0[8], v8, type metadata accessor for RTIMessageConsumer.SessionInfo);
  (*(v7 + 56))(v8, 0, 1, v6);
  swift_beginAccess();
  sub_264A6B49C(v8, v9 + v5);
  swift_endAccess();
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_264A6460C;
  v11 = v0[8];

  return sub_264A647DC(v11);
}

uint64_t sub_264A6460C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264A647DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for RTIMessage(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A64870, v1, 0);
}

id sub_264A64870()
{
  v23 = v0;
  v1 = [*(v0[2] + *(type metadata accessor for RTIMessageConsumer.SessionInfo(0) + 20)) currentDataPayload];
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 version];
    result = [v2 data];
    if (result)
    {
      v5 = result;
      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[2];
      v9 = sub_264B40024();
      v11 = v10;

      v12 = sub_264B40104();
      (*(*(v12 - 8) + 16))(v6, v8, v12);
      v13 = v6 + *(v7 + 20);
      *v13 = v3;
      *(v13 + 8) = v9;
      *(v13 + 16) = v11;
      *(v13 + 24) = 0;
      v14 = swift_task_alloc();
      v0[7] = v14;
      *v14 = v0;
      v14[1] = sub_264A64B54;
      v15 = v0[5];

      return sub_264A65AA8(v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FF8AEB8);
    v17 = sub_264B40944();
    v18 = sub_264B41494();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2649CC004(0xD00000000000001BLL, 0x8000000264B5D0F0, &v22);
      _os_log_impl(&dword_2649C6000, v17, v18, "%s session.currentDataPayload did not return any data payload", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    v21 = v0[1];

    return v21();
  }

  return result;
}