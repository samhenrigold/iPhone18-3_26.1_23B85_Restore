BOOL sub_22959D41C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_229543DBC(0x53555F6E65, 0xE500000000000000);
    if (v3)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v2, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if (swift_dynamicCast())
      {
        if (*(v12 + 16) && (v4 = sub_229543DBC(0x656D614E656D6F48, 0xE900000000000073), (v5 & 1) != 0))
        {
          sub_2295404B0(*(v12 + 56) + 32 * v4, v13);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
          if (swift_dynamicCast())
          {
            v6 = v12;
LABEL_12:
            v8 = v6 != 0;

            return v8;
          }
        }

        else
        {
        }

        v6 = 0;
        goto LABEL_12;
      }
    }
  }

  type metadata accessor for HMError(0);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = 0x6E6F73616552;
  v10 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0xD000000000000036;
  *(inited + 56) = 0x800000022A58AC10;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(v10, &qword_27D87CDA0, &unk_22A57A930);
  sub_22958E108();
  sub_22A4DB3CC();
  swift_willThrow();
  return v8;
}

uint64_t sub_22959D63C(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v4 = swift_task_alloc();
  v2[34] = v4;
  *v4 = v2;
  v4[1] = sub_22959D6D4;

  return sub_229595D30(a1);
}

uint64_t sub_22959D6D4()
{
  v2 = *v1;
  *(v2 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22959D808, 0, 0);
  }
}

uint64_t sub_22959D808()
{
  v1 = v0[35];
  v2 = sub_22959D41C(v0[32]);
  if (v1)
  {
    v3 = v0[1];

    return v3();
  }

  else if (v2)
  {
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_22959DA20;
    v6 = v0[32];

    return sub_229597ED0(v6);
  }

  else
  {
    v12 = *(v0 + 16);
    v7 = sub_22959D130(v0[32]);
    v0[37] = v7;
    v0[31] = v7;
    v8 = swift_task_alloc();
    v0[38] = v8;
    *(v8 + 16) = v12;
    v9 = swift_task_alloc();
    v0[39] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v0[40] = v10;
    v11 = sub_229590C00(&qword_27D87D530, &qword_27D87E400, "ll\b", MEMORY[0x277D83970]);
    *v9 = v0;
    v9[1] = sub_22959DC9C;

    return MEMORY[0x282167808](&unk_22A578850, v8, v10, v11);
  }
}

uint64_t sub_22959DA20()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22959DB50, 0, 0);
  }
}

uint64_t sub_22959DB50()
{
  v7 = *(v0 + 16);
  v1 = sub_22959D130(v0[32]);
  v0[37] = v1;
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[38] = v2;
  *(v2 + 16) = v7;
  v3 = swift_task_alloc();
  v0[39] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v0[40] = v4;
  v5 = sub_229590C00(&qword_27D87D530, &qword_27D87E400, "ll\b", MEMORY[0x277D83970]);
  *v3 = v0;
  v3[1] = sub_22959DC9C;

  return MEMORY[0x282167808](&unk_22A578850, v2, v4, v5);
}

uint64_t sub_22959DC9C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_22959E264;
  }

  else
  {

    v2 = sub_22959DDB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22959DDB8()
{
  v26 = v0;
  v1 = v0[37];
  v2 = sub_229591628();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v3 = v2;
  }

  v25 = v3;
  sub_2296F0858(v1);
  v4 = sub_229672204(v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = 0x73656C61636F4CLL;
  *(inited + 40) = 0xE700000000000000;
  v6 = *(v4 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = sub_229714EC0(*(v4 + 16), 0);
  v8 = sub_229715134(&v25, v7 + 4, v6, v4);
  sub_22953EE84(v25);
  if (v8 != v6)
  {
    __break(1u);
LABEL_6:

    v7 = MEMORY[0x277D84F90];
  }

  v9 = v0[32];
  *(inited + 72) = v0[40];
  *(inited + 48) = v7;
  v10 = sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  if (*(v9 + 16))
  {
    v11 = sub_229543DBC(0x4C746E6572727543, 0xED0000656C61636FLL);
    if (v12)
    {
      sub_2295404B0(*(v0[32] + 56) + 32 * v11, (v0 + 17));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v13 = MEMORY[0x277D837D0];
      if (swift_dynamicCast())
      {
        v14 = v0[29];
        v15 = v0[30];
        v0[24] = v13;
        v0[21] = v14;
        v0[22] = v15;
        sub_229543C58((v0 + 21), (v0 + 25));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v10;
        v17 = v0[28];
        v18 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 25), v17);
        v19 = *(v17 - 8);
        v20 = swift_task_alloc();
        (*(v19 + 16))(v20, v18, v17);
        sub_2297FE940(*v20, v20[1], 0x4C746E6572727543, 0xED0000656C61636FLL, isUniquelyReferenced_nonNull_native, &v25);
        __swift_destroy_boxed_opaque_existential_0(v0 + 25);

        v10 = v25;
      }
    }
  }

  v0[42] = v10;
  v21 = v0[33];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[15] = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  v0[16] = &off_283CDD168;
  v0[12] = v21;
  v22 = v21;
  v23 = swift_task_alloc();
  v0[43] = v23;
  *v23 = v0;
  v23[1] = sub_22959E140;

  return sub_22970A4FC((v0 + 12), v10);
}

uint64_t sub_22959E140()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_22959E2D0;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v2 + 96));
    v3 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22959E264()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22959E2D0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22959E33C(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22959883C(a1, v5, v4);
}

uint64_t sub_22959E404(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229598C6C(a1, v4, v5, v6);
}

uint64_t sub_22959E4B4(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229596240(a1, v5, v4);
}

uint64_t sub_22959E55C(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_2295967A0(a1, v4, v5, v6);
}

uint64_t sub_22959E62C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_229562F68(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22959E67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeDeviceEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22959E6E0(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22959E73C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeDeviceEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_22959E7B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22959E7FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_22959E854(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = *(*(v1 + OBJC_IVAR____TtC13HomeKitDaemon39CharacteristicReadWriteLogEventObserver_eventBuilders) + 16);
    if (v4)
    {
      v5 = result;
      v6 = OBJC_IVAR____TtC13HomeKitDaemon39CharacteristicReadWriteLogEventObserver_logEventSubmitter;
      v7 = a1;

      do
      {
        if ([v5 isTHSensorRequest])
        {
          v10 = type metadata accessor for TemperatureHumidityReadWriteLogEvent();
          v11 = objc_allocWithZone(v10);
          v12 = &v11[OBJC_IVAR____TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventName];
          *v12 = 0xD000000000000044;
          *(v12 + 1) = 0x800000022A58AFB0;
          *&v11[OBJC_IVAR____TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventOptions] = 4;
          *&v11[OBJC_IVAR____TtC13HomeKitDaemon36TemperatureHumidityReadWriteLogEvent_readWriteEvent] = v5;
          v16.receiver = v11;
          v16.super_class = v10;
          v13 = v7;
          v14 = objc_msgSendSuper2(&v16, sel_init);
          v15 = [v5 error];
          if (v15)
          {
            v8 = v15;
            v9 = sub_22A4DB3DC();
          }

          else
          {
            v9 = 0;
          }

          [v14 setError_];

          [*(v1 + v6) submitLogEvent_];
        }

        --v4;
      }

      while (v4);
    }
  }

  return result;
}

id sub_22959EAA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CharacteristicReadWriteLogEventObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22959EB7C(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = [v3 home];
  if (v10)
  {
    v11 = v10;
    if ([v10 isCurrentDeviceConfirmedPrimaryResident])
    {
      v12 = [objc_msgSend(v11 featuresDataSource)];
      swift_unknownObjectRelease();
      if (v12)
      {
        v13 = sub_22A4DD9DC();
        (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
        v14 = swift_allocObject();
        v14[2] = 0;
        v14[3] = 0;
        v14[4] = v3;
        v14[5] = v11;
        v14[6] = a1;
        v14[7] = a2;
        v14[8] = ObjectType;
        v15 = v3;
        sub_2295A1C30(a1, a2);
        sub_22957F3C0(0, 0, v9, &unk_22A5789E0, v14);

        return;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

uint64_t sub_22959ED38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v9 = sub_22A4DD07C();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v10 = sub_22A4DB7DC();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22959EE74, 0, 0);
}

uint64_t sub_22959EE74()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 56) swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  *(v0 + 160) = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_dataSource);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = [v1 spiClientIdentifier];
  sub_22A4DB79C();

  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_22959EF98;
  v5 = *(v0 + 152);

  return sub_22970BFA4(v5);
}

uint64_t sub_22959EF98(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 152);
  v6 = *(*v3 + 144);
  v7 = *(*v3 + 136);
  *(v4 + 176) = a2;
  *(v4 + 184) = v2;

  swift_unknownObjectRelease();
  (*(v6 + 8))(v5, v7);
  if (v2)
  {
    v8 = sub_22959F430;
  }

  else
  {
    v8 = sub_22959F12C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22959F12C()
{
  v25 = v0;
  if (*(v0 + 176))
  {

    *(v0 + 224) = sub_2295A0268() & 1;
    v1 = swift_task_alloc();
    *(v0 + 192) = v1;
    *v1 = v0;
    v1[1] = sub_22959F70C;
    v2 = *(v0 + 64);

    return sub_2295A0550(v2);
  }

  else
  {
    v4 = *(v0 + 56);
    sub_229785E38();
    v5 = v4;
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCCC();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 120);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    if (v8)
    {
      v23 = *(v0 + 120);
      v12 = *(v0 + 56);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136315394;
      v24[0] = v14;
      v24[1] = 91;
      v24[2] = 0xE100000000000000;
      v15 = [v12 logIdentifier];
      v16 = sub_22A4DD5EC();
      v18 = v17;

      MEMORY[0x22AAD08C0](v16, v18);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v19 = sub_2295A3E30(91, 0xE100000000000000, v24);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A58B090, v24);
      _os_log_impl(&dword_229538000, v6, v7, "%s %s Grid ID is nil - not updating supportsCleanEnergyAutomation", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);

      v20 = (*(v10 + 8))(v23, v11);
    }

    else
    {

      v20 = (*(v10 + 8))(v9, v11);
    }

    v21 = *(v0 + 72);
    if (v21)
    {
      v21(v20);
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_22959F430()
{
  v29 = v0;
  v1 = v0[23];
  v2 = v0[7];
  sub_229785E38();
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  if (v7)
  {
    v27 = v0[14];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 136315650;
    v28[0] = v26;
    v28[1] = 91;
    v28[2] = 0xE100000000000000;
    v14 = [v11 logIdentifier];
    v25 = v10;
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A58B090, v28);
    *(v12 + 22) = 2112;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v20;
    *v13 = v20;
    _os_log_impl(&dword_229538000, v5, v6, "%s %s Failed to update supportsCleanEnergyAutomation with error: %@", v12, 0x20u);
    sub_2295A1C40(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    v21 = (*(v9 + 8))(v27, v25);
  }

  else
  {

    v21 = (*(v9 + 8))(v8, v10);
  }

  v22 = v0[9];
  if (v22)
  {
    v22(v21);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_22959F70C(char a1)
{
  v3 = *v2;
  *(v3 + 225) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_22959FF8C;
  }

  else
  {
    v4 = sub_22959F824;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22959F824()
{
  v26 = v0;
  v1 = *(v0 + 56);
  sub_229785E38();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v22 = *(v0 + 225);
    v5 = *(v0 + 224);
    v6 = *(v0 + 104);
    v23 = *(v0 + 96);
    v24 = *(v0 + 128);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136315906;
    v25[0] = v9;
    v25[1] = 91;
    v25[2] = 0xE100000000000000;
    v10 = [v7 logIdentifier];
    v11 = sub_22A4DD5EC();
    v13 = v12;

    MEMORY[0x22AAD08C0](v11, v13);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v14 = sub_2295A3E30(91, 0xE100000000000000, v25);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A58B090, v25);
    *(v8 + 22) = 1024;
    *(v8 + 24) = v5;
    *(v8 + 28) = 1024;
    *(v8 + 30) = v22;
    _os_log_impl(&dword_229538000, v3, v4, "%s %s Found currentDeviceSupportStatus: %{BOOL}d and currentMFiCertificateStatus: %{BOOL}d", v8, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);

    (*(v6 + 8))(v24, v23);
  }

  else
  {
    v15 = *(v0 + 128);
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 225);
  v19 = *(v0 + 224);
  sub_229785F6C((v0 + 16));
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v20 = swift_task_alloc();
  *(v0 + 208) = v20;
  *v20 = v0;
  v20[1] = sub_22959FAF0;

  return sub_2296C6638(v19 & v18 & 1);
}

uint64_t sub_22959FAF0()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_22959FCA8;
  }

  else
  {
    v2 = sub_22959FC04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22959FC04()
{
  v1 = v0[9];
  v2 = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1)
  {
    (v0[9])(v2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_22959FCA8()
{
  v29 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[27];
  v2 = v0[7];
  sub_229785E38();
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  if (v7)
  {
    v27 = v0[14];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 136315650;
    v28[0] = v26;
    v28[1] = 91;
    v28[2] = 0xE100000000000000;
    v14 = [v11 logIdentifier];
    v25 = v10;
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A58B090, v28);
    *(v12 + 22) = 2112;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v20;
    *v13 = v20;
    _os_log_impl(&dword_229538000, v5, v6, "%s %s Failed to update supportsCleanEnergyAutomation with error: %@", v12, 0x20u);
    sub_2295A1C40(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    v21 = (*(v9 + 8))(v27, v25);
  }

  else
  {

    v21 = (*(v9 + 8))(v8, v10);
  }

  v22 = v0[9];
  if (v22)
  {
    v22(v21);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_22959FF8C(uint64_t a1)
{
  v30 = v1;
  v2 = v1[25];
  v3 = v1[7];
  sub_229785E38();
  v4 = v3;
  v5 = v2;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[13];
  v9 = v1[14];
  v11 = v1[12];
  if (v8)
  {
    v28 = v1[14];
    v12 = v1[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136315650;
    v29[0] = v27;
    v29[1] = 91;
    v29[2] = 0xE100000000000000;
    v15 = [v12 logIdentifier];
    v26 = v11;
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v29);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A58B090, v29);
    *(v13 + 22) = 2112;
    v20 = v2;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v21;
    *v14 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Failed to update supportsCleanEnergyAutomation with error: %@", v13, 0x20u);
    sub_2295A1C40(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    v22 = (*(v10 + 8))(v28, v26);
  }

  else
  {

    v22 = (*(v10 + 8))(v9, v11);
  }

  v23 = v1[9];
  if (v23)
  {
    v23(v22);
  }

  v24 = v1[1];

  return v24();
}

uint64_t sub_2295A0268()
{
  v1 = v0;
  v2 = sub_22A4DCDAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DCC4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_msgSend(v1 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = [v1 alvaradoMatterEndpoint];
    if (v11)
    {
      v12 = v11;
      v13 = [v1 matterAdapter];
      if (v13)
      {
        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_22A576190;
        v16 = v12;
        sub_22A4DCC0C();
        sub_22A4DCC3C();
        (*(v7 + 8))(v9, v6);
        v17 = sub_22A4DE7DC();
        sub_22A4DCD2C();
        sub_22A4DCD9C();
        (*(v3 + 8))(v5, v2);
        v18 = sub_22A4DE7DC();
        v19 = [objc_opt_self() attributePathWithEndpointID:v16 clusterID:v17 attributeID:v18];

        *(v15 + 32) = v19;
        sub_2295A1CA8();
        v20 = sub_22A4DD81C();

        LOBYTE(v19) = [v14 isImplementingAttributePaths_];

        if (v19)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_2295A0550(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = swift_getObjectType();
  v3 = sub_22A4DD18C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_22A4DD16C();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_22A4DD12C();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_22A4DD07C();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v7 = sub_22A4DD13C();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  v8 = sub_22A4DD1AC();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295A0818, 0, 0);
}

uint64_t sub_2295A0818()
{
  v25 = v0;
  v1 = [objc_msgSend(*(v0 + 56) featuresDataSource)];
  swift_unknownObjectRelease();
  if (v1)
  {
    (*(*(v0 + 216) + 104))(*(v0 + 224), *MEMORY[0x277CCE640], *(v0 + 208));
    v2 = swift_task_alloc();
    *(v0 + 256) = v2;
    *v2 = v0;
    v2[1] = sub_2295A0B98;
    v3 = *(v0 + 248);
    v4 = *(v0 + 224);

    return MEMORY[0x2821211C8](v3, v4);
  }

  else
  {
    v5 = *(v0 + 64);
    sub_229785E38();
    v6 = v5;
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 176);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    if (v9)
    {
      v23 = *(v0 + 176);
      v13 = *(v0 + 64);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136315394;
      v24[0] = v15;
      v24[1] = 91;
      v24[2] = 0xE100000000000000;
      v16 = [v13 logIdentifier];
      v17 = sub_22A4DD5EC();
      v19 = v18;

      MEMORY[0x22AAD08C0](v17, v19);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v20 = sub_2295A3E30(91, 0xE100000000000000, v24);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58B0C0, v24);
      _os_log_impl(&dword_229538000, v7, v8, "%s %s Developer profile or feature flag enabled, skipping MFi certificate check", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);

      (*(v11 + 8))(v23, v12);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v21 = *(v0 + 8);

    return v21(1);
  }
}

uint64_t sub_2295A0B98()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_2295A1778;
  }

  else
  {
    v2 = sub_2295A0CAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_2295A0CAC()
{
  v115 = v0;
  v1 = [*(v0 + 64) bridge];
  if (!v1)
  {
    v1 = *(v0 + 64);
  }

  v2 = [v1 matterVendorID];
  if (!v2 || (v3 = v2, v4 = [v2 integerValue], v3, (v5 = objc_msgSend(v1, sel_matterProductID)) == 0))
  {
    v31 = *(v0 + 64);
    sub_229785E38();
    v32 = v31;
    v33 = v1;
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCEC();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 240);
    v109 = *(v0 + 248);
    v38 = *(v0 + 232);
    v39 = *(v0 + 184);
    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    if (v36)
    {
      v106 = *(v0 + 232);
      v42 = *(v0 + 64);
      v43 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v43 = 136315906;
      v112 = v103;
      v113 = 91;
      v114 = 0xE100000000000000;
      v44 = [v42 logIdentifier];
      v98 = v41;
      v100 = v39;
      v45 = sub_22A4DD5EC();
      v47 = v46;

      MEMORY[0x22AAD08C0](v45, v47);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v48 = sub_2295A3E30(91, 0xE100000000000000, &v112);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58B0C0, &v112);
      *(v43 + 22) = 2080;
      *(v0 + 40) = [v33 matterVendorID];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F10, &qword_22A5804F0);
      v49 = sub_22A4DD64C();
      v51 = sub_2295A3E30(v49, v50, &v112);

      *(v43 + 24) = v51;
      *(v43 + 32) = 2080;
      *(v0 + 48) = [v33 matterProductID];
      v52 = sub_22A4DD64C();
      v54 = sub_2295A3E30(v52, v53, &v112);

      *(v43 + 34) = v54;
      _os_log_impl(&dword_229538000, v34, v35, "%s %s Missing required context: vendorID %s or productID %s", v43, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v103, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);

      (*(v40 + 8))(v100, v98);
      (*(v37 + 8))(v109, v106);
    }

    else
    {

      (*(v40 + 8))(v39, v41);
      (*(v37 + 8))(v109, v38);
    }

LABEL_25:
    v111 = 0;
    goto LABEL_26;
  }

  v6 = v5;
  v7 = [v5 integerValue];

  v8 = [v1 firmwareVersion];
  if (!v8 || (v9 = v8, v10 = [v8 rawVersionString], v9, v11 = sub_22A4DD5EC(), v13 = v12, v10, *(v0 + 32) = 0, LOBYTE(v11) = sub_229818890(v11, v13, v0 + 32), , (v11 & 1) == 0))
  {
    v55 = *(v0 + 64);
    sub_229785E38();
    v56 = v55;
    v57 = v1;
    v58 = sub_22A4DD05C();
    v59 = sub_22A4DDCEC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 64);
      v61 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v112 = v110;
      *v61 = 136315650;
      v113 = 91;
      v114 = 0xE100000000000000;
      v62 = [v60 logIdentifier];
      v63 = sub_22A4DD5EC();
      v65 = v64;

      MEMORY[0x22AAD08C0](v63, v65);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v66 = sub_2295A3E30(91, 0xE100000000000000, &v112);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      *(v61 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58B0C0, &v112);
      *(v61 + 22) = 2080;
      v67 = [v57 firmwareVersion];
      if (v67)
      {
        v68 = v67;
        v69 = [v67 rawVersionString];

        v70 = sub_22A4DD5EC();
        v72 = v71;
      }

      else
      {
        v70 = 0;
        v72 = 0;
      }

      v89 = *(v0 + 240);
      v105 = *(v0 + 232);
      v107 = *(v0 + 248);
      v102 = *(v0 + 192);
      v91 = *(v0 + 152);
      v90 = *(v0 + 160);
      *(v0 + 16) = v70;
      *(v0 + 24) = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
      v92 = sub_22A4DD64C();
      v94 = sub_2295A3E30(v92, v93, &v112);

      *(v61 + 24) = v94;
      _os_log_impl(&dword_229538000, v58, v59, "%s %s Failed to parse firmwareVersion from rawVersionString %s", v61, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v110, -1, -1);
      MEMORY[0x22AAD4E50](v61, -1, -1);

      (*(v90 + 8))(v102, v91);
      (*(v89 + 8))(v107, v105);
    }

    else
    {
      v74 = *(v0 + 240);
      v73 = *(v0 + 248);
      v75 = *(v0 + 232);
      v76 = *(v0 + 192);
      v77 = *(v0 + 152);
      v78 = *(v0 + 160);

      (*(v78 + 8))(v76, v77);
      (*(v74 + 8))(v73, v75);
    }

    goto LABEL_25;
  }

  v14 = *(v0 + 64);
  v15 = *(v0 + 32);
  sub_229785E38();
  v16 = v14;
  v17 = sub_22A4DD05C();
  v18 = sub_22A4DDCDC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 64);
    v20 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v112 = v108;
    *v20 = 136316162;
    v113 = 91;
    v114 = 0xE100000000000000;
    v21 = [v19 logIdentifier];
    v22 = v7;
    v23 = sub_22A4DD5EC();
    v25 = v24;

    MEMORY[0x22AAD08C0](v23, v25);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v26 = sub_2295A3E30(91, 0xE100000000000000, &v112);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    result = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58B0C0, &v112);
    *(v20 + 14) = result;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v4;
    *(v20 + 32) = 2048;
    *(v20 + 34) = v22;
    *(v20 + 42) = 2048;
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v15 <= -9.22337204e18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= 9.22337204e18)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v28 = *(v0 + 200);
    v30 = *(v0 + 152);
    v29 = *(v0 + 160);
    *(v20 + 44) = v15;
    _os_log_impl(&dword_229538000, v17, v18, "%s %s Checking MFi allowlist using matterVendorID %ld, matterProductID %ld, and firmwareVersion %ld", v20, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v108, -1, -1);
    MEMORY[0x22AAD4E50](v20, -1, -1);

    result = (*(v29 + 8))(v28, v30);
  }

  else
  {
    v79 = *(v0 + 200);
    v81 = *(v0 + 152);
    v80 = *(v0 + 160);

    result = (*(v80 + 8))(v79, v81);
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v82 = *(v0 + 240);
  v83 = *(v0 + 136);
  v84 = *(v0 + 144);
  v85 = *(v0 + 120);
  v99 = *(v0 + 128);
  v86 = *(v0 + 112);
  v101 = *(v0 + 104);
  v104 = *(v0 + 232);
  v88 = *(v0 + 88);
  v87 = *(v0 + 96);
  v96 = *(v0 + 248);
  v97 = *(v0 + 80);
  *v84 = v15;
  (*(v83 + 104))(v84, *MEMORY[0x277CCE620]);
  sub_22A4DD17C();
  sub_22A4DD17C();
  v111 = sub_22A4DD14C();

  (*(v88 + 8))(v87, v97);
  (*(v86 + 8))(v85, v101);
  (*(v83 + 8))(v84, v99);
  (*(v82 + 8))(v96, v104);
LABEL_26:

  v95 = *(v0 + 8);

  return v95(v111 & 1);
}

uint64_t sub_2295A1778(uint64_t a1)
{
  v29 = v1;
  v2 = v1[33];
  v3 = v1[8];
  sub_229785E38();
  v4 = v3;
  v5 = v2;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[33];
  v11 = v1[20];
  v10 = v1[21];
  v12 = v1[19];
  if (v8)
  {
    v27 = v1[21];
    v13 = v1[8];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315650;
    v28[0] = v26;
    v28[1] = 91;
    v28[2] = 0xE100000000000000;
    v16 = [v13 logIdentifier];
    v25 = v12;
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v28);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2295A3E30(0xD00000000000002DLL, 0x800000022A58B0C0, v28);
    *(v14 + 22) = 2112;
    v21 = v9;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v22;
    *v15 = v22;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Failed to build mobile asset with error: %@", v14, 0x20u);
    sub_2295A1C40(v15);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    (*(v11 + 8))(v27, v25);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v23 = v1[1];

  return v23(0);
}

uint64_t sub_2295A1B54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229569B30;

  return sub_22959ED38(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2295A1C30(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2295A1C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2295A1CA8()
{
  result = qword_27D87CF48;
  if (!qword_27D87CF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87CF48);
  }

  return result;
}

id HomeIntelligence.ActivityLogger.init(home:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v13 = a1;
  sub_2295A220C(v12);
  _s20DistributedSchedulerCMa(0);
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v14 + 112) = MEMORY[0x277D84F98];
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_updateTask) = 0;
  v15 = OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_lock;
  _s4LockCMa();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 112) = 0;
  *(v14 + v15) = v16;
  swift_unknownObjectWeakAssign();
  v35 = v13;

  sub_22957F2F8(v12, v14 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_eventStream, &qword_27D87D5A0, &qword_22A582190);
  *(v1 + 15) = v14;
  sub_2295A2564(v9);
  v17 = OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream;
  sub_22957F2F8(v9, &v1[OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream], &unk_27D881FF0, &qword_22A57A380);
  sub_229564F88(&v1[v17], v9, &unk_27D881FF0, &qword_22A57A380);
  if (qword_27D87BA50 != -1)
  {
    swift_once();
  }

  v18 = sub_22A4DB7DC();
  __swift_project_value_buffer(v18, qword_27D8AB968);
  v19 = sub_22970DA38();
  v21 = v20;
  _s15SecureSubmitterCMa(0);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_streamTask) = 0;
  sub_229564F88(v9, v22 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_eventStream, &unk_27D881FF0, &qword_22A57A380);
  LOBYTE(v38) = 0;
  sub_22A4DC4AC();
  v23 = sub_22A4DC49C();
  sub_22953EAE4(v9, &unk_27D881FF0, &qword_22A57A380);
  v24 = v38;
  v25 = v22 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence15SecureSubmitter_backend;
  *v25 = v19;
  *(v25 + 8) = v21;
  *(v25 + 16) = 0xD00000000000001ALL;
  *(v25 + 24) = 0x800000022A58B0F0;
  *(v25 + 32) = v24;
  *(v25 + 40) = v23;
  *&v2[OBJC_IVAR___HomeIntelligenceActivityLogger_submitter] = v22;
  *&v2[OBJC_IVAR___HomeIntelligenceActivityLogger_activityObservers] = MEMORY[0x277D84F90];
  v26 = type metadata accessor for HomeIntelligence.ActivityLogger(0);
  v39.receiver = v2;
  v39.super_class = v26;
  v27 = objc_msgSendSuper2(&v39, sel_init);
  sub_229541CB0(ObjectType, &off_283CDD2C8);
  v28 = sub_22A4DD05C();
  v29 = sub_22A4DDCCC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58B110, &v38);
    _os_log_impl(&dword_229538000, v28, v29, "Initialized %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v30, -1, -1);
  }

  else
  {
  }

  (*(v36 + 8))(v6, v37);
  return v27;
}

