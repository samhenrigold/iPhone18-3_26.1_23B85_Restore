uint64_t sub_231070DCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231070E68, 0, 0);
}

uint64_t sub_231070E68()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  sub_2311590A8();
  v4 = v2;
  v5 = sub_231159098();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  v8 = sub_231079B6C();
  v0[4] = v8;
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_231070FA0;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v0 + 6, v8, v10);
}

uint64_t sub_231070FA0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231071088()
{
  OUTLINED_FUNCTION_4_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2310710F0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231070DCC(v3, v4);
}

uint64_t sub_231071174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  sub_2311590A8();
  v4[20] = sub_231159098();
  v6 = sub_231159048();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x2822009F8](sub_23107120C, v6, v5);
}

uint64_t sub_23107120C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_19_1(v0 + 184);
  OUTLINED_FUNCTION_12_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v3);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v4, sel_startWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2310712D8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_2310713D8, v2, v1);
}

uint64_t sub_2310713D8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 144);

  *v1 = *(v0 + 184);
  v2 = *(v0 + 8);

  return v2();
}

double sub_231071440(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = sub_2310A0BF0(&unk_2845D7748);
  v5 = [a2 databaseProvider];
  sub_2310A1D98(v4, v5, v3);
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v8 = swift_allocObject();
  *&result = 1;
  *(v8 + 16) = xmmword_231161E80;
  *(v8 + 32) = v7;
  return result;
}

uint64_t sub_231071510()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_12_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C0D0, &qword_231162FA8);
  OUTLINED_FUNCTION_0_10(v4);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  v0[12] = sub_2310716B8;
  v0[13] = &block_descriptor_130;
  v0[14] = v3;
  OUTLINED_FUNCTION_20_3(v5, sel_collectionsDidChangeWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2310715E8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_4();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2310716B8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

uint64_t sub_2310716EC(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_231157818();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310717AC, 0, 0);
}

uint64_t sub_2310717AC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  sub_2311580E8();
  v5 = sub_2311577D8();
  v0[23] = v5;
  (*(v2 + 8))(v1, v4);
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_231071914;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231093D08;
  v0[13] = &block_descriptor_127;
  v0[14] = v6;
  [v3 receiveAutoShortcutsUpdatedNotification:v5 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_231071914()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_4();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2310719E0()
{
  OUTLINED_FUNCTION_4_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231071A68()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_19_1(v0 + 152);
  OUTLINED_FUNCTION_12_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v3);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v4, sel_applicationWasRegisteredWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231071B34()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_4();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231071C20()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_19_1(v0 + 152);
  OUTLINED_FUNCTION_12_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v3);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v4, sel_migrateAppShortcutsAndReindexAllItemsIfNeededWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231071D0C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_19_1(v0 + 152);
  OUTLINED_FUNCTION_12_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v3);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v4, sel_systemLanguageUpdatedWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231071DF8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_19_1(v0 + 152);
  OUTLINED_FUNCTION_12_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v3);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v4, sel_spotlightPreferencesChangedWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231071EE4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_19_1(v0 + 152);
  OUTLINED_FUNCTION_12_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v3);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v4, sel_cellularSettingsUpdatedWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231072014()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_8(v1);

  return sub_231062EBC(v3, v4, v5);
}

uint64_t sub_2310720A8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_2310714F0(v3, v4);
}

uint64_t sub_231072134()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_8(v1);

  return sub_231062B70(v3, v4, v5);
}

uint64_t sub_2310721C0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2310722A4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_2310716EC(v3, v4);
}

uint64_t sub_231072338()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_8(v1);

  return sub_231062834();
}

uint64_t sub_2310723C4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231071A48(v3, v4);
}

uint64_t sub_231072448()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_8(v1);

  return sub_2310625A0(v3, v4, v5);
}

uint64_t sub_2310724D4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231071C00(v3, v4);
}

uint64_t sub_231072568()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231071CEC(v3, v4);
}

uint64_t sub_2310725EC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_8(v1);

  return sub_231062180();
}

uint64_t sub_231072678()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231071DD8(v3, v4);
}

uint64_t sub_2310726FC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231071EC4(v3, v4);
}

uint64_t sub_231072788()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *v7 = v8;
  v7[1] = sub_2310721C0;

  return sub_231071174(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_1_6()
{
  v1[12] = sub_231093D08;
  v1[13] = v0;
  v1[14] = v2;
}

__n128 OUTLINED_FUNCTION_6_6(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  result = a14;
  a1[1] = a14;
  return result;
}

id OUTLINED_FUNCTION_20_3(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t DaemonStartupEvent.descriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t _s14VoiceShortcuts28DaemonStartupEventDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t _s14VoiceShortcuts28DaemonStartupEventDescriptorV9hashValueSivg_0()
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t TerminationEventSource.__allocating_init()()
{
  v0 = swift_allocObject();
  TerminationEventSource.init()();
  return v0;
}

uint64_t TerminationEventSource.init()()
{
  v1 = sub_231158318();
  signal(15, v1);
  sub_231072B28();
  *(v0 + 16) = sub_231159378();
  return v0;
}

unint64_t sub_231072B28()
{
  result = qword_280CCAF00;
  if (!qword_280CCAF00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CCAF00);
  }

  return result;
}

uint64_t sub_231072B6C(uint64_t a1)
{
  v16 = sub_231158CF8();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231158D48();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  aBlock[4] = sub_231072EF4;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231040F30;
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);

  sub_231158D08();
  sub_231072F04();
  sub_231159388();
  _Block_release(v13);
  (*(v3 + 8))(v6, v16);
  (*(v9 + 8))(v12, v7);

  return sub_231159398();
}

uint64_t sub_231072D80()
{
  v0 = sub_231158258();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311581C8();
  v4 = sub_231158238();
  v5 = sub_2311592F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23103C000, v4, v5, "Received SIGTERM", v6, 2u);
    MEMORY[0x2319267C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_23107B080(0x74616E696D726554, 0xEB000000006E6F69);
  return xpc_transaction_exit_clean();
}

uint64_t sub_231072F04()
{
  sub_231158CF8();
  sub_231073400();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C750, &qword_231161B50);
  sub_231073458();
  return sub_231159498();
}

uint64_t TerminationEventSource.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_231072FE8(uint64_t a1)
{
  result = sub_231073010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231073010()
{
  result = qword_280CCB698;
  if (!qword_280CCB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB698);
  }

  return result;
}

unint64_t sub_231073068()
{
  result = qword_280CCB690;
  if (!qword_280CCB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB690);
  }

  return result;
}

unint64_t sub_2310730BC(uint64_t a1)
{
  result = sub_2310730E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310730E4()
{
  result = qword_280CCBD98[0];
  if (!qword_280CCBD98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CCBD98);
  }

  return result;
}

unint64_t sub_231073138(uint64_t a1)
{
  result = sub_231073160();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231073160()
{
  result = qword_280CCB5E0;
  if (!qword_280CCB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5E0);
  }

  return result;
}

unint64_t sub_2310731B8()
{
  result = qword_280CCB5D8;
  if (!qword_280CCB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5D8);
  }

  return result;
}

unint64_t sub_23107320C(uint64_t a1)
{
  result = sub_231073234();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231073234()
{
  result = qword_27DD3C0F0;
  if (!qword_27DD3C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C0F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TerminationEventSource.Event(_BYTE *result, int a2, int a3)
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

unint64_t sub_231073400()
{
  result = qword_280CCB090;
  if (!qword_280CCB090)
  {
    sub_231158CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB090);
  }

  return result;
}

unint64_t sub_231073458()
{
  result = qword_280CCAFD0[0];
  if (!qword_280CCAFD0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD3C750, &qword_231161B50);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CCAFD0);
  }

  return result;
}

uint64_t sub_231073540(char a1)
{
  sub_231159918();
  MEMORY[0x2319253F0](a1 & 1);
  return sub_231159948();
}

void sub_2310735A4(uint64_t a1, void *a2)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v4 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v56 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  v55 = v7 - v8;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D7C210]) init];
  [objc_opt_self() hydrateItem:v12 withRecord:a1 setNilValues:0];
  v13 = [a2 latestLibraryIdentifier];
  v14 = sub_231158E58();
  v16 = v15;

  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  v17 = sub_231073A68(v14, v16, 10);
  v57[0] = 0;
  v18 = [a2 recordWithDescriptor:v17 error:v57];
  v19 = v57[0];
  if (v18)
  {
    v20 = v18;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    v22 = v19;
    if (v21)
    {
      v54 = v4;
      v23 = sub_23107930C(v12, &selRef_recordSystemFieldsData);
      if (v24 >> 60 == 15)
      {
        v25 = 0;
      }

      else
      {
        v34 = v23;
        v35 = v24;
        v25 = sub_231157998();
        sub_231054A4C(v34, v35);
      }

      [v21 setCloudKitRecordMetadata_];

      [v21 setLastSyncedHash_];
      v57[0] = 0;
      v36 = [a2 saveRecord:v21 withDescriptor:v17 error:v57];
      v37 = v54;
      if (v36)
      {
        v38 = v57[0];

        return;
      }

      v39 = v57[0];
      v40 = sub_231157938();

      swift_willThrow();
      sub_2311581C8();
      v41 = v40;
      v42 = sub_231158238();
      v43 = sub_2311592D8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v40;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        OUTLINED_FUNCTION_19_2(&dword_23103C000, v48, v49, "Failed to handle saved library because trying to save library record failed: %@");
        sub_2310794EC(v45);
        v37 = v54;
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_16();
      }

      (*(v56 + 8))(v55, v37);
      v50 = sub_231079498();
      v51 = OUTLINED_FUNCTION_13_1(&type metadata for VCCKLibrarySyncCoordinatorError, v50);
      OUTLINED_FUNCTION_20_4(v51, v52);

      v27 = v17;
      v17 = v20;
    }

    else
    {

      sub_2311581C8();
      v28 = sub_231158238();
      v29 = sub_2311592D8();
      if (os_log_type_enabled(v28, v29))
      {
        *OUTLINED_FUNCTION_53() = 0;
        OUTLINED_FUNCTION_18_3(&dword_23103C000, v30, v31, "Failed to handle saved library because database record is invalid");
        OUTLINED_FUNCTION_16();
      }

      (*(v56 + 8))(v11, v4);
      v32 = sub_231079498();
      OUTLINED_FUNCTION_13_1(&type metadata for VCCKLibrarySyncCoordinatorError, v32);
      *v33 = 0;
      swift_willThrow();
      v27 = v12;
    }
  }

  else
  {
    v26 = v57[0];
    sub_231157938();

    swift_willThrow();
    v27 = v17;
    v17 = v12;
  }
}

id sub_231073A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_231158E28();

  v6 = [v4 initWithIdentifier:v5 objectType:a3];

  return v6;
}

void sub_231073B78(void *a1, void *a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v7 = sub_231158258();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  sub_231055E7C(a1, &selRef_version);
  if (v17)
  {

    sub_2311581C8();
    v18 = a1;
    v19 = sub_231158238();
    v20 = sub_2311592F8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v64[0] = v22;
      *v21 = 136315138;
      v63[0] = sub_231055E7C(v18, &selRef_version);
      v63[1] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCA8, &unk_231161CD0);
      v24 = sub_231158E68();
      v26 = sub_2310488F8(v24, v25, v64);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_23103C000, v19, v20, "Received library with unsupported version: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x2319267C0](v22, -1, -1);
      MEMORY[0x2319267C0](v21, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
  }

  else
  {
    v60 = a2;
    v61 = v3;
    v27 = [a1 dataFileRepresentation];
    if (v27)
    {
      v28 = v27;
      v63[0] = 0;
      v29 = [a1 libraryIdentifierWithError_];
      v30 = v63[0];
      if (v29)
      {
        v31 = v29;
        v58 = v7;
        sub_231158E58();
        v32 = v30;

        v33 = [v28 data];
        sub_2311579A8();
        v59 = v28;

        v34 = objc_allocWithZone(sub_231157BA8());
        v35 = sub_231157B48();
        v36 = MEMORY[0x28223BE20](v35);
        v37 = v61;
        *(&v57 - 6) = v60;
        *(&v57 - 5) = a1;
        *(&v57 - 4) = v36;
        *(&v57 - 3) = a3;
        *(&v57 - 2) = v37;
        v38 = v62;
        sub_231159238();
        if (!v38)
        {

          return;
        }

        v39 = v59;
        sub_2311581C8();
        v40 = v38;
        v41 = sub_231158238();
        v42 = sub_2311592D8();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = v35;
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 138412290;
          v46 = v38;
          v47 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 4) = v47;
          *v45 = v47;
          _os_log_impl(&dword_23103C000, v41, v42, "Failed to merge libraries because trying to save library record failed: %@", v44, 0xCu);
          sub_2310794EC(v45);
          MEMORY[0x2319267C0](v45, -1, -1);
          v48 = v44;
          v35 = v43;
          MEMORY[0x2319267C0](v48, -1, -1);
        }

        (*(v8 + 8))(v11, v58);
        sub_231079498();
        swift_allocError();
        *v49 = 1;
        swift_willThrow();
      }

      else
      {
        v56 = v63[0];
        sub_231157938();

        swift_willThrow();
        v35 = v28;
      }

      return;
    }

    sub_2311581C8();
    v50 = sub_231158238();
    v51 = sub_2311592D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_23103C000, v50, v51, "Received library with no data blob. Not handling it and scheduling sync of ours", v52, 2u);
      MEMORY[0x2319267C0](v52, -1, -1);
    }

    (*(v8 + 8))(v16, v7);
    v53 = sub_23107930C(a1, &selRef_recordSystemFieldsData);
    v55 = v54;
    sub_231074774(v53, v54, v60);
    sub_231054A4C(v53, v55);
  }
}

void sub_231074198(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D7C210]) init];
  [objc_opt_self() hydrateItem:v6 withRecord:a1 setNilValues:0];
  sub_231073B78(v6, a2, a3);
}

uint64_t sub_231074234(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_231074198(v8, v9, a5);

  return 1;
}

void sub_2310742FC(uint64_t a1, void *a2)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v3 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v44 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = [a2 latestLibrary];
  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  v13 = sub_231157B58();
  v15 = sub_231073A68(v13, v14, 10);
  v45[0] = 0;
  v16 = [a2 recordWithDescriptor:v15 error:v45];
  v17 = v45[0];
  if (!v16)
  {
    v22 = v45[0];
    sub_231157938();

LABEL_9:
    swift_willThrow();
    goto LABEL_13;
  }

  v18 = v16;
  v43 = v3;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  v20 = v17;
  if (!v19)
  {

    sub_2311581C8();
    v23 = sub_231158238();
    v24 = sub_2311592D8();
    if (os_log_type_enabled(v23, v24))
    {
      *OUTLINED_FUNCTION_53() = 0;
      OUTLINED_FUNCTION_18_3(&dword_23103C000, v25, v26, "Failed to handle unknown item error for library because database record is invalid");
      OUTLINED_FUNCTION_16();
    }

    (*(v44 + 8))(v11, v43);
    v27 = sub_231079498();
    OUTLINED_FUNCTION_13_1(&type metadata for VCCKLibrarySyncCoordinatorError, v27);
    *v28 = 0;
    goto LABEL_9;
  }

  [v19 setCloudKitRecordMetadata_];
  v45[0] = 0;
  if ([a2 saveRecord:v19 withDescriptor:v15 error:v45])
  {
    v21 = v45[0];

    return;
  }

  v29 = v45[0];
  v30 = sub_231157938();

  swift_willThrow();
  sub_2311581C8();
  v31 = v30;
  v32 = sub_231158238();
  v33 = sub_2311592D8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = v30;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    OUTLINED_FUNCTION_19_2(&dword_23103C000, v38, v39, "Failed to handle unknown item error for library because trying to save library record failed: %@");
    sub_2310794EC(v35);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  (*(v44 + 8))(v8, v43);
  v40 = sub_231079498();
  v41 = OUTLINED_FUNCTION_13_1(&type metadata for VCCKLibrarySyncCoordinatorError, v40);
  OUTLINED_FUNCTION_20_4(v41, v42);

  v12 = v15;
  v15 = v18;
LABEL_13:
}

void sub_231074774(uint64_t a1, unint64_t a2, void *a3)
{
  v40 = a1;
  v44[1] = *MEMORY[0x277D85DE8];
  v5 = sub_231158258();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = [a3 latestLibrary];
  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  v43 = v11;
  v12 = sub_231157B58();
  v14 = sub_231073A68(v12, v13, 10);
  v44[0] = 0;
  v15 = [a3 recordWithDescriptor:v14 error:v44];
  v16 = v44[0];
  if (!v15)
  {
    v22 = v44[0];
    sub_231157938();

LABEL_9:
    swift_willThrow();
    v28 = v43;
    goto LABEL_16;
  }

  v17 = v15;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    v23 = v16;

    sub_2311581C8();
    v24 = sub_231158238();
    v25 = sub_2311592D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23103C000, v24, v25, "Failed to force local library sync for library because database record is invalid", v26, 2u);
      MEMORY[0x2319267C0](v26, -1, -1);
    }

    (*(v41 + 8))(v10, v42);
    sub_231079498();
    swift_allocError();
    *v27 = 0;
    goto LABEL_9;
  }

  v19 = v18;
  v20 = v16;
  if (a2 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_231157998();
  }

  [v19 setCloudKitRecordMetadata_];

  [v19 setLastSyncedHash_];
  v44[0] = 0;
  if ([a3 saveRecord:v19 withDescriptor:v14 error:v44])
  {
    v29 = v44[0];

    return;
  }

  v30 = v44[0];
  v31 = sub_231157938();

  swift_willThrow();
  sub_2311581C8();
  v32 = v31;
  v33 = sub_231158238();
  v34 = sub_2311592D8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = v31;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_23103C000, v33, v34, "Failed to force local library sync for library because trying to save library record failed: %@", v35, 0xCu);
    sub_2310794EC(v36);
    MEMORY[0x2319267C0](v36, -1, -1);
    MEMORY[0x2319267C0](v35, -1, -1);
  }

  (*(v41 + 8))(v8, v42);
  sub_231079498();
  swift_allocError();
  *v39 = 1;
  swift_willThrow();

  v28 = v14;
  v14 = v17;
