uint64_t sub_227851C34(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = sub_2278C6860();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  v4 = sub_2278C75A0();
  v2[49] = v4;
  v2[50] = *(v4 - 8);
  v2[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227851D50, 0, 0);
}

uint64_t sub_227851D50()
{
  v1 = *(v0 + 352);
  sub_2278C73B0();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7970();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 352);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_2277F7000, v3, v4, "Posting move mode notification: %@", v6, 0xCu);
    sub_227848BE0(v7);
    MEMORY[0x22AA9E860](v7, -1, -1);
    MEMORY[0x22AA9E860](v6, -1, -1);
  }

  v10 = *(v0 + 400);
  v9 = *(v0 + 408);
  v11 = *(v0 + 392);
  v12 = *(v0 + 352);

  (*(v10 + 8))(v9, v11);
  v13 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  *(v0 + 416) = v13;
  sub_2278519A8([v12 notificationType]);
  v14 = sub_2278C76F0();

  [v13 setCategoryIdentifier_];

  [v12 notificationType];
  sub_2278C6F10();
  v15 = sub_2278C76F0();

  [v13 setTitle_];

  [v12 notificationType];
  sub_2278C6F20();
  v16 = sub_2278C76F0();

  [v13 setBody_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2278C9F50;
  *(v0 + 320) = sub_2278C72D0();
  *(v0 + 328) = v18;
  sub_2278C7BF0();
  v19 = [v12 nextActivityMoveMode];
  v20 = MEMORY[0x277D83B88];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v19;
  *(v0 + 336) = sub_2278C72E0();
  *(v0 + 344) = v21;
  sub_2278C7BF0();
  v22 = [v12 notificationType];
  *(inited + 168) = v20;
  *(inited + 144) = v22;
  sub_2278C3BA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6150, &unk_2278CAAE0);
  swift_arrayDestroy();
  v23 = sub_2278C7640();

  [v13 setUserInfo_];

  [v12 delay];
  if (v24 <= 0.0)
  {
    v26 = 0;
  }

  else
  {
    [*(v0 + 352) delay];
    v26 = [objc_opt_self() triggerWithTimeInterval:0 repeats:v25];
  }

  *(v0 + 424) = v26;
  v28 = *(v0 + 376);
  v27 = *(v0 + 384);
  v29 = *(v0 + 360);
  v30 = *(v0 + 368);
  sub_2278C6850();
  sub_2278C6840();
  (*(v28 + 8))(v27, v30);
  v31 = v26;
  v32 = v13;
  v33 = sub_2278C76F0();

  v34 = [objc_opt_self() requestWithIdentifier:v33 content:v32 trigger:v31];
  *(v0 + 432) = v34;

  v35 = *__swift_project_boxed_opaque_existential_1(v29, v29[3]);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_22785227C;
  v36 = swift_continuation_init();
  *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  *(v0 + 256) = MEMORY[0x277D85DD0];
  *(v0 + 264) = 1107296256;
  *(v0 + 272) = sub_227822B84;
  *(v0 + 280) = &block_descriptor_9;
  *(v0 + 288) = v36;
  [v35 addNotificationRequest:v34 withCompletionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22785227C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_227852418;
  }

  else
  {
    v2 = sub_22785238C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22785238C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 416);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227852418(uint64_t a1)
{
  v2 = v1[54];
  v4 = v1[52];
  v3 = v1[53];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  return sub_227802850(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2278524E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_227852530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227852588()
{
  v1 = [*v0 transportData];
  v2 = sub_2278C6670();

  return v2;
}

void sub_2278525E8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2278C6660();
    sub_22785267C(a1, a2);
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTransportData_];

  *a3 = v7;
}

uint64_t sub_22785267C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2278372D4(result, a2);
  }

  return result;
}

uint64_t sub_227852690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278003CC;

  return v9(a1, a2, a3);
}

uint64_t sub_2278527B8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22781659C;

  return v7(a1, a2);
}

void sub_2278528F4(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_2278C7790();
  [v2 removeDeliveredNotificationsWithIdentifiers_];
}

uint64_t sub_227852954(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_227852A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278004C0;

  return v9(a1, a2, a3);
}

uint64_t sub_227852B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278004C0;

  return v9(a1, a2, a3);
}

uint64_t sub_227852CC4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22781659C;

  return v7(a1, a2);
}

uint64_t sub_227852DDC()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_17;
    }

    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v2)
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x22AA9DBF0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_17:
            v2 = sub_2278C7B80();
            goto LABEL_4;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        [*(v0 + 192) removeObserver_];
        swift_unknownObjectRelease();
        ++v3;
      }

      while (v5 != v2);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227852F08()
{
  sub_227852DDC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227852F58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v4 = sub_2278C6820();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  v40 = *(v2 + 200);
  v23 = [v40 isGoodMorningAlertNotificationEnabled];
  v38 = a1;
  v36 = v7;
  if (v23)
  {
    sub_227853388(v22);
  }

  else
  {
    (*(v5 + 56))(v22, 1, 1, v4);
  }

  sub_2278102C8(v22, v17);
  v24 = *(v5 + 48);
  if (v24(v17, 1, v4) == 1)
  {
    v25 = [v40 lastAlarmWakeUpDate];
    if (v25)
    {
      v26 = v25;
      sub_2278C6800();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v37 = *(v5 + 56);
    v37(v14, v27, 1, v4);
    sub_227854DEC(v14, v20);
    if (v24(v17, 1, v4) != 1)
    {
      sub_22783F30C(v17);
    }
  }

  else
  {
    (*(v5 + 32))(v20, v17, v4);
    v37 = *(v5 + 56);
    v37(v20, 0, 1, v4);
  }

  sub_2278102C8(v20, v11);
  if (v24(v11, 1, v4) == 1)
  {
    sub_22783F30C(v11);
    v29 = v38;
    v28 = v39;
  }

  else
  {
    v30 = *(v5 + 32);
    v31 = v36;
    v30(v36, v11, v4);
    v29 = v38;
    if (sub_2278C6700())
    {
      sub_22783F30C(v20);
      sub_22783F30C(v22);
      v28 = v39;
      v30(v39, v31, v4);
      goto LABEL_18;
    }

    (*(v5 + 8))(v31, v4);
    v28 = v39;
  }

  v32 = [v40 isUserAwake];
  sub_22783F30C(v20);
  sub_22783F30C(v22);
  if (!v32)
  {
    v33 = 1;
    return (v37)(v28, v33, 1, v4);
  }

  (*(v5 + 16))(v28, v29, v4);
LABEL_18:
  v33 = 0;
  return (v37)(v28, v33, 1, v4);
}

uint64_t sub_227853388@<X0>(char *a2@<X8>)
{
  v4 = sub_2278C6820();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = [*(v2 + 200) lastGoodMorningDismissedDate];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11;
  sub_2278C6800();

  v13 = *(v5 + 32);
  v13(v10, v8, v4);
  if ((sub_2278C6740() & 1) == 0)
  {
    (*(v5 + 8))(v10, v4);
LABEL_5:
    v14 = 1;
    return (*(v5 + 56))(a2, v14, 1, v4);
  }

  v13(a2, v10, v4);
  v14 = 0;
  return (*(v5 + 56))(a2, v14, 1, v4);
}

uint64_t sub_227853550()
{
  v1 = v0[8];
  if (!*(v1 + 208))
  {
    v18 = *(v1 + 192);
    v2 = v0[8];
    if (qword_2813BB670 != -1)
    {
      swift_once();
      v2 = v0[8];
    }

    v3 = qword_2813BC3B0;
    v4 = objc_opt_self();
    v5 = [v4 mainQueue];
    v0[6] = sub_227854E5C;
    v0[7] = v2;
    v6 = MEMORY[0x277D85DD0];
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_227872968;
    v0[5] = &block_descriptor_10;
    v7 = _Block_copy(v0 + 2);

    v8 = [v18 addObserverForName:v3 object:0 queue:v5 usingBlock:v7];
    _Block_release(v7);

    if (qword_2813BB680 != -1)
    {
      swift_once();
    }

    v9 = v0[8];
    v10 = qword_2813BC3B8;
    v11 = [v4 mainQueue];
    v0[6] = sub_227854EAC;
    v0[7] = v9;
    v0[2] = v6;
    v0[3] = 1107296256;
    v0[4] = sub_227872968;
    v0[5] = &block_descriptor_17;
    v12 = _Block_copy(aBlock);

    v13 = [v18 addObserverForName:v10 object:0 queue:v11 usingBlock:v12];
    _Block_release(v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2278C9970;
    *(v14 + 32) = v8;
    *(v14 + 40) = v13;
    *(v1 + 208) = v14;
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_227853820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_227853840, 0, 0);
}

uint64_t sub_227853840()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_227853904, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_227853904()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 192);
  if (qword_2813BB688 != -1)
  {
    v3 = *(v1 + 192);
    swift_once();
    v2 = v3;
    v1 = *(v0 + 56);
  }

  [v2 postNotificationName:qword_2813BC3C0 object:v1];

  return MEMORY[0x2822009F8](sub_227855054, 0, 0);
}

uint64_t sub_2278539CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_2278C7840();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_22788AE20(0, 0, v7, a4, v10);
}

uint64_t sub_227853AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_227853B0C, 0, 0);
}

uint64_t sub_227853B0C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_227853BD0, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_227853BD0()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 192);
  if (qword_2813BB688 != -1)
  {
    v3 = *(v1 + 192);
    swift_once();
    v2 = v3;
    v1 = *(v0 + 56);
  }

  [v2 postNotificationName:qword_2813BC3C0 object:v1];

  return MEMORY[0x2822009F8](sub_227800230, 0, 0);
}

uint64_t sub_227853C98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = sub_2278C6820();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227853D9C, v1, 0);
}

uint64_t sub_227853D9C()
{
  v1 = [*(v0[3] + 200) sleepUserDay];
  if (!v1)
  {
    (*(v0[7] + 56))(v0[5], 1, 1, v0[6]);
LABEL_7:
    v9 = v0[3];
    sub_22783F30C(v0[5]);
    __swift_project_boxed_opaque_existential_1((v9 + 152), *(v9 + 176));
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_227853FD8;
    v11 = v0[2];

    return sub_22783E9F8(v11);
  }

  v2 = v1;
  v3 = [v1 startOfDay];

  if (v3)
  {
    sub_2278C6800();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  (*(v6 + 56))(v8, v4, 1, v5);
  sub_227854DEC(v8, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    goto LABEL_7;
  }

  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[6];
  v16 = v0[2];
  (*(v14 + 32))(v13, v0[5], v15);
  sub_227852F58(v13, v16);
  (*(v14 + 8))(v13, v15);

  v17 = v0[1];

  return v17();
}

uint64_t sub_227853FD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227854128(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278541C4, v1, 0);
}

uint64_t sub_2278541C4()
{
  v1 = [*(v0[3] + 200) sleepUserDay];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 endOfDay];

    if (v3)
    {
      sub_2278C6800();

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    v7 = v0[4];
    v8 = v0[2];
    v9 = sub_2278C6820();
    (*(*(v9 - 8) + 56))(v7, v4, 1, v9);
    sub_227854DEC(v7, v8);
  }

  else
  {
    v5 = v0[2];
    v6 = sub_2278C6820();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_227854324()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2278C6920();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_2278C6910();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = sub_2278C6820();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278545A8, v0, 0);
}

uint64_t sub_2278545A8()
{
  v89 = v0;
  v1 = *(v0[2] + 200);
  v2 = [v1 sleepUserDay];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 startOfDay];

    if (v4)
    {
      sub_2278C6800();

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = v0[18];
    v7 = v0[19];
    v9 = v0[16];
    v8 = v0[17];
    v10 = *(v7 + 56);
    v10(v9, v5, 1, v6);
    sub_227854DEC(v9, v8);
    v11 = *(v7 + 48);
    if (v11(v8, 1, v6) == 1)
    {
      goto LABEL_7;
    }

    v15 = *(v0[19] + 32);
    v15(v0[25], v0[17], v0[18]);
    if (![v1 isGoodMorningAlertNotificationEnabled])
    {
      (*(v0[19] + 8))(v0[25], v0[18]);
      goto LABEL_9;
    }

    v16 = [v1 lastGoodMorningDismissedDate];
    if (v16)
    {
      v17 = v16;
      sub_2278C6800();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = v0[18];
    v21 = v0[14];
    v20 = v0[15];
    v10(v21, v18, 1, v19);
    sub_227854DEC(v21, v20);
    if (v11(v20, 1, v19) != 1)
    {
      v30 = v0[18];
      v31 = v0[13];
      sub_2278102C8(v0[15], v31);
      v32 = v11(v31, 1, v30);
      v33 = v0[18];
      v34 = v0[19];
      v35 = v0[13];
      if (v32 == 1)
      {
        (*(v34 + 8))(v0[25], v0[18]);
        v29 = v35;
LABEL_23:
        sub_22783F30C(v29);
        v12 = v0[15];
        goto LABEL_8;
      }

      v70 = sub_2278C6770();
      v71 = *(v34 + 8);
      v71(v35, v33);
      if ((v70 & 1) == 0)
      {
        v71(v0[25], v0[18]);
        v12 = v0[15];
        goto LABEL_8;
      }
    }

    v22 = v0[24];
    v81 = v15;
    v83 = v0[25];
    v86 = v0[18];
    v23 = v0[12];
    __swift_project_boxed_opaque_existential_1((v0[2] + 112), *(v0[2] + 136));
    v24 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v24(v22);
    sub_227852F58(v83, v23);
    if (v11(v23, 1, v86) != 1)
    {
      v36 = v0[22];
      v37 = v0[18];
      v87 = v0[19];
      v38 = v0[11];
      v40 = v0[9];
      v39 = v0[10];
      v42 = v0[7];
      v41 = v0[8];
      v79 = v0[6];
      v81(v0[23], v0[12], v37);
      (*(v39 + 104))(v38, *MEMORY[0x277CC99A0], v40);
      sub_2278C6900();
      sub_2278C6750();
      (*(v42 + 8))(v41, v79);
      (*(v39 + 8))(v38, v40);
      v43 = sub_2278C6740();
      v44 = *(v87 + 8);
      v44(v36, v37);
      if (v43)
      {
        v45 = v0[23];
        v46 = v0[24];
        v48 = v0[20];
        v47 = v0[21];
        v49 = v0[18];
        v50 = v0[19];
        sub_2278C73A0();
        v51 = *(v50 + 16);
        v51(v47, v45, v49);
        v51(v48, v46, v49);
        v52 = sub_2278C7590();
        v80 = sub_2278C7970();
        v53 = os_log_type_enabled(v52, v80);
        v55 = v0[24];
        v54 = v0[25];
        v56 = v0[23];
        v58 = v0[20];
        v57 = v0[21];
        v59 = v0[18];
        v60 = v0[4];
        v82 = v0[3];
        v84 = v0[5];
        if (v53)
        {
          log = v52;
          v61 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v88 = v76;
          *v61 = 136315394;
          sub_22784A014();
          v77 = v56;
          v78 = v54;
          v62 = sub_2278C7DA0();
          v64 = v63;
          v44(v57, v59);
          v65 = sub_2278021B4(v62, v64, &v88);

          *(v61 + 4) = v65;
          *(v61 + 12) = 2080;
          v66 = sub_2278C7DA0();
          v68 = v67;
          v44(v58, v59);
          v69 = sub_2278021B4(v66, v68, &v88);

          *(v61 + 14) = v69;
          _os_log_impl(&dword_2277F7000, log, v80, "Sleep wake up date is within good morning screen time range: %s, now: %s", v61, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA9E860](v76, -1, -1);
          MEMORY[0x22AA9E860](v61, -1, -1);

          (*(v60 + 8))(v84, v82);
          v44(v77, v59);
          v44(v55, v59);
          v44(v78, v59);
        }

        else
        {

          v44(v58, v59);
          v44(v57, v59);
          (*(v60 + 8))(v84, v82);
          v44(v56, v59);
          v44(v55, v59);
          v44(v54, v59);
        }

        sub_22783F30C(v0[15]);
        v85 = 1;
        goto LABEL_10;
      }

      v72 = v0[24];
      v73 = v0[25];
      v74 = v0[18];
      v44(v0[23], v74);
      v44(v72, v74);
      v44(v73, v74);
      v12 = v0[15];
      goto LABEL_8;
    }

    v25 = v0[25];
    v26 = v0[18];
    v27 = v0[12];
    v28 = *(v0[19] + 8);
    v28(v0[24], v26);
    v28(v25, v26);
    v29 = v27;
    goto LABEL_23;
  }

  (*(v0[19] + 56))(v0[17], 1, 1, v0[18]);
LABEL_7:
  v12 = v0[17];
LABEL_8:
  sub_22783F30C(v12);
LABEL_9:
  v85 = 0;
LABEL_10:

  v13 = v0[1];

  return v13(v85);
}

uint64_t sub_227854DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
}

{
}

uint64_t sub_227854EE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return sub_227853AEC(a1, v4, v5, v6);
}

uint64_t sub_227854F98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_227853820(a1, v4, v5, v6);
}

