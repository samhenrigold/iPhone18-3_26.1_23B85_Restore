uint64_t sub_22745ADD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22745AE98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22745AEE0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2276627D0();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_2276694E0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 zoneName];
  if (v16)
  {
    v17 = v16;
    v39 = a2;
    v40 = v4;
    sub_22766C000();

    sub_2276694B0();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_226E97D1C(v10, &qword_27D7B8460, qword_2276709E0);
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
      v18 = [a1 key];
      if (v18)
      {
        v19 = v18;
        v20 = sub_227662590();
        v22 = v21;

        v23 = [a1 etag];
        if (v23)
        {
          v24 = v23;
          v37 = sub_22766C000();
          v38 = v25;

          v26 = [a1 identifier];
          if (v26)
          {
            v27 = v26;
            v28 = v41;
            sub_2276627B0();

            v36 = a1;
            v42 = *(v42 + 32);
            (v42)(v45, v28, v40);
            v29 = v39;
            (*(v12 + 16))(v39, v15, v11);
            v43 = v20;
            v44 = v22;
            v30 = type metadata accessor for SyncEncryptionKey(0);
            v41 = v30[5];
            sub_226F5E0B4(v20, v22);
            sub_22766B490();

            sub_226EDC420(v20, v22);
            (*(v12 + 8))(v15, v11);
            (v42)(v29 + v30[7], v45, v40);
            v31 = (v29 + v30[6]);
            v32 = v38;
            *v31 = v37;
            v31[1] = v32;
            return;
          }

          (*(v12 + 8))(v15, v11);
          sub_226EDC420(v20, v22);
        }

        else
        {
          (*(v12 + 8))(v15, v11);
          sub_226EDC420(v20, v22);
        }
      }

      else
      {
        (*(v12 + 8))(v15, v11);
      }
    }
  }

  v33 = sub_227664DD0();
  sub_226EAC0B4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
  swift_willThrow();
}

uint64_t sub_22745B418(uint64_t a1)
{
  result = sub_226EAC0B4(qword_28139AA58, type metadata accessor for SyncEncryptionKey, &unk_227686058);
  *(a1 + 8) = result;
  return result;
}

void sub_22745B470(void *a1)
{
  sub_2276694C0();
  v2 = sub_22766BFD0();

  [a1 setZoneName_];

  type metadata accessor for SyncEncryptionKey(0);
  sub_22766B470();
  v3 = sub_227662560();
  sub_226EDC420(v6, v7);
  [a1 setKey_];

  v4 = sub_22766BFD0();
  [a1 setEtag_];

  v5 = sub_227662790();
  [a1 setIdentifier_];
}