LABEL_16:
}

void sub_231074C1C(NSObject *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v194 = a2;
  v195 = a5;
  v198 = a4;
  v203 = a3;
  v205[1] = *MEMORY[0x277D85DE8];
  v8 = sub_231157A08();
  v190 = *(v8 - 8);
  v191 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v176 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v192 = &v176 - v16;
  MEMORY[0x28223BE20](v15);
  v193 = &v176 - v17;
  v18 = sub_231158258();
  v19 = *(v18 - 8);
  v201 = v18;
  v202 = v19;
  v20 = MEMORY[0x28223BE20](v18);
  v197 = &v176 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v196 = &v176 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v188 = &v176 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v176 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v176 - v29;
  v31 = [a1 latestLibrary];
  v32 = sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  v33 = sub_231157B58();
  v189 = v32;
  v35 = sub_231073A68(v33, v34, 10);
  v205[0] = 0;
  v199 = a1;
  v36 = [a1 recordWithDescriptor:v35 error:v205];
  v37 = v205[0];
  if (!v36)
  {
    v54 = v205[0];
    sub_231157938();

    swift_willThrow();
    goto LABEL_46;
  }

  v38 = v36;
  v200 = v31;
  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  v40 = v37;
  v41 = v38;
  if (!v39)
  {

    sub_2311581C8();
    v55 = sub_231158238();
    v56 = sub_2311592D8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_23103C000, v55, v56, "Failed to merge libraries because database record is invalid", v57, 2u);
      MEMORY[0x2319267C0](v57, -1, -1);
    }

    (*(v202 + 8))(v30, v201);
    sub_231079498();
    swift_allocError();
    *v58 = 0;
    swift_willThrow();

    goto LABEL_46;
  }

  v42 = v39;
  v184 = v11;
  v43 = v41;
  v187 = v35;
  v44 = sub_23107930C(v42, &selRef_cloudKitRecordMetadata);
  v185 = v42;
  if (v45 >> 60 == 15)
  {
LABEL_25:
    v85 = MEMORY[0x277D84F90];
    v205[0] = MEMORY[0x277D84F90];
    v86 = v200;
    v87 = [v200 collections];
    sub_231054A0C(0, &qword_27DD3C168, 0x277D7A1C0);
    v88 = sub_231158F48();

    sub_2310A9360(v88);
    v89 = [v86 folders];
    v90 = sub_231158F48();

    sub_2310A9360(v90);
    v91 = v205[0];
    v92 = sub_23106FF58(v205[0]);
    if (v92)
    {
      v93 = v92;
      v193 = v43;
      v186 = v6;
      v204 = v85;
      sub_23104CA0C(0, v92 & ~(v92 >> 63), 0);
      if (v93 < 0)
      {
        __break(1u);
      }

      v94 = v204;
      v95 = 32;
      do
      {
        v96 = *&v91[v95];
        v97 = [v96 identifier];
        v98 = sub_231158E58();
        v100 = v99;

        v204 = v94;
        v102 = v94[2];
        v101 = v94[3];
        if (v102 >= v101 >> 1)
        {
          sub_23104CA0C((v101 > 1), v102 + 1, 1);
          v94 = v204;
        }

        v94[2] = v102 + 1;
        v103 = &v94[2 * v102];
        v103[4] = v98;
        v103[5] = v100;
        v95 += 8;
        --v93;
      }

      while (v93);

      v6 = v186;
      v86 = v200;
      v43 = v193;
    }

    else
    {

      v94 = MEMORY[0x277D84F90];
    }

    v104 = sub_231157B78();
    v35 = v187;
    if (v104)
    {
      sub_2311581C8();
      v105 = sub_231158238();
      v106 = sub_2311592F8();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_23103C000, v105, v106, "Merging local library with remote, since we share history", v107, 2u);
        MEMORY[0x2319267C0](v107, -1, -1);
      }

      (*(v202 + 8))(v196, v201);
      v108 = v198;
      if (v198)
      {
        v109 = sub_231158E28();
        [v108 logEvent_];
      }

      v110 = sub_231157B88();
      if (!v6)
      {
        v111 = v110;
        v112 = sub_231157B08();

        v113 = v86;
LABEL_48:
        v119 = v113;
        [v199 persistenceMode];
        v120 = sub_231157B68();
        v122 = v121;
        v193 = v43;
        v186 = 0;

        v123 = sub_231157998();
        [v185 setData_];

        v124 = sub_23107930C(v194, &selRef_recordSystemFieldsData);
        v203 = v122;
        if (v125 >> 60 == 15)
        {
          v126 = 0;
        }

        else
        {
          v127 = v124;
          v128 = v125;
          v126 = sub_231157998();
          sub_231054A4C(v127, v128);
        }

        v129 = v185;
        [v185 setCloudKitRecordMetadata_];

        if (v112)
        {
          v130 = objc_opt_self();
          v131 = sub_231157998();
          v132 = [v130 syncHashFromData_];

          [v129 setSyncHash_];
        }

        v204 = 0;
        v133 = v187;
        if ([v199 saveRecord:v129 withDescriptor:v187 error:&v204])
        {
          v134 = v94[2];
          if (v134)
          {
            v135 = v204;
            v136 = v94 + 5;
            v137 = v199;
            do
            {
              v139 = *(v136 - 1);
              v138 = *v136;

              v140 = sub_231073A68(v139, v138, 2);
              [v137 addPendingUpdatedDescriptor:v140];

              v136 += 2;
              --v134;
            }

            while (v134);
          }

          else
          {
            v142 = v204;
          }

          sub_231054A60(v120, v203);
        }

        else
        {
          v141 = v204;

          sub_231157938();

          swift_willThrow();
          sub_231054A60(v120, v203);
        }

        return;
      }
    }

    else
    {
      sub_2311581C8();
      v114 = sub_231158238();
      v115 = sub_2311592F8();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_23103C000, v114, v115, "Reconciling local library with remote, since we don't share history", v116, 2u);
        MEMORY[0x2319267C0](v116, -1, -1);
      }

      (*(v202 + 8))(v197, v201);
      v117 = v198;
      if (v198)
      {
        v118 = sub_231158E28();
        [v117 logEvent_];
      }

      v113 = static VCCKLibrarySyncCoordinator.reconcile(localDatabase:with:)(v199, v203);
      if (!v6)
      {
        v112 = 1;
        goto LABEL_48;
      }
    }

LABEL_46:

    return;
  }

  v46 = v44;
  v47 = v45;
  v180 = v14;
  v48 = objc_opt_self();
  v49 = sub_231157998();
  v205[0] = 0;
  v50 = [v48 recordFromSystemFieldsData:v49 error:v205];

  v183 = v50;
  if (!v50)
  {
    v59 = v205[0];
    v60 = sub_231157938();

    swift_willThrow();
    sub_231054A4C(v46, v47);
    v61 = v60;
LABEL_24:

    v6 = 0;
    goto LABEL_25;
  }

  v181 = v46;
  v182 = v47;
  v51 = v205[0];
  v52 = sub_23107930C(v194, &selRef_recordSystemFieldsData);
  if (v53 >> 60 == 15)
  {

    sub_231054A4C(v181, v182);
    goto LABEL_25;
  }

  v62 = v52;
  v63 = v53;
  v64 = sub_231157998();
  v205[0] = 0;
  v65 = [v48 recordFromSystemFieldsData:v64 error:v205];

  if (!v65)
  {
    v83 = v205[0];
    v84 = sub_231157938();

    swift_willThrow();
    sub_231054A4C(v181, v182);

    sub_231054A4C(v62, v63);
    v61 = v84;
    goto LABEL_24;
  }

  v66 = v205[0];
  v67 = v183;
  v68 = [v183 modificationDate];
  if (!v68)
  {
    sub_231054A4C(v181, v182);

    sub_231054A4C(v62, v63);
    goto LABEL_25;
  }

  v69 = v68;
  v70 = v65;
  v71 = v193;
  sub_2311579D8();

  v72 = [v70 modificationDate];
  if (!v72)
  {
    (*(v190 + 8))(v71, v191);
    sub_231054A4C(v181, v182);

    sub_231054A4C(v62, v63);
    goto LABEL_25;
  }

  v73 = v72;
  v177 = v62;
  v178 = v63;
  sub_2311579D8();

  v74 = sub_231055E7C(v183, &selRef_recordChangeTag);
  v76 = v75;
  v179 = v70;
  v77 = sub_231055E7C(v70, &selRef_recordChangeTag);
  if (!v76)
  {
    v79 = v184;
    v80 = v180;
    if (!v78)
    {
      goto LABEL_70;
    }

LABEL_64:

    goto LABEL_65;
  }

  v79 = v184;
  v80 = v180;
  if (!v78)
  {
    goto LABEL_64;
  }

  if (v74 != v77 || v76 != v78)
  {
    v82 = sub_231159818();

    if (v82)
    {
      goto LABEL_70;
    }

LABEL_65:
    v143 = v192;
    if (sub_2311579E8() != -1)
    {
      sub_2311581C8();
      v144 = v143;
      v145 = v190;
      v146 = v191;
      v147 = v80;
      v148 = *(v190 + 16);
      v148(v147, v144, v191);
      v149 = v193;
      v148(v79, v193, v146);
      v150 = sub_231158238();
      v151 = sub_2311592E8();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v199 = v150;
        v153 = v152;
        v203 = swift_slowAlloc();
        v205[0] = v203;
        *v153 = 136315394;
        sub_231079578();
        v186 = v5;
        v154 = v180;
        LODWORD(v198) = v151;
        v155 = sub_2311597C8();
        v156 = v145;
        v158 = v157;
        v159 = *(v156 + 8);
        v159(v154, v146);
        v160 = sub_2310488F8(v155, v158, v205);

        *(v153 + 4) = v160;
        *(v153 + 12) = 2080;
        v161 = v184;
        v162 = sub_2311597C8();
        v164 = v163;
        v159(v161, v146);
        v165 = sub_2310488F8(v162, v164, v205);

        *(v153 + 14) = v165;
        v166 = v199;
        _os_log_impl(&dword_23103C000, v199, v198, "Remote record modification date %s is not greater than local record modification date %s", v153, 0x16u);
        v167 = v203;
        swift_arrayDestroy();
        MEMORY[0x2319267C0](v167, -1, -1);
        MEMORY[0x2319267C0](v153, -1, -1);
        sub_231054A4C(v181, v182);

        sub_231054A4C(v177, v178);
        (*(v202 + 8))(v188, v201);
        v159(v192, v146);
        v159(v193, v146);
      }

      else
      {
        sub_231054A4C(v181, v182);

        sub_231054A4C(v177, v178);
        v175 = *(v145 + 8);
        v175(v184, v146);
        v175(v180, v146);
        (*(v202 + 8))(v188, v201);
        v175(v192, v146);
        v175(v149, v146);
      }

      return;
    }

    sub_231054A4C(v181, v182);

    sub_231054A4C(v177, v178);
    v168 = v191;
    v169 = *(v190 + 8);
    v169(v143, v191);
    v169(v193, v168);
    goto LABEL_25;
  }

LABEL_70:
  sub_2311581C8();
  v170 = sub_231158238();
  v171 = sub_2311592B8();
  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    *v172 = 0;
    _os_log_impl(&dword_23103C000, v170, v171, "Local library with identifier has the same recordChangeTag as fetched library, this is likely our own change, discarding it.", v172, 2u);
    MEMORY[0x2319267C0](v172, -1, -1);
  }

  sub_231054A4C(v181, v182);

  sub_231054A4C(v177, v178);
  (*(v202 + 8))(v28, v201);
  v173 = v191;
  v174 = *(v190 + 8);
  v174(v192, v191);
  v174(v193, v173);
}