uint64_t type metadata accessor for FirstPickupDateValidator(uint64_t a1)
{
  result = qword_2813BA570;
  if (!qword_2813BA570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2278550E0(uint64_t a1)
{
  sub_227855164(319);
  if (v1 <= 0x3F)
  {
    sub_2278551D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227855164(uint64_t a1)
{
  if (!qword_2813BC108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7D6140, &qword_2278CC4D0);
    sub_22782326C();
    v1 = sub_2278C6E10();
    if (!v2)
    {
      atomic_store(v1, &qword_2813BC108);
    }
  }
}

unint64_t sub_2278551D4()
{
  result = qword_2813BB9E8[0];
  if (!qword_2813BB9E8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813BB9E8);
  }

  return result;
}

uint64_t sub_227855238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v27 = sub_2278C65D0();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2278C6920();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2278C6820();
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v2 + *(type metadata accessor for FirstPickupDateValidator(0) + 24));
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v12 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v12(v10);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_227804920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6580, qword_2278CC500);
  v13 = sub_2278C6910();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2278C9F60;
  v18 = *(v14 + 104);
  v18(v17 + v16, *MEMORY[0x277CC9988], v13);
  v18(v17 + v16 + v15, *MEMORY[0x277CC9998], v13);
  v18(v17 + v16 + 2 * v15, *MEMORY[0x277CC9968], v13);
  v18(v17 + v16 + 3 * v15, *MEMORY[0x277CC9980], v13);
  sub_22788562C(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2278C68A0();

  sub_2278C65C0();
  sub_2278C68D0();
  (*(v24 + 8))(v4, v27);
  (*(v22 + 8))(v7, v23);
  return (*(v20 + 8))(v10, v21);
}

uint64_t sub_227855624(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6328, &qword_2278CC4E8);
  v2 = MEMORY[0x28223BE20](v42);
  v41 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v40 = v37 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6330, &unk_2278CC4F0);
  MEMORY[0x28223BE20](v39);
  v43 = v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v37 - v10;
  v12 = sub_2278C6820();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v44 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v37 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6138, &unk_2278CC4A0);
  sub_2278C6E00();
  if (v46)
  {
    v18 = 5;
  }

  else
  {
    v18 = v45;
  }

  sub_227855238(v18, v11);
  v19 = v13;
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    sub_227802FC4(v11, &qword_27D7D60A8, qword_2278C9730);
LABEL_13:
    v27 = 0;
    return v27 & 1;
  }

  v37[2] = a1;
  v38 = *(v13 + 32);
  v38(v17, v11, v12);
  type metadata accessor for FirstPickupDateValidator(0);
  sub_2278C6E00();
  if (v46)
  {
    v21 = 13;
  }

  else
  {
    v21 = v45;
  }

  sub_227855238(v21, v9);
  if (v20(v9, 1, v12) == 1)
  {
    (*(v13 + 8))(v17, v12);
    sub_227802FC4(v9, &qword_27D7D60A8, qword_2278C9730);
    goto LABEL_13;
  }

  v22 = v44;
  v23 = v38;
  v38(v44, v9, v12);
  v24 = sub_227855B98();
  v25 = v17;
  if (sub_2278C76B0())
  {
    v26 = *(v19 + 8);
    v26(v22, v12);
    v26(v17, v12);
    goto LABEL_13;
  }

  v37[1] = v24;
  result = sub_2278C76D0();
  if (result)
  {
    v29 = v19;
    v30 = *(v19 + 16);
    v31 = v40;
    v37[0] = v25;
    v30(v40, v25, v12);
    v32 = v42;
    v30((v31 + *(v42 + 48)), v22, v12);
    v33 = v41;
    sub_227855BF0(v31, v41);
    v34 = *(v32 + 48);
    v35 = v43;
    v23(v43, v33, v12);
    v36 = *(v29 + 8);
    v36(v33 + v34, v12);
    sub_227855C60(v31, v33);
    v23((v35 + *(v39 + 36)), v33 + *(v32 + 48), v12);
    v36(v33, v12);
    if (sub_2278C76C0())
    {
      v27 = sub_2278C76D0();
    }

    else
    {
      v27 = 0;
    }

    sub_227802FC4(v35, &qword_27D7D6330, &unk_2278CC4F0);
    v36(v44, v12);
    v36(v37[0], v12);
    return v27 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_227855B98()
{
  result = qword_2813BC160;
  if (!qword_2813BC160)
  {
    sub_2278C6820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC160);
  }

  return result;
}

uint64_t sub_227855BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6328, &qword_2278CC4E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227855C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6328, &qword_2278CC4E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227855CD0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_227855E0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_227855E2C, 0, 0);
}

uint64_t sub_227855E2C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_227855F5C, Strong, 0);
  }

  else
  {
    v2 = sub_2278C6E50();
    sub_22781D014();
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D098A8], v2);
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_227855F5C()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0[12] + 112), *(v0[12] + 136));
  v0[5] = &type metadata for WalkSuggestionService;
  v0[6] = &off_283AEC0F8;
  v2 = swift_allocObject();
  v0[2] = v2;
  sub_2278040AC(v1, v2 + 16);
  sub_2278040AC((v1 + 5), v2 + 56);
  v3 = v1[10];
  *(v2 + 96) = v3;
  __swift_project_boxed_opaque_existential_1(v0 + 2, &type metadata for WalkSuggestionService);
  v4 = v3;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_227856078;

  return sub_227862938();
}

uint64_t sub_227856078(uint64_t a1, char a2)
{
  v6 = *v3;
  *(v6 + 112) = v2;

  v7 = *(v6 + 96);
  if (v2)
  {
    v8 = sub_2278562A8;
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 120) = a1;
    v8 = sub_2278561BC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2278561BC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_227856224, 0, 0);
}

uint64_t sub_227856224()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);

  *v3 = v1;
  *(v3 + 8) = v2 & 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2278562A8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_227856310, 0, 0);
}

uint64_t sub_227856310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227856374()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_227856394, v2, 0);
}

uint64_t sub_227856394()
{
  v1 = v0[2];
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v4 = swift_allocObject();
  v0[3] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_227824318;
  v6 = MEMORY[0x277D098C0];
  v7 = MEMORY[0x277D098B8];

  return MEMORY[0x2821603E0](3, &unk_2278CC5C0, v4, v2, v6, v3, v7);
}

uint64_t sub_2278564AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_227855E0C(a1, v1);
}

uint64_t sub_227856548(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_227856660(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2278C75A0();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227856720, v1, 0);
}

uint64_t sub_227856720(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v5 = v1[8];
  v4 = v1[9];
  sub_2278C7350();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_1((v5 + 112), *(v5 + 136));
  sub_22784A70C(v1 + 2);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_2278268AC;
  v7 = v1[7];

  return sub_227827594(v7);
}

uint64_t sub_2278568BC()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785697C, v0, 0);
}

uint64_t sub_22785697C(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_2278C7350();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  v6 = v5[22];
  v7 = v5[23];
  __swift_project_boxed_opaque_existential_1(v5 + 19, v6);
  v8 = swift_allocObject();
  v1[6] = v8;
  swift_weakInit();
  v9 = swift_task_alloc();
  v1[7] = v9;
  v10 = sub_227856CA0();
  *v9 = v1;
  v9[1] = sub_227826238;
  v11 = MEMORY[0x277D09B68];

  return MEMORY[0x2821603D0](5, &unk_2278CC688, v8, v6, v10, v7, v11);
}

uint64_t sub_227856AF4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_227856B18, 0, 0);
}

uint64_t sub_227856B18()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_227824038;
    v3 = v0[6];

    return sub_227856660(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227856C08(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_227856AF4(a1, v1);
}

unint64_t sub_227856CA0()
{
  result = qword_2813B9AF0;
  if (!qword_2813B9AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9AF0);
  }

  return result;
}

uint64_t sub_227856CFC()
{
  v1 = *v0;
  sub_2278C7E60();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x22AA9DDE0](v2);
  return sub_2278C7E90();
}

uint64_t sub_227856D4C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x22AA9DDE0](v1);
}

uint64_t sub_227856D84(uint64_t a1)
{
  v2 = *v1;
  sub_2278C7E60();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x22AA9DDE0](v3);
  return sub_2278C7E90();
}

void *sub_227856DD0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_227856DF0(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t sub_227856E0C()
{
  result = qword_27D7D6338;
  if (!qword_27D7D6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6338);
  }

  return result;
}

unint64_t sub_227856E74()
{
  result = qword_27D7D6340;
  if (!qword_27D7D6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6340);
  }

  return result;
}

id sub_227856EEC()
{
  v0 = *MEMORY[0x277D09C10];
  sub_2278C78A0();
  v2 = [objc_allocWithZone(MEMORY[0x277D09C68]) initWithEventIdentifier:v0 interval:v1];

  sub_2278C78A0();
  v4 = v3 * 6.0;
  sub_2278C78A0();
  v6 = [objc_allocWithZone(MEMORY[0x277D09D08]) initWithMinimumDayDuration:v4 secondsBeforeEndOfDay:v5];
  v7 = *MEMORY[0x277D09C08];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2278CC820;
  *(v8 + 32) = v2;
  v9 = objc_allocWithZone(MEMORY[0x277D09C50]);
  sub_227839268(0, &qword_2813B9B28, 0x277D09C68);
  v10 = v7;
  v11 = v2;
  v12 = sub_2278C7790();

  v13 = [v9 initWithIdentifier:v10 minimumPercentageComplete:v12 goalBufferPercentage:v6 coalescingRules:1 timeOfDayRule:0.95 goalType:0.0];

  return v13;
}

id sub_227857078(uint64_t a1)
{
  sub_2278C78A0();
  v2 = [objc_allocWithZone(MEMORY[0x277D09CF8]) initWithMinimumDayDuration:v1 * 8.0 percentOfDay:0.25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2278CC820;
  *(v3 + 32) = sub_2278C7910();
  v4 = *MEMORY[0x277D09C18];
  v5 = objc_allocWithZone(MEMORY[0x277D09C60]);
  sub_227839268(0, &qword_2813B9A80, 0x277CCABB0);
  v6 = v4;
  v7 = sub_2278C7790();

  v8 = [v5 initWithIdentifier:v6 minimumAheadPercentage:v2 minimumBehindPercentage:v7 percentageOfDayRule:0.25 allowedGoalTypes:0.25];

  return v8;
}

id sub_2278571A8()
{
  v0 = *MEMORY[0x277D09C08];
  sub_2278C78A0();
  v2 = [objc_allocWithZone(MEMORY[0x277D09C68]) initWithEventIdentifier:v0 interval:v1];

  sub_2278C78A0();
  v4 = [objc_allocWithZone(MEMORY[0x277D09CF8]) initWithMinimumDayDuration:v3 * 8.0 percentOfDay:0.75];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2278CC820;
  *(v5 + 32) = sub_2278C7910();
  v6 = *MEMORY[0x277D09C10];
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2278CC820;
  *(v7 + 32) = v2;
  v8 = objc_allocWithZone(MEMORY[0x277D09C70]);
  sub_227839268(0, &qword_2813B9B28, 0x277D09C68);
  v9 = v6;
  v10 = v2;
  v11 = sub_2278C7790();

  sub_227839268(0, &qword_2813B9A80, 0x277CCABB0);
  v12 = sub_2278C7790();

  v13 = [v8 initWithIdentifier:v9 goalBufferPercentage:v11 coalescingRules:v4 percentageOfDayRule:v12 allowedGoalTypes:0.1];

  return v13;
}

id sub_227857398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2278C6820();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  sub_2278102C8(a2, &v21 - v10);
  (*(v6 + 16))(v8, a3, v5);
  v12 = sub_227856EEC();
  v13 = sub_227857078(v12);
  v14 = sub_2278571A8();
  v15 = sub_2278C67D0();
  v16 = 0;
  if ((*(v6 + 48))(v11, 1, v5) != 1)
  {
    v16 = sub_2278C67D0();
    (*(v6 + 8))(v11, v5);
  }

  v17 = objc_allocWithZone(MEMORY[0x277D09CB0]);
  v18 = sub_2278C67D0();
  v19 = [v17 initWithMinimumNumberOfActiveDays:7 userStartOfDay:v15 userEndOfDay:v16 expirationDate:v18 almostThereConfiguration:v12 atypicalDayConfiguration:v13 completionOffTrackConfiguration:v14];

  (*(v6 + 8))(v8, v5);
  return v19;
}

uint64_t sub_2278575CC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_2278576E4()
{
  v1 = *(v0 + 368);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_17;
    }

    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v2)
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x22AA9DBF0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_17:
            v2 = sub_2278C7B80();
            goto LABEL_4;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        [*(v0 + 240) removeObserver_];
        swift_unknownObjectRelease();
        ++v3;
      }

      while (v5 != v2);
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0((v0 + 200));

  __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));

  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227857838()
{
  sub_2278576E4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227857888()
{
  v1[2] = v0;
  v2 = sub_2278C6920();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_2278C6820();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = sub_2278C75A0();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227857A98, v0, 0);
}

uint64_t sub_227857A98(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[2];
  sub_2278C7350();
  sub_2278C7580();
  v6 = *(v4 + 8);
  v1[21] = v6;
  v1[22] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  if ([*(v5 + 112) fitnessAppInstalled])
  {
    v7 = *__swift_project_boxed_opaque_existential_1((v1[2] + 200), *(v1[2] + 224));

    return MEMORY[0x2822009F8](sub_227857D00, v7, 0);
  }

  else
  {
    sub_2278C7340();
    v8 = sub_2278C7590();
    v9 = sub_2278C7970();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v1[15];
    v12 = v1[13];
    if (v10)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2277F7000, v8, v9, "Not registering goal progress configuration, fitness app not installed", v13, 2u);
      MEMORY[0x22AA9E860](v13, -1, -1);
    }

    v6(v11, v12);

    v14 = v1[1];

    return v14();
  }
}

uint64_t sub_227857D00()
{
  v1 = [objc_opt_self() sharedBehavior];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 16);
    v6 = [v1 fitnessMode];

    *(v0 + 248) = sub_22786233C(v6);
    v1 = sub_227857DB8;
    v2 = v5;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227857DB8(uint64_t a1)
{
  if (*(v1 + 248) == 1)
  {
    if (sub_22785ACAC())
    {
      __swift_project_boxed_opaque_existential_1((*(v1 + 16) + 248), *(*(v1 + 16) + 272));
      v2 = swift_task_alloc();
      *(v1 + 184) = v2;
      *v2 = v1;
      v2[1] = sub_227858054;

      return sub_227817030(0xD000000000000015, 0x80000002278CFAA0);
    }

    sub_2278C7340();
    v4 = sub_2278C7590();
    v5 = sub_2278C7970();
    v12 = os_log_type_enabled(v4, v5);
    v7 = *(v1 + 168);
    v8 = *(v1 + 136);
    v9 = *(v1 + 104);
    if (v12)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Not registering goal progress configuration, fitness tracking is disabled";
      goto LABEL_10;
    }
  }

  else
  {
    sub_2278C7350();
    v4 = sub_2278C7590();
    v5 = sub_2278C7970();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v1 + 168);
    v8 = *(v1 + 128);
    v9 = *(v1 + 104);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Not registering goal progress configuration, device paired";
LABEL_10:
      _os_log_impl(&dword_2277F7000, v4, v5, v11, v10, 2u);
      MEMORY[0x22AA9E860](v10, -1, -1);
    }
  }

  v7(v8, v9);

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_227858054(unsigned __int8 a1)
{
  v3 = a1;
  v4 = *v1;

  if (v3 == 2 || (a1 & 1) != 0)
  {
    v5 = *(v4 + 16);
    v6 = sub_227858184;
  }

  else
  {
    v5 = *(v4 + 16);
    v6 = sub_227858BA8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227858184()
{
  __swift_project_boxed_opaque_existential_1((v0[2] + 376), *(v0[2] + 400));
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_22785822C;
  v2 = v0[7];

  return sub_227853C98(v2);
}

uint64_t sub_22785822C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22785833C, v1, 0);
}

uint64_t sub_22785833C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_227802FC4(v3, &qword_27D7D60A8, qword_2278C9730);
LABEL_8:

    v16 = v0[1];

    return v16();
  }

  v4 = v0[11];
  v5 = v0[2];
  (*(v2 + 32))(v0[12], v3, v1);
  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  v6 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v6(v4);
  v7 = sub_2278C6710();
  v8 = *(v2 + 8);
  v0[25] = v8;
  v0[26] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v1);
  if ((v7 & 1) == 0)
  {
    v8(v0[12], v0[8]);
    goto LABEL_8;
  }

  v9 = v0[11];
  v18 = v0[8];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];
  v17 = v0[3];
  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  v6(v9);
  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  sub_227804920();
  sub_2278C6760();
  (*(v10 + 8))(v11, v17);
  v8(v9, v18);
  __swift_project_boxed_opaque_existential_1((v12 + 376), *(v12 + 400));
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_22785865C;
  v14 = v0[6];

  return sub_227854128(v14);
}

uint64_t sub_22785865C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22785876C, v1, 0);
}

uint64_t sub_22785876C()
{
  v1 = sub_227857398(v0[12], v0[6], v0[10]);
  v0[28] = v1;
  sub_2278C7350();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7970();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_2277F7000, v3, v4, "Registering goal progress configuration %@", v5, 0xCu);
    sub_227802FC4(v6, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v6, -1, -1);
    MEMORY[0x22AA9E860](v5, -1, -1);
  }

  v8 = v0[21];
  v9 = v0[19];
  v10 = v0[13];
  v11 = v0[2];

  v8(v9, v10);
  v12 = v11[44];
  v13 = v11[45];
  __swift_project_boxed_opaque_existential_1(v11 + 41, v12);
  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  v14[1] = sub_227858938;

  return MEMORY[0x282160528](v2, v12, v13);
}