uint64_t sub_2295A220C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5F8, &qword_22A578AC8);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D600, &qword_22A5821B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D608, &qword_22A578AD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D618, &qword_22A582120);
  (*(v1 + 104))(v3, *MEMORY[0x277D85778], v19);
  v16 = v20;
  sub_22A4DDA6C();
  (*(v5 + 16))(v16, v7, v4);
  sub_229564F88(v13, v11, &qword_27D87D608, &qword_22A578AD0);
  result = (*(v15 + 48))(v11, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
    (*(v15 + 32))(v16 + *(v18 + 28), v11, v14);
    return sub_22953EAE4(v13, &qword_27D87D608, &qword_22A578AD0);
  }

  return result;
}

uint64_t sub_2295A2564@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5E8, &qword_22A578AB8);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D0, &qword_22A57A390);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5F0, &qword_22A578AC0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5D8, &qword_22A578A98);
  (*(v1 + 104))(v3, *MEMORY[0x277D85778], v19);
  v16 = v20;
  sub_22A4DDA6C();
  (*(v5 + 16))(v16, v7, v4);
  sub_229564F88(v13, v11, &qword_27D87D5F0, &qword_22A578AC0);
  result = (*(v15 + 48))(v11, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
    (*(v15 + 32))(v16 + *(v18 + 28), v11, v14);
    return sub_22953EAE4(v13, &qword_27D87D5F0, &qword_22A578AC0);
  }

  return result;
}

Swift::Void __swiftcall HomeIntelligence.ActivityLogger.configure()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_22957F3C0(0, 0, v3, &unk_22A5789F8, v5);
}

uint64_t sub_2295A29F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_2295A2B90();
}

uint64_t sub_2295A2B90()
{
  v1[8] = v0;
  v1[9] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295A2C68, v0, 0);
}

uint64_t sub_2295A2C68()
{
  v14 = v0;
  sub_229541CB0(v0[9], &off_283CDD2C8);
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58B110, &v13);
    _os_log_impl(&dword_229538000, v1, v2, "Configuring %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v9 = *(v6 + 8);
  v9(v4, v5);
  v0[14] = v9;
  v10 = v0[8];
  v0[15] = [objc_opt_self() defaultDataSource];
  v11 = *(v10 + 120);
  v0[16] = v11;

  return MEMORY[0x2822009F8](sub_2295A2E14, v11, 0);
}

uint64_t sub_2295A2E14()
{
  v1 = *(v0 + 64);
  sub_22976B8F8();

  return MEMORY[0x2822009F8](sub_2295A2E80, v1, 0);
}

uint64_t sub_2295A2E80()
{
  v28 = v0;
  if ([*(v0 + 120) isSHADEREnabled])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    _s8ObserverCMa(0);
    swift_allocObject();
    v2 = sub_22957EE94(Strong);
    *(v0 + 136) = v2;

    v3 = sub_2295A3178;
    v4 = v2;
    v5 = 0;
LABEL_5:

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v6 = *(v0 + 64);
  v7 = OBJC_IVAR___HomeIntelligenceActivityLogger_activityObservers;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v0 + 152) = v8;
  v9 = v8[2];
  *(v0 + 160) = v9;
  if (v9)
  {
    *(v0 + 168) = OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream;
    *(v0 + 176) = 0;
    *(v0 + 184) = v8[4];
    v10 = v8[5];

    *(v0 + 192) = swift_getObjectType();
    v11 = *(v10 + 16);
    *(v0 + 200) = v11;
    *(v0 + 208) = *(v11 + 16);
    *(v0 + 216) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0x2D8B000000000000;
    *(v0 + 224) = *(v10 + 8);
    swift_unknownObjectRetain();
    v12 = sub_22A4DD8CC();
    v14 = v13;
    v3 = sub_2295A3668;
    v4 = v12;
    v5 = v14;
    goto LABEL_5;
  }

  v15 = *(v0 + 72);
  sub_229676994();
  sub_229541CB0(v15, &off_283CDD2C8);
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 112);
  v20 = *(v0 + 120);
  v21 = *(v0 + 96);
  v22 = *(v0 + 80);
  if (v18)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58B110, &v27);
    _os_log_impl(&dword_229538000, v16, v17, "Finished configuring %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v23, -1, -1);
  }

  v19(v21, v22);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2295A3178()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_2295A3214;

  return sub_2296DE3EC();
}

uint64_t sub_2295A3214()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_2295A3324, v1, 0);
}