char *static VCCKLibrarySyncCoordinator.reconcile(localDatabase:with:)(void *a1, void *a2)
{
  v284[1] = *MEMORY[0x277D85DE8];
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C160, &unk_231163270);
  OUTLINED_FUNCTION_4();
  v272 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_1();
  v266 = (v8 - v9);
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v10);
  v269 = &v258 - v11;
  sub_231158258();
  OUTLINED_FUNCTION_4();
  v273 = v13;
  v274 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  v268 = (v14 - v15);
  OUTLINED_FUNCTION_15_4();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v258 - v18;
  MEMORY[0x28223BE20](v17);
  v271 = &v258 - v20;
  OUTLINED_FUNCTION_15_4();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v258 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v258 - v25;
  v276 = a1;
  v27 = [a1 latestLibrary];
  OUTLINED_FUNCTION_14_5();
  if (sub_231157B98())
  {
    v28 = a2;
LABEL_3:
    v29 = v28;

    return v29;
  }

  v281 = a2;
  v30 = [v3 shortcutIdentifiers];
  v31 = sub_231158F48();

  v32 = *(v31 + 16);

  if (!v32)
  {
    v33 = [v3 folders];
    sub_231054A0C(0, &qword_27DD3C168, 0x277D7A1C0);
    v34 = sub_231158F48();

    v35 = sub_23106FF58(v34);

    if (!v35)
    {
      v28 = v281;
      goto LABEL_3;
    }
  }

  v277 = v19;
  v280 = v3;
  v36 = v281;
  v29 = sub_231157B58();
  v38 = v37;
  [v276 persistenceMode];
  sub_231157B68();
  v267 = v2;
  if (v2)
  {

    return v29;
  }

  v39 = v273;
  v40 = objc_allocWithZone(sub_231157BA8());
  v278 = sub_231157B48();
  v41 = [v280 folders];
  sub_231054A0C(0, &qword_27DD3C168, 0x277D7A1C0);
  OUTLINED_FUNCTION_14_5();
  v42 = sub_231158F48();

  v43 = [v36 folders];
  v263 = v38;
  v44 = sub_231158F48();

  v45 = sub_2310775E8(v42, v44);
  v46 = MEMORY[0x277D7A458];
  if ((v45 & 1) == 0)
  {
    v282 = v44;
    v264 = *MEMORY[0x277D7A458];
    sub_2311581C8();
    v55 = sub_231158238();
    v56 = sub_2311592C8();
    if (OUTLINED_FUNCTION_20_2(v56))
    {
      *OUTLINED_FUNCTION_53() = 0;
      OUTLINED_FUNCTION_5_6(&dword_23103C000, v57, v58, "Reconciling folders");
      OUTLINED_FUNCTION_16();
    }

    v59 = MEMORY[0x277D84F90];

    v265 = *(v39 + 8);
    v260 = v39 + 8;
    v265(v24, v274);
    v60 = sub_23106FF58(v42);
    v61 = v276;
    if (v60)
    {
      v62 = v60;
      v284[0] = v59;
      OUTLINED_FUNCTION_3_6(v60);
      if (v62 < 0)
      {
        goto LABEL_136;
      }

      v63 = 0;
      v64 = v284[0];
      v275 = v42 & 0xC000000000000001;
      v65 = v42;
      v66 = v62;
      do
      {
        if (v275)
        {
          v67 = MEMORY[0x231925080](v63, v42);
        }

        else
        {
          v67 = *(v42 + 8 * v63 + 32);
        }

        v68 = v67;
        v69 = [v67 identifier];
        v70 = sub_231158E58();
        v72 = v71;

        v284[0] = v64;
        v74 = *(v64 + 2);
        v73 = *(v64 + 3);
        if (v74 >= v73 >> 1)
        {
          v76 = OUTLINED_FUNCTION_2_9(v73);
          sub_23104CA0C(v76, v74 + 1, 1);
          v64 = v284[0];
        }

        ++v63;
        *(v64 + 2) = v74 + 1;
        v75 = &v64[16 * v74];
        *(v75 + 4) = v70;
        *(v75 + 5) = v72;
        v42 = v65;
      }

      while (v66 != v63);

      v61 = v276;
      v59 = MEMORY[0x277D84F90];
    }

    else
    {

      v64 = MEMORY[0x277D84F90];
    }

    v77 = sub_23106FF58(v282);
    if (v77)
    {
      v78 = v77;
      v284[0] = v59;
      OUTLINED_FUNCTION_3_6(v77);
      if (v78 < 0)
      {
        goto LABEL_137;
      }

      v79 = 0;
      v80 = v284[0];
      v81 = v282;
      v275 = v282 & 0xC000000000000001;
      v82 = v78;
      do
      {
        if (v275)
        {
          v83 = MEMORY[0x231925080](v79);
        }

        else
        {
          v83 = *(v81 + 8 * v79 + 32);
        }

        v84 = v83;
        v85 = [v83 identifier];
        v86 = sub_231158E58();
        v88 = v87;

        v284[0] = v80;
        v90 = *(v80 + 2);
        v89 = *(v80 + 3);
        if (v90 >= v89 >> 1)
        {
          v92 = OUTLINED_FUNCTION_2_9(v89);
          sub_23104CA0C(v92, v90 + 1, 1);
          v80 = v284[0];
        }

        ++v79;
        *(v80 + 2) = v90 + 1;
        v91 = &v80[16 * v90];
        *(v91 + 4) = v86;
        *(v91 + 5) = v88;
        v81 = v282;
      }

      while (v82 != v79);

      v61 = v276;
    }

    else
    {

      v80 = MEMORY[0x277D84F90];
    }

    v93 = [v61 lastRemoteFolderOrderingForCollection_];
    if (v93)
    {
      v94 = v93;
      v95 = sub_231158F48();
    }

    else
    {
      v95 = 0;
    }

    sub_231158E58();

    v96 = sub_2310777BC(v64, v95, v80);

    v283 = v80;
    v284[0] = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
    sub_231079400();
    v97 = v266;
    sub_231158DF8();

    v99 = v269;
    v98 = v270;
    sub_231159738();
    v100 = v272[1];
    ++v272;
    v259 = v100;
    v100(v97, v98);
    v46 = sub_231159728();
    sub_231159718();
    v101 = OUTLINED_FUNCTION_10_0();
    sub_231077AC4(v101, v99);
    OUTLINED_FUNCTION_14_5();

    v102 = v98;
    v275 = *(v98 + 16);
    if (!v275)
    {
      v54 = v281;
LABEL_67:

      v156 = OUTLINED_FUNCTION_13_6();
      v157(v156);
      v50 = v267;
      v53 = v280;
      goto LABEL_68;
    }

    v103 = 0;
    v104 = (v98 + 65);
    *(&v105 + 1) = 2;
    v261 = xmmword_231161B80;
    *&v105 = 136315138;
    v258 = v105;
    v266 = v98;
    while (1)
    {
      if (v103 >= v102[2])
      {
        goto LABEL_132;
      }

      v106 = *(v104 - 33);
      v107 = *(v104 - 25);
      v108 = *(v104 - 17);
      v109 = *(v104 - 9);
      v110 = *(v104 - 1);
      if (*v104 == 1)
      {
        if (v110)
        {

          v46 = sub_231158E28();
          [v278 deleteFolderWithIdentifier_];
          v111 = OUTLINED_FUNCTION_0_12();
          sub_23107946C(v111, v112, v113);
        }

        else if (v106 < v109)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
          v121 = swift_allocObject();
          *(v121 + 16) = v261;
          *(v121 + 32) = v107;
          *(v121 + 40) = v108;
          v122 = OUTLINED_FUNCTION_0_12();
          sub_231079464(v122, v123, v124);

          sub_231158F38();
          OUTLINED_FUNCTION_10_0();

          v284[0] = 0;
          v125 = [v278 moveFolders:v102 toIndex:v109 error:v284];
          LODWORD(v282) = v110;
          v126 = v125;

          v46 = v284[0];
          if (!v126)
          {
            v251 = v284[0];

            v29 = sub_231157938();

            swift_willThrow();
            v252 = OUTLINED_FUNCTION_0_12();
            goto LABEL_129;
          }

          v127 = v284[0];
          v128 = OUTLINED_FUNCTION_0_12();
          goto LABEL_59;
        }
      }

      else
      {
        if (v110)
        {
          LODWORD(v282) = *(v104 - 1);

          v114 = sub_231158E28();
          v284[0] = 0;
          v115 = [v280 folderWithIdentifier:v114 error:v284];

          if (v115)
          {
            v262 = v109;
            v116 = v284[0];
            v117 = [v115 name];
            if (!v117)
            {
              sub_231158E58();
              sub_231158E28();
              OUTLINED_FUNCTION_14_5();
            }

            v118 = [v115 glyphCharacter];
            v119 = sub_231158E28();
            v284[0] = 0;
            v46 = [v278 insertFolderWithName:v117 icon:v118 identifier:v119 insertAt:v106 error:v284];

            if (!v46)
            {
              v29 = v284[0];

              sub_231157938();

              swift_willThrow();
              OUTLINED_FUNCTION_8_5();
              goto LABEL_128;
            }

            v120 = v284[0];

            OUTLINED_FUNCTION_8_5();
            goto LABEL_58;
          }

          v138 = v284[0];
          OUTLINED_FUNCTION_10_0();
          v139 = sub_231157938();

          swift_willThrow();
          v267 = 0;

          v46 = v271;
          sub_2311581C8();

          v140 = sub_231158238();
          v141 = sub_2311592D8();
          OUTLINED_FUNCTION_0_12();
          OUTLINED_FUNCTION_7_6();
          sub_23107946C(v142, v143, v144);
          if (os_log_type_enabled(v140, v141))
          {
            v46 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v262 = v106;
            v146 = v145;
            v284[0] = v145;
            *v46 = v258;
            *(v46 + 4) = sub_2310488F8(v107, v108, v284);
            _os_log_impl(&dword_23103C000, v140, v141, "Inserted folder %s not found in local library.", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v146);
            v147 = v266;
            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_16();

            OUTLINED_FUNCTION_7_6();
            sub_23107946C(v148, v149, v150);
            OUTLINED_FUNCTION_17_5();
            v151();
            v102 = v147;
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_0_12();
          OUTLINED_FUNCTION_7_6();
          sub_23107946C(v152, v153, v154);
          OUTLINED_FUNCTION_17_5();
          v155();
          goto LABEL_60;
        }

        if (v106 < v109)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
          v131 = swift_allocObject();
          *(v131 + 16) = v261;
          *(v131 + 32) = v107;
          *(v131 + 40) = v108;
          v132 = OUTLINED_FUNCTION_0_12();
          sub_231079464(v132, v133, v134);

          sub_231158F38();
          OUTLINED_FUNCTION_10_0();

          v284[0] = 0;
          v135 = [v278 moveFolders:v102 toIndex:v106 error:v284];
          LODWORD(v282) = v110;
          v136 = v135;

          v46 = v284[0];
          if (!v136)
          {
            v255 = v284[0];

            v29 = sub_231157938();

            swift_willThrow();
            OUTLINED_FUNCTION_0_12();
LABEL_128:
            OUTLINED_FUNCTION_7_6();
LABEL_129:
            sub_23107946C(v252, v253, v254);
            v256 = OUTLINED_FUNCTION_13_6();
            v257(v256);
            return v29;
          }

          v137 = v284[0];
          OUTLINED_FUNCTION_0_12();
LABEL_58:
          OUTLINED_FUNCTION_7_6();
LABEL_59:
          sub_23107946C(v128, v129, v130);
LABEL_60:
          v102 = v266;
        }
      }

LABEL_61:
      ++v103;
      v104 += 40;
      v54 = v281;
      if (v275 == v103)
      {
        goto LABEL_67;
      }
    }
  }

  v264 = *v46;
  sub_2311581C8();
  v47 = sub_231158238();
  v48 = sub_2311592C8();
  v49 = OUTLINED_FUNCTION_20_2(v48);
  v50 = v267;
  if (v49)
  {
    *OUTLINED_FUNCTION_53() = 0;
    OUTLINED_FUNCTION_5_6(&dword_23103C000, v51, v52, "No folders need to be reconciled.");
    OUTLINED_FUNCTION_16();
  }

  v265 = *(v39 + 8);
  v265(v26, v274);
  v53 = v280;
  v54 = v281;