uint64_t sub_227858938()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_227858D30;
  }

  else
  {
    v4 = sub_227858A64;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227858A64()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);

  sub_227802FC4(v5, &qword_27D7D60A8, qword_2278C9730);
  v1(v3, v4);
  v1(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_227858BA8(uint64_t a1)
{
  sub_2278C7350();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[21];
  v6 = v1[18];
  v7 = v1[13];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "Not registering goal progress configuration, notifications are disabled in settings", v8, 2u);
    MEMORY[0x22AA9E860](v8, -1, -1);
  }

  v5(v6, v7);

  v9 = v1[1];

  return v9();
}

uint64_t sub_227858D30()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);

  sub_227802FC4(v5, &qword_27D7D60A8, qword_2278C9730);
  v1(v3, v4);
  v1(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_227858E84()
{
  v1[20] = v0;
  v2 = sub_2278C75A0();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227858F44, v0, 0);
}

uint64_t sub_227858F44(uint64_t a1)
{
  v2 = v1[20];
  if (!*(v2 + 368))
  {
    v4 = v1[22];
    v3 = v1[23];
    v5 = v1[21];
    sub_2278C7350();
    sub_2278C7580();
    (*(v4 + 8))(v3, v5);
    v27 = v2;
    v6 = *(v2 + 240);
    if (qword_2813BB688 != -1)
    {
      swift_once();
    }

    v7 = v1[20];
    v8 = qword_2813BC3C0;
    v9 = objc_opt_self();
    v10 = [v9 mainQueue];
    v1[6] = sub_22785A788;
    v1[7] = v7;
    v1[2] = MEMORY[0x277D85DD0];
    v1[3] = 1107296256;
    v1[4] = sub_227872968;
    v1[5] = &block_descriptor_11;
    v11 = _Block_copy(v1 + 2);

    v25 = [v6 addObserverForName:v8 object:0 queue:v10 usingBlock:v11];
    _Block_release(v11);

    if (qword_2813BC018 != -1)
    {
      swift_once();
    }

    v12 = v1[20];
    v13 = qword_2813BC3C8;
    v14 = [v9 mainQueue];
    v1[12] = sub_22785A7D8;
    v1[13] = v12;
    v1[8] = MEMORY[0x277D85DD0];
    v1[9] = 1107296256;
    v1[10] = sub_227872968;
    v1[11] = &block_descriptor_13;
    v15 = _Block_copy(v1 + 8);

    v16 = [v6 addObserverForName:v13 object:0 queue:v14 usingBlock:v15];
    _Block_release(v15);

    if (qword_2813BB020 != -1)
    {
      swift_once();
    }

    v17 = v1[20];
    v18 = qword_2813BC398;
    v19 = [v9 mainQueue];
    v1[18] = sub_22785A810;
    v1[19] = v17;
    v1[14] = MEMORY[0x277D85DD0];
    v1[15] = 1107296256;
    v1[16] = sub_227872968;
    v1[17] = &block_descriptor_16;
    v20 = _Block_copy(v1 + 14);

    v21 = [v6 addObserverForName:v18 object:0 queue:v19 usingBlock:v20];
    _Block_release(v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2278CC8C0;
    *(v22 + 32) = v26;
    *(v22 + 40) = v16;
    *(v22 + 48) = v21;
    *(v27 + 368) = v22;
  }

  v23 = v1[1];

  return v23();
}

uint64_t sub_227859390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2278C75A0();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227859450, 0, 0);
}

uint64_t sub_227859450()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_227859540;

    return sub_227857888();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_227859540()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227859684, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227859684()
{
  v20 = v0;
  v1 = *(v0 + 120);

  sub_2278C7350();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7950();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 88);
    v18 = *(v0 + 96);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA9DD80](*(v0 + 48), *(v0 + 56));
    v12 = sub_2278021B4(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2277F7000, v3, v4, "Error handling a user day update: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9E860](v9, -1, -1);
    MEMORY[0x22AA9E860](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_227859860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_2278C75A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7350();
  sub_2278C7580();
  (*(v9 + 8))(v11, v8);
  v12 = sub_2278C7840();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  sub_22788B134(0, 0, v7, a4, v14);
}

uint64_t sub_227859A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2278C75A0();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227859B14, 0, 0);
}

uint64_t sub_227859B14()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_227859C04;

    return sub_227857888();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_227859C04()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227859D48, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227859D48()
{
  v20 = v0;
  v1 = *(v0 + 120);

  sub_2278C7350();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7950();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 88);
    v18 = *(v0 + 96);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA9DD80](*(v0 + 48), *(v0 + 56));
    v12 = sub_2278021B4(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2277F7000, v3, v4, "Error handling fitness mode change: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9E860](v9, -1, -1);
    MEMORY[0x22AA9E860](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_227859F24(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-4] - v3;
  v5 = sub_2278C75A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-4] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7350();
  sub_2278C7580();
  (*(v6 + 8))(v8, v5);
  v9 = sub_2278C6560();
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  strcpy(v21, "XPCStreamName");
  v21[7] = -4864;
  sub_2278C7BF0();
  if (!*(v10 + 16) || (v11 = sub_2278AE394(v22), (v12 & 1) == 0))
  {

    sub_227815D88(v22);
LABEL_12:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_13;
  }

  sub_227802850(*(v10 + 56) + 32 * v11, &v23);
  sub_227815D88(v22);

  if (!*(&v24 + 1))
  {
LABEL_13:
    sub_227802FC4(&v23, &qword_27D7D60A0, qword_2278C98D0);
    return;
  }

  if (swift_dynamicCast())
  {
    v13 = v22[0];
    v14 = v22[1];
    if (qword_2813BB008 != -1)
    {
      v19 = v22[0];
      swift_once();
      v13 = v19;
    }

    if (v13 == qword_2813BC378 && v14 == unk_2813BC380)
    {

LABEL_16:
      v16 = sub_2278C7840();
      (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v17;
      sub_22788B134(0, 0, v4, &unk_2278CCA10, v18);

      return;
    }

    v15 = sub_2278C7DC0();

    if (v15)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_22785A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2278C75A0();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785A350, 0, 0);
}

uint64_t sub_22785A350()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_22785A440;

    return sub_227857888();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22785A440()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22785A584, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22785A584()
{
  v20 = v0;
  v1 = *(v0 + 120);

  sub_2278C7350();
  v2 = v1;
  v3 = sub_2278C7590();
  v4 = sub_2278C7950();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 88);
    v18 = *(v0 + 96);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA9DD80](*(v0 + 48), *(v0 + 56));
    v12 = sub_2278021B4(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2277F7000, v3, v4, "Error handling notification settings change: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9E860](v9, -1, -1);
    MEMORY[0x22AA9E860](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22785A818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_22785A290(a1, v4, v5, v6);
}

uint64_t sub_22785A8CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return sub_227859A54(a1, v4, v5, v6);
}

uint64_t sub_22785A980(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return sub_227859390(a1, v4, v5, v6);
}

void sub_22785AA68(void *a1, void *a2, uint64_t a3)
{
  v17[0] = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6348, qword_2278CCAA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v4 = v14;
  v15 = a2;
  type metadata accessor for CFString(0);
  sub_22785AFCC();
  v5 = a2;
  sub_2278C7BF0();
  if (!*(v4 + 16) || (v6 = sub_2278AE394(v17), (v7 & 1) == 0))
  {
LABEL_15:

    sub_227815D88(v17);
    return;
  }

  v8 = *(*(v4 + 56) + 8 * v6);
  swift_unknownObjectRetain();
  sub_227815D88(v17);
  v17[6] = v8;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    return;
  }

  if (v15 == sub_2278C7700() && v16 == v9)
  {

    goto LABEL_9;
  }

  v10 = sub_2278C7DC0();

  if ((v10 & 1) == 0)
  {

    goto LABEL_17;
  }

LABEL_9:
  v11 = *MEMORY[0x277D6C0D0];
  if (!*MEMORY[0x277D6C0D0])
  {
    __break(1u);
    return;
  }

  v11;
  sub_2278C7BF0();
  if (!*(v4 + 16))
  {
    goto LABEL_15;
  }

  sub_2278AE394(v17);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  swift_unknownObjectRetain();
  sub_227815D88(v17);

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    [v13 BOOLValue];
  }

  swift_unknownObjectRelease();
}

BOOL sub_22785ACAC()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*MEMORY[0x277D6C1B0])
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  v4 = *MEMORY[0x277D6C0E8];
  v5 = *MEMORY[0x277D6C1B0];
  if (!v4)
  {
    goto LABEL_27;
  }

  v6 = v5;
  v19 = v4;
  v21 = 0;
  TCCAccessGetOverride();
  v7 = sub_2278C76F0();
  v8 = TCCAccessCopyInformationForBundleId();

  if (v8)
  {
    v3 = sub_2278C77A0();

    if (v3 >> 62)
    {
      goto LABEL_22;
    }

    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (1)
      {
        v10 = 0;
        v0 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x22AA9DBF0](v10, v3);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

LABEL_10:
          v20 = v11;
          sub_22785AA68(&v20, v19, v6);
          v1 = v13;
          swift_unknownObjectRelease();
          if (v1)
          {

            return v21 == 0;
          }

          ++v10;
          if (v12 == v9)
          {
            goto LABEL_23;
          }
        }

        if (v10 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_22:
        v9 = sub_2278C7B80();
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      v11 = *(v3 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

LABEL_23:
  }

  else
  {
LABEL_16:
    sub_2278C73A0();
    v14 = sub_2278C7590();
    v15 = sub_2278C7970();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2277F7000, v14, v15, "TCC info for bundle health bundle ID doesn't exist", v16, 2u);
      MEMORY[0x22AA9E860](v16, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
  }

  return 0;
}

unint64_t sub_22785AFCC()
{
  result = qword_2813B9B98;
  if (!qword_2813B9B98)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B9B98);
  }

  return result;
}

uint64_t sub_22785B038(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_22785B1C8()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6358, qword_2278CCB98);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785B294, 0, 0);
}

uint64_t sub_22785B294()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30);
  sub_2278C7860();
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_22785B37C;
  v3 = v0[7];

  return MEMORY[0x2822005A8](v0 + 3, 0, 0, v3, v0 + 4);
}

uint64_t sub_22785B37C()
{

  if (v0)
  {

    v1 = sub_22785B604;
  }

  else
  {
    v1 = sub_22785B494;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22785B494()
{
  if (v0[3])
  {
    MEMORY[0x22AA9D6F0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2278C77C0();
    }

    sub_2278C77E0();
    v0[10] = v0[2];
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_22785B37C;
    v2 = v0[7];

    return MEMORY[0x2822005A8](v0 + 3, 0, 0, v2, v0 + 4);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v3 = v0[1];
    v4 = v0[10];

    return v3(v4);
  }
}

uint64_t sub_22785B604()
{
  v1 = v0[4];
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
  if (sub_2278C7DB0())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  (*(v0[8] + 8))(v0[9], v0[7]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22785B6FC()
{
  v1 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateInterval;
  v2 = sub_2278C6540();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_activityDataQuery));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_firstOnWristQuery));

  sub_22785D54C(v0 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_state, type metadata accessor for TypicalDayDataSource.State);

  return swift_deallocClassInstance();
}

uint64_t sub_22785B824(uint64_t a1)
{
  result = sub_2278C6540();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TypicalDayDataSource.State(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22785B974(uint64_t a1)
{
  v1 = type metadata accessor for TypicalDayDataSource.Content(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22785B9F4(uint64_t a1)
{
  sub_22785BAD8(319, &qword_2813B9BB0, sub_227848DDC, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22785BAD8(319, &qword_2813BC150, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22785BAD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22785BB3C()
{
  v1[187] = v0;
  type metadata accessor for TypicalDayDataSource.State(0);
  v1[193] = swift_task_alloc();
  v2 = type metadata accessor for TypicalDayDataSource.Content(0);
  v1[199] = v2;
  v1[205] = *(v2 - 8);
  v1[211] = swift_task_alloc();
  v1[212] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v1[213] = swift_task_alloc();
  v3 = sub_2278C7160();
  v1[214] = v3;
  v1[215] = *(v3 - 8);
  v1[216] = swift_task_alloc();
  v4 = sub_2278C6820();
  v1[217] = v4;
  v1[218] = *(v4 - 8);
  v1[219] = swift_task_alloc();
  v5 = sub_2278C65D0();
  v1[220] = v5;
  v1[221] = *(v5 - 8);
  v1[222] = swift_task_alloc();
  v1[223] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30);
  v1[224] = v6;
  v7 = *(v6 - 8);
  v1[225] = v7;
  v1[226] = *(v7 + 64);
  v1[227] = swift_task_alloc();
  v1[228] = swift_task_alloc();
  v8 = sub_2278C6920();
  v1[229] = v8;
  v1[230] = *(v8 - 8);
  v1[231] = swift_task_alloc();
  v9 = sub_2278C75A0();
  v1[232] = v9;
  v1[233] = *(v9 - 8);
  v1[234] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785BEB8, 0, 0);
}

uint64_t sub_22785BEB8(uint64_t a1)
{
  v2 = v1[234];
  v3 = v1[233];
  v4 = v1[232];
  v19 = v1[228];
  v24 = v1[227];
  v22 = v1[225];
  v23 = v1[224];
  v16 = v1[223];
  v25 = v1[222];
  v20 = v1[221];
  v21 = v1[220];
  v5 = v1[219];
  v6 = v1[218];
  v15 = v1[217];
  v7 = v1[215];
  v17 = v1[216];
  v18 = v1[214];
  v8 = v1[187];
  sub_2278C73A0();
  sub_2278C7580();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider), *(v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider + 24));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_activityDataQuery), *(v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_activityDataQuery + 24));
  sub_2278C6530();
  sub_2278C6730();
  v9 = *(v6 + 8);
  v9(v5, v15);
  sub_2278C6510();
  sub_2278C6730();
  v9(v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6260, &qword_2278CBE38);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2278C9F50;
  sub_2278C7150();
  sub_2278C7140();
  v1[175] = v10;
  sub_22784B9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
  sub_227829300();
  sub_2278C7AF0();
  sub_2278C6FE0();
  (*(v7 + 8))(v17, v18);
  v11 = *(v20 + 8);
  v11(v25, v21);
  v11(v16, v21);
  (*(v22 + 16))(v24, v19, v23);
  v12 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v13 = swift_allocObject();
  v1[235] = v13;
  (*(v22 + 32))(v13 + v12, v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6178, &qword_2278CADE8);
  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v1 + 2, v1 + 181, sub_22785C2B8, v1 + 162);
}

uint64_t sub_22785C2B8()
{
  v1[236] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22785C698, 0, 0);
  }

  else
  {
    v1[237] = v1[181];

    v2 = v1[213];

    return MEMORY[0x282200930](v1 + 82, v2, sub_22785C368, v1 + 182);
  }
}