uint64_t sub_2295A3324()
{
  v31 = v0;
  v1 = v0[8];
  v2 = OBJC_IVAR___HomeIntelligenceActivityLogger_activityObservers;
  swift_beginAccess();
  v3 = *(v1 + v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_22958A9E8(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_22958A9E8((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = v0[17];
  v8 = sub_2295A4548();
  v3[2] = v6 + 1;
  v9 = &v3[2 * v6];
  v9[4] = v7;
  v9[5] = v8;
  *(v1 + v2) = v3;
  swift_endAccess();

  v10 = v0[8];
  v11 = OBJC_IVAR___HomeIntelligenceActivityLogger_activityObservers;
  swift_beginAccess();
  v12 = *(v10 + v11);
  v0[19] = v12;
  v13 = v12[2];
  v0[20] = v13;
  if (v13)
  {
    v0[21] = OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream;
    v0[22] = 0;
    v0[23] = v12[4];
    v14 = v12[5];

    v0[24] = swift_getObjectType();
    v15 = *(v14 + 16);
    v0[25] = v15;
    v0[26] = *(v15 + 16);
    v0[27] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0x2D8B000000000000;
    v0[28] = *(v14 + 8);
    swift_unknownObjectRetain();
    v17 = sub_22A4DD8CC();

    return MEMORY[0x2822009F8](sub_2295A3668, v17, v16);
  }

  else
  {
    v18 = v0[9];
    sub_229676994();
    sub_229541CB0(v18, &off_283CDD2C8);
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCCC();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[14];
    v23 = v0[15];
    v24 = v0[12];
    v25 = v0[10];
    if (v21)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58B110, &v30);
      _os_log_impl(&dword_229538000, v19, v20, "Finished configuring %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    v22(v24, v25);

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_2295A3668()
{
  v1 = *(v0 + 64);
  (*(v0 + 208))(v1 + *(v0 + 168), *(v0 + 192), *(v0 + 200));

  return MEMORY[0x2822009F8](sub_2295A36E4, v1, 0);
}

uint64_t sub_2295A36E4()
{
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_2295A37A0;
  v2 = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[16];

  return sub_22976D530(v4, v5, v3, v2);
}

uint64_t sub_2295A37A0()
{
  v1 = *(*v0 + 64);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2295A38CC, v1, 0);
}

uint64_t sub_2295A38CC()
{
  v22 = v0;
  v1 = v0[22];
  v2 = v0[20];
  swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {

    v3 = v0[9];
    sub_229676994();
    sub_229541CB0(v3, &off_283CDD2C8);
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[12];
    v10 = v0[10];
    if (v6)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58B110, &v21);
      _os_log_impl(&dword_229538000, v4, v5, "Finished configuring %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AAD4E50](v12, -1, -1);
      MEMORY[0x22AAD4E50](v11, -1, -1);
    }

    v7(v9, v10);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[22] + 1;
    v0[22] = v15;
    v16 = v0[19] + 16 * v15;
    v0[23] = *(v16 + 32);
    v17 = *(v16 + 40);
    v0[24] = swift_getObjectType();
    v18 = *(v17 + 16);
    v0[25] = v18;
    v0[26] = *(v18 + 16);
    v0[27] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0x2D8B000000000000;
    v0[28] = *(v17 + 8);
    swift_unknownObjectRetain();
    v20 = sub_22A4DD8CC();

    return MEMORY[0x2822009F8](sub_2295A3668, v20, v19);
  }
}

void HomeIntelligence.ActivityLogger.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void HomeIntelligence.ActivityLogger.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t HomeIntelligence.ActivityLogger.deinit()
{
  MEMORY[0x22AAD4F90](v0 + 112);

  sub_22953EAE4(v0 + OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream, &unk_27D881FF0, &qword_22A57A380);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HomeIntelligence.ActivityLogger.__deallocating_deinit()
{
  MEMORY[0x22AAD4F90](v0 + 112);

  sub_22953EAE4(v0 + OBJC_IVAR___HomeIntelligenceActivityLogger_eventStream, &unk_27D881FF0, &qword_22A57A380);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for HomeIntelligence.ActivityLogger(uint64_t a1)
{
  result = qword_27D87D5C0;
  if (!qword_27D87D5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295A3D5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_22953EAE4(a2, a3, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(v10 - 8);
  (*(v13 + 16))(a2, a1, v10);
  v11 = *(v13 + 56);

  return v11(a2, 0, 1, v10);
}

unint64_t sub_2295A3E30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2295A3EFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2295404B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2295A3EFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2295A4008(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22A4DE25C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2295A4008(uint64_t a1, unint64_t a2)
{
  v3 = sub_2295A4054(a1, a2);
  sub_2295A4184(&unk_283CDA2C0);
  return v3;
}

void *sub_2295A4054(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_229616344(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22A4DE25C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22A4DD70C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_229616344(v10, 0);
        result = sub_22A4DE1DC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2295A4184(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_2295A4270(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2295A4270(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D140, &unk_22A57A950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2295A4364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2295A29F4();
}

void sub_2295A4420(uint64_t a1)
{
  sub_2295A44E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2295A44E4(uint64_t a1)
{
  if (!qword_27D87D5D0)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D5D8, &qword_22A578A98);
    v5 = _s6StreamVMa(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D87D5D0);
    }
  }
}

unint64_t sub_2295A4548()
{
  result = qword_27D87D5E0;
  if (!qword_27D87D5E0)
  {
    _s8ObserverCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D5E0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2295A45E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_2295A29F4();
}

id sub_2295A470C(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState];
  *v3 = 0;
  v3[4] = 1;
  v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isFirstCloudImportComplete] = 2;
  v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isSignedIntoiCloud] = 2;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfo] = 1;
  v4 = &v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString] = xmmword_22A578AE0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSerialNumber] = xmmword_22A578AE0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoModelIdentifier] = xmmword_22A578AE0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion] = xmmword_22A578AE0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoRegionInfo] = xmmword_22A578AE0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkVisibleDevices] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___nearbyVisibleDevices] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAppleMediaAccessory] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer] = xmmword_22A578AE0;
  v5 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryUUID;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome] = 1;
  v8 = &v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents];
  *v9 = 0;
  v9[8] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___eventRouterServerInfo] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateDescriptor] = 1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateProgress] = 1;
  v10 = &v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags];
  *v10 = 0;
  v10[8] = 1;
  v7(&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentDeviceIDSIdentifier], 1, 1, v6);
  v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isCurrentDevicePrimaryResident] = 2;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot(0);
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_2295A49BC()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState);
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState + 4) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) hasManatee];
  *v1 = result;
  *(v1 + 4) = 0;
  return result;
}

unint64_t sub_2295A4BF4()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes);
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes + 8) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) numHomes];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
    v1[8] = 0;
  }

  return result;
}

uint64_t sub_2295A4C88()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString);
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString);
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceMediaRouteIdentifier];
    if (v5)
    {
      v6 = v5;
      v4 = sub_22A4DD5EC();
      v8 = v7;
    }

    else
    {
      v4 = 0;
      v8 = 0;
    }

    v9 = *v1;
    v10 = v1[1];
    *v1 = v4;
    v1[1] = v8;

    sub_2295A70F8(v9, v10);
  }

  sub_2295A710C(v2, v3);
  return v4;
}

id sub_2295A4DA0()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D0F910]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2295A4E74(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_22A4DD5AC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2295A4F64()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion);
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion);
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = sub_2295A4DA0();
    v6 = [v5 softwareVersion];

    if (v6)
    {
      v7 = [v6 versionString];

      v4 = sub_22A4DD5EC();
      v9 = v8;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v10 = *v1;
    v11 = v1[1];
    *v1 = v4;
    v1[1] = v9;

    sub_2295A70F8(v10, v11);
  }

  sub_2295A710C(v2, v3);
  return v4;
}

uint64_t sub_2295A5088(void *a1, SEL *a2)
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3;
  if (v5 == 1)
  {
    v8 = sub_2295A4DA0();
    v9 = [v8 *a2];

    if (v9)
    {
      v6 = sub_22A4DD5EC();
      v11 = v10;
    }

    else
    {
      v6 = 0;
      v11 = 0;
    }

    v12 = *v3;
    v13 = v3[1];
    *v3 = v6;
    v3[1] = v11;

    sub_2295A70F8(v12, v13);
  }

  sub_2295A710C(v4, v5);
  return v6;
}

uint64_t sub_2295A51DC()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto;
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto);
  }

  else
  {
    v3 = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) obtainNetworkInfoProto];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D798, &qword_22A578BE8);
    v2 = sub_22A4DD49C();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2295A5338()
{
  v0 = sub_2295A51DC();
  if (*(v0 + 16) && (v1 = sub_229543DBC(0x496B726F7774654ELL, 0xEB000000006F666ELL), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);

    v4 = sub_22986AE6C(v3);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

id sub_2295A5400(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void *a5)
{
  v8 = a1;
  a3();

  sub_229562F68(0, a4, a5);
  v9 = sub_22A4DD81C();

  return v9;
}

uint64_t sub_2295A5484()
{
  v0 = sub_2295A51DC();
  if (*(v0 + 16) && (v1 = sub_229543DBC(0xD000000000000012, 0x800000022A58BC30), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);

    v4 = sub_22986AE80(v3);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

id sub_2295A5570(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
  v5 = sub_22A4DD81C();

  return v5;
}

uint64_t sub_2295A5600(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
    v5 = sub_22A4DD83C();

    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_2295A56B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
  *(a1 + *a4) = sub_22A4DD83C();
}

uint64_t sub_2295A5820()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer);
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer);
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = sub_2295A576C();
    if (v5 && (v6 = v5, v7 = [v5 manufacturer], v6, v7))
    {
      v4 = sub_22A4DD5EC();
      v9 = v8;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v10 = *v1;
    v11 = v1[1];
    *v1 = v4;
    v1[1] = v9;

    sub_2295A70F8(v10, v11);
  }

  sub_2295A710C(v2, v3);
  return v4;
}

void sub_2295A58FC(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_22A4DD5EC();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = &a1[*a4];
  v9 = *v8;
  v10 = v8[1];
  *v8 = v6;
  v8[1] = v7;
  v11 = a1;
  sub_2295A70F8(v9, v10);
}

uint64_t sub_2295A5998@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D788, &qword_22A578BE0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-v7];
  v9 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryUUID;
  swift_beginAccess();
  sub_229564F88(v1 + v9, v8, &qword_27D87D788, &qword_22A578BE0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_229564B0C(v8, a1);
  }

  sub_2295A7020(v8);
  v12 = sub_2295A576C();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 uuid];

    sub_22A4DB79C();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = sub_22A4DB7DC();
  (*(*(v17 - 8) + 56))(a1, v15, 1, v17);
  sub_229564F88(a1, v6, &unk_27D87D2A0, &unk_22A578BD0);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_2295A7088(v6, v1 + v9);
  return swift_endAccess();
}

id sub_2295A5C38()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_2295A576C();
    if (v4)
    {
      v5 = v4;
      v3 = [v4 pairingIdentity];

      if (v3)
      {
        v6 = [v3 publicPairingIdentity];

        v3 = [v6 protoPayload];
      }
    }

    else
    {
      v3 = 0;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v3;
    v8 = v3;
    sub_22954BC9C(v7);
  }

  sub_22954BCAC(v2);
  return v3;
}

id sub_2295A5DB4()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_2295A576C();
    v3 = [v4 home];

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_22954BC9C(v5);
  }

  sub_22954BCAC(v2);
  return v3;
}

id sub_2295A5ED0()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories);
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories + 8) != 1)
  {
    return *v1;
  }

  result = sub_2295A5DB4();
  if (result)
  {
    v3 = result;
    v4 = [result appleMediaAccessories];

    sub_229562F68(0, &qword_281401920, off_278666038);
    v5 = sub_22A4DD83C();

    if (v5 >> 62)
    {
      v7 = sub_22A4DE0EC();

      if (v7 < 0)
      {
        __break(1u);
      }

      result = v7;
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      result = v6;
    }
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_2295A600C()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents);
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents + 8) != 1)
  {
    return *v1;
  }

  result = sub_2295A5DB4();
  if (result)
  {
    v3 = result;
    v4 = [result residentDeviceManager];

    v5 = [v4 residentDevices];
    swift_unknownObjectRelease();
    sub_229562F68(0, &qword_281401B10, off_278666300);
    v6 = sub_22A4DD83C();

    if (v6 >> 62)
    {
      v8 = sub_22A4DE0EC();

      if (v8 < 0)
      {
        __break(1u);
      }

      result = v8;
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

      result = v7;
    }
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_2295A61B4(uint64_t *a1, SEL *a2, void (*a3)(uint64_t), void (*a4)(void *))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = [*(v4 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;
    v11 = v8;
    a3(v10);
  }

  a4(v7);
  return v8;
}

id sub_2295A640C(uint64_t *a1, SEL *a2, void (*a3)(uint64_t), void (*a4)(void *))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v11 = sub_2295A576C();
    if (v11 && (v12 = v11, v13 = [v11 *a2], v12, v13))
    {
      v8 = [v13 protoPayload];
    }

    else
    {
      v8 = 0;
    }

    v14 = *(v4 + v6);
    *(v4 + v6) = v8;
    v15 = v8;
    a3(v14);
  }

  a4(v7);
  return v8;
}