LABEL_68:
  v158 = OUTLINED_FUNCTION_10_5([v53 collections]);

  v282 = v158;
  v159 = sub_23106FF58(v158);
  v160 = MEMORY[0x277D84F90];
  if (v159)
  {
    v161 = v159;
    v267 = v50;
    v284[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_6(v159);
    if (v161 < 0)
    {
      goto LABEL_134;
    }

    v162 = 0;
    v160 = v284[0];
    v163 = v282 & 0xC000000000000001;
    do
    {
      if (v163)
      {
        v164 = MEMORY[0x231925080](v162, v282);
      }

      else
      {
        v164 = *(v282 + 8 * v162 + 32);
      }

      v165 = v164;
      v166 = [v165 identifier];
      v167 = sub_231158E58();
      v169 = v168;

      v284[0] = v160;
      v171 = *(v160 + 2);
      v170 = *(v160 + 3);
      v46 = (v171 + 1);
      if (v171 >= v170 >> 1)
      {
        v173 = OUTLINED_FUNCTION_2_9(v170);
        sub_23104CA0C(v173, v171 + 1, 1);
        v160 = v284[0];
      }

      ++v162;
      *(v160 + 2) = v46;
      v172 = &v160[16 * v171];
      *(v172 + 4) = v167;
      *(v172 + 5) = v169;
    }

    while (v161 != v162);
    v54 = v281;
    v50 = v267;
  }

  v284[0] = v160;

  sub_2310787F8(v284);
  v174 = v277;
  if (!v50)
  {

    v175 = v284[0];
    v176 = OUTLINED_FUNCTION_10_5([v54 collections]);

    v177 = sub_23106FF58(v176);
    if (v177)
    {
      v178 = v177;
      v272 = 0;
      v275 = v175;
      v284[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_3_6(v177);
      if (v178 < 0)
      {
        goto LABEL_135;
      }

      v179 = 0;
      v180 = v284[0];
      do
      {
        if ((v176 & 0xC000000000000001) != 0)
        {
          v181 = MEMORY[0x231925080](v179, v176);
        }

        else
        {
          v181 = *(v176 + 8 * v179 + 32);
        }

        v182 = v181;
        v183 = [v182 identifier];
        v184 = sub_231158E58();
        v186 = v185;

        v284[0] = v180;
        v188 = *(v180 + 2);
        v187 = *(v180 + 3);
        if (v188 >= v187 >> 1)
        {
          v190 = OUTLINED_FUNCTION_2_9(v187);
          sub_23104CA0C(v190, v188 + 1, 1);
          v180 = v284[0];
        }

        ++v179;
        *(v180 + 2) = v188 + 1;
        v189 = &v180[16 * v188];
        *(v189 + 4) = v184;
        *(v189 + 5) = v186;
        v174 = v277;
      }

      while (v178 != v179);

      v175 = v275;
      v50 = v272;
    }

    else
    {

      v180 = MEMORY[0x277D84F90];
    }

    v284[0] = v180;

    sub_2310787F8(v284);
    v191 = v281;
    if (!v50)
    {

      v192 = v284[0];
      if (sub_23107755C(v175, v284[0]))
      {
      }

      else
      {
        sub_2311581C8();

        v193 = sub_231158238();
        v194 = sub_2311592D8();

        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v277 = swift_slowAlloc();
          v283 = v175;
          v284[0] = v277;
          *v195 = 136315394;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
          LODWORD(v275) = v194;
          sub_231079400();
          v196 = OUTLINED_FUNCTION_9_5();
          v197 = v174;
          v199 = v198;

          v200 = sub_2310488F8(v196, v199, v284);

          *(v195 + 4) = v200;
          *(v195 + 12) = 2080;
          v283 = v192;
          v201 = OUTLINED_FUNCTION_9_5();
          v203 = v202;

          v204 = sub_2310488F8(v201, v203, v284);

          *(v195 + 14) = v204;
          _os_log_impl(&dword_23103C000, v193, v275, "Local categories (%s) do not match remote categories (%s)", v195, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_16();

          v205 = v197;
        }

        else
        {

          v205 = v174;
        }

        v265(v205, v274);
        v191 = v281;
      }

      v206 = v268;
      sub_2311581C8();
      v207 = sub_231158238();
      v208 = sub_2311592C8();
      v209 = OUTLINED_FUNCTION_20_2(v208);
      v210 = v279;
      if (v209)
      {
        *OUTLINED_FUNCTION_53() = 0;
        OUTLINED_FUNCTION_5_6(&dword_23103C000, v211, v212, "Reconciling categories.");
        OUTLINED_FUNCTION_16();
      }

      v265(v206, v274);
      v213 = v282;
      v214 = sub_23106FF58(v282);
      v215 = 0;
      v216 = v213 & 0xC000000000000001;
      v217 = v213 & 0xFFFFFFFFFFFFFF8;
      while (v214 != v215)
      {
        if (v216)
        {
          v218 = MEMORY[0x231925080](v215, v282);
        }

        else
        {
          if (v215 >= *(v217 + 16))
          {
            goto LABEL_131;
          }

          v218 = *(v282 + 8 * v215 + 32);
        }

        v219 = v218;
        if (__OFADD__(v215, 1))
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
        }

        v220 = [v218 identifier];
        v221 = sub_231158E58();
        v223 = v222;

        v191 = v281;
        v224 = v221;
        v210 = v279;
        sub_231077B4C(v224, v223, v280, v281, v279, v278);

        ++v215;
      }

      v225 = sub_231158E58();
      v227 = v226;
      v228 = v278;
      sub_231078038(v225, v226, v280, v191, v276, v210, v278);

      v230 = OUTLINED_FUNCTION_10_5([v228 folders]);

      v231 = sub_23106FF58(v230);
      if (v231)
      {
        v232 = v231;
        v284[0] = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_3_6(v231);
        if (v232 < 0)
        {
          goto LABEL_138;
        }

        v233 = 0;
        v234 = v284[0];
        v282 = v230 & 0xC000000000000001;
        v235 = v230;
        do
        {
          if (v282)
          {
            v236 = MEMORY[0x231925080](v233, v230);
          }

          else
          {
            v236 = *(v230 + 8 * v233 + 32);
          }

          v237 = v236;
          v238 = [v237 identifier];
          v239 = sub_231158E58();
          v241 = v240;

          v284[0] = v234;
          v243 = *(v234 + 2);
          v242 = *(v234 + 3);
          if (v243 >= v242 >> 1)
          {
            v245 = OUTLINED_FUNCTION_2_9(v242);
            sub_23104CA0C(v245, v243 + 1, 1);
            v234 = v284[0];
          }

          ++v233;
          *(v234 + 2) = v243 + 1;
          v244 = &v234[16 * v243];
          *(v244 + 4) = v239;
          *(v244 + 5) = v241;
          v210 = v279;
          v230 = v235;
        }

        while (v232 != v233);

        v191 = v281;
      }

      else
      {

        v234 = MEMORY[0x277D84F90];
      }

      v246 = 0;
      v247 = *(v234 + 2);
      v248 = (v234 + 40);
      while (v247 != v246)
      {
        if (v246 >= *(v234 + 2))
        {
          goto LABEL_133;
        }

        v250 = *(v248 - 1);
        v249 = *v248;

        sub_231078038(v250, v249, v280, v191, v276, v210, v278);

        ++v246;
        v248 += 2;
      }

      return v278;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23107755C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_231159818() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2310775E8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2311594D8())
  {
    if (a2 >> 62)
    {
      result = sub_2311594D8();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_231054A0C(0, &qword_27DD3C168, 0x277D7A1C0);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x231925080](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x231925080](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_231159418();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_2310777BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (sub_23107755C(v5, v4))
  {
  }

  else if (sub_23107755C(v3, v4) & 1) != 0 || (sub_23107755C(v5, v3))
  {

    return v5;
  }

  else
  {
    sub_231054A0C(0, &qword_27DD3C198, 0x277CBEB70);

    v6 = sub_2310614A8(v3);

    v7 = sub_231078690(v6);
    v8 = sub_2310614A8(v4);

    v9 = sub_231078690(v8);
    v10 = sub_2310614A8(v5);

    v11 = sub_231078690(v10);
    v12 = [objc_opt_self() wf:v11 orderedSetByMergingOrderedSet:v7 withOrderedSet:v9 baseOrderedSet:?];
    v13 = [v12 array];
    v14 = sub_231158F48();

    v15 = *(v14 + 16);
    if (v15)
    {
      v25 = v12;
      v26 = v11;
      v27 = v9;
      v28 = v7;
      v16 = v14 + 32;
      v3 = MEMORY[0x277D84F90];
      do
      {
        sub_231040B98(v16, v32);
        sub_231040B88(v32, &v29);
        if (swift_dynamicCast())
        {
          v17 = v31;
          if (v31)
          {
            v18 = v30;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2310CC1BC(0, *(v3 + 16) + 1, 1, v3);
              v3 = v22;
            }

            v20 = *(v3 + 16);
            v19 = *(v3 + 24);
            if (v20 >= v19 >> 1)
            {
              sub_2310CC1BC(v19 > 1, v20 + 1, 1, v3);
              v3 = v23;
            }

            *(v3 + 16) = v20 + 1;
            v21 = v3 + 16 * v20;
            *(v21 + 32) = v18;
            *(v21 + 40) = v17;
          }
        }

        v16 += 32;
        --v15;
      }

      while (v15);

      v9 = v27;
      v7 = v28;
    }

    else
    {

      v3 = MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_231077AC4(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*(a2 + 16), *(result + 16)))
  {
    __break(1u);
  }

  else
  {
    sub_2310CC36C();
    v5 = v2;

    sub_2310A9108(v3);

    sub_2310A9018(v4);
    return v5;
  }

  return result;
}

id sub_231077B4C(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v42 = a5;
  v43 = a6;
  v45[1] = *MEMORY[0x277D85DE8];
  v11 = sub_231158258();
  v44 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  if (sub_231158E58() == a1 && v17 == a2)
  {
  }

  v41 = v11;
  v19 = sub_231159818();

  if ((v19 & 1) == 0)
  {
    v40[1] = v6;
    v21 = sub_231158E28();
    v22 = [a3 shortcutsInCategoryWithIdentifier_];

    v23 = sub_231158F48();
    v24 = sub_231158E28();
    v25 = v23;
    v26 = [a4 shortcutsInCategoryWithIdentifier_];

    v27 = sub_231158F48();
    if (sub_23107755C(v25, v27))
    {

      sub_2311581C8();

      v28 = sub_231158238();
      v29 = sub_2311592C8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v45[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_2310488F8(a1, a2, v45);
        _os_log_impl(&dword_23103C000, v28, v29, "Shortcuts in %s don't need to be reconciled.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x2319267C0](v31, -1, -1);
        MEMORY[0x2319267C0](v30, -1, -1);
      }

      return (*(v44 + 8))(v16, v41);
    }

    else
    {
      sub_2311581C8();

      v32 = sub_231158238();
      v33 = sub_2311592C8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v45[0] = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_2310488F8(a1, a2, v45);
        _os_log_impl(&dword_23103C000, v32, v33, "Reconciling shortcuts in %s.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x2319267C0](v35, -1, -1);
        MEMORY[0x2319267C0](v34, -1, -1);
      }

      (*(v44 + 8))(v14, v41);
      sub_2310777BC(v25, MEMORY[0x277D84F90], v27);

      v36 = sub_231158F38();

      v37 = sub_231158E28();
      v45[0] = 0;
      v38 = [v43 setShortcutOrdering:v36 forCollectionIdentifier:v37 error:v45];

      if (v38)
      {
        return v45[0];
      }

      else
      {
        v39 = v45[0];
        sub_231157938();

        return swift_willThrow();
      }
    }
  }

  return result;
}

id sub_231078038(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v52 = a6;
  v53 = a7;
  v51 = a5;
  v56[1] = *MEMORY[0x277D85DE8];
  v13 = sub_231158258();
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v17;
  v18 = sub_231158E28();
  v56[0] = 0;
  v19 = [a3 shortcutsInFolderWithIdentifier:v18 error:v56];

  v20 = v56[0];
  if (v19)
  {
    v21 = sub_231158F48();
    v22 = v20;
  }

  else
  {
    v23 = v56[0];
    v24 = sub_231157938();

    swift_willThrow();
    v21 = 0;
    v8 = 0;
  }

  v25 = sub_231158E28();
  v56[0] = 0;
  v26 = [a4 shortcutsInFolderWithIdentifier:v25 error:v56];

  v27 = v56[0];
  if (v26)
  {
    v28 = sub_231158F48();
    v29 = v27;

    if (v21)
    {
      if (v28 && (sub_23107755C(v21, v28) & 1) != 0)
      {

LABEL_20:
        v45 = v50;
        sub_2311581C8();

        v46 = sub_231158238();
        v47 = sub_2311592C8();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v56[0] = v49;
          *v48 = 136315138;
          *(v48 + 4) = sub_2310488F8(a1, a2, v56);
          _os_log_impl(&dword_23103C000, v46, v47, "Shortcuts in folder %s don't need to be reconciled.", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x2319267C0](v49, -1, -1);
          MEMORY[0x2319267C0](v48, -1, -1);
        }

        return (*(v54 + 8))(v45, v55);
      }
    }

    else if (!v28)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v30 = v56[0];
    v31 = sub_231157938();

    swift_willThrow();
    if (!v21)
    {
      goto LABEL_20;
    }

    v28 = 0;
    v8 = 0;
  }

  sub_2311581C8();

  v32 = sub_231158238();
  v33 = sub_2311592C8();

  v34 = os_log_type_enabled(v32, v33);
  v50 = v8;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v56[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_2310488F8(a1, a2, v56);
    _os_log_impl(&dword_23103C000, v32, v33, "Reconciling shortcuts in folder %s.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x2319267C0](v36, -1, -1);
    MEMORY[0x2319267C0](v35, -1, -1);
  }

  (*(v54 + 8))(v16, v55);
  v37 = sub_231158E28();
  v38 = [v51 lastRemoteShortcutOrderingForCollection_];

  if (v38)
  {
    v39 = sub_231158F48();
  }

  else
  {
    v39 = 0;
  }

  sub_2310777BC(v21, v39, v28);

  v40 = sub_231158F38();

  v41 = sub_231158E28();
  v56[0] = 0;
  v42 = [v53 setShortcutOrdering:v40 forCollectionIdentifier:v41 error:v56];

  if (v42)
  {
    return v56[0];
  }

  v44 = v56[0];
  sub_231157938();

  return swift_willThrow();
}

id sub_231078690(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_231158F38();

  v3 = [v1 initWithArray_];

  return v3;
}

id VCCKLibrarySyncCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VCCKLibrarySyncCoordinator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCCKLibrarySyncCoordinator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VCCKLibrarySyncCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCCKLibrarySyncCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2310787D4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2310787F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2310795D0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_231078864(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_231078864(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2311597B8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_231158FC8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_231078A20(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_231078958(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231078958(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_231159818();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_231078A20(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_231159818();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_231159818()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_231159818() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2310CC2B0();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2310CC2B0();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_231079054((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_231078F28(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_231078F28(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2310791F8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_231079054((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_231079054(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_23104C774(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_231159818() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_23104C774(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_231159818() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_23107920C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C190, &unk_2311632B0);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_23107930C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2311579A8();

  return v4;
}

void (*sub_23107936C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_2310787C8(a3);
  sub_2310787D4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x231925080](a2, a3);
  }

  *a1 = v7;
  return sub_2310793F8;
}

unint64_t sub_231079400()
{
  result = qword_27DD3C178;
  if (!qword_27DD3C178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD3C170, &qword_2311667A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C178);
  }

  return result;
}

unint64_t sub_231079498()
{
  result = qword_27DD3C180;
  if (!qword_27DD3C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C180);
  }

  return result;
}

uint64_t sub_2310794EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC40, &qword_231162750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231079578()
{
  result = qword_27DD3C188;
  if (!qword_27DD3C188)
  {
    sub_231157A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCCKLibrarySyncCoordinatorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VCCKLibrarySyncCoordinatorError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23107974C()
{
  result = qword_27DD3C1A0;
  if (!qword_27DD3C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C1A0);
  }

  return result;
}

char *OUTLINED_FUNCTION_3_6(uint64_t a1)
{

  return sub_23104CA0C(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_5_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return MEMORY[0x2821FBB70](8236, 0xE200000000000000, v0, v1);
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1)
{

  return sub_231158F48();
}

void OUTLINED_FUNCTION_18_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_19_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_2310798FC()
{
  OUTLINED_FUNCTION_25_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v7);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_1(v9, v17);
  v10 = sub_2311590C8();
  OUTLINED_FUNCTION_34_2(v10);
  if (v6 == 1)
  {
    sub_231060190(v1, &qword_27DD3C1D0, &qword_231162D50);
  }

  else
  {
    sub_2311590B8();
    OUTLINED_FUNCTION_11();
    (*(v11 + 8))(v1, v5);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_231060190(v3, &qword_27DD3C1D0, &qword_231162D50);
    OUTLINED_FUNCTION_26_1();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v0;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_231159048();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_231158E88();
  OUTLINED_FUNCTION_26_1();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_39_2(v13);
  v15 = swift_task_create();

  sub_231060190(v3, &qword_27DD3C1D0, &qword_231162D50);

  return v15;
}

uint64_t sub_231079B6C()
{
  OUTLINED_FUNCTION_25_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v7);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_1(v9, v17);
  v10 = sub_2311590C8();
  OUTLINED_FUNCTION_34_2(v10);
  if (v6 == 1)
  {
    sub_231060190(v1, &qword_27DD3C1D0, &qword_231162D50);
  }

  else
  {
    sub_2311590B8();
    OUTLINED_FUNCTION_11();
    (*(v11 + 8))(v1, v5);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_231060190(v3, &qword_27DD3C1D0, &qword_231162D50);
    OUTLINED_FUNCTION_26_1();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v0;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_231159048();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_231158E88();
  OUTLINED_FUNCTION_26_1();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_39_2(v13);
  v15 = swift_task_create();

  sub_231060190(v3, &qword_27DD3C1D0, &qword_231162D50);

  return v15;
}

uint64_t sub_231079DD4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_231079E30();
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_231079E30()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = sub_231158098();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C290, &unk_231165E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231163390;
  v5 = type metadata accessor for TerminationEventSource();
  swift_allocObject();
  v6 = TerminationEventSource.init()();
  *(inited + 56) = v5;
  *(inited + 64) = sub_23107F0A8(qword_280CCBBD8, type metadata accessor for TerminationEventSource, &protocol conformance descriptor for TerminationEventSource);
  *(inited + 32) = v6;
  *(inited + 96) = sub_2311580D8();
  *(inited + 104) = sub_23107F0A8(&unk_280CCB100, MEMORY[0x277D79D00], &protocol conformance descriptor for XPCDarwinNotificationEventStream);
  __swift_allocate_boxed_opaque_existential_1((inited + 72));
  sub_2311580C8();
  *(inited + 136) = sub_231158138();
  *(inited + 144) = sub_23107F0A8(&qword_280CCB0C8, MEMORY[0x277D79D30], &protocol conformance descriptor for XPCDistributedNotificationEventStream);
  __swift_allocate_boxed_opaque_existential_1((inited + 112));
  sub_231158128();
  *(inited + 176) = sub_231158188();
  *(inited + 184) = sub_23107F0A8(&unk_280CCB0B0, MEMORY[0x277D79D58], &protocol conformance descriptor for XPCDiskArbitrationNotificationEventStream);
  __swift_allocate_boxed_opaque_existential_1((inited + 152));
  sub_231158178();
  *(inited + 216) = sub_231157E28();
  *(inited + 224) = sub_23107F0A8(qword_280CCB158, MEMORY[0x277D79B98], &protocol conformance descriptor for XPCFSEventStream);
  __swift_allocate_boxed_opaque_existential_1((inited + 192));
  sub_231157E18();
  *(inited + 256) = sub_231157F78();
  *(inited + 264) = sub_23107F0A8(&qword_27DD3C2A0, MEMORY[0x277D79C98], &protocol conformance descriptor for XPCRapportEventStream);
  __swift_allocate_boxed_opaque_existential_1((inited + 232));
  sub_231157F68();
  sub_231158088();
  sub_2310CC430();
  v8 = v7;
  v12 = v0;
  v13 = sub_23107F0A8(&qword_280CCB138, MEMORY[0x277D79CD8], &protocol conformance descriptor for XPCAppProtectionEventStream);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  *(v8 + 16) = 7;
  sub_23104613C(&v11, v8 + 272);
  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t DaemonTaskScheduler.__allocating_init()()
{
  v0 = swift_allocObject();
  DaemonTaskScheduler.init()();
  return v0;
}

void *DaemonTaskScheduler.init()()
{
  type metadata accessor for DaemonTaskExecutor();
  swift_allocObject();
  v0[2] = sub_23107DF18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1B0, &qword_2311633A0);
  v0[3] = sub_231158DB8();
  v0[4] = 0;
  return v0;
}

uint64_t sub_23107A2D8(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return OUTLINED_FUNCTION_4_6(sub_23107A2F4, 0);
}

uint64_t sub_23107A2F4()
{
  v73 = v1;
  v2 = v1[19];
  v3 = *(v2 + 16);
  v1[21] = v3;
  if (!v3)
  {
LABEL_6:
    v11 = sub_231079DD4();
    v13 = *(v11 + 16);
    if (v13)
    {
      v66 = v11;
      v14 = v11 + 32;
      v15 = qword_280CCDF80;
      v16 = &unk_280CCB000;
      *&v12 = 136315394;
      v68 = v12;
      do
      {
        sub_23107E8A4(v14, (v1 + 2));
        __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
        v17 = OUTLINED_FUNCTION_13_7();
        v18(v17);
        if (v0)
        {
          if (v16[130] != -1)
          {
            OUTLINED_FUNCTION_1_8();
            swift_once();
          }

          v19 = sub_231158258();
          __swift_project_value_buffer(v19, v15);
          sub_23107E8A4((v1 + 2), (v1 + 9));
          v20 = v0;
          v21 = sub_231158238();
          v22 = sub_2311592D8();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v24 = OUTLINED_FUNCTION_62_1();
            OUTLINED_FUNCTION_27_3(v24, v25, v26, v27, v28, v29, v30, v31, v64, v66, v68);
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C1C0, &qword_2311633B8);
            v69 = v21;
            v33 = v16;
            v34 = OUTLINED_FUNCTION_42_1(v32);
            v35 = v15;
            v37 = v36;
            __swift_destroy_boxed_opaque_existential_0(v1 + 9);
            v16 = sub_2310488F8(v34, v37, &v72);
            v15 = v35;

            OUTLINED_FUNCTION_26_3();
            v38 = _swift_stdlib_bridgeErrorToNSError();
            OUTLINED_FUNCTION_36_2(v38, v39, v40, v41, v42, v43, v44, v45, v65, v67, v68, *(&v68 + 1), v69, v70);
            _os_log_impl(&dword_23103C000, v35, v46, "Failed to start listening to events for %s. Received error: %@.", v23, 0x16u);
            sub_231060190(v33, &unk_27DD3CC40, &qword_231162750);
            OUTLINED_FUNCTION_16();
            __swift_destroy_boxed_opaque_existential_0(v71);
            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_16();
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0(v1 + 9);
          }
        }

        __swift_destroy_boxed_opaque_existential_0(v1 + 2);
        v14 += 40;
        --v13;
      }

      while (v13);
    }

    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_4();

    __asm { BRAA            X1, X16 }
  }

  v4 = 0;
  while (1)
  {
    v1[22] = v4;
    sub_23107E8A4(v2 + 40 * v4 + 32, (v1 + 9));
    v0 = v1[13];
    __swift_project_boxed_opaque_existential_0(v1 + 9, v1[12]);
    v5 = OUTLINED_FUNCTION_23_4();
    v7 = v6(v5);
    v1[23] = v7;
    v8 = v7[2];
    v1[24] = v8;
    if (v8)
    {
      break;
    }

    v9 = v1[21];
    v10 = v1[22];

    __swift_destroy_boxed_opaque_existential_0(v1 + 9);
    if (v10 + 1 == v9)
    {
      goto LABEL_6;
    }

    v4 = v1[22] + 1;
    v2 = v1[19];
  }

  v1[25] = *(v1[20] + 16);
  v1[26] = 0;
  v49 = v7[4];
  v50 = v7[5];
  v1[27] = v50;
  v51 = v7[6];
  v52 = v7[7];
  v1[28] = v52;
  v53 = v7[8];
  v54 = v7[9];
  v55 = v7[10];
  v1[29] = v55;
  v1[2] = v49;
  v1[3] = v50;
  v1[4] = v51;
  v1[5] = v52;
  v1[6] = v53;
  v1[7] = v54;
  v1[8] = v55;
  sub_23107E8A4((v1 + 9), (v1 + 14));

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1B8, &qword_2311633B0);
  v57 = OUTLINED_FUNCTION_42_1(v56);
  OUTLINED_FUNCTION_9_6(v57, v58);
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x2822009F8](v59, v60, v61);
}

uint64_t sub_23107A684()
{
  OUTLINED_FUNCTION_4_1();
  sub_23107C248(v0 + 2, v0[30], v0[31], v0[20]);

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23107A6FC()
{
  v74 = v0;
  v1 = v0[26];
  v2 = v0[24];

  if (v1 + 1 == v2)
  {
    do
    {
      v3 = v0[21];
      v4 = v0[22];

      __swift_destroy_boxed_opaque_existential_0(v0 + 9);
      if (v4 + 1 == v3)
      {
        v26 = sub_231079DD4();
        v28 = *(v26 + 16);
        if (v28)
        {
          v67 = v26;
          v29 = v26 + 32;
          v30 = qword_280CCDF80;
          v31 = &unk_280CCB000;
          *&v27 = 136315394;
          v69 = v27;
          do
          {
            sub_23107E8A4(v29, (v0 + 2));
            __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
            v32 = OUTLINED_FUNCTION_13_7();
            v33(v32);
            if (v1)
            {
              if (v31[130] != -1)
              {
                OUTLINED_FUNCTION_1_8();
                swift_once();
              }

              v34 = sub_231158258();
              __swift_project_value_buffer(v34, v30);
              sub_23107E8A4((v0 + 2), (v0 + 9));
              v35 = v1;
              v36 = sub_231158238();
              v37 = sub_2311592D8();

              if (os_log_type_enabled(v36, v37))
              {
                v38 = swift_slowAlloc();
                v71 = swift_slowAlloc();
                v39 = OUTLINED_FUNCTION_62_1();
                OUTLINED_FUNCTION_27_3(v39, v40, v41, v42, v43, v44, v45, v46, v65, v67, v69);
                v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C1C0, &qword_2311633B8);
                v70 = v36;
                v48 = v31;
                v49 = OUTLINED_FUNCTION_42_1(v47);
                v50 = v30;
                v52 = v51;
                __swift_destroy_boxed_opaque_existential_0(v0 + 9);
                v31 = sub_2310488F8(v49, v52, &v73);
                v30 = v50;

                OUTLINED_FUNCTION_26_3();
                v53 = _swift_stdlib_bridgeErrorToNSError();
                OUTLINED_FUNCTION_36_2(v53, v54, v55, v56, v57, v58, v59, v60, v66, v68, v69, *(&v69 + 1), v70, v71);
                _os_log_impl(&dword_23103C000, v50, v61, "Failed to start listening to events for %s. Received error: %@.", v38, 0x16u);
                sub_231060190(v48, &unk_27DD3CC40, &qword_231162750);
                OUTLINED_FUNCTION_16();
                __swift_destroy_boxed_opaque_existential_0(v72);
                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_16();
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_0(v0 + 9);
              }
            }

            __swift_destroy_boxed_opaque_existential_0(v0 + 2);
            v29 += 40;
            --v28;
          }

          while (v28);
        }

        OUTLINED_FUNCTION_15_5();
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_21_4();

        __asm { BRAA            X1, X16 }
      }

      v5 = v0[22];
      v0[22] = v5 + 1;
      sub_23107E8A4(v0[19] + 40 * v5 + 72, (v0 + 9));
      v1 = v0[13];
      __swift_project_boxed_opaque_existential_0(v0 + 9, v0[12]);
      v6 = OUTLINED_FUNCTION_23_4();
      v8 = v7(v6);
      v0[23] = v8;
      v9 = *(v8 + 16);
      v0[24] = v9;
    }

    while (!v9);
    v10 = 0;
    v0[25] = *(v0[20] + 16);
  }

  else
  {
    v10 = v0[26] + 1;
    v8 = v0[23];
  }

  v0[26] = v10;
  v11 = (v8 + 56 * v10);
  v12 = v11[4];
  v13 = v11[5];
  v0[27] = v13;
  v14 = v11[6];
  v15 = v11[7];
  v0[28] = v15;
  v16 = v11[8];
  v17 = v11[9];
  v18 = v11[10];
  v0[29] = v18;
  v0[2] = v12;
  v0[3] = v13;
  v0[4] = v14;
  v0[5] = v15;
  v0[6] = v16;
  v0[7] = v17;
  v0[8] = v18;
  sub_23107E8A4((v0 + 9), (v0 + 14));

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1B8, &qword_2311633B0);
  v20 = OUTLINED_FUNCTION_42_1(v19);
  OUTLINED_FUNCTION_9_6(v20, v21);
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_23107AAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_231158DE8();
  if (((*(a5 + 32))(a4, a5) & 1) == 0)
  {
    swift_beginAccess();
    if (sub_23104AE04(v11, *(v5 + 24)))
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_32_1();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  OUTLINED_FUNCTION_26_1();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_23107EB5C;
  *(v13 + 24) = v12;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v5 + 24);
  v14 = v27;
  *(v6 + 24) = 0x8000000000000000;
  v15 = sub_231092CB0(v11);
  if (__OFADD__(*(v14 + 16), (v16 & 1) == 0))
  {
    __break(1u);
LABEL_11:

    __break(1u);
    goto LABEL_12;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C258, &qword_231163650);
  v19 = v27;
  if (sub_231159698())
  {
    v20 = sub_231092CB0(v11);
    if ((v18 & 1) == (v21 & 1))
    {
      v17 = v20;
      goto LABEL_7;
    }

LABEL_12:
    result = sub_231159888();
    __break(1u);
    return result;
  }

LABEL_7:
  *(v6 + 24) = v27;
  if ((v18 & 1) == 0)
  {
    sub_231080234(&v27);
    sub_231086194(v17, v11, v27, v19);
  }

  v22 = *(v19 + 56) + 8 * v17;
  sub_231086018();
  v23 = *(*v22 + 16);
  sub_2310860EC(v23);
  v24 = *v22;
  *(v24 + 16) = v23 + 1;
  v25 = v24 + 16 * v23;
  *(v25 + 32) = sub_23107EB68;
  *(v25 + 40) = v13;
  swift_endAccess();
}

uint64_t sub_23107AD00(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_231159448();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18[-v11 - 8];
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v18[-v14 - 8];
  sub_23107E8A4(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v15, v12, AssociatedTypeWitness);
    a2(v15);
    return (*(v13 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, AssociatedTypeWitness);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_23107AF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_231159918();
  sub_231158EA8();
  v6 = sub_231159948();
  OUTLINED_FUNCTION_29_3(v4 + 24, v7, v8, v9, v10, v11, v12, v13, v22);
  result = sub_23104AE04(v6, *(v4 + 24));
  if (result)
  {
    v15 = result;
    v16 = *(result + 16);
    if (v16)
    {
      v17 = sub_2311580B8();
      v18 = sub_23107F0A8(&qword_280CCB120, MEMORY[0x277D79CE0], &protocol conformance descriptor for XPCDarwinNotificationEventStream.Event);
      v19 = v15 + 40;
      do
      {
        v20 = *(v19 - 8);
        v23[3] = v17;
        v23[4] = v18;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
        (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a1, v17);

        v20(v23);

        __swift_destroy_boxed_opaque_existential_0(v23);
        v19 += 16;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t sub_23107B080(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_231159918();
  sub_231158EA8();
  v4 = sub_231159948();
  OUTLINED_FUNCTION_29_3(v3 + 24, v5, v6, v7, v8, v9, v10, v11, v18);
  result = sub_23104AE04(v4, *(v3 + 24));
  if (result)
  {
    v13 = result;
    v14 = *(result + 16);
    if (v14)
    {
      v15 = sub_2310642E0();
      v16 = v13 + 40;
      do
      {
        v17 = *(v16 - 8);
        v19[3] = &type metadata for TerminationEventSource.Event;
        v19[4] = v15;

        v17(v19);

        __swift_destroy_boxed_opaque_existential_0(v19);
        v16 += 16;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t sub_23107B1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v12 = v7;
  sub_231159918();
  sub_231158EA8();
  v14 = sub_231159948();
  OUTLINED_FUNCTION_29_3(v12 + 24, v15, v16, v17, v18, v19, v20, v21, v30);
  result = sub_23104AE04(v14, *(v12 + 24));
  if (result)
  {
    v23 = result;
    v24 = *(result + 16);
    if (v24)
    {
      v25 = a4(0);
      v26 = sub_23107F0A8(a5, a6, a7);
      v27 = v23 + 40;
      do
      {
        v28 = *(v27 - 8);
        v31[3] = v25;
        v31[4] = v26;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
        (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, a1, v25);

        v28(v31);

        __swift_destroy_boxed_opaque_existential_0(v31);
        v27 += 16;
        --v24;
      }

      while (v24);
    }
  }

  return result;
}

uint64_t sub_23107B420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_231159918();
  sub_231158EA8();
  v8 = sub_231159948();
  swift_beginAccess();
  result = sub_23104AE04(v8, *(v5 + 24));
  if (result)
  {
    v10 = result;
    v11 = *(result + 16);
    if (v11)
    {
      v12 = sub_23106462C();
      v13 = v10 + 40;
      do
      {
        v14 = *(v13 - 8);
        v15[3] = &type metadata for DaemonStartupEvent;
        v15[4] = v12;
        v15[0] = a1;
        v15[1] = a2;

        v14(v15);

        __swift_destroy_boxed_opaque_existential_0(v15);
        v13 += 16;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t sub_23107B530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_231158DE8();
  swift_beginAccess();
  result = sub_23104AE04(v9, *(v6 + 24));
  if (result)
  {
    v11 = result;
    v12 = *(result + 16);
    if (v12)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v14 = v11 + 40;
      do
      {
        v15 = *(v14 - 8);
        v17[3] = a3;
        v17[4] = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
        (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);

        v15(v17);

        __swift_destroy_boxed_opaque_existential_0(v17);
        v14 += 16;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t sub_23107B670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return OUTLINED_FUNCTION_4_6(sub_23107B690, 0);
}

uint64_t sub_23107B690()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 40) = v1;
  return OUTLINED_FUNCTION_4_6(sub_23107B6B0, v1);
}

uint64_t sub_23107B6B0()
{
  OUTLINED_FUNCTION_4_1();
  sub_23107C4E4(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_1();

  return v1();
}

void *DaemonTaskScheduler.deinit()
{

  return v0;
}

uint64_t DaemonTaskScheduler.__deallocating_deinit()
{
  DaemonTaskScheduler.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t DaemonTaskScheduler.executeAsyncTask(withIdentifier:priority:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v12);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v16 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;

  sub_2310798FC();
}

uint64_t sub_23107B88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v10;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  return MEMORY[0x2822009F8](sub_23107B8BC, 0, 0);
}

uint64_t sub_23107B8BC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = *(v0[9] + 16);
  v0[15] = v6;
  OUTLINED_FUNCTION_32_1();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v1;
  v7[4] = v5;
  v7[5] = v3;
  OUTLINED_FUNCTION_26_1();
  v8 = swift_allocObject();
  *(v8 + 16) = 0x7974706D45;
  *(v8 + 24) = 0xE500000000000000;
  OUTLINED_FUNCTION_26_1();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_23107EF78;
  *(v9 + 24) = v8;
  OUTLINED_FUNCTION_26_1();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_231163670;
  *(v10 + 24) = v7;
  v0[2] = v5;
  v0[3] = v3;
  v0[4] = sub_23107EF80;
  v0[5] = v9;
  v0[6] = v4;
  v0[7] = &unk_231163678;
  v0[8] = v10;
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](sub_23107BA20, v6, 0);
}

uint64_t sub_23107BA20()
{
  OUTLINED_FUNCTION_4_1();
  sub_23107C370((v0 + 16));

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_23107BA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_23107BAC0, 0, 0);
}

uint64_t sub_23107BAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_21();
  v18 = *(v16 + 32);
  v17 = *(v16 + 40);
  v19 = swift_task_alloc();
  *(v16 + 48) = v19;
  *(v19 + 16) = *(v16 + 16);
  *(v19 + 32) = v18;
  *(v19 + 40) = v17;
  v20 = swift_task_alloc();
  *(v16 + 56) = v20;
  *v20 = v16;
  v20[1] = sub_23107BBB4;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0](v21, v22, v23, 0xD000000000000032, v24, v25, v19, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_23107BBB4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23107BCE0()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_23107BD3C(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  (*(v10 + 32))(v14 + v13, v12, v9);

  a2(sub_23107F02C, v14);
}

uint64_t sub_23107BEA8(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v7 = sub_231158258();
    __swift_project_value_buffer(v7, qword_280CCDF80);
    v8 = a1;

    v9 = sub_231158238();
    v10 = sub_2311592D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_2310488F8(a2, a3, &v17);
      *(v11 + 12) = 2112;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      *v12 = v15;
      _os_log_impl(&dword_23103C000, v9, v10, "Task %s completed with error: %@", v11, 0x16u);
      sub_231060190(v12, &unk_27DD3CC40, &qword_231162750);
      MEMORY[0x2319267C0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x2319267C0](v13, -1, -1);
      MEMORY[0x2319267C0](v11, -1, -1);
    }

    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
    return sub_231159058();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
    return sub_231159068();
  }
}

uint64_t sub_23107C18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2310903D8;
  v7[3] = &block_descriptor_7;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_23107C248(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v20 = a1[4];
  v19 = a1[5];
  v12 = a1[6];
  swift_beginAccess();
  v13 = *(*(v5 + 136) + 16);

  v14 = v10(a4, v13);
  swift_beginAccess();
  sub_231086048();
  v15 = *(*(v5 + 136) + 16);
  sub_23108611C(v15);
  v16 = *(v5 + 136);
  *(v16 + 16) = v15 + 1;
  v17 = (v16 + 80 * v15);
  v17[4] = v9;
  v17[5] = v8;
  v17[6] = v10;
  v17[7] = v11;
  v17[8] = v20;
  v17[9] = v19;
  v17[10] = v12;
  v17[11] = a2;
  v17[12] = a3;
  v17[13] = v14;
  *(v5 + 136) = v16;
  return swift_endAccess();
}

uint64_t sub_23107C370(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v12 = 1;
  v10[3] = &type metadata for EmptyEvent;
  v10[4] = sub_2310643C8();
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  __src[0] = v2;
  *&__src[1] = *(a1 + 1);
  __src[3] = v3;
  __src[4] = v4;
  __src[5] = v6;
  __src[6] = v5;
  LOBYTE(__src[7]) = 1;
  sub_23107E8A4(v10, &__src[8]);
  __src[13] = v2;
  __src[14] = __src[1];
  sub_231158E88();
  swift_bridgeObjectRetain_n();

  v7 = os_transaction_create();

  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
    __src[15] = v7;
    memcpy(__dst, __src, sizeof(__dst));
    if (v4 < 3)
    {

      sub_23107DB54(__dst);

      sub_23107C884();
      return sub_23107E64C(__dst);
    }
  }

  else
  {
    __break(1u);
  }

  type metadata accessor for VCDaemonTaskPriority(0);
  __src[0] = v4;
  result = sub_231159868();
  __break(1u);
  return result;
}

uint64_t sub_23107C4E4(unint64_t a1, void *a2)
{
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v2 + 136);
  if (*(v6 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  memcpy(__dst, (v6 + 80 * a1 + 32), 0x50uLL);
  v3 = __dst[4];
  if (__dst[4] >= 3uLL)
  {
LABEL_14:
    type metadata accessor for VCDaemonTaskPriority(0);
    v20[0] = v3;
    sub_23107EAE4(__dst, v22);
    result = sub_231159868();
    __break(1u);
    return result;
  }

  v3 = *(v2 - 8 * __dst[4] + 128);
  sub_23107EAE4(__dst, v22);

  if (sub_23107D81C(a1, a2))
  {

    return sub_23107EB1C(__dst);
  }

  v8 = *(v2 + 136);
  if (*(v8 + 16) <= a1)
  {
    goto LABEL_12;
  }

  memcpy(v23, (v8 + 80 * a1 + 32), sizeof(v23));
  v9 = v23[7];
  v10 = v23[8];
  v12 = v23[0];
  v11 = v23[1];
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_23107EAE4(v23, v22);
  sub_231159588();

  v22[0] = 0x203A656C75646F6DLL;
  v22[1] = 0xE800000000000000;

  MEMORY[0x231924980](v9, v10);

  MEMORY[0x231924980](0x3A6B736174207C20, 0xE900000000000020);

  MEMORY[0x231924980](v12, v11);

  MEMORY[0x231924980](0x746E657665207C20, 0xEA0000000000203ALL);
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_231158E78();
  MEMORY[0x231924980](v16);

  v17 = v22[0];
  v18 = v22[1];
  v24 = 0;
  sub_23107E8A4(a2, v21);
  v20[0] = a1;
  *&v20[1] = v25;
  *&v20[3] = v26;
  *&v20[5] = v27;
  LOBYTE(v20[7]) = v24;
  sub_23107E8A4(v21, &v20[8]);
  v20[13] = v17;
  v20[14] = v18;
  sub_231158E88();
  v19 = os_transaction_create();

  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_0(v21);
  v20[15] = v19;
  memcpy(v22, v20, sizeof(v22));
  sub_23107DB54(v22);
  sub_23107C884();

  sub_23107EB1C(v23);
  sub_23107EB1C(__dst);
  return sub_23107E64C(v22);
}

uint64_t sub_23107C884()
{
  while (1)
  {

    sub_23107DC50(v4);

    if (!*(&v4[5] + 1))
    {
      break;
    }

    memcpy(__dst, v4, sizeof(__dst));
    v1 = v0[14];

    sub_23107CA24(__dst, v1);

    sub_23107E64C(__dst);
  }

  result = sub_231060190(v4, &qword_27DD3C248, &qword_231163648);
  if (*(v0[14] + 16) <= 0)
  {

    sub_23107DC50(v4);

    if (*(&v4[5] + 1))
    {
      memcpy(__dst, v4, sizeof(__dst));
      v3 = v0[15];
LABEL_6:

      sub_23107CA24(__dst, v3);

      return sub_23107E64C(__dst);
    }

    result = sub_231060190(v4, &qword_27DD3C248, &qword_231163648);
    if (*(v0[15] + 16) <= 0)
    {

      sub_23107DC50(v4);

      if (*(&v4[5] + 1))
      {
        memcpy(__dst, v4, sizeof(__dst));
        v3 = v0[16];
        goto LABEL_6;
      }

      return sub_231060190(v4, &qword_27DD3C248, &qword_231163648);
    }
  }

  return result;
}

uint64_t sub_23107CA24(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &__src[-v6];
  v8 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_23107E67C(a1, __src);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  memcpy(v9 + 4, __src, 0x80uLL);
  v9[20] = v2;
  v9[21] = a2;

  sub_23107D518(0, 0, v7, &unk_231163628, v9);

  return sub_231060190(v7, &qword_27DD3C1D0, &qword_231162D50);
}

uint64_t sub_23107CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[54] = a5;
  v6[55] = a6;
  v6[53] = a4;
  return MEMORY[0x2822009F8](sub_23107CB80, 0, 0);
}

uint64_t sub_23107CB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v13 = v12[53];
  v14 = *v13;
  v12[56] = *v13;
  if (*(v13 + 56) == 1)
  {
    v15 = *(v13 + 48);
    v16 = *(v13 + 24);
    v17 = *(v13 + 8);
    sub_23107EA94(v14, v17, *(v13 + 16), v16, *(v13 + 32), *(v13 + 40), v15, 1);
    v12[59] = v17;
    v12[60] = v16;
    v12[58] = v15;
    v18 = qword_280CCB410;

    if (v18 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v19 = sub_231158258();
    v20 = __swift_project_value_buffer(v19, qword_280CCDF80);
    OUTLINED_FUNCTION_41_2(v20);
    v21 = sub_231158238();
    v22 = sub_2311592F8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      a10 = OUTLINED_FUNCTION_62_1();
      *v23 = 136315138;

      v24 = sub_23107E64C((v12 + 2));
      v26 = OUTLINED_FUNCTION_30_1(v24, v25);

      *(v23 + 4) = v26;
      OUTLINED_FUNCTION_40_1(&dword_23103C000, v27, v28, "<Task executing: %s>");
      __swift_destroy_boxed_opaque_existential_0(a10);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();
    }

    else
    {

      sub_23107E64C((v12 + 2));
    }

    OUTLINED_FUNCTION_6_7();
    v44 = v33;
    v34 = swift_task_alloc();
    v12[62] = v34;
    *v34 = v12;
    OUTLINED_FUNCTION_7_7(v34);
    OUTLINED_FUNCTION_3_0();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, v44, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return MEMORY[0x2822009F8](v29, v30, v31);
  }
}

uint64_t sub_23107CD9C()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 432);
  swift_beginAccess();
  *(v0 + 456) = *(v1 + 136);

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23107CE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[56];
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = v12[57];
    if (v13 < *(v14 + 16))
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_6_2();
      v16 = (v14 + 80 * v15);
      v17 = v16[5];
      v18 = v16[7];
      v19 = v16[10];

      swift_retain_n();

      v12[59] = v17;
      v12[60] = v18;
      v12[58] = v19;
      if (qword_280CCB410 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  OUTLINED_FUNCTION_1_8();
  swift_once();
LABEL_4:
  v20 = sub_231158258();
  v21 = __swift_project_value_buffer(v20, qword_280CCDF80);
  OUTLINED_FUNCTION_41_2(v21);
  v22 = sub_231158238();
  v23 = sub_2311592F8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    a10 = OUTLINED_FUNCTION_62_1();
    *v24 = 136315138;

    v25 = sub_23107E64C((v12 + 2));
    v27 = OUTLINED_FUNCTION_30_1(v25, v26);

    *(v24 + 4) = v27;
    OUTLINED_FUNCTION_40_1(&dword_23103C000, v28, v29, "<Task executing: %s>");
    __swift_destroy_boxed_opaque_existential_0(a10);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  else
  {

    sub_23107E64C((v12 + 2));
  }

  OUTLINED_FUNCTION_6_7();
  v41 = v30;
  v31 = swift_task_alloc();
  v12[62] = v31;
  *v31 = v12;
  OUTLINED_FUNCTION_7_7(v31);
  OUTLINED_FUNCTION_3_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, a10, a11, a12);
}

uint64_t sub_23107D034()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  *(v4 + 504) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23107D134()
{
  v15 = v0;
  v1 = v0[53];

  sub_23107E67C(v1, (v0 + 34));
  v2 = sub_231158238();
  v3 = sub_2311592F8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = OUTLINED_FUNCTION_62_1();
    v14 = v5;
    *v4 = 136315138;
    v6 = v0[47];
    v7 = v0[48];

    sub_23107E64C((v0 + 34));
    v8 = sub_2310488F8(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23103C000, v2, v3, "<Task completed: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  else
  {

    v9 = sub_23107E64C((v0 + 34));
  }

  v12 = v0[55];
  if (__OFSUB__(*(v12 + 16), 1))
  {
    __break(1u);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_8_6(v12);
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23107D294()
{
  OUTLINED_FUNCTION_4_1();
  sub_23107C884();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23107D2F4()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_23107D360()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v1 = v0[63];
  v2 = v0[53];

  sub_23107E67C(v2, (v0 + 18));
  v3 = v1;
  v4 = sub_231158238();
  v5 = sub_2311592F8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[63];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = OUTLINED_FUNCTION_62_1();
    *v8 = 136315394;

    v10 = sub_23107E64C((v0 + 18));
    v12 = OUTLINED_FUNCTION_30_1(v10, v11);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_23103C000, v4, v5, "<Task failed: %s, reason: %@", v8, 0x16u);
    sub_231060190(v9, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16();
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  else
  {

    v15 = sub_23107E64C((v0 + 18));
  }

  v18 = v0[55];
  if (__OFSUB__(*(v18 + 16), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_6(v18);
    OUTLINED_FUNCTION_3_0();
  }

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_23107D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_23106FC70(a3, v24 - v10);
  v12 = sub_2311590C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_231060190(v11, &qword_27DD3C1D0, &qword_231162D50);
  }

  else
  {
    sub_2311590B8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_231159048();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_231158E88() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
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

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23107D7AC(uint64_t a1, char a2)
{
  *(v2 + 16) = 0;
  type metadata accessor for DaemonTaskExecutor.TaskQueue.QueuedTask();
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = sub_231158DB8();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2 & 1;
  return v2;
}

uint64_t sub_23107D81C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_231092CB0(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  swift_beginAccess();
  sub_23107E8A4(v8 + 80, v13);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_0(v13, v14);

  sub_23107D92C(a2, v9, v10, v12);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v8 + 80));
  sub_23104613C(v12, v8 + 80);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v13);
  return 1;
}

uint64_t sub_23107D92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_231159448();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19[-v11 - 8];
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_23107E8A4(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a2);
    (*(v13 + 32))(v15, v12, a2);
    v16 = *(a3 + 16);
    a4[3] = a2;
    a4[4] = a3;
    __swift_allocate_boxed_opaque_existential_1(a4);
    v16(v15, a2, a3);
    return (*(v13 + 8))(v15, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, a2);
    (*(v9 + 8))(v12, v8);
    return sub_23107E8A4(a1, a4);
  }
}

uint64_t sub_23107DB54(uint64_t *a1)
{
  v2 = v1;
  sub_23107E67C(a1, __src);
  type metadata accessor for DaemonTaskExecutor.TaskQueue.QueuedTask();
  v4 = swift_allocObject();
  *(v4 + 144) = 0;
  memcpy((v4 + 16), __src, 0x80uLL);
  if ((a1[7] & 1) == 0)
  {
    v5 = *a1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v2[7];
    sub_23107E780(v4, v5, isUniquelyReferenced_nonNull_native);
    v2[7] = v9;
    swift_endAccess();
  }

  v7 = v2[6];
  if (v7)
  {
    *(v7 + 144) = v4;
  }

  else
  {
    v2[5] = v4;
  }

  v2[6] = v4;
}

void sub_23107DC50(_OWORD *a1@<X8>)
{
  if (((*(v1 + 32) & 1) != 0 || *(v1 + 16) != *(v1 + 24)) && (v3 = *(v1 + 40)) != 0)
  {
    v4 = *(v3 + 144);
    *(v1 + 40) = v4;
    if (!v4)
    {
      *(v1 + 48) = 0;
    }

    v5 = *(v1 + 16);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 16) = v7;
      swift_beginAccess();
      if (*(v3 + 72) == 1)
      {
      }

      else
      {
        v8 = *(v3 + 16);
        swift_beginAccess();

        sub_23107E6B4(v8);
        swift_endAccess();
      }

      sub_23107E67C(v3 + 16, a1);
    }
  }

  else
  {
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }
}

void sub_23107DD68()
{
  v1 = *(v0 + 16);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
  }
}

uint64_t sub_23107DDA0()
{
  sub_23107E64C(v0 + 16);
  v1 = *(v0 + 144);
  *(v0 + 144) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 144);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_23107DE20()
{
  v0 = sub_23107DDA0();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

void *sub_23107DE50()
{

  return v0;
}

uint64_t sub_23107DE80()
{
  v0 = sub_23107DE50();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void *sub_23107DEB0()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23107DEF0()
{
  v0 = sub_23107DEB0();

  return MEMORY[0x282200960](v0);
}

void *sub_23107DF18()
{
  swift_defaultActor_initialize();
  type metadata accessor for DaemonTaskExecutor.TaskQueue();
  swift_allocObject();
  v0[14] = sub_23107D7AC(0, 1);
  swift_allocObject();
  v0[15] = sub_23107D7AC(1, 0);
  swift_allocObject();
  v1 = sub_23107D7AC(1, 0);
  v2 = MEMORY[0x277D84F90];
  v0[16] = v1;
  v0[17] = v2;
  return v0;
}

unint64_t sub_23107DFD8()
{
  sub_231159588();

  MEMORY[0x231924980](*(v0 + 104), *(v0 + 112));
  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t sub_23107E05C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23107E154;

  return v6(a1);
}

uint64_t sub_23107E154()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_23107E238()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_37_1();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v8[1] = sub_23106044C;
  v10 = OUTLINED_FUNCTION_3_7();

  return sub_23107B88C(v10, v11, v1, v2, v3, v4, v5, v6);
}

uint64_t dispatch thunk of DaemonTaskScheduler.start(with:)()
{
  OUTLINED_FUNCTION_21();
  v5 = (*(*v0 + 160) + **(*v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_19_3(v2);

  return v5(v3);
}

uint64_t sub_23107E4F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_23107E530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23107E5A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_23107E5E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23107E6B4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_231092CB0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C238, &unk_231163610);
  sub_231159698();
  v6 = *(*(v8 + 56) + 8 * v5);
  type metadata accessor for DaemonTaskExecutor.TaskQueue.QueuedTask();
  sub_2311596B8();
  *v2 = v8;
  return v6;
}

unint64_t sub_23107E780(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_231092CB0(a2);
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C238, &unk_231163610);
  if ((sub_231159698() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_231092CB0(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_231159888();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = a1;
  }

  else
  {

    return sub_231086194(v10, a2, a1, v14);
  }
}

uint64_t sub_23107E8A4(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_11();
  (*v3)(a2);
  return a2;
}

void sub_23107E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }
}

uint64_t sub_23107E954()
{
  OUTLINED_FUNCTION_37_1();
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v5[1] = sub_23105FDEC;
  v7 = OUTLINED_FUNCTION_3_7();

  return sub_23107CB5C(v7, v8, v1, v9, v2, v3);
}

uint64_t sub_23107EA04()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

void sub_23107EA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }
}

uint64_t sub_23107EB70()
{
  OUTLINED_FUNCTION_37_1();
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v7 = OUTLINED_FUNCTION_19_3(v6);

  return sub_23107BA9C(v7, v1, v3, v5, v4);
}

uint64_t sub_23107EC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v9);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  v18[3] = a4;
  v18[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_11();
  (*(v13 + 16))();
  v14 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  sub_23107E8A4(v18, v17);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a3;
  v15[5] = a1;
  sub_23104613C(v17, (v15 + 6));

  sub_2310798FC();

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_23107ED74(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_23107EE68;

  return v5(v2 + 32);
}

uint64_t sub_23107EE68()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;

  *v3 = *(v2 + 32);
  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_23107EF88()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v4 = OUTLINED_FUNCTION_19_3(v3);

  return sub_231061F1C(v4, v1, v0);
}

uint64_t sub_23107F02C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  OUTLINED_FUNCTION_19(v3);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_23107BEA8(a1, v4, v5);
}

uint64_t sub_23107F0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23107F0F0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23107F19C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23107F1DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t (*OUTLINED_FUNCTION_9_6(uint64_t a1, uint64_t a2))()
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return sub_23107A684;
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return sub_23107B420(0x70757472617453, 0xE700000000000000, 0x70757472617453, 0xE700000000000000);
}

id OUTLINED_FUNCTION_26_3()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2112;

  return v0;
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *v12 = a11;

  return sub_23107E8A4(v11 + 72, v11 + 112);
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2310488F8(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_31_1@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_23106FC70(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  *(v14 + 14) = result;
  *a14 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

void OUTLINED_FUNCTION_40_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_41_2(uint64_t a1)
{
  *(v2 + 488) = a1;

  return sub_23107E67C(v1, v2 + 16);
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1)
{

  return sub_231158E68();
}

uint64_t sub_23107F530()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_21_5(v1);

  OUTLINED_FUNCTION_19_4(v2, v3, sub_231086340, v4, &unk_2845DA1A8, &unk_2845DA1D0, sub_231086348, sub_231086930);

  return v0;
}

uint64_t sub_23107F5EC()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_21_5(v1);

  OUTLINED_FUNCTION_19_4(v2, v3, sub_231086388, v4, &unk_2845DA220, &unk_2845DA248, sub_2310863CC, sub_231086930);

  return v0;
}

uint64_t sub_23107F6A8()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_21_5(v1);

  OUTLINED_FUNCTION_19_4(v2, v3, sub_23108640C, v4, &unk_2845DA298, &unk_2845DA2C0, sub_231086414, sub_231086930);

  return v0;
}

uint64_t sub_23107F764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6 = swift_allocObject();
  swift_weakInit();

  sub_23107FCB4(a1, a2, sub_231086330, v6, &unk_2845DA130, &unk_2845DA158, sub_231086338, sub_231066790);

  return v3;
}