uint64_t sub_22785C368()
{
  *(v1 + 1904) = v0;
  if (v0)
  {
    v2 = sub_22785C878;
  }

  else
  {
    v2 = sub_22785C39C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22785C39C()
{
  v1 = v0[237];
  v2 = v0[211];
  v3 = v0[205];
  v4 = v0[199];
  v5 = v0[193];
  v6 = v0[187];
  sub_2278102C8(v0[213], v2 + *(v4 + 20));
  *v2 = v1;
  v7 = *(v6 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_lock);
  os_unfair_lock_lock(*(v7 + 16));
  sub_22785D730(v2, v5, type metadata accessor for TypicalDayDataSource.Content);
  (*(v3 + 56))(v5, 0, 1, v4);
  v8 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_state;
  swift_beginAccess();
  sub_22785D798(v5, v6 + v8);
  swift_endAccess();
  os_unfair_lock_unlock(*(v7 + 16));
  sub_22785D54C(v2, type metadata accessor for TypicalDayDataSource.Content);
  v9 = v0[213];

  return MEMORY[0x282200920](v0 + 82, v9, sub_22785C4E0, v0 + 200);
}

uint64_t sub_22785C538()
{
  v1 = v0[231];
  v2 = v0[230];
  v3 = v0[229];
  (*(v0[225] + 8))(v0[228], v0[224]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22785C710()
{
  v1 = v0[231];
  v2 = v0[230];
  v3 = v0[229];
  (*(v0[225] + 8))(v0[228], v0[224]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22785C878()
{

  v1 = *(v0 + 1704);

  return MEMORY[0x282200920](v0 + 656, v1, sub_22785C8E4, v0 + 1504);
}

uint64_t sub_22785C93C()
{
  v1 = v0[231];
  v2 = v0[230];
  v3 = v0[229];
  (*(v0[225] + 8))(v0[228], v0[224]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22785CAA4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22785CB4C;

  return sub_22785B1C8();
}

uint64_t sub_22785CB4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22785CC98, 0, 0);
  }
}

uint64_t sub_22785CCDC()
{
  v1 = *(v0 + 16);
  v2 = sub_2278C6820();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

char *sub_22785CD7C()
{
  v22 = sub_2278C75A0();
  v21 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v20 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TypicalDayDataSource.Content(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TypicalDayDataSource.State(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_lock);
  os_unfair_lock_lock(*(v12 + 16));
  v13 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_state;
  swift_beginAccess();
  sub_22785D730(v0 + v13, v11, type metadata accessor for TypicalDayDataSource.State);
  os_unfair_lock_unlock(*(v12 + 16));
  sub_22785D730(v11, v9, type metadata accessor for TypicalDayDataSource.State);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_22785D54C(v9, type metadata accessor for TypicalDayDataSource.State);
    v14 = v20;
    sub_2278C73A0();
    v15 = sub_2278C7590();
    v16 = sub_2278C7950();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2277F7000, v15, v16, "Typical day summary requested before activation", v17, 2u);
      MEMORY[0x22AA9E860](v17, -1, -1);
    }

    (*(v21 + 8))(v14, v22);
    sub_22785D108();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    sub_22785D54C(v11, type metadata accessor for TypicalDayDataSource.State);
  }

  else
  {
    sub_22785D54C(v11, type metadata accessor for TypicalDayDataSource.State);
    sub_22785D4E8(v9, v5);
    v14 = *v5;

    sub_22785D54C(v5, type metadata accessor for TypicalDayDataSource.Content);
  }

  return v14;
}

unint64_t sub_22785D108()
{
  result = qword_27D7D6350;
  if (!qword_27D7D6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6350);
  }

  return result;
}

uint64_t sub_22785D15C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v25 = sub_2278C75A0();
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TypicalDayDataSource.Content(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TypicalDayDataSource.State(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_lock);
  os_unfair_lock_lock(*(v13 + 16));
  v14 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_state;
  swift_beginAccess();
  sub_22785D730(v1 + v14, v12, type metadata accessor for TypicalDayDataSource.State);
  os_unfair_lock_unlock(*(v13 + 16));
  sub_22785D730(v12, v10, type metadata accessor for TypicalDayDataSource.State);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_22785D54C(v10, type metadata accessor for TypicalDayDataSource.State);
    v15 = v22;
    sub_2278C73A0();
    v16 = sub_2278C7590();
    v17 = sub_2278C7950();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2277F7000, v16, v17, "Typical day first on wrist date requested before activation", v18, 2u);
      MEMORY[0x22AA9E860](v18, -1, -1);
    }

    (*(v24 + 8))(v15, v25);
    sub_22785D108();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    return sub_22785D54C(v12, type metadata accessor for TypicalDayDataSource.State);
  }

  else
  {
    sub_22785D54C(v12, type metadata accessor for TypicalDayDataSource.State);
    sub_22785D4E8(v10, v6);
    sub_2278102C8(&v6[*(v3 + 20)], v23);
    return sub_22785D54C(v6, type metadata accessor for TypicalDayDataSource.Content);
  }
}

uint64_t sub_22785D4E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypicalDayDataSource.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22785D54C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22785D5AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2278004C0;

  return sub_22785CAA4(a1);
}

uint64_t sub_22785D694(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2278003CC;

  return sub_22785CCBC(a1);
}

uint64_t sub_22785D730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22785D798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypicalDayDataSource.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22785D7FC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_22785D914(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_2278C6820();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  type metadata accessor for NotificationRequest(0);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6360, &qword_2278CCC70);
  v2[18] = swift_task_alloc();
  v4 = sub_2278C6DB0();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6368, &qword_2278CCC78);
  v2[22] = swift_task_alloc();
  v5 = sub_2278C6D60();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v6 = sub_2278C75A0();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785DB84, v1, 0);
}

uint64_t sub_22785DB84()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[12];
  sub_2278C7370();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v8 = [v7 type];
  sub_2278C7700();

  sub_2278C6D40();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_227802FC4(v0[22], &qword_27D7D6368, &qword_2278CCC78);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v10 = v0[12];
    (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
    v11 = [v10 force];
    v12 = v0[13];
    if (v11)
    {
      __swift_project_boxed_opaque_existential_1(v12 + 29, v12[32]);
      sub_227823470(v0 + 7);
      v16 = v0[12];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v17 = [v16 showTomorrowPlan];
      v18 = swift_task_alloc();
      v0[29] = v18;
      *v18 = v0;
      v18[1] = sub_22785DEE8;
      v19 = v0[25];
      v20 = v0[18];

      return sub_22786671C(v20, v19, v17);
    }

    else
    {
      v14 = __swift_project_boxed_opaque_existential_1(v12 + 19, v12[22]);
      v15 = *v14;
      v0[37] = *v14;

      return MEMORY[0x2822009F8](sub_22785E878, v15, 0);
    }
  }
}

uint64_t sub_22785DEE8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_22785E1DC;
  }

  else
  {
    v4 = sub_22785E014;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22785E014()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
    sub_227802FC4(v3, &qword_27D7D6360, &qword_2278CCC70);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[21], v3, v1);
    v0[31] = *__swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v6 = swift_task_alloc();
    v0[32] = v6;
    *v6 = v0;
    v6[1] = sub_22785E2B8;
    v7 = v0[21];
    v8 = v0[17];

    return sub_2278656D4(v8, v7, 0);
  }
}

uint64_t sub_22785E1DC()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22785E2B8()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_22785E588;
  }

  else
  {
    v2 = sub_22785E3CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22785E3CC()
{
  __swift_project_boxed_opaque_existential_1((v0[31] + 184), *(v0[31] + 208));
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_22785E474;
  v2 = v0[17];

  return sub_22782266C(v2);
}

uint64_t sub_22785E474()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_22785E70C;
  }

  else
  {
    v2 = sub_22785E5AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22785E5AC()
{
  v1 = *(v0 + 104);
  sub_227810208(*(v0 + 136));

  return MEMORY[0x2822009F8](sub_22785E618, v1, 0);
}

uint64_t sub_22785E618()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22785E70C()
{
  sub_227810208(v0[17]);
  v0[36] = v0[35];
  v1 = v0[13];

  return MEMORY[0x2822009F8](sub_22785E77C, v1, 0);
}

uint64_t sub_22785E77C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22785E878()
{
  __swift_project_boxed_opaque_existential_1((v0[37] + 448), *(v0[37] + 472));
  sub_227823470(v0 + 2);
  sub_2278C6810();
  v1 = swift_task_alloc();
  v0[38] = v1;
  *v1 = v0;
  v1[1] = sub_22785E990;
  v2 = v0[25];
  v3 = v0[16];

  return sub_227895ED8(v2, v3, (v0 + 2), 0);
}

uint64_t sub_22785E990()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = v2[37];
  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v4 = sub_22785EC44;
  }

  else
  {
    v4 = sub_22785EB0C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22785EB0C()
{
  v1 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_22785EB78, v1, 0);
}

uint64_t sub_22785EB78()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22785EC44()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v0[40] = v0[39];
  v1 = v0[13];

  return MEMORY[0x2822009F8](sub_22785ECB4, v1, 0);
}

uint64_t sub_22785ECB4()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22785ED88()
{
  v1[2] = v0;
  v2 = sub_2278C6A20();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_2278C6820();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_2278C75A0();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785EF0C, v0, 0);
}

uint64_t sub_22785EF0C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[2];
  sub_2278C7370();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1(v5 + 14, v5[17]);
  v6 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v6(v4);
  v7 = v5[27];
  v8 = v5[28];
  __swift_project_boxed_opaque_existential_1(v5 + 24, v7);
  v12 = (*(v8 + 8) + **(v8 + 8));
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_22785F0EC;
  v10 = v0[9];

  return v12(v10, v7, v8);
}

uint64_t sub_22785F0EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 16);
  if (v1)
  {
    v6 = sub_22785F498;
  }

  else
  {
    v6 = sub_22785F220;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_22785F220()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[4];
    v19 = (v4 + 32);
    v5 = MEMORY[0x277D84F90];
    v17 = *(v1 + 16);
    v18 = v0[14];
    while (v3 < *(v1 + 16))
    {
      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v7 = *(v4 + 72);
      (*(v4 + 16))(v0[6], v0[14] + v6 + v7 * v3, v0[3]);
      if (sub_2278C6A10())
      {
        (*(v4 + 8))(v0[6], v0[3]);
      }

      else
      {
        v8 = *v19;
        (*v19)(v0[5], v0[6], v0[3]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2278B48E8(0, *(v5 + 16) + 1, 1);
        }

        v10 = *(v5 + 16);
        v9 = *(v5 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_2278B48E8((v9 > 1), v10 + 1, 1);
        }

        v11 = v0[5];
        v12 = v0[3];
        *(v5 + 16) = v10 + 1;
        v8(v5 + v6 + v10 * v7, v11, v12);
        v2 = v17;
        v1 = v18;
      }

      if (v2 == ++v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_13:
  v13 = *(v5 + 16);

  v14 = [objc_allocWithZone(MEMORY[0x277D09C90]) initWithHasWorkoutScheduledToday_];
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  (*(v0[8] + 8))(v0[9], v0[7]);

  v16 = v0[1];

  v16(v15);
}

uint64_t sub_22785F498()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22785F540()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22785F5BC()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22785F67C, v0, 0);
}

uint64_t sub_22785F67C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7370();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = v4[37];
  v6 = v4[38];
  __swift_project_boxed_opaque_existential_1(v4 + 34, v5);
  v7 = swift_allocObject();
  v0[6] = v7;
  swift_weakInit();
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = sub_227839268(0, &qword_2813B9AB0, 0x277D09C88);
  *v8 = v0;
  v8[1] = sub_22785F804;
  v10 = MEMORY[0x277D09B88];

  return MEMORY[0x2821603D0](9, &unk_2278CCC90, v7, v5, v9, v6, v10);
}

uint64_t sub_22785F804()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22785F930, v1, 0);
}

uint64_t sub_22785F930()
{
  v1 = v0[2];
  v2 = v1[37];
  v3 = v1[38];
  __swift_project_boxed_opaque_existential_1(v1 + 34, v2);
  v4 = swift_allocObject();
  v0[8] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_227839268(0, &qword_2813B9AD8, 0x277D09C90);
  *v5 = v0;
  v5[1] = sub_22785FA60;
  v7 = MEMORY[0x277D09B70];

  return MEMORY[0x2821603E0](4, &unk_2278CCCA0, v4, v2, v6, v3, v7);
}

uint64_t sub_22785FA60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22785FB8C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_22785FBB0, 0, 0);
}

uint64_t sub_22785FBB0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_22785FCA0;
    v3 = v0[6];

    return sub_22785D914(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22785FCA0()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22786019C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22785FDDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22785FDFC, 0, 0);
}

id sub_22785FDFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_22785FF14;

    return sub_22785ED88();
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x277D09C90]) initWithHasWorkoutScheduledToday_];
    if (result)
    {
      **(v0 + 40) = result;
      v4 = *(v0 + 8);

      return v4();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22785FF14(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_227824174;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_227860044;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227860068(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278004C0;

  return sub_22785FB8C(a1, v1);
}

uint64_t sub_227860100(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_22785FDDC(a1, v1);
}

uint64_t sub_2278601A0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_2278602B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22780523C;

  return v9(a1, a2, a3);
}

uint64_t sub_2278603E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_227860508;

  return v9(a1, a2, a3);
}

uint64_t sub_227860508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_227860630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_227860758;

  return v9(a1, a2, a3);
}

uint64_t sub_227860758(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_22786085C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 144) = a1;
  v3 = sub_2278C65D0();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  v4 = sub_2278C6820();
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  v5 = sub_2278C6920();
  *(v2 + 80) = v5;
  *(v2 + 88) = *(v5 - 8);
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278609E4, 0, 0);
}

uint64_t sub_2278609E4()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
  v5 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v5(v1);
  sub_2278C67A0();
  v6 = *(v3 + 8);
  v0[13] = v6;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6580, qword_2278CC500);
  v7 = sub_2278C6910();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2278C9F70;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x277CC9988], v7);
  v13(v12 + v9, *MEMORY[0x277CC9998], v7);
  v13(v12 + 2 * v9, *MEMORY[0x277CC9968], v7);
  sub_22788562C(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2278C68A0();

  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_227860CA0;
  v15 = v0[5];

  return sub_227805A4C(v15);
}

uint64_t sub_227860CA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_227860F2C;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_227860DC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227860DC8()
{
  v14 = *(v0 + 104);
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v15 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 32);
  v12 = *(v0 + 24);
  v13 = *(v0 + 48);
  v6 = *(v0 + 144) == 1;
  v7 = **(v0 + 16);
  sub_22781BEE8();
  v8 = sub_2278C7790();

  v9 = [v7 evaluateYesterdayAchievements:v8 isStandaloneMode:v6];

  (*(v5 + 8))(v4, v12);
  v14(v3, v13);
  (*(v2 + 8))(v1, v15);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_227860F2C()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_227861018(char a1)
{
  *(v2 + 168) = v1;
  *(v2 + 248) = a1;
  v3 = sub_2278C6920();
  *(v2 + 176) = v3;
  *(v2 + 184) = *(v3 - 8);
  *(v2 + 192) = swift_task_alloc();
  v4 = sub_2278C6820();
  *(v2 + 200) = v4;
  *(v2 + 208) = *(v4 - 8);
  *(v2 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227861138, 0, 0);
}

uint64_t sub_227861138()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 184);
  v12 = *(v0 + 200);
  v13 = *(v0 + 176);
  v5 = *(v0 + 168);
  v15 = *(v0 + 248) == 1;
  v14 = *v5;
  __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
  v6 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v6(v2);
  v7 = sub_2278C67D0();
  *(v0 + 224) = v7;
  (*(v1 + 8))(v2, v12);
  __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
  sub_227804920();
  v8 = sub_2278C68B0();
  *(v0 + 232) = v8;
  (*(v4 + 8))(v3, v13);
  v9 = *(v5 + 88);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_227861350;
  v10 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6370, &unk_2278CCD38);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_227861598;
  *(v0 + 104) = &block_descriptor_12;
  *(v0 + 112) = v10;
  [v14 progressAchievementAndMilestoneWithCurrentDate:v7 calendar:v8 experienceType:v9 isStandaloneMode:v15 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_227861350()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_227861504;
  }

  else
  {
    v2 = sub_227861460;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227861460()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);

  v5 = *(v0 + 8);

  return v5(v2, v3, v4);
}