id sub_2295A656C()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags);
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags + 8) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceRawProblemFlags];
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_2295A65F8(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = a1;
  a3();

  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_22A4DB77C();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_2295A6728@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D788, &qword_22A578BE0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentDeviceIDSIdentifier;
  swift_beginAccess();
  sub_229564F88(v1 + v13, v12, &qword_27D87D788, &qword_22A578BE0);
  if ((*(v4 + 48))(v12, 1, v3) != 1)
  {
    return sub_229564B0C(v12, a1);
  }

  sub_2295A7020(v12);
  v14 = [*(v1 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceIDSIdentifier];
  if (v14)
  {
    v15 = v14;
    sub_22A4DB79C();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = sub_22A4DB7DC();
  (*(*(v18 - 8) + 56))(v6, v16, 1, v18);
  sub_229564B0C(v6, a1);
  sub_229564F88(a1, v10, &unk_27D87D2A0, &unk_22A578BD0);
  (*(v4 + 56))(v10, 0, 1, v3);
  swift_beginAccess();
  sub_2295A7088(v10, v1 + v13);
  return swift_endAccess();
}

void sub_2295A69D4(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D788, &qword_22A578BE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  if (a3)
  {
    sub_22A4DB79C();
    v14 = sub_22A4DB7DC();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_22A4DB7DC();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  sub_229564B0C(v13, v9);
  (*(v11 + 56))(v9, 0, 1, v10);
  v16 = *a4;
  swift_beginAccess();
  v17 = a1;
  sub_2295A7088(v9, &a1[v16]);
  swift_endAccess();
}

uint64_t sub_2295A6C18(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    LOBYTE(v4) = [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    *(v2 + v3) = v4;
  }

  return v4 & 1;
}

id sub_2295A6CA0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot(uint64_t a1)
{
  result = qword_27D87D768;
  if (!qword_27D87D768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2295A6EB0(uint64_t a1)
{
  sub_2295A6FBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2295A6FBC(uint64_t a1)
{
  if (!qword_27D87D778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87D2A0, &unk_22A578BD0);
    v1 = sub_22A4DDF9C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D87D778);
    }
  }
}

uint64_t sub_2295A7020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D788, &qword_22A578BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2295A7088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D788, &qword_22A578BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295A70F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2295A710C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2295A7128(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_22A4DD07C();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = sub_22A4DB7DC();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295A7250, 0, 0);
}

uint64_t sub_2295A7250()
{
  v48 = v0;
  v1 = [*(v0 + 104) home];
  if (v1 && (v2 = v1, v3 = [v1 administratorHandler], *(v0 + 168) = v3, v2, v3))
  {
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 144);
    v7 = *(v0 + 104);
    v8 = *MEMORY[0x277CD12B0];
    *(v0 + 176) = *MEMORY[0x277CD12B0];
    v9 = v8;
    v10 = [v7 messageTargetUUID];
    sub_22A4DB79C();

    v11 = objc_allocWithZone(MEMORY[0x277D0F820]);
    v12 = sub_22A4DB77C();
    v13 = [v11 initWithTarget_];
    *(v0 + 184) = v13;

    (*(v5 + 8))(v4, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v15;
    v16 = sub_22A4DB76C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v16;
    *(inited + 56) = v17;
    v18 = sub_22956AC5C(inited);
    *(v0 + 192) = v18;
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_2295A7710;

    return sub_2297983DC(v9, v13, v18);
  }

  else
  {
    v21 = objc_opt_self();
    v22 = sub_22A4DD5AC();
    v23 = [v21 hmErrorWithCode:3 description:v22 reason:0 suggestion:0 underlyingError:0];

    swift_willThrow();
    v24 = *(v0 + 104);
    sub_2295A7CB0();
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v25 = v24;
    v26 = v23;
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDD0C();

    v29 = os_log_type_enabled(v27, v28);
    v31 = *(v0 + 120);
    v30 = *(v0 + 128);
    v32 = *(v0 + 112);
    if (v29)
    {
      v33 = *(v0 + 104);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v34 = 136315394;
      v36 = [v33 logIdentifier];
      v44 = v32;
      v45 = v30;
      v37 = sub_22A4DD5EC();
      v39 = v38;

      v40 = sub_2295A3E30(v37, v39, &v47);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2112;
      v41 = v23;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v42;
      *v35 = v42;
      _os_log_impl(&dword_229538000, v27, v28, "%s Room update failed: %@", v34, 0x16u);
      sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);

      (*(v31 + 8))(v45, v44);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
    }

    swift_willThrow();

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_2295A7710()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_2295A7A34;
  }

  else
  {
    v4 = *(v2 + 184);
    v5 = *(v2 + 176);

    v3 = sub_2295A7838;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295A7838()
{
  v23 = v0;
  v1 = v0[13];
  sub_2295A7CB0();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[21];
  v7 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  if (v5)
  {
    v10 = v0[13];
    v21 = v0[17];
    v11 = swift_slowAlloc();
    v20 = v9;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = [v10 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    v17 = sub_2295A3E30(v14, v16, &v22);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_229538000, v3, v4, "%s Room update succeeded", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);

    (*(v8 + 8))(v21, v20);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_2295A7A34()
{
  v30 = v0;
  v1 = v0[23];
  v3 = v0[21];
  v2 = v0[22];

  v4 = v0[26];
  v5 = v0[13];
  sub_2295A7CB0();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v6 = v5;
  v7 = v4;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDD0C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];
  if (v10)
  {
    v14 = v0[13];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v15 = 136315394;
    v17 = [v14 logIdentifier];
    v26 = v13;
    v27 = v11;
    v18 = sub_22A4DD5EC();
    v20 = v19;

    v21 = sub_2295A3E30(v18, v20, &v29);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    v22 = v4;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;
    _os_log_impl(&dword_229538000, v8, v9, "%s Room update failed: %@", v15, 0x16u);
    sub_22953EAE4(v16, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    (*(v12 + 8))(v27, v26);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

unint64_t sub_2295A7CB0()
{
  result = qword_281401C30;
  if (!qword_281401C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401C30);
  }

  return result;
}

uint64_t sub_2295A7CFC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_22A4DD07C();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_22A4DB7DC();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295A7E28, 0, 0);
}

uint64_t sub_2295A7E28()
{
  v48 = v0;
  v1 = [*(v0 + 112) home];
  if (v1 && (v2 = v1, v3 = [v1 administratorHandler], *(v0 + 176) = v3, v2, v3))
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 152);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = *MEMORY[0x277CD0CA8];
    *(v0 + 184) = *MEMORY[0x277CD0CA8];
    v45 = v10;
    v11 = [v7 messageTargetUUID];
    sub_22A4DB79C();

    v12 = objc_allocWithZone(MEMORY[0x277D0F820]);
    v13 = sub_22A4DB77C();
    v14 = [v12 initWithTarget_];
    *(v0 + 192) = v14;

    (*(v4 + 8))(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v16;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    v17 = sub_22956AC5C(inited);
    *(v0 + 200) = v17;
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = sub_2295A82F0;

    return sub_2297983DC(v45, v14, v17);
  }

  else
  {
    v20 = objc_opt_self();
    v21 = sub_22A4DD5AC();
    v22 = [v20 hmErrorWithCode:3 description:v21 reason:0 suggestion:0 underlyingError:0];

    swift_willThrow();
    v23 = *(v0 + 112);
    sub_2295A7CB0();
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v24 = v23;
    v25 = v22;
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDD0C();

    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 128);
    v29 = *(v0 + 136);
    v31 = *(v0 + 120);
    if (v28)
    {
      v32 = *(v0 + 112);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v33 = 136315394;
      v35 = [v32 logIdentifier];
      v43 = v31;
      v44 = v29;
      v36 = sub_22A4DD5EC();
      v38 = v37;

      v39 = sub_2295A3E30(v36, v38, &v47);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2112;
      v40 = v22;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v41;
      *v34 = v41;
      _os_log_impl(&dword_229538000, v26, v27, "%s Accessory name update failed: %@", v33, 0x16u);
      sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);

      (*(v30 + 8))(v44, v43);
    }

    else
    {

      (*(v30 + 8))(v29, v31);
    }

    swift_willThrow();

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_2295A82F0()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_2295A8614;
  }

  else
  {
    v4 = *(v2 + 192);
    v5 = *(v2 + 184);

    v3 = sub_2295A8418;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295A8418()
{
  v23 = v0;
  v1 = v0[14];
  sub_2295A7CB0();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[22];
  v7 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  if (v5)
  {
    v10 = v0[14];
    v21 = v0[18];
    v11 = swift_slowAlloc();
    v20 = v9;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = [v10 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    v17 = sub_2295A3E30(v14, v16, &v22);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_229538000, v3, v4, "%s Accessory name update succeeded", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);

    (*(v8 + 8))(v21, v20);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_2295A8614()
{
  v30 = v0;
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];

  v4 = v0[27];
  v5 = v0[14];
  sub_2295A7CB0();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v6 = v5;
  v7 = v4;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDD0C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];
  if (v10)
  {
    v14 = v0[14];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v15 = 136315394;
    v17 = [v14 logIdentifier];
    v26 = v13;
    v27 = v11;
    v18 = sub_22A4DD5EC();
    v20 = v19;

    v21 = sub_2295A3E30(v18, v20, &v29);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    v22 = v4;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;
    _os_log_impl(&dword_229538000, v8, v9, "%s Accessory name update failed: %@", v15, 0x16u);
    sub_22953EAE4(v16, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    (*(v12 + 8))(v27, v26);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_2295A8970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[3] = sub_22A4DC1DC();
  v22[4] = MEMORY[0x277D17D60];
  v22[0] = a2;
  v6 = qword_281401BF8;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_22957F1C4(v22, v21);
  v7 = sub_22A4DC1BC();
  v8 = objc_allocWithZone(v7);

  v9 = sub_22A4DC1AC();
  v10 = objc_allocWithZone(sub_22A4DC19C());
  v11 = v9;
  v12 = sub_22A4DC17C();
  v13 = sub_22A4DD5AC();
  v14 = [a1 preferenceForKey_];

  v15 = [v14 numberValue];
  if (v15)
  {
    [v15 doubleValue];
    sub_22957F1C4(v22, v21);
    v16 = objc_allocWithZone(v7);

    v17 = sub_22A4DC1AC();
    sub_22A4DD5EC();
    v18 = v17;
    sub_22A4DC18C();
  }

  v19 = [objc_allocWithZone(sub_22A4DC13C()) init];
  sub_22A4DD5EC();
  sub_22A4DC18C();

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v12;
}

uint64_t sub_2295A8BD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_2295ACAA0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_2295ACA3C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_22A4DB5FC();
    v15 = v14;
    result = sub_2295798D4(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2295A8D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295A8E4C, 0, 0);
}

uint64_t sub_2295A8E4C()
{
  v65 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);

  v3 = sub_2295ACBF0(v2, v1);
  *(v0 + 200) = v3;
  v4 = v3;
  v5 = [*(v0 + 120) accessories];
  *(v0 + 208) = sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v6 = sub_22A4DD83C();

  v59 = v0;
  if (v6 >> 62)
  {
LABEL_25:
    v60 = v6 & 0xFFFFFFFFFFFFFF8;
    v62 = sub_22A4DE0EC();
  }

  else
  {
    v60 = v6 & 0xFFFFFFFFFFFFFF8;
    v62 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v62 == v7)
    {

      v20 = v4;
      v21 = swift_task_alloc();
      *(v0 + 216) = v21;
      *v21 = v0;
      v21[1] = sub_2295A94D8;

      return sub_22974AE98(v20);
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAD13F0](v7, v6);
    }

    else
    {
      if (v7 >= *(v60 + 16))
      {
        goto LABEL_24;
      }

      v9 = *(v6 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v11 = [v9 identifier];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    v15 = v4;
    v16 = [v4 identifier];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    if (v12 == v17 && v14 == v19)
    {
      break;
    }

    v8 = sub_22A4DE60C();

    ++v7;
    v4 = v15;
    if (v8)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  v24 = *(v0 + 136);
  v23 = v59[18];
  v25 = v59[15];

  sub_229541CB0(v23, &off_283CE8678);
  v26 = v24;
  v27 = v15;
  v28 = v25;
  v29 = sub_22A4DD05C();
  v30 = sub_22A4DDCEC();

  v31 = v59;
  v32 = os_log_type_enabled(v29, v30);
  v34 = v59[20];
  v33 = v59[21];
  v35 = v59[19];
  if (v32)
  {
    v63 = v59[21];
    v36 = v59[17];
    v58 = v59[15];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 136315650;
    v64[0] = v38;
    v64[1] = 91;
    v64[2] = 0xE100000000000000;
    v39 = v36;
    v61 = v35;
    v40 = [v39 description];
    v41 = sub_22A4DD5EC();
    v43 = v42;

    MEMORY[0x22AAD08C0](v41, v43);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v44 = sub_2295A3E30(91, 0xE100000000000000, v64);

    *(v37 + 4) = v44;
    *(v37 + 12) = 2080;
    v45 = [v58 shortDescription];
    v46 = sub_22A4DD5EC();
    v48 = v47;

    v49 = sub_2295A3E30(v46, v48, v64);

    *(v37 + 14) = v49;
    *(v37 + 22) = 2080;
    v50 = [v27 identifier];
    v51 = sub_22A4DD5EC();
    v53 = v52;

    v54 = sub_2295A3E30(v51, v53, v64);
    v31 = v59;

    *(v37 + 24) = v54;
    _os_log_impl(&dword_229538000, v29, v30, "%s home: %s already has an accessory with identifier: %s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v38, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);

    (*(v34 + 8))(v63, v61);
  }

  else
  {

    (*(v34 + 8))(v33, v35);
  }

  type metadata accessor for HMError(0);
  v31[13] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v56;
  *(inited + 48) = 0xD000000000000024;
  *(inited + 56) = 0x800000022A58BE40;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  swift_willThrow();

  v57 = v59[1];

  return v57();
}

uint64_t sub_2295A94D8()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_2295A9BA0;
  }

  else
  {

    v3 = sub_2295A95F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295A95F4()
{
  v1 = v0;
  v2 = [*(v0 + 120) accessories];
  v3 = sub_22A4DD83C();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_31:
    v9 = v1[25];

LABEL_32:

    v24 = v1[1];
LABEL_33:

    return v24();
  }

LABEL_30:
  v4 = sub_22A4DE0EC();
  if (!v4)
  {
    goto LABEL_31;
  }

LABEL_3:
  v5 = 0;
  v32 = v1;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AAD13F0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v1[29] = v6;
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v8 = v1[25];
    v9 = v6;
    v10 = [v6 identifier];
    v11 = sub_22A4DD5EC();
    v13 = v12;

    v14 = [v8 identifier];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {
      break;
    }

    v19 = sub_22A4DE60C();

    if (v19)
    {
      goto LABEL_17;
    }

    ++v5;
    v1 = v32;
    if (v7 == v4)
    {
      goto LABEL_31;
    }
  }

LABEL_17:

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    v1 = v32;
    v25 = v32[25];

    v9 = v25;
    goto LABEL_32;
  }

  v21 = v20;
  v1 = v32;
  v22 = v32[28];
  sub_2295A9CA4(v20);
  v23 = v32[25];
  if (v22)
  {

    v24 = v32[1];
    goto LABEL_33;
  }

  v26 = [v32[25] name];
  if (!v26)
  {
    sub_22A4DD5EC();
    v26 = sub_22A4DD5AC();
  }

  v27 = v32[16];
  [v21 renameDemoAccessory_];

  if (!v27)
  {

    goto LABEL_32;
  }

  v28 = [v32[16] uuid];
  sub_22A4DB79C();

  v29 = swift_task_alloc();
  v32[30] = v29;
  *v29 = v32;
  v29[1] = sub_2295A99B0;
  v30 = v32[24];

  return sub_2295A7128(v30);
}

uint64_t sub_2295A99B0()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v3 = sub_2295A9C1C;
  }

  else
  {
    v3 = sub_2295A9B18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295A9B18()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 128);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2295A9BA0()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2295A9C1C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 128);

  v3 = *(v0 + 8);

  return v3();
}

void sub_2295A9CA4(void *a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE8678);
  v11 = v4;
  v12 = a1;
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = v8;
    v16 = v15;
    v34 = swift_slowAlloc();
    v39 = v34;
    *v16 = 136315394;
    v37 = 91;
    v38 = 0xE100000000000000;
    v17 = v11;
    v18 = [v17 description];
    v33 = v7;
    v19 = v18;
    v20 = sub_22A4DD5EC();
    v32 = v14;
    v21 = v20;
    v36 = v2;
    v23 = v22;

    MEMORY[0x22AAD08C0](v21, v23);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v24 = sub_2295A3E30(v37, v38, &v39);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v12 shortDescription];
    v26 = sub_22A4DD5EC();
    v28 = v27;

    v29 = sub_2295A3E30(v26, v28, &v39);
    v3 = v36;

    *(v16 + 14) = v29;
    _os_log_impl(&dword_229538000, v13, v32, "%s Loading accessory: %s", v16, 0x16u);
    v30 = v34;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);

    (*(v35 + 8))(v10, v33);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  [v12 setReachable_];
  sub_2295AE8E4(0xD000000000000016, 0x800000022A58BE70, v12);
  if (!v3)
  {
    sub_2295AE8E4(0xD000000000000015, 0x800000022A58BE90, v12);
  }
}

uint64_t sub_2295A9FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[101] = v3;
  v4[100] = a3;
  v4[99] = a2;
  v4[98] = a1;
  v4[102] = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v4[103] = v5;
  v4[104] = *(v5 - 8);
  v4[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295AA0D0, 0, 0);
}

uint64_t sub_2295AA0D0()
{
  v79 = v0;
  if ([*(*(v0 + 808) + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager) isCloudKitRequiredForHH2])
  {
    v1 = *(v0 + 808);
    sub_229541CB0(*(v0 + 816), &off_283CE8678);
    v2 = v1;
    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCEC();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 840);
    v7 = *(v0 + 832);
    v8 = *(v0 + 824);
    if (v5)
    {
      v74 = *(v0 + 840);
      v9 = *(v0 + 808);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136315138;
      v76 = v11;
      v77 = 91;
      v78 = 0xE100000000000000;
      v12 = v9;
      v13 = [v12 description];
      v14 = sub_22A4DD5EC();
      v72 = v8;
      v16 = v15;

      MEMORY[0x22AAD08C0](v14, v16);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v17 = sub_2295A3E30(91, 0xE100000000000000, &v76);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_229538000, v3, v4, "%s Cannot create current accessory in non-demo or CK enabled demo mode.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AAD4E50](v11, -1, -1);
      MEMORY[0x22AAD4E50](v10, -1, -1);

      (*(v7 + 8))(v74, v72);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    type metadata accessor for HMError(0);
    *(v0 + 776) = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v28;
    *(inited + 48) = 0xD000000000000044;
    *(inited + 56) = 0x800000022A58BDF0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }

  v18 = *(v0 + 792);
  v19 = getUniqueDeviceId();
  v20 = sub_22A4DD5EC();
  v71 = v21;
  v73 = v20;

  v75 = v18;
  if (v18)
  {
    v22 = *(v0 + 792);
    v23 = [v22 name];
    v70 = sub_22A4DD5EC();
    v25 = v24;

    v26 = [v22 model];
    if (v26)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v31 = deviceName();
    v70 = sub_22A4DD5EC();
    v25 = v32;
  }

  v26 = [*(v0 + 800) modelIdentifier];
  if (!v26)
  {
    v36 = 0xED00006E776F6E6BLL;
    v34 = 0x6E55206C65646F4DLL;
    goto LABEL_15;
  }

LABEL_13:
  v33 = v26;
  v34 = sub_22A4DD5EC();
  v36 = v35;

LABEL_15:
  v37 = *(v0 + 800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_22A578C10;
  *(v38 + 32) = 0x696669746E656469;
  v39 = MEMORY[0x277D837D0];
  *(v38 + 40) = 0xEA00000000007265;
  *(v38 + 48) = v73;
  *(v38 + 56) = v71;
  *(v38 + 72) = v39;
  *(v38 + 80) = 1701667182;
  *(v38 + 88) = 0xE400000000000000;
  *(v38 + 96) = v70;
  *(v38 + 104) = v25;
  *(v38 + 120) = v39;
  *(v38 + 128) = 0x6C65646F6DLL;
  *(v38 + 136) = 0xE500000000000000;
  *(v38 + 144) = v34;
  *(v38 + 152) = v36;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x6572617774666F73;
  *(v38 + 184) = 0xEF6E6F6973726556;
  v40 = [v37 softwareVersion];
  v41 = [v40 versionString];

  v42 = sub_22A4DD5EC();
  v44 = v43;

  *(v38 + 192) = v42;
  *(v38 + 200) = v44;
  *(v38 + 216) = v39;
  *(v38 + 224) = 0x75646F7250464D48;
  *(v38 + 232) = 0xEF7373616C437463;
  v45 = [v37 productClass];
  v46 = MEMORY[0x277D83B88];
  *(v38 + 240) = v45;
  *(v38 + 264) = v46;
  *(v38 + 272) = 0x75646F7250464D48;
  *(v38 + 280) = 0xEF726F6C6F437463;
  *(v38 + 288) = [v37 productColor];
  *(v38 + 312) = v46;
  *(v38 + 320) = 0xD000000000000018;
  *(v38 + 328) = 0x800000022A58BD90;
  v47 = [objc_opt_self() appleMediaAccessoryVariant];
  v48 = MEMORY[0x277D83E88];
  *(v38 + 336) = v47;
  *(v38 + 360) = v48;
  *(v38 + 368) = 0xD000000000000012;
  *(v38 + 376) = 0x800000022A58BDB0;
  *(v38 + 408) = MEMORY[0x277D839B0];
  *(v38 + 384) = 1;
  v49 = sub_22956AD8C(v38);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDA0, &unk_22A57A930);
  swift_arrayDestroy();
  if (v75)
  {
    v50 = *(v0 + 792);
    v51 = [v50 capabilities];
    if (v51)
    {
      v52 = v51;
      *(v0 + 728) = swift_getObjectType();
      *(v0 + 704) = v52;
      sub_229543C58(v0 + 704, v0 + 736);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v49;
      sub_229543C6C(v0 + 736, 0xD000000000000015, 0x800000022A58BDD0, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();
    }

    v54 = [v50 serialNumber];
    if (v54)
    {
      v55 = v54;
      v56 = sub_22A4DD5EC();
      v58 = v57;

      *(v0 + 664) = MEMORY[0x277D837D0];
      *(v0 + 640) = v56;
      *(v0 + 648) = v58;
      sub_229543C58(v0 + 640, v0 + 672);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v49;
      sub_229543C6C(v0 + 672, 0x754E6C6169726573, 0xEC0000007265626DLL, v59);
    }

    v60 = [v50 softwareVersion];
    if (v60)
    {
      v61 = v60;
      *(v0 + 600) = sub_229562F68(0, &qword_27D87D7B8, 0x277D0F8F8);
      *(v0 + 576) = v61;
      sub_229543C58(v0 + 576, v0 + 608);
      v62 = v61;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v49;
      sub_229543C6C(v0 + 608, 0x6572617774666F73, 0xEF6E6F6973726556, v63);
    }

    v64 = [v50 device];
    if (v64)
    {
      v65 = v64;
      *(v0 + 536) = sub_229562F68(0, &qword_27D87CEF0, off_278666100);
      *(v0 + 512) = v65;
      sub_229543C58(v0 + 512, v0 + 544);
      v66 = v65;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v49;
      sub_229543C6C(v0 + 544, 0x656369766564, 0xE600000000000000, v67);
    }
  }

  *(v0 + 848) = v49;
  v68 = swift_task_alloc();
  *(v0 + 856) = v68;
  *v68 = v0;
  v68[1] = sub_2295AA9F4;
  v69 = *(v0 + 784);

  return sub_2295A8D20(v49, v69, 0);
}

uint64_t sub_2295AA9F4()
{
  *(*v1 + 864) = v0;

  if (v0)
  {
    v2 = sub_2295AAB74;
  }

  else
  {

    v2 = sub_2295AAB10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2295AAB10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295AAB74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295AABE0(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = a1;
    sub_229541CB0(a5, &off_283CE8678);
    v16 = a1;
    v17 = a2;
    v18 = a3;
    v19 = a4;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = v23;
      *v22 = 136315906;
      v48 = 91;
      v49 = 0xE100000000000000;
      v50 = v23;
      v24 = v17;
      v45 = v20;
      v25 = v24;
      v26 = [v24 description];
      v27 = sub_22A4DD5EC();
      v46 = v10;
      v28 = v27;
      v44 = v21;
      v30 = v29;

      MEMORY[0x22AAD08C0](v28, v30);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(v48, v49, &v50);

      *(v22 + 4) = v31;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v18;
      v32 = v43;
      *v43 = v18;
      *(v22 + 22) = 2080;
      v33 = v18;
      v34 = [v19 shortDescription];
      v35 = sub_22A4DD5EC();
      v37 = v36;

      v38 = sub_2295A3E30(v35, v37, &v50);

      *(v22 + 24) = v38;
      *(v22 + 32) = 2112;
      v39 = a1;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 34) = v40;
      v32[1] = v40;
      v41 = v45;
      _os_log_impl(&dword_229538000, v45, v44, "%s Failed to forward event: %@ for %s with %@", v22, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v32, -1, -1);
      v42 = v47;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v42, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);

      return (*(v11 + 8))(v14, v46);
    }

    else
    {

      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

void sub_2295AAF60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_2295AAFCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_229543DBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_229893848(v16, a4 & 1);
      v11 = sub_229543DBC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22A4DE67C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_229897F10();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_2295AB144(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2296DBEC0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = _s13PresenceStateOMa(0);
      return sub_2295AEF30(a1, v21 + *(*(v22 - 8) + 72) * v14, _s13PresenceStateOMa);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_229897F38();
    goto LABEL_7;
  }

  sub_229893870(v17, a3 & 1);
  v24 = sub_2296DBEC0(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_2295AC630(v14, v11, a1, v20, _s13PresenceStateOMa, _s13PresenceStateOMa);
}

uint64_t sub_2295AB340(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2296DBEC0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = _s28DefaultRoomPresencePublisherC8ObserverVMa(0);
      return sub_2295AEF30(a1, v21 + *(*(v22 - 8) + 72) * v14, _s28DefaultRoomPresencePublisherC8ObserverVMa);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_229898264();
    goto LABEL_7;
  }

  sub_229893D10(v17, a3 & 1);
  v24 = sub_2296DBEC0(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_2295AC630(v14, v11, a1, v20, _s28DefaultRoomPresencePublisherC8ObserverVMa, _s28DefaultRoomPresencePublisherC8ObserverVMa);
}

uint64_t sub_2295AB53C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_229543DBC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_229898834();
      goto LABEL_7;
    }

    sub_2298945D0(v15, a4 & 1);
    v26 = sub_229543DBC(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22A4DBB4C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2295AC724(v12, a2, a3, a1, v18);
}

uint64_t sub_2295AB6BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2296DBEC0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_229898C38();
      goto LABEL_7;
    }

    sub_229894C14(v17, a3 & 1);
    v22 = sub_2296DBEC0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2295AC8D8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