uint64_t sub_22745B5BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC78, &qword_2276860A0);
  v1 = *(v0 - 8);
  v45 = v0;
  v46 = v1;
  MEMORY[0x28223BE20](v0);
  v42 = &v38 - v2;
  v44 = type metadata accessor for SyncEncryptionKey(0);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B4E0();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2276694D0();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = sub_2274CD740(*(v6 + 16), 0);
    v10 = *(sub_2276694E0() - 8);
    sub_2274CDD98(v60, &v9[(*(v10 + 80) + 32) & ~*(v10 + 80)], v8, v7);
    v12 = v11;
    sub_226EBB21C(v60[0]);
    if (v12 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC80, &qword_2276860A8);
  v13 = sub_22766B4C0();
  v14 = *(v13 - 8);
  *(swift_allocObject() + 16) = xmmword_227670CD0;
  sub_22766B4D0();
  sub_22766B4A0();
  v41 = v13;
  v15 = sub_22766C330();

  v16 = sub_22766C090();
  v17 = sub_227662780();
  v58 = v15;
  v59 = v9;
  v60[0] = &v59;
  v60[1] = &v58;
  v56 = v17;
  v57 = v16;
  v60[2] = &v57;
  v60[3] = &v56;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D30, &qword_227671EF8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC88, qword_2276860B0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v48 = sub_226F5BF60(&qword_27D7B8D40, &qword_27D7B8D30, &qword_227671EF8);
  v49 = sub_226F5BF60(&unk_27D7BDC90, &qword_27D7BDC88, qword_2276860B0);
  v50 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v51 = sub_226F5BF60(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750);
  v18 = sub_2276638E0();

  v19 = *(v18 + 16);
  if (v19)
  {
    v47 = MEMORY[0x277D84F90];
    result = sub_226F1EF70(0, v19, 0);
    v21 = 0;
    v22 = v47;
    v39 = v18 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v38 = (v14 + 16);
    v23 = v4;
    v40 = v18;
    v24 = v42;
    while (v21 < *(v18 + 16))
    {
      v25 = v19;
      sub_22745BC10(v39 + *(v46 + 72) * v21, v24);
      v26 = v45[12];
      v27 = (v24 + v45[16]);
      v28 = *v27;
      v29 = v27[1];
      v30 = v45[20];
      v31 = sub_2276694E0();
      (*(*(v31 - 8) + 16))(v23, v24, v31);
      v32 = v44;
      (*v38)(v23 + *(v44 + 20), v24 + v26, v41);
      v33 = *(v32 + 28);
      v34 = sub_2276627D0();
      (*(*(v34 - 8) + 16))(v23 + v33, v24 + v30, v34);
      v35 = (v23 + *(v32 + 24));
      *v35 = v28;
      v35[1] = v29;

      sub_226E97D1C(v24, &qword_27D7BDC78, &qword_2276860A0);
      v47 = v22;
      v37 = *(v22 + 16);
      v36 = *(v22 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_226F1EF70((v36 > 1), v37 + 1, 1);
        v22 = v47;
      }

      ++v21;
      *(v22 + 16) = v37 + 1;
      result = sub_22706C9CC(v23, v22 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37);
      v19 = v25;
      v18 = v40;
      if (v25 == v21)
      {

        return v22;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22745BC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC78, &qword_2276860A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22745BC80(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_227664900();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22745BFBC(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_22745C02C(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = sub_2276648D0();
  v14 = v13;
  sub_227662570();
  sub_226EDC420(v12, v14);
  v15 = sub_22766BFD0();

  v16 = sub_22766BFD0();
  [v2 setValue:v15 forHTTPHeaderField:v16];

  v17 = sub_2276648C0();
  v19 = v18;
  sub_227662570();
  sub_226EDC420(v17, v19);
  v20 = sub_22766BFD0();

  v21 = sub_22766BFD0();
  [v2 setValue:v20 forHTTPHeaderField:v21];

  sub_2276648F0();
  v22 = sub_22766BFD0();

  v23 = sub_22766BFD0();
  [v2 setValue:v22 forHTTPHeaderField:v23];

  sub_2276648B0();
  v24 = sub_22766BFD0();

  v25 = sub_22766BFD0();
  [v2 setValue:v24 forHTTPHeaderField:v25];

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22745BFBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22745C02C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22745C124@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D20];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22745C19C(uint64_t a1)
{
  v2 = MEMORY[0x277D52D18];
  *(a1 + 24) = sub_22745C220(&qword_2813A5618, MEMORY[0x277D52D18], &unk_22767AEF0);
  result = sub_22745C220(&qword_2813A5610, v2, MEMORY[0x277D52D20]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22745C220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22745C268()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276707E0;
  *(inited + 32) = sub_22766C000();
  *(inited + 40) = v3;
  *(inited + 48) = sub_22766C000();
  *(inited + 56) = v4;
  *(inited + 64) = sub_22766C000();
  *(inited + 72) = v5;
  *(inited + 80) = sub_22766C000();
  *(inited + 88) = v6;
  sub_226F3E6A8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = objc_allocWithZone(MEMORY[0x277CEE668]);
  v8 = sub_22766C570();

  v9 = [v7 initWithEnabledActionTypes_];

  sub_227665910();
  v10 = sub_22766BFD0();

  [v9 setUserNotificationExtensionId_];

  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_bagConsumer), *(v1 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_bagConsumer + 24));
  v11 = v9;
  v12 = [objc_allocWithZone(MEMORY[0x277CEE670]) initWithConfiguration:v11 bag:sub_226E9EF44()];

  swift_unknownObjectRelease();
  [v12 setDelegate_];

  v13 = *(v1 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_state);
  *(v1 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_state) = v12;
}

id sub_22745C478(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EngagementPushHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_22745C52C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_state);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22766BE90();
  v5 = [v3 shouldHandleNotification_];

  return v5;
}

void sub_22745C5C0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_state);
  if (v2)
  {
    v3 = v2;
    v4 = sub_22766BE90();
    [v3 handleNotification_];
  }
}

double sub_22745C6EC(void *a1)
{
  v2 = [a1 badgeIdentifier];
  v3 = sub_22766C000();
  v5 = v4;

  v6 = [a1 bundleIdentifier];
  v7 = sub_22766C000();
  v9 = v8;

  v10 = [a1 enabled];
  v11 = [a1 metrics];
  if (v11)
  {
    v12 = v11;
    v13 = sub_22766BEB0();

    sub_2275A5364(v13);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_226F966B0(v3, v5, v7, v9, v10, v15);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t WorkoutPlanModalityDurationGroup.description.getter()
{
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000002BLL, 0x80000002276A0CB0);
  v0 = sub_22766D140();
  MEMORY[0x22AA98450](v0);

  MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A0CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_227663AD0();
  MEMORY[0x22AA98450]();

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_22745C9B4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_226EC0768(*a1);
  v5 = v4;
  if (v3 == sub_226EC0768(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_22745CA3C()
{
  v1 = *v0;
  sub_22766D370();
  sub_226EC0768(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

double sub_22745CAA0(uint64_t a1)
{
  sub_226EC0768(*v1);
  sub_22766C100();

  return result;
}

uint64_t sub_22745CAF4(uint64_t a1)
{
  v2 = *v1;
  sub_22766D370();
  sub_226EC0768(v2);
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_22745CB54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22745CBB0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22745CB84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_226EC0768(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22745CBB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766D1E0();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for OfflineScriptRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfflineScriptRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22745CD58()
{
  result = qword_27D7BDD20;
  if (!qword_27D7BDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDD20);
  }

  return result;
}

uint64_t sub_22745CDAC()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22745CE6C, 0, 0);
}

uint64_t sub_22745CE6C()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 16) + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_container), *(*(v0 + 16) + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_container + 24));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_22745CF18;

  return sub_22745D918(v1);
}

uint64_t sub_22745CF18(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;

  return MEMORY[0x2822009F8](sub_22745D018, 0, 0);
}

uint64_t sub_22745D018(uint64_t a1)
{
  v17 = v1;
  sub_22766A730();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[7];
    v4 = v1[8];
    v7 = v1[4];
    v6 = v1[5];
    v8 = v1[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_226E97AE8(v5, v4, &v16);
    _os_log_impl(&dword_226E8E000, v2, v3, "Environment: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v12 = v1[4];
    v11 = v1[5];
    v13 = v1[3];

    (*(v12 + 8))(v11, v13);
  }

  sub_22745D1E8(v1[7], v1[8], &unk_283A93C80);

  v14 = v1[1];

  return v14();
}

void sub_22745D1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v3 = sub_22766B390();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B3C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226EA1CF4();
  (*(v7 + 104))(v9, *MEMORY[0x277D851C8], v6);
  v10 = sub_22766C980();
  (*(v7 + 8))(v9, v6);
  v11 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v12 = sub_22766BFD0();
  v13 = sub_22766BFD0();
  v14 = [v11 initWithEnvironmentName:v12 namedDelegatePort:v13 queue:v10];

  if (v14)
  {
    v15 = sub_22766C2B0();
    [v14 _setEnabledTopics_];

    v16 = v26;
    [v14 setDelegate_];
    v17 = *(v16 + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_connection);
    *(v16 + OBJC_IVAR____TtC15SeymourServices19PushServiceObserver_connection) = v14;
  }

  else
  {
    v18 = v23;
    v19 = v24;
    sub_22766A730();
    v20 = sub_22766B380();
    v21 = sub_22766C890();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226E8E000, v20, v21, "Could not create APS Connection.", v22, 2u);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    (*(v18 + 8))(v5, v19);
    sub_22745EBF0();
    swift_allocError();
    swift_willThrow();
  }
}

id sub_22745D540(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PushServiceObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22745D844(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_22766C000();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_22745D918(uint64_t a1)
{
  v3 = sub_22766B390();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();
  v1[21] = type metadata accessor for ServerContainer(0);
  v1[22] = &off_283AC6E68;
  v1[18] = a1;

  return MEMORY[0x2822009F8](sub_22745D9FC, 0, 0);
}

uint64_t sub_22745D9FC()
{
  v1 = xpc_copy_entitlement_for_self();
  v0[36] = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  if (!xpc_string_get_string_ptr(v1))
  {
    swift_unknownObjectRelease();
LABEL_6:
    v2 = sub_22766C000();
    v4 = v7;
    goto LABEL_7;
  }

  v2 = sub_22766C140();
  v4 = v3;
  v0[26] = v2;
  v0[27] = v3;
  v0[28] = sub_22766C000();
  v0[29] = v5;
  sub_226FB2548();
  v6 = sub_22766CBE0();

  if (v6)
  {
    swift_unknownObjectRelease();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(v0 + 18);

    v8 = v0[1];

    return v8(v2, v4);
  }

  __swift_project_boxed_opaque_existential_0(v0 + 18, v0[21]);
  v10 = sub_2274FD99C();
  v0[37] = v10;
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_22745DC38;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDDD8, &qword_2276862B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22745D844;
  v0[13] = &block_descriptor_32;
  v0[14] = v11;
  [v10 serverPreferredPushEnvironmentWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22745DC38()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_22745DDD8;
  }

  else
  {
    v2 = sub_22745DD48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22745DD48()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_22745DDD8(uint64_t a1)
{
  v25 = v1;
  v2 = v1[37];
  v3 = v1[38];
  swift_willThrow();

  sub_22766A730();
  v4 = v3;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v1[34];
    v7 = v1[35];
    v9 = v1[33];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = MEMORY[0x22AA995D0](v1[24], v1[25]);
    v14 = sub_226E97AE8(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v5, v6, "Error querying container for push environment: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v16 = v1[34];
    v15 = v1[35];
    v17 = v1[33];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v1[38];
  v19 = sub_22766C000();
  v21 = v20;

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v1 + 18);

  v22 = v1[1];

  return v22(v19, v21);
}

void *sub_22745DFEC(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  if (a3 >> 60 == 15)
  {
    sub_22766A730();
    v12 = sub_22766B380();
    v13 = sub_22766C890();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226E8E000, v12, v13, "Public APS Token was nil.", v14, 2u);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_22766A730();
    v16 = a1;
    v17 = sub_22766B380();
    v18 = sub_22766C8B0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      result = swift_slowAlloc();
      v29 = result;
      *v19 = 136446210;
      if (!a1)
      {
        __break(1u);
        return result;
      }

      v20 = result;

      v21 = [v16 enabledTopics];
      if (v21)
      {
        v22 = v21;
        v23 = sub_22766C2C0();
      }

      else
      {
        v23 = 0;
      }

      v28 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BDDB8, &qword_2276862A8);
      v24 = sub_22766CB80();
      v26 = v25;

      v27 = sub_226E97AE8(v24, v26, &v29);

      *(v19 + 4) = v27;
      _os_log_impl(&dword_226E8E000, v17, v18, "Received public token on connection with topics: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AA9A450](v20, -1, -1);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    else
    {
    }

    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t sub_22745E2CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  if (a2 >> 60 == 15)
  {
    sub_22766A730();

    v18 = sub_22766B380();
    v19 = sub_22766C890();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = a4;
      v45 = v21;
      *v20 = 136315138;
      v43 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v22 = sub_22766CB80();
      v24 = sub_226E97AE8(v22, v23, &v45);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_226E8E000, v18, v19, "Topic APS Token was nil for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    v25 = *(v12 + 8);
    v26 = v14;
  }

  else
  {
    sub_22766A730();

    v27 = sub_22766B380();
    v28 = sub_22766C8B0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v42 = v11;
      v30 = v29;
      v31 = swift_slowAlloc();
      v41 = a5;
      v32 = v31;
      v44 = a4;
      v45 = v31;
      *v30 = 136315394;
      v43 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v33 = sub_22766CB80();
      v35 = sub_226E97AE8(v33, v34, &v45);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      v43 = v41;
      v44 = a6;
      v36 = sub_22766CB80();
      v38 = sub_226E97AE8(v36, v37, &v45);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_226E8E000, v27, v28, "Received per-topic push token for topic %s identifier %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v32, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);

      return (*(v12 + 8))(v17, v42);
    }

    v25 = *(v12 + 8);
    v26 = v17;
  }

  return v25(v26, v11);
}

void sub_22745E654(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  sub_22766A730();
  v9 = a1;
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  v12 = os_log_type_enabled(v10, v11);
  v51 = v4;
  if (!v12)
  {

    v13 = *(v4 + 8);
    (v13)(v8, v3);
    if (a1)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_7;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v54 = v14;
  *v13 = 136315138;
  if (!a1)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v1 = v14;

  v15 = [v9 topic];
  if (!v15)
  {
LABEL_7:
    v17 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  v16 = v15;
  v17 = sub_22766C000();
  v19 = v18;

LABEL_8:
  v52 = v17;
  v53 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v20 = sub_22766CB80();
  v22 = v21;

  v23 = sub_226E97AE8(v20, v22, &v54);

  *(v13 + 4) = v23;
  _os_log_impl(&dword_226E8E000, v10, v11, "APS Push received: %s", v13, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v1);
  MEMORY[0x22AA9A450](v1, -1, -1);
  MEMORY[0x22AA9A450](v13, -1, -1);

  v13 = *(v51 + 8);
  (v13)(v8, v3);
LABEL_9:
  v24 = [v9 topic];
  if (v24)
  {
    v25 = v24;
    v26 = sub_22766C000();
    v28 = v27;

    if (v26 == 0xD00000000000002DLL && 0x8000000227691DF0 == v28 || (sub_22766D190() & 1) != 0)
    {

      swift_getObjectType();
      sub_2271DC0A8();
      sub_2276699D0();
      return;
    }

    if (v26 == 0xD000000000000012 && 0x8000000227691DD0 == v28)
    {

      goto LABEL_18;
    }

    v29 = sub_22766D190();

    if (v29)
    {
LABEL_18:
      v30 = [v9 userInfo];
      if (v30)
      {
        v31 = v30;
        swift_getObjectType();
        v32 = sub_22766BEB0();

        v52 = v32;
        sub_2271BFCE8();
        sub_2276699D0();

        return;
      }

      goto LABEL_29;
    }
  }

  v33 = v50;
  sub_22766A730();
  v34 = v9;
  v35 = sub_22766B380();
  v36 = sub_22766C890();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v38;
    *v37 = 136446210;
    v39 = [v34 topic];
    if (v39)
    {
      v40 = v39;
      v41 = sub_22766C000();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v52 = v41;
    v53 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v45 = sub_22766CB80();
    v47 = v46;

    v48 = sub_226E97AE8(v45, v47, &v54);

    *(v37 + 4) = v48;
    _os_log_impl(&dword_226E8E000, v35, v36, "APS Push for unknown topic: %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v38, -1, -1);
    MEMORY[0x22AA9A450](v37, -1, -1);

    v44 = v50;
  }

  else
  {

    v44 = v33;
  }

  (v13)(v44, v3);
}

unint64_t sub_22745EBF0()
{
  result = qword_27D7BDDC8;
  if (!qword_27D7BDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDDC8);
  }

  return result;
}

uint64_t sub_22745EC74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  v4 = sub_22745ED30();
  v5 = sub_2271E0640();

  return a3(a1, v4, v5);
}

unint64_t sub_22745ECDC()
{
  result = qword_27D7BDDE0;
  if (!qword_27D7BDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDDE0);
  }

  return result;
}

unint64_t sub_22745ED30()
{
  result = qword_27D7BDDE8;
  if (!qword_27D7BDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDDE8);
  }

  return result;
}

uint64_t sub_22745ED8C(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  do
  {
    if (!v6)
    {
      while (1)
      {
        v8 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v8 >= v7)
        {
          goto LABEL_13;
        }

        v6 = *(v3 + 8 * v8);
        ++v1;
        if (v6)
        {
          v1 = v8;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    v8 = v1;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(result + 56) + ((v8 << 9) | (8 * v9)));
    v11 = __OFADD__(v2, v10);
    v2 += v10;
  }

  while (!v11);
  __break(1u);
LABEL_13:
  if (v2 >= 1)
  {
    v12 = 0;
    v13 = 1 << *(result + 32);
    v14 = *(result + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    v18 = v2;
    v19 = 0.0;
    if ((v15 & v14) == 0)
    {
      goto LABEL_19;
    }

    do
    {
LABEL_17:
      while (1)
      {
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v21 = *(*(result + 56) + ((v12 << 9) | (8 * v20)));
        if (v21)
        {
          break;
        }

        if (!v16)
        {
          goto LABEL_19;
        }
      }

      v23 = v21 / v18;
      v24 = v19;
      v25 = result;
      v26 = log(v23);
      result = v25;
      v19 = v24 - v23 * v26;
    }

    while (v16);
LABEL_19:
    while (1)
    {
      v22 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v22 >= v17)
      {
        return result;
      }

      v16 = *(v3 + 8 * v22);
      ++v12;
      if (v16)
      {
        v12 = v22;
        goto LABEL_17;
      }
    }

LABEL_27:
    __break(1u);
  }

  return result;
}

void *sub_22745EF20(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_2274CDC28(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[7] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_226EB3F78((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[7] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_226EBB21C(result);
  *v1 = v4;
  return result;
}

void sub_22745F204(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_22745F310(uint64_t a1)
{
  v78 = sub_227662750();
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v77 = v11;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_2273A556C(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  sub_2274CE114(&v80, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (v24 < v15)
  {
    goto LABEL_16;
  }

  if (v24)
  {
    v27 = *(v16 + 2);
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (v28)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v29;
  }

  if (v24 != v23)
  {
    sub_226EBB21C(v80);
LABEL_14:
    *v1 = v16;
    return;
  }

LABEL_17:
  v75 = *(v16 + 2);
  v26 = v81;
  v66 = v80;
  v29 = v83;
  v25 = &v85;
  v61 = v82;
  v30 = v84;
  v64 = v81;
  if (v84)
  {
    v31 = v83;
LABEL_27:
    v73 = (v30 - 1) & v30;
    v35 = v78;
    (*(v2 + 16))(v14, *(v66 + 56) + (__clz(__rbit64(v30)) | (v31 << 6)) * v17, v78, v12);
    v68 = *(v2 + 56);
    v68(v14, 0, 1, v35);
    v34 = v31;
    while (1)
    {
      v36 = v76;
      sub_226E93170(v14, v76, &qword_27D7B9690, qword_227670B50);
      v37 = *(v2 + 48);
      v2 += 48;
      v72 = v37;
      if (v37(v36, 1, v35) == 1)
      {
        break;
      }

      v39 = (v4 + 32);
      v63 = (v61 + 64) >> 6;
      v67 = v4 + 56;
      v65 = (v4 + 16);
      v62 = (v4 + 8);
      v38 = v76;
      v74 = v39;
      while (1)
      {
        sub_226E97D1C(v38, &qword_27D7B9690, qword_227670B50);
        v40 = *(v16 + 3);
        v41 = v40 >> 1;
        if ((v40 >> 1) < v75 + 1)
        {
          v16 = sub_2273A556C((v40 > 1), v75 + 1, 1, v16);
          v41 = *(v16 + 3) >> 1;
        }

        v42 = v77;
        sub_226E93170(v14, v77, &qword_27D7B9690, qword_227670B50);
        if (v72(v42, 1, v78) != 1)
        {
          break;
        }

        v43 = v34;
        v44 = v77;
        v4 = v75;
LABEL_38:
        v34 = v43;
        sub_226E97D1C(v44, &qword_27D7B9690, qword_227670B50);
        v75 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v38 = v76;
        sub_226E93170(v14, v76, &qword_27D7B9690, qword_227670B50);
        if (v72(v38, 1, v78) == 1)
        {
          goto LABEL_30;
        }
      }

      v70 = &v16[v18];
      v4 = v75;
      v45 = *v74;
      if (v75 <= v41)
      {
        v46 = v41;
      }

      else
      {
        v46 = v75;
      }

      v71 = v46;
      v44 = v77;
      v47 = v78;
      v48 = v79;
      v69 = v45;
      while (1)
      {
        v52 = v48;
        v53 = v44;
        v54 = v47;
        v55 = v45;
        v45(v52, v53, v47);
        if (v4 == v71)
        {
          (*v62)(v79, v54);
          v4 = v71;
          v75 = v71;
          goto LABEL_33;
        }

        sub_226E97D1C(v14, &qword_27D7B9690, qword_227670B50);
        v75 = v4;
        v55(&v70[v4 * v17], v79, v54);
        v56 = v73;
        if (!v73)
        {
          break;
        }

        v57 = v34;
LABEL_55:
        v73 = (v56 - 1) & v56;
        v50 = v78;
        (*v65)(v14, *(v66 + 56) + (__clz(__rbit64(v56)) | (v57 << 6)) * v17, v78);
        v49 = 0;
        v59 = v57;
LABEL_44:
        v4 = v75 + 1;
        v68(v14, v49, 1, v50);
        v44 = v77;
        sub_226E93170(v14, v77, &qword_27D7B9690, qword_227670B50);
        v51 = v72(v44, 1, v50);
        v47 = v50;
        v34 = v59;
        v43 = v59;
        v48 = v79;
        v45 = v69;
        if (v51 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v63 <= v34 + 1)
      {
        v58 = v34 + 1;
      }

      else
      {
        v58 = v63;
      }

      v59 = v58 - 1;
      while (1)
      {
        v57 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v57 >= v63)
        {
          v73 = 0;
          v49 = 1;
          v50 = v78;
          goto LABEL_44;
        }

        v56 = *(v64 + 8 * v57);
        ++v34;
        if (v56)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v35 = v78;
      v68 = *(v2 + 56);
      v68(v14, 1, 1, v78);
      v73 = 0;
    }

    v38 = v76;
LABEL_30:
    sub_226E97D1C(v14, &qword_27D7B9690, qword_227670B50);
    sub_226EBB21C(v66);
    sub_226E97D1C(v38, &qword_27D7B9690, qword_227670B50);
    goto LABEL_14;
  }

LABEL_20:
  v32 = (*(v25 - 32) + 64) >> 6;
  if (v32 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = v33 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v32)
    {
      goto LABEL_57;
    }

    v30 = *(v26 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_22745FA5C(uint64_t a1)
{
  v78 = sub_227666B60();
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v77 = v11;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_2273A55CC(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  sub_2274CDF78(&v80, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (v24 < v15)
  {
    goto LABEL_16;
  }

  if (v24)
  {
    v27 = *(v16 + 2);
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (v28)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v29;
  }

  if (v24 != v23)
  {
    sub_226EBB21C(v80);
LABEL_14:
    *v1 = v16;
    return;
  }

LABEL_17:
  v75 = *(v16 + 2);
  v26 = v81;
  v66 = v80;
  v29 = v83;
  v25 = &v85;
  v61 = v82;
  v30 = v84;
  v64 = v81;
  if (v84)
  {
    v31 = v83;
LABEL_27:
    v73 = (v30 - 1) & v30;
    v35 = v78;
    (*(v2 + 16))(v14, *(v66 + 48) + (__clz(__rbit64(v30)) | (v31 << 6)) * v17, v78, v12);
    v68 = *(v2 + 56);
    v68(v14, 0, 1, v35);
    v34 = v31;
    while (1)
    {
      v36 = v76;
      sub_226E93170(v14, v76, &qword_27D7B8F20, &qword_2276767D0);
      v37 = *(v2 + 48);
      v2 += 48;
      v72 = v37;
      if (v37(v36, 1, v35) == 1)
      {
        break;
      }

      v39 = (v4 + 32);
      v63 = (v61 + 64) >> 6;
      v67 = v4 + 56;
      v65 = (v4 + 16);
      v62 = (v4 + 8);
      v38 = v76;
      v74 = v39;
      while (1)
      {
        sub_226E97D1C(v38, &qword_27D7B8F20, &qword_2276767D0);
        v40 = *(v16 + 3);
        v41 = v40 >> 1;
        if ((v40 >> 1) < v75 + 1)
        {
          v16 = sub_2273A55CC((v40 > 1), v75 + 1, 1, v16);
          v41 = *(v16 + 3) >> 1;
        }

        v42 = v77;
        sub_226E93170(v14, v77, &qword_27D7B8F20, &qword_2276767D0);
        if (v72(v42, 1, v78) != 1)
        {
          break;
        }

        v43 = v34;
        v44 = v77;
        v4 = v75;
LABEL_38:
        v34 = v43;
        sub_226E97D1C(v44, &qword_27D7B8F20, &qword_2276767D0);
        v75 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v38 = v76;
        sub_226E93170(v14, v76, &qword_27D7B8F20, &qword_2276767D0);
        if (v72(v38, 1, v78) == 1)
        {
          goto LABEL_30;
        }
      }

      v70 = &v16[v18];
      v4 = v75;
      v45 = *v74;
      if (v75 <= v41)
      {
        v46 = v41;
      }

      else
      {
        v46 = v75;
      }

      v71 = v46;
      v44 = v77;
      v47 = v78;
      v48 = v79;
      v69 = v45;
      while (1)
      {
        v52 = v48;
        v53 = v44;
        v54 = v47;
        v55 = v45;
        v45(v52, v53, v47);
        if (v4 == v71)
        {
          (*v62)(v79, v54);
          v4 = v71;
          v75 = v71;
          goto LABEL_33;
        }

        sub_226E97D1C(v14, &qword_27D7B8F20, &qword_2276767D0);
        v75 = v4;
        v55(&v70[v4 * v17], v79, v54);
        v56 = v73;
        if (!v73)
        {
          break;
        }

        v57 = v34;
LABEL_55:
        v73 = (v56 - 1) & v56;
        v50 = v78;
        (*v65)(v14, *(v66 + 48) + (__clz(__rbit64(v56)) | (v57 << 6)) * v17, v78);
        v49 = 0;
        v59 = v57;
LABEL_44:
        v4 = v75 + 1;
        v68(v14, v49, 1, v50);
        v44 = v77;
        sub_226E93170(v14, v77, &qword_27D7B8F20, &qword_2276767D0);
        v51 = v72(v44, 1, v50);
        v47 = v50;
        v34 = v59;
        v43 = v59;
        v48 = v79;
        v45 = v69;
        if (v51 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v63 <= v34 + 1)
      {
        v58 = v34 + 1;
      }

      else
      {
        v58 = v63;
      }

      v59 = v58 - 1;
      while (1)
      {
        v57 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v57 >= v63)
        {
          v73 = 0;
          v49 = 1;
          v50 = v78;
          goto LABEL_44;
        }

        v56 = *(v64 + 8 * v57);
        ++v34;
        if (v56)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v35 = v78;
      v68 = *(v2 + 56);
      v68(v14, 1, 1, v78);
      v73 = 0;
    }

    v38 = v76;
LABEL_30:
    sub_226E97D1C(v14, &qword_27D7B8F20, &qword_2276767D0);
    sub_226EBB21C(v66);
    sub_226E97D1C(v38, &qword_27D7B8F20, &qword_2276767D0);
    goto LABEL_14;
  }

LABEL_20:
  v32 = (*(v25 - 32) + 64) >> 6;
  if (v32 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = v33 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v32)
    {
      goto LABEL_57;
    }

    v30 = *(v26 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_22746017C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v6 = v3[3] >> 1, v6 <= v4))
  {
    v3 = sub_2273A58B0(isUniquelyReferenced_nonNull_native, v4 + 1, 1, v3);
    v6 = v3[3] >> 1;
  }

  v7 = v3[2];
  v8 = v6 - v7;
  if (!v8)
  {
    goto LABEL_11;
  }

  if (v8 < 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v3[v7 + 4] = a1;
  v3[2] = v7 + 1;
  if (v8 != 1)
  {
  }

  *v1 = v3;
}

void *sub_227460250(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2273A5A04(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = v9 - v11;
  result = sub_2274CE3EC(&v38, &v4[v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = v4[2];
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v41 = v23;
          v42 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v36 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    v4[2] = v18;
  }

  result = v38;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = v4[2];
  v13 = v39;
  v14 = v40;
  v2 = v41;
  v37 = v39;
  if (!v42)
  {
    goto LABEL_19;
  }

  v19 = (v42 - 1) & v42;
  v20 = __clz(__rbit64(v42)) | (v41 << 6);
  v36 = v40;
  v21 = (v40 + 64) >> 6;
LABEL_27:
  v26 = result;
  v27 = *(result[6] + 8 * v20);

  v28 = v37;
LABEL_29:
  while (1)
  {
    v29 = v4[3];
    v30 = v29 >> 1;
    if ((v29 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v30)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v12;
  }

  v34 = sub_2273A5A04((v29 > 1), v12 + 1, 1, v4);
  v28 = v37;
  v4 = v34;
  v30 = v34[3] >> 1;
  if (v12 >= v30)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v4[v12++ + 4] = v27;
    if (!v19)
    {
      break;
    }

    result = v26;
LABEL_38:
    v33 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = *(result[6] + ((v2 << 9) | (8 * v33)));

    v28 = v37;
    if (v12 == v30)
    {
      v12 = v30;
      v4[2] = v30;
      goto LABEL_29;
    }
  }

  v31 = v2;
  result = v26;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v32 >= v21)
    {
      break;
    }

    v19 = *(v28 + 8 * v32);
    ++v31;
    if (v19)
    {
      v2 = v32;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v35 = v2 + 1;
  }

  else
  {
    v35 = v21;
  }

  v40 = v36;
  v41 = v35 - 1;
  v42 = 0;
  v4[2] = v12;
LABEL_13:
  result = sub_226EBB21C(result);
  *v1 = v4;
  return result;
}

uint64_t sub_227460500(uint64_t result, uint64_t a2)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = *v3;
  v5 = *(*v3 + 2);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v2 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v4;
    }

    else
    {
      v11 = v5;
    }

    v2 = sub_2273A5610(isUniquelyReferenced_nonNull_native, v11, 1, v2);
    v10 = *(v2 + 3) >> 1;
  }

  v12 = *(v2 + 2);
  v13 = v10 - v12;
  result = sub_22745819C(&v31, &v2[8 * v12 + 32], v10 - v12, v8, a2);
  if (result < v4)
  {
    goto LABEL_17;
  }

  if (result >= 1)
  {
    v16 = *(v2 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
      goto LABEL_35;
    }

    *(v2 + 2) = v18;
  }

  if (result != v13)
  {
LABEL_14:
    *v3 = v2;
    return result;
  }

LABEL_18:
  v19 = v32;
  v20 = v33;
  if (v33 == v32)
  {
    goto LABEL_14;
  }

  v21 = v31;
  if (v32 < v31)
  {
LABEL_37:
    __break(1u);
  }

  else if (v33 >= v31)
  {
    if (v33 < v32)
    {
      v14 = *(v2 + 2);
      v22 = v33 + 1;
      v23 = -v32;
      while (1)
      {
LABEL_24:
        v24 = *(v2 + 3);
        v25 = v24 >> 1;
        if ((v24 >> 1) < v14 + 1)
        {
          v27 = v2;
          v28 = v22;
          v29 = v23;
          v30 = v14;
          result = sub_2273A5610((v24 > 1), v14 + 1, 1, v27);
          v14 = v30;
          v23 = v29;
          v22 = v28;
          v2 = result;
          v25 = *(result + 24) >> 1;
          v26 = v30 - v25;
          if (v30 < v25)
          {
LABEL_26:
            v15 = 0;
            while (1)
            {
              *&v2[8 * v14 + 32 + 8 * v15] = v20;
              if (!(v23 + v22 + v15))
              {
                break;
              }

              if (v22 < v21 || (v20 = v22 + v15, v22 + v15 >= v19))
              {
                __break(1u);
                goto LABEL_37;
              }

              ++v15;
              if (!(v26 + v15))
              {
                v22 += v15;
                v20 = v22 - 1;
                v14 = v25;
                *(v2 + 2) = v25;
                goto LABEL_24;
              }
            }

LABEL_35:
            *(v2 + 2) = v14 + v15 + 1;
            goto LABEL_14;
          }
        }

        else
        {
          v26 = v14 - v25;
          if (v14 < v25)
          {
            goto LABEL_26;
          }
        }

        *(v2 + 2) = v14;
      }
    }

    goto LABEL_39;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_227460704(uint64_t a1)
{
  v4 = v1;
  result = sub_22732A5A0(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *a1);
  v6 = *v1;
  v7 = *(*v1 + 16);
  v8 = v7 + result;
  if (__OFADD__(v7, result))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v11 = v6[3] >> 1, v11 < v8))
    {
      if (v7 <= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = v7;
      }

      v6 = sub_2273A5A28(isUniquelyReferenced_nonNull_native, v12, 1, v6);
      v11 = v6[3] >> 1;
    }

    v13 = v6[2];
    v14 = v11 - v13;
    result = sub_2274CE694(v35, &v6[3 * v13 + 4], v11 - v13);
    if (result >= v9)
    {
      if (result >= 1)
      {
        v15 = v6[2];
        v16 = __OFADD__(v15, result);
        v17 = v15 + result;
        if (v16)
        {
          __break(1u);
LABEL_33:
          *&v37[8] = v2;
          *&v37[16] = v8;
          v37[24] = 0;
          v6[2] = -v3;
          goto LABEL_13;
        }

        v6[2] = v17;
      }

      if (result != v14)
      {
LABEL_13:
        v33[2] = v36;
        v34[0] = *v37;
        *(v34 + 9) = *&v37[9];
        v33[0] = v35[0];
        v33[1] = v35[1];
        result = sub_226E97D1C(v33, &qword_27D7BCBA8, &qword_2276808D0);
        *v4 = v6;
        return result;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  if (v37[24] & 1) != 0 || (v37[0])
  {
    goto LABEL_37;
  }

  v18 = *&v37[16];
  if (*&v37[16] != DWORD2(v36))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v2 = v36;
  v19 = *&v37[8];
  if (*&v37[8] == v36)
  {
    goto LABEL_13;
  }

  v20 = v6[2];
  v21 = *&v35[0];
  result = sub_22732A6B8(*&v37[8], *&v37[16], 0, *&v35[0]);
  v8 = v18;
  while (1)
  {
    v24 = v6[3];
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    v26 = v25 - v20;
    if (v25 > v20)
    {
      goto LABEL_24;
    }

LABEL_21:
    v6[2] = v20;
  }

  v32 = result;
  v28 = v22;
  v29 = v23;
  v30 = sub_2273A5A28((v24 > 1), v20 + 1, 1, v6);
  v23 = v29;
  v22 = v28;
  v6 = v30;
  result = v32;
  v25 = v6[3] >> 1;
  v26 = v25 - v20;
  if (v25 <= v20)
  {
    goto LABEL_21;
  }

LABEL_24:
  v31 = v25;
  v27 = &v6[3 * v20 + 6];
  v3 = ~v20;
  while (1)
  {
    *(v27 - 2) = v19;
    *(v27 - 1) = v8;
    *v27 = 0;
    if (v23)
    {
      break;
    }

    v8 = v22;
    if (v22 != v18)
    {
      __break(1u);
      goto LABEL_35;
    }

    v19 = result;
    if (result == v2)
    {
      goto LABEL_33;
    }

    result = sub_22732A6B8(result, v22, 0, v21);
    v27 += 24;
    --v3;
    if (!--v26)
    {
      v20 = v31;
      goto LABEL_21;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_2274609C0(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_227460B04(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v12 = (*(v6 + 24) >> 1) - *(v6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_227460C6C(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v68 = a2;
  v8 = sub_227666B60();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v66 = &v52 - v16;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v17);
  v19 = &v52;
  v21 = &v52 - v20;
  v22 = a4 >> 1;
  v23 = __OFSUB__(a4 >> 1, a3);
  v24 = (a4 >> 1) - a3;
  if (v23)
  {
    __break(1u);
    goto LABEL_21;
  }

  v67 = v11;
  v69 = v9;
  v70 = a1;
  v11 = *v4;
  v25 = *(*v4 + 16);
  v26 = v25 + v24;
  if (__OFADD__(v25, v24))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v19 = (v11[3] >> 1), v19 < v26))
  {
    if (v25 <= v26)
    {
      v28 = v25 + v24;
    }

    else
    {
      v28 = v25;
    }

    v11 = sub_2273A55CC(isUniquelyReferenced_nonNull_native, v28, 1, v11);
    v19 = (v11[3] >> 1);
  }

  v29 = &v19[-v11[2]];
  if (v22 == a3)
  {
    if (v24 <= 0)
    {
      v24 = 0;
      v19 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v29 < v24)
  {
    __break(1u);
    goto LABEL_27;
  }

  result = swift_arrayInitWithCopy();
  if (v24 <= 0)
  {
LABEL_16:
    v19 = v22;
LABEL_17:
    if (v24 != v29)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v11;
      return result;
    }

LABEL_23:
    v65 = v19;
    v24 = v11[2];
    v26 = v69;
    v54 = *(v69 + 56);
    v55 = v69 + 56;
    v54(v21, 1, 1, v8, v18);
    v33 = v66;
    sub_226E93170(v21, v66, &qword_27D7B8F20, &qword_2276767D0);
    v62 = *(v26 + 48);
    v63 = v26 + 48;
    if (v62(v33, 1, v8) == 1)
    {
      v34 = v66;
LABEL_25:
      sub_226E97D1C(v21, &qword_27D7B8F20, &qword_2276767D0);
      swift_unknownObjectRelease();
      result = sub_226E97D1C(v34, &qword_27D7B8F20, &qword_2276767D0);
      goto LABEL_19;
    }

LABEL_27:
    v58 = (v26 + 32);
    v52 = (v26 + 8);
    v53 = (v26 + 16);
    v35 = v24;
    v34 = v66;
    v60 = v21;
    v61 = v14;
    do
    {
      sub_226E97D1C(v34, &qword_27D7B8F20, &qword_2276767D0);
      v37 = v11[3];
      v38 = v37 >> 1;
      v39 = v35;
      if ((v37 >> 1) < v35 + 1)
      {
        v11 = sub_2273A55CC((v37 > 1), v35 + 1, 1, v11);
        v38 = v11[3] >> 1;
      }

      v40 = *(v69 + 80);
      sub_226E93170(v21, v14, &qword_27D7B8F20, &qword_2276767D0);
      if (v62(v14, 1, v8) == 1)
      {
        v35 = v39;
        v41 = v61;
LABEL_34:
        sub_226E97D1C(v41, &qword_27D7B8F20, &qword_2276767D0);
        v36 = v35;
        v34 = v66;
        v14 = v41;
      }

      else
      {
        v57 = v11 + ((v40 + 32) & ~v40);
        v42 = *v58;
        v35 = v39;
        if (v39 <= v38)
        {
          v43 = v38;
        }

        else
        {
          v43 = v39;
        }

        v59 = v43;
        v41 = v61;
        v56 = v42;
        while (1)
        {
          v47 = v67;
          v42(v67, v41, v8);
          if (v59 == v35)
          {
            break;
          }

          v48 = v60;
          sub_226E97D1C(v60, &qword_27D7B8F20, &qword_2276767D0);
          v49 = v35;
          v50 = *(v69 + 72);
          v64 = v49;
          result = (v42)(&v57[v50 * v49], v47, v8);
          if (v65 == v22)
          {
            v44 = 1;
            v65 = v22;
            v45 = v61;
          }

          else
          {
            v45 = v61;
            if (v65 < a3 || v65 >= v22)
            {
              goto LABEL_47;
            }

            v51 = v65;
            (*v53)(v48, v68 + v50 * v65, v8);
            v44 = 0;
            v65 = v51 + 1;
          }

          (v54)(v48, v44, 1, v8);
          sub_226E93170(v48, v45, &qword_27D7B8F20, &qword_2276767D0);
          v46 = v62(v45, 1, v8);
          v35 = v64 + 1;
          v41 = v45;
          v42 = v56;
          if (v46 == 1)
          {
            goto LABEL_34;
          }
        }

        (*v52)(v47, v8);
        v36 = v59;
        v35 = v59;
        v34 = v66;
        v14 = v61;
      }

      v21 = v60;
      v11[2] = v36;
      sub_226E93170(v21, v34, &qword_27D7B8F20, &qword_2276767D0);
    }

    while (v62(v34, 1, v8) != 1);
    goto LABEL_25;
  }

  v31 = v11[2];
  v23 = __OFADD__(v31, v24);
  v32 = v31 + v24;
  if (!v23)
  {
    v11[2] = v32;
    goto LABEL_16;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void sub_2274612A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v4 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + 8 * v8 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void *sub_2274613A4(int64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_2273A644C(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = (v8 - v10);
  result = sub_2274CED34(v39, &v3[8 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_17;
  }

  if (result)
  {
    v16 = *(v3 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_21:
      v21 = (v14 + 64) >> 6;
      v22 = v15;
      do
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_44;
        }

        if (v23 >= v21)
        {
          goto LABEL_14;
        }

        v24 = *(v13 + 8 * v23);
        ++v22;
      }

      while (!v24);
      v19 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v15 = v23;
      goto LABEL_26;
    }

    *(v3 + 2) = v18;
  }

  if (result != v11)
  {
    result = v39[0];
LABEL_14:
    result = sub_226EBB21C(result);
LABEL_15:
    *v1 = v3;
    return result;
  }

LABEL_18:
  v6 = *(v3 + 2);
  result = v39[0];
  v13 = v39[1];
  v14 = v40;
  v15 = v41;
  if (!v42)
  {
    goto LABEL_21;
  }

  v19 = (v42 - 1) & v42;
  v20 = __clz(__rbit64(v42)) | (v41 << 6);
  v21 = (v40 + 64) >> 6;
LABEL_26:
  v25 = *(result[6] + 8 * v20);
  while (1)
  {
    v26 = *(v3 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v27)
    {
      goto LABEL_34;
    }

LABEL_29:
    *(v3 + 2) = v6;
  }

  v37 = v19;
  v38 = result;
  v36 = v13;
  v31 = v14;
  v32 = v15;
  v33 = v3;
  v34 = v25;
  v35 = sub_2273A644C((v26 > 1), v6 + 1, 1, v33);
  v25 = v34;
  v13 = v36;
  v19 = v37;
  v15 = v32;
  v14 = v31;
  v3 = v35;
  result = v38;
  v27 = *(v3 + 3) >> 1;
  if (v6 >= v27)
  {
    goto LABEL_29;
  }

LABEL_34:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v25;
    if (!v19)
    {
      break;
    }

LABEL_33:
    v28 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = *(result[6] + ((v15 << 9) | (8 * v28)));
    if (v6 == v27)
    {
      v6 = v27;
      goto LABEL_29;
    }
  }

  v29 = v15;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v21)
    {
      result = sub_226EBB21C(result);
      *(v3 + 2) = v6;
      goto LABEL_15;
    }

    v19 = *(v13 + 8 * v30);
    ++v29;
    if (v19)
    {
      v15 = v30;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_2274616DC(uint64_t a1)
{
  v78 = sub_2276650A0();
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDE50, qword_227686450);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v77 = v11;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_2273A6CC4(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  sub_2274CF004(&v80, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (v24 < v15)
  {
    goto LABEL_16;
  }

  if (v24)
  {
    v27 = *(v16 + 2);
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (v28)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v29;
  }

  if (v24 != v23)
  {
    sub_226EBB21C(v80);
LABEL_14:
    *v1 = v16;
    return;
  }

LABEL_17:
  v75 = *(v16 + 2);
  v26 = v81;
  v66 = v80;
  v29 = v83;
  v25 = &v85;
  v61 = v82;
  v30 = v84;
  v64 = v81;
  if (v84)
  {
    v31 = v83;
LABEL_27:
    v73 = (v30 - 1) & v30;
    v35 = v78;
    (*(v2 + 16))(v14, *(v66 + 48) + (__clz(__rbit64(v30)) | (v31 << 6)) * v17, v78, v12);
    v68 = *(v2 + 56);
    v68(v14, 0, 1, v35);
    v34 = v31;
    while (1)
    {
      v36 = v76;
      sub_226E93170(v14, v76, &qword_27D7BDE50, qword_227686450);
      v37 = *(v2 + 48);
      v2 += 48;
      v72 = v37;
      if (v37(v36, 1, v35) == 1)
      {
        break;
      }

      v39 = (v4 + 32);
      v63 = (v61 + 64) >> 6;
      v67 = v4 + 56;
      v65 = (v4 + 16);
      v62 = (v4 + 8);
      v38 = v76;
      v74 = v39;
      while (1)
      {
        sub_226E97D1C(v38, &qword_27D7BDE50, qword_227686450);
        v40 = *(v16 + 3);
        v41 = v40 >> 1;
        if ((v40 >> 1) < v75 + 1)
        {
          v16 = sub_2273A6CC4((v40 > 1), v75 + 1, 1, v16);
          v41 = *(v16 + 3) >> 1;
        }

        v42 = v77;
        sub_226E93170(v14, v77, &qword_27D7BDE50, qword_227686450);
        if (v72(v42, 1, v78) != 1)
        {
          break;
        }

        v43 = v34;
        v44 = v77;
        v4 = v75;
LABEL_38:
        v34 = v43;
        sub_226E97D1C(v44, &qword_27D7BDE50, qword_227686450);
        v75 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v38 = v76;
        sub_226E93170(v14, v76, &qword_27D7BDE50, qword_227686450);
        if (v72(v38, 1, v78) == 1)
        {
          goto LABEL_30;
        }
      }

      v70 = &v16[v18];
      v4 = v75;
      v45 = *v74;
      if (v75 <= v41)
      {
        v46 = v41;
      }

      else
      {
        v46 = v75;
      }

      v71 = v46;
      v44 = v77;
      v47 = v78;
      v48 = v79;
      v69 = v45;
      while (1)
      {
        v52 = v48;
        v53 = v44;
        v54 = v47;
        v55 = v45;
        v45(v52, v53, v47);
        if (v4 == v71)
        {
          (*v62)(v79, v54);
          v4 = v71;
          v75 = v71;
          goto LABEL_33;
        }

        sub_226E97D1C(v14, &qword_27D7BDE50, qword_227686450);
        v75 = v4;
        v55(&v70[v4 * v17], v79, v54);
        v56 = v73;
        if (!v73)
        {
          break;
        }

        v57 = v34;
LABEL_55:
        v73 = (v56 - 1) & v56;
        v50 = v78;
        (*v65)(v14, *(v66 + 48) + (__clz(__rbit64(v56)) | (v57 << 6)) * v17, v78);
        v49 = 0;
        v59 = v57;
LABEL_44:
        v4 = v75 + 1;
        v68(v14, v49, 1, v50);
        v44 = v77;
        sub_226E93170(v14, v77, &qword_27D7BDE50, qword_227686450);
        v51 = v72(v44, 1, v50);
        v47 = v50;
        v34 = v59;
        v43 = v59;
        v48 = v79;
        v45 = v69;
        if (v51 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v63 <= v34 + 1)
      {
        v58 = v34 + 1;
      }

      else
      {
        v58 = v63;
      }

      v59 = v58 - 1;
      while (1)
      {
        v57 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v57 >= v63)
        {
          v73 = 0;
          v49 = 1;
          v50 = v78;
          goto LABEL_44;
        }

        v56 = *(v64 + 8 * v57);
        ++v34;
        if (v56)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v35 = v78;
      v68 = *(v2 + 56);
      v68(v14, 1, 1, v78);
      v73 = 0;
    }

    v38 = v76;
LABEL_30:
    sub_226E97D1C(v14, &qword_27D7BDE50, qword_227686450);
    sub_226EBB21C(v66);
    sub_226E97D1C(v38, &qword_27D7BDE50, qword_227686450);
    goto LABEL_14;
  }

LABEL_20:
  v32 = (*(v25 - 32) + 64) >> 6;
  if (v32 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = v33 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v32)
    {
      goto LABEL_57;
    }

    v30 = *(v26 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_227461E54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v6 = *(v3 + 24) >> 1, v6 <= v4))
  {
    result = sub_2273A5610(result, v4 + 1, 1, v3);
    v3 = result;
    v6 = *(result + 24) >> 1;
  }

  v7 = *(v3 + 16);
  if (v6 != v7)
  {
    if (v6 > v7)
    {
      *(v3 + 8 * v7 + 32) = a1;
      *(v3 + 16) = v7 + 1;
      *v1 = v3;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_227461F00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v4 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD058, &qword_2276839B0);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return;
  }

  v8 = *(v4 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v4 + 16) = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_227462014(uint64_t a1)
{
  v78 = sub_2276639B0();
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v77 = v11;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_2273A4EA4(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  sub_2274CDD80(&v80, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (v24 < v15)
  {
    goto LABEL_16;
  }

  if (v24)
  {
    v27 = *(v16 + 2);
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (v28)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v29;
  }

  if (v24 != v23)
  {
    sub_226EBB21C(v80);
LABEL_14:
    *v1 = v16;
    return;
  }

LABEL_17:
  v75 = *(v16 + 2);
  v26 = v81;
  v66 = v80;
  v29 = v83;
  v25 = &v85;
  v61 = v82;
  v30 = v84;
  v64 = v81;
  if (v84)
  {
    v31 = v83;
LABEL_27:
    v73 = (v30 - 1) & v30;
    v35 = v78;
    (*(v2 + 16))(v14, *(v66 + 48) + (__clz(__rbit64(v30)) | (v31 << 6)) * v17, v78, v12);
    v68 = *(v2 + 56);
    v68(v14, 0, 1, v35);
    v34 = v31;
    while (1)
    {
      v36 = v76;
      sub_226E93170(v14, v76, &qword_27D7B9680, &unk_227671520);
      v37 = *(v2 + 48);
      v2 += 48;
      v72 = v37;
      if (v37(v36, 1, v35) == 1)
      {
        break;
      }

      v39 = (v4 + 32);
      v63 = (v61 + 64) >> 6;
      v67 = v4 + 56;
      v65 = (v4 + 16);
      v62 = (v4 + 8);
      v38 = v76;
      v74 = v39;
      while (1)
      {
        sub_226E97D1C(v38, &qword_27D7B9680, &unk_227671520);
        v40 = *(v16 + 3);
        v41 = v40 >> 1;
        if ((v40 >> 1) < v75 + 1)
        {
          v16 = sub_2273A4EA4((v40 > 1), v75 + 1, 1, v16);
          v41 = *(v16 + 3) >> 1;
        }

        v42 = v77;
        sub_226E93170(v14, v77, &qword_27D7B9680, &unk_227671520);
        if (v72(v42, 1, v78) != 1)
        {
          break;
        }

        v43 = v34;
        v44 = v77;
        v4 = v75;
LABEL_38:
        v34 = v43;
        sub_226E97D1C(v44, &qword_27D7B9680, &unk_227671520);
        v75 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v38 = v76;
        sub_226E93170(v14, v76, &qword_27D7B9680, &unk_227671520);
        if (v72(v38, 1, v78) == 1)
        {
          goto LABEL_30;
        }
      }

      v70 = &v16[v18];
      v4 = v75;
      v45 = *v74;
      if (v75 <= v41)
      {
        v46 = v41;
      }

      else
      {
        v46 = v75;
      }

      v71 = v46;
      v44 = v77;
      v47 = v78;
      v48 = v79;
      v69 = v45;
      while (1)
      {
        v52 = v48;
        v53 = v44;
        v54 = v47;
        v55 = v45;
        v45(v52, v53, v47);
        if (v4 == v71)
        {
          (*v62)(v79, v54);
          v4 = v71;
          v75 = v71;
          goto LABEL_33;
        }

        sub_226E97D1C(v14, &qword_27D7B9680, &unk_227671520);
        v75 = v4;
        v55(&v70[v4 * v17], v79, v54);
        v56 = v73;
        if (!v73)
        {
          break;
        }

        v57 = v34;
LABEL_55:
        v73 = (v56 - 1) & v56;
        v50 = v78;
        (*v65)(v14, *(v66 + 48) + (__clz(__rbit64(v56)) | (v57 << 6)) * v17, v78);
        v49 = 0;
        v59 = v57;
LABEL_44:
        v4 = v75 + 1;
        v68(v14, v49, 1, v50);
        v44 = v77;
        sub_226E93170(v14, v77, &qword_27D7B9680, &unk_227671520);
        v51 = v72(v44, 1, v50);
        v47 = v50;
        v34 = v59;
        v43 = v59;
        v48 = v79;
        v45 = v69;
        if (v51 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v63 <= v34 + 1)
      {
        v58 = v34 + 1;
      }

      else
      {
        v58 = v63;
      }

      v59 = v58 - 1;
      while (1)
      {
        v57 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v57 >= v63)
        {
          v73 = 0;
          v49 = 1;
          v50 = v78;
          goto LABEL_44;
        }

        v56 = *(v64 + 8 * v57);
        ++v34;
        if (v56)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v35 = v78;
      v68 = *(v2 + 56);
      v68(v14, 1, 1, v78);
      v73 = 0;
    }

    v38 = v76;
LABEL_30:
    sub_226E97D1C(v14, &qword_27D7B9680, &unk_227671520);
    sub_226EBB21C(v66);
    sub_226E97D1C(v38, &qword_27D7B9680, &unk_227671520);
    goto LABEL_14;
  }

LABEL_20:
  v32 = (*(v25 - 32) + 64) >> 6;
  if (v32 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = v33 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v32)
    {
      goto LABEL_57;
    }

    v30 = *(v26 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_22746274C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_22766CD20();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_22766CD20();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_22746952C(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void *sub_227462844(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_2273A5120(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_2274CF49C(v39, &v3[8 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 64) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 64) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v22 >= v19)
        {
          v41 = v21;
          v42 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  result = v39[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v39[1];
  v11 = v40;
  v16 = v41;
  if (!v42)
  {
    goto LABEL_19;
  }

  v17 = (v42 - 1) & v42;
  v18 = __clz(__rbit64(v42)) | (v41 << 6);
  v19 = (v40 + 64) >> 6;
LABEL_27:
  v24 = *(result[7] + 8 * v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v30 = v16;
  v37 = v19;
  v38 = result;
  v31 = v12;
  v32 = v3;
  v33 = v17;
  v36 = v24;
  v34 = sub_2273A5120((v25 > 1), v6 + 1, 1, v32);
  v24 = v36;
  v17 = v33;
  v16 = v30;
  v12 = v31;
  v3 = v34;
  v19 = v37;
  result = v38;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v24;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(result[7] + ((v16 << 9) | (8 * v27)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v35 = v16 + 1;
  }

  else
  {
    v35 = v19;
  }

  v40 = v11;
  v41 = v35 - 1;
  v42 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_226EBB21C(result);
  *v1 = v3;
  return result;
}

Swift::Bool __swiftcall WorkoutPlanGenerationScaffold.satisfiesHardConstraints()()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold(0) + 24));

  v5 = sub_226F491E4();
  sub_22746AB34(v5);
  v6 = *(v12 + 16);

  if (v6)
  {
    sub_22766A630();
    v7 = sub_22766B380();
    v8 = sub_22766C890();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_226E8E000, v7, v8, "Scaffold does not satisfy hard constraint: Modality Coverage", v9, 2u);
      MEMORY[0x22AA9A450](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return v6 == 0;
}

uint64_t type metadata accessor for WorkoutPlanGenerationScaffold(uint64_t a1)
{
  result = qword_27D7BDDF0;
  if (!qword_27D7BDDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall WorkoutPlanGenerationScaffold.satisfiesPartialCoverageConstraints()()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold(0) + 64)) + 16);
  if (!v5)
  {
    sub_22766A630();
    v6 = sub_22766B380();
    v7 = sub_22766C890();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226E8E000, v6, v7, "Scaffold does not satisfy partial constraint: Modality Coverage", v8, 2u);
      MEMORY[0x22AA9A450](v8, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return v5 != 0;
}

Swift::Bool __swiftcall WorkoutPlanGenerationScaffold.isEmpty()()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold(0) + 60));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (v1 + 32);
  do
  {
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v5 = *v3++;
    --v2;
  }

  while (!*(v5 + 16));
  return result;
}

BOOL WorkoutPlanGenerationScaffold.isModalitySelected(_:)()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold(0) + 64));
  if (*(v1 + 16) && (v2 = sub_226F491D8(), (v3 & 1) != 0))
  {
    return *(*(v1 + 56) + 8 * v2) > 0;
  }

  else
  {
    return 0;
  }
}

Swift::Double __swiftcall WorkoutPlanGenerationScaffold.incrementalEntropy(for:)(Swift::OpaquePointer a1)
{
  v3 = *(v1 + *(type metadata accessor for WorkoutPlanGenerationScaffold(0) + 64));
  v4 = *(a1._rawValue + 2);
  if (!v4)
  {

    v5 = 0;
LABEL_17:

    sub_22745ED8C(v27);
    v29 = v28;
    swift_bridgeObjectRelease_n();
    sub_226EA9E3C(v5, 0);
    return v29;
  }

  v5 = 0;
  v6 = a1._rawValue + 64;
  while (1)
  {
    v7 = *(v6 - 2);
    v8 = *(v6 - 1);
    v9 = *v6;

    sub_226EB396C(v7, v8, v9);
    sub_226EB396C(v7, v8, v9);
    sub_226EA9E3C(v5, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_226F491D8();
    v13 = v3[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v3[3] < v16)
    {
      sub_226FF6748();
      v11 = sub_226F491D8();
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

LABEL_8:
      if (v17)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v20 = v11;
    sub_226FF6744();
    v11 = v20;
    if (v17)
    {
LABEL_9:
      v19 = v11;
      sub_226EB2DFC(v7, v8, v9);
      v11 = v19;
      goto LABEL_13;
    }

LABEL_11:
    v3[(v11 >> 6) + 8] |= 1 << v11;
    v21 = v3[6] + 24 * v11;
    *v21 = v7;
    *(v21 + 8) = v8;
    *(v21 + 16) = v9;
    *(v3[7] + 8 * v11) = 0;
    v22 = v3[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v15)
    {
      goto LABEL_20;
    }

    v3[2] = v23;
LABEL_13:
    v24 = v3[7];
    v25 = *(v24 + 8 * v11);
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v15)
    {
      goto LABEL_19;
    }

    *(v24 + 8 * v11) = v26;

    sub_226EB2DFC(v7, v8, v9);
    v6 += 40;
    v5 = sub_227444F98;
    if (!--v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22766D220();
  __break(1u);
  return result;
}

uint64_t WorkoutPlanGenerationScaffold.init(planIdentifier:requestedModalitySchedulePreferences:requestedTotalDailyDuration:requestedWeekdays:requestedWeekCount:maxWorkoutsPerDay:modalityDurationMapping:configuration:currentSchedule:modalitiesSelected:scoringMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  i = a6;
  v87 = a9;
  v90 = a10;
  v91 = a7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v77 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v76 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = &v74 - v20;
  v21 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2276627D0();
  v81 = *(v24 - 8);
  v82 = v24;
  v25 = *(v81 + 16);
  v86 = a1;
  v25(v23, a1);
  *&v23[v21[5]] = a2;

  v26 = sub_226F491E4();
  *&v23[v21[6]] = v26;
  *&v23[v21[7]] = a3;
  *&v23[v21[8]] = a4;
  *&v23[v21[9]] = a5;
  v23[v21[12]] = a12 & 1;
  *&v23[v21[10]] = i;
  *&v23[v21[13]] = v91;
  v27 = v21[14];
  v28 = sub_227667370();
  v79 = *(v28 - 8);
  v80 = v28;
  v29 = *(v79 + 16);
  v91 = a8;
  v29(&v23[v27], a8);
  *&v23[v21[15]] = v90;
  v83 = v23;
  v84 = v21;
  *&v23[v21[16]] = a11;
  v30 = v26 + 56;
  v31 = 1 << *(v26 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v26 + 56);
  v34 = (v31 + 63) >> 6;
  v90 = v26;

  v85 = a11;

  v88 = 0;
  v35 = 0;
  for (i = MEMORY[0x277D84F98]; v33; v88 = sub_227444F98)
  {
LABEL_11:
    while (1)
    {
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = *(v90 + 48) + 24 * (v37 | (v35 << 6));
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = *(v38 + 16);
      sub_226EB396C(*v38, v40, v41);
      v42 = sub_2276672C0();
      if (*(v42 + 16))
      {
        break;
      }

      sub_226EB2DFC(v39, v40, v41);
LABEL_6:

      if (!v33)
      {
        goto LABEL_7;
      }
    }

    v43 = sub_226F491D8();
    v45 = v44;
    sub_226EB2DFC(v39, v40, v41);
    if ((v45 & 1) == 0)
    {
      goto LABEL_6;
    }

    v46 = v76;
    v47 = *(v77 + 72);
    sub_226E93170(*(v42 + 56) + v47 * v43, v76, &qword_27D7B88C0, &unk_22767A720);

    v48 = v46;
    v49 = v78;
    sub_226F50B4C(v48, v78);
    sub_226EA9E3C(v88, 0);
    v50 = i;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v50;
    v52 = sub_226F3ADC4(v49);
    v54 = v50[2];
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      goto LABEL_29;
    }

    v58 = v53;
    if (v50[3] >= v57)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v61 = i;
        if (v53)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v68 = v52;
        sub_226FF2414();
        v52 = v68;
        v61 = v92;
        if (v58)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_226FE6DD4(v57, isUniquelyReferenced_nonNull_native);
      v59 = v92;
      v52 = sub_226F3ADC4(v78);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_32;
      }

      v61 = v59;
      if (v58)
      {
        goto LABEL_22;
      }
    }

    v61[(v52 >> 6) + 8] |= 1 << v52;
    v62 = v52;
    sub_226E93170(v78, v61[6] + v52 * v47, &qword_27D7B88C0, &unk_22767A720);
    *(v61[7] + 8 * v62) = 0;
    v63 = v61[2];
    v56 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (v56)
    {
      goto LABEL_31;
    }

    v52 = v62;
    v61[2] = v64;
LABEL_22:
    i = v61;
    v65 = v61[7];
    v66 = *(v65 + 8 * v52);
    v56 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v56)
    {
      goto LABEL_30;
    }

    *(v65 + 8 * v52) = v67;
    sub_226E97D1C(v78, &qword_27D7B88C0, &unk_22767A720);
  }

LABEL_7:
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {

      v70 = v83;
      v69 = v84;
      *&v83[v84[11]] = i;
      sub_22745ED8C(v85);
      v72 = v71;

      (*(v79 + 8))(v91, v80);
      (*(v81 + 8))(v86, v82);
      *(v70 + v69[17]) = v72;
      sub_227442570(v70, v87);
      return sub_226EA9E3C(v88, 0);
    }

    v33 = *(v30 + 8 * v36);
    ++v35;
    if (v33)
    {
      v35 = v36;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_22766D220();
  __break(1u);
  return result;
}

Swift::Void __swiftcall WorkoutPlanGenerationScaffold.prettyPrint()()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v37 = *(v0 + *(type metadata accessor for WorkoutPlanGenerationScaffold(0) + 60));
  v8 = *(v37 + 16);
  sub_22766A630();
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_226E8E000, v9, v10, "Printing plans for %ld days", v11, 0xCu);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  v13 = *(v2 + 8);
  v12 = v2 + 8;
  v40 = v13;
  v13(v7, v1);
  v15 = v37;
  v39 = *(v37 + 16);
  if (v39)
  {
    v16 = 0;
    v38 = v37 + 32;
    *&v14 = 136315394;
    v35 = v14;
    v36 = v1;
    while (v16 < *(v15 + 16))
    {
      v17 = *(v38 + 8 * v16);

      if (MEMORY[0x22AA95620](v16) == 7)
      {
        v41 = v16;
        v18 = sub_22766D140();
      }

      else
      {
        v18 = sub_2276692E0();
      }

      v20 = v18;
      v21 = v19;
      sub_22766A630();

      v22 = sub_22766B380();
      v23 = sub_22766C8B0();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = v4;
        v26 = v12;
        v27 = swift_slowAlloc();
        v41 = v27;
        *v24 = v35;
        v28 = sub_226E97AE8(v20, v21, &v41);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        v29 = MEMORY[0x22AA98660](v17, &type metadata for WorkoutPlanGenerationScheduledItem);
        v31 = v30;

        v32 = sub_226E97AE8(v29, v31, &v41);

        *(v24 + 14) = v32;
        _os_log_impl(&dword_226E8E000, v22, v23, "[Schedule] Day %s ==> %s", v24, 0x16u);
        swift_arrayDestroy();
        v33 = v27;
        v12 = v26;
        v4 = v25;
        v15 = v37;
        MEMORY[0x22AA9A450](v33, -1, -1);
        v34 = v24;
        v1 = v36;
        MEMORY[0x22AA9A450](v34, -1, -1);
      }

      else
      {
      }

      v40(v4, v1);
      if (v39 == ++v16)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t WorkoutPlanGenerationScaffold.withUnscheduledDay()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v88 = a1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v86 = &v84 - v3;
  v4 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v4);
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227667370();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v103 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276627D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v98 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v84 - v23;
  (*(v10 + 56))(&v84 - v23, 1, 1, v9, v22);
  v95 = v7;
  v25 = *(v7 + 56);
  v93 = v17;
  v25(v17, 1, 1, v6);
  v26 = *(v2 + v4[15]);
  v27 = qword_27D7B7F28;

  if (v27 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v104 = v26;

    sub_22746017C(v28);
    v92 = v104;
    v100 = v24;
    sub_226E93170(v24, v20, &unk_27D7BB9D0, &qword_227671550);
    v29 = *(v10 + 48);
    v30 = v29(v20, 1, v9);
    v101 = v9;
    v102 = v6;
    v94 = v10;
    if (v30 == 1)
    {
      (*(v10 + 16))(v98, v2, v9);
      v31 = v29(v20, 1, v9);
      v32 = v95;
      if (v31 != 1)
      {
        sub_226E97D1C(v20, &unk_27D7BB9D0, &qword_227671550);
      }
    }

    else
    {
      (*(v10 + 32))(v98, v20, v9);
      v32 = v95;
    }

    v33 = *(v2 + v4[5]);
    v34 = *(v2 + v4[7]);
    v99 = *(v2 + v4[8]);
    v35 = v4[10];
    v89 = *(v2 + v4[9]);
    v90 = v34;
    v91 = *(v2 + v35);
    v36 = *(v2 + v4[13]);
    sub_226E93170(v93, v14, &qword_27D7BB3E8, &unk_227686370);
    v37 = *(v32 + 48);
    v38 = v102;
    v39 = v37(v14, 1, v102);
    v97 = v4;
    if (v39 == 1)
    {
      (*(v32 + 16))(v103, v2 + v4[14], v38);
      v40 = v37(v14, 1, v38);

      v41 = v40 == 1;
      v6 = v38;
      if (!v41)
      {
        sub_226E97D1C(v14, &qword_27D7BB3E8, &unk_227686370);
      }
    }

    else
    {
      (*(v32 + 32))(v103, v14, v38);

      v6 = v38;
    }

    v43 = v96;
    v42 = v97;
    v44 = *(v2 + v97[16]);
    v45 = *(v2 + v97[12]);
    v10 = v101;
    (*(v94 + 16))(v96, v98, v101);
    *&v43[v42[5]] = v33;

    v46 = v92;

    v47 = sub_226F491E4();
    *&v43[v42[6]] = v47;
    *&v43[v42[7]] = v90;
    *&v43[v42[8]] = v99;
    *&v43[v42[9]] = v89;
    v43[v42[12]] = v45;
    *&v43[v42[10]] = v91;
    *&v43[v42[13]] = v36;
    v48 = *(v32 + 16);
    v9 = v32 + 16;
    v20 = v103;
    v48(&v43[v42[14]], v103, v6);
    *&v43[v42[15]] = v46;
    *&v43[v42[16]] = v44;
    v2 = v47 + 56;
    v49 = 1 << *(v47 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v14 = v50 & *(v47 + 56);
    v4 = ((v49 + 63) >> 6);
    v89 = v44;

    v99 = v47;

    v90 = 0;
    v51 = 0;
    v91 = MEMORY[0x277D84F98];
    v26 = v20;
    v24 = v100;
    if (v14)
    {
      break;
    }

LABEL_16:
    while (1)
    {
      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v52 >= v4)
      {

        v78 = v97;
        v79 = v26;
        v80 = v96;
        *&v96[v97[11]] = v91;
        sub_22745ED8C(v89);
        v82 = v81;

        (*(v95 + 8))(v79, v6);
        (*(v94 + 8))(v98, v10);
        sub_226E97D1C(v93, &qword_27D7BB3E8, &unk_227686370);
        sub_226E97D1C(v24, &unk_27D7BB9D0, &qword_227671550);
        *(v80 + v78[17]) = v82;
        sub_227442570(v80, v88);
        return sub_226EA9E3C(v90, 0);
      }

      v14 = *(v2 + 8 * v52);
      ++v51;
      if (v14)
      {
        v51 = v52;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  while (1)
  {
LABEL_20:
    while (1)
    {
      v53 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v54 = *(v99 + 48) + 24 * (v53 | (v51 << 6));
      v55 = *v54;
      v56 = *(v54 + 8);
      v9 = *(v54 + 16);
      sub_226EB396C(*v54, v56, *(v54 + 16));
      v57 = sub_2276672C0();
      if (*(v57 + 16))
      {
        break;
      }

      sub_226EB2DFC(v55, v56, v9);
LABEL_15:

      v10 = v101;
      v6 = v102;
      v26 = v103;
      v24 = v100;
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    v20 = sub_226F491D8();
    v59 = v58;
    sub_226EB2DFC(v55, v56, v9);
    if ((v59 & 1) == 0)
    {
      goto LABEL_15;
    }

    v60 = v86;
    v9 = *(v87 + 72);
    sub_226E93170(*(v57 + 56) + v9 * v20, v86, &qword_27D7B88C0, &unk_22767A720);

    sub_226EA9E3C(v90, 0);
    v61 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v61;
    v63 = sub_226F3ADC4(v60);
    v65 = *(v61 + 2);
    v66 = (v64 & 1) == 0;
    v67 = __OFADD__(v65, v66);
    v68 = v65 + v66;
    if (v67)
    {
      break;
    }

    v69 = v64;
    if (*(v61 + 3) >= v68)
    {
      v26 = v103;
      if (isUniquelyReferenced_nonNull_native)
      {
        v71 = v104;
        if (v64)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v20 = v63;
        sub_226FF2414();
        v26 = v103;
        v63 = v20;
        v71 = v104;
        if (v69)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_226FE6DD4(v68, isUniquelyReferenced_nonNull_native);
      v63 = sub_226F3ADC4(v60);
      if ((v69 & 1) != (v70 & 1))
      {
        goto LABEL_42;
      }

      v26 = v103;
      v71 = v104;
      if (v69)
      {
        goto LABEL_31;
      }
    }

    *&v71[8 * (v63 >> 6) + 64] |= 1 << v63;
    v72 = v71;
    v20 = v63;
    sub_226E93170(v60, *(v71 + 6) + v63 * v9, &qword_27D7B88C0, &unk_22767A720);
    *(*(v72 + 7) + 8 * v20) = 0;
    v73 = *(v72 + 2);
    v67 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v67)
    {
      goto LABEL_41;
    }

    v63 = v20;
    v71 = v72;
    *(v72 + 2) = v74;
LABEL_31:
    v91 = v71;
    v75 = *(v71 + 7);
    v76 = *(v75 + 8 * v63);
    v67 = __OFADD__(v76, 1);
    v77 = v76 + 1;
    if (v67)
    {
      goto LABEL_40;
    }

    *(v75 + 8 * v63) = v77;
    sub_226E97D1C(v60, &qword_27D7B88C0, &unk_22767A720);
    v90 = sub_227444F98;
    v10 = v101;
    v6 = v102;
    v24 = v100;
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v111 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v110 = &v109 - v5;
  v6 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v6);
  v120 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_227667370();
  v124 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2276627D0();
  v119 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v123 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  MEMORY[0x28223BE20](v10 - 8);
  v116 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v121 = &v109 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v14 - 8);
  v125 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v118 = &v109 - v17;
  v122 = v6;
  v18 = *(v6 + 64);
  v127 = v2;
  v19 = *(v2 + v18);
  v20 = *(a1 + 16);
  v109 = v4;
  i = a1;
  if (v20)
  {

    v21 = 0;
    v22 = (a1 + 64);
    while (1)
    {
      v23 = *(v22 - 2);
      v24 = *(v22 - 1);
      v25 = *v22;

      sub_226EB396C(v23, v24, v25);
      sub_226EB396C(v23, v24, v25);
      sub_226EA9E3C(v21, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131 = v19;
      v27 = sub_226F491D8();
      v29 = v19[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_51;
      }

      v33 = v28;
      if (v19[3] < v32)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v36 = v27;
      sub_226FF6744();
      v27 = v36;
      v19 = v131;
      if ((v33 & 1) == 0)
      {
LABEL_11:
        v19[(v27 >> 6) + 8] |= 1 << v27;
        v37 = v19[6] + 24 * v27;
        *v37 = v23;
        *(v37 + 8) = v24;
        *(v37 + 16) = v25;
        *(v19[7] + 8 * v27) = 0;
        v38 = v19[2];
        v31 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v31)
        {
          goto LABEL_53;
        }

        v19[2] = v39;
        goto LABEL_13;
      }

LABEL_9:
      v35 = v27;
      sub_226EB2DFC(v23, v24, v25);
      v27 = v35;
LABEL_13:
      v40 = v19[7];
      v41 = *(v40 + 8 * v27);
      v31 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v31)
      {
        goto LABEL_52;
      }

      *(v40 + 8 * v27) = v42;

      sub_226EB2DFC(v23, v24, v25);
      v22 += 40;
      v21 = sub_227444F98;
      if (!--v20)
      {
        goto LABEL_17;
      }
    }

    sub_226FF6748();
    v19 = v131;
    v27 = sub_226F491D8();
    if ((v33 & 1) != (v34 & 1))
    {
      goto LABEL_57;
    }

LABEL_8:
    if ((v33 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v21 = 0;
LABEL_17:
  v43 = v118;
  v44 = v119;
  v45 = v129;
  (*(v119 + 56))(v118, 1, 1, v129);
  v46 = v124;
  (*(v124 + 56))(v121, 1, 1, v130);
  v47 = v122;
  v48 = v127;
  v131 = *(v127 + v122[15]);

  sub_22746017C(v49);
  v117 = v131;
  v50 = v125;
  sub_226E93170(v43, v125, &unk_27D7BB9D0, &qword_227671550);
  v51 = *(v44 + 48);
  if (v51(v50, 1, v45) == 1)
  {
    (*(v44 + 16))(v123, v48, v45);
    if (v51(v50, 1, v45) != 1)
    {
      sub_226E97D1C(v50, &unk_27D7BB9D0, &qword_227671550);
    }
  }

  else
  {
    (*(v44 + 32))(v123, v50, v45);
  }

  v52 = *(v48 + v47[5]);
  v53 = v47[8];
  v113 = *(v48 + v47[7]);
  v125 = *(v48 + v53);
  v54 = v47[10];
  v112 = *(v48 + v47[9]);
  v115 = *(v48 + v54);
  i = *(v48 + v47[13]);
  v55 = v116;
  sub_226E93170(v121, v116, &qword_27D7BB3E8, &unk_227686370);
  v56 = *(v46 + 48);
  v57 = v130;
  if (v56(v55, 1, v130) == 1)
  {
    v58 = v48 + v47[14];
    v59 = v128;
    (*(v124 + 16))(v128, v58, v57);
    v60 = v56(v55, 1, v57);

    if (v60 != 1)
    {
      sub_226E97D1C(v55, &qword_27D7BB3E8, &unk_227686370);
    }
  }

  else
  {
    v59 = v128;
    (*(v124 + 32))(v128, v55, v57);
  }

  v61 = v122;
  v62 = *(v127 + v122[12]);
  v63 = *(v44 + 16);
  v64 = v120;
  v65 = v129;
  v63(v120, v123, v129);
  *&v64[v61[5]] = v52;

  v66 = v117;

  v67 = sub_226F491E4();
  *&v64[v61[6]] = v67;
  *&v64[v61[7]] = v113;
  *&v64[v61[8]] = v125;
  *&v64[v61[9]] = v112;
  v64[v61[12]] = v62;
  *&v64[v61[10]] = v115;
  *&v64[v61[13]] = i;
  (*(v124 + 16))(&v64[v61[14]], v59, v57);
  *&v64[v61[15]] = v66;
  *&v64[v61[16]] = v19;
  v68 = v67 + 56;
  v69 = 1 << *(v67 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v67 + 56);
  v72 = (v69 + 63) >> 6;

  v127 = v67;

  v115 = 0;
  v73 = 0;
  v116 = MEMORY[0x277D84F98];
  v125 = v67 + 56;
  for (i = v72; v71; v59 = v128)
  {
LABEL_35:
    while (1)
    {
      v75 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v76 = *(v127 + 48) + 24 * (v75 | (v73 << 6));
      v77 = *v76;
      v78 = *(v76 + 8);
      v79 = *(v76 + 16);
      sub_226EB396C(*v76, v78, v79);
      v80 = sub_2276672C0();
      if (*(v80 + 16))
      {
        break;
      }

      sub_226EB2DFC(v77, v78, v79);
LABEL_30:

      v65 = v129;
      v57 = v130;
      v59 = v128;
      v68 = v125;
      v72 = i;
      if (!v71)
      {
        goto LABEL_31;
      }
    }

    v81 = sub_226F491D8();
    v83 = v82;
    sub_226EB2DFC(v77, v78, v79);
    if ((v83 & 1) == 0)
    {
      goto LABEL_30;
    }

    v84 = *(v111 + 72);
    v85 = v110;
    sub_226E93170(*(v80 + 56) + v84 * v81, v110, &qword_27D7B88C0, &unk_22767A720);

    sub_226EA9E3C(v115, 0);
    v86 = v116;
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v131 = v86;
    v88 = sub_226F3ADC4(v85);
    v90 = *(v86 + 16);
    v91 = (v89 & 1) == 0;
    v31 = __OFADD__(v90, v91);
    v92 = v90 + v91;
    v72 = i;
    if (v31)
    {
      goto LABEL_54;
    }

    v93 = v89;
    if (*(v86 + 24) >= v92)
    {
      if ((v87 & 1) == 0)
      {
        v103 = v88;
        sub_226FF2414();
        v88 = v103;
      }
    }

    else
    {
      sub_226FE6DD4(v92, v87);
      v88 = sub_226F3ADC4(v85);
      if ((v93 & 1) != (v94 & 1))
      {
        goto LABEL_58;
      }
    }

    v68 = v125;
    v95 = v131;
    if ((v93 & 1) == 0)
    {
      v96 = v131;
      v131[(v88 >> 6) + 8] |= 1 << v88;
      v97 = v88;
      sub_226E93170(v85, v96[6] + v88 * v84, &qword_27D7B88C0, &unk_22767A720);
      *(v96[7] + 8 * v97) = 0;
      v98 = v96[2];
      v31 = __OFADD__(v98, 1);
      v99 = v98 + 1;
      if (v31)
      {
        goto LABEL_56;
      }

      v88 = v97;
      v96[2] = v99;
      v95 = v96;
    }

    v116 = v95;
    v100 = *(v95 + 56);
    v101 = *(v100 + 8 * v88);
    v31 = __OFADD__(v101, 1);
    v102 = v101 + 1;
    if (v31)
    {
      goto LABEL_55;
    }

    *(v100 + 8 * v88) = v102;
    sub_226E97D1C(v85, &qword_27D7B88C0, &unk_22767A720);
    v115 = sub_227444F98;
    v65 = v129;
    v57 = v130;
  }

LABEL_31:
  while (1)
  {
    v74 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v74 >= v72)
    {

      v104 = v122;
      v105 = v120;
      *&v120[v122[11]] = v116;
      sub_22745ED8C(v19);
      v107 = v106;

      (*(v124 + 8))(v59, v57);
      (*(v119 + 8))(v123, v65);
      sub_226E97D1C(v121, &qword_27D7BB3E8, &unk_227686370);
      sub_226E97D1C(v118, &unk_27D7BB9D0, &qword_227671550);
      *(v105 + v104[17]) = v107;
      sub_227442570(v105, v114);
      sub_226EA9E3C(v115, 0);
      return sub_226EA9E3C(v21, 0);
    }

    v71 = *(v68 + 8 * v74);
    ++v73;
    if (v71)
    {
      v73 = v74;
      goto LABEL_35;
    }
  }

  __break(1u);
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
LABEL_56:
  __break(1u);
LABEL_57:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22766D220();
  __break(1u);
LABEL_58:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v127) = a4;
  v125 = a2;
  i = a3;
  v110 = a1;
  v111 = a5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v108 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v109 = &v106 - v6;
  v7 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v7);
  v118 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227667370();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v122 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276627D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v120 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  MEMORY[0x28223BE20](v15 - 8);
  v113 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v106 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v20 - 8);
  v112 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f64[0] = MEMORY[0x28223BE20](v22);
  v117 = &v106 - v24;
  v121 = v7;
  v25 = *(v7 + 60);
  v114 = v5;
  v26 = *&v5[v25];
  v27 = *(v26 + 16);
  v28 = MEMORY[0x277D84F90];
  v123 = v9;
  v124 = v12;
  v119 = v13;
  v115 = v19;
  v116 = v10;
  if (v27)
  {
    v128 = MEMORY[0x277D84F90];
    sub_226F1FD08(0, v27, 0);
    v29 = 0;
    v30 = *(v26 + 16);
    v28 = v128;
    v31 = v110;
    do
    {
      if (v30 == v29)
      {
        goto LABEL_49;
      }

      if (v29 >= *(v26 + 16))
      {
        goto LABEL_50;
      }

      v32 = *(v26 + 32 + 8 * v29);
      if (*(v31 + 16) && (sub_226F491D4(v29), (v33 & 1) != 0))
      {

        v35 = Array<A>.withBodyFocuses(_:forModality:)(v34, v125, i, v127 & 1, v32);

        v32 = v35;
      }

      else
      {
      }

      v128 = v28;
      v37 = v28[2];
      v36 = v28[3];
      if (v37 >= v36 >> 1)
      {
        sub_226F1FD08((v36 > 1), v37 + 1, 1);
        v31 = v110;
        v28 = v128;
      }

      ++v29;
      v28[2] = v37 + 1;
      v28[v37 + 4] = v32;
    }

    while (v27 != v29);
    v9 = v123;
    v12 = v124;
    v19 = v115;
    v10 = v116;
    v13 = v119;
  }

  v38 = v117;
  (*(v13 + 56))(v117, 1, 1, v12, v23);
  (*(v10 + 56))(v19, 1, 1, v9);
  v39 = v112;
  sub_226E93170(v38, v112, &unk_27D7BB9D0, &qword_227671550);
  v40 = *(v13 + 48);
  v41 = v40(v39, 1, v12);
  v42 = v121;
  if (v41 == 1)
  {
    v43 = *(v13 + 16);
    v44 = v114;
    v43(v120, v114, v12);
    if (v40(v39, 1, v12) != 1)
    {
      sub_226E97D1C(v39, &unk_27D7BB9D0, &qword_227671550);
    }
  }

  else
  {
    (*(v13 + 32))(v120, v39, v12);
    v44 = v114;
  }

  v45 = *&v44[v42[5]];
  v46 = v42[8];
  v114 = *&v44[v42[7]];
  v47 = *&v44[v46];
  v48 = v42[10];
  v112 = *&v44[v42[9]];
  v49 = v42;
  v125 = *&v44[v48];
  i = v47;
  v127 = *&v44[v42[13]];
  v50 = v113;
  sub_226E93170(v19, v113, &qword_27D7BB3E8, &unk_227686370);
  v51 = *(v10 + 48);
  v52 = v10;
  v53 = v123;
  if (v51(v50, 1, v123) == 1)
  {
    v54 = v122;
    (*(v52 + 16))(v122, &v44[v49[14]], v53);
    v55 = v51(v50, 1, v53);

    if (v55 != 1)
    {
      sub_226E97D1C(v50, &qword_27D7BB3E8, &unk_227686370);
    }
  }

  else
  {
    v54 = v122;
    (*(v52 + 32))(v122, v50, v53);
  }

  v56 = v121;
  v57 = *&v44[v121[16]];
  v58 = v44[v121[12]];
  v59 = v118;
  v60 = v124;
  (*(v119 + 16))(v118, v120, v124);
  *&v59[v56[5]] = v45;

  v61 = sub_226F491E4();
  *&v59[v56[6]] = v61;
  *&v59[v56[7]] = v114;
  *&v59[v56[8]] = i;
  *&v59[v56[9]] = v112;
  v59[v56[12]] = v58;
  *&v59[v56[10]] = v125;
  *&v59[v56[13]] = v127;
  (*(v52 + 16))(&v59[v56[14]], v54, v53);
  *&v59[v56[15]] = v28;
  v62 = v56[16];
  v63 = v60;
  *&v59[v62] = v57;
  v64 = v61 + 56;
  v65 = 1 << *(v61 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v61 + 56);
  v68 = (v65 + 63) >> 6;
  v113 = v57;

  v127 = v61;

  v114 = 0;
  v69 = 0;
  v125 = MEMORY[0x277D84F98];
  for (i = v61 + 56; v67; v53 = v123)
  {
LABEL_31:
    while (1)
    {
      v71 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      v72 = *(v127 + 48) + 24 * (v71 | (v69 << 6));
      v73 = *v72;
      v74 = *(v72 + 8);
      v75 = *(v72 + 16);
      sub_226EB396C(*v72, v74, v75);
      v76 = sub_2276672C0();
      if (*(v76 + 16))
      {
        break;
      }

      sub_226EB2DFC(v73, v74, v75);
LABEL_26:

      v53 = v123;
      v63 = v124;
      v54 = v122;
      v64 = i;
      if (!v67)
      {
        goto LABEL_27;
      }
    }

    v77 = sub_226F491D8();
    v79 = v78;
    sub_226EB2DFC(v73, v74, v75);
    if ((v79 & 1) == 0)
    {
      goto LABEL_26;
    }

    v80 = *(v108 + 72);
    v81 = v109;
    sub_226E93170(*(v76 + 56) + v80 * v77, v109, &qword_27D7B88C0, &unk_22767A720);

    sub_226EA9E3C(v114, 0);
    v82 = v125;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = v82;
    v84 = sub_226F3ADC4(v81);
    v86 = v82[2];
    v87 = (v85 & 1) == 0;
    v88 = __OFADD__(v86, v87);
    v89 = v86 + v87;
    if (v88)
    {
      goto LABEL_51;
    }

    v90 = v85;
    v63 = v124;
    if (v82[3] >= v89)
    {
      v54 = v122;
      v64 = i;
      if (isUniquelyReferenced_nonNull_native)
      {
        v92 = v128;
        if (v85)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v99 = v84;
        sub_226FF2414();
        v54 = v122;
        v84 = v99;
        v92 = v128;
        if (v90)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      sub_226FE6DD4(v89, isUniquelyReferenced_nonNull_native);
      v84 = sub_226F3ADC4(v109);
      v64 = i;
      if ((v90 & 1) != (v91 & 1))
      {
        goto LABEL_54;
      }

      v54 = v122;
      v92 = v128;
      if (v90)
      {
        goto LABEL_42;
      }
    }

    v92[(v84 >> 6) + 8] |= 1 << v84;
    v93 = v84;
    sub_226E93170(v109, v92[6] + v84 * v80, &qword_27D7B88C0, &unk_22767A720);
    *(v92[7] + 8 * v93) = 0;
    v94 = v92[2];
    v88 = __OFADD__(v94, 1);
    v95 = v94 + 1;
    if (v88)
    {
      goto LABEL_53;
    }

    v84 = v93;
    v92[2] = v95;
    v54 = v122;
LABEL_42:
    v125 = v92;
    v96 = v92[7];
    v97 = *(v96 + 8 * v84);
    v88 = __OFADD__(v97, 1);
    v98 = v97 + 1;
    if (v88)
    {
      goto LABEL_52;
    }

    *(v96 + 8 * v84) = v98;
    sub_226E97D1C(v109, &qword_27D7B88C0, &unk_22767A720);
    v114 = sub_227444F98;
  }

LABEL_27:
  while (1)
  {
    v70 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v70 >= v68)
    {

      v100 = v121;
      v101 = v54;
      v102 = v118;
      *&v118[v121[11]] = v125;
      sub_22745ED8C(v113);
      v104 = v103;

      (*(v116 + 8))(v101, v53);
      (*(v119 + 8))(v120, v63);
      sub_226E97D1C(v115, &qword_27D7BB3E8, &unk_227686370);
      sub_226E97D1C(v117, &unk_27D7BB9D0, &qword_227671550);
      *(v102 + v100[17]) = v104;
      sub_227442570(v102, v111);
      return sub_226EA9E3C(v114, 0);
    }

    v67 = *(v64 + 8 * v70);
    ++v69;
    if (v67)
    {
      v69 = v70;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t WorkoutPlanGenerationScaffold.planIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2276627D0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double WorkoutPlanGenerationScaffold.requestedModalitySchedulePreferences.getter()
{
  type metadata accessor for WorkoutPlanGenerationScaffold(0);

  return result;
}

double WorkoutPlanGenerationScaffold.requestedModalityKinds.getter()
{
  type metadata accessor for WorkoutPlanGenerationScaffold(0);

  return result;
}

double WorkoutPlanGenerationScaffold.requestedWeekdays.getter()
{
  type metadata accessor for WorkoutPlanGenerationScaffold(0);

  return result;
}

double WorkoutPlanGenerationScaffold.requestedCategoryCounts.getter()
{
  type metadata accessor for WorkoutPlanGenerationScaffold(0);

  return result;
}

double WorkoutPlanGenerationScaffold.modalityDurationMapping.getter()
{
  type metadata accessor for WorkoutPlanGenerationScaffold(0);

  return result;
}

double WorkoutPlanGenerationScaffold.currentSchedule.getter()
{
  type metadata accessor for WorkoutPlanGenerationScaffold(0);

  return result;
}

double WorkoutPlanGenerationScaffold.modalitiesSelected.getter()
{
  type metadata accessor for WorkoutPlanGenerationScaffold(0);

  return result;
}

uint64_t WorkoutPlanGenerationScaffold.isModalityRequested(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + *(type metadata accessor for WorkoutPlanGenerationScaffold(0) + 24));

  return sub_22718C9FC(a1, a2, a3 & 1, v7);
}

Swift::Bool __swiftcall WorkoutPlanGenerationScaffold.satisfiesSoftConstraints()()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  if ((sub_227466504() & 1) == 0)
  {
    sub_22766A630();
    v29 = sub_22766B380();
    v30 = sub_22766C8B0();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_28;
    }

    v39 = v0;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_226E8E000, v29, v30, "Invalid schedule due to repeated modality violation", v31, 2u);
LABEL_27:
    MEMORY[0x22AA9A450](v31, -1, -1);
    v0 = v39;
    goto LABEL_28;
  }

  sub_227466864();
  if ((v22 & 1) == 0)
  {
    sub_22766A630();
    v29 = sub_22766B380();
    v32 = sub_22766C8B0();
    if (!os_log_type_enabled(v29, v32))
    {
      v21 = v18;
      goto LABEL_28;
    }

    v39 = v0;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_226E8E000, v29, v32, "Invalid schedule due to repeated category violation", v31, 2u);
    v21 = v18;
    goto LABEL_27;
  }

  sub_227466B9C();
  if ((v23 & 1) == 0)
  {
    sub_22766A630();
    v29 = sub_22766B380();
    v33 = sub_22766C8B0();
    if (!os_log_type_enabled(v29, v33))
    {
      v21 = v15;
      goto LABEL_28;
    }

    v39 = v0;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_226E8E000, v29, v33, "Invalid schedule due to no adjacent strength days violation", v31, 2u);
    v21 = v15;
    goto LABEL_27;
  }

  sub_227466F7C();
  if ((v24 & 1) == 0)
  {
    sub_22766A630();
    v29 = sub_22766B380();
    v34 = sub_22766C8B0();
    if (!os_log_type_enabled(v29, v34))
    {
      v21 = v12;
      goto LABEL_28;
    }

    v39 = v0;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_226E8E000, v29, v34, "Invalid schedule due to no adjacent multiple strength days violation", v31, 2u);
    v21 = v12;
    goto LABEL_27;
  }

  sub_227467610();
  if (v25)
  {
    sub_2274688EC();
    if (v26)
    {
      sub_227468C54();
      if (v27)
      {
        return 1;
      }

      sub_22766A630();
      v29 = sub_22766B380();
      v37 = sub_22766C8B0();
      if (!os_log_type_enabled(v29, v37))
      {
        v21 = v3;
        goto LABEL_28;
      }

      v39 = v0;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_226E8E000, v29, v37, "Invalid schedule due to HIIT cap violation", v31, 2u);
      v21 = v3;
    }

    else
    {
      sub_22766A630();
      v29 = sub_22766B380();
      v36 = sub_22766C8B0();
      if (!os_log_type_enabled(v29, v36))
      {
        v21 = v6;
        goto LABEL_28;
      }

      v39 = v0;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_226E8E000, v29, v36, "Invalid schedule due to cooldown violation", v31, 2u);
      v21 = v6;
    }

    goto LABEL_27;
  }

  sub_22766A630();
  v29 = sub_22766B380();
  v35 = sub_22766C8B0();
  if (os_log_type_enabled(v29, v35))
  {
    v39 = v0;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_226E8E000, v29, v35, "Invalid schedule due to yoga-cardio duration violation", v31, 2u);
    v21 = v9;
    goto LABEL_27;
  }

  v21 = v9;
LABEL_28:

  (*(v1 + 8))(v21, v0);
  return 0;
}

uint64_t sub_227466504()
{
  v33 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v34 = v0;
  v1 = *(v0 + v33[15]);
  v36 = *(v1 + 16);
  if (!v36)
  {
    return 1;
  }

  v2 = 0;
  v37 = v1 + 32;
  v35 = *(v0 + v33[15]);
LABEL_5:
  if (v2 < *(v1 + 16))
  {
    v3 = *(v37 + 8 * v2);
    v4 = *(v3 + 16);
    if (!v4)
    {
      goto LABEL_4;
    }

    v38 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);

    v39 = 0;
    v5 = 0;
    v6 = 1 - v4;
    v7 = (v3 + 64);
    v8 = MEMORY[0x277D84F98];
    while (1)
    {
      v11 = *(v7 - 2);
      v12 = *(v7 - 1);
      v13 = *v7;
      sub_226EB396C(v11, v12, *v7);
      sub_226EA9E3C(v5, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v8;
      v16 = sub_226F491D8();
      v17 = v8[2];
      v18 = (v15 & 1) == 0;
      if (__OFADD__(v17, v18))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

      v19 = v15;
      if (v8[3] >= v17 + v18)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v15)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_226FF6744();
          v8 = v40;
          if (v19)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_226FF6748();
        v8 = v40;
        v20 = sub_226F491D8();
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_41;
        }

        v16 = v20;
        if (v19)
        {
          goto LABEL_22;
        }
      }

      sub_226F04A6C(&v40);
      v22 = v40;
      v8[(v16 >> 6) + 8] |= 1 << v16;
      v23 = v8[6] + 24 * v16;
      *v23 = v11;
      *(v23 + 8) = v12;
      *(v23 + 16) = v13;
      *(v8[7] + 8 * v16) = v22;
      v24 = v8[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_39;
      }

      v8[2] = v26;
      sub_226EB396C(v11, v12, v13);
LABEL_22:
      v27 = v8[7];
      v28 = *(v27 + 8 * v16);
      v25 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v25)
      {
        goto LABEL_37;
      }

      *(v27 + 8 * v16) = v29;
      if (v8[2] && (v30 = sub_226F491D8(), (v31 & 1) != 0))
      {
        v9 = *(v8[7] + 8 * v30);
        sub_226EB2DFC(v11, v12, v13);
        v10 = v39;
        if (v9 > v39)
        {
          v10 = v9;
        }

        v39 = v10;
      }

      else
      {
        sub_226EB2DFC(v11, v12, v13);
        if (v39 <= 0)
        {
          if (!v6)
          {

            v1 = v35;
            v2 = v38;
            goto LABEL_4;
          }

          v39 = 0;
          goto LABEL_12;
        }
      }

      if (!v6)
      {

        if (v39 > 2)
        {
          return 0;
        }

        v1 = v35;
        v2 = v38;
        if (v39 == 2 && *(v34 + v33[7]) != 90 && *(*(v34 + v33[6]) + 16) != 1)
        {
          return 0;
        }

LABEL_4:
        if (++v2 == v36)
        {
          return 1;
        }

        goto LABEL_5;
      }

LABEL_12:
      ++v6;
      v7 += 40;
      v5 = sub_226F04A6C;
      if (v6 == 1)
      {
        goto LABEL_38;
      }
    }
  }

  __break(1u);
LABEL_41:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_227466864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v39 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v38 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v37 = &v29 - v4;
  MEMORY[0x28223BE20](v5);
  v36 = &v29 - v6;
  v7 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  if (*(v0 + *(v7 + 28)) != 90)
  {
    v8 = v7;

    v10 = *(sub_226F35844(v9) + 16);

    if (v10 != 1 && *(*(v0 + *(v8 + 32)) + 16) >= v10)
    {
      v11 = *(v0 + *(v8 + 60));
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = v11 + 32;
        v32 = v8;
        v33 = v0;
        v30 = v12;
        v31 = v11;
        v29 = v11 + 32;
        while (v13 < *(v11 + 16))
        {
          v15 = *(v14 + 8 * v13);
          v16 = *(v15 + 16);
          if (v16)
          {
            v34 = v13;

            v17 = sub_2276672C0();
            v18 = 0;
            v40 = MEMORY[0x277D84FA0];
            v19 = (v15 + 64);
            v35 = v15;
            while (v18 < *(v15 + 16))
            {
              if (*(v17 + 16))
              {
                v20 = *v19;
                v22 = *(v19 - 2);
                v21 = *(v19 - 1);
                sub_226EB396C(v22, v21, *v19);
                v23 = sub_226F491D8();
                v25 = v24;
                sub_226EB2DFC(v22, v21, v20);
                if (v25)
                {
                  v26 = v36;
                  sub_226E93170(*(v17 + 56) + *(v39 + 72) * v23, v36, &qword_27D7B88C0, &unk_22767A720);
                  sub_226E93170(v26, v38, &qword_27D7B88C0, &unk_22767A720);
                  v27 = v37;
                  v28 = sub_227105A44();
                  sub_226E97D1C(v27, &qword_27D7B88C0, &unk_22767A720);
                  v15 = v35;
                  sub_226E97D1C(v26, &qword_27D7B88C0, &unk_22767A720);
                  if ((v28 & 1) == 0)
                  {

                    return;
                  }
                }
              }

              ++v18;
              v19 += 40;
              if (v16 == v18)
              {

                v12 = v30;
                v11 = v31;
                v13 = v34;
                v14 = v29;
                goto LABEL_8;
              }
            }

            __break(1u);
            break;
          }

LABEL_8:
          if (++v13 == v12)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_227466B9C()
{
  v1 = v0;
  v2 = sub_2276681F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  *&v49 = sub_227433850(*(v0 + *(v6 + 32)));

  sub_2274695CC(&v49);

  v7 = v49;
  sub_227667240();
  v8 = sub_227668090();
  (*(v3 + 8))(v5, v2);
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = 0;
  v11 = v7[2];
  while (v11 != v10)
  {
    v12 = &v7[v10++];
    if (v12[4] == v9)
    {
      v13 = 0;
      while (v11 != v13)
      {
        v14 = &v7[v13++];
        if (!v14[4])
        {
          *&v49 = v7;
          sub_227461E54(0);
          v7 = v49;
          v11 = *(v49 + 16);
          goto LABEL_9;
        }
      }

      break;
    }
  }

LABEL_9:

  swift_unknownObjectRetain_n();
  if (v11 < 2)
  {
LABEL_10:
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease_n();
    return;
  }

  v15 = 0;
  v16 = v11 - 1;
  v17 = v7 + 4;
  v46 = xmmword_227685FB0;
  v18 = 1;
  v41 = v6;
  v42 = v1;
  v43 = v8 - 1;
  v39 = v7 + 4;
  v40 = v11 - 1;
  while (1)
  {
    if (v15 == v16)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v18 == v11)
    {
      goto LABEL_10;
    }

    if (v18 >= v11)
    {
      goto LABEL_39;
    }

    v19 = v17[v15];
    v20 = v17[v18];
    v21 = v19 - v20;
    if (__OFSUB__(v19, v20))
    {
      goto LABEL_40;
    }

    v22 = v19 - v20;
    if ((v21 & 0x8000000000000000) != 0)
    {
      v22 = v20 - v19;
      if (__OFSUB__(0, v21))
      {
        goto LABEL_43;
      }
    }

    if (v22 == 1 || v21 == v9)
    {
      break;
    }

LABEL_14:
    ++v15;
    ++v18;
    if (v15 == v16)
    {
      goto LABEL_10;
    }
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v24 = *(v1 + *(v6 + 60));
  if (v19 >= *(v24 + 16))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v44 = v24 + 32;
  v25 = *(*(v24 + 32 + 8 * v19) + 16);

  v26 = (v45 + 64);
  v27 = v25 + 1;
  do
  {
    if (!--v27)
    {
      v9 = v43;
LABEL_13:

      v6 = v41;
      v1 = v42;
      v17 = v39;
      v16 = v40;
      goto LABEL_14;
    }

    v28 = v26 + 40;
    v29 = *v26;
    v49 = *(v26 - 1);
    v50 = v29;
    v47 = v46;
    v48 = 1;
    sub_226F48150();
    sub_226EC1E18();
    v30 = sub_227663B20();
    v26 = v28;
  }

  while ((v30 & 1) == 0);

  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (v20 < *(v24 + 16))
  {
    v31 = *(v44 + 8 * v20);
    v32 = *(v31 + 16);

    v33 = (v31 + 64);
    v34 = v32 + 1;
    v9 = v43;
    while (--v34)
    {
      v35 = v33 + 40;
      v36 = *v33;
      v49 = *(v33 - 1);
      v50 = v36;
      v47 = v46;
      v48 = 1;
      v37 = sub_227663B20();
      v33 = v35;
      if (v37)
      {
        swift_unknownObjectRelease_n();

        return;
      }
    }

    goto LABEL_13;
  }

LABEL_46:
  __break(1u);

  __break(1u);
}

void sub_227466F7C()
{
  v1 = v0;
  v2 = sub_2276681F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  *&v64 = sub_227433850(*(v0 + *(v6 + 32)));

  sub_2274695CC(&v64);

  v7 = v64;
  sub_227667240();
  v8 = sub_227668090();
  (*(v3 + 8))(v5, v2);
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    goto LABEL_87;
  }

  v10 = 0;
  v11 = *(v7 + 16);
  while (v11 != v10)
  {
    v12 = v7 + 8 * v10++;
    if (*(v12 + 32) == v9)
    {
      v13 = 0;
      while (v11 != v13)
      {
        v14 = v7 + 8 * v13++;
        if (!*(v14 + 32))
        {
          *&v64 = v7;
          sub_2274612A8(&unk_283A95330, sub_2273A5610);
          v7 = v64;
          v11 = *(v64 + 16);
          goto LABEL_9;
        }
      }

      break;
    }
  }

LABEL_9:

  swift_unknownObjectRetain_n();
  if (v11 < 2)
  {
LABEL_75:
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease_n();
    return;
  }

  v15 = 0;
  v16 = v11 - 1;
  v46[1] = v7;
  v17 = v7 + 32;
  v61 = xmmword_227685FB0;
  v18 = 1;
  v55 = v1;
  v52 = v8 - 1;
  v53 = v6;
  v51 = v11;
  v50 = v11 - 1;
  v49 = v7 + 32;
  while (v15 != v16)
  {
    if (v18 == v11)
    {
      goto LABEL_75;
    }

    if (v18 >= v11)
    {
      goto LABEL_83;
    }

    v19 = *(v17 + 8 * v15);
    v20 = *(v17 + 8 * v18);
    v21 = v19 - v20;
    if (__OFSUB__(v19, v20))
    {
      goto LABEL_84;
    }

    v22 = v19 - v20;
    if (v21 < 0)
    {
      v22 = v20 - v19;
      if (__OFSUB__(0, v21))
      {
        goto LABEL_88;
      }
    }

    if (v22 == 1 || v21 == v9)
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }

      v24 = *(v1 + *(v6 + 60));
      if (v19 >= *(v24 + 16))
      {
        goto LABEL_86;
      }

      v54 = *(v17 + 8 * v18);
      v56 = v18;
      v57 = v15;
      v48 = v24;
      v47 = v24 + 32;
      v25 = *(v24 + 32 + 8 * v19);
      v26 = *(v25 + 16);

      if (v26)
      {
        sub_226F48150();
        sub_226EC1E18();
        v27 = 0;
        v28 = (v25 + 64);
        while (1)
        {
          v29 = *v28;
          v64 = *(v28 - 1);
          v65 = v29;
          v62 = v61;
          v63 = 1;
          if (sub_227663B20())
          {
            break;
          }

          ++v27;
          v28 += 40;
          if (v26 == v27)
          {
            goto LABEL_32;
          }
        }

        v26 = v27;
LABEL_32:
        v1 = v55;
      }

      v7 = *(v25 + 16);
      if (v7 >= v26)
      {
        if (v26 == v7)
        {
LABEL_11:

          v9 = v52;
          v6 = v53;
          v11 = v51;
          v18 = v56;
          v15 = v57;
          v16 = v50;
          v17 = v49;
          goto LABEL_12;
        }

        v58 = v25;
        v59 = v7;
        v60 = 1;
      }

      else
      {
        v58 = v25;
        v59 = v26;
        v60 = -1;
        v26 = v7;
      }

      v30 = 0;
      v31 = v58 + 32;
LABEL_40:
      v32 = __OFADD__(v30, v60);
      v30 += v60;
      if (v32)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        break;
      }

      if (v26 == v7)
      {
        goto LABEL_79;
      }

      do
      {
        v33 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        if (v33 == v7)
        {
          v26 = v7;
          goto LABEL_39;
        }

        if (v33 >= v7)
        {
          goto LABEL_74;
        }

        v34 = v31 + 40 * v33;
        v35 = *(v34 + 32);
        v64 = *(v34 + 16);
        v65 = v35;
        v62 = v61;
        v63 = 1;
        sub_226F48150();
        sub_226EC1E18();
        ++v26;
      }

      while ((sub_227663B20() & 1) == 0);
      v26 = v33;
LABEL_39:
      if (v26 != v59)
      {
        goto LABEL_40;
      }

      v36 = v30 <= 1;
      v1 = v55;
      v18 = v56;
      v9 = v52;
      v6 = v53;
      v11 = v51;
      v15 = v57;
      v16 = v50;
      v17 = v49;
      if (!v36)
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_89;
        }

        if (v54 >= *(v48 + 16))
        {
          goto LABEL_90;
        }

        v37 = *(v47 + 8 * v54);
        v38 = *(v37 + 16);

        v58 = v37;
        if (v38)
        {
          sub_226F48150();
          sub_226EC1E18();
          v7 = 0;
          v39 = (v37 + 64);
          while (1)
          {
            v40 = *v39;
            v64 = *(v39 - 1);
            v65 = v40;
            v62 = v61;
            v63 = 1;
            if (sub_227663B20())
            {
              break;
            }

            ++v7;
            v39 += 40;
            if (v38 == v7)
            {
              goto LABEL_56;
            }
          }

          v38 = v7;
LABEL_56:
          v37 = v58;
        }

        v41 = *(v37 + 16);
        if (v41 >= v38)
        {
          if (v38 == v41)
          {
            goto LABEL_11;
          }

          v59 = v41;
          v60 = 1;
        }

        else
        {
          v59 = v38;
          v60 = -1;
          v38 = v41;
        }

        v7 = 0;
        v42 = v58 + 32;
        while (2)
        {
          v32 = __OFADD__(v7, v60);
          v7 += v60;
          if (v32)
          {
            goto LABEL_80;
          }

          if (v38 == v41)
          {
            goto LABEL_81;
          }

          do
          {
            v43 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              __break(1u);
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            if (v43 == v41)
            {
              v38 = v41;
              goto LABEL_63;
            }

            if (v43 >= v41)
            {
              goto LABEL_77;
            }

            v44 = v42 + 40 * v43;
            v45 = *(v44 + 32);
            v64 = *(v44 + 16);
            v65 = v45;
            v62 = v61;
            v63 = 1;
            sub_226F48150();
            sub_226EC1E18();
            ++v38;
          }

          while ((sub_227663B20() & 1) == 0);
          v38 = v43;
LABEL_63:
          if (v38 != v59)
          {
            continue;
          }

          break;
        }

        v1 = v55;
        v18 = v56;
        v9 = v52;
        v6 = v53;
        v11 = v51;
        v15 = v57;
        v16 = v50;
        v17 = v49;
        if (v7 > 1)
        {
          goto LABEL_75;
        }
      }
    }

LABEL_12:
    ++v15;
    ++v18;
    if (v15 == v16)
    {
      goto LABEL_75;
    }
  }

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
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);

  __break(1u);
}

void sub_227467610()
{
  v127 = sub_2276681F0();
  v1 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v145 = &v120 - v5;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB370, &unk_227686440);
  MEMORY[0x28223BE20](v154);
  v168 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v140 = &v120 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB378, &qword_22767A730);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v120 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v120 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v120 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v120 - v22;
  MEMORY[0x28223BE20](v24);
  v143 = &v120 - v25;
  v162 = sub_227666900();
  v26 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v128 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v160 = &v120 - v29;
  MEMORY[0x28223BE20](v30);
  v136 = &v120 - v31;
  v134 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v32 = *(v0 + v134[15]);
  v33 = *(v32 + 16);
  if (!v33)
  {
    return;
  }

  v34 = 0;
  v35 = v32 + 32;
  v132 = (v26 + 104);
  v131 = *MEMORY[0x277D52720];
  v159 = (v26 + 16);
  v158 = (v4 + 56);
  v125 = (v26 + 8);
  v124 = (v1 + 8);
  v138 = xmmword_227686360;
  v148 = v11;
  v163 = v14;
  v161 = v17;
  v151 = v23;
  v135 = v0;
  v153 = v3;
  v146 = v4;
  v139 = v20;
  v123 = v32;
  v122 = v33;
  v121 = v32 + 32;
  v152 = (v4 + 48);
  do
  {
    if (v34 >= *(v32 + 16))
    {
      goto LABEL_89;
    }

    v36 = *(v35 + 8 * v34);
    if (*(v36 + 16) >= 2uLL)
    {
      v129 = v34;
      v37 = v136;
      v38 = v162;
      v130 = *v132;
      v130(v136, v131, v162);
      v39 = v134[14];

      v133 = v39;
      v40 = sub_2276672C0();
      v157 = *v159;
      v157(v160, v37, v38);
      v41 = *(v36 + 16);

      v156 = v158 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v137 = v36;
      v155 = v40;
      if (!v41)
      {
        v45 = 0;
        goto LABEL_25;
      }

      v42 = 0;
      v43 = (v36 + 64);
      v149 = v41;
      while (1)
      {
        v47 = *(v43 - 3);
        v48 = *(v43 - 2);
        v49 = *(v43 - 1);
        v50 = *v43;
        v51 = *(v40 + 16);
        v167 = v42;
        v166 = v50;
        v164 = v48;
        v165 = v49;
        v150 = v47;
        if (v51)
        {

          sub_226EB396C(v48, v49, v50);
          sub_226EB396C(v48, v49, v50);
          v52 = sub_226F491D8();
          v54 = v53;
          sub_226EB2DFC(v48, v49, v50);
          if (v54)
          {
            v55 = v146;
            v56 = v143;
            sub_226E93170(*(v40 + 56) + *(v146 + 72) * v52, v143, &qword_27D7B88C0, &unk_22767A720);
            v57 = *(v55 + 56);
            v58 = v153;
            v57(v56, 0, 1, v153);
          }

          else
          {
            v57 = *v158;
            v56 = v143;
            v58 = v153;
            (*v158)(v143, 1, 1, v153);
          }
        }

        else
        {
          v57 = *v158;
          v56 = v143;
          v59 = v48;
          v58 = v153;
          (*v158)(v143, 1, 1, v153);

          sub_226EB396C(v59, v49, v50);
        }

        v157(v23, v160, v162);
        swift_storeEnumTagMultiPayload();
        v57(v23, 0, 1, v58);
        v60 = *(v154 + 48);
        v61 = v140;
        sub_226E93170(v56, v140, &qword_27D7BB378, &qword_22767A730);
        sub_226E93170(v23, v61 + v60, &qword_27D7BB378, &qword_22767A730);
        v62 = v56;
        v63 = *v152;
        if ((*v152)(v61, 1, v58) == 1)
        {
          break;
        }

        v64 = v139;
        sub_226E93170(v61, v139, &qword_27D7BB378, &qword_22767A730);
        if (v63(v61 + v60, 1, v58) != 1)
        {
          v67 = v145;
          sub_226F50B4C(v61 + v60, v145);
          sub_22746B598(&qword_27D7B88D8, MEMORY[0x277D52740]);
          sub_22746B598(&qword_27D7B88E0, MEMORY[0x277D52748]);
          v68 = sub_227663B20();
          sub_226E97D1C(v67, &qword_27D7B88C0, &unk_22767A720);
          v69 = v151;
          sub_226E97D1C(v151, &qword_27D7BB378, &qword_22767A730);
          sub_226E97D1C(v143, &qword_27D7BB378, &qword_22767A730);
          v70 = v64;
          v23 = v69;
          sub_226E97D1C(v70, &qword_27D7B88C0, &unk_22767A720);
          sub_226E97D1C(v61, &qword_27D7BB378, &qword_22767A730);

          sub_226EB2DFC(v164, v165, v166);
          v17 = v161;
          v40 = v155;
          v45 = v167;
          if (v68)
          {
            goto LABEL_25;
          }

          goto LABEL_11;
        }

        v65 = v151;
        sub_226E97D1C(v151, &qword_27D7BB378, &qword_22767A730);
        sub_226E97D1C(v143, &qword_27D7BB378, &qword_22767A730);
        v66 = v64;
        v23 = v65;
        sub_226E97D1C(v66, &qword_27D7B88C0, &unk_22767A720);
        v17 = v161;
        v45 = v167;
        v46 = v165;
LABEL_10:
        sub_226E97D1C(v61, &qword_27D7BB370, &unk_227686440);

        sub_226EB2DFC(v164, v46, v166);
        v40 = v155;
LABEL_11:
        v42 = v45 + 1;
        v43 += 40;
        if (v149 == v42)
        {
          v45 = v149;
          goto LABEL_25;
        }
      }

      sub_226E97D1C(v23, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v62, &qword_27D7BB378, &qword_22767A730);
      v44 = v63(v61 + v60, 1, v58);
      v17 = v161;
      v45 = v167;
      v46 = v165;
      if (v44 != 1)
      {
        goto LABEL_10;
      }

      sub_226E97D1C(v61, &qword_27D7BB378, &qword_22767A730);

      sub_226EB2DFC(v164, v46, v166);
      v40 = v155;
LABEL_25:
      v71 = *(v137 + 16);
      if (v71 >= v45)
      {
        if (v45 == v71)
        {

          v72 = v137;

          v144 = 0;
          goto LABEL_53;
        }

        v142 = 1;
        v141 = v71;
      }

      else
      {
        v142 = -1;
        v141 = v45;
        v45 = v71;
      }

      v144 = 0;
      v149 = v137 + 32;
      v150 = v71;
      while (2)
      {
        v73 = __OFADD__(v144, v142);
        v144 += v142;
        if (v73)
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        if (v45 == v71)
        {
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          return;
        }

        while (1)
        {
LABEL_38:
          v73 = __OFADD__(v45, 1);
          v75 = v45 + 1;
          if (v73)
          {
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          if (v75 == v71)
          {
            v45 = v71;
            goto LABEL_32;
          }

          if (v75 >= v71)
          {
            goto LABEL_83;
          }

          v167 = v75;
          v76 = v149 + 40 * v75;
          v77 = *(v76 + 8);
          v78 = *(v76 + 16);
          v79 = *(v76 + 24);
          v80 = *(v76 + 32);
          v81 = *(v40 + 16);
          v166 = v80;
          v164 = v77;
          v165 = v79;
          if (v81)
          {

            sub_226EB396C(v78, v79, v80);
            sub_226EB396C(v78, v79, v80);
            v82 = sub_226F491D8();
            v84 = v83;
            sub_226EB2DFC(v78, v79, v80);
            if (v84)
            {
              v85 = v146;
              v86 = *(v40 + 56) + *(v146 + 72) * v82;
              v17 = v161;
              sub_226E93170(v86, v161, &qword_27D7B88C0, &unk_22767A720);
              v87 = *(v85 + 56);
              v88 = v153;
              v87(v17, 0, 1, v153);
            }

            else
            {
              v87 = *v158;
              v17 = v161;
              v88 = v153;
              (*v158)(v161, 1, 1, v153);
            }
          }

          else
          {
            v87 = *v158;
            v88 = v153;
            (*v158)(v17, 1, 1, v153);

            sub_226EB396C(v78, v79, v80);
          }

          v89 = v163;
          v157(v163, v160, v162);
          swift_storeEnumTagMultiPayload();
          v87(v89, 0, 1, v88);
          v90 = *(v154 + 48);
          v91 = v168;
          sub_226E93170(v17, v168, &qword_27D7BB378, &qword_22767A730);
          sub_226E93170(v89, v91 + v90, &qword_27D7BB378, &qword_22767A730);
          v92 = v17;
          v93 = *v152;
          if ((*v152)(v91, 1, v88) == 1)
          {
            break;
          }

          v94 = v168;
          v95 = v148;
          sub_226E93170(v168, v148, &qword_27D7BB378, &qword_22767A730);
          if (v93(v94 + v90, 1, v88) == 1)
          {
            sub_226E97D1C(v163, &qword_27D7BB378, &qword_22767A730);
            v17 = v161;
            sub_226E97D1C(v161, &qword_27D7BB378, &qword_22767A730);
            sub_226E97D1C(v95, &qword_27D7B88C0, &unk_22767A720);
            v40 = v155;
            goto LABEL_37;
          }

          v96 = v145;
          sub_226F50B4C(v94 + v90, v145);
          sub_22746B598(&qword_27D7B88D8, MEMORY[0x277D52740]);
          sub_22746B598(&qword_27D7B88E0, MEMORY[0x277D52748]);
          v147 = sub_227663B20();
          sub_226E97D1C(v96, &qword_27D7B88C0, &unk_22767A720);
          sub_226E97D1C(v163, &qword_27D7BB378, &qword_22767A730);
          v17 = v161;
          sub_226E97D1C(v161, &qword_27D7BB378, &qword_22767A730);
          sub_226E97D1C(v95, &qword_27D7B88C0, &unk_22767A720);
          sub_226E97D1C(v94, &qword_27D7BB378, &qword_22767A730);

          sub_226EB2DFC(v78, v165, v166);
          v23 = v151;
          v40 = v155;
          v45 = v167;
          v71 = v150;
          if (v147)
          {
            goto LABEL_32;
          }
        }

        sub_226E97D1C(v89, &qword_27D7BB378, &qword_22767A730);
        sub_226E97D1C(v92, &qword_27D7BB378, &qword_22767A730);
        v74 = v93(v168 + v90, 1, v88);
        v17 = v92;
        v40 = v155;
        if (v74 != 1)
        {
LABEL_37:
          sub_226E97D1C(v168, &qword_27D7BB370, &unk_227686440);

          sub_226EB2DFC(v78, v165, v166);
          v23 = v151;
          v45 = v167;
          v71 = v150;
          goto LABEL_38;
        }

        sub_226E97D1C(v168, &qword_27D7BB378, &qword_22767A730);

        sub_226EB2DFC(v78, v165, v166);
        v23 = v151;
        v45 = v167;
        v71 = v150;
LABEL_32:
        if (v45 != v141)
        {
          continue;
        }

        break;
      }

      v72 = v137;

LABEL_53:
      v97 = *v125;
      v98 = v162;
      (*v125)(v160, v162);
      v97(v136, v98);
      v99 = v128;
      v130(v128, v131, v98);
      v100 = sub_2276672C0();
      Array<A>.totalDuration(forModalityCategory:usingMapping:)(v99, v100, v72);
      v167 = v101;

      v97(v99, v98);
      v102 = *(v72 + 16);

      v103 = 0;
      v104 = 0;
      v105 = (v72 + 64);
LABEL_54:
      v106 = &v105[40 * v103];
      while (v102 != v103)
      {
        if (v103 >= v102)
        {
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v107 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_86;
        }

        v108 = *(v106 - 4);
        v109 = *v106;
        v171 = *(v106 - 1);
        v172 = v109;
        LOBYTE(v169) = 13;
        sub_226F48150();
        sub_226EC1E18();
        ++v103;
        v106 += 40;
        if (sub_227663B30())
        {
          v103 = v107;
          v73 = __OFADD__(v104, v108);
          v104 += v108;
          if (v73)
          {
            goto LABEL_91;
          }

          goto LABEL_54;
        }
      }

      v110 = v135;
      v111 = v126;
      sub_227667240();
      v112 = sub_227667F60();
      (*v124)(v111, v127);
      v113 = v167 - v112;
      if (__OFSUB__(v167, v112))
      {
        goto LABEL_90;
      }

      v114 = *(v110 + v134[7]);
      if (v114 == 90 && v144 >= 2 && v104 >= v113)
      {
LABEL_84:

        return;
      }

      v117 = v114 > 89 || v144 <= 0;
      v17 = v161;
      if (v117)
      {
LABEL_3:

        v32 = v123;
        v33 = v122;
        v34 = v129;
        v35 = v121;
        goto LABEL_4;
      }

      v118 = *(v137 + 16) + 1;
      while (--v118)
      {
        v119 = *v105;
        v171 = *(v105 - 1);
        v172 = v119;
        v169 = v138;
        v170 = 1;
        sub_226F48150();
        sub_226EC1E18();
        v105 += 40;
        if (sub_227663B20())
        {
          goto LABEL_3;
        }
      }

      v32 = v123;
      v33 = v122;
      v34 = v129;
      v35 = v121;
      if (v104 >= v113)
      {
        break;
      }
    }

LABEL_4:
    ++v34;
  }

  while (v34 != v33);
}

void sub_2274688EC()
{
  v1 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v2 = *(v0 + *(v1 + 24));

  v3 = sub_227667250();
  v4 = sub_22746A47C(v3, v2);

  v5 = v4[2];
  if (!v5)
  {
LABEL_44:

    return;
  }

  if (v5 <= *(v2 + 16) >> 3)
  {

    sub_2270062A8(v4);
    v6 = v2;
  }

  else
  {

    v6 = sub_227009F28(v4, v2);
  }

  v7 = *(v6 + 16);

  if (!v7)
  {
    v22 = 0;
    v23 = *(v0 + *(v1 + 60));
    v24 = *(v23 + 16);
    do
    {
      if (v24 == v22)
      {
        break;
      }

      if (v22 >= *(v23 + 16))
      {
        goto LABEL_48;
      }

      v25 = v22 + 1;

      v27 = sub_226F43E68(v26, sub_2274E8434, 0);

      v28 = *(v27 + 16);

      v22 = v25;
    }

    while (v28 == v4[2]);
    goto LABEL_44;
  }

  v8 = *(v0 + *(v1 + 60));
  v29 = *(v8 + 16);
  if (!v29)
  {
    return;
  }

  v9 = 0;
  while (v9 < *(v8 + 16))
  {
    if (!*(*(v8 + 32 + 8 * v9) + 16))
    {
      goto LABEL_16;
    }

    v13 = sub_226F43E68(v12, sub_2274693CC, 0);

    v14 = sub_227667250();
    v15 = sub_22746A47C(v13, v14)[2];

    v16 = *(v13 + 16);
    v17 = sub_22718C9FC(8, 0, 1, v13);
    v18 = sub_22718C9FC(0, 0, 1, v13);
    v19 = sub_22718C9FC(13, 0, 1, v13);

    LOBYTE(v13) = sub_22718C9FC(8, 0, 1, v2);
    v20 = sub_22718C9FC(0, 0, 1, v2);
    v21 = sub_22718C9FC(13, 0, 1, v2);
    if (v13)
    {
      if ((v20 & 1) == 0)
      {
        if (v21)
        {
          if ((v17 & (v19 | (v15 != v16)) & 1) == 0)
          {
            return;
          }

          goto LABEL_16;
        }

        if ((v17 & 1) == 0)
        {
          return;
        }

LABEL_37:
        if (v15 == v16)
        {
          return;
        }

        goto LABEL_16;
      }

      if (v15)
      {
        v10 = v15 == v16;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10;
      if (v21 & v11)
      {
        return;
      }
    }

    else
    {
      if (v20)
      {
        if (v21)
        {
          if (v18)
          {
            if (!(v19 & 1 | (v15 != v16)))
            {
              return;
            }

            goto LABEL_16;
          }

          if ((v19 & 1) == 0)
          {
            return;
          }
        }

        else if ((v18 & 1) == 0)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!(v19 & 1 | ((v21 & 1) == 0)) && v15 == v16)
      {
        return;
      }
    }

LABEL_16:
    if (v29 == ++v9)
    {
      return;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_227468C54()
{
  v1 = sub_2276681F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v6 = *(v0 + *(v5 + 24));
  if (*(v6 + 16) >= 2uLL)
  {
    v7 = v5;
    v8 = *(v0 + *(v5 + 28));
    if (v8 <= 89 && (sub_22718C9FC(6, 0, 1, v6) & 1) != 0)
    {
      v61 = v2;
      v62 = v8;
      MEMORY[0x28223BE20](1);
      *(&v61 - 2) = v0;
      v10 = sub_227469EA4(sub_22746B578, (&v61 - 4), v9, sub_22746A034, sub_22746A034);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9900, &unk_2276808E0);
      v63 = v0;
      v11 = sub_22766CFF0();
      v12 = v11;
      v13 = 0;
      v14 = 1 << v10[32];
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v10 + 8);
      v17 = (v14 + 63) >> 6;
      v18 = v11 + 64;
      while (v16)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_13:
        v22 = v19 | (v13 << 6);
        v23 = *(*(v10 + 7) + 8 * v22);
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = *(v23 + 32);
          v26 = v24 - 1;
          if (v24 != 1)
          {
            if (v24 < 5)
            {
              v27 = 1;
LABEL_21:
              v34 = v24 - v27;
              v35 = (v23 + 8 * v27 + 32);
              do
              {
                v37 = *v35++;
                v36 = v37;
                if (v25 <= v37)
                {
                  v25 = v36;
                }

                --v34;
              }

              while (v34);
              goto LABEL_25;
            }

            v27 = v26 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v28 = vdupq_n_s64(v25);
            v29 = (v23 + 56);
            v30 = v26 & 0xFFFFFFFFFFFFFFFCLL;
            v31 = v28;
            do
            {
              v28 = vbslq_s8(vcgtq_s64(v28, v29[-1]), v28, v29[-1]);
              v31 = vbslq_s8(vcgtq_s64(v31, *v29), v31, *v29);
              v29 += 2;
              v30 -= 4;
            }

            while (v30);
            v32 = vbslq_s8(vcgtq_s64(v28, v31), v28, v31);
            v33 = vextq_s8(v32, v32, 8uLL).u64[0];
            v25 = vbsl_s8(vcgtd_s64(v32.i64[0], v33), *v32.i8, v33);
            if (v26 != (v26 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          v25 = 0;
        }

LABEL_25:
        v38 = *(v10 + 6) + 24 * v22;
        v39 = *v38;
        v40 = *(v38 + 8);
        v41 = *(v38 + 16);
        *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v42 = *(v12 + 48) + 24 * v22;
        *v42 = v39;
        *(v42 + 8) = v40;
        *(v42 + 16) = v41;
        *(*(v12 + 56) + 8 * v22) = v25;
        v43 = *(v12 + 16);
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_52;
        }

        *(v12 + 16) = v45;
        sub_226EB396C(v39, v40, v41);
      }

      v20 = v13;
      while (1)
      {
        v13 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if (v13 >= v17)
        {
          break;
        }

        v21 = *&v10[8 * v13 + 64];
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_13;
        }
      }

      v46 = 0;
      v47 = 0;
      v48 = 1 << *(v12 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & *(v12 + 64);
      v51 = (v48 + 63) >> 6;
      v52 = v63;
      while (v50)
      {
        v53 = v46;
LABEL_37:
        v54 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v55 = *(*(v12 + 56) + ((v53 << 9) | (8 * v54)));
        v44 = __OFADD__(v47, v55);
        v47 += v55;
        if (v44)
        {
          __break(1u);
LABEL_40:

          v56 = 0;
          v57 = 0;
          v58 = *(v52 + *(v7 + 60));
          v59 = *(v58 + 16);
          while (v59 != v56)
          {
            if (v56 >= *(v58 + 16))
            {
              goto LABEL_51;
            }

            v60 = v56 + 1;
            v65 = *(v58 + 32 + 8 * v56);
            sub_2274691B4(&v65, &v64);
            v56 = v60;
            v44 = __OFADD__(v57, v64);
            v57 += v64;
            if (v44)
            {
              __break(1u);
              break;
            }
          }

          if (v47 >= v62)
          {
            sub_227667240();
            sub_227668020();
            (*(v61 + 8))(v4, v1);
          }

          return;
        }
      }

      while (1)
      {
        v53 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v53 >= v51)
        {
          goto LABEL_40;
        }

        v50 = *(v18 + 8 * v53);
        ++v46;
        if (v50)
        {
          v46 = v53;
          goto LABEL_37;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }
  }
}

uint64_t sub_2274690EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  if (sub_22718C9FC(v4, v5, v6, *(a3 + *(v7 + 24))))
  {
    sub_226F48150();
    sub_226EC1E18();
    v8 = sub_227663B20() ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_2274691B4(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);

  if (v4)
  {
    sub_226F48150();
    sub_226EC1E18();
    v5 = 0;
    v6 = v3 + 64;
    while ((sub_227663B20() & 1) == 0)
    {
      ++v5;
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    v4 = v5;
  }

LABEL_7:
  v7 = *(v3 + 16);
  if (v7 >= v4)
  {
    if (v4 == v7)
    {

      v8 = 0;
LABEL_23:
      *a2 = v8;
      return;
    }

    v11 = a2;
    v12 = *(v3 + 16);
    v13 = 1;
  }

  else
  {
    v11 = a2;
    v12 = v4;
    v13 = -1;
    v4 = *(v3 + 16);
  }

  v8 = 0;
  while (2)
  {
    v9 = __OFADD__(v8, v13);
    v8 += v13;
    if (v9)
    {
LABEL_26:
      __break(1u);
    }

    else if (v4 != v7)
    {
      do
      {
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (v10 == v7)
        {
          v4 = v7;
          goto LABEL_14;
        }

        if (v10 >= v7)
        {
          goto LABEL_25;
        }

        sub_226F48150();
        sub_226EC1E18();
        ++v4;
      }

      while ((sub_227663B20() & 1) == 0);
      v4 = v10;
LABEL_14:
      if (v4 != v12)
      {
        continue;
      }

      a2 = v11;
      goto LABEL_23;
    }

    break;
  }

  __break(1u);
}

unint64_t *sub_2274693FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_22746A640(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_22746948C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_22746952C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22766CD20();
LABEL_9:
  result = sub_22766CE90();
  *v2 = result;
  return result;
}

void sub_2274695CC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_227117A90(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_22766D130();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_22766C380();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_227469700(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_227469700(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_2271171D0(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_227469C4C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2273A4F9C(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = sub_2273A4F9C((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_227469C4C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_227469C4C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_227469EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, a3, v9, a2);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_22746948C(v16, v11, a3, v9, a2, a5);
  result = MEMORY[0x22AA9A450](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

unint64_t *sub_22746A034(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v21 = result;
  v4 = 0;
  v22 = 0;
  v23 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v24 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_11:
    v11 = v8 | (v4 << 6);
    v12 = *(a3 + 56);
    v13 = *(a3 + 48) + 24 * v11;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v29[0] = *v13;
    v15 = v29[0];
    v29[1] = v14;
    v30 = v16;
    v17 = v11;
    v31 = *(v12 + 8 * v11);
    sub_226EB396C(v29[0], v14, v16);

    v18 = a4(v29, &v31);

    result = sub_226EB2DFC(v15, v14, v16);
    if (v28)
    {
      return result;
    }

    v7 = v27;
    if (v18)
    {
      *(v21 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_227328C40(v21, a2, v22, a3);
      }
    }
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v24)
    {
      return sub_227328C40(v21, a2, v22, a3);
    }

    v10 = *(v23 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_22746A1F0(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, void *, __n128))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v5 = sub_227665F20();
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5);
  v37 = a3;
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = v6 + 16;
  v35 = v6;
  v32 = 0;
  v33 = (v6 + 8);
  while (v15)
  {
    v39 = (v15 - 1) & v15;
    v17 = __clz(__rbit64(v15)) | (v9 << 6);
    v18 = v38;
LABEL_11:
    v21 = v37;
    (*(v35 + 16))(v18, v37[6] + *(v35 + 72) * v17, v5, v7);
    v22 = v17;
    v23 = (v21[7] + 16 * v17);
    v24 = v5;
    v25 = v23[1];
    v40[0] = *v23;
    v40[1] = v25;

    v26 = v41;
    v27 = (v36)(v18, v40);
    v41 = v26;
    if (v26)
    {

      (*v33)(v18, v24);
      return;
    }

    v28 = v27;

    (*v33)(v18, v24);
    v5 = v24;
    v15 = v39;
    if (v28)
    {
      *(v31 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        sub_227329A6C(v31, v30, v32, v37);
        return;
      }
    }
  }

  v19 = v9;
  v18 = v38;
  while (1)
  {
    v9 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v20 = v11[v9];
    ++v19;
    if (v20)
    {
      v39 = (v20 - 1) & v20;
      v17 = __clz(__rbit64(v20)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_22746A47C(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_22746A640((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_2274693FC(v11, v6, a2, a1);

    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_22746A640(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v46 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v25 = 0;
    v45 = v5 + 56;
    v26 = 1 << *(v5 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v5 + 56);
    v29 = (v26 + 63) >> 6;
    v30 = v4 + 56;
    v48 = v29;
    v49 = 0;
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v53 = (v28 - 1) & v28;
LABEL_34:
      v51 = v31 | (v25 << 6);
      v34 = *(v5 + 48) + 24 * v51;
      v36 = *v34;
      v35 = *(v34 + 8);
      v37 = *(v34 + 16);
      sub_22766D370();
      sub_226EB396C(v36, v35, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v38 = sub_22766D3F0();
      v39 = -1 << *(v4 + 32);
      v40 = v38 & ~v39;
      if ((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        sub_226F48150();
        sub_226EC1E18();
        while ((sub_227663B20() & 1) == 0)
        {
          v40 = (v40 + 1) & v41;
          if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        result = sub_226EB2DFC(v36, v35, v37);
        *(v46 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v29 = v48;
        v24 = __OFADD__(v49++, 1);
        v5 = a3;
        v28 = v53;
        v4 = a4;
        if (v24)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:
        result = sub_226EB2DFC(v36, v35, v37);
        v5 = a3;
        v28 = v53;
        v4 = a4;
        v29 = v48;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_42;
      }

      v33 = *(v45 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v53 = (v33 - 1) & v33;
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v42 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v49 = 0;
    v50 = a3 + 56;
    v44 = v10;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v47 = (v9 - 1) & v9;
LABEL_14:
      v14 = *(v4 + 48) + 24 * (v11 | (v6 << 6));
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_22766D370();
      v52 = v15;
      sub_226EB396C(v16, v15, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v18 = sub_22766D3F0();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v50 + 8 * (v20 >> 6))) != 0)
      {
        v23 = ~v19;
        sub_226F48150();
        sub_226EC1E18();
        while ((sub_227663B20() & 1) == 0)
        {
          v20 = (v20 + 1) & v23;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v50 + 8 * (v20 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

        result = sub_226EB2DFC(v16, v52, v17);
        v10 = v44;
        v46[v21] |= v22;
        v9 = v47;
        v24 = __OFADD__(v49++, 1);
        v5 = a3;
        v4 = a4;
        if (v24)
        {
          __break(1u);
          goto LABEL_22;
        }
      }

      else
      {
LABEL_6:
        result = sub_226EB2DFC(v16, v52, v17);
        v5 = a3;
        v4 = a4;
        v10 = v44;
        v9 = v47;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
LABEL_42:

        return sub_22726A888(v46, a2, v49, v5);
      }

      v13 = *(v42 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v47 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }
  }

  __break(1u);
  return result;
}