uint64_t sub_227861504(uint64_t a1)
{
  v2 = v1[29];
  v3 = v1[28];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_227861598(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v6;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    if (a2)
    {
      v11 = sub_2278C7700();
      v12 = *(v7[8] + 40);
      *v12 = a2;
      v12[1] = v11;
      v12[2] = v13;
      v14 = a2;
      v6 = v7;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v6);
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2278616B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2278616FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227861764(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_22786187C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22781659C;

  return v7(a1, a2);
}

uint64_t sub_227861994()
{
  if ((*(v0 + 124) & 1) == 0)
  {
    notify_cancel(*(v0 + 120));
  }

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227861A10()
{
  v1[8] = v0;
  v2 = sub_2278C75A0();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227861AFC, v0, 0);
}

uint64_t sub_227861AFC()
{
  v1 = *(v0 + 64);
  if (*(v1 + 124) == 1)
  {
    *(v0 + 96) = -1;
    v2 = *MEMORY[0x277CCC148];
    sub_2278002AC();
    v3 = sub_2278C7A60();
    *(v0 + 48) = sub_227861E44;
    *(v0 + 56) = v1;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_227800258;
    *(v0 + 40) = &block_descriptor_13;
    v4 = _Block_copy((v0 + 16));

    LODWORD(v2) = notify_register_dispatch(v2, (v0 + 96), v3, v4);
    _Block_release(v4);

    if (v2 || (v11 = *(v0 + 96), v11 == -1))
    {
      sub_2278C73A0();
      v5 = sub_2278C7590();
      v6 = sub_2278C7950();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_2277F7000, v5, v6, "Failed to register for fitness mode changes", v7, 2u);
        MEMORY[0x22AA9E860](v7, -1, -1);
      }

      v9 = *(v0 + 80);
      v8 = *(v0 + 88);
      v10 = *(v0 + 72);

      (*(v9 + 8))(v8, v10);
    }

    else
    {
      *(v1 + 120) = v11;
      *(v1 + 124) = 0;
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_227861D20(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_2278C7840();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_22788AE20(0, 0, v4, &unk_2278CCE70, v7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_227861E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_2278C75A0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227861F24, 0, 0);
}

uint64_t sub_227861F24()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_227861FF0, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_227861FF0(uint64_t a1)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[7];
  v5 = v1[8];
  sub_2278C73A0();
  sub_2278C7580();
  (*(v5 + 8))(v2, v4);
  v6 = *(v3 + 112);
  if (qword_2813BC018 != -1)
  {
    v7 = *(v3 + 112);
    swift_once();
    v6 = v7;
  }

  [v6 postNotificationName:qword_2813BC3C8 object:v1[10]];

  return MEMORY[0x2822009F8](sub_227862120, 0, 0);
}

uint64_t sub_227862120()
{
  **(v0 + 40) = *(v0 + 80) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227862190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return sub_227861E64(a1, v4, v5, v6);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227862290(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2278622D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22786233C(uint64_t a1)
{
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a1 - 1;
  if ((a1 - 1) >= 3)
  {
    sub_2278C73A0();
    v7 = sub_2278C7590();
    v8 = sub_2278C7960();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2277F7000, v7, v8, "### HKFitnessMode not handled", v9, 2u);
      MEMORY[0x22AA9E860](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return result;
}

unint64_t sub_227862498()
{
  result = qword_27D7D6378;
  if (!qword_27D7D6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6378);
  }

  return result;
}

uint64_t sub_2278624EC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227862604;

  return v7(a1, a2);
}

uint64_t sub_227862604(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_227862710(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2278C7160();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278627D4, 0, 0);
}

uint64_t sub_2278627D4(uint64_t a1)
{
  v2 = v1[5];
  v3 = sub_2278C67D0();
  v4 = sub_2278C68B0();
  v5 = _HKCacheIndexFromDate();

  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v1[2] = MEMORY[0x277D84F90];
  sub_22784B9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
  sub_227829300();
  sub_2278C7AF0();
  v8 = swift_task_alloc();
  v1[9] = v8;
  *v8 = v1;
  v8[1] = sub_227827380;
  v9 = v1[8];

  return MEMORY[0x282160398](v5, v9, v6, v7);
}

uint64_t sub_227862938()
{
  v1[8] = v0;
  v2 = sub_2278C6920();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_2278C6820();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227862A80, 0, 0);
}

uint64_t sub_227862A80()
{
  v1 = v0[14];
  v2 = v0[8];
  sub_2278040AC((v2 + 5), (v0 + 2));
  v3 = v2[10];
  v0[15] = v3;
  v4 = v0[5];
  v5 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v0[16] = sub_22786311C(v7, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  v8 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v8(v1);
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  sub_227804920();
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_227862C84;
  v10 = v0[14];
  v11 = v0[11];

  return sub_227862710(v10, v11);
}

uint64_t sub_227862C84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  v5 = v3[14];
  v6 = v3[13];
  v7 = v3[12];
  (*(v3[10] + 8))(v3[11], v3[9]);
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_227863070;
  }

  else
  {
    v8 = sub_227862E84;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227862E84()
{
  *(v0 + 56) = 0;
  v1 = [*(v0 + 120) wheelchairUseWithError_];
  v2 = *(v0 + 56);
  if (v1)
  {
    v3 = v1;
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = v2;
    v7 = [v3 wheelchairUse];

    sub_227850628(v5, v7);
    v10 = *(v0 + 144);
    v11 = *(v0 + 128);
    if (v4)
    {
    }

    else
    {
      v17 = v8;
      v18 = v9;

      if ((v18 & 1) == 0)
      {
        v19 = 0;
        goto LABEL_9;
      }
    }

    v17 = 0;
    v19 = 1;
LABEL_9:

    v20 = *(v0 + 8);

    return v20(v17, v19);
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = v2;
  sub_2278C65F0();

  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_227863070()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_22786311C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateProvider(0);
  v18 = v4;
  v19 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_2278238F8(a1, boxed_opaque_existential_1);
  v6 = type metadata accessor for WalkSuggestionProvider();
  v7 = objc_allocWithZone(v6);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v16[3] = v4;
  v16[4] = &off_283AE99D8;
  v12 = __swift_allocate_boxed_opaque_existential_1(v16);
  sub_2278238F8(v10, v12);
  sub_2278040AC(v16, &v7[OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider]);
  *&v7[OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_healthStore] = a2;
  v15.receiver = v7;
  v15.super_class = v6;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v13;
}

uint64_t sub_2278632AC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_2278633C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2278634F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v18 = (*(a6 + 24) + **(a6 + 24));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2278004C0;
  v16.n128_f64[0] = a7;

  return v18(a1, a2, a3, a4, a5, a6, v16);
}

void sub_22786366C()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  *(v0 + 24) = v1;
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (*MEMORY[0x277D86380])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86380], 0);
    xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862C0]);
    xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v2 = swift_allocObject();
    *(v2 + 16) = 0xD00000000000003ALL;
    *(v2 + 24) = 0x80000002278D21D0;
    sub_2278645C4(0xD00000000000003ALL, 0x80000002278D21D0, v1, sub_227864894, v2);

    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_22786381C;

    sub_227863B34(0xD00000000000003ALL, 0x80000002278D21D0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22786381C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22786392C, v1, 0);
}

uint64_t sub_22786392C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22786398C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2278C75A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();

  v8 = sub_2278C7590();
  v9 = sub_2278C7970();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2278021B4(a1, a2, &v14);
    _os_log_impl(&dword_2277F7000, v8, v9, "Initial launch activity fired [%s]", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9E860](v11, -1, -1);
    MEMORY[0x22AA9E860](v10, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_227863B34(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_2278C75A0();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227863BF4, v2, 0);
}

uint64_t sub_227863BF4(uint64_t a1)
{
  v16 = v1;
  sub_2278C73A0();

  v2 = sub_2278C7590();
  v3 = sub_2278C7970();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2278021B4(v9, v8, &v15);
    _os_log_impl(&dword_2277F7000, v2, v3, "Unregistering xpc activity [%s]", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9E860](v11, -1, -1);
    MEMORY[0x22AA9E860](v10, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v12 = sub_2278C7720();
  xpc_activity_unregister((v12 + 32));

  v13 = v1[1];

  return v13();
}

void sub_227863D8C(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v53 = a6;
  v54 = a5;
  v56 = a2;
  v9 = sub_2278C75A0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v52 = &v50 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v55 = &v50 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  state = xpc_activity_get_state(a1);
  sub_2278C73A0();

  v21 = sub_2278C7590();
  v22 = sub_2278C7970();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v50 = v13;
    v24 = v23;
    v25 = swift_slowAlloc();
    v51 = a1;
    v26 = v10;
    v27 = v25;
    v57 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_2278021B4(v56, a3, &v57);
    *(v24 + 12) = 2048;
    *(v24 + 14) = state;
    _os_log_impl(&dword_2277F7000, v21, v22, "Scheduling [%s] xpc activity fired for state=%ld", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v28 = v27;
    v10 = v26;
    a1 = v51;
    MEMORY[0x22AA9E860](v28, -1, -1);
    v29 = v24;
    v13 = v50;
    MEMORY[0x22AA9E860](v29, -1, -1);
  }

  v30 = *(v10 + 8);
  v31 = v30(v19, v9);
  if (state)
  {
    a4(v31);
    v32 = v55;
    sub_2278C73A0();

    v33 = sub_2278C7590();
    v34 = sub_2278C7970();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v57 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_2278021B4(v56, a3, &v57);
      _os_log_impl(&dword_2277F7000, v33, v34, "Scheduling [%s] setting update task as done", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9E860](v36, -1, -1);
      MEMORY[0x22AA9E860](v35, -1, -1);
    }

    v30(v32, v9);
    if (!xpc_activity_set_state(a1, 5))
    {
      v45 = v52;
      sub_2278C73A0();

      v46 = sub_2278C7590();
      v47 = sub_2278C7950();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v57 = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_2278021B4(v56, a3, &v57);
        _os_log_impl(&dword_2277F7000, v46, v47, "Scheduling [%s] failed to set xpc activity state to done", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x22AA9E860](v49, -1, -1);
        MEMORY[0x22AA9E860](v48, -1, -1);
      }

      v30(v45, v9);
    }
  }

  else
  {
    v37 = xpc_activity_copy_criteria(a1);
    if (!v37 || (v38 = xpc_equal(v37, v53), swift_unknownObjectRelease(), !v38))
    {
      sub_2278C73A0();

      v39 = sub_2278C7590();
      v40 = sub_2278C7970();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = v13;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v57 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_2278021B4(v56, a3, &v57);
        _os_log_impl(&dword_2277F7000, v39, v40, "Scheduling [%s] setting criteria", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x22AA9E860](v43, -1, -1);
        MEMORY[0x22AA9E860](v42, -1, -1);

        v44 = v41;
      }

      else
      {

        v44 = v13;
      }

      v30(v44, v9);
      xpc_activity_set_criteria(a1, v53);
    }
  }
}

uint64_t sub_227864368()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2278643BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2278643E4, v5, 0);
}

void sub_2278643E4()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (!*MEMORY[0x277D86370])
  {
    goto LABEL_11;
  }

  v2 = *(v0 + 4);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86370], 1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v0[4];
  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + 5);
  v4 = *(v0 + 6);
  v7 = *(v0 + 2);
  v6 = *(v0 + 3);
  xpc_dictionary_set_int64(v1, *MEMORY[0x277D86250], v3);
  xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862C0]);
  xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  sub_2278645C4(v7, v6, v1, v5, v4);
  swift_unknownObjectRelease();
  v8 = *(v0 + 1);

  v8();
}

void *sub_227864574(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_227864594@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_2278645C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2278C75A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();

  v14 = sub_2278C7590();
  v15 = sub_2278C7970();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a3;
    v27 = a5;
    v17 = v16;
    v18 = a4;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v17 = 136315138;
    *(v17 + 4) = sub_2278021B4(a1, a2, aBlock);
    _os_log_impl(&dword_2277F7000, v14, v15, "Registering xpc activity [%s]", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v20 = v19;
    a4 = v18;
    MEMORY[0x22AA9E860](v20, -1, -1);
    v21 = v17;
    a3 = v26;
    a5 = v27;
    MEMORY[0x22AA9E860](v21, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v22 = *MEMORY[0x277D86238];
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a4;
  v23[5] = a5;
  v23[6] = a3;
  aBlock[4] = sub_22786486C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227839D18;
  aBlock[3] = &block_descriptor_14;
  v24 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v25 = sub_2278C7720();
  xpc_activity_register((v25 + 32), v22, v24);

  _Block_release(v24);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22786489C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278003CC;

  return v7(a1, a2);
}

uint64_t sub_2278649B4()
{
  v1[33] = v0;
  v2 = sub_2278C6860();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v3 = sub_2278C75A0();
  v1[37] = v3;
  v1[38] = *(v3 - 8);
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227864AD0, 0, 0);
}

uint64_t sub_227864AD0(uint64_t a1)
{
  v2 = v1[38];
  v3 = v1[39];
  v4 = v1[36];
  v5 = v1[37];
  v6 = v1[34];
  v7 = v1[35];
  v8 = v1[33];
  sub_2278C73A0();
  sub_2278C7580();
  (*(v2 + 8))(v3, v5);
  v9 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v1[40] = v9;
  [v9 setCategoryIdentifier_];
  v10 = sub_2278C76F0();
  [v9 setTitle_];

  v11 = sub_2278C76F0();
  [v9 setBody_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2278C9140;
  v1[31] = sub_2278C7700();
  v1[32] = v13;
  sub_2278C7BF0();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_2278C3BA4(inited);
  swift_setDeallocating();
  sub_2278650B0(inited + 32);
  v14 = sub_2278C7640();

  [v9 setUserInfo_];

  sub_2278C6850();
  sub_2278C6840();
  (*(v7 + 8))(v4, v6);
  v15 = v9;
  v16 = sub_2278C76F0();

  v17 = [objc_opt_self() requestWithIdentifier:v16 content:v15 trigger:0];
  v1[41] = v17;

  v18 = *__swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v1[2] = v1;
  v1[3] = sub_227864E84;
  v19 = swift_continuation_init();
  v1[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  v1[23] = MEMORY[0x277D85DD0];
  v1[24] = 1107296256;
  v1[25] = sub_227822B84;
  v1[26] = &block_descriptor_15;
  v1[27] = v19;
  [v18 addNotificationRequest:v17 withCompletionHandler:?];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_227864E84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_22786501C;
  }

  else
  {
    v2 = sub_227864F94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227864F94()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22786501C(uint64_t a1)
{
  v2 = v1[41];
  v3 = v1[40];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_2278650B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6150, &unk_2278CAAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227865154(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2278C9970;
  v3 = *MEMORY[0x277CBD078];
  v4 = *MEMORY[0x277CBD000];
  *(v2 + 32) = *MEMORY[0x277CBD078];
  *(v2 + 40) = v4;
  v5 = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E8, &qword_2278CD288);
  v7 = sub_2278C7790();

  v19[0] = 0;
  v8 = [a1 _ios_meContactWithKeysToFetch_error_];

  if (v8)
  {
    v9 = v19[0];
    v10 = [v8 nickname];
    v11 = sub_2278C7700();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
    }

    else
    {

      v17 = [v8 givenName];
      v11 = sub_2278C7700();
    }
  }

  else
  {
    v15 = v19[0];
    v16 = sub_2278C65F0();

    swift_willThrow();
    return 0;
  }

  return v11;
}

uint64_t sub_227865334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2278003CC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_227865478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2278655A8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2278004C0;

  return v7(a1, a2);
}

uint64_t sub_2278656D4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 240) = a2;
  *(v4 + 248) = v3;
  *(v4 + 456) = a3;
  *(v4 + 232) = a1;
  v5 = sub_2278C6920();
  *(v4 + 256) = v5;
  *(v4 + 264) = *(v5 - 8);
  *(v4 + 272) = swift_task_alloc();
  v6 = sub_2278C6820();
  *(v4 + 280) = v6;
  *(v4 + 288) = *(v6 - 8);
  *(v4 + 296) = swift_task_alloc();
  v7 = sub_2278C6A20();
  *(v4 + 304) = v7;
  *(v4 + 312) = *(v7 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  v8 = sub_2278C6D60();
  *(v4 + 344) = v8;
  *(v4 + 352) = *(v8 - 8);
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278658D4, 0, 0);
}

uint64_t sub_2278658D4()
{
  v68 = v0;
  v1 = v0;
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v62 = v0[45];
  v5 = v0[31];
  __swift_project_boxed_opaque_existential_1((v5 + 136), *(v5 + 160));
  sub_2278C6DA0();
  v56 = sub_2278C6D30();
  v1[47] = v6;
  v7 = *(v3 + 8);
  v7(v2, v4);
  __swift_project_boxed_opaque_existential_1((v5 + 136), *(v5 + 160));
  sub_2278C6DA0();
  sub_2278C6D90();
  sub_2278C6D70();
  v8 = sub_2278C6D20();
  v10 = v9;
  v7(v62, v4);
  v54 = v8;
  v55 = v10;

  result = sub_2278C6D90();
  v12 = result;
  v13 = *(result + 16);
  v14 = MEMORY[0x277D84F90];
  v15 = v1;
  if (v13)
  {
    v16 = 0;
    v17 = v1[39];
    v63 = result;
    v65 = (v17 + 32);
    v59 = *(result + 16);
    while (v16 < *(v12 + 16))
    {
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = *(v17 + 72);
      (*(v17 + 16))(v15[42], v12 + v18 + v19 * v16, v15[38]);
      if (sub_2278C6A10())
      {
        result = (*(v17 + 8))(v15[42], v15[38]);
      }

      else
      {
        v20 = *v65;
        (*v65)(v15[41], v15[42], v15[38]);
        v67 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2278B48E8(0, *(v14 + 2) + 1, 1);
          v14 = v67;
        }

        v22 = *(v14 + 2);
        v21 = *(v14 + 3);
        if (v22 >= v21 >> 1)
        {
          sub_2278B48E8((v21 > 1), v22 + 1, 1);
          v14 = v67;
        }

        v23 = v15[41];
        v24 = v15[38];
        *(v14 + 2) = v22 + 1;
        result = v20(&v14[v18 + v22 * v19], v23, v24);
        v13 = v59;
        v12 = v63;
      }

      if (v13 == ++v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v25 = *(v14 + 2);
    v66 = v15;
    if (v25)
    {
      v26 = v15[39];
      v67 = MEMORY[0x277D84F90];
      sub_2278B4884(0, v25, 0);
      v27 = v67;
      v28 = *(v26 + 16);
      v26 += 16;
      v29 = &v14[(*(v26 + 64) + 32) & ~*(v26 + 64)];
      v57 = *(v26 + 56);
      v60 = v28;
      v30 = (v26 - 8);
      do
      {
        v31 = v15[40];
        v32 = v15[38];
        v60(v31, v29, v32);
        v33 = sub_2278C6A00();
        v35 = v34;
        (*v30)(v31, v32);
        v67 = v27;
        v37 = *(v27 + 2);
        v36 = *(v27 + 3);
        if (v37 >= v36 >> 1)
        {
          sub_2278B4884((v36 > 1), v37 + 1, 1);
          v27 = v67;
        }

        *(v27 + 2) = v37 + 1;
        v38 = &v27[16 * v37];
        *(v38 + 4) = v33;
        *(v38 + 5) = v35;
        v29 += v57;
        --v25;
        v15 = v66;
      }

      while (v25);
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    v67 = v27;

    sub_227868888(&v67);
    v39 = v66[34];
    v61 = v66[36];
    v64 = v66[35];
    v40 = v66[33];
    v41 = v66[31];
    v53 = v66[37];
    v58 = v66[32];

    v66[48] = v55;
    v66[49] = v54;
    v66[50] = v56;
    v66[28] = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63F0, &qword_2278CD388);
    sub_22786A114();
    v42 = sub_2278C76A0();
    v44 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2278C9F50;
    v66[24] = 0xD00000000000001BLL;
    v66[25] = 0x80000002278D2380;
    v46 = MEMORY[0x277D837D0];
    sub_2278C7BF0();
    *(inited + 96) = v46;
    *(inited + 72) = v42;
    *(inited + 80) = v44;
    v66[26] = 0xD000000000000013;
    v66[27] = 0x80000002278D23A0;
    sub_2278C7BF0();
    v47 = sub_2278C6D70();
    *(inited + 168) = MEMORY[0x277D839B0];
    *(inited + 144) = v47 & 1;
    v48 = sub_2278C3BA4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6150, &unk_2278CAAE0);
    swift_arrayDestroy();
    v66[51] = sub_2278A7354(v48);
    v66[52] = v49;
    __swift_project_boxed_opaque_existential_1((v41 + 56), *(v41 + 80));
    v50 = off_283AE99E0;
    type metadata accessor for DateProvider(0);
    v50(v53);
    __swift_project_boxed_opaque_existential_1((v41 + 56), *(v41 + 80));
    sub_227804920();
    v66[53] = type metadata accessor for NotificationRequest(0);
    sub_2278C6760();
    (*(v40 + 8))(v39, v58);
    (*(v61 + 8))(v53, v64);
    v51 = swift_task_alloc();
    v66[54] = v51;
    *v51 = v66;
    v51[1] = sub_227866030;
    v52 = v66[30];

    return sub_22786A1B4(v52);
  }

  return result;
}