id sub_2295AB888(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2296DBF94(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_229894FF0(v13, a3 & 1);
      v8 = sub_2296DBF94(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_229562F68(0, &qword_281401770, 0x277CCABB0);
        result = sub_22A4DE67C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_229898EB8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t sub_2295ABA04(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_2296DBFE4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_229895260(v13, a3 & 1);
      result = sub_2296DBFE4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        sub_229562F68(0, &qword_281401C20, off_278666020);
        result = sub_22A4DE67C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_22989901C();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + result) = a1 & 1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + result) = a1 & 1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_2295ABB70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_229543DBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_229895634(v16, a4 & 1);
      v11 = sub_229543DBC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22A4DE67C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2298992A0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_2295ABCEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_2296DBEC0(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_229899410();
      goto LABEL_9;
    }

    sub_2298958DC(v18, a4 & 1);
    v21 = sub_2296DBEC0(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_2295AC7D4(v15, v12, v23, a2, v24);
  }
}

id sub_2295ABEC8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2296DC034(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2298960AC(v13, a3 & 1);
      v8 = sub_2296DC034(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_229562F68(0, &unk_281401910, off_278666388);
        result = sub_22A4DE67C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_229899924();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void sub_2295AC044(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2296DBEC0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_229899A88();
      goto LABEL_7;
    }

    sub_22989631C(v17, a3 & 1);
    v23 = sub_2296DBEC0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_2295AC8D8(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_22A4DE67C();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

void sub_2295AC210(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2296DC084(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2298966F8(v14, a3 & 1);
      v9 = sub_2296DC084(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for HMDHomeActivityStateContributorType(0);
        sub_22A4DE67C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_229899CFC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

unint64_t sub_2295AC358(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_2296DC0F0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_229896C10(v13, a3 & 1);
      result = sub_2296DC0F0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        result = sub_22A4DE67C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_229899FB4();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + result) = a1 & 1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + result) = a1 & 1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_2295AC4C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_229543DBC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for HomePassData(0);
      return sub_2295AEF30(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for HomePassData);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22989A5C8();
    goto LABEL_7;
  }

  sub_229897980(v15, a4 & 1);
  v22 = sub_229543DBC(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2295AC990(v12, a2, a3, a1, v18);
}

uint64_t sub_2295AC630(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_22A4DB7DC();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_2295AEF98(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_2295AC724(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_22A4DBB4C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_2295AC7D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_22A4DB7DC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_2295AC894(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_2295AC8D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22A4DB7DC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2295AC990(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for HomePassData(0);
  result = sub_2295AEF98(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for HomePassData);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_2295ACA3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2295ACAA0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_2295ACB54(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22A4DD6DC();

    return sub_22A4DD79C();
  }

  return result;
}

void (**sub_2295ACBF0(uint64_t a1, char *a2))(char *, void, uint64_t, uint64_t)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v205 - v6;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v235 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v236 = &v205 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v205 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v205 - v18;
  MEMORY[0x28223BE20](v17);
  v237 = &v205 - v20;
  if (*(a1 + 16))
  {
    v21 = sub_229543DBC(0x75646F7250464D48, 0xEF7373616C437463);
    if (v22)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v21, &v244);
      if ((swift_dynamicCast() & 1) != 0 && (qword_283CDA388 == v238 || qword_283CDA390 == v238))
      {
        v232 = v238;
        if (*(a1 + 16) && (v26 = sub_229543DBC(1684632949, 0xE400000000000000), (v27 & 1) != 0))
        {
          sub_2295404B0(*(a1 + 56) + 32 * v26, &v244);
          v28 = swift_dynamicCast();
          v29 = v9;
          v9[7](v7, v28 ^ 1u, 1, v8);
          if ((v9[6])(v7, 1, v8) != 1)
          {
            (v9[4])(v237, v7, v8);
            goto LABEL_15;
          }
        }

        else
        {
          v29 = v9;
          v9[7](v7, 1, 1, v8);
        }

        sub_22A4DB7CC();
        if ((v29[6])(v7, 1, v8) != 1)
        {
          sub_22953EAE4(v7, &unk_27D87D2A0, &unk_22A578BD0);
        }

LABEL_15:
        if (qword_27D87B8B8 != -1)
        {
          swift_once();
        }

        v207 = qword_27D8AB650;
        if (qword_27D87B8C0 != -1)
        {
          swift_once();
        }

        v224 = qword_27D8AB658;
        if (*(a1 + 16) && (v30 = sub_229543DBC(0x6769666E6F63, 0xE600000000000000), (v31 & 1) != 0))
        {
          sub_2295404B0(*(a1 + 56) + 32 * v30, &v244);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
          if (swift_dynamicCast())
          {
            v32 = v238;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }

        v220 = sub_22A4DB76C();
        v222 = v33;
        v34 = *(a1 + 16);
        v231 = a2;
        if (v34 && (v35 = sub_229543DBC(0x696669746E656469, 0xEA00000000007265), (v36 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v35, &v244), (swift_dynamicCast() & 1) != 0))
        {
          v221 = v238;
          v223 = v239;
        }

        else
        {
          v221 = sub_22A4DB76C();
          v223 = v37;
        }

        v233 = v8;
        v219 = v2;
        if (v32)
        {
          v38 = sub_22A4DD5EC();
          if (*(v32 + 16))
          {
            v40 = sub_229543DBC(v38, v39);
            v42 = v41;

            if (v42)
            {
              sub_2295404B0(*(v32 + 56) + 32 * v40, &v244);

              if (swift_dynamicCast() & 1) != 0 && (v238)
              {

                v221 = sub_22A4DB76C();
                v223 = v43;
              }

              goto LABEL_38;
            }
          }

          else
          {
          }
        }

LABEL_38:
        v44 = objc_allocWithZone(_HMDLocalDeviceHandle);
        v45 = sub_22A4DB77C();
        v46 = [v44 initWithDeviceIdentifier_];

        v47 = [objc_allocWithZone(HMDDeviceHandle) initWithInternal_];
        v48 = *(a1 + 16);
        v49 = v231;
        v234 = v9;
        if (v48 && (v50 = sub_229543DBC(0xD000000000000012, 0x800000022A58BDB0), (v51 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v50, &v244), swift_dynamicCast()) && (v238 & 1) != 0)
        {
          v52 = getMediaRouteIdentifier();
          if (v52)
          {
            v53 = v52;

            v221 = sub_22A4DD5EC();
            v223 = v54;
          }

          v55 = [objc_opt_self() localDeviceIDSIdentifier];
          if (v55)
          {
            v56 = v55;

            sub_22A4DB79C();

            v220 = sub_22A4DB76C();
            v222 = v57;
            v58 = objc_allocWithZone(_HMDLocalDeviceHandle);
            v59 = sub_22A4DB77C();
            v60 = [v58 initWithDeviceIdentifier_];

            v61 = [objc_allocWithZone(HMDDeviceHandle) initWithInternal_];
            v49 = v231;
            v62 = v233;
            (v9[1])(v19);
            v217 = 1;
            v47 = v61;
            goto LABEL_48;
          }

          v217 = 1;
        }

        else
        {
          v217 = 0;
        }

        v62 = v233;
LABEL_48:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_22A576190;
        *(v63 + 32) = v47;
        v246 = v63;
        v64 = *&v49[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager];
        v218 = v47;
        v65 = [v64 accountHandleForOwner];
        v66 = v65;
        if (!v65)
        {
          v230 = 0;
          v244 = 0;
          v245 = 0xE000000000000000;
          sub_22A4DE1FC();

          v244 = 0x6573755F6F6D6564;
          v245 = 0xEA00000000005F72;
          sub_2295AEE34(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v146 = sub_22A4DE5CC();
          MEMORY[0x22AAD08C0](v146);

          MEMORY[0x22AAD08C0](0x64756F6C6369405FLL, 0xEC0000006D6F632ELL);
          v147 = objc_allocWithZone(MEMORY[0x277D18A48]);
          v148 = sub_22A4DD5AC();

          v149 = [v147 initWithUnprefixedURI_];

          if (!v149)
          {
            v72 = 0;
            v77 = v63;
            v78 = v62;
            goto LABEL_52;
          }

          v150 = [objc_allocWithZone(HMDAccountHandle) initWithURI_];

          if (!v150)
          {
            v77 = v63;
            v72 = 0;
            v78 = v62;
            goto LABEL_52;
          }

          v66 = v150;
          v65 = v230;
        }

        v67 = v65;
        v68 = sub_22959082C();
        v70 = v69;
        v71 = objc_allocWithZone(_HMDGlobalDeviceHandle);
        sub_22956C148(v68, v70);
        v72 = v66;
        v73 = sub_22A4DB61C();
        v74 = [v71 initWithPushToken:v73 accountHandle:v72];

        sub_2295798D4(v68, v70);
        v75 = [objc_allocWithZone(HMDDeviceHandle) initWithInternal_];

        v76 = v75;
        MEMORY[0x22AAD09E0]();
        if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
        }

        sub_22A4DD87C();

        sub_2295798D4(v68, v70);
        v77 = v246;
        v78 = v233;
LABEL_52:
        if (!*(a1 + 16) || (v79 = sub_229543DBC(0x6572617774666F73, 0xEF6E6F6973726556), (v80 & 1) == 0) || (sub_2295404B0(*(a1 + 56) + 32 * v79, &v244), (swift_dynamicCast() & 1) == 0) || (v81 = objc_allocWithZone(MEMORY[0x277D0F8F8]), v82 = sub_22A4DD5AC(), , v83 = [v81 initWithString_], v82, (v84 = v83) == 0))
        {
          if (qword_27D87B8B0 != -1)
          {
            swift_once();
          }

          v84 = qword_27D8AB648;
        }

        v85 = *(a1 + 16);
        v86 = v84;
        if (v85 && (v87 = sub_229543DBC(0x75646F7250464D48, 0xEF726F6C6F437463), (v88 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v87, &v244), (swift_dynamicCast() & 1) != 0))
        {
          v89 = v238;
        }

        else
        {
          v89 = 1;
        }

        v228 = v89;
        if (*(a1 + 16) && (v90 = sub_229543DBC(0x6C65646F6DLL, 0xE500000000000000), (v91 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v90, &v244), (swift_dynamicCast() & 1) != 0))
        {
          v92 = v239;
          v229 = v238;
        }

        else
        {
          v92 = 0xEB00000000333231;
          v93 = 0x2C5654656C707041;
          v94 = 0xE900000000000033;
          v95 = 0x32312C616964654DLL;
          if (v232 == 6)
          {
            v95 = 0x2C646F50656D6F48;
            v94 = 0xEB00000000333231;
          }

          if (v232 != 4)
          {
            v93 = v95;
          }

          v229 = v93;
          if (v232 != 4)
          {
            v92 = v94;
          }
        }

        v230 = v92;
        if (*(a1 + 16) && (v96 = sub_229543DBC(1701667182, 0xE400000000000000), (v97 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v96, &v244), (swift_dynamicCast() & 1) != 0))
        {
          v98 = v239;
          v225 = v238;
        }

        else
        {
          v98 = 0xE700000000000000;
          v99 = 0x5654656C707041;
          v100 = 0xE500000000000000;
          v101 = 0x616964654DLL;
          if (v232 == 6)
          {
            v101 = 0x646F50656D6F48;
            v100 = 0xE700000000000000;
          }

          if (v232 != 4)
          {
            v99 = v101;
          }

          v225 = v99;
          if (v232 != 4)
          {
            v98 = v100;
          }
        }

        v226 = v98;
        v102 = *(a1 + 16);
        v210 = v77;
        if (v102 && (v103 = sub_229543DBC(0x754E6C6169726573, 0xEC0000007265626DLL), (v104 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v103, &v244), (swift_dynamicCast() & 1) != 0))
        {
          v212 = v238;
          v213 = v239;
        }

        else
        {
          sub_22A4DB7CC();
          v105 = sub_22A4DB76C();
          v107 = v106;
          (v234[1])(v16, v78);
          v108 = sub_2295ACB54(10, v105, v107);
          v110 = v109;
          v112 = v111;
          v114 = v113;

          v115 = v112;
          v78 = v233;
          v212 = MEMORY[0x22AAD0860](v108, v110, v115, v114);
          v213 = v116;
        }

        v117 = objc_allocWithZone(MEMORY[0x277D0F8E8]);
        v118 = v86;
        v119 = sub_22A4DD5AC();
        v120 = [v117 initWithPlatform:4 class:v232 variant:0 softwareVersion:v118 color:v228 modelIdentifier:v119];

        v121 = objc_opt_self();
        v208 = v120;
        v209 = [v121 categoryForProductInfo_];
        if (*(a1 + 16) && (v122 = sub_229543DBC(0x696C696261706163, 0xEC00000073656974), (v123 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v122, &v244), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7E0, &qword_22A578C38), (swift_dynamicCast() & 1) != 0))
        {
          v124 = v238;
          LODWORD(v238) = 0;
          WORD2(v238) = 0;
          if (v124)
          {
            [v124 supportsAnnounce];
            sub_2295AEE7C(&v238);
            [v124 supportsMusicAlarm];
            sub_2295AEE8C(&v238);
            [v124 supportsDoorbellChime];
            sub_2295AEE9C(&v238);
            [v124 supportsJustSiri];
            sub_2295AEEAC(&v238);
            [v124 supportsMediaActions];
LABEL_96:
            sub_2295AEEBC(&v238);
            LODWORD(v241) = 0;
            BYTE4(v241) = 0;
            v125 = (v238 | (WORD2(v238) << 32));
            v126 = sub_2295AEECC(v238);
            sub_2295AEED4(v126, &v241);
            v227 = v125;
            v127 = sub_2295AEEEC(v125);
            sub_2295AEEF4(v127, &v241);
            v128 = *(a1 + 16);
            v214 = v124;
            if (v128 && (v129 = sub_229543DBC(0x656369766564, 0xE600000000000000), (v130 & 1) != 0) && (sub_2295404B0(*(a1 + 56) + 32 * v129, &v244), sub_229562F68(0, &qword_27D87CEF0, off_278666100), (swift_dynamicCast() & 1) != 0))
            {
              v131 = v240;
              v232 = [v240 capabilities];
              if (v232)
              {
                goto LABEL_103;
              }
            }

            else
            {
              v131 = 0;
            }

            sub_22A4DB7CC();
            v132 = objc_allocWithZone(HMDDeviceCapabilitiesModel);
            v133 = sub_22A4DB77C();
            v134 = [v132 initWithUUID_];

            (v234[1])(v16, v78);
            sub_229562F68(0, &qword_281401770, 0x277CCABB0);
            v135 = sub_22A4DDEAC();
            [v134 setResidentCapable_];

            v136 = sub_22A4DE7DC();
            [v134 setSupportsAnnounce_];

            v137 = v227;
            sub_2295AEF0C(v227);
            v138 = sub_22A4DE7DC();
            [v134 setSupportsMusicAlarm_];

            sub_2295AEF14(v137);
            v139 = sub_22A4DE7DC();
            [v134 setSupportsDoorbellChime_];

            v232 = [objc_allocWithZone(HMDDeviceCapabilities) initWithObjectModel_];
LABEL_103:
            v205 = a1;
            v216 = v72;
            if (v131)
            {
              v140 = v232;
              v141 = [v131 identifier];
              sub_22A4DB79C();

              v142 = v236;
              v143 = v131;
              (v234[4])();
              v144 = [v131 name];
              if (v144)
              {
                v145 = v144;
                sub_22A4DD5EC();

                v143 = v131;
                goto LABEL_111;
              }
            }

            else
            {
              v142 = v236;
              (v234[2])();
              v151 = v232;
              v143 = 0;
            }

LABEL_111:
            v215 = v118;
            v211 = v143;
            v152 = [v143 version];
            if (!v152)
            {
              v152 = v207;
            }

            v153 = objc_allocWithZone(HMDDevice);
            v154 = v208;
            v155 = sub_22A4DB77C();
            sub_229562F68(0, &qword_27D87D7D8, off_278666108);
            v156 = sub_22A4DD81C();

            v157 = sub_22A4DD5AC();

            v158 = v232;
            v207 = [v153 initWithIdentifier:v155 handles:v156 name:v157 productInfo:v154 version:v152 capabilities:v232];
            v208 = v154;

            v159 = v234[1];
            ++v234;
            v210 = v159;
            v159(v142, v233);
            v160 = objc_allocWithZone(MEMORY[0x277CD1678]);
            v161 = sub_22A4DB77C();
            v162 = [v160 initWithTagUUID:v161 capabilities:v227];

            v163 = [v162 pbCapabilities];
            v164 = [v163 data];

            if (v164)
            {
              v236 = sub_22A4DB62C();
              v166 = v165;
            }

            else
            {
              v236 = 0;
              v166 = 0xF000000000000000;
            }

            v167 = v241;
            v168 = BYTE4(v241);
            v169 = objc_allocWithZone(MEMORY[0x277CD1D60]);
            v170 = sub_22A4DB77C();
            v171 = [v169 initWithTagUUID:v170 capabilities:v167 | (v168 << 32)];

            v172 = [v171 pbCapabilities];
            v173 = [v172 data];

            if (v173)
            {
              v174 = sub_22A4DB62C();
              v176 = v175;
            }

            else
            {
              v174 = 0;
              v176 = 0xF000000000000000;
            }

            v177 = v236;
            v178 = *&v231[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_messageDispatcher];
            v227 = v209;
            v179 = v224;
            v209 = v178;
            sub_2295AEF1C(v177, v166);
            v224 = v174;
            v235 = v176;
            sub_2295AEF1C(v174, v176);
            v180 = sub_22A4DD5AC();

            v181 = sub_22A4DD5AC();

            v182 = sub_22A4DD5AC();

            v206 = v166;
            if (v166 >> 60 == 15)
            {
              v183 = 0;
            }

            else
            {
              v184 = sub_22A4DB61C();
              v185 = v166;
              v183 = v184;
              sub_229590D18(v177, v185);
            }

            v186 = v235;
            if (v235 >> 60 == 15)
            {
              v187 = 0;
            }

            else
            {
              v188 = v224;
              v187 = sub_22A4DB61C();
              sub_229590D18(v188, v186);
            }

            v189 = objc_allocWithZone(HMDUnassociatedAppleMediaAccessory);
            v190 = v209;
            v191 = v227;
            v192 = [v189 initWithIdentifier:v180 name:v181 category:v227 requiredPairingCapabilities:15 minimumPairingSoftware:v179 productColor:v228 idsIdentifierString:v182 rawAccessoryCapabilities:v183 rawResidentCapabilities:v187 messageDispatcher:v209];

            v9 = v192;
            v193 = sub_22A4DB77C();
            [v9 setUUID_];

            v194 = sub_22A4DD5AC();

            [v9 setSerialNumber_];

            v195 = sub_22A4DD5AC();

            [v9 setModel_];

            v196 = v215;
            [v9 setSoftwareVersion_];

            v197 = v207;
            [v9 setDevice_];
            [v9 setVariant_];

            if (v217)
            {
              [v9 setVariant_];
            }

            v198 = v205;
            v199 = v231;
            v200 = v233;
            v201 = v206;
            if (*(v205 + 16) && (v202 = sub_229543DBC(0xD000000000000018, 0x800000022A58BD90), (v203 & 1) != 0))
            {
              sub_2295404B0(*(v198 + 56) + 32 * v202, &v244);

              if (swift_dynamicCast())
              {
                [v9 setVariant_];

                sub_229590D18(v224, v235);
                sub_229590D18(v236, v201);

                swift_unknownObjectRelease();
LABEL_133:
                v210(v237, v200);
                return v9;
              }

              swift_unknownObjectRelease();
              v204 = &v243;
            }

            else
            {

              swift_unknownObjectRelease();

              v204 = &v242;
            }

            sub_229590D18(v236, v201);
            sub_229590D18(v224, v235);

            goto LABEL_133;
          }
        }

        else
        {
          LODWORD(v238) = 0;
          WORD2(v238) = 0;
        }

        sub_2295AEE7C(&v238);
        sub_2295AEE8C(&v238);
        sub_2295AEE9C(&v238);
        sub_2295AEEAC(&v238);
        v124 = 0;
        goto LABEL_96;
      }
    }
  }

  type metadata accessor for HMError(0);
  v238 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v24;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x800000022A58BEF0;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  swift_willThrow();

  return v9;
}

void sub_2295AE8E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a3 home];
  if (v13)
  {
    v47 = ObjectType;
    v54 = v5;
    v49 = v4;
    v50 = a2;
    v14 = a3;
    v15 = v13;
    v16 = [v14 uuid];
    sub_22A4DB79C();

    v52 = sub_22A4DB76C();
    v53 = v17;
    v18 = *(v10 + 8);
    v18(v12, v9);
    v19 = objc_allocWithZone(MEMORY[0x277CD1868]);
    v20 = sub_22A4DD5AC();
    v51 = [v19 initWithKeyPath:v20 readOnly:0 BOOLValue:1];

    v48 = v15;
    v21 = [v15 uuid];
    sub_22A4DB79C();

    v22 = sub_22A4DB77C();
    v18(v12, v9);
    v46 = v14;
    v23 = [v14 uuid];
    sub_22A4DB79C();

    v24 = sub_22A4DB77C();
    v18(v12, v9);
    v25 = sub_22A4DD5AC();
    v26 = MEMORY[0x22AAD2730](v22, v24, v25);

    if (!v26)
    {
      sub_22A4DD5EC();
      v26 = sub_22A4DD5AC();
    }

    v27 = v51;
    sub_22A4DB66C();
    v29 = v28;
    v30 = objc_allocWithZone(MEMORY[0x277CD1AD8]);
    v31 = sub_22A4DD5AC();
    v32 = [v30 initWithSetting:v27 eventSource:v31 eventTimestamp:v29];

    v33 = v54;
    v34 = [*&v54[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] eventForwarder];
    if (v34)
    {
      v35 = v34;

      v36 = swift_allocObject();
      v36[2] = v33;
      v36[3] = v32;
      v37 = v46;
      v38 = v47;
      v36[4] = v46;
      v36[5] = v38;
      aBlock[4] = sub_2295AEE28;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2295AAF60;
      aBlock[3] = &block_descriptor_2;
      v39 = _Block_copy(aBlock);
      v40 = v33;
      v41 = v32;
      v42 = v37;

      [v35 forwardEvent:v41 topic:v26 completion:v39];
      _Block_release(v39);

      swift_unknownObjectRelease();
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    type metadata accessor for HMError(0);
    v56 = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v44;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x800000022A58BEB0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
  }
}

uint64_t sub_2295AEE34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2295AEF1C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22956C148(result, a2);
  }

  return result;
}

uint64_t sub_2295AEF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295AEF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295AF000(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = 0;
    v22 = *(v3 + 16);
    v20 = v4 - 1;
    v8 = MEMORY[0x277D84F90];
    v23 = result;
    do
    {
      v21 = v8;
      v9 = (v3 + 40 + 16 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v12 = *(v9 - 1);
        v11 = *v9;
        v7 = v10 + 1;
        if ((*v9 & 0x2000000000000000) != 0)
        {
          v13 = HIBYTE(*v9) & 0xF;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (!v13 || (v12 == v6 ? (v14 = v11 == a2) : (v14 = 0), v14 || (sub_22A4DE60C() & 1) != 0))
        {
          v12 = 0;
          v11 = 0xE000000000000000;
          v8 = v21;
          goto LABEL_18;
        }

        MEMORY[0x22AAD08C0](46, 0xE100000000000000);
        if (sub_22A4DD75C())
        {
          break;
        }

        v9 += 2;
        ++v10;
        v6 = v23;
        if (v22 == v7)
        {
          v8 = v21;
          goto LABEL_29;
        }
      }

      v18 = sub_22A4DD6CC();

      v8 = v21;
      if (v18)
      {
        if ((v18 & 0x8000000000000000) == 0)
        {
          result = sub_22A4DD6DC();
          if ((v19 & 1) == 0)
          {
            sub_22A4DD69C();

            goto LABEL_18;
          }

LABEL_35:
          __break(1u);
          return result;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_18:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22958A53C(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_22958A53C((v15 > 1), v16 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v11;
      v6 = v23;
    }

    while (v20 != v10);
LABEL_29:
    if (!*(v8 + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v8 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_30:
    type metadata accessor for KeyPaths.KeyPathsSet();
    result = swift_allocObject();
    *(result + 16) = v8;
    return result;
  }

LABEL_32:

  return 0;
}

uint64_t sub_2295AF2AC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v13 = *(v3 + 16);
  if (!v13)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  for (i = (v3 + 40); ; i += 2)
  {
    if (v6 >= *(v3 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v8 = *(i - 1);
    if ((*i & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(*i) & 0xFLL;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      return 1;
    }

    v10 = v8 == v5 && *i == a2;
    if (v10 || (sub_22A4DE60C() & 1) != 0)
    {
      return 1;
    }

    MEMORY[0x22AAD08C0](46, 0xE100000000000000);
    if (sub_22A4DD75C())
    {
      break;
    }

    ++v6;

    if (v13 == v6)
    {
      return 0;
    }
  }

  v11 = sub_22A4DD6CC();

  if (!v11)
  {

    goto LABEL_21;
  }

  if (v11 < 0)
  {
    goto LABEL_25;
  }

  result = sub_22A4DD6DC();
  if ((v12 & 1) == 0)
  {
    sub_22A4DD69C();

LABEL_21:

    return 1;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2295AF470()
{

  return swift_deallocClassInstance();
}

id KeyPaths.__allocating_init(for:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A576190;
  type metadata accessor for KeyPaths.KeyPathsSet();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v4 + 32) = v5;
  *&v3[OBJC_IVAR___HMDKeyPaths_keyPathsStack] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id KeyPaths.init(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22A576190;
  type metadata accessor for KeyPaths.KeyPathsSet();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v3 + 32) = v4;
  *&v1[OBJC_IVAR___HMDKeyPaths_keyPathsStack] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for KeyPaths();
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Bool __swiftcall KeyPaths.push(key:)(Swift::String key)
{
  v3 = v1;
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v6 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = sub_22A4DE0EC();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_15:

  MEMORY[0x22AAD13F0](v2, v7);

LABEL_8:
  countAndFlagsBits = sub_2295AF000(countAndFlagsBits, object);

  if (countAndFlagsBits)
  {
    swift_beginAccess();

    MEMORY[0x22AAD09E0](v9);
    if (*((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_10:
      sub_22A4DD87C();
      swift_endAccess();

      return countAndFlagsBits != 0;
    }

LABEL_18:
    sub_22A4DD85C();
    goto LABEL_10;
  }

  return countAndFlagsBits != 0;
}

Swift::Bool __swiftcall KeyPaths.popKey()()
{
  v1 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_22A4DE0EC();
    if (v3 < 2)
    {
      goto LABEL_10;
    }

LABEL_3:
    swift_beginAccess();
    v4 = *(v0 + v1);
    if (v4 >> 62)
    {
      if (sub_22A4DE0EC())
      {
LABEL_5:
        if (sub_2295AFF30())
        {
LABEL_9:

          swift_endAccess();
          goto LABEL_10;
        }

        v5 = *(v0 + v1);
        if (!(v5 >> 62))
        {
          v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v7 = __OFSUB__(v6, 1);
          v8 = v6 - 1;
          if (!v7)
          {
LABEL_8:
            sub_2295AFDD4(v8);
            goto LABEL_9;
          }

LABEL_17:
          __break(1u);
          return v8;
        }

LABEL_15:
        v9 = sub_22A4DE0EC();
        v7 = __OFSUB__(v9, 1);
        v8 = v9 - 1;
        if (!v7)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_15;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 >= 2)
  {
    goto LABEL_3;
  }

LABEL_10:
  LOBYTE(v8) = v3 > 1;
  return v8;
}

Swift::Bool __swiftcall KeyPaths.contains(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v5 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = sub_22A4DE0EC();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  v2 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_12:

    MEMORY[0x22AAD13F0](v2, v6);

    goto LABEL_8;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __break(1u);
    return v7;
  }

LABEL_8:
  v8 = sub_2295AF2AC(countAndFlagsBits, object);

  LOBYTE(v7) = v8 & 1;
  return v7;
}

id KeyPaths.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KeyPaths.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyPaths();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2295AFD4C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2295AFE64(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_2295AFDD4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2295AFECC(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2295AFECC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22A4DE0EC();
  }

  return sub_22A4DE22C();
}

unint64_t sub_2295AFF30()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_2295AFECC(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
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

uint64_t sub_2295AFFA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2295AFFFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2295B0060(void *a1)
{
  v2 = v1;
  v38 = a1;
  v4 = sub_22A4DD07C();
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  sub_2295B0734();
  v14 = [a1 identifier];
  sub_22A4DB79C();

  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  (*(v8 + 32))(v16 + v15, v11, v7);

  v17 = v38;
  sub_22A4DDC1C();
  (*(v8 + 8))(v13, v7);
  v18 = *(v40 + 16);
  v39 = v4;
  v18(v6, v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v4);
  swift_retain_n();
  v19 = v17;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCCC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 136315650;
    v24 = sub_22A4DB76C();
    v26 = sub_2295A3E30(v24, v25, &v41);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v27 = [v19 shortDescription];
    v28 = sub_22A4DD5EC();
    v30 = v29;

    v31 = sub_2295A3E30(v28, v30, &v41);

    *(v22 + 14) = v31;
    *(v22 + 22) = 2048;
    v32 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount);

    *(v22 + 24) = v32;

    _os_log_impl(&dword_229538000, v20, v21, "[%s] Sending %s, retried: %lu", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v23, -1, -1);
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  else
  {
  }

  (*(v40 + 8))(v6, v39);
  v33 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageInFlight);
  *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageInFlight) = v19;
  v34 = v19;

  v35 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount);
  v36 = __CFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount) = v37;
    [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageDispatcher) sendMessage:v34 completionHandler:0];
  }
}

uint64_t sub_2295B04B8()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_homeUUID;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_timerProvider));
  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_retryTimer, &qword_27D87EA00, &qword_22A579B80);

  v3 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger;
  v4 = sub_22A4DD07C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DefaultUserActivityReportMessenger(uint64_t a1)
{
  result = qword_27D87D830;
  if (!qword_27D87D830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295B0624(uint64_t a1)
{
  result = sub_22A4DB7DC();
  if (v2 <= 0x3F)
  {
    result = sub_22A4DD07C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2295B0734()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_retryTimer;
  swift_beginAccess();
  sub_2295B23D0(v0 + v5, &v18);
  if (!*(&v19 + 1))
  {
    return sub_22953EAE4(&v18, &qword_27D87EA00, &qword_22A579B80);
  }

  sub_229557188(&v18, v21);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v1);

  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    *&v18 = v10;
    *v9 = 136315138;
    v11 = sub_22A4DB76C();
    v13 = sub_2295A3E30(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Canceling retry of last message", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    (*(v2 + 8))(v4, v17);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  sub_22A4DBC8C();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  swift_beginAccess();
  sub_22953ED1C(&v18, v0 + v5);
  swift_endAccess();
  v15 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry);
  *(v0 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry) = 0;

  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_2295B09F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_22A4DD9DC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a4, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a3;
  (*(v8 + 32))(&v17[v15], v10, v7);
  *&v17[v16] = a1;
  *&v17[(v16 + 15) & 0xFFFFFFFFFFFFFFF8] = v21;

  v18 = a1;

  sub_22957F3C0(0, 0, v13, &unk_22A578D80, v17);
}

uint64_t sub_2295B0C18(void *a1, uint64_t a2)
{
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_2295B09F4(a1, a2, v6, v7);
}

uint64_t sub_2295B0C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_2295B0CC0, 0, 0);
}

uint64_t sub_2295B0CC0()
{
  v1 = v0[5];
  if (v1)
  {
    sub_2296F7AE8(v1);
  }

  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2295B0D68;
  v4 = v0[3];
  v3 = v0[4];

  return sub_2295B1CE8(v4, v3);
}

uint64_t sub_2295B0D68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2295B0E78(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B0F14, 0, 0);
}

uint64_t sub_2295B0F14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_22A4DD9DC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_22957F3C0(0, 0, v2, &unk_22A578DB8, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2295B1014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_2295B10A4();
}

uint64_t sub_2295B10A4()
{
  v1[18] = v0;
  v2 = sub_22A4DD07C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B1170, v0, 0);
}

uint64_t sub_2295B1170()
{
  v40 = v0;
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry;
  v3 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_retryTimer;
    swift_beginAccess();
    sub_2295B23D0(v1 + v4, v0 + 16);
    if (*(v0 + 40))
    {
      v5 = *(v0 + 176);
      v6 = *(v0 + 152);
      v7 = *(v0 + 160);
      v8 = *(v0 + 144);
      v9 = v3;
      sub_22953EAE4(v0 + 16, &qword_27D87EA00, &qword_22A579B80);
      (*(v7 + 16))(v5, v8 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v6);

      v10 = sub_22A4DD05C();
      v11 = sub_22A4DDCCC();

      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 176);
      v15 = *(v0 + 152);
      v14 = *(v0 + 160);
      if (v12)
      {
        v38 = *(v0 + 152);
        v16 = swift_slowAlloc();
        v36 = v11;
        v17 = swift_slowAlloc();
        v39 = v17;
        *v16 = 136315138;
        v18 = sub_22A4DB76C();
        v37 = v13;
        v20 = v9;
        v21 = sub_2295A3E30(v18, v19, &v39);

        *(v16 + 4) = v21;
        v9 = v20;
        _os_log_impl(&dword_229538000, v10, v36, "[%s] Retry timer fired", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x22AAD4E50](v17, -1, -1);
        MEMORY[0x22AAD4E50](v16, -1, -1);

        (*(v14 + 8))(v37, v38);
      }

      else
      {

        (*(v14 + 8))(v13, v15);
      }

      *(v0 + 56) = 0u;
      *(v0 + 72) = 0u;
      *(v0 + 88) = 0;
      swift_beginAccess();
      sub_22953ED1C(v0 + 56, v1 + v4);
      swift_endAccess();
      v33 = *(v1 + v2);
      *(v1 + v2) = 0;

      sub_2295B0060(v9);
      goto LABEL_11;
    }

    sub_22953EAE4(v0 + 16, &qword_27D87EA00, &qword_22A579B80);
    v1 = *(v0 + 144);
  }

  (*(*(v0 + 160) + 16))(*(v0 + 168), v1 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, *(v0 + 152));

  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDCFC();

  v24 = os_log_type_enabled(v22, v23);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 152);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 136315138;
    v30 = sub_22A4DB76C();
    v32 = sub_2295A3E30(v30, v31, &v39);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_229538000, v22, v23, "[%s] Retry timer fired but the timer is no longer set", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v28, -1, -1);
  }

  (*(v26 + 8))(v25, v27);