uint64_t sub_23107F84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6 = swift_allocObject();
  swift_weakInit();

  sub_23107FCB4(a1, a2, sub_231086388, v6, &unk_2845DA338, &unk_2845DA360, sub_23108676C, sub_231086930);

  return v3;
}

uint64_t sub_23107F934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6 = swift_allocObject();
  swift_weakInit();

  sub_23107FCB4(a1, a2, sub_23108640C, v6, &unk_2845DA3B0, &unk_2845DA3D8, sub_2310867F4, sub_231086930);

  return v3;
}

uint64_t sub_23107FA1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    sub_231042684(v5, v6);

    if (v5)
    {
      v5(a1);
      return sub_231046164(v5, v6);
    }
  }

  return result;
}

uint64_t sub_23107FAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a1;
  v7[1] = a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    sub_231042684(v5, v6);

    if (v5)
    {
      v5(v7);
      return sub_231046164(v5, v6);
    }
  }

  return result;
}

uint64_t sub_23107FB60(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    sub_231042684(v4, v3);

    if (v4)
    {
      v4(result);
      return sub_231046164(v4, v3);
    }
  }

  return result;
}

uint64_t sub_23107FBF8(uint64_t a1, uint64_t a2, void (*a3)(void (*)(uint64_t), uint64_t), uint64_t (*a4)(void (*)(uint64_t), uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    a3(v9, v10);

    if (v9)
    {
      v9(a1);
      return a4(v9, v10);
    }
  }

  return result;
}