uint64_t sub_227866030(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = a2;

  return MEMORY[0x2822009F8](sub_227866130, 0, 0);
}

uint64_t sub_227866130()
{
  v18 = *(v0 + 440);
  v19 = *(v0 + 448);
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 376);
  v8 = *(v0 + 456);
  v9 = *(v0 + 232);
  v10 = sub_2278C7700();
  *v9 = v4;
  *(v9 + 8) = v7;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  *(v9 + 48) = v8;
  v12 = (v9 + v2[9]);
  *v12 = 0xD000000000000029;
  v12[1] = 0x80000002278D23C0;
  *(v9 + v2[10]) = 0;
  v13 = (v9 + v2[11]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v9 + v2[12]);
  *v14 = v3;
  v14[1] = v1;
  v15 = (v9 + v2[13]);
  *v15 = v18;
  v15[1] = v19;
  *(v9 + v2[14]) = 0;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2278662A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2278C6610();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2278662E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v41 = a3;
  v6 = sub_2278C6D60();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2278C6DB0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2278C75A0();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2278C7370();
  (*(v10 + 16))(v12, a2, v9);
  v16 = a1;
  v17 = sub_2278C7590();
  v18 = sub_2278C7950();
  v38 = a1;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v3;
    v20 = v19;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v20 = 136315394;
    v32 = v18;
    sub_2278C6DA0();
    v21 = sub_2278C6D50();
    v23 = v22;
    (*(v36 + 8))(v8, v37);
    (*(v10 + 8))(v12, v9);
    v24 = sub_2278021B4(v21, v23, &v42);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2112;
    v25 = v38;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    v27 = v33;
    *v33 = v26;
    _os_log_impl(&dword_2277F7000, v17, v32, "[%s] Unable to fetch image: %@", v20, 0x16u);
    sub_227802FC4(v27, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v27, -1, -1);
    v28 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AA9E860](v28, -1, -1);
    MEMORY[0x22AA9E860](v20, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  result = (*(v39 + 8))(v15, v40);
  v30 = v41;
  *v41 = 0;
  v30[1] = 0;
  return result;
}

uint64_t sub_227866698()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  __swift_destroy_boxed_opaque_existential_0((v0 + 184));

  return swift_deallocClassInstance();
}

uint64_t sub_22786671C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 144) = a3;
  *(v4 + 16) = a1;
  v5 = sub_2278C6D60();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = sub_2278C6920();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  v7 = sub_2278C6820();
  *(v4 + 88) = v7;
  *(v4 + 96) = *(v7 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278668A8, 0, 0);
}

uint64_t sub_2278668A8()
{
  v1 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 56), *(*(v0 + 32) + 80));
  v2 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  if (v1 == 1)
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 80);
    v14 = *(v0 + 88);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v2(v3);
    sub_2278C6900();
    sub_2278C6780();
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v3, v14);
  }

  else
  {
    v2(*(v0 + 112));
  }

  v8 = *(v0 + 32);
  v9 = v8[15];
  v10 = v8[16];
  __swift_project_boxed_opaque_existential_1(v8 + 12, v9);
  v15 = (*(v10 + 8) + **(v10 + 8));
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_227866AB4;
  v12 = *(v0 + 112);

  return v15(v12, v9, v10);
}

uint64_t sub_227866AB4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_227866D3C;
  }

  else
  {
    v4 = sub_227866BC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227866BC8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  if (*(v0[16] + 16))
  {
    (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
    sub_2278C6D80();
    (*(v3 + 8))(v1, v2);
    v4 = 0;
  }

  else
  {
    (*(v3 + 8))(v0[14], v0[11]);

    v4 = 1;
  }

  v5 = v0[2];
  v6 = sub_2278C6DB0();
  (*(*(v6 - 8) + 56))(v5, v4, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_227866D3C()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227866DE4()
{
  v1[20] = v0;
  v2 = sub_2278C6A20();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = sub_2278C6820();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227866F18, 0, 0);
}

uint64_t sub_227866F18()
{
  v1 = v0[28];
  v2 = v0[20];
  v3 = v2[15];
  v4 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v3);
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  v5 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v5(v1);
  v9 = (*(v4 + 8) + **(v4 + 8));
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_2278670A8;
  v7 = v0[28];

  return v9(v7, v3, v4);
}

uint64_t sub_2278670A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[30] = a1;
  v4[31] = v1;

  v5 = v3[28];
  v6 = v3[27];
  v7 = v3[26];
  if (v1)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_227867D7C;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_227867248;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227867248(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v44 = v3;
  v4 = v3[30];
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = 0;
    v8 = v3[22];
    v42 = (v8 + 32);
    v9 = MEMORY[0x277D84F90];
    v38 = *(v4 + 16);
    v40 = v3[30];
    while (v7 < *(v4 + 16))
    {
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v11 = *(v8 + 72);
      (*(v8 + 16))(v3[25], v3[30] + v10 + v11 * v7, v3[21]);
      if (sub_2278C6A10())
      {
        a1 = (*(v8 + 8))(v3[25], v3[21]);
      }

      else
      {
        v12 = *v42;
        (*v42)(v3[24], v3[25], v3[21]);
        v43 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2278B48E8(0, *(v9 + 2) + 1, 1);
          v9 = v43;
        }

        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        if (v14 >= v13 >> 1)
        {
          sub_2278B48E8((v13 > 1), v14 + 1, 1);
          v9 = v43;
        }

        v15 = v3[24];
        v16 = v3[21];
        *(v9 + 2) = v14 + 1;
        a1 = v12(&v9[v10 + v14 * v11], v15, v16);
        v5 = v38;
        v4 = v40;
      }

      if (v5 == ++v7)
      {
        v6 = MEMORY[0x277D84F90];
        goto LABEL_14;
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_14:

  v17 = *(v9 + 2);
  if (v17)
  {
    v18 = v3[22];
    v43 = v6;
    sub_2278B4884(0, v17, 0);
    v19 = v6;
    v20 = *(v18 + 16);
    v18 += 16;
    v21 = &v9[(*(v18 + 64) + 32) & ~*(v18 + 64)];
    v39 = *(v18 + 56);
    v41 = v20;
    v22 = (v18 - 8);
    do
    {
      v23 = v3[23];
      v24 = v3[21];
      v41(v23, v21, v24);
      v25 = sub_2278C6A00();
      v27 = v26;
      (*v22)(v23, v24);
      v43 = v19;
      v29 = *(v19 + 2);
      v28 = *(v19 + 3);
      if (v29 >= v28 >> 1)
      {
        sub_2278B4884((v28 > 1), v29 + 1, 1);
        v19 = v43;
      }

      *(v19 + 2) = v29 + 1;
      v30 = &v19[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
      v21 += v39;
      --v17;
    }

    while (v17);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v31 = v3[31];
  v43 = v19;

  sub_227868888(&v43);
  v3[32] = v31;
  if (!v31)
  {
    v33 = v3[20];

    v3[18] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63F0, &qword_2278CD388);
    sub_22786A114();
    v34 = sub_2278C76A0();
    v36 = v35;

    v3[33] = v34;
    v3[34] = v36;
    v37 = __swift_project_boxed_opaque_existential_1((v33 + 184), *(v33 + 208));
    a2 = *v37;
    v3[35] = *v37;
    a1 = sub_227867620;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }
}

uint64_t sub_227867620()
{
  *(v0 + 288) = *__swift_project_boxed_opaque_existential_1((*(v0 + 280) + 152), *(*(v0 + 280) + 176));

  return MEMORY[0x2822009F8](sub_227867698, 0, 0);
}

uint64_t sub_227867698()
{
  v1 = v0[36];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_2278677B4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6128, &qword_2278CA2A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22781F5FC;
  v0[13] = &block_descriptor_16;
  v0[14] = v2;
  [v1 getDeliveredNotificationsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2278677B4()
{

  return MEMORY[0x2822009F8](sub_227867894, 0, 0);
}

void sub_2278678B8()
{
  v32 = v0;
  v3 = *(v0 + 296);
  v4 = MEMORY[0x277D84F90];
  v31[0] = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_28:
    v6 = *(v0 + 256);
    v5 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  while (1)
  {
    v1 = *(v0 + 296);
    v2 = v3 & 0xFFFFFFFFFFFFFF8;
    v6 = *(v0 + 256);
    v7 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) != 0)
    {
      goto LABEL_45;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    v5 = sub_2278C7B80();
    v26 = v0;
    if (!v5)
    {
      goto LABEL_28;
    }
  }

  for (i = *(v1 + 32); ; i = MEMORY[0x22AA9DBF0](0, v1))
  {
    v9 = v26[33];
    v10 = v26[34];
    v28 = i;
    v30[0] = i;
    v11 = sub_227867E08(v30, v9, v10);
    if (v6)
    {
      goto LABEL_7;
    }

    if ((v11 & 1) == 0)
    {
      break;
    }

    sub_2278C7CB0();
    v6 = *(v31[0] + 2);
    sub_2278C7CE0();
    sub_2278C7CF0();
    v3 = v31;
    sub_2278C7CC0();
    if (v5 != 1)
    {
      goto LABEL_15;
    }

LABEL_14:
    v6 = 0;
    v5 = v31[0];
LABEL_29:

    if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
    {
      v0 = sub_2278C7B80();
      if (!v0)
      {
LABEL_47:

        v7 = MEMORY[0x277D84F90];
LABEL_48:
        v26[38] = v7;
        v25 = __swift_project_boxed_opaque_existential_1((v26[20] + 184), *(v26[20] + 208));
        v18 = *v25;
        v26[39] = *v25;
        v17 = sub_227867CAC;
        v19 = 0;

        goto _swift_task_switch;
      }
    }

    else
    {
      v0 = *(v5 + 16);
      if (!v0)
      {
        goto LABEL_47;
      }
    }

    v29 = v4;
    v3 = &v29;
    v17 = sub_2278B4884(0, v0 & ~(v0 >> 63), 0);
    if (v0 < 0)
    {
      __break(1u);
_swift_task_switch:
      MEMORY[0x2822009F8](v17, v18, v19);
      return;
    }

    v4 = 0;
    v7 = v29;
    v27 = v0;
    while (1)
    {
      v20 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x22AA9DBF0](v4, v5);
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_44;
        }

        v21 = *(v5 + 8 * v4 + 32);
      }

      v3 = v21;
      v31[0] = v21;
      sub_227868068(v31, v30);

      v1 = v30[0];
      v0 = v30[1];
      v29 = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      v2 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v3 = &v29;
        sub_2278B4884((v22 > 1), v23 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v2;
      v24 = v7 + 16 * v23;
      *(v24 + 32) = v1;
      *(v24 + 40) = v0;
      ++v4;
      if (v20 == v27)
      {

        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  if (v5 == 1)
  {
    goto LABEL_14;
  }

LABEL_15:
  v12 = (v1 + 40);
  v1 = 1;
  while (v7)
  {
    v13 = MEMORY[0x22AA9DBF0](v1, v26[37]);
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_25;
    }

LABEL_21:
    v15 = v26[33];
    v16 = v26[34];
    v28 = v13;
    v30[0] = v13;
    v6 = 0;
    if (sub_227867E08(v30, v15, v16))
    {
      sub_2278C7CB0();
      v6 = *(v31[0] + 2);
      sub_2278C7CE0();
      sub_2278C7CF0();
      v3 = v31;
      sub_2278C7CC0();
    }

    else
    {
    }

    ++v1;
    ++v12;
    if (v14 == v5)
    {
      goto LABEL_14;
    }
  }

  if (v1 >= *(v2 + 16))
  {
    goto LABEL_26;
  }

  v13 = *v12;
  v14 = v1 + 1;
  if (!__OFADD__(v1, 1))
  {
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
LABEL_7:
}

uint64_t sub_227867CAC()
{
  v1 = v0[38];
  __swift_project_boxed_opaque_existential_1((v0[39] + 152), *(v0[39] + 176));
  off_283AEB7D0(v1, &type metadata for NotificationRequestPublisher);

  v2 = v0[1];

  return v2();
}

uint64_t sub_227867D7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227867E08(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 request];
  v7 = [v6 identifier];

  v8 = sub_2278C7700();
  v10 = v9;

  v20[0] = v8;
  v20[1] = v10;
  v21[0] = 0xD000000000000029;
  v21[1] = 0x80000002278D23C0;
  sub_22781F6EC();
  LOBYTE(v8) = sub_2278C7AC0();

  if (v8)
  {
    v11 = [v5 request];
    v12 = [v11 content];

    v13 = [v12 userInfo];
    v14 = sub_2278C7660();

    sub_2278C7BF0();
    if (*(v14 + 16) && (v15 = sub_2278AE394(v20), (v16 & 1) != 0))
    {
      sub_227802850(*(v14 + 56) + 32 * v15, v21);
      sub_227815D88(v20);

      if (swift_dynamicCast())
      {
        if (a2 != 0xD00000000000001BLL || 0x80000002278D2380 != a3)
        {
          v19 = sub_2278C7DC0();

          v17 = v19 ^ 1;
          return v17 & 1;
        }
      }
    }

    else
    {

      sub_227815D88(v20);
    }
  }

  v17 = 0;
  return v17 & 1;
}

void sub_227868068(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2278C75A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_2278C7370();
  v9 = v8;
  v10 = sub_2278C7590();
  v11 = sub_2278C7970();

  v12 = &off_2785DA000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v33 = a2;
    v14 = v13;
    v31 = swift_slowAlloc();
    v34 = v31;
    *v14 = 136315138;
    v15 = [v9 request];
    v32 = v9;
    v16 = v15;
    v17 = [v15 identifier];
    v30 = v4;
    v18 = v17;

    v19 = sub_2278C7700();
    v21 = v20;

    v22 = sub_2278021B4(v19, v21, &v34);
    v12 = &off_2785DA000;

    *(v14 + 4) = v22;
    v9 = v32;
    _os_log_impl(&dword_2277F7000, v10, v11, "Suppressing posted notifcation: %s", v14, 0xCu);
    v23 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA9E860](v23, -1, -1);
    v24 = v14;
    a2 = v33;
    MEMORY[0x22AA9E860](v24, -1, -1);

    (*(v5 + 8))(v7, v30);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v25 = [v9 request];
  v26 = [v25 v12[237]];

  v27 = sub_2278C7700();
  v29 = v28;

  *a2 = v27;
  a2[1] = v29;
}

uint64_t sub_2278682F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_2278C6540();
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2278C6910();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2278C6820();
  v43 = *(v45 - 8);
  v6 = v43;
  v7 = MEMORY[0x28223BE20](v45);
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = &v43 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v44 = &v43 - v14;
  v15 = sub_2278C6920();
  v48 = v15;
  v57 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v46 = v20;
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  v21 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v21(v13);
  v22 = v44;
  sub_2278C6890();
  v47 = *(v6 + 8);
  v23 = v45;
  v47(v13, v45);
  v24 = *(v57 + 8);
  v57 += 8;
  v49 = v24;
  v24(v18, v15);
  v25 = v52;
  v26 = v50;
  v27 = v54;
  (*(v52 + 104))(v50, *MEMORY[0x277CC9968], v54);
  v28 = v22;
  sub_2278C66E0();
  (*(v25 + 8))(v26, v27);
  sub_2278040AC(v1 + 16, v59);
  v29 = *(v43 + 16);
  v29(v51, v13, v23);
  v30 = v23;
  v29(v53, v28, v23);
  v31 = v55;
  sub_2278C6520();
  sub_2278040AC(v1 + 56, v58);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v58, v58[3]);
  MEMORY[0x28223BE20](v32);
  v34 = &v43 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34);
  sub_227869CE4(v59, v31, v34);
  __swift_destroy_boxed_opaque_existential_0(v58);

  v37 = sub_227869FAC(v36);
  v38 = type metadata accessor for TypicalDayProvider();
  v39 = v56;
  v56[3] = v38;
  v39[4] = &off_283AED4B0;
  v40 = v39;

  *v40 = v37;
  v41 = v47;
  v47(v13, v30);
  v41(v28, v30);
  return v49(v46, v48);
}

void sub_227868888(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22786A1A0(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_2278688F4(v4);
  *a1 = v2;
}

void sub_2278688F4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2278C7D90();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2278C77D0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_227868ABC(v7, v8, a1, v4);
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
    sub_2278689EC(0, v2, 1, a1);
  }
}