LABEL_11:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2295B155C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_229569B30;

  return sub_2295B0C9C(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_2295B16A0(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v51[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v51[-v12];
  if (*(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount) >= 3uLL)
  {
    (*(v5 + 16))(&v51[-v12], v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v4);

    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCCC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v57[0] = v29;
      *v28 = 136315138;
      v30 = sub_22A4DB76C();
      v32 = sub_2295A3E30(v30, v31, v57);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_229538000, v26, v27, "[%s] Not retrying because we have exhausted the retry count.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    return (*(v5 + 8))(v13, v4);
  }

  else
  {
    v14 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_retryTimer;
    swift_beginAccess();
    sub_2295B23D0(v2 + v14, v57);
    v15 = OpaqueTypeMetadata2;
    sub_22953EAE4(v57, &qword_27D87EA00, &qword_22A579B80);
    v16 = *(v5 + 16);
    v17 = v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger;
    if (v15)
    {
      v16(v11, v17, v4);

      v18 = sub_22A4DD05C();
      v19 = sub_22A4DDCFC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v57[0] = v21;
        *v20 = 136315138;
        v22 = sub_22A4DB76C();
        v24 = sub_2295A3E30(v22, v23, v57);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_229538000, v18, v19, "[%s] Unexpectedly starting a retry timer while there is already one in progress.", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x22AAD4E50](v21, -1, -1);
        MEMORY[0x22AAD4E50](v20, -1, -1);
      }

      return (*(v5 + 8))(v11, v4);
    }

    else
    {
      v16(v8, v17, v4);

      v33 = a1;
      v34 = sub_22A4DD05C();
      v35 = sub_22A4DDCCC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v57[0] = v54;
        *v36 = 136315650;
        v53 = v34;
        v37 = sub_22A4DB76C();
        v39 = sub_2295A3E30(v37, v38, v57);

        *(v36 + 4) = v39;
        *(v36 + 12) = 2080;
        v40 = [v33 shortDescription];
        v41 = sub_22A4DD5EC();
        v52 = v35;
        v42 = v41;
        v44 = v43;

        v45 = sub_2295A3E30(v42, v44, v57);

        *(v36 + 14) = v45;
        *(v36 + 22) = 2048;
        *(v36 + 24) = 0x4072C00000000000;
        v34 = v53;
        _os_log_impl(&dword_229538000, v53, v52, "[%s] Scheduling to send %s after %f seconds.", v36, 0x20u);
        v46 = v54;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v46, -1, -1);
        MEMORY[0x22AAD4E50](v36, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      v47 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry);
      *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageToRetry) = v33;
      v48 = v33;

      v49 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_timerProvider + 24);
      v50 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_timerProvider + 32);
      __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_timerProvider), v49);
      sub_22A4DE88C();
      v57[0] = v49;
      v57[1] = v50;
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      v55 = v49;
      v56 = v50;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v57);

      sub_22A4DBB0C();

      swift_beginAccess();
      sub_22953ED1C(v57, v2 + v14);
      return swift_endAccess();
    }
  }
}