uint64_t sub_23107FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_231159918();
  sub_231158EA8();
  v13 = sub_231159948();
  OUTLINED_FUNCTION_26_1();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  OUTLINED_FUNCTION_26_1();
  v15 = swift_allocObject();
  *(v15 + 16) = a7;
  *(v15 + 24) = v14;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v8 + 24);
  *(v8 + 24) = 0x8000000000000000;
  v16 = sub_231092CB0(v13);
  if (__OFADD__(*(v27 + 16), (v17 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C258, &qword_231163650);
  if (sub_231159698())
  {
    v20 = sub_231092CB0(v13);
    if ((v19 & 1) == (v21 & 1))
    {
      v18 = v20;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_231159888();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v8 + 24) = v27;
  if ((v19 & 1) == 0)
  {
    sub_231086194(v18, v13, MEMORY[0x277D84F90], v27);
  }

  v22 = *(v27 + 56) + 8 * v18;
  sub_231086078(sub_2310CBFB8);
  v23 = *(*v22 + 16);
  sub_23108614C(v23, sub_2310CBFB8);
  v24 = *v22;
  *(v24 + 16) = v23 + 1;
  v25 = v24 + 16 * v23;
  *(v25 + 32) = a8;
  *(v25 + 40) = v15;
  swift_endAccess();
}

uint64_t sub_23107FEAC(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22[-v12 - 8];
  v14 = a6(0);
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v22[-v18 - 8];
  sub_2310548A0(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    (*(v16 + 32))(v19, v13, v14);
    a2(v19);
    return (*(v16 + 8))(v19, v14);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    return sub_231051B38(v13, a4, a5);
  }
}

uint64_t sub_231080074(uint64_t a1, void (*a2)(uint64_t *))
{
  sub_2310548A0(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (swift_dynamicCast() && v5)
  {
    v7[0] = v4;
    v7[1] = v5;
    a2(v7);
  }
}

uint64_t sub_23108010C(uint64_t a1, uint64_t (*a2)(void))
{
  sub_2310548A0(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  result = swift_dynamicCast();
  if (result)
  {
    return a2();
  }

  return result;
}

uint64_t sub_23108017C(uint64_t a1, void (*a2)(uint64_t *))
{
  sub_2310548A0(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (swift_dynamicCast())
  {
    v7[0] = v4;
    v7[1] = v5;
    a2(v7);
  }
}

uint64_t sub_231080244(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2A8, &unk_2311637F8);
  OUTLINED_FUNCTION_9_0();
  v5 = swift_allocObject();
  *(v5 + 20) = 0;
  *(v5 + 16) = 0;
  *(v2 + 16) = v5;
  v6 = OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_reason;
  sub_231157F28();
  OUTLINED_FUNCTION_13_0();
  (*(v7 + 32))(v2 + v6, a1);
  sub_231086424(a2, v2 + OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_continuation);
  return v2;
}

uint64_t sub_2310802EC()
{
  sub_231080378();

  sub_231051B38(v0 + OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_continuation, &unk_27DD3CE00, &qword_2311637F0);
  v1 = OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_reason;
  sub_231157F28();
  OUTLINED_FUNCTION_13_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_231080378()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 20));
  sub_231086494((v1 + 16));
  os_unfair_lock_unlock((v1 + 20));
}

uint64_t sub_2310803E4()
{
  sub_2310802EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23108043C(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  if ((*a1 & 1) == 0)
  {
    if (v5 == -1)
    {
      sub_2310864B8();
      v12 = swift_allocError();
      v13 = 1;
      *v14 = 1;
    }

    else
    {
      v12 = a2;
      v13 = v5;
    }

    *a1 = 1;
    sub_23108650C(a4 + OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_continuation, v11);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v15);
    sub_23108657C(a2, v5);
    if (EnumTagSinglePayload == 1)
    {
      sub_2310865A0(v12, v13 & 1);
      return sub_231051B38(v11, &unk_27DD3CE00, &qword_2311637F0);
    }

    else
    {
      sub_2310CF3B4(v12, v13 & 1);
      sub_2310865A0(v12, v13 & 1);
      return (*(*(v15 - 8) + 8))(v11, v15);
    }
  }

  return result;
}

void *sub_2310805EC(void *a1)
{
  v2 = v1;
  v18 = sub_231159328();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  sub_231159318();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v11 = sub_231158D48();
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC30, &unk_231163850);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v1 + 40) = v12;
  *(v1 + 16) = a1;
  sub_231054A0C(0, &qword_280CCAF08, 0x277D85C78);
  v13 = a1;
  sub_231158D18();
  *&v19[0] = MEMORY[0x277D84F90];
  sub_2310867AC(&unk_280CCAF10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_23106028C();
  sub_231159498();
  (*(v5 + 104))(v9, *MEMORY[0x277D85260], v18);
  v14 = sub_231159358();
  *(v2 + 24) = v14;
  memset(v19, 0, sizeof(v19));
  objc_allocWithZone(MEMORY[0x277D79F00]);
  v15 = v14;
  v16 = sub_231085E8C(v14, v19, 1, 3.0, 10.0);
  *(v2 + 32) = v16;
  [v16 addTarget:v2 action:sel_reindexWithDebouncer_error_];

  return v2;
}

uint64_t sub_2310808A0()
{
  v1 = v0;
  v2 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v33[2] = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v33 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  v17 = *(**(v0 + 40) + 136);

  v19 = atomic_load(v17(v18));

  if (v19)
  {
    sub_2311581C8();
    v27 = sub_231158238();
    v28 = sub_2311592F8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_53();
      *v29 = 0;
      _os_log_impl(&dword_23103C000, v27, v28, "Scheduler: ToolKit indexing scheduler has already started", v29, 2u);
      OUTLINED_FUNCTION_16();
    }

    return (*(v4 + 8))(v11, v2);
  }

  else
  {
    sub_2311581C8();
    v20 = sub_231158238();
    v21 = sub_2311592F8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_53();
      *v22 = 0;
      _os_log_impl(&dword_23103C000, v20, v21, "Scheduler: start()", v22, 2u);
      OUTLINED_FUNCTION_16();
    }

    v23 = *(v4 + 8);
    v23(v16, v2);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_10_6();
    if (VCDeviceHasBeenUnlocked())
    {
      sub_2311581C8();
      v24 = sub_231158238();
      v25 = sub_2311592F8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_53();
        *v26 = 0;
        _os_log_impl(&dword_23103C000, v24, v25, "Scheduler: device unlocked already, scheduling indexing.", v26, 2u);
        OUTLINED_FUNCTION_16();
      }

      v23(v14, v2);
      sub_231080E78();
      sub_231081360();
    }

    v31 = *(**(v1 + 40) + 136);

    atomic_store(1u, v31(v32));
  }
}