uint64_t sub_2278689EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2278C7DC0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_227868ABC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_22786934C(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_227869098((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_2278C7DC0();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_2278C7DC0()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22780202C(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_22780202C((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_227869098((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22786934C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_2278692C0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_2278C7DC0() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

uint64_t sub_227869098(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2278C7DC0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2278C7DC0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2278692C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22786934C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_227869360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2278C6640();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
  return sub_2278C6A50();
}

uint64_t sub_2278694CC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);

  return sub_2278C6A50();
}

double sub_22786957C(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(v9, a5);
  v6 = v9[0];
  v7 = v9[1];
  v10 = 0;
  a1(v9);

  return sub_22786C470(v6, v7, 0);
}

uint64_t sub_227869618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6408, &unk_2278CD3B0);
  v9 = sub_2278C6A60();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_22786C450, v10);
}

double sub_2278696EC(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6408, &unk_2278CD3B0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20[-1] - v14;
  if (a3)
  {
    a6(a1);
    v16 = sub_2278C6A60();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    v16(sub_22786C468, v17);

    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v20[0] = a1;
    v20[1] = a2;
    v21 = 0;

    a4(v20);
    return sub_22786C470(a1, a2, 0);
  }

  return result;
}

double sub_227869894(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(v9, a5);
  v6 = v9[0];
  v7 = v9[1];
  v10 = 0;
  a1(v9);

  return sub_22786C470(v6, v7, 0);
}

uint64_t sub_227869930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6400, &qword_2278CD3A8);
  v9 = sub_2278C6A60();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;

  v9(sub_22786C4CC, v10);
}

void sub_227869A04(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6408, &unk_2278CD3B0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_2278C6640();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6428, &unk_2278CD3C8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_227850448(a1, &v20 - v14, &qword_27D7D6428, &unk_2278CD3C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25[0] = *v15;
    v16 = v25[0];
    v25[1] = 0;
    v26 = 1;
    v17 = v25[0];
    v23(v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_2278C6A60();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_22786C5C8, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_227869CE4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateProvider(0);
  v26 = v6;
  v27 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  sub_2278238F8(a3, boxed_opaque_existential_1);
  v24[3] = &type metadata for FirstOnWristQuery;
  v24[4] = &off_283AECF20;
  type metadata accessor for TypicalDayDataSource(0);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  __swift_mutable_project_boxed_opaque_existential_1(v24, &type metadata for FirstOnWristQuery);
  v23[3] = v6;
  v23[4] = &off_283AE99D8;
  v13 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_2278238F8(v11, v13);
  v22[3] = &type metadata for FirstOnWristQuery;
  v22[4] = &off_283AECF20;
  sub_2278040AC(a1, v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_activityDataQuery);
  v14 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateInterval;
  v15 = sub_2278C6540();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v8 + v14, a2, v15);
  sub_2278040AC(v23, v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider);
  sub_2278040AC(v22, v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_firstOnWristQuery);
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  (*(v16 + 8))(a2, v15);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  *(v8 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_lock) = v17;
  v19 = OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_state;
  v20 = type metadata accessor for TypicalDayDataSource.Content(0);
  (*(*(v20 - 8) + 56))(v8 + v19, 1, 1, v20);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v8;
}

uint64_t *sub_227869FAC(uint64_t *a1)
{
  v1 = *a1;
  v13[3] = v1;
  v13[4] = &off_283AEBD38;
  v13[0] = a1;
  v2 = type metadata accessor for TypicalDayProvider();
  v3 = objc_allocWithZone(v2);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v13, v1);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - v5);
  (*(v7 + 16))(&v11 - v5);
  v8 = *v6;
  v12[3] = v1;
  v12[4] = &off_283AEBD38;
  v12[0] = v8;
  *&v3[OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_state] = 0;
  sub_2278040AC(v12, &v3[OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource]);
  v11.receiver = v3;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v9;
}

unint64_t sub_22786A114()
{
  result = qword_27D7D63F8;
  if (!qword_27D7D63F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7D63F0, &qword_2278CD388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D63F8);
  }

  return result;
}

uint64_t sub_22786A1B4(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_2278C75A0();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = sub_2278C6DB0();
  v1[23] = v3;
  v4 = *(v3 - 8);
  v1[24] = v4;
  v1[25] = *(v4 + 64);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = sub_2278C6950();
  v1[29] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6400, &qword_2278CD3A8);
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v1[32] = *(v6 + 64);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6408, &unk_2278CD3B0);
  v1[35] = v7;
  v8 = *(v7 - 8);
  v1[36] = v8;
  v1[37] = *(v8 + 64);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v9 = sub_2278C6640();
  v1[41] = v9;
  v1[42] = *(v9 - 8);
  v1[43] = swift_task_alloc();
  v10 = sub_2278C6A40();
  v1[44] = v10;
  v1[45] = *(v10 - 8);
  v1[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6410, &unk_2278CE830);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6418, &qword_2278CD3C0);
  v1[49] = v11;
  v1[50] = *(v11 - 8);
  v1[51] = swift_task_alloc();
  v12 = sub_2278C69B0();
  v1[52] = v12;
  v1[53] = *(v12 - 8);
  v1[54] = swift_task_alloc();
  v13 = sub_2278C6C90();
  v1[55] = v13;
  v1[56] = *(v13 - 8);
  v1[57] = swift_task_alloc();
  v14 = sub_2278C6A20();
  v1[58] = v14;
  v1[59] = *(v14 - 8);
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v15 = sub_2278C6D60();
  v1[62] = v15;
  v1[63] = *(v15 - 8);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22786A710, 0, 0);
}

uint64_t sub_22786A710()
{
  v1 = v0[65];
  v2 = v0[62];
  v3 = v0[63];
  sub_2278C6DA0();
  (*(v3 + 104))(v1, *MEMORY[0x277D09868], v2);
  sub_22786C114();
  sub_2278C7770();
  sub_2278C7770();
  if (v0[12] == v0[14] && v0[13] == v0[15])
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2278C7DC0();
  }

  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[62];
  v8 = v0[63];
  v9 = *(v8 + 8);
  v0[67] = v9;
  v0[68] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v7);
  v9(v5, v7);

  if ((v4 & 1) == 0 && (sub_2278C6D70() & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = sub_2278C6D90();
  v18 = v10;
  v19 = *(v10 + 16);
  if (!v19)
  {
LABEL_12:

LABEL_13:

    v23 = v0[1];

    return v23(0, 0);
  }

  v20 = 0;
  v21 = v0[59];
  v22 = (v21 + 8);
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
      return MEMORY[0x2822008A0](v10, v11, v12, v13, v14, v15, v16, v17);
    }

    (*(v21 + 16))(v0[60], v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v20, v0[58]);
    if ((sub_2278C6A10() & 1) == 0)
    {
      break;
    }

    ++v20;
    v10 = (*v22)(v0[60], v0[58]);
    if (v19 == v20)
    {
      goto LABEL_12;
    }
  }

  v25 = v0[60];
  v26 = v0[61];
  v27 = v0[58];
  v28 = v0[59];
  v29 = v0[56];
  v37 = v0[57];
  v30 = v0[55];
  v39 = v0[51];

  (*(v28 + 32))(v26, v25, v27);
  sub_2278C6A00();
  (*v22)(v26, v27);
  sub_2278C6C30();
  sub_2278002AC();
  sub_2278C7A60();
  v31 = *MEMORY[0x277D4F368];
  v38 = *(v29 + 104);
  v38(v37, v31, v30);
  v32 = sub_2278C6C80();
  v33 = MEMORY[0x277D4F358];
  v0[5] = v32;
  v0[6] = v33;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2278C6C70();
  sub_2278C6CC0();
  swift_allocObject();
  sub_2278C6CB0();
  sub_2278C7A60();
  v0[69] = sub_2278C6C20();
  sub_2278C6C50();
  sub_2278C7A60();
  v38(v37, v31, v30);
  v0[10] = v32;
  v0[11] = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_2278C6C70();
  swift_allocObject();
  sub_2278C6CB0();
  sub_2278C7A60();
  v34 = sub_2278C6C40();
  v0[70] = v34;
  v0[18] = v34;
  sub_2278C6C60();

  v35 = swift_task_alloc();
  v0[71] = v35;
  *(v35 + 16) = "FitnessCoachingServices/FitnessPlusPlanService.swift";
  *(v35 + 24) = 52;
  *(v35 + 32) = 2;
  *(v35 + 40) = 84;
  *(v35 + 48) = v39;
  v36 = swift_task_alloc();
  v0[72] = v36;
  *v36 = v0;
  v36[1] = sub_22786AD20;
  v10 = v0[54];
  v17 = v0[52];
  v15 = sub_22786C16C;
  v14 = 0x80000002278D2430;
  v11 = 0;
  v12 = 0;
  v13 = 0xD000000000000013;
  v16 = v35;

  return MEMORY[0x2822008A0](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_22786AD20()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = sub_22786B534;
  }

  else
  {
    (*(v2[50] + 8))(v2[51], v2[49]);
    v3 = sub_22786AE70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22786AE70()
{
  v1 = v0[48];
  v41 = v0[47];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[44];
  v5 = v0[42];
  v43 = v0[41];
  sub_2278C6990();
  sub_2278C6A30();
  (*(v2 + 8))(v3, v4);
  sub_2278C69A0();
  sub_2278C6600();
  sub_227850448(v1, v41, &qword_27D7D6410, &unk_2278CE830);
  if ((*(v5 + 48))(v41, 1, v43) == 1)
  {
    v7 = v0[53];
    v6 = v0[54];
    v8 = v0[52];
    v10 = v0[47];
    v9 = v0[48];

    sub_227802FC4(v9, &qword_27D7D6410, &unk_2278CE830);
    (*(v7 + 8))(v6, v8);
    sub_227802FC4(v10, &qword_27D7D6410, &unk_2278CE830);

    v11 = v0[1];

    return v11(0, 0);
  }

  else
  {
    v44 = v0[40];
    v13 = v0[36];
    v40 = v0[38];
    v42 = v0[37];
    v14 = v0[34];
    v15 = v0[33];
    v34 = v0[32];
    v35 = v0[39];
    v16 = v0[31];
    v33 = v0[30];
    v17 = v0[29];
    v18 = v0[24];
    v39 = v0[35];
    v37 = v0[23];
    v38 = v0[27];
    v36 = v0[19];
    (*(v0[42] + 32))(v0[43], v0[47], v0[41]);
    swift_storeEnumTagMultiPayload();
    sub_2278C6C10();
    sub_22786C184(v17);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_2278662A4;
    *(v19 + 24) = 0;
    (*(v16 + 16))(v15, v14, v33);
    v20 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v21 = swift_allocObject();
    (*(v16 + 32))(v21 + v20, v15, v33);
    v22 = (v21 + ((v34 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = sub_22786C1E0;
    v22[1] = v19;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
    sub_2278C6A50();
    (*(v16 + 8))(v14, v33);
    (*(v18 + 16))(v38, v36, v37);
    v24 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v25 = swift_allocObject();
    (*(v18 + 32))(v25 + v24, v38, v37);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_22786C210;
    *(v26 + 24) = v25;
    (*(v13 + 16))(v40, v35, v39);
    v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v28 = swift_allocObject();
    (*(v13 + 32))(v28 + v27, v40, v39);
    v29 = (v28 + ((v42 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_22786C28C;
    v29[1] = v26;
    sub_2278C6A50();
    v30 = *(v13 + 8);
    v0[74] = v30;
    v0[75] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v35, v39);
    v31 = swift_task_alloc();
    v0[76] = v31;
    *(v31 + 16) = "FitnessCoachingServices/FitnessPlusPlanService.swift";
    *(v31 + 24) = 52;
    *(v31 + 32) = 2;
    *(v31 + 40) = 106;
    *(v31 + 48) = v44;
    v32 = swift_task_alloc();
    v0[77] = v32;
    *v32 = v0;
    v32[1] = sub_22786B948;

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x80000002278D2430, sub_22786C420, v31, v23);
  }
}

uint64_t sub_22786B534()
{
  v37 = v0;
  (*(v0[50] + 8))(v0[51], v0[49]);
  v1 = v0[73];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[19];
  sub_2278C7370();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_2278C7590();
  v8 = sub_2278C7950();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[64];
    v28 = v0[62];
    v29 = v0[67];
    v10 = v0[26];
    v11 = v0[24];
    v30 = v0[23];
    v33 = v0[21];
    v34 = v0[20];
    v35 = v0[22];
    log = v7;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v12 = 136315394;
    sub_2278C6DA0();
    v14 = sub_2278C6D50();
    v16 = v15;
    v29(v9, v28);
    (*(v11 + 8))(v10, v30);
    v17 = sub_2278021B4(v14, v16, &v36);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_2277F7000, log, v8, "[%s] Unable to get attachement for notification : %@", v12, 0x16u);
    sub_227802FC4(v13, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9E860](v32, -1, -1);
    MEMORY[0x22AA9E860](v12, -1, -1);

    (*(v33 + 8))(v35, v34);
  }

  else
  {
    v20 = v0[26];
    v21 = v0[23];
    v22 = v0[24];
    v24 = v0[21];
    v23 = v0[22];
    v25 = v0[20];

    (*(v22 + 8))(v20, v21);
    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[1];

  return v26(0, 0);
}

uint64_t sub_22786B948()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {

    v3 = sub_22786BCAC;
  }

  else
  {
    v4 = *(v2 + 592);
    v5 = *(v2 + 320);
    v6 = *(v2 + 280);
    *(v2 + 632) = *(v2 + 128);

    v4(v5, v6);
    v3 = sub_22786BAB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22786BAB0()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v4 = v0[48];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[41];

  (*(v6 + 8))(v5, v7);
  sub_227802FC4(v4, &qword_27D7D6410, &unk_2278CE830);
  (*(v2 + 8))(v1, v3);
  v11 = v0[80];
  v10 = v0[79];

  v8 = v0[1];

  return v8(v10, v11);
}

uint64_t sub_22786BCAC()
{
  v44 = v0;
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 384);
  v6 = *(v0 + 336);
  v5 = *(v0 + 344);
  v7 = *(v0 + 328);
  (*(v0 + 592))(*(v0 + 320), *(v0 + 280));
  (*(v6 + 8))(v5, v7);
  sub_227802FC4(v4, &qword_27D7D6410, &unk_2278CE830);
  (*(v2 + 8))(v1, v3);
  v8 = *(v0 + 624);
  v9 = *(v0 + 208);
  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  v12 = *(v0 + 152);
  sub_2278C7370();
  (*(v11 + 16))(v9, v12, v10);
  v13 = v8;
  v14 = sub_2278C7590();
  v15 = sub_2278C7950();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 512);
    v35 = *(v0 + 496);
    v36 = *(v0 + 536);
    v17 = *(v0 + 208);
    v18 = *(v0 + 192);
    v37 = *(v0 + 184);
    v40 = *(v0 + 168);
    v41 = *(v0 + 160);
    v42 = *(v0 + 176);
    log = v14;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43 = v39;
    *v19 = 136315394;
    sub_2278C6DA0();
    v21 = sub_2278C6D50();
    v23 = v22;
    v36(v16, v35);
    (*(v18 + 8))(v17, v37);
    v24 = sub_2278021B4(v21, v23, &v43);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2112;
    v25 = v8;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v26;
    *v20 = v26;
    _os_log_impl(&dword_2277F7000, log, v15, "[%s] Unable to get attachement for notification : %@", v19, 0x16u);
    sub_227802FC4(v20, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AA9E860](v39, -1, -1);
    MEMORY[0x22AA9E860](v19, -1, -1);

    (*(v40 + 8))(v42, v41);
  }

  else
  {
    v27 = *(v0 + 208);
    v28 = *(v0 + 184);
    v29 = *(v0 + 192);
    v31 = *(v0 + 168);
    v30 = *(v0 + 176);
    v32 = *(v0 + 160);

    (*(v29 + 8))(v27, v28);
    (*(v31 + 8))(v30, v32);
  }

  v33 = *(v0 + 8);

  return v33(0, 0);
}

unint64_t sub_22786C114()
{
  result = qword_27D7D6420;
  if (!qword_27D7D6420)
  {
    sub_2278C6D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6420);
  }

  return result;
}