uint64_t sub_2295B1CE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22A4DD07C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_22A4DB7DC();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B1E14, v2, 0);
}

uint64_t sub_2295B1E14()
{
  v65 = v0;
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageInFlight;
  v3 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_messageInFlight);
  if (v3)
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = v3;
    v8 = [v7 identifier];
    sub_22A4DB79C();

    sub_2295B2378();
    v9 = sub_22A4DD58C();
    (*(v5 + 8))(v4, v6);
    if (v9)
    {
      v10 = v0[3];
      v11 = *(v1 + v2);
      *(v1 + v2) = 0;

      v12 = v0[5];
      v13 = v0[6];
      v14 = v0[4];
      if (v10)
      {
        v15 = v0[3];
        (*(v13 + 16))(v0[8], v14 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v12);
        swift_retain_n();
        v16 = v7;
        v17 = v15;
        v18 = sub_22A4DD05C();
        v19 = sub_22A4DDCCC();

        v20 = os_log_type_enabled(v18, v19);
        v21 = v0[8];
        v23 = v0[5];
        v22 = v0[6];
        v24 = v0[4];
        if (v20)
        {
          v62 = v0[5];
          v25 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v64 = v59;
          *v25 = 136315906;
          v60 = v21;
          v26 = sub_22A4DB76C();
          v28 = sub_2295A3E30(v26, v27, &v64);

          *(v25 + 4) = v28;
          *(v25 + 12) = 2080;
          v29 = [v16 shortDescription];
          v30 = sub_22A4DD5EC();
          v57 = v19;
          v31 = v15;
          v33 = v32;

          v34 = sub_2295A3E30(v30, v33, &v64);
          v15 = v31;

          *(v25 + 14) = v34;
          *(v25 + 22) = 2112;
          v35 = v31;
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v25 + 24) = v36;
          *v58 = v36;
          *(v25 + 32) = 2048;
          v37 = *(v24 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount);

          *(v25 + 34) = v37;

          _os_log_impl(&dword_229538000, v18, v57, "[%s] Failed to send %s with error: %@. Sent: %lu times.", v25, 0x2Au);
          sub_22953EAE4(v58, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v58, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v59, -1, -1);
          MEMORY[0x22AAD4E50](v25, -1, -1);

          (*(v22 + 8))(v60, v62);
        }

        else
        {

          (*(v22 + 8))(v21, v23);
        }

        sub_2295B16A0(v16);
      }

      else
      {
        (*(v13 + 16))(v0[7], v14 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_logger, v12);
        v38 = v7;

        v39 = sub_22A4DD05C();
        v40 = sub_22A4DDCCC();

        v41 = os_log_type_enabled(v39, v40);
        v43 = v0[6];
        v42 = v0[7];
        v44 = v0[5];
        if (v41)
        {
          v63 = v0[7];
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v64 = v46;
          *v45 = 136315394;
          v47 = sub_22A4DB76C();
          v49 = sub_2295A3E30(v47, v48, &v64);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          v50 = [v38 shortDescription];
          v51 = sub_22A4DD5EC();
          v61 = v44;
          v53 = v52;

          v54 = sub_2295A3E30(v51, v53, &v64);

          *(v45 + 14) = v54;
          _os_log_impl(&dword_229538000, v39, v40, "[%s] Successfully sent %s", v45, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v46, -1, -1);
          MEMORY[0x22AAD4E50](v45, -1, -1);

          (*(v43 + 8))(v63, v61);
        }

        else
        {

          (*(v43 + 8))(v42, v44);
        }
      }
    }

    else
    {
    }
  }

  v55 = v0[1];

  return v55();
}

unint64_t sub_2295B2378()
{
  result = qword_281403870;
  if (!qword_281403870)
  {
    sub_22A4DB7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281403870);
  }

  return result;
}

uint64_t sub_2295B23D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA00, &qword_22A579B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295B2440()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229586D38;

  return sub_2295B0E78(v0);
}

uint64_t sub_2295B24D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2295B1014();
}

uint64_t HMDAccessorySetupMetricDispatcher.releaseDiscoveryAssertion(assertionHandle:)(uint64_t a1)
{
  type metadata accessor for AssertionHandle();
  swift_unknownObjectRetain();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *(v2 + 16);
      v5 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

      os_unfair_lock_lock((v5 + 24));
      sub_2295B2DD4((v5 + 16), &v8);
      os_unfair_lock_unlock((v5 + 24));
      v6 = v8;

      sub_229714B54(v4);
      if (v6)
      {
        sub_2297145E4();
      }

      swift_unknownObjectRelease();
    }

    *(v2 + 32) = 0;
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

id sub_2295B295C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(char *, uint64_t), char *a6, void *a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, char a16)
{
  v52 = a8;
  v50 = a4;
  v51 = a7;
  v53 = a5;
  v49 = a3;
  v18 = sub_22A4DB7DC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 16);
  v54 = v23;
  v22(v21, a15);
  sub_229801D68();
  v25 = v24;
  v27 = v26;
  v28 = sub_229711EE0();
  v29 = *(a1 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);

  os_unfair_lock_lock((v29 + 24));
  v30 = *(v29 + 16);

  os_unfair_lock_unlock((v29 + 24));

  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_4;
  }

  v32 = sub_229714F44(*(v30 + 16), 0);
  v33 = *(sub_22A4DBB4C() - 8);
  v34 = sub_22971528C(v58, &v32[(*(v33 + 80) + 32) & ~*(v33 + 80)], v31, v30);
  sub_22953EE84(*&v58[0]);
  if (v34 != v31)
  {
    __break(1u);
LABEL_4:

    v32 = MEMORY[0x277D84F90];
  }

  sub_2297D06C8(v49, v50, 0, v51, v52, v25, v27, v53, v58, a6, v28, v32, a9, a10, v53, a6, a11, a12, a13, a14, a16 & 1);

  v57[3] = &type metadata for Metric.Setup.NetworkInfo;
  v57[4] = &off_283CE5B70;
  v35 = swift_allocObject();
  v57[0] = v35;
  v36 = v58[13];
  *(v35 + 208) = v58[12];
  *(v35 + 224) = v36;
  *(v35 + 240) = v59;
  v37 = v58[9];
  *(v35 + 144) = v58[8];
  *(v35 + 160) = v37;
  v38 = v58[11];
  *(v35 + 176) = v58[10];
  *(v35 + 192) = v38;
  v39 = v58[5];
  *(v35 + 80) = v58[4];
  *(v35 + 96) = v39;
  v40 = v58[7];
  *(v35 + 112) = v58[6];
  *(v35 + 128) = v40;
  v41 = v58[1];
  *(v35 + 16) = v58[0];
  *(v35 + 32) = v41;
  v42 = v58[3];
  *(v35 + 48) = v58[2];
  *(v35 + 64) = v42;
  v43 = type metadata accessor for Metric.LogEventAdaptor();
  v44 = objc_allocWithZone(v43);
  v45 = &v44[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_name];
  *v45 = 0xD000000000000035;
  *(v45 + 1) = 0x800000022A58C0C0;
  sub_22957F1C4(v57, &v44[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event]);
  *&v44[OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_coreAnalyticsEventOptions] = 2;
  sub_2295B2DF0(v58, &v56);
  v46 = sub_22A4DB77C();
  v55.receiver = v44;
  v55.super_class = v43;
  v47 = objc_msgSendSuper2(&v55, sel_initWithHomeUUID_, v46);

  sub_2295B2E4C(v58);
  (*(v19 + 8))(v21, v54);
  __swift_destroy_boxed_opaque_existential_0(v57);
  return v47;
}

uint64_t _sSo33HMDAccessorySetupMetricDispatcherC13HomeKitDaemonE24obtainDiscoveryAssertionyXlyF_0()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2297B3744();

  if (v1)
  {
    type metadata accessor for AssertionHandle();
    v2 = swift_allocObject();
    sub_2297B9494(v1, 0xD000000000000014, 0x800000022A58C0A0, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D840, &qword_22A578DC8);
  v3 = sub_22A4DDF8C();

  return v3;
}

uint64_t sub_2295B3164(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DB7DC();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_22A4DD07C();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2297A46D4();
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v46 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v45 = v2;
    v43 = v20;
    v51 = v20;
    *v19 = 136315138;
    v21 = sub_2295B8B7C(ObjectType);
    v44 = v6;
    v23 = ObjectType;
    v24 = a1;
    v25 = v12;
    v26 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = sub_2295A3E30(v21, v22, &v51);
    v6 = v44;

    *(v19 + 4) = v27;
    v8 = v26;
    v12 = v25;
    a1 = v24;
    ObjectType = v23;
    _os_log_impl(&dword_229538000, v16, v17, "%s Received request to clear local activity history", v19, 0xCu);
    v28 = v43;
    __swift_destroy_boxed_opaque_existential_0(v43);
    v2 = v45;
    MEMORY[0x22AAD4E50](v28, -1, -1);
    v29 = v19;
    v5 = v46;
    MEMORY[0x22AAD4E50](v29, -1, -1);
  }

  (*(v47 + 8))(v15, v48);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = ObjectType;
  v31 = sub_22A4DD9DC();
  (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
  v32 = a1;
  v33 = [v2 spiClientIdentifier];
  v34 = v49;
  sub_22A4DB79C();

  v36 = v50 + 32;
  v35 = *(v50 + 32);
  v35(v8, v34, v5);
  v37 = (*(v36 + 48) + 32) & ~*(v36 + 48);
  v38 = v37 + v6;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  v35((v39 + v37), v8, v5);
  *(v39 + v38) = 0;
  v40 = v39 + (v38 & 0xFFFFFFFFFFFFFFF8);
  *(v40 + 8) = sub_2295B980C;
  *(v40 + 16) = v30;
  sub_22957F3C0(0, 0, v12, &unk_22A578F38, v39);
}

void sub_2295B357C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  if (a1)
  {
    v13 = a1;
    sub_2297A46D4();
    v14 = a1;
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCEC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v6;
      v19 = v18;
      v20 = swift_slowAlloc();
      v38 = a2;
      v39 = v20;
      v21 = v20;
      *v17 = 136315394;
      v22 = sub_2295B8B7C(a3);
      v24 = sub_2295A3E30(v22, v23, &v39);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2112;
      v25 = a1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v26;
      *v19 = v26;
      _os_log_impl(&dword_229538000, v15, v16, "%s Failed to clear local activity history: %@", v17, 0x16u);
      sub_22953EAE4(v19, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v27 = v21;
      a2 = v38;
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);

      (*(v7 + 8))(v12, v37);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    v35 = sub_22A4DB3DC();
    [a2 respondWithError_];
  }

  else
  {
    sub_2297A46D4();
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDD0C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = sub_2295B8B7C(a3);
      v34 = sub_2295A3E30(v32, v33, &v39);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_229538000, v28, v29, "%s Successfully cleared local activity history", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    [a2 respondWithSuccess];
  }
}

void sub_2295B3974()
{
  v1 = [v0 hindsightCloudShareManager];
  [v1 synchronize];

  v2 = [v0 swiftExtensions];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = *&v3[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager];
  swift_unknownObjectRelease();
  [v4 synchronize];
}

void sub_2295B3A98()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v65 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v60 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v60 - v10;
  v12 = sub_22A4DB7DC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v1 currentUser];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 accountHandle];
    if (v18)
    {
      v19 = v18;
      v63 = v17;
      v64 = v3;
      v20 = [v1 uuid];
      sub_22A4DB79C();

      v21 = objc_allocWithZone(HMDRemoteAccountMessageDestination);
      v22 = v19;
      v23 = sub_22A4DB77C();
      v24 = ObjectType;
      v25 = [v21 initWithTarget:v23 handle:v22 multicast:1];

      (*(v13 + 8))(v15, v12);
      v26 = objc_opt_self();
      v27 = @"HMDHome.ActivityHistory.Clear.Broadcast";
      sub_22956AC5C(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v28 = sub_22A4DD47C();

      v62 = v25;
      v29 = v25;
      v30 = v24;
      v31 = [v26 secureMessageWithName:v27 qualityOfService:25 destination:v29 messagePayload:v28];

      sub_2297A46D4();
      v32 = sub_22A4DD05C();
      v33 = sub_22A4DDCCC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v61 = v22;
        v36 = v35;
        aBlock[0] = v35;
        *v34 = 136315138;
        v37 = sub_2295B8B7C(v24);
        v39 = sub_2295A3E30(v37, v38, aBlock);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_229538000, v32, v33, "%s Broadcasting to clear activity history on other devices", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v40 = v36;
        v22 = v61;
        MEMORY[0x22AAD4E50](v40, -1, -1);
        MEMORY[0x22AAD4E50](v34, -1, -1);
      }

      (*(v65 + 8))(v11, v64);
      v41 = [v1 msgDispatcher];
      v42 = v63;
      if (v41)
      {
        v43 = v41;
        v44 = swift_allocObject();
        *(v44 + 16) = v30;
        aBlock[4] = sub_2295B9804;
        aBlock[5] = v44;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2295AAF60;
        aBlock[3] = &block_descriptor_35;
        v45 = _Block_copy(aBlock);

        [v43 sendMessage:v31 completionHandler:v45];
        _Block_release(v45);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_2297A46D4();
      v53 = sub_22A4DD05C();
      v54 = sub_22A4DDCEC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        aBlock[0] = v56;
        *v55 = 136315138;
        v57 = sub_2295B8B7C(ObjectType);
        v59 = sub_2295A3E30(v57, v58, aBlock);

        *(v55 + 4) = v59;
        _os_log_impl(&dword_229538000, v53, v54, "%s Cannot broadcast to clear activity history on other devices, no account handle for current user", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x22AAD4E50](v56, -1, -1);
        MEMORY[0x22AAD4E50](v55, -1, -1);
      }

      (*(v65 + 8))(v9, v3);
    }
  }

  else
  {
    sub_2297A46D4();
    v46 = sub_22A4DD05C();
    v47 = sub_22A4DDCEC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v48 = 136315138;
      v50 = sub_2295B8B7C(ObjectType);
      v52 = sub_2295A3E30(v50, v51, aBlock);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_229538000, v46, v47, "%s Cannot broadcast to clear activity history on other devices, no current user", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v48, -1, -1);
    }

    (*(v65 + 8))(v6, v3);
  }
}