void sub_231080E78()
{
  v34 = sub_231158258();
  v1 = *(v34 - 8);
  v2 = MEMORY[0x28223BE20](v34);
  v4 = &v29[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-1] - v5;
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }

  sub_2310548A0(*(off_280CCB3C0 + 11) + 16, v30);
  __swift_project_boxed_opaque_existential_0(v30, v30[3]);
  DynamicType = swift_getDynamicType();
  v8 = v30[4];

  __swift_destroy_boxed_opaque_existential_0(v30);
  v29[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v29[4] = sub_231086674();
  LOBYTE(v29[0]) = 2;
  (*(v8 + 40))(v31, v29, DynamicType, v8);
  __swift_destroy_boxed_opaque_existential_0(v29);
  v9 = v32;
  v10 = v33;
  __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  LOBYTE(v30[0]) = 2;
  (*(v10 + 80))(v30, v9, v10);
  v11 = v32;
  v12 = v33;
  __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  (*(v12 + 104))(v11, v12, 300.0);
  v13 = v32;
  v14 = v33;
  __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  (*(v14 + 128))(&unk_2845D7770, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_231161B80;
  *(v15 + 32) = sub_231158E58();
  *(v15 + 40) = v16;
  v17 = v32;
  v18 = v33;
  __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  (*(v18 + 152))(v15, v17, v18);
  v19 = v32;
  v20 = v33;
  __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v30[0] = 5;
  (*(v20 + 32))(v30, v19, v20);
  sub_2310ADC14(v31);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v31);
    v31[0] = v0;
    v21 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
    if ((swift_dynamicCast() & 1) != 0 && (v30[0] & 1) == 0)
    {

      sub_2311581C8();
      v25 = sub_231158238();
      v26 = sub_2311592F8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_23103C000, v25, v26, "deferred index: high priority delta task already scheduled", v27, 2u);
        MEMORY[0x2319267C0](v27, -1, -1);
      }

      (*(v1 + 8))(v4, v34);
    }

    else
    {
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v31);
    sub_2311581C8();
    v22 = sub_231158238();
    v23 = sub_2311592F8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23103C000, v22, v23, "deferred index: scheduled high priority delta task", v24, 2u);
      MEMORY[0x2319267C0](v24, -1, -1);
    }

    (*(v1 + 8))(v6, v34);
  }
}

void sub_231081360()
{
  v1 = sub_231158258();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v28[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28[-1] - v6;
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }

  sub_2310548A0(*(off_280CCB3C0 + 11) + 16, v29);
  __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  DynamicType = swift_getDynamicType();
  v9 = v29[4];

  __swift_destroy_boxed_opaque_existential_0(v29);
  v28[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v28[4] = sub_231086674();
  LOBYTE(v28[0]) = 3;
  (*(v9 + 40))(v30, v28, DynamicType, v9);
  __swift_destroy_boxed_opaque_existential_0(v28);
  v10 = v31;
  v11 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  LOBYTE(v29[0]) = 0;
  (*(v11 + 80))(v29, v10, v11);
  v12 = v31;
  v13 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  (*(v13 + 104))(v12, v13, 600.0);
  v14 = v31;
  v15 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v29[0] = 5;
  (*(v15 + 32))(v29, v14, v15);
  v16 = v31;
  v17 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  (*(v17 + 176))(1, v16, v17);
  v18 = v31;
  v19 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  (*(v19 + 56))(1, v18, v19);
  sub_2310ADC14(v30);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
    v30[0] = v0;
    v20 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
    if ((swift_dynamicCast() & 1) != 0 && (v29[0] & 1) == 0)
    {

      sub_2311581C8();
      v24 = sub_231158238();
      v25 = sub_2311592F8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_23103C000, v24, v25, "deferred index: db maintenance task already scheduled", v26, 2u);
        MEMORY[0x2319267C0](v26, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
    }

    else
    {
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
    sub_2311581C8();
    v21 = sub_231158238();
    v22 = sub_2311592F8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_23103C000, v21, v22, "deferred index: scheduled db maintenance task", v23, 2u);
      MEMORY[0x2319267C0](v23, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
  }
}

uint64_t sub_2310817FC()
{
  v1 = v0;
  v2 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  sub_2311581C8();
  v9 = sub_231158238();
  v10 = sub_2311592F8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_53();
    *v11 = 0;
    _os_log_impl(&dword_23103C000, v9, v10, "Scheduler: end()", v11, 2u);
    OUTLINED_FUNCTION_16();
  }

  (*(v4 + 8))(v8, v2);
  v12 = *(**(v1 + 40) + 136);

  atomic_store(0, v12(v13));

  if (qword_280CCBC80 != -1)
  {
    v14 = OUTLINED_FUNCTION_5_7(&qword_280CCBC80);
  }

  return sub_2310D46FC(v14);
}

void sub_23108198C()
{
  v0 = sub_231157F18();
  v19 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v18 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_231157E88();
  v15[3] = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v15[4] = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_231157F28();
  v15[5] = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v15[2] = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231158258();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v11 = sub_231158238();
  v12 = sub_2311592F8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v15[1] = v10;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_23103C000, v11, v12, "Scheduler: received link notification", v13, 2u);
    MEMORY[0x2319267C0](v14, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  sub_231080E78();
}

uint64_t sub_231081FA8()
{
  v60 = sub_231157E88();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v47 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_231157F28();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_231158258();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - v7;
  v9 = sub_231157F18();
  v53 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v47 - v15);
  v17 = sub_231157808();
  if (!v17)
  {
    v64 = 0u;
    v65 = 0u;
    goto LABEL_7;
  }

  v18 = v17;
  *&v64 = sub_231158E58();
  *(&v64 + 1) = v19;
  sub_231159528();
  sub_23104ADA0(v18, &v64, v63);

  sub_231086718(v63);
  if (!*(&v65 + 1))
  {
LABEL_7:
    sub_231051B38(&v64, &unk_27DD3CE30, &qword_231166210);
    v20 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
  if (swift_dynamicCast())
  {
    v20 = v63[0];
  }

  else
  {
    v20 = 0;
  }

LABEL_8:
  v21 = sub_231157808();
  if (!v21)
  {
    v64 = 0u;
    v65 = 0u;
    goto LABEL_18;
  }

  v22 = v21;
  v61 = sub_231158E58();
  v62 = v23;
  sub_231159528();
  sub_23104ADA0(v22, &v64, v63);

  sub_231086718(v63);
  if (!*(&v65 + 1))
  {
LABEL_18:
    sub_231051B38(&v64, &unk_27DD3CE30, &qword_231166210);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
  if (swift_dynamicCast())
  {
    v24 = v63[0];
  }

  else
  {
    v24 = 0;
  }

  if (v20 && v24)
  {
    v52 = sub_2310BE194(v24);
    v51 = sub_2310BE194(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C340, &unk_231163830);
    v25 = sub_231157EB8();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_231161B80;
    (*(v26 + 104))(v28 + v27, *MEMORY[0x277D79C28], v25);
    sub_2310A0D38(v28);
    v29 = v51;
    *v16 = v52;
    v16[1] = v29;
    v16[2] = v30;
    v31 = v53;
    (*(v53 + 104))(v16, *MEMORY[0x277D79C58], v9);
    sub_2311581C8();
    v32 = *(v31 + 16);
    v52 = v31 + 16;
    v51 = v32;
    v32(v14, v16, v9);
    v33 = sub_231158238();
    v34 = sub_2311592F8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48 = v35;
      v50 = swift_slowAlloc();
      v63[0] = v50;
      *v35 = 136315138;
      v49 = v34;
      v47 = sub_231157EC8();
      v37 = v36;
      v38 = *(v31 + 8);
      v38(v14, v9);
      v39 = sub_2310488F8(v47, v37, v63);

      v40 = v48;
      *(v48 + 1) = v39;
      _os_log_impl(&dword_23103C000, v33, v49, "Scheduler: received app protection notification: %s", v40, 0xCu);
      v41 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x2319267C0](v41, -1, -1);
      MEMORY[0x2319267C0](v40, -1, -1);
    }

    else
    {

      v38 = *(v31 + 8);
      v38(v14, v9);
    }

    (*(v3 + 8))(v8, v2);
    (*(v58 + 104))(v56, *MEMORY[0x277D79C18], v60);
    v51(v54, v16, v9);
    v46 = v55;
    sub_231157E98();
    sub_231041410(v46);
    (*(v57 + 8))(v46, v59);
    return (v38)(v16, v9);
  }

LABEL_19:

  sub_2311581C8();
  v42 = sub_231158238();
  v43 = sub_2311592D8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_23103C000, v42, v43, "Received malformed notification for App Protection event.", v44, 2u);
    MEMORY[0x2319267C0](v44, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_231082808()
{
  v0 = sub_231158258();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  sub_2311581C8();
  v6 = sub_231158238();
  v7 = sub_2311592F8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23103C000, v6, v7, "Scheduler: received language change notification", v8, 2u);
    MEMORY[0x2319267C0](v8, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  sub_231082C10();
}

void sub_231082C10()
{
  v1 = sub_231158258();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v35[-1] - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v35[-1] - v7;
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }

  v9 = *(off_280CCB3C0 + 11);

  sub_231083C68();
  if (v0)
  {
  }

  else
  {
    sub_2311581C8();
    v10 = sub_231158238();
    v11 = sub_2311592F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v40 = v6;
      v13 = v2;
      v14 = v1;
      v15 = v12;
      *v12 = 0;
      _os_log_impl(&dword_23103C000, v10, v11, "deferred index: cancelled low priority full task", v12, 2u);
      v16 = v15;
      v1 = v14;
      v2 = v13;
      v6 = v40;
      MEMORY[0x2319267C0](v16, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
  }

  sub_2310548A0(v9 + 16, v36);
  __swift_project_boxed_opaque_existential_0(v36, v36[3]);
  DynamicType = swift_getDynamicType();
  v18 = v36[4];
  __swift_destroy_boxed_opaque_existential_0(v36);
  v35[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v35[4] = sub_231086674();
  LOBYTE(v35[0]) = 1;
  (*(v18 + 40))(v37, v35, DynamicType, v18);
  __swift_destroy_boxed_opaque_existential_0(v35);
  v19 = v38;
  v20 = v39;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  LOBYTE(v36[0]) = 2;
  (*(v20 + 80))(v36, v19, v20);
  v21 = v38;
  v22 = v39;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  (*(v22 + 104))(v21, v22, 600.0);
  v23 = v38;
  v24 = v39;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  (*(v24 + 128))(&unk_2845D77A0, v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_231161B80;
  *(v25 + 32) = sub_231158E58();
  *(v25 + 40) = v26;
  v27 = v38;
  v28 = v39;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  (*(v28 + 152))(v25, v27, v28);
  v29 = v38;
  v30 = v39;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v36[0] = 5;
  (*(v30 + 32))(v36, v29, v30);
  sub_2310ADC14(v37);
  __swift_destroy_boxed_opaque_existential_0(v37);
  sub_2311581C8();
  v31 = sub_231158238();
  v32 = sub_2311592F8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_23103C000, v31, v32, "deferred index: scheduled high priority delta task", v33, 2u);
    MEMORY[0x2319267C0](v33, -1, -1);
  }

  (*(v2 + 8))(v6, v1);
}

uint64_t sub_231083218(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_231157818();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  sub_2311577E8();

  a4(v11);

  return (*(v7 + 8))(v11, v5);
}

void sub_2310832FC()
{
  v0 = sub_231158258();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  sub_2311581C8();
  v6 = sub_231158238();
  v7 = sub_2311592F8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23103C000, v6, v7, "Scheduler: received first unlock notification", v8, 2u);
    MEMORY[0x2319267C0](v8, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  sub_231080E78();
  sub_2310836F0();
}

void sub_2310836F0()
{
  v1 = sub_231158258();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v35[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35[-1] - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v35[-1] - v9;
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }

  v11 = *(off_280CCB3C0 + 11);

  if (sub_231083CF8())
  {
    sub_2311581C8();
    v12 = sub_231158238();
    v13 = sub_2311592F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23103C000, v12, v13, "deferred index: low priority task wanted but a regular priority one is already scheduled", v14, 2u);
      MEMORY[0x2319267C0](v14, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
  }

  else
  {
    sub_2310548A0(v11 + 16, v36);
    __swift_project_boxed_opaque_existential_0(v36, v36[3]);
    DynamicType = swift_getDynamicType();
    v16 = v36[4];
    __swift_destroy_boxed_opaque_existential_0(v36);
    v35[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
    v35[4] = sub_231086674();
    LOBYTE(v35[0]) = 0;
    (*(v16 + 40))(v37, v35, DynamicType, v16);
    __swift_destroy_boxed_opaque_existential_0(v35);
    v17 = v38;
    v18 = v39;
    __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    LOBYTE(v36[0]) = 0;
    (*(v18 + 80))(v36, v17, v18);
    v19 = v38;
    v20 = v39;
    __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    (*(v20 + 104))(v19, v20, 600.0);
    v21 = v38;
    v22 = v39;
    __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    (*(v22 + 56))(1, v21, v22);
    v23 = v38;
    v24 = v39;
    __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    (*(v24 + 128))(&unk_2845D77D0, v23, v24);
    v25 = v38;
    v26 = v39;
    __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    v36[0] = 5;
    (*(v26 + 32))(v36, v25, v26);
    sub_2310ADC14(v37);
    if (v0)
    {
      __swift_destroy_boxed_opaque_existential_0(v37);
      v37[0] = v0;
      v27 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
      if ((swift_dynamicCast() & 1) != 0 && (v36[0] & 1) == 0)
      {

        sub_2311581C8();
        v31 = sub_231158238();
        v32 = sub_2311592F8();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_23103C000, v31, v32, "deferred index: low priority full task already scheduled", v33, 2u);
          MEMORY[0x2319267C0](v33, -1, -1);
        }

        (*(v2 + 8))(v5, v1);
      }

      else
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v37);
      sub_2311581C8();
      v28 = sub_231158238();
      v29 = sub_2311592F8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_23103C000, v28, v29, "deferred index: scheduled low priority full task", v30, 2u);
        MEMORY[0x2319267C0](v30, -1, -1);
      }

      (*(v2 + 8))(v10, v1);
    }
  }
}

uint64_t sub_231083C68()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v4[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v4[4] = sub_231086674();
  LOBYTE(v4[0]) = 0;
  (*(v2 + 24))(v4, v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_231083CF8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v4[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v4[4] = sub_231086674();
  LOBYTE(v4[0]) = 1;
  LOBYTE(v1) = (*(v2 + 32))(v4, v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v1 & 1;
}

uint64_t sub_231083D84()
{
  OUTLINED_FUNCTION_4_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231157F28();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v4 = sub_231158258();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231083E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int8x16_t *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = v24[2].i64[1];
  v27 = v24[3].i64[0];
  v29 = v24[2].i64[0];
  v30 = v24[1].i64[0];
  sub_2311581C8();
  (*(v28 + 16))(v27, v30, v29);
  v31 = sub_231158238();
  v32 = sub_2311592B8();
  v33 = os_log_type_enabled(v31, v32);
  v35 = v24[4].i64[0];
  v34 = v24[4].i64[1];
  v36 = v24[3].i64[0];
  v37 = v24[3].i64[1];
  v39 = v24[2].i64[0];
  v38 = v24[2].i64[1];
  if (v33)
  {
    OUTLINED_FUNCTION_45_1();
    HIDWORD(a9) = v32;
    v40 = OUTLINED_FUNCTION_22_3();
    a13 = v40;
    *v37 = 136315138;
    v41 = sub_231157E68();
    a10 = v34;
    v43 = v42;
    (*(v38 + 8))(v36, v39);
    v44 = sub_2310488F8(v41, v43, &a13);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_23103C000, v31, BYTE4(a9), "Scheduler: submitting request %s into the debouncer", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_9_7();

    (*(v35 + 8))(a10, v37);
  }

  else
  {

    (*(v38 + 8))(v36, v39);
    (*(v35 + 8))(v34, v37);
  }

  sub_2311589E8();
  v56 = v24[1];
  sub_2311589D8();
  sub_2311589A8();

  v45 = swift_task_alloc();
  v24[5].i64[0] = v45;
  v45[1] = vextq_s8(v56, v56, 8uLL);
  v46 = swift_task_alloc();
  v24[5].i64[1] = v46;
  *v46 = v24;
  v46[1] = sub_231084114;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2822008A0](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, v56.i64[0], v56.i64[1], a13, a14, a15, a16);
}

uint64_t sub_231084114()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23108421C()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_231084284()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310842F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_231157F28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 32);
  sub_231157E68();
  v14 = sub_231158E28();

  (*(v10 + 16))(v12, a3, v9);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  (*(*(v15 - 8) + 16))(v8, a1, v15);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
  type metadata accessor for ToolKitIndexingScheduler.DebouncedReason(0);
  v16 = swift_allocObject();
  sub_231080244(v12, v8);
  [v13 pokeWithReason:v14 userInfo:v16];
}

uint64_t sub_2310844E4(void *a1)
{
  v3 = v2;
  v4 = v1;
  v39 = sub_231157F28();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = *(**(v1 + 40) + 136);

  v12 = atomic_load(v10(v11));

  if ((v12 & 1) == 0)
  {
    sub_2310864B8();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  v15 = sub_2310861B8(a1);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = v15;
    v34 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
    result = sub_23106FF58(v15);
    v18 = result;
    v19 = 0;
    v35 = v17 & 0xFFFFFFFFFFFFFF8;
    v36 = v17 & 0xC000000000000001;
    while (1)
    {
      if (v18 == v19)
      {

        v16 = v34;
        goto LABEL_23;
      }

      if (v36)
      {
        result = MEMORY[0x231925080](v19, v17);
      }

      else
      {
        if (v19 >= *(v35 + 16))
        {
          goto LABEL_35;
        }

        result = *(v17 + 8 * v19 + 32);
      }

      v20 = result;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      if ([result userInfo])
      {
        sub_231159468();
        swift_unknownObjectRelease();
      }

      else
      {

        v40 = 0u;
        v41 = 0u;
      }

      v42[0] = v40;
      v42[1] = v41;
      if (!*(&v41 + 1))
      {
        break;
      }

      type metadata accessor for ToolKitIndexingScheduler.DebouncedReason(0);
      result = swift_dynamicCast();
      if ((result & 1) != 0 && v43)
      {
        MEMORY[0x2319249F0]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_231158F98();
        }

        result = sub_231158FE8();
        v34 = v44;
        ++v19;
      }

      else
      {
LABEL_20:
        ++v19;
      }
    }

    result = sub_231051B38(v42, &unk_27DD3CE30, &qword_231166210);
    goto LABEL_20;
  }