uint64_t sub_22786C184(uint64_t a1)
{
  v2 = sub_2278C6950();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_15Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_22786C358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

double sub_22786C470(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_31Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_22786C518(void (*a1)(void *), uint64_t a2)
{
  v5 = *(sub_2278C6640() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_227869894(a1, a2, v6, v7, v8);
}

uint64_t sub_22786C5CC()
{
  result = sub_2278C76F0();
  qword_2813BC3B0 = result;
  return result;
}

uint64_t sub_22786C604()
{
  result = sub_2278C76F0();
  qword_2813BC3C0 = result;
  return result;
}

uint64_t sub_22786C644()
{
  result = sub_2278C76F0();
  qword_2813BC3B8 = result;
  return result;
}

id sub_22786C6CC()
{
  v32 = sub_2278C6820();
  v1 = *(v32 - 8);
  v2 = MEMORY[0x28223BE20](v32);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v30 = &v25 - v4;
  v33 = v0;
  v5 = *(v0 + 56);
  result = [v5 allRequests];
  if (result)
  {
    v7 = result;
    sub_22786D8E0();
    v8 = sub_2278C77A0();

    v34 = MEMORY[0x277D84F90];
    if (v8 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2278C7B80())
    {
      v25 = v5;
      v26 = v8;
      v10 = 0;
      v28 = v8 & 0xFFFFFFFFFFFFFF8;
      v29 = v8 & 0xC000000000000001;
      v5 = v1 + 1;
      v27 = i;
      while (1)
      {
        if (v29)
        {
          v11 = MEMORY[0x22AA9DBF0](v10, v8);
        }

        else
        {
          if (v10 >= *(v28 + 16))
          {
            goto LABEL_16;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v1 = v11;
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v13 = [v11 expirationDate];
        v14 = v30;
        sub_2278C6800();

        __swift_project_boxed_opaque_existential_1((v33 + 16), *(v33 + 40));
        v15 = off_283AE99E0;
        type metadata accessor for DateProvider(0);
        v16 = v31;
        v15(v31);
        LOBYTE(v13) = sub_2278C6710();
        v17 = *v5;
        v18 = v32;
        (*v5)(v16, v32);
        v17(v14, v18);
        if (v13)
        {
          sub_2278C7CB0();
          sub_2278C7CE0();
          sub_2278C7CF0();
          sub_2278C7CC0();
        }

        else
        {
        }

        v8 = v26;
        ++v10;
        if (v12 == v27)
        {
          v19 = v34;
          v5 = v25;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v19 = MEMORY[0x277D84F90];
LABEL_19:

    if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
    {
      goto LABEL_32;
    }

    for (j = *(v19 + 16); j; j = sub_2278C7B80())
    {
      for (k = 0; ; ++k)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x22AA9DBF0](k, v19);
        }

        else
        {
          if (k >= *(v19 + 16))
          {
            goto LABEL_31;
          }

          v22 = *(v19 + 8 * k + 32);
        }

        v23 = v22;
        v24 = k + 1;
        if (__OFADD__(k, 1))
        {
          break;
        }

        [v5 removeNotificationSuppressionRequest_];

        if (v24 == j)
        {
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }
  }

  return result;
}

void sub_22786CA3C()
{
  v1 = sub_2278C6820();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v49 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v50 = &v41 - v11;
  v12 = [*(v0 + 56) allRequests];
  if (v12)
  {
    v13 = v12;
    sub_22786D8E0();
    v14 = sub_2278C77A0();

    if (v14 >> 62)
    {
LABEL_31:
      v15 = sub_2278C7B80();
      if (v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_4:
        v46 = v14 & 0xC000000000000001;
        v42 = v5;
        v43 = v8;
        if ((v14 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x22AA9DBF0](0, v14);
        }

        else
        {
          if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v16 = *(v14 + 32);
        }

        v5 = v16;
        v41 = v2;
        v44 = v0;
        if (v15 != 1)
        {
          v45 = v14 & 0xFFFFFFFFFFFFFF8;
          v17 = (v2 + 8);
          v2 = 1;
          v47 = v1;
          while (2)
          {
            v48 = v5;
            v1 = v2;
            while (1)
            {
              if (v46)
              {
                v18 = MEMORY[0x22AA9DBF0](v1, v14);
              }

              else
              {
                if ((v1 & 0x8000000000000000) != 0)
                {
                  goto LABEL_29;
                }

                if (v1 >= *(v45 + 16))
                {
                  goto LABEL_30;
                }

                v18 = *(v14 + 8 * v1 + 32);
              }

              v19 = v18;
              v2 = v1 + 1;
              if (__OFADD__(v1, 1))
              {
                __break(1u);
LABEL_29:
                __break(1u);
LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

              v8 = v14;
              v20 = [v48 expirationDate];
              v5 = v50;
              sub_2278C6800();

              v21 = [v19 expirationDate];
              v22 = v49;
              sub_2278C6800();

              v0 = sub_2278C6770();
              v23 = *v17;
              v24 = v22;
              v25 = v47;
              (*v17)(v24, v47);
              v23(v5, v25);
              if (v0)
              {
                break;
              }

              ++v1;
              v14 = v8;
              if (v2 == v15)
              {
                v1 = v47;
                v5 = v48;
                v0 = v44;
                goto LABEL_24;
              }
            }

            v1 = v47;
            v0 = v44;
            v14 = v8;
            v5 = v19;
            if (v2 != v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_24:

        if (v5)
        {
          v28 = [v5 expirationDate];
          v29 = v42;
          sub_2278C6800();

          v30 = v41;
          v31 = v43;
          (*(v41 + 32))(v43, v29, v1);
          __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
          v32 = off_283AE99E0;
          type metadata accessor for DateProvider(0);
          v33 = v50;
          v32(v50);
          v34 = sub_2278C6740();
          v35 = *(v30 + 8);
          v35(v33, v1);
          if (v34)
          {
            v36 = *(v44 + 64);
            v37 = sub_2278C76F0();
            v38 = sub_2278C67D0();
            [v36 scheduleActivityWithName:v37 scheduledDate:v38];

            v35(v31, v1);
            return;
          }

          v35(v31, v1);
          v0 = v44;
        }

        goto LABEL_33;
      }
    }

    v5 = 0;
LABEL_33:
    v39 = *(v0 + 64);
    v40 = sub_2278C76F0();
    [v39 cancelActivityWithName_];

    return;
  }

  v26 = *(v0 + 64);
  v50 = sub_2278C76F0();
  [v26 cancelActivityWithName_];
  v27 = v50;
}

uint64_t sub_22786CF74()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_22786CFE0()
{
  v1 = v0;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  sub_2278C7580();
  (*(v3 + 8))(v5, v2);
  sub_22786C6CC();
  sub_22786CA3C();
  v6 = *(v1 + 56);
  LODWORD(v2) = [v6 lastNotifiedSuppressionState];
  result = [v6 notificationsSuppressed];
  if (v2 != result)
  {
    v8 = result;
    notify_post(*MEMORY[0x277D09BA8]);
    return [v6 setLastNotifiedSuppressionState_];
  }

  return result;
}

uint64_t sub_22786D13C(void *a1)
{
  v2 = v1;
  v4 = sub_2278C75A0();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2278C6820();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v29 = a1;
  v13 = [a1 expirationDate];
  sub_2278C6800();

  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v14 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  v14(v10);
  LOBYTE(v13) = sub_2278C6740();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  if (v13)
  {
    v16 = v2[7];
    v17 = v29;
    [v16 addNotificationSuppressionRequest_];
    sub_22786C6CC();
    sub_22786CA3C();
    v18 = [v16 lastNotifiedSuppressionState];
    v19 = [v16 notificationsSuppressed];
    if (v18 != v19)
    {
      v20 = v19;
      notify_post(*MEMORY[0x277D09BA8]);
      [v16 setLastNotifiedSuppressionState_];
    }

    v21 = v30;
    sub_2278C73A0();
    v22 = v17;
    v23 = sub_2278C7590();
    v24 = sub_2278C7970();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_2277F7000, v23, v24, "Added notification suppression request: %@", v25, 0xCu);
      sub_227848BE0(v26);
      MEMORY[0x22AA9E860](v26, -1, -1);
      MEMORY[0x22AA9E860](v25, -1, -1);
    }

    return (*(v31 + 8))(v21, v32);
  }

  else
  {
    sub_22786D92C();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22786D4D0(void *a1)
{
  v3 = sub_2278C75A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 56);
  [v7 removeNotificationSuppressionRequest_];
  sub_22786C6CC();
  sub_22786CA3C();
  v8 = [v7 lastNotifiedSuppressionState];
  v9 = [v7 notificationsSuppressed];
  if (v8 != v9)
  {
    v10 = v9;
    notify_post(*MEMORY[0x277D09BA8]);
    [v7 setLastNotifiedSuppressionState_];
  }

  sub_2278C73A0();
  v11 = a1;
  v12 = sub_2278C7590();
  v13 = sub_2278C7970();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_2277F7000, v12, v13, "Removed notification suppression request: %@", v14, 0xCu);
    sub_227848BE0(v15);
    MEMORY[0x22AA9E860](v15, -1, -1);
    MEMORY[0x22AA9E860](v14, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_22786D73C()
{
  v1 = v0;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2277F7000, v6, v7, "Notification suppression expiration activity fired", v8, 2u);
    MEMORY[0x22AA9E860](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_22786C6CC();
  sub_22786CA3C();
  v9 = *(v1 + 56);
  v10 = [v9 lastNotifiedSuppressionState];
  result = [v9 notificationsSuppressed];
  if (v10 != result)
  {
    v12 = result;
    notify_post(*MEMORY[0x277D09BA8]);
    return [v9 setLastNotifiedSuppressionState_];
  }

  return result;
}

unint64_t sub_22786D8E0()
{
  result = qword_2813B9AC0;
  if (!qword_2813B9AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9AC0);
  }

  return result;
}

unint64_t sub_22786D92C()
{
  result = qword_27D7D6490;
  if (!qword_27D7D6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6490);
  }

  return result;
}

uint64_t sub_22786D980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2278003CC;

  return v9(a1, a2, a3);
}

uint64_t sub_22786DAA8(void *a1, void *a2)
{
  if ((![a1 unearned] || (v5 = objc_msgSend(a2, sel_unachievedAlertDescriptionForAchievement_fitnessExperienceType_, a1, *(v2 + 120))) == 0) && ((objc_msgSend(a1, sel_unearned) & 1) != 0 || (v5 = objc_msgSend(a2, sel_achievedAlertDescriptionForAchievement_fitnessExperienceType_, a1, *(v2 + 120))) == 0))
  {
    v5 = [a2 unachievedDescriptionForAchievement_];
    if (!v5)
    {
      return 0;
    }
  }

  v6 = v5;
  v7 = sub_2278C7700();

  return v7;
}

uint64_t sub_22786DB84(uint64_t a1)
{
  sub_227839268(0, &qword_2813B9B00, 0x277CBEB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D0, qword_2278CB330);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2278C9140;
  v2 = sub_2278C7700();
  v3 = MEMORY[0x277D837D0];
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  *(v1 + 88) = MEMORY[0x277D83B88];
  *(v1 + 56) = v3;
  *(v1 + 64) = 2;
  sub_227839268(0, &qword_2813B9B70, 0x277CBEAC0);
  v5 = sub_2278C7940();
  v6 = sub_2278C7930();

  v7 = v6;
  ACHEncodeAchievementIntoUserInfoDictionary();
  sub_2278C7650();

  return 0;
}

uint64_t sub_22786DCB8(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_2278C6860();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v4 = sub_2278C7420();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22786DE6C, 0, 0);
}

uint64_t sub_22786DE6C(uint64_t a1)
{
  v102 = v1;
  v2 = v1[38];
  v3 = v1[32];
  v4 = v1[33];
  v6 = v1[30];
  v5 = v1[31];
  v7 = v1[28];
  v8 = v1[29];
  sub_2278C73A0();
  sub_2278C7580();
  v99 = *(v4 + 8);
  v99(v2, v3);
  v9 = sub_2278C72F0();
  v1[39] = v9;
  sub_2278C7430();
  sub_2278C73D0();
  sub_2278011DC();
  LOBYTE(v2) = sub_2278C7AE0();
  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  if ((v2 & 1) == 0)
  {
    sub_2278C7360();
    v17 = v9;
    v18 = sub_2278C7590();
    v19 = sub_2278C7970();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v101[0] = v21;
      *v20 = 136315138;
      v22 = [v17 template];
      v23 = [v22 uniqueName];

      if (v23)
      {
        v24 = sub_2278C7700();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v98 = v1[34];
      v72 = v1[32];
      v1[18] = v24;
      v1[19] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
      v73 = sub_2278C7AA0();
      v75 = v74;

      v76 = sub_2278021B4(v73, v75, v101);

      *(v20 + 4) = v76;
      v77 = "Not posting achievement notification for %s, disabled for platform";
      goto LABEL_29;
    }

    v32 = v1[34];
LABEL_13:
    v33 = v1[32];

    v99(v32, v33);
LABEL_30:

    v85 = v1[1];
    goto LABEL_34;
  }

  if (!sub_22785ACAC())
  {
    sub_2278C7380();
    v17 = v9;
    v18 = sub_2278C7590();
    v19 = sub_2278C7970();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v101[0] = v21;
      *v20 = 136315138;
      v27 = [v17 template];
      v28 = [v27 uniqueName];

      if (v28)
      {
        v29 = sub_2278C7700();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v98 = v1[35];
      v72 = v1[32];
      v1[20] = v29;
      v1[21] = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
      v81 = sub_2278C7AA0();
      v83 = v82;

      v84 = sub_2278021B4(v81, v83, v101);

      *(v20 + 4) = v84;
      v77 = "Not posting achievement notification for %s, fitness tracking is disabled";
LABEL_29:
      _os_log_impl(&dword_2277F7000, v18, v19, v77, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9E860](v21, -1, -1);
      MEMORY[0x22AA9E860](v20, -1, -1);

      v99(v98, v72);
      goto LABEL_30;
    }

    v32 = v1[35];
    goto LABEL_13;
  }

  v11 = v1[24];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v12 = sub_2278C6FF0();
  v13 = [objc_allocWithZone(MEMORY[0x277CE8CB8]) init];
  v1[40] = v13;
  v14 = __swift_project_boxed_opaque_existential_1(v11 + 5, v11[8]);
  sub_227865154(*v14);
  if (v15)
  {
    v16 = sub_2278C76F0();
  }

  else
  {
    v16 = 0;
  }

  v34 = v1[24];
  [v13 setName_];

  [v13 setWheelchairUser_];
  [v13 setActivityMoveMode_];
  [v13 setAchUnitManager_];
  sub_2278C7380();
  v35 = v13;
  v36 = sub_2278C7590();
  v37 = sub_2278C7970();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v1[37];
  v40 = v1[32];
  if (v38)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v101[0] = v42;
    *v41 = 136315138;
    v1[22] = [v35 achUnitManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64B8, &unk_2278CD508);
    v96 = v39;
    v43 = sub_2278C7AA0();
    v93 = v40;
    v44 = v35;
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = sub_2278021B4(v43, v46, v101);
    v35 = v44;

    *(v41 + 4) = v47;
    _os_log_impl(&dword_2277F7000, v36, v37, "localizer.achUnitManager set to %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x22AA9E860](v42, -1, -1);
    MEMORY[0x22AA9E860](v41, -1, -1);

    v49 = v93;
    v48 = v96;
  }

  else
  {

    v48 = v39;
    v49 = v40;
  }

  v99(v48, v49);
  [v35 setIsPregnant_];
  v50 = [v35 titleForAchievement_];
  if (v50)
  {
    v51 = v50;
    sub_22786DAA8(v9, v35);
    if (v52)
    {
      if (sub_22786DB84(v9))
      {
        v54 = v1[26];
        v53 = v1[27];
        v94 = v1[25];
        v55 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
        v1[41] = v55;
        [v55 setCategoryIdentifier_];
        [v55 setTitle_];

        v56 = sub_2278C76F0();

        [v55 setBody_];

        v57 = sub_2278C7640();

        [v55 setUserInfo_];

        sub_2278C6850();
        v58 = sub_2278C6840();
        v60 = v59;
        (*(v54 + 8))(v53, v94);
        sub_2278C7380();
        v61 = v9;

        v62 = sub_2278C7590();
        v63 = sub_2278C7970();

        v64 = os_log_type_enabled(v62, v63);
        v65 = v1[36];
        v66 = v1[32];
        if (v64)
        {
          v97 = v58;
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v95 = v65;
          v69 = swift_slowAlloc();
          v101[0] = v69;
          *v67 = 138412546;
          *(v67 + 4) = v61;
          *v68 = v61;
          *(v67 + 12) = 2080;
          v70 = v61;
          *(v67 + 14) = sub_2278021B4(v97, v60, v101);
          _os_log_impl(&dword_2277F7000, v62, v63, "Posting achievement: %@ with identifier: %s", v67, 0x16u);
          sub_227848BE0(v68);
          MEMORY[0x22AA9E860](v68, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x22AA9E860](v69, -1, -1);
          MEMORY[0x22AA9E860](v67, -1, -1);

          v71 = v95;
        }

        else
        {

          v71 = v65;
        }

        v99(v71, v66);
        v87 = v1[24];
        v88 = v55;
        v89 = sub_2278C76F0();

        v90 = [objc_opt_self() requestWithIdentifier:v89 content:v88 trigger:0];
        v1[42] = v90;

        v91 = *__swift_project_boxed_opaque_existential_1((v87 + 136), *(v87 + 160));
        v1[2] = v1;
        v1[3] = sub_22786EA94;
        v92 = swift_continuation_init();
        v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
        v1[10] = MEMORY[0x277D85DD0];
        v1[11] = 1107296256;
        v1[12] = sub_227822B84;
        v1[13] = &block_descriptor_17;
        v1[14] = v92;
        [v91 addNotificationRequest:v90 withCompletionHandler:v1 + 10];

        return MEMORY[0x282200938](v1 + 2);
      }

      v100 = v35;

      sub_22786ED78();
      swift_allocError();
      v80 = 2;
    }

    else
    {
      v100 = v35;

      sub_22786ED78();
      swift_allocError();
      v80 = 1;
    }

    *v79 = v80;
  }

  else
  {
    v100 = v35;
    sub_22786ED78();
    swift_allocError();
    *v78 = 0;
  }

  swift_willThrow();

  v85 = v1[1];
LABEL_34:

  return v85();
}