uint64_t sub_2295B4150(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  if (a1)
  {
    v11 = a1;
    sub_2297A46D4();
    v12 = a1;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v4;
      v17 = v16;
      v18 = swift_slowAlloc();
      v35 = v18;
      *v15 = 136315394;
      v19 = sub_2295B8B7C(a2);
      v21 = sub_2295A3E30(v19, v20, &v35);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2112;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&dword_229538000, v13, v14, "%s Failed to send clear broadcast to other devices: %@", v15, 0x16u);
      sub_22953EAE4(v17, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);

      return (*(v5 + 8))(v10, v34);
    }

    v32 = *(v5 + 8);
    v33 = v10;
  }

  else
  {
    sub_2297A46D4();
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDD0C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      v29 = sub_2295B8B7C(a2);
      v31 = sub_2295A3E30(v29, v30, &v35);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_229538000, v25, v26, "%s Successfully sent clear broadcast to other devices", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    v32 = *(v5 + 8);
    v33 = v8;
  }

  return v32(v33, v4);
}

uint64_t sub_2295B44E4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = [objc_msgSend(v0 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v12)
  {
    if ([v0 didOnboardEventLog])
    {
      sub_2297A46D4();
      v13 = sub_22A4DD05C();
      v14 = sub_22A4DDCDC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v32 = v16;
        *v15 = 136315138;
        v17 = sub_2295B8B7C(ObjectType);
        v19 = sub_2295A3E30(v17, v18, &v32);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_229538000, v13, v14, "%s Already onboarded", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x22AAD4E50](v16, -1, -1);
        MEMORY[0x22AAD4E50](v15, -1, -1);
      }

      return (*(v3 + 8))(v8, v2);
    }

    else
    {
      v28 = sub_22A4DD9DC();
      (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v0;
      v30 = v0;
      sub_22957F3C0(0, 0, v11, &unk_22A578EF0, v29);
    }
  }

  else
  {
    sub_2297A46D4();
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCCC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      v25 = sub_2295B8B7C(ObjectType);
      v27 = sub_2295A3E30(v25, v26, &v32);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_229538000, v21, v22, "%s Skipping onboarding check, feature flag disabled", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2295B48C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_2295B4954();
}

uint64_t sub_2295B4954()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_2295B4A4C;

  return sub_2295B6B8C();
}

uint64_t sub_2295B4A4C(char a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_2295B4B4C, 0, 0);
}

uint64_t sub_2295B4B4C(uint64_t a1)
{
  v20 = v1;
  if (*(v1 + 80) == 1)
  {
    sub_2297A46D4();
    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDD0C();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v1 + 40);
    v5 = *(v1 + 48);
    v7 = *(v1 + 32);
    if (v4)
    {
      v8 = *(v1 + 24);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      v11 = sub_2295B8B7C(v8);
      v13 = sub_2295A3E30(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_229538000, v2, v3, "%s Fixing onboarding flag", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    (*(v6 + 8))(v5, v7);
    v14 = swift_task_alloc();
    *(v1 + 64) = v14;
    *(v14 + 16) = *(v1 + 16);
    v15 = swift_task_alloc();
    *(v1 + 72) = v15;
    *v15 = v1;
    v15[1] = sub_2295B4DA8;
    v16 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v15, 0, 0, 0xD00000000000002CLL, 0x800000022A58C1D0, sub_2295B957C, v14, v16);
  }

  else
  {

    v17 = *(v1 + 8);

    return v17();
  }
}

uint64_t sub_2295B4DA8()
{

  return MEMORY[0x2822009F8](sub_2295B4EC0, 0, 0);
}

uint64_t sub_2295B4EC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295B4F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DB74C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_22A4DD07C();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B509C, 0, 0);
}

uint64_t sub_2295B509C(uint64_t a1)
{
  sub_2297A46D4();
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Writing fake event into newly created cloud zone", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v1[11];
  v6 = v1[7];
  v7 = v1[8];

  v8 = *(v7 + 8);
  v1[12] = v8;
  v8(v5, v6);
  sub_22A4DB71C();
  v9 = swift_task_alloc();
  v1[13] = v9;
  *v9 = v1;
  v9[1] = sub_2295B51FC;
  v10 = v1[6];
  v11 = v1[2];

  return MEMORY[0x282171BF8](v10, v11, 1);
}

uint64_t sub_2295B51FC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2295B5490;
  }

  else
  {
    v5 = sub_2295B536C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2295B536C(uint64_t a1)
{
  sub_2297A46D4();
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Successfully wrote fake event", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  (*(v1 + 96))(*(v1 + 80), *(v1 + 56));

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_2295B5490(uint64_t a1)
{
  v2 = *(v1 + 112);
  sub_2297A46D4();
  v3 = v2;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "Failed to write fake event: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  (*(v1 + 96))(*(v1 + 72), *(v1 + 56));

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_2295B587C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = swift_task_alloc();
  v7[4] = v10;
  *v10 = v7;
  v10[1] = sub_2295B5920;

  return MEMORY[0x282171BE8](a4, a5);
}

uint64_t sub_2295B5920()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2295B5A9C;
  }

  else
  {
    v2 = sub_2295B5A34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2295B5A34()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295B5A9C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2295B5B28()
{
  *(v1 + 72) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0);
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B5BC4, 0, 0);
}

uint64_t sub_2295B5BC4()
{
  v1 = v0[9];
  v2 = [objc_allocWithZone(type metadata accessor for ResidentDiscoveryListener(0)) init];
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D918, &unk_22A578F20);
  *v4 = v0;
  v4[1] = sub_2295B5CEC;

  return MEMORY[0x2822008A0](v0 + 8, 0, 0, 0xD000000000000019, 0x800000022A58C2C0, sub_2295B978C, v3, v5);
}

uint64_t sub_2295B5CEC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2295B5F00;
  }

  else
  {

    v2 = sub_2295B5E08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2295B5E08()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR____TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener_continuation;
  swift_beginAccess();
  sub_2295B9794(v1, v2 + v5);
  swift_endAccess();

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_2295B5F00()
{
  v1 = v0[11];
  v2 = v0[10];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener_continuation;
  swift_beginAccess();
  sub_2295B9794(v2, v1 + v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2295B5FF8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8E0, &unk_22A578EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener_continuation;
  swift_beginAccess();
  sub_2295B9794(v8, a2 + v11);
  swift_endAccess();
  [objc_msgSend(a3 residentDeviceManager)];
  return swift_unknownObjectRelease();
}

uint64_t sub_2295B6168()
{
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B6258, 0, 0);
}

uint64_t sub_2295B6258()
{
  v1 = [objc_msgSend(*(v0 + 24) residentDeviceManager)];
  swift_unknownObjectRelease();
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2(1);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_2295B6384;

    return sub_2295B5B28();
  }
}

uint64_t sub_2295B6384(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_2295B67E0;
  }

  else
  {
    v4 = sub_2295B6498;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2295B6498(uint64_t a1)
{
  v39 = v1;
  v2 = v1[12];
  if (v2)
  {
    sub_2297A46D4();
    v3 = v2;
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();

    if (os_log_type_enabled(v4, v5))
    {
      v36 = v1[10];
      v6 = v1[6];
      v34 = v1[12];
      v35 = v1[5];
      v7 = v1[4];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v37 = v2;
      v38 = swift_slowAlloc();
      v10 = v38;
      *v8 = 136315394;
      v11 = sub_2295B8B7C(v7);
      v13 = sub_2295A3E30(v11, v12, &v38);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v3;
      *v9 = v34;
      v14 = v3;
      _os_log_impl(&dword_229538000, v4, v5, "%s Discovery succeeded, found primary resident: %@", v8, 0x16u);
      sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      v15 = v10;
      v2 = v37;
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v8, -1, -1);

      (*(v6 + 8))(v36, v35);
    }

    else
    {
      v29 = v1[10];
      v30 = v1[5];
      v31 = v1[6];

      (*(v31 + 8))(v29, v30);
    }
  }

  else
  {
    sub_2297A46D4();
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCCC();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v1[9];
    v20 = v1[5];
    v21 = v1[6];
    if (v18)
    {
      v22 = v1[4];
      v23 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v24 = v38;
      *v23 = 136315138;
      v25 = sub_2295B8B7C(v22);
      v27 = sub_2295A3E30(v25, v26, &v38);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_229538000, v16, v17, "%s Discovery succeeded, no primary resident found", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v28 = v24;
      v2 = 0;
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    (*(v21 + 8))(v19, v20);
  }

  v32 = v1[1];

  return v32(v2 != 0);
}

uint64_t sub_2295B67E0()
{
  v39 = v0;
  v1 = v0[13];
  type metadata accessor for Code(0);
  v0[2] = 91;
  v2 = v1;
  sub_2295B9744(&qword_27D87D910, type metadata accessor for Code, &unk_22A576DD8);
  v3 = sub_22A4DB32C();

  v4 = v0[13];
  if (v3)
  {

    sub_2297A46D4();
    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCCC();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[8];
    v10 = v0[5];
    v9 = v0[6];
    if (v7)
    {
      v11 = v0[4];
      v36 = v3;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38 = v13;
      *v12 = 136315138;
      v14 = sub_2295B8B7C(v11);
      v16 = sub_2295A3E30(v14, v15, &v38);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_229538000, v5, v6, "%s Discovery failed, no primary resident found", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AAD4E50](v13, -1, -1);
      v17 = v12;
      v3 = v36;
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }
  }

  else
  {
    sub_2297A46D4();
    v18 = v4;
    v5 = sub_22A4DD05C();
    v19 = sub_22A4DDCEC();

    v20 = os_log_type_enabled(v5, v19);
    v21 = v0[13];
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    if (v20)
    {
      v35 = v0[7];
      v22 = v0[4];
      v37 = v3;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v23 = 136315394;
      v26 = sub_2295B8B7C(v22);
      v34 = v10;
      v28 = sub_2295A3E30(v26, v27, &v38);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2112;
      v29 = v21;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v30;
      *v24 = v30;
      _os_log_impl(&dword_229538000, v5, v19, "%s Discovery failed, there could be a primary resident: %@", v23, 0x16u);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      v31 = v23;
      v3 = v37;
      MEMORY[0x22AAD4E50](v31, -1, -1);

      (*(v9 + 8))(v35, v34);
      goto LABEL_8;
    }
  }

  (*(v9 + 8))(v8, v10);
LABEL_8:

  v32 = v0[1];

  return v32((v3 & 1) == 0);
}

uint64_t sub_2295B6B8C()
{
  v1[20] = v0;
  v1[21] = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D900, &qword_22A578F08);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_22A4DD07C();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295B6D2C, 0, 0);
}

uint64_t sub_2295B6D2C()
{
  v98 = v0;
  v1 = [v0[20] homeManager];
  v0[37] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 appData];
    v0[38] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = [v3 applicationDataForIdentifier_];
      if (v5 && (v6 = v5, v7 = sub_22A4DD49C(), v6, sub_22976F484(v7), v9 = v8, v0[39] = v8, , v9))
      {
        sub_2297A46D4();

        v10 = sub_22A4DD05C();
        v11 = sub_22A4DDCDC();

        v12 = os_log_type_enabled(v10, v11);
        v13 = v0[36];
        v14 = v0[26];
        v91 = v0[25];
        if (v12)
        {
          v88 = v0[36];
          v15 = v0[21];
          v16 = swift_slowAlloc();
          v94 = v0;
          v97 = swift_slowAlloc();
          v17 = v97;
          *v16 = 136315394;
          v18 = sub_2295B8B7C(v15);
          v20 = sub_2295A3E30(v18, v19, &v97);

          *(v16 + 4) = v20;
          *(v16 + 12) = 2080;
          v21 = sub_22A4DD4AC();
          v23 = sub_2295A3E30(v21, v22, &v97);

          *(v16 + 14) = v23;
          _os_log_impl(&dword_229538000, v10, v11, "%s Home manager app data: %s", v16, 0x16u);
          swift_arrayDestroy();
          v24 = v17;
          v0 = v94;
          MEMORY[0x22AAD4E50](v24, -1, -1);
          MEMORY[0x22AAD4E50](v16, -1, -1);

          v25 = *(v14 + 8);
          v25(v88, v91);
        }

        else
        {

          v25 = *(v14 + 8);
          v25(v13, v91);
        }

        v0[40] = v25;
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v69 = sub_22A4DD47C();
        LODWORD(ObjCClassFromMetadata) = [ObjCClassFromMetadata didHomeAppOnboardHindsightWithAppData_];

        if (ObjCClassFromMetadata)
        {
          v70 = [v2 fmfHandler];
          v0[41] = v70;
          if (v70)
          {
            v71 = v70;
            v73 = v0[23];
            v72 = v0[24];
            v74 = v0[22];
            v0[2] = v0;
            v0[7] = v0 + 18;
            v0[3] = sub_2295B7710;
            swift_continuation_init();
            v0[17] = v74;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
            sub_2295B96E0();
            sub_22A4DD8DC();
            (*(v73 + 32))(boxed_opaque_existential_1, v72, v74);
            v0[10] = MEMORY[0x277D85DD0];
            v0[11] = 1107296256;
            v0[12] = sub_2295B819C;
            v0[13] = &block_descriptor_25;
            [v71 queryFMFStatusWithCompletion_];
            (*(v73 + 8))(boxed_opaque_existential_1, v74);
            v70 = v0 + 2;
          }

          else
          {
            __break(1u);
          }

          return MEMORY[0x282200938](v70);
        }

        sub_2297A46D4();
        v76 = sub_22A4DD05C();
        v77 = sub_22A4DDCCC();
        v78 = os_log_type_enabled(v76, v77);
        v79 = v0[30];
        v80 = v0[25];
        if (v78)
        {
          v81 = v0[21];
          v93 = v0[25];
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v97 = v83;
          *v82 = 136315138;
          v84 = sub_2295B8B7C(v81);
          v90 = v79;
          v86 = sub_2295A3E30(v84, v85, &v97);

          *(v82 + 4) = v86;
          _os_log_impl(&dword_229538000, v76, v77, "%s Home manager app data indicates onboarding has not happened yet", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);
          MEMORY[0x22AAD4E50](v83, -1, -1);
          MEMORY[0x22AAD4E50](v82, -1, -1);

          v25(v90, v93);
        }

        else
        {

          v25(v79, v80);
        }
      }

      else
      {
        sub_2297A46D4();
        v38 = v4;
        v39 = sub_22A4DD05C();
        v40 = sub_22A4DDCCC();

        v41 = os_log_type_enabled(v39, v40);
        v42 = v0[29];
        v43 = v0[25];
        v44 = v0[26];
        if (v41)
        {
          v92 = v0[25];
          v45 = v0[21];
          v46 = swift_slowAlloc();
          v89 = v42;
          v47 = swift_slowAlloc();
          v95 = v0;
          v97 = swift_slowAlloc();
          v48 = v97;
          *v46 = 136315394;
          v49 = sub_2295B8B7C(v45);
          log = v39;
          v51 = sub_2295A3E30(v49, v50, &v97);

          *(v46 + 4) = v51;
          *(v46 + 12) = 2112;
          *(v46 + 14) = v38;
          *v47 = v4;
          v52 = v38;
          _os_log_impl(&dword_229538000, log, v40, "%s Skipping onboarding check, no app data dictionary: %@", v46, 0x16u);
          sub_22953EAE4(v47, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v47, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v48);
          v53 = v48;
          v0 = v95;
          MEMORY[0x22AAD4E50](v53, -1, -1);
          MEMORY[0x22AAD4E50](v46, -1, -1);

          (*(v44 + 8))(v89, v92);
        }

        else
        {

          (*(v44 + 8))(v42, v43);
        }
      }
    }

    else
    {
      sub_2297A46D4();
      v54 = sub_22A4DD05C();
      v55 = sub_22A4DDCCC();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v0[28];
      v59 = v0[25];
      v58 = v0[26];
      if (v56)
      {
        v60 = v0[21];
        v96 = v0[28];
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v97 = v62;
        *v61 = 136315138;
        v63 = sub_2295B8B7C(v60);
        v65 = sub_2295A3E30(v63, v64, &v97);

        *(v61 + 4) = v65;
        _os_log_impl(&dword_229538000, v54, v55, "%s Skipping onboarding check, no app data", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x22AAD4E50](v62, -1, -1);
        MEMORY[0x22AAD4E50](v61, -1, -1);

        (*(v58 + 8))(v96, v59);
      }

      else
      {

        (*(v58 + 8))(v57, v59);
      }
    }
  }

  else
  {
    sub_2297A46D4();
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCFC();
    v28 = os_log_type_enabled(v26, v27);
    v30 = v0[26];
    v29 = v0[27];
    v31 = v0[25];
    if (v28)
    {
      v32 = v0[21];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v97 = v34;
      *v33 = 136315138;
      v35 = sub_2295B8B7C(v32);
      v37 = sub_2295A3E30(v35, v36, &v97);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_229538000, v26, v27, "%s No home manager", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    (*(v30 + 8))(v29, v31);
  }

  v66 = v0[1];

  return v66(0);
}