LABEL_23:
  v21 = sub_23106FF58(v16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v23 = v21;
    v34 = v16;
    *&v42[0] = MEMORY[0x277D84F90];
    result = sub_23104CD24(0, v21 & ~(v21 >> 63), 0);
    if (v23 < 0)
    {
      goto LABEL_36;
    }

    v33 = v9;
    v35 = v4;
    v36 = v3;
    v24 = 0;
    v22 = *&v42[0];
    v16 = v34;
    v25 = v34 & 0xC000000000000001;
    v26 = (v37 + 16);
    do
    {
      if (v25)
      {
        v27 = MEMORY[0x231925080](v24, v16);
        (*v26)(v38, v27 + OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_reason, v39);
        v16 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        (*v26)(v38, *(v16 + 8 * v24 + 32) + OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_reason, v39);
      }

      *&v42[0] = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_23104CD24((v28 > 1), v29 + 1, 1);
        v16 = v34;
        v22 = *&v42[0];
      }

      ++v24;
      *(v22 + 16) = v29 + 1;
      (*(v37 + 32))(v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29, v38, v39);
    }

    while (v23 != v24);
    v4 = v35;
    v9 = v33;
  }

  v30 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v4;
  v31[5] = v22;
  v31[6] = v16;

  sub_2310798FC();
}

uint64_t sub_2310849C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_231084A60;

  return sub_231084D34(a5);
}

uint64_t sub_231084A60()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  *(v4 + 32) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231084B60()
{
  result = sub_23106FF58(*(v0 + 16));
  if (result)
  {
    v2 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v3 = 0;
    v4 = *(v0 + 16) & 0xC000000000000001;
    do
    {
      if (v4)
      {
        MEMORY[0x231925080](v3, *(v0 + 16));
      }

      else
      {
      }

      ++v3;
      sub_231080378();
    }

    while (v2 != v3);
  }

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_231084C34()
{
  result = sub_23106FF58(*(v0 + 16));
  if (result)
  {
    v2 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v3 = 0;
    v4 = *(v0 + 16) & 0xC000000000000001;
    do
    {
      if (v4)
      {
        MEMORY[0x231925080](v3, *(v0 + 16));
      }

      else
      {
      }

      v5 = *(v0 + 32);
      ++v3;
      v6 = v5;
      sub_231080378();
    }

    while (v2 != v3);
  }

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_231084D34(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_231158258();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231084E18, 0, 0);
}

uint64_t sub_231084E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  v28 = os_transaction_create();
  v29 = *MEMORY[0x277D7A4E8];
  v24[9] = v28;
  v24[10] = v29;
  sub_2311581C8();

  v30 = sub_231158238();
  sub_2311592B8();

  v31 = OUTLINED_FUNCTION_26_4();
  v32 = v24[8];
  v34 = v24[3];
  v33 = v24[4];
  if (v31)
  {
    v64 = v24[8];
    v35 = v24[2];
    OUTLINED_FUNCTION_45_1();
    v36 = OUTLINED_FUNCTION_22_3();
    a13 = v36;
    *v25 = 136315138;
    v37 = sub_231157F28();
    v38 = MEMORY[0x231924A30](v35, v37);
    v40 = sub_2310488F8(v38, v39, &a13);

    *(v25 + 4) = v40;
    OUTLINED_FUNCTION_69(&dword_23103C000, v41, v42, "Scheduler: Debouncer settled on with reasons: %s");
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_9_7();

    v43 = *(v33 + 8);
    (v43)(v64, v34);
  }

  else
  {

    v43 = *(v33 + 8);
    (v43)(v32, v34);
  }

  v24[11] = v43;
  sub_231158018();

  v44 = sub_231157FC8();
  v24[12] = v44;
  sub_2311581C8();
  v45 = v44;
  v46 = sub_231158238();
  sub_2311592F8();

  v47 = OUTLINED_FUNCTION_26_4();
  v48 = v24[7];
  v49 = v24[3];
  if (v47)
  {
    OUTLINED_FUNCTION_45_1();
    v63 = v49;
    v50 = OUTLINED_FUNCTION_22_3();
    a13 = v50;
    *v43 = 136315138;
    v51 = [v45 debugDescription];
    v52 = sub_231158E58();
    v62 = v48;
    v54 = v53;

    v55 = sub_2310488F8(v52, v54, &a13);

    *(v43 + 4) = v55;
    OUTLINED_FUNCTION_69(&dword_23103C000, v56, v57, "Scheduler: Submitting reindex for merged request: %s");
    __swift_destroy_boxed_opaque_existential_0(v50);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_9_7();

    (v43)(v62, v63);
  }

  else
  {

    (v43)(v48, v49);
  }

  if (qword_280CCBC80 != -1)
  {
    OUTLINED_FUNCTION_5_7(&qword_280CCBC80);
  }

  v58 = swift_task_alloc();
  v24[13] = v58;
  *v58 = v24;
  OUTLINED_FUNCTION_19_3(v58);
  OUTLINED_FUNCTION_23_0();

  return sub_2310D08E8(v59);
}

uint64_t sub_23108511C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  *(v4 + 112) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23108521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  v17 = v16[12];
  sub_2311581C8();
  v18 = v17;
  v19 = sub_231158238();
  v20 = sub_2311592F8();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v16[11];
  v23 = v16[12];
  v24 = v16[6];
  v25 = v16[3];
  v26 = v16[4];
  if (v21)
  {
    a12 = v16[3];
    v27 = OUTLINED_FUNCTION_45_1();
    a11 = v26;
    a13 = swift_slowAlloc();
    *v27 = 136315138;
    v28 = [v23 debugDescription];
    sub_231158E58();
    a9 = v24;
    a10 = v22;

    v29 = OUTLINED_FUNCTION_17();
    v32 = sub_2310488F8(v29, v30, v31);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_23103C000, v19, v20, "Scheduler: Reindex complete for request: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
    swift_unknownObjectRelease();

    a10(v24, a12);
  }

  else
  {

    swift_unknownObjectRelease();
    v22(v24, v25);
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310853FC()
{
  v1 = v0[14];
  v2 = v0[12];
  sub_2311581C8();
  v3 = v2;
  v4 = v1;
  v5 = sub_231158238();
  v6 = sub_2311592D8();

  if (OUTLINED_FUNCTION_26_4())
  {
    v7 = v0[14];
    v8 = v0[12];
    v24 = v0[5];
    v25 = v0[11];
    v23 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v9 = 136315394;
    v11 = [v8 debugDescription];
    sub_231158E58();

    v12 = OUTLINED_FUNCTION_17();
    v15 = sub_2310488F8(v12, v13, v14);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_23103C000, v5, v6, "Scheduler: Request (%s) failed with error: %@", v9, 0x16u);
    sub_231051B38(v10, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16();
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_16();

    v25(v24, v23);
  }

  else
  {
    v18 = v0[11];

    v19 = OUTLINED_FUNCTION_17();
    v18(v19);
  }

  v20 = v0[12];
  swift_willThrow();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1();

  return v21();
}

uint64_t sub_23108572C()
{
  sub_2310856F4();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t type metadata accessor for ToolKitIndexingScheduler.DebouncedReason(uint64_t a1)
{
  result = qword_280CCB830;
  if (!qword_280CCB830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2310857D8(uint64_t a1)
{
  sub_2310858B4(319);
  if (v1 <= 0x3F)
  {
    sub_231157F28();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2310858B4(uint64_t a1)
{
  if (!qword_280CCAFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD3C280, &unk_231163680);
    v1 = sub_231159448();
    if (!v2)
    {
      atomic_store(v1, &qword_280CCAFA0);
    }
  }
}

uint64_t sub_231085918()
{
  OUTLINED_FUNCTION_26_1();
  v1 = swift_allocObject();
  *(v1 + 16) = 0x74616E696D726554;
  *(v1 + 24) = 0xEB000000006E6F69;
  OUTLINED_FUNCTION_26_1();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_231086280;
  *(v2 + 24) = v1;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_2311637B8;
  *(v3 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x80000002311691D0;
  *(inited + 48) = sub_231086288;
  *(inited + 56) = v2;
  *(inited + 64) = 2;
  *(inited + 72) = &unk_2311637C0;
  *(inited + 80) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_231161B80;
  *(v5 + 32) = inited;

  v6 = static TaskBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_2310639FC();
  return v6;
}

uint64_t sub_231085AA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_231158258();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231085B60, 0, 0);
}

uint64_t sub_231085B60()
{
  sub_2311581C8();
  v0 = sub_231158238();
  v1 = sub_2311592F8();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = OUTLINED_FUNCTION_53();
    *v2 = 0;
    _os_log_impl(&dword_23103C000, v0, v1, "Received stop()", v2, 2u);
    OUTLINED_FUNCTION_16();
  }

  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  sub_2310817FC();

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_231085C88()
{
  OUTLINED_FUNCTION_4_1();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_19_3(v2);

  return sub_231085AA0(v3, v0);
}

double sub_231085DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_26_1();
  swift_allocObject();

  v10 = a6(a2, a3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v11 = swift_allocObject();
  *&result = 1;
  *(v11 + 16) = xmmword_231161E80;
  *(v11 + 32) = v10;
  return result;
}

id sub_231085E8C(void *a1, void *a2, char a3, double a4, double a5)
{
  v10 = a2[3];
  if (v10)
  {
    v12 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v13 = *(v10 - 8);
    MEMORY[0x28223BE20](v12);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_2311597F8();
    (*(v13 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_0(a2);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v5 initWithDelay:a1 maximumDelay:v16 queue:a3 & 1 userInfo:a4 unboundedFiringReasons:a5];

  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_231086078(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_23108614C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

unint64_t sub_231086194(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_13_8(a1, a2, a3, a4);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v6;
  }

  return result;
}

uint64_t sub_2310861B8(void *a1)
{
  v1 = [a1 firingReasons];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231054A0C(0, &qword_280CCAED8, 0x277D79F08);
  v3 = sub_231158F48();

  return v3;
}

uint64_t sub_231086290()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_19_3(v4);

  return sub_231063508(v5, v3, v2);
}

uint64_t sub_231086424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2310864B8()
{
  result = qword_27DD3C2B0;
  if (!qword_27DD3C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C2B0);
  }

  return result;
}

uint64_t sub_23108650C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_23108657C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_231086594(result, a2 & 1);
  }

  return result;
}

id sub_231086594(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2310865A0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2310865AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23105FDEC;

  return sub_2310849C0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_231086674()
{
  result = qword_280CCB3D0;
  if (!qword_280CCB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB3D0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2310867AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ToolKitIndexingScheduler.IndexingSchedulingError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2310868DC()
{
  result = qword_27DD3C2B8;
  if (!qword_27DD3C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C2B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_7()
{

  JUMPOUT(0x2319267C0);
}

id OUTLINED_FUNCTION_10_6()
{

  return [v0 (v2 + 717)];
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_23107FCB4(v9, v8, a3, v10, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_21_5(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_26_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_231086A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  v10 = *(v3 + 56);
  *(v3 + 56) = a3;
  sub_23108C884(a1, a2, a3);
  sub_231060330(v8, v9, v10);
  sub_231086F60(a1, a2, a3);
  if (v7 == 3 && !(a2 | a1))
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 0;
LABEL_17:

    return sub_2310602F0(v11, v12, v13);
  }

  if (!*(v3 + 16))
  {
    result = os_transaction_create();
    if (result)
    {
      v16 = *(v3 + 16);
      v12 = *(v3 + 24);
      v13 = *(v3 + 32);
      *(v3 + 16) = result;
      *(v3 + 24) = 0xD00000000000001BLL;
      *(v3 + 32) = 0x8000000231169430;
      v11 = v16;
      goto LABEL_17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v14 = *(v3 + 24) == 0xD00000000000001BLL && *(v3 + 32) == 0x8000000231169430;
  if (!v14 && (sub_231159818() & 1) == 0)
  {
    swift_unknownObjectRetain();

    result = os_transaction_create();
    if (result)
    {
      v17 = result;

      swift_unknownObjectRelease();
      v11 = *(v3 + 16);
      v12 = *(v3 + 24);
      v13 = *(v3 + 32);
      *(v3 + 16) = v17;
      *(v3 + 24) = 0xD00000000000001BLL;
      *(v3 + 32) = 0x8000000231169430;
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  swift_unknownObjectRetain();

  os_transaction_needs_more_time();

  return swift_unknownObjectRelease();
}

uint64_t sub_231086BD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(a1 + 16);
  *(v2 + 40) = *a1;
  *(v2 + 56) = v8;
  v9 = *(v2 + 72);
  *(v2 + 72) = *(a1 + 32);
  sub_23108C774(a1, v27);
  sub_23108C7AC(v4, v5, v6, v7, v9);
  sub_231086D98(a1);
  v10 = sub_2310871F4();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = *(v2 + 16);
    if (v14)
    {
      v16 = *(v2 + 24);
      v15 = *(v2 + 32);
      if (v16 == v10 && v15 == v11)
      {
        v18 = *(v2 + 16);
        v19 = v12;
        v20 = v13;
        goto LABEL_13;
      }

      if (sub_231159818())
      {
        v18 = v14;
        v19 = v16;
        v20 = v15;
LABEL_13:
        sub_23108C814(v18, v19, v20);

        os_transaction_needs_more_time();

        return swift_unknownObjectRelease();
      }

      sub_231158E88();
      swift_unknownObjectRetain();

      v26 = os_transaction_create();

      if (v26)
      {

        swift_unknownObjectRelease();
        v21 = *(v2 + 16);
        v22 = *(v2 + 24);
        v23 = *(v2 + 32);
        *(v2 + 16) = v26;
        goto LABEL_16;
      }
    }

    else
    {
      sub_231158E88();
      v24 = os_transaction_create();

      if (v24)
      {
        v21 = *(v2 + 16);
        v22 = *(v2 + 24);
        v23 = *(v2 + 32);
        *(v2 + 16) = v24;
LABEL_16:
        *(v2 + 24) = v12;
        *(v2 + 32) = v13;
        return sub_2310602F0(v21, v22, v23);
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v21 = *(v2 + 16);
  v22 = *(v2 + 24);
  v23 = *(v2 + 32);
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  return sub_2310602F0(v21, v22, v23);
}

uint64_t sub_231086D98(uint64_t a1)
{
  v2 = sub_231158258();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311581C8();
  sub_23108C774(a1, v15);
  v6 = sub_231158238();
  v7 = sub_2311592F8();
  sub_23108C854(a1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136315138;
    v10 = sub_231087320();
    v12 = sub_2310488F8(v10, v11, v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_23103C000, v6, v7, "transitioned into %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2319267C0](v9, -1, -1);
    MEMORY[0x2319267C0](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_231086F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_231158258();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311581C8();
  sub_23108C884(a1, a2, v3);
  v10 = sub_231158238();
  v11 = sub_2311592F8();
  sub_231060330(a1, a2, v3);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_231058294(a1, a2, v3);
    v16 = sub_2310488F8(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_23103C000, v10, v11, "transitioned into %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2319267C0](v13, -1, -1);
    MEMORY[0x2319267C0](v12, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_231087168()
{
  sub_231159918();
  MEMORY[0x2319253F0](0);
  return sub_231159948();
}

uint64_t sub_2310871B4(uint64_t a1)
{
  sub_231159918();
  MEMORY[0x2319253F0](0);
  return sub_231159948();
}

uint64_t sub_2310871F4()
{
  result = 0;
  switch(*(v0 + 32))
  {
    case 1:
      v4 = *(v0 + 16);
      v3 = *(v0 + 24);

      sub_231159588();

      OUTLINED_FUNCTION_8_7();
      v9 = v5 + 4;
      if (v3)
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }

      if (!v3)
      {
        v3 = 0xE000000000000000;
      }

      MEMORY[0x231924980](v6, v3);

      MEMORY[0x231924980](46, 0xE100000000000000);
      goto LABEL_11;
    case 2:
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_8_7();
      v2 = v7 + 7;
      goto LABEL_10;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_8_7();
LABEL_10:
      v9 = v2;
LABEL_11:
      v8 = OUTLINED_FUNCTION_6_8();
      MEMORY[0x231924980](v8);
      return v9;
  }
}

unint64_t sub_231087320()
{
  result = 1701602409;
  switch(*(v0 + 32))
  {
    case 1:
      v4 = *(v0 + 16);
      v3 = *(v0 + 24);

      sub_231159588();

      OUTLINED_FUNCTION_14_6();
      v11 = 0xD000000000000015;
      v5 = OUTLINED_FUNCTION_6_8();
      MEMORY[0x231924980](v5);
      MEMORY[0x231924980](0x6469206874697720, 0xEA00000000002720);
      OUTLINED_FUNCTION_14_6();
      if (v3)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0xD000000000000011;
      }

      if (v3)
      {
        v8 = v3;
      }

      else
      {
        v8 = v6;
      }

      MEMORY[0x231924980](v7, v8);

      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_14_6();
      v11 = 0xD000000000000017;
      v9 = OUTLINED_FUNCTION_6_8();
      goto LABEL_12;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_14_6();
      v11 = 0xD000000000000026;
      v2 = OUTLINED_FUNCTION_6_8();
      MEMORY[0x231924980](v2);
LABEL_10:
      v9 = 39;
      v10 = 0xE100000000000000;
LABEL_12:
      MEMORY[0x231924980](v9, v10);
      return v11;
  }
}