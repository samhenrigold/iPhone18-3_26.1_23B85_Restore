uint64_t sub_2296C46B8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8B90;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2296C47C0;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8C78, v3, v5);
}

uint64_t sub_2296C47C0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2296C4C10;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 24);

    v3 = sub_2296C48F0;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2296C48F0(uint64_t a1)
{
  v24 = v1;
  v2 = *(v1 + 32);
  v3 = sub_22A4DB77C();
  v4 = [v2 accessoryWithUUID_];

  if (v4)
  {
    v5 = [*(v1 + 32) notificationCenter];
    if (qword_27D87B9F8 != -1)
    {
      swift_once();
    }

    v7 = *(v1 + 32);
    v6 = *(v1 + 40);
    logAndPostNotificationWithNotificationCenter(v5, qword_27D8AB870, v4, 0);
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v8 = sub_22A4DD07C();
    __swift_project_value_buffer(v8, qword_27D8AB878);

    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v1 + 32);
    v13 = *(v1 + 40);
    if (v11)
    {
      v22 = *(v1 + 32);
      v14 = *(v1 + 24);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_2295A3E30(*(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v23);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A591650, &v23);
      *(v15 + 22) = 2080;
      sub_22A4DB7DC();
      sub_2295AEE34(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_22A4DE5CC();
      v19 = sub_2295A3E30(v17, v18, &v23);

      *(v15 + 24) = v19;
      _os_log_impl(&dword_229538000, v9, v10, "%s %s Can't find accessory with UUID: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    else
    {
    }
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_2296C4C10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_2296C4C84, v1, 0);
}

uint64_t sub_2296C4C84()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

id sub_2296C4CEC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v32 = a3;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_22A4DB77C();
  v11 = [v9 findHAPAccessoryWithModelID_];

  v35 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    v30 = 0;
    v31 = v6;
    v34 = v36;
    result = [v36 adaptiveTemperatureSleepScheduleRules];
    v33 = a2;
    if (result)
    {
      v13 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1E8, qword_22A57E370);
      v14 = sub_22A4DD83C();

      v15 = v5;
      if (v14 >> 62)
      {
        goto LABEL_15;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
      {
        v17 = 0;
        while ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x22AAD13F0](v17, v14);
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_13;
          }

LABEL_9:
          [v34 removeAdaptiveTemperatureSleepScheduleRulesObject_];
          swift_unknownObjectRelease();
          ++v17;
          if (v19 == i)
          {
            goto LABEL_16;
          }
        }

        if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v18 = *(v14 + 8 * v17 + 32);
        swift_unknownObjectRetain();
        v19 = v17 + 1;
        if (!__OFADD__(v17, 1))
        {
          goto LABEL_9;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        ;
      }

LABEL_16:

      a2 = v33;
      v5 = v15;
    }

    v20 = v5;
    if (a2 >> 62)
    {
      result = sub_22A4DE0EC();
      v21 = result;
      v22 = v31;
      if (result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22 = v31;
      if (v21)
      {
LABEL_19:
        if (v21 < 1)
        {
          __break(1u);
          return result;
        }

        v23 = 0;
        v24 = v33 & 0xC000000000000001;
        v25 = (v22 + 8);
        do
        {
          if (v24)
          {
            v26 = MEMORY[0x22AAD13F0](v23, v33);
          }

          else
          {
            v26 = *(v33 + 8 * v23 + 32);
          }

          v27 = v26;
          ++v23;
          sub_22A4DB7CC();
          v28 = sub_22A4DB77C();
          (*v25)(v8, v20);
          v29 = [v34 materializeOrCreateAdaptiveTemperatureSleepScheduleRulesRelationWithModelID:v28 createdNew:0];

          [v29 updateFromWeekDayScheduleRule_];
          swift_unknownObjectRelease();
        }

        while (v21 != v23);
      }
    }

    sub_2297082C0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2296C50D4()
{
  v21 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];
      v0[9] = v5;

      if (v5)
      {

        return MEMORY[0x2822009F8](sub_2296C559C, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D8AB878);

    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCEC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_2295A3E30(*(v9 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v9 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v20);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A591620, v20);
      _os_log_impl(&dword_229538000, v7, v8, "%s %s Missing context, failed save adaptive temperature settings", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v11, -1, -1);
      MEMORY[0x22AAD4E50](v10, -1, -1);
    }

    type metadata accessor for HMError(0);
    v0[5] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v12 = sub_22A4DD07C();
    __swift_project_value_buffer(v12, qword_27D8AB878);

    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[7];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2295A3E30(*(v15 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v15 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v20);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A591620, v20);
      _os_log_impl(&dword_229538000, v13, v14, "%s %s Missing home, failed to save adaptive temperature settings", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    type metadata accessor for HMError(0);
    v0[3] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_2296C559C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[10] = v3;
  v3[2] = v1;
  v3[3] = sub_2296C8B68;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1E0, &unk_22A57E360);
  *v4 = v0;
  v4[1] = sub_2296C56BC;

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8B84, v3, v5);
}

uint64_t sub_2296C56BC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_2296C586C;
    v4 = 0;
  }

  else
  {
    v5 = v2[7];

    v2[13] = v2[6];
    v3 = sub_2296C5800;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2296C5800()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 104);

  return v2(v3);
}

uint64_t sub_2296C586C()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2296C58E4, v1, 0);
}

uint64_t sub_2296C58E4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296C594C@<X0>(id *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = sub_22A4DB77C();
  [v3 findHAPAccessoryWithModelID_];

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (v1)
  {
    return result;
  }

  v6 = [v15 adaptiveTemperatureSleepScheduleRules];
  if (!v6)
  {
    result = swift_unknownObjectRelease();
LABEL_15:
    *a1 = MEMORY[0x277D84F90];
    return result;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1E8, qword_22A57E370);
  v8 = sub_22A4DD83C();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v9 = sub_22A4DE0EC();
  if (!v9)
  {
LABEL_14:
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

LABEL_5:
  v14 = a1;
  v16 = MEMORY[0x277D84F90];
  result = sub_22A4DE29C();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](v10, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      ++v10;
      v12 = [v11 weekDayScheduleRule];
      swift_unknownObjectRelease();
      sub_22A4DE27C();
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
    }

    while (v9 != v10);
    swift_unknownObjectRelease();

    *v14 = v16;
  }

  return result;
}

uint64_t sub_2296C5BE0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_2296C5C2C, v1, 0);
}

uint64_t sub_2296C5C2C()
{
  v25 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];
      *(v0 + 40) = v5;

      if (v5)
      {
        v6 = *(v0 + 16);
        v7 = *(v0 + 24);
        v8 = *(v0 + 80);
        v9 = swift_allocObject();
        *(v0 + 48) = v9;
        *(v9 + 16) = v6;
        *(v9 + 24) = v8;
        *(v9 + 32) = v5;
        *(v9 + 40) = v7;

        v10 = v5;

        return MEMORY[0x2822009F8](sub_2296C602C, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8AB878);

    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 16);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_2295A3E30(*(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v24);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5915E0, &v24);
      _os_log_impl(&dword_229538000, v12, v13, "%s %s Missing context, failed to update supportsAdaptiveTemperatureAutomations", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v17 = sub_22A4DD07C();
    __swift_project_value_buffer(v17, qword_27D8AB878);

    v12 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v18))
    {
      v19 = *(v0 + 16);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_2295A3E30(*(v19 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v19 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v24);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5915E0, &v24);
      _os_log_impl(&dword_229538000, v12, v18, "%s %s Missing home, failed to update supportsAdaptiveTemperatureAutomations", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v21, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2296C602C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8B44;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2296C6134;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8C78, v3, v5);
}

uint64_t sub_2296C6134()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2296C6264;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 16);

    v3 = sub_2296C8C74;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2296C6264()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_2296C8C80, v1, 0);
}

void sub_2296C62D8(uint64_t a1, int a2)
{
  v5 = objc_opt_self();
  v6 = sub_22A4DB77C();
  [v5 findHAPAccessoryWithModelID_];

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v2)
  {
    v7 = [v20 supportsAdaptiveTemperatureAutomations];
    if (!v7 || (v8 = v7, v9 = [v7 BOOLValue], v8, ((v9 ^ a2) & 1) != 0))
    {
      v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [v20 setSupportsAdaptiveTemperatureAutomations_];

      sub_2297082C0();
      if (qword_27D87BA00 != -1)
      {
        swift_once();
      }

      v11 = sub_22A4DD07C();
      __swift_project_value_buffer(v11, qword_27D8AB878);

      v12 = sub_22A4DD05C();
      v13 = sub_22A4DDCCC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = v19;
        *v14 = 136315906;
        *(v14 + 4) = sub_2295A3E30(*(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v20);
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5915E0, &v20);
        *(v14 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F1D0, &qword_22A57E358);
        v15 = sub_22A4DD64C();
        v17 = sub_2295A3E30(v15, v16, &v20);

        *(v14 + 24) = v17;
        *(v14 + 32) = 1024;
        *(v14 + 34) = a2 & 1;
        _os_log_impl(&dword_229538000, v12, v13, "%s %s Updated supportsAdaptiveTemperatureAutomations from %s to %{BOOL}d", v14, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v19, -1, -1);
        MEMORY[0x22AAD4E50](v14, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2296C6638(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_2296C6684, v1, 0);
}

uint64_t sub_2296C6684()
{
  v25 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];
      *(v0 + 40) = v5;

      if (v5)
      {
        v6 = *(v0 + 16);
        v7 = *(v0 + 24);
        v8 = *(v0 + 80);
        v9 = swift_allocObject();
        *(v0 + 48) = v9;
        *(v9 + 16) = v6;
        *(v9 + 24) = v8;
        *(v9 + 32) = v5;
        *(v9 + 40) = v7;

        v10 = v5;

        return MEMORY[0x2822009F8](sub_2296C6A84, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8AB878);

    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 16);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_2295A3E30(*(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v24);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A5915B0, &v24);
      _os_log_impl(&dword_229538000, v12, v13, "%s %s Missing context, failed to update supportsCleanEnergyAutomation", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v17 = sub_22A4DD07C();
    __swift_project_value_buffer(v17, qword_27D8AB878);

    v12 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v18))
    {
      v19 = *(v0 + 16);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_2295A3E30(*(v19 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v19 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v24);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A5915B0, &v24);
      _os_log_impl(&dword_229538000, v12, v18, "%s %s Missing home, failed to update supportsCleanEnergyAutomation", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v21, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2296C6A84()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8AE0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2296C6B8C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8C78, v3, v5);
}

uint64_t sub_2296C6B8C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2296C6D24;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 16);

    v3 = sub_2296C6CBC;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2296C6CBC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296C6D24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_2296C6D98, v1, 0);
}

uint64_t sub_2296C6D98()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2296C6E00(uint64_t a1, int a2)
{
  v5 = objc_opt_self();
  v6 = sub_22A4DB77C();
  [v5 findHAPAccessoryWithModelID_];

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v2)
  {
    v7 = [v20 supportsCleanEnergyAutomation];
    if (!v7 || (v8 = v7, v9 = [v7 BOOLValue], v8, ((v9 ^ a2) & 1) != 0))
    {
      v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [v20 setSupportsCleanEnergyAutomation_];

      sub_2297082C0();
      if (qword_27D87BA00 != -1)
      {
        swift_once();
      }

      v11 = sub_22A4DD07C();
      __swift_project_value_buffer(v11, qword_27D8AB878);

      v12 = sub_22A4DD05C();
      v13 = sub_22A4DDCCC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = v19;
        *v14 = 136315906;
        *(v14 + 4) = sub_2295A3E30(*(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v20);
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A5915B0, &v20);
        *(v14 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F1D0, &qword_22A57E358);
        v15 = sub_22A4DD64C();
        v17 = sub_2295A3E30(v15, v16, &v20);

        *(v14 + 24) = v17;
        *(v14 + 32) = 1024;
        *(v14 + 34) = a2 & 1;
        _os_log_impl(&dword_229538000, v12, v13, "%s %s Updated supportsCleanEnergyAutomation from %s to %{BOOL}d", v14, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v19, -1, -1);
        MEMORY[0x22AAD4E50](v14, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2296C7160(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(type metadata accessor for ThermostatSuggestedPreset.Current(0) - 8);
  v2[5] = v3;
  v2[6] = *(v3 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296C724C, v1, 0);
}

uint64_t sub_2296C724C()
{
  v29 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];
      v0[9] = v5;

      if (v5)
      {
        v7 = v0[6];
        v6 = v0[7];
        v9 = v0[4];
        v8 = v0[5];
        v10 = v0[3];
        sub_2296C8838(v0[2], v6);
        v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
        v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
        v13 = swift_allocObject();
        v0[10] = v13;
        *(v13 + 16) = v10;
        sub_2296C8A1C(v6, v13 + v11, type metadata accessor for ThermostatSuggestedPreset.Current);
        *(v13 + v12) = v5;
        *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v9;

        v14 = v5;

        return MEMORY[0x2822009F8](sub_2296C76B0, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v15 = sub_22A4DD07C();
    __swift_project_value_buffer(v15, qword_27D8AB878);

    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[3];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2295A3E30(*(v18 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v18 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v28);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A591550, &v28);
      _os_log_impl(&dword_229538000, v16, v17, "%s %s Missing context, failed to update thermostatSuggestedPreset", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v21 = sub_22A4DD07C();
    __swift_project_value_buffer(v21, qword_27D8AB878);

    v16 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v22))
    {
      v23 = v0[3];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_2295A3E30(*(v23 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v23 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v28);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A591550, &v28);
      _os_log_impl(&dword_229538000, v16, v22, "%s %s Missing home, failed to update thermostatSuggestedPreset", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_2296C76B0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_task_alloc();
  v0[11] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C889C;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_2296C77B8;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229586C80, v3, v5);
}

uint64_t sub_2296C77B8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2296C7958;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 24);

    v3 = sub_2296C78E8;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2296C78E8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296C7958()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_2296C79CC, v1, 0);
}

uint64_t sub_2296C79CC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296C7A40(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v77 = a3;
  v78 = a2;
  v4 = type metadata accessor for ThermostatSuggestedPreset.MKF(0);
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v76 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C0, &unk_22A57E340);
  v6 = MEMORY[0x28223BE20](v75);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v70 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v70 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v70 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v70 - v21);
  v23 = objc_opt_self();
  v79 = a1;
  v24 = sub_22A4DB77C();
  v25 = [v23 findHAPAccessoryWithModelID_];

  v83 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  v26 = v82;
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (v26)
  {
    return result;
  }

  v72 = "tiveTemperatureUpdated";
  v73 = v14;
  v74 = 0;
  v71 = v11;
  v28 = v78;
  v29 = v79;
  v82 = v17;
  v30 = v84;
  v31 = swift_unknownObjectRetain();
  sub_2296C8344(v31, v22);
  sub_2296C8944(v22, v20);
  if (v80[6](v20, 1, v81) == 1)
  {
    sub_2296C89B4(v20);
    v81 = v8;
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v32 = sub_22A4DD07C();
    __swift_project_value_buffer(v32, qword_27D8AB878);

    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v84 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_2295A3E30(*(v29 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v29 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v84);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2295A3E30(0xD000000000000021, v72 | 0x8000000000000000, &v84);
      _os_log_impl(&dword_229538000, v33, v34, "%s %s Missing saved thermostat suggested preset. Not submitting log event", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);
    }

    v37 = v73;
    goto LABEL_14;
  }

  v38 = v20;
  v39 = v76;
  sub_2296C8A1C(v38, v76, type metadata accessor for ThermostatSuggestedPreset.MKF);
  v37 = v73;
  if (*v39 != *v28)
  {
    v81 = v8;
    sub_2297C4D28(v39, v28);
    sub_2296C8A84(v39);
LABEL_14:
    v50 = sub_22A4DE74C();
    [v30 setThermostatCurrentSuggestedPresetScenario_];

    type metadata accessor for ThermostatSuggestedPreset.Current(0);
    v51 = sub_22A4DB6AC();
    [v30 setThermostatCurrentSuggestedPresetChangedTimestamp_];

    v52 = swift_unknownObjectRetain();
    v53 = v82;
    sub_2296C8344(v52, v82);
    v54 = v71;
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v55 = sub_22A4DD07C();
    __swift_project_value_buffer(v55, qword_27D8AB878);
    sub_2296C8944(v22, v37);
    sub_2296C8944(v53, v54);

    v56 = sub_22A4DD05C();
    v57 = sub_22A4DDCCC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      LODWORD(v78) = v57;
      v59 = v58;
      v79 = swift_slowAlloc();
      v84 = v79;
      *v59 = 136315906;
      *(v59 + 4) = sub_2295A3E30(*(v29 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v29 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v84);
      v80 = v22;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_2295A3E30(0xD000000000000021, v72 | 0x8000000000000000, &v84);
      *(v59 + 22) = 2080;
      v60 = v81;
      sub_2296C8944(v37, v81);
      v61 = sub_22A4DD64C();
      v63 = v62;
      sub_2296C89B4(v37);
      v64 = sub_2295A3E30(v61, v63, &v84);

      *(v59 + 24) = v64;
      *(v59 + 32) = 2080;
      sub_2296C8944(v54, v60);
      v65 = sub_22A4DD64C();
      v67 = v66;
      sub_2296C89B4(v54);
      v68 = sub_2295A3E30(v65, v67, &v84);
      v22 = v80;

      *(v59 + 34) = v68;
      _os_log_impl(&dword_229538000, v56, v78, "%s %s Saving new thermostat suggested preset %s -> %s", v59, 0x2Au);
      v69 = v79;
      swift_arrayDestroy();
      v53 = v82;
      MEMORY[0x22AAD4E50](v69, -1, -1);
      MEMORY[0x22AAD4E50](v59, -1, -1);
    }

    else
    {

      sub_2296C89B4(v54);
      sub_2296C89B4(v37);
    }

    sub_2297082C0();
    swift_unknownObjectRelease();
    sub_2296C89B4(v53);
    return sub_2296C89B4(v22);
  }

  if (qword_27D87BA00 != -1)
  {
    swift_once();
  }

  v40 = sub_22A4DD07C();
  __swift_project_value_buffer(v40, qword_27D8AB878);

  v41 = sub_22A4DD05C();
  v42 = sub_22A4DDCCC();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v72;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = v39;
    v47 = v22;
    v48 = swift_slowAlloc();
    v84 = v48;
    *v45 = 136315394;
    *(v45 + 4) = sub_2295A3E30(*(v29 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v29 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v84);
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_2295A3E30(0xD000000000000021, v44 | 0x8000000000000000, &v84);
    _os_log_impl(&dword_229538000, v41, v42, "%s %s Ignoring thermostat suggested preset because it has not changed", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v48, -1, -1);
    MEMORY[0x22AAD4E50](v45, -1, -1);
    swift_unknownObjectRelease();

    sub_2296C8A84(v46);
    v49 = v47;
  }

  else
  {
    swift_unknownObjectRelease();

    sub_2296C8A84(v39);
    v49 = v22;
  }

  return sub_2296C89B4(v49);
}

uint64_t sub_2296C8344@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 thermostatCurrentSuggestedPresetScenario];
  if (v8)
  {
    v9 = v8;
    v10 = [a1 thermostatCurrentSuggestedPresetChangedTimestamp];
    if (v10)
    {
      v11 = v10;
      sub_22A4DB70C();

      v12 = sub_2296F0214([v9 unsignedCharValue]);
      if (v12 != 8)
      {
        v18 = v12;
        swift_unknownObjectRelease();

        *a2 = v18;
        v19 = type metadata accessor for ThermostatSuggestedPreset.MKF(0);
        (*(v5 + 32))(&a2[*(v19 + 20)], v7, v4);
        return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
      }

      if (qword_27D87BA40 != -1)
      {
        swift_once();
      }

      v13 = sub_22A4DD07C();
      __swift_project_value_buffer(v13, qword_27D8AB940);
      v14 = sub_22A4DD05C();
      v15 = sub_22A4DDCEC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_2295A3E30(0x7469772874696E69, 0xEB00000000293A68, &v23);
        _os_log_impl(&dword_229538000, v14, v15, "%s Invalid MKF.thermostatCurrentSuggestedPresetScenario", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x22AAD4E50](v17, -1, -1);
        MEMORY[0x22AAD4E50](v16, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v5 + 8))(v7, v4);
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

  v21 = type metadata accessor for ThermostatSuggestedPreset.MKF(0);
  return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
}

uint64_t sub_2296C8684()
{
  MEMORY[0x22AAD4F90](v0 + 112);
  v1 = OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_uuid;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DefaultHAPAccessoryClimateStorage(uint64_t a1)
{
  result = qword_27D87F1A8;
  if (!qword_27D87F1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2296C877C(uint64_t a1)
{
  result = sub_22A4DB7DC();
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

uint64_t sub_2296C8838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatSuggestedPreset.Current(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296C889C()
{
  v1 = *(type metadata accessor for ThermostatSuggestedPreset.Current(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  return sub_2296C7A40(*(v0 + 16), (v0 + v2), *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2296C8944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C0, &unk_22A57E340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296C89B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C0, &unk_22A57E340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2296C8A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2296C8A84(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatSuggestedPreset.MKF(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_48Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2296C8C94()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB8A8);
  __swift_project_value_buffer(v0, qword_27D8AB8A8);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296C8D0C()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB8C0);
  __swift_project_value_buffer(v0, qword_27D8AB8C0);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296C8D84()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB8D8);
  __swift_project_value_buffer(v0, qword_27D8AB8D8);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

BOOL sub_2296C8E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_2296D00B8(a4, a5, a6);
  }

  while ((sub_22A4DD58C() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_2296C8F94()
{
  v0 = sub_22A4DCC4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22A4DCCCC();
  v4 = *(v20 - 8);
  v5 = MEMORY[0x28223BE20](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v19 = sub_22A4DC6BC();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D87BA20 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, qword_27D8AB8F0);
  sub_22A4DCCBC();
  (*(v1 + 16))(v3, v13, v0);
  v14 = v20;
  (*(v4 + 16))(v7, v9, v20);
  sub_22A4DC6CC();
  (*(v4 + 8))(v9, v14);
  v15 = sub_22A4DC6AC();
  (*(v10 + 8))(v12, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F278, &qword_22A57E3E8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22A576180;
  *(v16 + 32) = v15;
  v17 = sub_22A4DC69C();

  return v17;
}

uint64_t sub_2296C92A0()
{
  v0 = sub_22A4DCDAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22A4DC77C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v29 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v21 - v8);
  v28 = sub_22A4DC67C();
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D87BA28 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, qword_27D8AB908);
  v13 = *MEMORY[0x277D17238];
  v26 = v5[13];
  v26(v9, v13, v4);
  v25 = *(v1 + 16);
  v25(v3, v12, v0);
  v24 = v5[2];
  v24(v29, v9, v4);
  sub_22A4DC68C();
  v23 = v5[1];
  v23(v9, v4);
  v27 = sub_22A4DC66C();
  v14 = *(v30 + 8);
  v30 += 8;
  v22 = v14;
  v14(v11, v28);
  if (qword_27D87BA30 != -1)
  {
    swift_once();
  }

  v15 = v0;
  v16 = __swift_project_value_buffer(v0, qword_27D8AB920);
  *v9 = 24;
  v26(v9, *MEMORY[0x277D17240], v4);
  v25(v3, v16, v15);
  v24(v29, v9, v4);
  sub_22A4DC68C();
  v23(v9, v4);
  v17 = sub_22A4DC66C();
  v22(v11, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F280, &unk_22A57E3F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22A5761A0;
  *(v18 + 32) = v27;
  *(v18 + 40) = v17;
  v19 = sub_22A4DC65C();

  return v19;
}

uint64_t sub_2296C96DC(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E948, &unk_22A57E3C0);
  v2[34] = swift_task_alloc();
  v3 = sub_22A4DB7DC();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v4 = sub_22A4DCD0C();
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296C983C, 0, 0);
}

uint64_t sub_2296C983C()
{
  v32 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_0(*(v0 + 264) *(*(v0 + 264) + 24))];
  if (v1 && (v2 = v1, v3 = [v1 matterDevice], v2, v3))
  {
    v4 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    v5 = MEMORY[0x277D17450];
    *(v0 + 80) = v4;
    *(v0 + 88) = v5;
    *(v0 + 56) = v3;
    sub_229557188((v0 + 56), v0 + 16);
    sub_22A4DCCDC();
    v6 = swift_task_alloc();
    *(v0 + 336) = v6;
    *v6 = v0;
    v6[1] = sub_2296C9CD0;
    v7 = *(v0 + 328);

    return MEMORY[0x282171548](v0 + 16, v7);
  }

  else
  {
    if (qword_27D87BA18 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 264);
    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_27D8AB8D8);
    sub_22957F1C4(v8, v0 + 96);
    sub_22957F1C4(v8, v0 + 136);
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCCC();
    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 288);
      v12 = *(v0 + 296);
      v30 = *(v0 + 280);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v31);
      *(v14 + 12) = 2080;
      v16 = [*__swift_project_boxed_opaque_existential_0((v0 + 96) *(v0 + 120))];
      v17 = sub_22A4DD5EC();
      v19 = v18;

      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      v20 = sub_2295A3E30(v17, v19, &v31);

      *(v14 + 14) = v20;
      *(v14 + 22) = 2080;
      v21 = [*__swift_project_boxed_opaque_existential_0((v0 + 136) *(v0 + 160))];
      sub_22A4DB79C();

      sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v22 = sub_22A4DE5CC();
      v24 = v23;
      (*(v13 + 8))(v12, v30);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      v25 = sub_2295A3E30(v22, v24, &v31);

      *(v14 + 24) = v25;
      _os_log_impl(&dword_229538000, v10, v11, "[%s:%s/%s] Device not supported (no matterDevice)", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    v26 = *(v0 + 256);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F080, &unk_22A57E180);
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_2296C9CD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 312);
  v6 = *(*v2 + 304);
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_2296CA4E0;
  }

  else
  {
    v7 = sub_2296C9E44;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2296C9E44()
{
  v33 = v0;
  if (qword_27D87BA18 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8AB8D8);
  sub_22957F1C4(v1, (v0 + 22));
  sub_22957F1C4(v1, (v0 + 27));
  swift_bridgeObjectRetain_n();
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[43];
  if (v5)
  {
    v7 = v0[37];
    v8 = v0[36];
    v29 = v0[35];
    v30 = v0[38];
    v9 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v9 = 136316162;
    *(v9 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v32);
    *(v9 + 12) = 2080;
    v10 = [*__swift_project_boxed_opaque_existential_0(v0 + 22 v0[25])];
    v11 = sub_22A4DD5EC();
    v13 = v12;

    __swift_destroy_boxed_opaque_existential_0(v0 + 22);
    v14 = sub_2295A3E30(v11, v13, &v32);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    v15 = [*__swift_project_boxed_opaque_existential_0(v0 + 27 v0[30])];
    sub_22A4DB79C();

    sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v8 + 8))(v7, v29);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    v19 = sub_2295A3E30(v16, v18, &v32);

    *(v9 + 24) = v19;
    *(v9 + 32) = 2048;
    v20 = *(v6 + 16);

    *(v9 + 34) = v20;

    *(v9 + 42) = 2080;
    v21 = MEMORY[0x22AAD0A20](v6, v30);
    v23 = sub_2295A3E30(v21, v22, &v32);

    *(v9 + 44) = v23;
    _os_log_impl(&dword_229538000, v3, v4, "[%s:%s/%s] Retrieved %ld child endpoints: %s", v9, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  }

  v24 = swift_task_alloc();
  v0[45] = v24;
  *v24 = v0;
  v24[1] = sub_2296CA200;
  v25 = v0[43];
  v27 = v0[33];
  v26 = v0[34];

  return sub_2296CA620(v26, v27, (v0 + 2), v25);
}

uint64_t sub_2296CA200()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_2296CA580;
  }

  else
  {
    v2 = sub_2296CA330;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296CA330()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[34];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[32];
    sub_22953EAE4(v0[34], &qword_27D87E948, &unk_22A57E3C0);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F080, &unk_22A57E180);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v6 = v0[40];
    v7 = v0[38];
    v8 = v0[32];
    v9 = *(v0[39] + 32);
    v9(v6, v0[34], v7);
    v9(v8, v6, v7);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F080, &unk_22A57E180);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2296CA4E0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296CA580()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296CA620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_22A4DB7DC();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v6 = sub_22A4DC52C();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v7 = sub_22A4DC55C();
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v8 = sub_22A4DCD0C();
  v4[36] = v8;
  v4[37] = *(v8 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296CA81C, 0, 0);
}

uint64_t sub_2296CA81C()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  *(v0 + 328) = v2;
  if (v2)
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 296);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 424) = v6;
    *(v0 + 336) = *(v4 + 56);
    *(v0 + 344) = v5;
    v7 = *(v0 + 320);
    *(v0 + 352) = 0;
    *(v0 + 360) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v8 = swift_task_alloc();
    *(v0 + 368) = v8;
    *v8 = v0;
    v8[1] = sub_2296CA9CC;
    v9 = *(v0 + 320);
    v10 = *(v0 + 192);

    return MEMORY[0x282171540](v10, v9);
  }

  else
  {
    (*(*(v0 + 296) + 56))(*(v0 + 176), 1, 1, *(v0 + 288));

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2296CA9CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_2296CB97C;
  }

  else
  {
    v4 = sub_2296CAAE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296CAAE0()
{
  v66 = v0;
  v1 = 0;
  v59 = *(v0 + 376);
  v61 = *(v59 + 16);
  while (v61 != v1)
  {
    if (v1 >= *(v59 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v2 = *(v0 + 272);
    v3 = *(v0 + 280);
    v4 = *(v0 + 256);
    v63 = *(v0 + 264);
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    v7 = *(v0 + 232);
    (*(v2 + 16))(v3, *(v0 + 376) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1++);
    sub_22A4DC54C();
    sub_22A4DC50C();
    sub_2296D00B8(&qword_27D87DCE0, MEMORY[0x277D17180], MEMORY[0x277D17188]);
    sub_22A4DD7DC();
    sub_22A4DD7DC();
    v8 = *(v5 + 8);
    v8(v6, v7);
    v8(v4, v7);
    (*(v2 + 8))(v3, v63);
    if (*(v0 + 416) == *(v0 + 420))
    {

      v9 = swift_task_alloc();
      *(v0 + 392) = v9;
      *v9 = v0;
      v9[1] = sub_2296CB228;
      v10 = *(v0 + 320);
      v11 = *(v0 + 192);

      return MEMORY[0x282171550](v11, v10);
    }
  }

  if (qword_27D87BA18 == -1)
  {
    goto LABEL_9;
  }

LABEL_20:
  swift_once();
LABEL_9:
  v12 = *(v0 + 344);
  v13 = *(v0 + 320);
  v14 = *(v0 + 304);
  v15 = *(v0 + 288);
  v16 = *(v0 + 184);
  v17 = sub_22A4DD07C();
  __swift_project_value_buffer(v17, qword_27D8AB8D8);
  sub_22957F1C4(v16, v0 + 96);
  sub_22957F1C4(v16, v0 + 136);
  v12(v14, v13, v15);

  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCDC();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 320);
  v22 = *(v0 + 296);
  v23 = *(v0 + 304);
  v24 = *(v0 + 288);
  if (v20)
  {
    v58 = *(v0 + 264);
    v62 = v19;
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);
    v56 = *(v0 + 208);
    v64 = *(v0 + 320);
    v57 = *(v0 + 376);
    v27 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v65 = v60;
    *v27 = 136316162;
    *(v27 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v65);
    *(v27 + 12) = 2080;
    v28 = [*__swift_project_boxed_opaque_existential_0((v0 + 96) *(v0 + 120))];
    v29 = sub_22A4DD5EC();
    v55 = v24;
    v31 = v30;

    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v32 = sub_2295A3E30(v29, v31, &v65);

    *(v27 + 14) = v32;
    *(v27 + 22) = 2080;
    v33 = [*__swift_project_boxed_opaque_existential_0((v0 + 136) *(v0 + 160))];
    sub_22A4DB79C();

    sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = sub_22A4DE5CC();
    v36 = v35;
    (*(v26 + 8))(v25, v56);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v37 = sub_2295A3E30(v34, v36, &v65);

    *(v27 + 24) = v37;
    *(v27 + 32) = 512;
    LOWORD(v37) = sub_22A4DCCFC();
    v38 = *(v22 + 8);
    v38(v23, v55);
    *(v27 + 34) = v37;
    *(v27 + 36) = 2080;
    v39 = MEMORY[0x22AAD0A20](v57, v58);
    v41 = v40;

    v42 = sub_2295A3E30(v39, v41, &v65);

    *(v27 + 38) = v42;
    _os_log_impl(&dword_229538000, v18, v62, "[%s:%s/%s] Endpoint 0x%hx - no matching device type (%s)", v27, 0x2Eu);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v60, -1, -1);
    MEMORY[0x22AAD4E50](v27, -1, -1);

    v38(v64, v55);
  }

  else
  {
    v43 = *(v22 + 8);
    v43(*(v0 + 304), *(v0 + 288));

    v43(v21, v24);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  v44 = *(v0 + 352) + 1;
  if (v44 == *(v0 + 328))
  {
    (*(*(v0 + 296) + 56))(*(v0 + 176), 1, 1, *(v0 + 288));

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v46 = *(v0 + 344);
    v47 = *(v0 + 320);
    v48 = *(v0 + 288);
    v49 = *(v0 + 200) + ((*(v0 + 424) + 32) & ~*(v0 + 424)) + *(v0 + 336) * v44;
    v50 = (*(v0 + 296) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 352) = v44;
    *(v0 + 360) = v50;
    v46(v47, v49, v48);
    v51 = swift_task_alloc();
    *(v0 + 368) = v51;
    *v51 = v0;
    v51[1] = sub_2296CA9CC;
    v52 = *(v0 + 320);
    v53 = *(v0 + 192);

    return MEMORY[0x282171540](v53, v52);
  }
}

uint64_t sub_2296CB228(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v4 = sub_2296CBA50;
  }

  else
  {
    v4 = sub_2296CB33C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296CB33C()
{
  v60 = v0;
  if (qword_27D87BA20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = sub_22A4DCC4C();
  v3 = __swift_project_value_buffer(v2, qword_27D8AB8F0);
  if (sub_2296C8E8C(v3, v1, MEMORY[0x277D173C8], &qword_27D87F268, MEMORY[0x277D173C8], MEMORY[0x277D173D0]))
  {
    v4 = *(v0 + 320);
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
    v7 = *(v0 + 176);

    (*(v6 + 32))(v7, v4, v5);
    v8 = 0;
LABEL_12:
    (*(*(v0 + 296) + 56))(*(v0 + 176), v8, 1, *(v0 + 288));

    v42 = *(v0 + 8);

    return v42();
  }

  if (qword_27D87BA18 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 344);
  v11 = *(v0 + 312);
  v10 = *(v0 + 320);
  v12 = *(v0 + 288);
  v13 = *(v0 + 184);
  v14 = sub_22A4DD07C();
  __swift_project_value_buffer(v14, qword_27D8AB8D8);
  sub_22957F1C4(v13, v0 + 16);
  sub_22957F1C4(v13, v0 + 56);
  v9(v11, v10, v12);

  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCDC();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 312);
  v19 = *(v0 + 320);
  v20 = *(v0 + 288);
  v21 = *(v0 + 296);
  if (v17)
  {
    v56 = v16;
    log = v15;
    v58 = *(v0 + 320);
    v23 = *(v0 + 216);
    v22 = *(v0 + 224);
    v53 = *(v0 + 208);
    v54 = *(v0 + 400);
    v24 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v59 = v55;
    *v24 = 136316162;
    *(v24 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v59);
    *(v24 + 12) = 2080;
    v25 = [*__swift_project_boxed_opaque_existential_0((v0 + 16) *(v0 + 40))];
    v52 = v20;
    v26 = sub_22A4DD5EC();
    v28 = v27;

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v29 = sub_2295A3E30(v26, v28, &v59);

    *(v24 + 14) = v29;
    *(v24 + 22) = 2080;
    v30 = [*__swift_project_boxed_opaque_existential_0((v0 + 56) *(v0 + 80))];
    sub_22A4DB79C();

    sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v31 = sub_22A4DE5CC();
    v33 = v32;
    (*(v23 + 8))(v22, v53);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v34 = sub_2295A3E30(v31, v33, &v59);

    *(v24 + 24) = v34;
    *(v24 + 32) = 512;
    LOWORD(v34) = sub_22A4DCCFC();
    v35 = *(v21 + 8);
    v35(v18, v52);
    *(v24 + 34) = v34;
    *(v24 + 36) = 2080;
    v36 = MEMORY[0x22AAD0A20](v54, v2);
    v38 = v37;

    v39 = sub_2295A3E30(v36, v38, &v59);

    *(v24 + 38) = v39;
    _os_log_impl(&dword_229538000, log, v56, "[%s:%s/%s] Endpoint 0x%hx - no matching client clusters (%s)", v24, 0x2Eu);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v55, -1, -1);
    MEMORY[0x22AAD4E50](v24, -1, -1);

    v35(v58, v52);
  }

  else
  {
    v40 = *(v21 + 8);
    v40(*(v0 + 312), *(v0 + 288));

    v40(v19, v20);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  v41 = *(v0 + 352) + 1;
  if (v41 == *(v0 + 328))
  {
    v8 = 1;
    goto LABEL_12;
  }

  v44 = *(v0 + 344);
  v45 = *(v0 + 320);
  v46 = *(v0 + 288);
  v47 = *(v0 + 200) + ((*(v0 + 424) + 32) & ~*(v0 + 424)) + *(v0 + 336) * v41;
  v48 = (*(v0 + 296) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  *(v0 + 352) = v41;
  *(v0 + 360) = v48;
  v44(v45, v47, v46);
  v49 = swift_task_alloc();
  *(v0 + 368) = v49;
  *v49 = v0;
  v49[1] = sub_2296CA9CC;
  v50 = *(v0 + 320);
  v51 = *(v0 + 192);

  return MEMORY[0x282171540](v51, v50);
}

uint64_t sub_2296CB97C()
{
  (*(v0[37] + 8))(v0[40], v0[36]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2296CBA50()
{
  (*(v0[37] + 8))(v0[40], v0[36]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2296CBB24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_2296D00B8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = sub_22A4DD4EC();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_2296D00B8(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v31 = sub_22A4DD58C();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296CBEE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DCCAC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_2296D00B8(&qword_27D87CF18, MEMORY[0x277D173F0], MEMORY[0x277D173F8]);
      v26 = sub_22A4DD4EC();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_2296D00B8(&qword_27D87CF20, MEMORY[0x277D173F0], MEMORY[0x277D17400]);
        v31 = sub_22A4DD58C();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296CC2AC(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v5)
    {
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v8 = a2;
      }

      sub_2296CC60C(v8, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v9 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        v7 = sub_229562F68(0, a3, a4);
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v29 = v15;
        v17 = a1;
        if (!v13)
        {
LABEL_24:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              goto LABEL_36;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v30 = (v20 - 1) & v20;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v7, v6);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v30 = (v13 - 1) & v13;
LABEL_29:
          v21 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v22 = sub_22A4DDECC();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          while (1)
          {
            v26 = *(*(a2 + 48) + 8 * v24);
            v27 = sub_22A4DDEDC();

            if (v27)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v15 = v29;
          v13 = v30;
          v17 = a1;
          if (!v30)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v9 = 0;
    }

    return v9 & 1;
  }

  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v5)
  {
    sub_2296CC60C(v6, a2);
    return v9 & 1;
  }

  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](v7, v6);
}

uint64_t sub_2296CC5A8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a2(0);
  __swift_allocate_value_buffer(v8, a3);
  __swift_project_value_buffer(v8, a3);
  return a5(a4);
}

void sub_2296CC60C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_22A4DE0EC())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_22A4DE13C();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2296CC70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22A4DCD0C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296CC7D0, 0, 0);
}

uint64_t sub_2296CC7D0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_22A4DCCEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F270, &qword_22A57E3E0);
  sub_22A4DC55C();
  *(swift_allocObject() + 16) = xmmword_22A576180;
  sub_22A4DC4FC();
  v4 = sub_22A4DC64C();

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

char *sub_2296CC958(char *a1, uint64_t a2)
{
  v74 = a2;
  v4 = sub_22A4DCC4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v84 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F260, &qword_22A57E3B0);
  v7 = MEMORY[0x28223BE20](v99);
  v77 = (&v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F258, &qword_22A57E3A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v82 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v87 = &v73 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v73 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v73 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v73 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = (&v73 - v25);
  v108 = sub_22A4DCCAC();
  v27 = MEMORY[0x28223BE20](v108);
  v80 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v81 = &v73 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v73 = &v73 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v79 = &v73 - v34;
  MEMORY[0x28223BE20](v33);
  v105 = &v73 - v36;
  v106 = a1;
  v92 = *(a1 + 2);
  v75 = v35;
  if (!v92)
  {

    v107 = 0;
    v54 = 0;
    goto LABEL_20;
  }

  v86 = v18;
  v38 = *(v35 + 16);
  v37 = v35 + 16;
  v102 = v38;
  v39 = (*(v37 + 64) + 32) & ~*(v37 + 64);
  v40 = (v5 + 16);
  v98 = (v5 + 56);
  v100 = *(v37 + 56);
  v93 = (v5 + 48);
  v83 = (v5 + 32);
  v88 = (v5 + 8);
  v41 = v37;
  v97 = (v37 - 8);

  v42 = 0;
  v78 = v39;
  v89 = v40;
  v90 = v21;
  v103 = v24;
  v104 = v26;
  v101 = v41;
  while (1)
  {
    v107 = v42;
    v102(v105, &v106[v39], v108);
    sub_22A4DCC9C();
    if (qword_27D87BA20 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v4, qword_27D8AB8F0);
    v95 = *v40;
    v96 = v45;
    v46 = v40;
    v95(v24);
    v94 = *v98;
    v94(v24, 0, 1, v4);
    v47 = *(v99 + 48);
    sub_2296D0048(v26, v10);
    sub_2296D0048(v24, &v10[v47]);
    v48 = v24;
    v49 = *v93;
    if ((*v93)(v10, 1, v4) == 1)
    {
      break;
    }

    sub_2296D0048(v10, v21);
    v91 = v49;
    if (v49(&v10[v47], 1, v4) != 1)
    {
      v50 = v84;
      (*v83)(v84, &v10[v47], v4);
      sub_2296D00B8(&qword_27D87F268, MEMORY[0x277D173C8], MEMORY[0x277D173D0]);
      v85 = sub_22A4DD58C();
      v51 = *v88;
      (*v88)(v50, v4);
      v2 = &qword_27D87F258;
      sub_22953EAE4(v103, &qword_27D87F258, &qword_22A57E3A8);
      sub_22953EAE4(v104, &qword_27D87F258, &qword_22A57E3A8);
      v52 = *v97;
      (*v97)(v105, v108);
      v51(v21, v4);
      v40 = v89;
      result = sub_22953EAE4(v10, &qword_27D87F258, &qword_22A57E3A8);
      v44 = v101;
      if (v85)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    }

    v2 = &qword_22A57E3A8;
    sub_22953EAE4(v103, &qword_27D87F258, &qword_22A57E3A8);
    sub_22953EAE4(v104, &qword_27D87F258, &qword_22A57E3A8);
    (*v97)(v105, v108);
    (*v88)(v21, v4);
LABEL_4:
    sub_22953EAE4(v10, &qword_27D87F260, &qword_22A57E3B0);
    v44 = v101;
    v21 = v90;
    v40 = v46;
LABEL_5:
    v42 = v107 + 1;
    v39 += v100;
    v24 = v103;
    v26 = v104;
    if (v92 == v107 + 1)
    {
      v107 = v92;
      goto LABEL_18;
    }
  }

  v2 = &qword_27D87F258;
  sub_22953EAE4(v48, &qword_27D87F258, &qword_22A57E3A8);
  sub_22953EAE4(v26, &qword_27D87F258, &qword_22A57E3A8);
  v43 = *v97;
  (*v97)(v105, v108);
  if (v49(&v10[v47], 1, v4) != 1)
  {
    goto LABEL_4;
  }

  v91 = v49;
  result = sub_22953EAE4(v10, &qword_27D87F258, &qword_22A57E3A8);
  v44 = v101;
  v52 = v43;
LABEL_16:
  v2 = v77;
  v55 = v79;
  if (__OFADD__(v107, 1))
  {
    __break(1u);
    return result;
  }

  if (v107 + 1 == v92)
  {
LABEL_18:
    v56 = v107;
    v54 = *(v106 + 2);
    if (v54 < v107)
    {
      goto LABEL_57;
    }

    v56 = v107;
    if (v107 < 0)
    {
      goto LABEL_58;
    }

LABEL_20:
    v56 = v107 - v54;
    v44 = v107;
    if (__OFADD__(v54, v107 - v54))
    {
      goto LABEL_59;
    }

    v57 = v106;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v57;
    if (!isUniquelyReferenced_nonNull_native || v44 > *(v106 + 3) >> 1)
    {
      if (v54 <= v44)
      {
        v59 = v44;
      }

      else
      {
        v59 = v54;
      }

      v106 = sub_22958B424(isUniquelyReferenced_nonNull_native, v59, 1, v106);
      v109 = v106;
    }

    v4 = v73;
    sub_2296A4FCC(v107, v54, 0);
    v2 = v75;
    (*(v75 + 16))(v4, v74, v108);
    v44 = *(v106 + 2);
    v56 = *(v106 + 3);
    v54 = v44 + 1;
    if (v44 >= v56 >> 1)
    {
      goto LABEL_60;
    }

    goto LABEL_28;
  }

  v105 = v52;
  v61 = v100 + v39;
  v62 = v107 + 1;
  v104 = (v75 + 40);
  v54 = v93;
  v76 = v4;
  while (2)
  {
    v56 = *(v106 + 2);
    if (v62 < v56)
    {
      v102(v55, &v106[v61], v108);
      v44 = v55;
      v63 = v86;
      sub_22A4DCC9C();
      v64 = v87;
      (v95)(v87, v96, v4);
      v94(v64, 0, 1, v4);
      v65 = *(v99 + 48);
      sub_2296D0048(v63, v2);
      sub_2296D0048(v64, v2 + v65);
      v66 = v91;
      if (v91(v2, 1, v4) == 1)
      {
        sub_22953EAE4(v64, &qword_27D87F258, &qword_22A57E3A8);
        v4 = v76;
        sub_22953EAE4(v63, &qword_27D87F258, &qword_22A57E3A8);
        (v105)(v44, v108);
        v55 = v44;
        if (v66(v2 + v65, 1, v4) == 1)
        {
          sub_22953EAE4(v2, &qword_27D87F258, &qword_22A57E3A8);
LABEL_46:
          v44 = v101;
          v56 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_52;
          }

          ++v62;
          v61 += v100;
          if (v56 == *(v106 + 2))
          {
            goto LABEL_18;
          }

          continue;
        }

LABEL_36:
        sub_22953EAE4(v2, &qword_27D87F260, &qword_22A57E3B0);
      }

      else
      {
        v44 = v82;
        sub_2296D0048(v2, v82);
        if (v66(v2 + v65, 1, v4) == 1)
        {
          sub_22953EAE4(v87, &qword_27D87F258, &qword_22A57E3A8);
          sub_22953EAE4(v86, &qword_27D87F258, &qword_22A57E3A8);
          v55 = v79;
          (v105)(v79, v108);
          (*v88)(v44, v4);
          v54 = v93;
          goto LABEL_36;
        }

        v69 = v2 + v65;
        v70 = v84;
        (*v83)(v84, v69, v4);
        sub_2296D00B8(&qword_27D87F268, MEMORY[0x277D173C8], MEMORY[0x277D173D0]);
        v71 = sub_22A4DD58C();
        v72 = *v88;
        v44 = v77;
        (*v88)(v70, v4);
        sub_22953EAE4(v87, &qword_27D87F258, &qword_22A57E3A8);
        sub_22953EAE4(v86, &qword_27D87F258, &qword_22A57E3A8);
        v55 = v79;
        (v105)(v79, v108);
        v72(v82, v4);
        v2 = v44;
        sub_22953EAE4(v44, &qword_27D87F258, &qword_22A57E3A8);
        v54 = v93;
        if (v71)
        {
          goto LABEL_46;
        }
      }

      if (v62 != v107)
      {
        v56 = v107;
        if (v107 < 0)
        {
          goto LABEL_53;
        }

        v56 = v107;
        v44 = *(v106 + 2);
        if (v107 >= v44)
        {
          goto LABEL_54;
        }

        v54 = v107 * v100;
        v67 = v102;
        v102(v81, &v106[v78 + v107 * v100], v108);
        if (v62 >= v44)
        {
          goto LABEL_55;
        }

        v67(v80, &v106[v61], v108);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_2295AFEB4(v106);
        }

        v68 = v106;
        v44 = *v104;
        (*v104)(&v106[v78 + v54], v80, v108);
        v56 = *(v68 + 2);
        if (v62 >= v56)
        {
          goto LABEL_56;
        }

        (v44)(&v106[v61], v81, v108);
        v54 = v93;
      }

      ++v107;
      goto LABEL_46;
    }

    break;
  }

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
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  v106 = sub_22958B424((v56 > 1), v54, 1, v106);
LABEL_28:
  v60 = v106;
  *(v106 + 2) = v54;
  (v2[4])(&v60[((*(v2 + 80) + 32) & ~*(v2 + 80)) + v2[9] * v44], v4, v108);
  return v60;
}

uint64_t sub_2296CD79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[78] = a4;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F258, &qword_22A57E3A8);
  v4[79] = swift_task_alloc();
  v5 = sub_22A4DC6EC();
  v4[80] = v5;
  v4[81] = *(v5 - 8);
  v4[82] = swift_task_alloc();
  v6 = sub_22A4DCCAC();
  v4[83] = v6;
  v4[84] = *(v6 - 8);
  v4[85] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v4[86] = v7;
  v4[87] = *(v7 - 8);
  v4[88] = swift_task_alloc();
  v8 = sub_22A4DCC4C();
  v4[89] = v8;
  v4[90] = *(v8 - 8);
  v4[91] = swift_task_alloc();
  v9 = sub_22A4DCD0C();
  v4[92] = v9;
  v4[93] = *(v9 - 8);
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296CDA58, 0, 0);
}

uint64_t sub_2296CDA58()
{
  v31 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_0(*(v0 + 600) *(*(v0 + 600) + 24))];
  if (v1 && (v2 = v1, v3 = [v1 matterDevice], v2, v3))
  {
    v4 = *(v0 + 608);
    v5 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    v6 = MEMORY[0x277D17450];
    *(v0 + 80) = v5;
    *(v0 + 88) = v6;
    *(v0 + 56) = v3;
    sub_229557188((v0 + 56), v0 + 16);

    return MEMORY[0x2822009F8](sub_2296CDF30, v4, 0);
  }

  else
  {
    if (qword_27D87BA18 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 600);
    v8 = sub_22A4DD07C();
    __swift_project_value_buffer(v8, qword_27D8AB8D8);
    sub_22957F1C4(v7, v0 + 96);
    sub_22957F1C4(v7, v0 + 136);
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCCC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 704);
      v12 = *(v0 + 696);
      v29 = *(v0 + 688);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, v30);
      *(v13 + 12) = 2080;
      v15 = [*__swift_project_boxed_opaque_existential_0((v0 + 96) *(v0 + 120))];
      v16 = sub_22A4DD5EC();
      v18 = v17;

      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      v19 = sub_2295A3E30(v16, v18, v30);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2080;
      v20 = [*__swift_project_boxed_opaque_existential_0((v0 + 136) *(v0 + 160))];
      sub_22A4DB79C();

      sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v21 = sub_22A4DE5CC();
      v23 = v22;
      (*(v12 + 8))(v11, v29);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      v24 = sub_2295A3E30(v21, v23, v30);

      *(v13 + 24) = v24;
      _os_log_impl(&dword_229538000, v9, v10, "[%s:%s/%s] Device not supported (no matterDevice)", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    v25 = objc_opt_self();
    v26 = sub_22A4DD5AC();
    [v25 hmfErrorWithCode:3 reason:v26];

    swift_willThrow();

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_2296CDF30()
{
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 168);
  v0[101] = v2;
  if (v2)
  {
    v0[102] = *(v0[76] + 176);
    swift_unknownObjectRetain();
    v3 = sub_2296CDFDC;
  }

  else
  {
    v3 = sub_2296CF888;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296CDFDC()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[93];
  v4 = v0[92];
  swift_getObjectType();
  sub_22A4DC5BC();
  swift_unknownObjectRelease();
  (*(v3 + 32))(v1, v2, v4);
  v5 = swift_task_alloc();
  v0[103] = v5;
  *v5 = v0;
  v5[1] = sub_2296CE0D8;
  v6 = v0[77];

  return MEMORY[0x282171558](v0 + 2, v6);
}

uint64_t sub_2296CE0D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 832) = a1;
  *(v3 + 840) = v1;

  if (v1)
  {
    v4 = sub_2296CFC9C;
  }

  else
  {
    v4 = sub_2296CE1F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296CE1F0()
{
  v49 = v0;
  v1 = v0[104];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  sub_22A4DCC1C();
  LOBYTE(v1) = sub_2296C8E8C(v2, v1, MEMORY[0x277D173C8], &qword_27D87F268, MEMORY[0x277D173C8], MEMORY[0x277D173D0]);
  (*(v3 + 8))(v2, v4);
  if (v1)
  {

    v5 = swift_task_alloc();
    v0[106] = v5;
    *v5 = v0;
    v5[1] = sub_2296CE830;
    v6 = v0[77];

    return MEMORY[0x282171788](v0 + 2, v6);
  }

  else
  {
    if (qword_27D87BA18 != -1)
    {
      swift_once();
    }

    v7 = v0[94];
    v8 = v0[93];
    v9 = v0[92];
    v10 = v0[77];
    v11 = v0[75];
    v12 = sub_22A4DD07C();
    __swift_project_value_buffer(v12, qword_27D8AB8D8);
    sub_22957F1C4(v11, (v0 + 22));
    sub_22957F1C4(v11, (v0 + 27));
    (*(v8 + 16))(v7, v10, v9);

    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCCC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[94];
    v17 = v0[93];
    if (v15)
    {
      v45 = v0[89];
      v47 = v14;
      v18 = v0[88];
      v19 = v0[87];
      v42 = v0[86];
      v43 = v0[92];
      v44 = v0[104];
      v20 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48[0] = v46;
      *v20 = 136316162;
      *(v20 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, v48);
      *(v20 + 12) = 2080;
      v21 = [*__swift_project_boxed_opaque_existential_0(v0 + 22 v0[25])];
      v22 = sub_22A4DD5EC();
      v24 = v23;

      __swift_destroy_boxed_opaque_existential_0(v0 + 22);
      v25 = sub_2295A3E30(v22, v24, v48);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2080;
      v26 = [*__swift_project_boxed_opaque_existential_0(v0 + 27 v0[30])];
      sub_22A4DB79C();

      sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = sub_22A4DE5CC();
      v29 = v28;
      (*(v19 + 8))(v18, v42);
      __swift_destroy_boxed_opaque_existential_0(v0 + 27);
      v30 = sub_2295A3E30(v27, v29, v48);

      *(v20 + 24) = v30;
      *(v20 + 32) = 512;
      LOWORD(v30) = sub_22A4DCCFC();
      v31 = *(v17 + 8);
      v31(v16, v43);
      *(v20 + 34) = v30;
      *(v20 + 36) = 2080;
      v32 = MEMORY[0x22AAD0A20](v44, v45);
      v34 = v33;

      v35 = sub_2295A3E30(v32, v34, v48);

      *(v20 + 38) = v35;
      _os_log_impl(&dword_229538000, v13, v47, "[%s:%s/%s] Device Endpoint 0x%hx - no Binding server cluster: %s", v20, 0x2Eu);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    else
    {
      v31 = *(v17 + 8);
      v31(v0[94], v0[92]);

      __swift_destroy_boxed_opaque_existential_0(v0 + 27);
      __swift_destroy_boxed_opaque_existential_0(v0 + 22);
    }

    v36 = v0[100];
    v37 = v0[92];
    v38 = objc_opt_self();
    v39 = sub_22A4DD5AC();
    [v38 hmfErrorWithCode:3 reason:v39];

    swift_willThrow();
    v31(v36, v37);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_2296CE830(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 856) = a1;
  *(v3 + 864) = v1;

  if (v1)
  {
    v4 = sub_2296CFDD4;
  }

  else
  {
    v4 = sub_2296CE948;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296CE948()
{
  v110 = v0;
  if (qword_27D87BA18 != -1)
  {
    swift_once();
  }

  v1 = v0[98];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[77];
  v5 = v0[75];
  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D8AB8D8);
  sub_22957F1C4(v5, (v0 + 32));
  sub_22957F1C4(v5, (v0 + 37));
  v106 = *(v2 + 16);
  v106(v1, v4, v3);

  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  if (os_log_type_enabled(v7, v8))
  {
    v101 = v0[107];
    v92 = v0[98];
    v93 = v0[93];
    v9 = v0[88];
    v10 = v0[87];
    v91 = v0[86];
    v95 = v0[92];
    v97 = v0[83];
    v11 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v109 = v104;
    *v11 = 136316162;
    *(v11 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v109);
    *(v11 + 12) = 2080;
    v12 = [*__swift_project_boxed_opaque_existential_0(v0 + 32 v0[35])];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    v16 = sub_2295A3E30(v13, v15, &v109);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2080;
    v17 = [*__swift_project_boxed_opaque_existential_0(v0 + 37 v0[40])];
    sub_22A4DB79C();

    sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_22A4DE5CC();
    v20 = v19;
    (*(v10 + 8))(v9, v91);
    __swift_destroy_boxed_opaque_existential_0(v0 + 37);
    v21 = sub_2295A3E30(v18, v20, &v109);

    *(v11 + 24) = v21;
    *(v11 + 32) = 512;
    LOWORD(v21) = sub_22A4DCCFC();
    v22 = *(v93 + 8);
    v22(v92, v95);
    *(v11 + 34) = v21;
    *(v11 + 36) = 2080;
    v23 = MEMORY[0x22AAD0A20](v101, v97);
    v25 = sub_2295A3E30(v23, v24, &v109);

    *(v11 + 38) = v25;
    _os_log_impl(&dword_229538000, v7, v8, "[%s:%s/%s] Device Endpoint 0x%hx - current bindings: %s", v11, 0x2Eu);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v104, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  else
  {
    v22 = *(v0[93] + 8);
    v22(v0[98], v0[92]);

    __swift_destroy_boxed_opaque_existential_0(v0 + 37);
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  }

  v105 = v22;
  v0[109] = v22;
  v26 = v0[100];
  v27 = v0[97];
  v28 = v0[92];
  (*(v0[81] + 16))(v0[82], v0[78], v0[80]);
  v106(v27, v26, v28);
  if (qword_27D87BA20 != -1)
  {
    swift_once();
  }

  v29 = v0[107];
  v30 = v0[90];
  v31 = v0[89];
  v32 = v0[85];
  v33 = v0[84];
  v34 = v0[83];
  v35 = v0[79];
  v36 = __swift_project_value_buffer(v31, qword_27D8AB8F0);
  (*(v30 + 16))(v35, v36, v31);
  (*(v30 + 56))(v35, 0, 1, v31);
  sub_22A4DCC8C();
  v37 = sub_2296CC958(v29, v32);
  v0[110] = v37;
  (*(v33 + 8))(v32, v34);
  v38 = sub_229672658(v29);

  v40 = sub_229672658(v39);

  v41 = sub_2296CBEE8(v38, v40);

  v42 = v0[92];
  v43 = v0[77];
  v44 = v0[75];
  if (v41)
  {
    v45 = v0[96];

    sub_22957F1C4(v44, (v0 + 52));
    sub_22957F1C4(v44, (v0 + 57));
    v106(v45, v43, v42);
    v46 = sub_22A4DD05C();
    v47 = sub_22A4DDCCC();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[100];
    v50 = v0[96];
    v51 = v0[92];
    if (v48)
    {
      v102 = v47;
      v52 = v0[88];
      v107 = v0[100];
      v53 = v0[87];
      v96 = v0[86];
      v54 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v109 = v99;
      *v54 = 136315906;
      *(v54 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v109);
      *(v54 + 12) = 2080;
      v55 = [*__swift_project_boxed_opaque_existential_0(v0 + 52 v0[55])];
      v56 = sub_22A4DD5EC();
      v58 = v57;

      __swift_destroy_boxed_opaque_existential_0(v0 + 52);
      v59 = sub_2295A3E30(v56, v58, &v109);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2080;
      v60 = [*__swift_project_boxed_opaque_existential_0(v0 + 57 v0[60])];
      sub_22A4DB79C();

      sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v61 = sub_22A4DE5CC();
      v63 = v62;
      (*(v53 + 8))(v52, v96);
      __swift_destroy_boxed_opaque_existential_0(v0 + 57);
      v64 = sub_2295A3E30(v61, v63, &v109);

      *(v54 + 24) = v64;
      *(v54 + 32) = 512;
      LOWORD(v64) = sub_22A4DCCFC();
      v105(v50, v51);
      *(v54 + 34) = v64;
      _os_log_impl(&dword_229538000, v46, v102, "[%s:%s/%s] Device Endpoint 0x%hx - bindings already have correct values", v54, 0x24u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v99, -1, -1);
      MEMORY[0x22AAD4E50](v54, -1, -1);

      v105(v107, v51);
      v65 = v0 + 2;
    }

    else
    {
      v105(v0[96], v0[92]);

      v105(v49, v51);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      __swift_destroy_boxed_opaque_existential_0(v0 + 57);
      v65 = v0 + 52;
    }

    __swift_destroy_boxed_opaque_existential_0(v65);

    v87 = v0[1];

    return v87();
  }

  else
  {
    v66 = v0[95];
    sub_22957F1C4(v0[75], (v0 + 42));
    sub_22957F1C4(v44, (v0 + 47));
    v106(v66, v43, v42);

    v67 = sub_22A4DD05C();
    v68 = sub_22A4DDCCC();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v0[95];
    if (v69)
    {
      v108 = v68;
      v71 = v0[88];
      v72 = v0[87];
      v94 = v0[86];
      v98 = v0[92];
      v100 = v0[83];
      v73 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v109 = v103;
      *v73 = 136316162;
      *(v73 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v109);
      *(v73 + 12) = 2080;
      v74 = [*__swift_project_boxed_opaque_existential_0(v0 + 42 v0[45])];
      v75 = sub_22A4DD5EC();
      v77 = v76;

      __swift_destroy_boxed_opaque_existential_0(v0 + 42);
      v78 = sub_2295A3E30(v75, v77, &v109);

      *(v73 + 14) = v78;
      *(v73 + 22) = 2080;
      v79 = [*__swift_project_boxed_opaque_existential_0(v0 + 47 v0[50])];
      sub_22A4DB79C();

      sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v80 = sub_22A4DE5CC();
      v82 = v81;
      (*(v72 + 8))(v71, v94);
      __swift_destroy_boxed_opaque_existential_0(v0 + 47);
      v83 = sub_2295A3E30(v80, v82, &v109);

      *(v73 + 24) = v83;
      *(v73 + 32) = 512;
      LOWORD(v83) = sub_22A4DCCFC();
      v105(v70, v98);
      *(v73 + 34) = v83;
      *(v73 + 36) = 2080;
      v84 = MEMORY[0x22AAD0A20](v37, v100);
      v86 = sub_2295A3E30(v84, v85, &v109);

      *(v73 + 38) = v86;
      _os_log_impl(&dword_229538000, v67, v108, "[%s:%s/%s] Device Endpoint 0x%hx - updating binding to: %s", v73, 0x2Eu);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v103, -1, -1);
      MEMORY[0x22AAD4E50](v73, -1, -1);
    }

    else
    {
      v105(v0[95], v0[92]);

      __swift_destroy_boxed_opaque_existential_0(v0 + 47);
      __swift_destroy_boxed_opaque_existential_0(v0 + 42);
    }

    v89 = swift_task_alloc();
    v0[111] = v89;
    *v89 = v0;
    v89[1] = sub_2296CF620;
    v90 = v0[77];

    return MEMORY[0x282171790](v37, v0 + 2, v90);
  }
}

uint64_t sub_2296CF620()
{
  *(*v1 + 896) = v0;

  if (v0)
  {
    v2 = sub_2296CFF0C;
  }

  else
  {
    v2 = sub_2296CF754;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296CF754()
{
  (*(v0 + 872))(*(v0 + 800), *(v0 + 736));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296CF888()
{
  v25 = v0;
  if (qword_27D87BA18 != -1)
  {
    swift_once();
  }

  v1 = v0[75];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8AB8D8);
  sub_22957F1C4(v1, (v0 + 62));
  sub_22957F1C4(v1, (v0 + 67));
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[88];
    v6 = v0[87];
    v23 = v0[86];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, v24);
    *(v7 + 12) = 2080;
    v9 = [*__swift_project_boxed_opaque_existential_0(v0 + 62 v0[65])];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
    v13 = sub_2295A3E30(v10, v12, v24);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    v14 = [*__swift_project_boxed_opaque_existential_0(v0 + 67 v0[70])];
    sub_22A4DB79C();

    sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_22A4DE5CC();
    v17 = v16;
    (*(v6 + 8))(v5, v23);
    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
    v18 = sub_2295A3E30(v15, v17, v24);

    *(v7 + 24) = v18;
    _os_log_impl(&dword_229538000, v3, v4, "[%s:%s/%s] Unable to read the server endpoint (server already dead?)", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  }

  v19 = objc_opt_self();
  v20 = sub_22A4DD5AC();
  [v19 hmfErrorWithCode:3 reason:v20];

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v21 = v0[1];

  return v21();
}

uint64_t sub_2296CFC9C()
{
  (*(v0[93] + 8))(v0[100], v0[92]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2296CFDD4()
{
  (*(v0[93] + 8))(v0[100], v0[92]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2296CFF0C()
{
  (*(v0 + 872))(*(v0 + 800), *(v0 + 736));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296D0048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F258, &qword_22A57E3A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296D00B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HMMediaPlaybackState.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E55;
      case 1:
        v2 = 2036427856;
        return v2 | 0x676E6900000000;
      case 2:
        return 0x646573756150;
    }

    return 0x746C7561666564;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v2 = 1801807187;
      return v2 | 0x676E6900000000;
    }

    if (a1 == 6)
    {
      v2 = 1684107084;
      return v2 | 0x676E6900000000;
    }

    return 0x746C7561666564;
  }

  if (a1 == 3)
  {
    return 0x646570706F7453;
  }

  else
  {
    return 0x7075727265746E49;
  }
}

uint64_t sub_2296D0208()
{
  v1 = *v0;
  if (*v0 <= 2)
  {
    if (!v1)
    {
      return 0x6E776F6E6B6E55;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x646573756150;
      }

      return 0x746C7561666564;
    }

    v3 = 2036427856;
    return v3 | 0x676E6900000000;
  }

  if (v1 > 4)
  {
    if (v1 == 5)
    {
      v3 = 1801807187;
    }

    else
    {
      if (v1 != 6)
      {
        return 0x746C7561666564;
      }

      v3 = 1684107084;
    }

    return v3 | 0x676E6900000000;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {
      return 0x7075727265746E49;
    }

    return 0x746C7561666564;
  }

  return 0x646570706F7453;
}

uint64_t *ACWGKeyManager.shared.unsafeMutableAddressor()
{
  if (qword_281402D28 != -1)
  {
    swift_once();
  }

  return &static ACWGKeyManager.shared;
}

id sub_2296D0354(char a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() CKKSControlObject:a1 & 1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_22A4DB3EC();

    swift_willThrow();
  }

  return v1;
}

id sub_2296D0418(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16 = 0;
  v15 = 1;
  v6 = sub_22A4DBCFC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &v15;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = &v16;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2296DCBB0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_22957A47C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2296DBBF4;
  aBlock[3] = &block_descriptor_98;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  [v3 unsafeSynchronousBlock_];
  _Block_release(v9);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      v12 = v16;
      if (!v16)
      {
        [objc_opt_self() hmErrorWithCode_];
      }

      swift_willThrow();
      v13 = v12;
    }
  }

  return result;
}

id sub_2296D0608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16 = 0;
  v15 = 2;
  v6 = sub_22A4DBCFC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &v15;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = &v16;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2296DCC08;
  *(v8 + 24) = v7;
  aBlock[4] = sub_22957A47C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2296DBBF4;
  aBlock[3] = &block_descriptor_108;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  [v3 unsafeSynchronousBlock_];
  _Block_release(v9);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v12) = v15;
    if (v15 == 2)
    {
      v12 = v16;
      if (!v16)
      {
        [objc_opt_self() hmErrorWithCode_];
      }

      swift_willThrow();
      v13 = v12;
    }

    else
    {
    }

    return (v12 & 1);
  }

  return result;
}

uint64_t sub_2296D0818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D8, &unk_22A57E5D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v26 = 0;
  updated = _s21MobileAssetUpdateInfoVMa(0);
  v12 = *(updated - 8);
  (*(v12 + 56))(v10, 1, 1, updated);
  v13 = sub_22A4DBCFC();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v10;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = &v26;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2296DCA80;
  *(v15 + 24) = v14;
  aBlock[4] = sub_2295704E8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2296DBBF4;
  aBlock[3] = &block_descriptor_17;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  [v24 unsafeSynchronousBlock_];
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    sub_2296DCA90(v10, v8);
    if ((*(v12 + 48))(v8, 1, updated) == 1)
    {
      v19 = v17;
      sub_22953EAE4(v8, &qword_27D87F2D8, &unk_22A57E5D0);
      v20 = v26;
      if (!v26)
      {
        [objc_opt_self() hmErrorWithCode_];
      }

      swift_willThrow();
      v21 = v20;

      sub_22953EAE4(v10, &qword_27D87F2D8, &unk_22A57E5D0);
    }

    else
    {

      sub_229669368(v8, v23);
      sub_22953EAE4(v10, &qword_27D87F2D8, &unk_22A57E5D0);
    }
  }

  return result;
}

void sub_2296D0B68()
{
  v0 = [objc_opt_self() systemStore];
  v1 = type metadata accessor for ACWGKeyManager();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v2[14] = sub_22A4DBA1C();
  v2[15] = v0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = v0;
  v4 = objc_msgSendSuper2(&v5, sel_init);

  static ACWGKeyManager.shared = v4;
}

uint64_t static ACWGKeyManager.shared.getter()
{
  if (qword_281402D28 != -1)
  {
    swift_once();
  }
}

uint64_t ACWGKeyManager.getOrCreateIssuerKeyPairExternalRepresentation(withHomeUUID:shouldRoll:flow:requireCloudFetch:shouldAwaitOnPush:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 48) = a3;
  *(v6 + 56) = v5;
  *(v6 + 35) = a5;
  *(v6 + 34) = a4;
  *(v6 + 33) = a2;
  *(v6 + 40) = a1;
  return MEMORY[0x2822009F8](sub_2296D0D04, v5, 0);
}

uint64_t sub_2296D0D04()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 35);
  v4 = *(v0 + 34);
  v5 = *(v0 + 33);
  v6 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *(v7 + 41) = v4;
  *(v7 + 42) = v3;
  v11 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
  *v8 = v0;
  v8[1] = sub_2296D0E34;

  return v11(v0 + 16, &unk_22A57E490, v7, v9);
}

uint64_t sub_2296D0E34()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_2296D0F78;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2296D0F58;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296D0F78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296D0FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v7 + 90) = a7;
  *(v7 + 89) = a6;
  *(v7 + 88) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2296D1010, a3, 0);
}

uint64_t sub_2296D1010()
{
  v1 = *(v0 + 90);
  v2 = *(v0 + 89);
  v3 = *(v0 + 88);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v3;
  *(v4 + 33) = v2;
  *(v4 + 34) = v1;
  v5 = sub_22A4DD5EC();
  v7 = v6;
  *(v0 + 56) = v6;
  v8 = sub_22A4DBCEC();
  v10 = v9;
  *(v0 + 64) = v9;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
  *v11 = v0;
  v11[1] = sub_2296D115C;
  v12 = *(v0 + 24);
  v13 = *(v0 + 16);

  return MEMORY[0x2821677F0](v13, v12, v5, v7, v8, v10, &unk_22A57E5F0, v4);
}

uint64_t sub_2296D115C()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_2296D12B0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2296D12B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296D1328(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = *(v1 + 42);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_2296D0FE0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2296D1404(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v6 + 747) = a6;
  *(v6 + 746) = a5;
  *(v6 + 745) = a4;
  *(v6 + 304) = a2;
  *(v6 + 312) = a3;
  *(v6 + 296) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v6 + 320) = swift_task_alloc();
  v8 = sub_22A4DB7DC();
  *(v6 + 328) = v8;
  v9 = *(v8 - 8);
  *(v6 + 336) = v9;
  *(v6 + 344) = *(v9 + 64);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F308, &qword_22A586680);
  *(v6 + 384) = v10;
  *(v6 + 392) = *(v10 - 8);
  *(v6 + 400) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296D1604, a2, 0);
}

uint64_t sub_2296D1604()
{
  sub_22A4DBD0C();
  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_2296D16E4;
  v2 = *(v0 + 312);

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)(v0 + 144, v2);
}

uint64_t sub_2296D16E4()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 416) = v0;
  *(v3 + 424) = *(v3 + 144);
  *(v3 + 440) = *(v2 + 176);

  if (v0)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 304);

    return MEMORY[0x2822009F8](sub_2296D1904, v7, 0);
  }
}

uint64_t sub_2296D1904()
{
  v1 = *(v0 + 432);
  if (v1 >> 60 == 15 || (*(v0 + 745) & 1) != 0)
  {
    v6 = swift_task_alloc();
    *(v0 + 448) = v6;
    *v6 = v0;
    v6[1] = sub_2296D1AD0;

    return sub_2296D6210();
  }

  else
  {
    v2 = *(v0 + 424);
    sub_22956C148(v2, *(v0 + 432));
    sub_22A4DBD0C();
    sub_229590D18(v2, v1);
    v3 = *(v0 + 296);
    *v3 = *(v0 + 424);
    *(v3 + 16) = 0;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2296D1AD0(char a1)
{
  v2 = *(*v1 + 304);
  *(*v1 + 748) = a1;

  return MEMORY[0x2822009F8](sub_2296D1C14, v2, 0);
}

uint64_t sub_2296D1C14()
{
  if ((*(v0 + 748) & 1) == 0 && *(v0 + 746))
  {
    v2 = *(v0 + 424);
    v1 = *(v0 + 432);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A5921A0);
    MEMORY[0x22AAD08C0](0x65736C6166, 0xE500000000000000);
    MEMORY[0x22AAD08C0](0xD000000000000015, 0x800000022A5921E0);
    MEMORY[0x22AAD08C0](1702195828, 0xE400000000000000);
    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    sub_22A4DBD3C();

    v3 = [objc_opt_self() hmfErrorWithCode_];
LABEL_8:
    v3;
    swift_willThrow();
    sub_229590D18(v2, v1);
    goto LABEL_9;
  }

  v4 = *MEMORY[0x277CDC190];
  *(v0 + 456) = *MEMORY[0x277CDC190];
  if (!v4)
  {
    v2 = *(v0 + 424);
    v1 = *(v0 + 432);
    sub_22A4DBD3C();
    v3 = [objc_opt_self() hmfErrorWithCode_];
    goto LABEL_8;
  }

  v5 = *(v0 + 416);
  v6 = sub_22A4DD5EC();
  v8 = v7;
  *(v0 + 464) = v6;
  *(v0 + 472) = v7;
  sub_229562F68(0, &qword_281401C60, 0x277CDBD00);
  v9 = v4;
  v10 = sub_2296D0354(1);
  *(v0 + 480) = v10;
  if (v5)
  {
    v12 = *(v0 + 424);
    v11 = *(v0 + 432);

    sub_229590D18(v12, v11);

LABEL_9:

    v13 = *(v0 + 8);

    return v13();
  }

  if (*(v0 + 748) == 1 && *(v0 + 746))
  {
    v15 = v10;
    v16 = swift_allocObject();
    *(v0 + 488) = v16;
    v16[2] = v15;
    v16[3] = v6;
    v16[4] = v8;
    v17 = v15;

    return MEMORY[0x2822009F8](sub_2296D20B4, 0, 0);
  }

  else
  {

    v19 = *(v0 + 432);
    v18 = *(v0 + 440);
    v20 = *(v0 + 424);
    *(v0 + 584) = v19;
    *(v0 + 576) = v20;
    *(v0 + 568) = v18;
    v21 = [objc_opt_self() createNIST256KeyPair];
    if (!v21)
    {
      v27 = *(v0 + 480);

      sub_22A4DBD3C();
      [objc_opt_self() hmErrorWithCode_];
      swift_willThrow();
      sub_229590D18(v20, v19);

      goto LABEL_9;
    }

    v22 = v21;
    v23 = sub_22A4DB62C();
    v25 = v24;

    *(v0 + 592) = v23;
    *(v0 + 600) = v25;
    v26 = swift_task_alloc();
    *(v0 + 608) = v26;
    *v26 = v0;
    v26[1] = sub_2296D2E6C;

    return sub_2296DB2A4();
  }
}

uint64_t sub_2296D20B4()
{
  v1 = v0[61];
  v2 = swift_task_alloc();
  v0[62] = v2;
  v2[2] = &unk_22A57E620;
  v2[3] = v1;
  v2[4] = 0x4039000000000000;
  v3 = swift_task_alloc();
  v0[63] = v3;
  *v3 = v0;
  v3[1] = sub_2296D21E4;

  return MEMORY[0x282200740]();
}

uint64_t sub_2296D21E4()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = *(v2 + 456);

    v4 = sub_2296D25DC;
  }

  else
  {

    v4 = sub_2296D2368;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296D2368()
{

  v1 = swift_task_alloc();
  *(v0 + 520) = v1;
  *v1 = v0;
  v1[1] = sub_2296D2434;
  v2 = *(v0 + 312);

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)(v0 + 224, v2);
}

uint64_t sub_2296D2434()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 528) = v0;
  *(v3 + 536) = *(v3 + 224);
  *(v3 + 552) = *(v2 + 256);

  if (v0)
  {
    v4 = *(v3 + 456);
    v5 = *(v3 + 304);

    v6 = sub_2296D42F8;
  }

  else
  {
    v5 = *(v3 + 304);

    v6 = sub_2296D2760;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2296D25DC()
{
  v1 = *(v0 + 304);

  return MEMORY[0x2822009F8](sub_2296D2674, v1, 0);
}

uint64_t sub_2296D2674()
{
  v1 = v0[60];
  sub_229590D18(v0[53], v0[54]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2296D2760()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 745);
  sub_229590D18(*(v0 + 424), *(v0 + 432));
  v3 = *(v0 + 480);
  if (v1 >> 60 == 15 || (v2 & 1) != 0)
  {
    v14 = *(v0 + 456);
    v11 = *(v0 + 392);
    v10 = *(v0 + 400);
    v12 = *(v0 + 384);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 744;
    *(v0 + 24) = sub_2296D2A6C;
    swift_continuation_init();
    *(v0 + 136) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v11 + 32))(boxed_opaque_existential_1, v10, v12);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_229862B74;
    *(v0 + 104) = &block_descriptor_142;
    [v3 initialSyncStatus:v14 reply:v0 + 80];
    (*(v11 + 8))(boxed_opaque_existential_1, v12);

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 456);
    sub_2295AEF1C(v5, v4);

    sub_22A4DBD0C();
    sub_229590D18(v5, v4);

    v7 = *(v0 + 296);
    *v7 = *(v0 + 536);
    *(v7 + 16) = 0;

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2296D2A6C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 560) = v2;
  if (v2)
  {
    v3 = *(v1 + 304);

    v4 = sub_2296D43E4;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 304);
    v4 = sub_2296D2BE0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2296D2BE0()
{
  v1 = *(v0 + 744);

  if (v1 == 1)
  {
    v2 = *(v0 + 552);
    v3 = *(v0 + 544);
    v4 = *(v0 + 536);
    *(v0 + 584) = v3;
    *(v0 + 576) = v4;
    *(v0 + 568) = v2;
    v5 = [objc_opt_self() createNIST256KeyPair];
    if (v5)
    {
      v6 = v5;
      v7 = sub_22A4DB62C();
      v9 = v8;

      *(v0 + 592) = v7;
      *(v0 + 600) = v9;
      v10 = swift_task_alloc();
      *(v0 + 608) = v10;
      *v10 = v0;
      v10[1] = sub_2296D2E6C;

      return sub_2296DB2A4();
    }

    v12 = *(v0 + 480);

    sub_22A4DBD3C();
    v13 = [objc_opt_self() hmErrorWithCode_];
  }

  else
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 536);
    v12 = *(v0 + 480);

    sub_22A4DBD3C();
    v13 = [objc_opt_self() hmfErrorWithCode_];
  }

  v13;
  swift_willThrow();
  sub_229590D18(v4, v3);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2296D2E6C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[77] = a1;
  v4[78] = a2;
  v4[79] = v2;

  if (v2)
  {
    v5 = v4[38];

    v6 = sub_2296D44EC;
    v7 = v5;
  }

  else
  {
    v7 = v4[38];
    v6 = sub_2296D2FE8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_2296D2FE8()
{
  v1 = [objc_opt_self() driver];
  v2 = sub_2297B37F8();
  *(v0 + 640) = v2;

  return MEMORY[0x2822009F8](sub_2296D30B4, v2, 0);
}

uint64_t sub_2296D30B4()
{
  v1 = v0[80];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = v2;

    v0[82] = v3;
    v4 = v0[38];

    return MEMORY[0x2822009F8](sub_2296D33C8, v4, 0);
  }

  else
  {
    v5 = sub_2296DC6A4();
    v6 = swift_task_alloc();
    v0[81] = v6;
    v7 = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    *v6 = v0;
    v6[1] = sub_2296D324C;
    v8 = v0[80];

    return MEMORY[0x2822007B8](v0 + 35, v1, v5, 0x29287469617761, 0xE700000000000000, sub_2296DD574, v8, v7);
  }
}

uint64_t sub_2296D324C()
{
  v1 = *v0;

  v1[82] = v1[35];
  v2 = v1[38];

  return MEMORY[0x2822009F8](sub_2296D33C8, v2, 0);
}

uint64_t sub_2296D33C8()
{
  v1 = [*(v0 + 656) appleAccountManager];
  if (!v1)
  {
LABEL_27:
    __break(1u);
  }

  v2 = v1;
  v3 = [v1 device];

  if (!v3)
  {

LABEL_9:
    v11 = *(v0 + 656);
    v12 = *(v0 + 600);
    v13 = *(v0 + 592);
    v14 = *(v0 + 584);
    v15 = *(v0 + 576);
    v16 = *(v0 + 480);
    sub_22A4DBD3C();
    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    sub_229590D18(v15, v14);

    sub_2295798D4(v13, v12);
LABEL_10:

    v17 = *(v0 + 8);

    return v17();
  }

  v4 = [v3 idsIdentifier];

  if (v4)
  {
    sub_22A4DB79C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v0 + 368);
  v7 = *(v0 + 376);
  v8 = *(v0 + 328);
  v9 = *(v0 + 336);
  (*(v9 + 56))(v6, v5, 1, v8);
  sub_229564B0C(v6, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v10 = *(v0 + 376);

    sub_22953EAE4(v10, &unk_27D87D2A0, &unk_22A578BD0);
    goto LABEL_9;
  }

  v19 = *(v0 + 568);
  v20 = *(v0 + 376);
  v21 = *(v0 + 328);
  v22 = *(v0 + 336);
  sub_22A4DB76C();
  v23 = *(v22 + 8);
  *(v0 + 664) = v23;
  *(v0 + 672) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v20, v21);
  v24 = objc_opt_self();
  v25 = sub_22A4DB61C();
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v26 = v25;
  v69 = v23;
  v70 = *(v0 + 304);
  v27 = sub_22A4DB77C();
  v28 = [objc_allocWithZone(MEMORY[0x277D0F7F0]) init];
  v29 = sub_22A4DD5AC();

  v30 = sub_22A4DD5AC();

  v31 = [v24 createIssuerKeyV2KeychainItemWithKeyPairExternalRepresentation:v26 generationCounter:v19 + 1 homeUUID:v27 dateProvider:v28 accountIdentifier:v29 idsIdentifier:v30];
  *(v0 + 680) = v31;

  sub_22A4DBD0C();
  v32 = *(v70 + 120);
  *(v0 + 288) = 0;
  v33 = [v32 addKeychainItem:v31 error:v0 + 288];
  v34 = *(v0 + 288);
  if (!v33)
  {
    v51 = *(v0 + 656);
    v72 = *(v0 + 600);
    v52 = *(v0 + 592);
    v53 = *(v0 + 584);
    v54 = *(v0 + 576);
    v55 = *(v0 + 480);
    v56 = v34;

    sub_22A4DB3EC();

    swift_willThrow();
    sub_229590D18(v54, v53);

    sub_2295798D4(v52, v72);
    goto LABEL_10;
  }

  if (*(v0 + 748) == 1)
  {
    v71 = *(v0 + 472);
    v67 = *(v0 + 464);
    v68 = *(v0 + 480);
    v35 = *(v0 + 352);
    v36 = *(v0 + 360);
    v37 = *(v0 + 336);
    v38 = *(v0 + 328);
    v39 = *(v0 + 747);
    v40 = *(v37 + 16);
    v40(v36, *(v0 + 312), v38);
    v40(v35, v36, v38);
    v41 = (*(v37 + 80) + 41) & ~*(v37 + 80);
    v42 = swift_allocObject();
    *(v0 + 688) = v42;
    *(v42 + 16) = v68;
    *(v42 + 24) = v67;
    *(v42 + 32) = v71;
    *(v42 + 40) = v39;
    (*(v37 + 32))(v42 + v41, v36, v38);
    v43 = *(v0 + 480);
    if (v39 == 1)
    {
      v44 = v43;

      v45 = v34;
      v46 = swift_task_alloc();
      *(v0 + 696) = v46;
      *v46 = v0;
      v46[1] = sub_2296D3B18;
      v47 = *(v0 + 472);
      v48 = *(v0 + 480);
      v49 = *(v0 + 464);
      v50 = *(v0 + 352);

      return sub_2296D4BCC(v48, v49, v47, 1, v50);
    }

    v58 = *(v0 + 352);
    v60 = *(v0 + 320);
    v59 = *(v0 + 328);
    v61 = v43;
    v62 = v34;
    v69(v58, v59);
    v63 = sub_22A4DD9DC();
    (*(*(v63 - 8) + 56))(v60, 1, 1, v63);
    v64 = swift_allocObject();
    v64[2] = 0;
    v64[3] = 0;
    v64[4] = &unk_22A57E600;
    v64[5] = v42;
    sub_22957F6B0(0, 0, v60, &unk_22A57E610, v64);
  }

  else
  {
    v57 = v34;
  }

  v65 = swift_task_alloc();
  *(v0 + 712) = v65;
  *v65 = v0;
  v65[1] = sub_2296D3DB8;
  v66 = *(v0 + 312);

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)(v0 + 184, v66);
}

uint64_t sub_2296D3B18()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  v3 = v2[83];
  v4 = v2[44];
  v5 = v2[41];
  v6 = v2[38];
  v3(v4, v5);

  if (v0)
  {
    v7 = sub_2296D45F0;
  }

  else
  {
    v7 = sub_2296D3CEC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2296D3CEC()
{

  v1 = swift_task_alloc();
  *(v0 + 712) = v1;
  *v1 = v0;
  v1[1] = sub_2296D3DB8;
  v2 = *(v0 + 312);

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)(v0 + 184, v2);
}

uint64_t sub_2296D3DB8()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 720) = v0;
  *(v3 + 728) = *(v3 + 184);

  v4 = *(v2 + 304);
  if (v0)
  {
    v5 = sub_2296D4710;
  }

  else
  {

    v5 = sub_2296D3F44;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296D3F44()
{
  v1 = v0[92];
  if (v1 >> 60 == 15)
  {
    v28 = v0[85];
    v2 = v0[82];
    v3 = v0[75];
    v4 = v0[74];
    v5 = v0[73];
    v6 = v0[72];
    v7 = v0[60];
    sub_22A4DBD3C();
    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    sub_229590D18(v6, v5);

    sub_2295798D4(v4, v3);

    v8 = v0[1];
  }

  else
  {
    v9 = v0[85];
    sub_22956C148(v0[91], v1);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000002CLL, 0x800000022A5920A0);
    sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v10);

    MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A5920D0);
    v11 = [v9 account];
    if (v11)
    {
      v12 = v11;
      v13 = sub_22A4DD5EC();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = v0[91];
    v26 = v0[92];
    v27 = v0[85];
    v17 = v0[82];
    v18 = v0[75];
    v19 = v0[74];
    v20 = v0[73];
    v21 = v0[72];
    v22 = v0[60];
    v0[33] = v13;
    v0[34] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
    v23 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v23);

    sub_22A4DBD0C();
    sub_229590D18(v21, v20);

    sub_2295798D4(v19, v18);
    sub_229590D18(v16, v26);

    v24 = v0[37];
    *v24 = *(v0 + 91);
    *(v24 + 16) = 1;

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_2296D42F8()
{
  v1 = v0[60];
  sub_229590D18(v0[53], v0[54]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2296D43E4(uint64_t a1)
{
  v2 = v1[68];
  v3 = v1[67];
  v4 = v1[60];
  v5 = v1[57];
  swift_willThrow();
  sub_229590D18(v3, v2);

  v6 = v1[1];

  return v6();
}

uint64_t sub_2296D44EC()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[60];
  sub_229590D18(v0[72], v0[73]);

  sub_2295798D4(v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2296D45F0()
{
  v1 = v0[85];
  v2 = v0[82];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[60];
  sub_229590D18(v0[72], v0[73]);

  sub_2295798D4(v4, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2296D4710()
{
  v1 = v0[85];
  v2 = v0[82];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[60];
  sub_229590D18(v0[72], v0[73]);

  sub_2295798D4(v4, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2296D4824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296D48F4, 0, 0);
}

uint64_t sub_2296D48F4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v10 = v1[18];
  v7 = sub_22A4DD5AC();
  v1[24] = v7;
  v1[2] = v1;
  v1[3] = sub_2296D4ABC;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229787290;
  v1[13] = &block_descriptor_158;
  [v10 rpcFetchAndProcessChangesIfNoRecentFetch:v7 reply:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2296D4ABC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_2296DD568;
  }

  else
  {
    v2 = sub_2296DD544;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296D4BCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  return MEMORY[0x2822009F8](sub_2296D4BF4, 0, 0);
}

uint64_t sub_2296D4BF4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = swift_allocObject();
  v0[10] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  v0[11] = v6;
  v6[2] = &unk_22A57E660;
  v6[3] = v4;
  v6[4] = 0x4039000000000000;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_2296D4D2C;

  return MEMORY[0x282200740]();
}

uint64_t sub_2296D4D2C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2296D4FD4;
  }

  else
  {

    v2 = sub_2296D4E48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296D4E48()
{
  v1 = *(v0 + 112);

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000027, 0x800000022A592260);
  sub_22A4DB7DC();
  sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v2);

  MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A592240);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v3, v4);

  sub_22A4DBD0C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2296D4FD4()
{
  v1 = *(v0 + 112);

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000031, 0x800000022A592200);
  swift_getErrorValue();
  sub_22A4DE5EC();
  MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A592240);
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v2, v3);

  sub_22A4DBD3C();

  swift_willThrow();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2296D5120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296D51F0, 0, 0);
}

uint64_t sub_2296D51F0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v10 = v1[18];
  v7 = sub_22A4DD5AC();
  v1[24] = v7;
  v1[2] = v1;
  v1[3] = sub_229630704;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229787290;
  v1[13] = &block_descriptor_171;
  [v10 rpcPushOutgoingChanges:v7 reply:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2296D53B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2296D54A4;

  return v7();
}

uint64_t sub_2296D54A4()
{
  *(*v1 + 32) = v0;

  if (v0)
  {

    v2 = sub_2296DD578;
  }

  else
  {
    v2 = sub_2296D55C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296D57A8(uint64_t a1, char a2, void *a3, char a4, char a5, const void *a6, uint64_t a7)
{
  *(v7 + 35) = a5;
  *(v7 + 34) = a4;
  *(v7 + 40) = a3;
  *(v7 + 48) = a7;
  *(v7 + 33) = a2;
  v11 = sub_22A4DB7DC();
  *(v7 + 56) = v11;
  *(v7 + 64) = *(v11 - 8);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = _Block_copy(a6);
  sub_22A4DB79C();
  v12 = a3;

  return MEMORY[0x2822009F8](sub_2296D58C0, a7, 0);
}

uint64_t sub_2296D58C0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 35);
  v3 = *(v0 + 34);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 33);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v1;
  *(v7 + 40) = v6;
  *(v7 + 41) = v3;
  *(v7 + 42) = v2;
  v11 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
  *v8 = v0;
  v8[1] = sub_2296D59F0;

  return v11(v0 + 16, &unk_22A57E5C8, v7, v9);
}

uint64_t sub_2296D59F0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_2296D5C08;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2296D5B18;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296D5B18()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  (*(v4 + 8))(v1, v3);
  v9 = sub_22A4DB61C();
  (v2)[2](v2, v9, v8, 0);

  _Block_release(v2);
  sub_2295798D4(v6, v7);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2296D5C08()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[5];

  (*(v4 + 8))(v3, v5);
  v7 = sub_22A4DB3DC();

  (v2)[2](v2, 0, 0, v7);
  _Block_release(v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2296D5CF8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296D5D9C, 0, 0);
}

uint64_t sub_2296D5D9C()
{
  v1 = v0[6];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_22A4DD9DC();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  sub_229773AF0(v1, &unk_22A57E640, v7);
  sub_22953EAE4(v1, &unk_27D87D8F0, &qword_22A578D70);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  sub_229773AF0(v1, &unk_22A57E650, v8);
  sub_22953EAE4(v1, &unk_27D87D8F0, &qword_22A578D70);
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F310, &unk_22A57B5E0);
  *v9 = v0;
  v9[1] = sub_2296D5F9C;

  return MEMORY[0x2822004D0](v0 + 9, 0, 0, v10);
}

uint64_t sub_2296D5F9C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2296D61AC;
  }

  else
  {
    v2 = sub_2296D60B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296D60B0()
{
  if (*(v0 + 72) == 1)
  {
    [objc_opt_self() hmfErrorWithCode_];
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DDAEC();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296D61AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296D6210()
{
  *(v1 + 40) = v0;

  return MEMORY[0x2822009F8](sub_2296D62A0, v0, 0);
}

uint64_t sub_2296D62A0()
{
  v1 = [objc_opt_self() driver];
  v2 = sub_2297B37F8();
  *(v0 + 48) = v2;

  return MEMORY[0x2822009F8](sub_2296D636C, v2, 0);
}

uint64_t sub_2296D636C()
{
  v1 = v0[6];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = v2;

    v0[8] = v3;
    v4 = v0[5];

    return MEMORY[0x2822009F8](sub_2296D6680, v4, 0);
  }

  else
  {
    v5 = sub_2296DC6A4();
    v6 = swift_task_alloc();
    v0[7] = v6;
    v7 = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    *v6 = v0;
    v6[1] = sub_2296D6504;
    v8 = v0[6];

    return MEMORY[0x2822007B8](v0 + 2, v1, v5, 0x29287469617761, 0xE700000000000000, sub_2296DC708, v8, v7);
  }
}

uint64_t sub_2296D6504()
{
  v1 = *v0;

  v1[8] = v1[2];
  v2 = v1[5];

  return MEMORY[0x2822009F8](sub_2296D6680, v2, 0);
}

id sub_2296D6680()
{
  v1 = [objc_opt_self() sharedSettings];
  if (([v1 isKeychainSyncEnabled] & 1) == 0)
  {
    goto LABEL_6;
  }

  result = [*(v0 + 64) reachabilityMonitor];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result isReachable];

  if ((v4 & 1) == 0)
  {
LABEL_6:
    sub_22A4DBD3C();
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v5 = [objc_allocWithZone(HMDCloudKitReachabilitySource) init];
  *(v0 + 24) = 0;
  v6 = [v5 areCloudKitServersReachableWithError_];
  v7 = *(v0 + 24);
  if (v6 != 1)
  {
    v12 = v7;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000036, 0x800000022A58E220);
    *(v0 + 32) = v7;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D0, &qword_22A57B5F8);
    v14 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v14);

    sub_22A4DBD3C();

    goto LABEL_7;
  }

  v8 = v7;
  sub_22A4DBD0C();

  v9 = 1;
LABEL_8:
  v10 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11(v9);
}

uint64_t ACWGKeyManager.getOrCreateIssuerKeyAndSaveToSharedUserReverseShare(withHomeUUID:context:shouldUpdateLocks:shouldRoll:flow:requireCloudFetch:isOnSharedUserAcceptance:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 36) = a7;
  *(v8 + 35) = a6;
  *(v8 + 56) = a5;
  *(v8 + 64) = v7;
  *(v8 + 34) = a4;
  *(v8 + 33) = a3;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2296D6924, v7, 0);
}

uint64_t sub_2296D6924()
{
  v1 = *(v0 + 36);
  v2 = *(v0 + 35);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 34);
  v6 = *(v0 + 33);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 25) = v5;
  *(v9 + 26) = v2;
  *(v9 + 27) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v7;
  v10 = sub_22A4DD5EC();
  v12 = v11;
  *(v0 + 80) = v11;
  v13 = sub_22A4DBCEC();
  v15 = v14;
  *(v0 + 88) = v14;
  v16 = swift_task_alloc();
  *(v0 + 96) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
  *v16 = v0;
  v16[1] = sub_2296D6A94;
  v17 = *(v0 + 56);

  return MEMORY[0x2821677F0](v0 + 16, v17, v10, v12, v13, v15, &unk_22A57E4B0, v9);
}

uint64_t sub_2296D6A94()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_2296D6BD4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2296DD548;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296D6BD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296D6C50(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = a8;
  *(v8 + 104) = v10;
  *(v8 + 80) = a2;
  *(v8 + 88) = a7;
  *(v8 + 36) = a6;
  *(v8 + 35) = a5;
  *(v8 + 34) = a4;
  *(v8 + 33) = a3;
  *(v8 + 72) = a1;
  return MEMORY[0x2822009F8](sub_2296D6C90, a7, 0);
}

uint64_t sub_2296D6C90()
{
  v18 = *(v0 + 36);
  v1 = *(v0 + 35);
  v2 = *(v0 + 34);
  v3 = *(v0 + 33);
  v19 = *(v0 + 88);
  v20 = *(v0 + 96);
  v17 = *(v0 + 80);
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000003ELL, 0x800000022A591E30);
  sub_22A4DB7DC();
  sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v4 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v4);

  MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A591950);
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v5, v6);

  MEMORY[0x22AAD08C0](0x52646C756F687320, 0xED0000203A6C6C6FLL);
  if (v2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v7, v8);

  MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A591E70);
  if (v1)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v1)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v9, v10);

  MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A591E90);
  if (v18)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v18)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v11, v12);

  sub_22A4DBD0C();

  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *(v13 + 16) = v20;
  *(v13 + 24) = v19;
  *(v13 + 32) = v17;
  *(v13 + 40) = v2;
  *(v13 + 41) = v1;
  *(v13 + 42) = v18 ^ 1;
  v21 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
  *v14 = v0;
  v14[1] = sub_2296D6FD4;

  return v21(v0 + 16, &unk_22A57E5E0, v13, v15);
}

uint64_t sub_2296D6FD4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_2296D73D0;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_2296D70FC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296D70FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  v3 = *(v0 + 32);
  *(v0 + 37) = v3;
  v4 = objc_opt_self();
  v5 = sub_22A4DB61C();
  v6 = [v4 publicKeyExternalRepresentationFromKeyPairExternalRepresentation_];

  if (v6)
  {
    v7 = sub_22A4DB62C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = *(v0 + 128);
  *(v0 + 56) = v7;
  *(v0 + 64) = v9;
  sub_22A4DBD4C();
  if (v10)
  {
    sub_229590D18(*(v0 + 56), *(v0 + 64));
    sub_2295798D4(v1, v2);
    v11 = *(v0 + 8);
LABEL_13:

    return v11();
  }

  v12 = *(v0 + 36);
  sub_229590D18(*(v0 + 56), *(v0 + 64));
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  *(v0 + 152) = v14;
  *(v0 + 160) = v13;
  if (((v3 | v12) & 1) == 0)
  {
LABEL_12:
    v22 = *(v0 + 37);
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v25 = *(v0 + 72);
    sub_2295798D4(v14, v13);
    *v25 = v24;
    *(v25 + 8) = v23;
    *(v25 + 16) = v22;
    v11 = *(v0 + 8);
    goto LABEL_13;
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 80);
  v17 = swift_task_alloc();
  v17[2] = v16;
  v17[3] = v15;
  v17[4] = v14;
  v17[5] = v13;
  sub_2296D0418(sub_2296DCC8C, v17);
  LOBYTE(v15) = *(v0 + 33);

  if ((v15 & 1) == 0)
  {
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    goto LABEL_12;
  }

  sub_22A4DBD0C();
  v18 = sub_22A4DBCDC();
  *(v0 + 168) = v18;
  v19 = swift_task_alloc();
  *(v0 + 176) = v19;
  *v19 = v0;
  v19[1] = sub_2296D7434;
  v20 = *(v0 + 80);

  return sub_2296DAA28(v14, v13, v20, v18);
}

uint64_t sub_2296D73D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296D7434()
{
  v2 = *v1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 88);
  if (v0)
  {

    v5 = sub_2296DD564;
  }

  else
  {

    v5 = sub_2296D7588;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296D7588()
{
  v1 = *(v0 + 37);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 72);
  sub_2295798D4(*(v0 + 152), *(v0 + 160));
  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2296D7608(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  v7 = *(v1 + 26);
  v8 = *(v1 + 27);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229586D38;

  return sub_2296D6C50(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_2296D7700(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229562F68(0, &qword_27D87F300, off_2786663A0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = [a2 managedObjectContext];
  v12 = sub_2296DCCAC(v10, v11);

  if (!v4)
  {
    v13 = sub_22A4DB61C();
    [v12 setMatCredIPKExternalRepresentation_];

    sub_2297082C0();
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000036, 0x800000022A591F50);
    v14 = sub_22A4DB5AC();
    MEMORY[0x22AAD08C0](v14);

    sub_22A4DBD0C();
  }
}

uint64_t sub_2296D7ADC(uint64_t a1, void *a2, char a3, char a4, void *a5, char a6, char a7, const void *a8)
{
  v8[3] = a5;
  v8[4] = v23;
  v8[2] = a2;
  v15 = sub_22A4DB7DC();
  v8[5] = v15;
  v8[6] = *(v15 - 8);
  v16 = swift_task_alloc();
  v8[7] = v16;
  v8[8] = _Block_copy(a8);
  sub_22A4DB79C();
  v17 = a2;
  v18 = a5;

  v19 = swift_task_alloc();
  v8[9] = v19;
  *v19 = v8;
  v19[1] = sub_2296D7C68;

  return ACWGKeyManager.getOrCreateIssuerKeyAndSaveToSharedUserReverseShare(withHomeUUID:context:shouldUpdateLocks:shouldRoll:flow:requireCloudFetch:isOnSharedUserAcceptance:)(v16, v17, a3, a4, a5, a6, a7);
}

uint64_t sub_2296D7C68(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *v4;
  v8 = *v4;

  v9 = v7[8];
  v10 = v7[3];
  v11 = v7[2];
  (*(v7[6] + 8))(v7[7], v7[5]);

  if (v3)
  {
    v12 = sub_22A4DB3DC();

    (v9)[2](v9, 0, 0, v12);
    _Block_release(v9);
  }

  else
  {
    v13 = sub_22A4DB61C();
    (v9)[2](v9, v13, a3 & 1, 0);

    _Block_release(v9);
    sub_2295798D4(a1, a2);
  }

  v14 = v8[1];

  return v14();
}

uint64_t ACWGKeyManager.getOrCreateIssuerKeyAndSaveIfNeeded(home:user:context:shouldRoll:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 33) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  return MEMORY[0x2822009F8](sub_2296D7EF4, v4, 0);
}

uint64_t sub_2296D7EF4()
{
  v1 = *(v0 + 104);
  sub_22A4DBD0C();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  v3 = sub_2296D0608(sub_2296D9124, v2);

  v4 = *(v0 + 120);
  v5 = *(v0 + 33);
  v6 = *(v0 + 96);
  if (v3)
  {
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000002FLL, 0x800000022A591920);
    sub_22A4DB7DC();
    sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v7 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v7);

    MEMORY[0x22AAD08C0](0x495555656D6F6820, 0xEB00000000203A44);
    v8 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v8);

    MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A591950);
    MEMORY[0x22AAD08C0](1702195828, 0xE400000000000000);
    sub_22A4DBD0C();

    v9 = sub_22A4DBCFC();
    *(v0 + 128) = v9;
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v4;
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;
    *(v10 + 41) = 257;
    v24 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
    *v11 = v0;
    v11[1] = sub_2296D8428;

    return v24(v0 + 40, &unk_22A57E4C8, v10, v12);
  }

  else
  {
    v14 = *(v0 + 112);
    v15 = sub_22A4DBCFC();
    *(v0 + 208) = v15;
    v16 = swift_task_alloc();
    *(v0 + 216) = v16;
    *(v16 + 16) = v6;
    *(v16 + 24) = 1;
    *(v16 + 25) = v5;
    *(v16 + 26) = 1;
    *(v16 + 32) = v4;
    *(v16 + 40) = v15;
    *(v16 + 48) = v14;
    v17 = sub_22A4DD5EC();
    v19 = v18;
    *(v0 + 224) = v18;
    v20 = sub_22A4DBCEC();
    v22 = v21;
    *(v0 + 232) = v21;
    v23 = swift_task_alloc();
    *(v0 + 240) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
    *v23 = v0;
    v23[1] = sub_2296D8C7C;

    return MEMORY[0x2821677F0](v0 + 16, v15, v17, v19, v20, v22, &unk_22A57E4C0, v16);
  }
}

uint64_t sub_2296D8428()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_2296D8934;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_2296D8550;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296D8550()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 160) = v2;
  *(v0 + 168) = v1;
  v3 = *(v0 + 56);
  v4 = objc_opt_self();
  v5 = sub_22A4DB61C();
  v6 = [v4 publicKeyExternalRepresentationFromKeyPairExternalRepresentation_];

  if (v6)
  {
    v7 = sub_22A4DB62C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = *(v0 + 152);
  *(v0 + 80) = v7;
  *(v0 + 88) = v9;
  sub_22A4DBD4C();
  sub_229590D18(*(v0 + 80), *(v0 + 88));
  if (v10)
  {
    sub_2295798D4(v2, v1);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000034, 0x800000022A5918E0);
    sub_22A4DB7DC();
    sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v11);

    MEMORY[0x22AAD08C0](0x203A72657375202CLL, 0xE800000000000000);
    v12 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v12);

    sub_22A4DBD3C();

    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    *(v0 + 176) = v15;
    *(v0 + 184) = v16;
    if (v3)
    {
      v18 = *(v0 + 104);
      v17 = *(v0 + 112);
      v19 = swift_task_alloc();
      v19[2] = v18;
      v19[3] = v15;
      v19[4] = v16;
      v19[5] = v17;
      sub_2296D0418(sub_2296DAA08, v19);

      sub_22A4DBD0C();
      v21 = sub_22A4DBCDC();
      *(v0 + 192) = v21;
      v22 = swift_task_alloc();
      *(v0 + 200) = v22;
      *v22 = v0;
      v22[1] = sub_2296D8AC0;
      v23 = *(v0 + 96);

      return sub_2296DAA28(v15, v16, v23, v21);
    }

    else
    {
      sub_2295798D4(v15, v16);
      v20 = *(v0 + 8);

      return v20(v2, v1);
    }
  }
}

uint64_t sub_2296D8934()
{

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000034, 0x800000022A5918E0);
  sub_22A4DB7DC();
  sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v1);

  MEMORY[0x22AAD08C0](0x203A72657375202CLL, 0xE800000000000000);
  v2 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v2);

  sub_22A4DBD3C();

  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2296D8AC0()
{
  v2 = *v1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 120);
  if (v0)
  {

    v5 = sub_2296DD560;
  }

  else
  {

    v5 = sub_2296D8C14;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296D8C14()
{
  sub_2295798D4(v0[22], v0[23]);
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_2296D8C7C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_2296D8E28;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_2296D8DC0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296D8DC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_2296D8E28()
{
  v1 = *(v0 + 208);

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000034, 0x800000022A5918E0);
  sub_22A4DB7DC();
  sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v2);

  MEMORY[0x22AAD08C0](0x203A72657375202CLL, 0xE800000000000000);
  v3 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v3);

  sub_22A4DBD3C();

  swift_willThrow();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2296D8FC4@<X0>(unsigned __int8 *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = sub_22A4DB77C();
  v5 = [v3 findGuestWithModelID_];

  if (v5)
  {
    result = swift_unknownObjectRelease();
    *a1 = 0;
  }

  else
  {
    v7 = sub_22A4DB77C();
    [v3 findUserWithModelID_];

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F8, qword_22A583D30);
    sub_22A4DBD4C();
    result = swift_unknownObjectRelease();
    if (!v1)
    {
      v8 = [v10 isOwner];
      result = swift_unknownObjectRelease();
      *a1 = v8;
    }
  }

  return result;
}

uint64_t sub_2296D92F0(uint64_t a1, uint64_t a2, void *a3, char a4, const void *a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a6;
  v10 = sub_22A4DB7DC();
  v6[4] = v10;
  v6[5] = *(v10 - 8);
  v11 = swift_task_alloc();
  v6[6] = v11;
  v12 = swift_task_alloc();
  v6[7] = v12;
  v6[8] = _Block_copy(a5);
  sub_22A4DB79C();
  sub_22A4DB79C();
  v13 = a3;

  v14 = swift_task_alloc();
  v6[9] = v14;
  *v14 = v6;
  v14[1] = sub_2296D9468;

  return ACWGKeyManager.getOrCreateIssuerKeyAndSaveIfNeeded(home:user:context:shouldRoll:)(v12, v11, v13, a4);
}

uint64_t sub_2296D9468(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 16);
  v10 = *v3;

  v11 = v7[7];
  v12 = v7[4];
  v13 = *(v7[5] + 8);
  v13(v7[6], v12);
  v13(v11, v12);
  if (v4)
  {
    v14 = sub_22A4DB3DC();

    v15 = v14;
    v16 = 0;
  }

  else
  {
    v14 = sub_22A4DB61C();
    sub_2295798D4(a1, a2);
    v16 = v14;
    v15 = 0;
  }

  v17 = v14;
  v18 = v8[8];
  v18[2](v18, v16, v15);

  _Block_release(v18);

  v19 = *(v10 + 8);

  return v19();
}

uint64_t ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;

  return MEMORY[0x2822009F8](sub_2296D9740, v2, 0);
}

uint64_t sub_2296D9740()
{
  v1 = *(v0 + 112);
  sub_22A4DBD0C();
  v2 = *(v1 + 120);
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v0 + 48) = 0;
  v5 = [v2 allKeychainItemsForType:v3 identifier:0 syncable:v4 error:v0 + 48];

  v6 = *(v0 + 48);
  if (!v5)
  {
    v23 = v6;
    v24 = sub_22A4DB3EC();

    swift_willThrow();
    *(v0 + 56) = v24;
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
    if (!swift_dynamicCast())
    {
LABEL_32:

      v40 = *(v0 + 8);

      return v40();
    }

    v26 = *(v0 + 64);
    v27 = [v26 userInfo];
    v28 = sub_22A4DD49C();

    v29 = sub_22A4DD5EC();
    if (*(v28 + 16))
    {
      v31 = sub_229543DBC(v29, v30);
      v33 = v32;

      if (v33)
      {
        sub_2295404B0(*(v28 + 56) + 32 * v31, v0 + 16);

        if (swift_dynamicCast())
        {
          v34 = *(v0 + 72);
          v35 = [v34 code];

          if (v35 == -25300)
          {

            v7 = MEMORY[0x277D84F90];
            goto LABEL_3;
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

LABEL_31:
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000012, 0x800000022A591A70);
    v36 = [v26 description];
    v37 = sub_22A4DD5EC();
    v39 = v38;

    MEMORY[0x22AAD08C0](v37, v39);

    MEMORY[0x22AAD08C0](0xD000000000000028, 0x800000022A591A90);
    sub_22A4DBD3C();

    swift_willThrow();
    goto LABEL_32;
  }

  sub_229562F68(0, &qword_281401B90, 0x277CFEB88);
  v7 = sub_22A4DD83C();
  v8 = v6;

LABEL_3:
  v44 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v43 = v0;
    v10 = 0;
    v0 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [v11 type];
      v15 = [v14 integerValue];

      if (v15 == 1852203841 && (v16 = [v12 accessGroup]) != 0)
      {
        v17 = v16;
        v18 = sub_22A4DD5EC();
        v20 = v19;

        if (v18 == 0xD000000000000015 && 0x800000022A591AC0 == v20)
        {
        }

        else
        {
          v21 = sub_22A4DE60C();

          if ((v21 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        sub_22A4DE27C();
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

LABEL_7:
      ++v10;
      if (v13 == i)
      {
        v22 = v44;
        v0 = v43;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_39:
  *(v0 + 120) = v22;

  v42 = swift_task_alloc();
  *(v0 + 128) = v42;
  *v42 = v0;
  v42[1] = sub_2296D9D84;

  return sub_2296DB2A4();
}

uint64_t sub_2296D9D84(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[17] = v2;

  v7 = v6[14];
  if (v2)
  {
    v8 = sub_2296DA218;
  }

  else
  {
    v6[18] = a2;
    v6[19] = a1;
    v8 = sub_2296D9EF8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2296D9EF8()
{
  v1 = objc_opt_self();
  v2 = sub_22A4DB77C();
  sub_229562F68(0, &qword_281401B90, 0x277CFEB88);
  v3 = sub_22A4DD81C();

  v4 = sub_22A4DD5AC();

  v5 = [v1 findWinningIssuerKeyForHomeUUID:v2 withKeys:v3 accountIdentifier:v4];

  sub_22A4DE1FC();

  v0[10] = [v5 keychainItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F298, &qword_22A57E4E8);
  v6 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v6);

  MEMORY[0x22AAD08C0](0xD000000000000019, 0x800000022A591B00);
  v0[11] = [v5 highestGeneration];
  v7 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v7);

  sub_22A4DBD0C();

  v8 = [v5 keychainItem];
  if (v8 && (v9 = v8, v10 = [v8 valueData], v9, v10))
  {
    v11 = sub_22A4DB62C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = [v5 keychainItem];
  if (v14 && (v15 = v14, v16 = [v14 account], v15, v16))
  {
    v17 = sub_22A4DD5EC();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = v0[12];
  v21 = [v5 highestGeneration];

  *v20 = v11;
  v20[1] = v13;
  v20[2] = v17;
  v20[3] = v19;
  v20[4] = v21;
  v22 = v0[1];

  return v22();
}

uint64_t sub_2296DA218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296DA434(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[7] = a3;
  v5 = sub_22A4DB7DC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[10] = v6;
  v3[11] = _Block_copy(a2);
  sub_22A4DB79C();

  v7 = swift_task_alloc();
  v3[12] = v7;
  *v7 = v3;
  v7[1] = sub_2296DA568;

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)((v3 + 2), v6);
}

uint64_t sub_2296DA568()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v19 = *v1;
  v18 = *(*v1 + 16);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 48);

  (*(v5 + 8))(v4, v6);

  if (v2)
  {
    v10 = *(v3 + 88);
    v11 = sub_22A4DB3DC();

    (v10)[2](v10, 0, 0, 0, v11);
    _Block_release(v10);
    goto LABEL_9;
  }

  v12 = v9;
  if (v7 >> 60 != 15)
  {
    v13 = sub_22A4DB61C();
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_5:
  v14 = sub_22A4DD5AC();
LABEL_8:
  v15 = *(v3 + 88);
  (v15)[2](v15, v13, v14, v12, 0);

  _Block_release(v15);
  sub_229590D18(v18, v7);

LABEL_9:

  v16 = *(v19 + 8);

  return v16();
}

uint64_t sub_2296DA83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = sub_22A4DB77C();
  [v4 findUserWithModelID_];

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F8, qword_22A583D30);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    v7 = sub_22A4DB61C();
    [v10 setMatCredIPKExternalRepresentation_];

    sub_2297082C0();
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000033, 0x800000022A591DA0);
    v8 = sub_22A4DB5AC();
    MEMORY[0x22AAD08C0](v8);

    sub_22A4DBD0C();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2296DAA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_2296DAA50, v4, 0);
}

uint64_t sub_2296DAA50()
{
  v1 = [objc_opt_self() driver];
  v2 = sub_2297B37F8();
  *(v0 + 96) = v2;

  return MEMORY[0x2822009F8](sub_2296DAAE4, v2, 0);
}

uint64_t sub_2296DAAE4()
{
  v1 = v0[12];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = v2;

    v0[14] = v3;
    v4 = v0[11];

    return MEMORY[0x2822009F8](sub_2296DAD80, v4, 0);
  }

  else
  {
    v5 = sub_2296DC6A4();
    v6 = swift_task_alloc();
    v0[13] = v6;
    v7 = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    *v6 = v0;
    v6[1] = sub_2296DAC38;
    v8 = v0[12];

    return MEMORY[0x2822007B8](v0 + 2, v1, v5, 0x29287469617761, 0xE700000000000000, sub_2296DD574, v8, v7);
  }
}

uint64_t sub_2296DAC38()
{
  v1 = *v0;

  v1[14] = v1[2];
  v2 = v1[11];

  return MEMORY[0x2822009F8](sub_2296DAD80, v2, 0);
}

uint64_t sub_2296DAD80()
{
  v1 = [*(v0 + 112) homes];
  if (v1)
  {
    v2 = v1;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v3 = sub_22A4DD83C();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();
  v4 = *(v0 + 72);

  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  v7 = sub_22968FFF0(sub_2296DCB90, v6, v5);

  *(v0 + 48) = v7;
  v19 = sub_229562F68(0, &qword_2814017B0, off_278666198);
  sub_22A4DBD4C();
  v9 = *(v0 + 80);

  v10 = *(v0 + 40);
  v11 = [v10 nfcReaderKeyManager];
  v12 = [v11 accessoryManager];

  v13 = sub_22A4DB61C();
  v14 = *(v0 + 80);
  if (v9)
  {
    v15 = *(v0 + 80);
  }

  else
  {
    v15 = sub_22A4DBCDC();
  }

  v16 = *(v0 + 112);
  v17 = v14;
  [v12 auditKeysLocallyOrRedispatchWithAccessoryUUID:0 issuerKey:v13 withFlow:v15];

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2296DB05C(id *a1, uint64_t a2)
{
  v17[1] = a2;
  v4 = &unk_27D87D2A0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  v15 = [*a1 uuid];
  sub_22A4DB79C();

  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_22A4DBD4C();
  sub_22953EAE4(v7, &unk_27D87D2A0, &unk_22A578BD0);
  if (!v2)
  {
    LOBYTE(v4) = sub_22A4DB78C();
    (*(v9 + 8))(v14, v8);
  }

  return v4 & 1;
}

uint64_t sub_2296DB2A4()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2E0, &qword_22A57E1D8);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296DB370, v0, 0);
}

uint64_t sub_2296DB370()
{
  v1 = [objc_opt_self() defaultStore];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_2296DB564;
    swift_continuation_init();
    v0[17] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F138, &qword_22A57E1E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2296C0738;
    v0[13] = &block_descriptor_84;
    [v2 aa_primaryAppleAccountWithCompletion_];
    (*(v4 + 8))(boxed_opaque_existential_1, v5);
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2296DB564()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_2296DB7C0;
  }

  else
  {
    v4 = sub_2296DB684;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296DB684()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 184);
  if (v1)
  {
    v3 = [*(v0 + 144) aa_personID];

    v4 = sub_22A4DD5EC();
    v6 = v5;

    v7 = *(v0 + 8);

    return v7(v4, v6);
  }

  else
  {

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2296DB7C0(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void ACWGKeyManager.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void ACWGKeyManager.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t ACWGKeyManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ACWGKeyManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2296DB964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22A4DD5EC();
  sub_22A4DBCEC();
  sub_22A4DBD1C();
}

uint64_t sub_2296DBA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22A4DD5EC();
  sub_22A4DBCEC();
  sub_22A4DBD1C();
}

uint64_t sub_2296DBB00(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D8, &unk_22A57E5D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  result = a2(v6);
  if (!v2)
  {
    updated = _s21MobileAssetUpdateInfoVMa(0);
    (*(*(updated - 8) + 56))(v8, 0, 1, updated);
    return sub_2296DCB20(v8, a1);
  }

  return result;
}

uint64_t sub_2296DBC1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D428, &qword_22A5785A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v7, a1, v4);
  v8 = *(a2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 112) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_22958A518(0, v8[2] + 1, 1, v8);
    *(a2 + 112) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_22958A518((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 112) = v8;
  return result;
}

unint64_t sub_2296DBDF0(uint64_t a1)
{
  v1 = a1;
  sub_22A4DE77C();
  sub_2295C6134(v1);
  sub_22A4DD6BC();

  v2 = sub_22A4DE7BC();

  return sub_2296DC214(v1, v2);
}

unint64_t sub_2296DBE78(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x22AAD1940](*(v1 + 40), a1, 4);

  return sub_2296DC318(v2, v3);
}

unint64_t sub_2296DBEC0(uint64_t a1)
{
  sub_22A4DB7DC();
  v2 = MEMORY[0x277CC95F0];
  sub_2296DC65C(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_22A4DD4EC();
  return sub_2296DC4BC(a1, v3, MEMORY[0x277CC95F0], &qword_281403870, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_2296DC084(uint64_t a1)
{
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](a1);
  v2 = sub_22A4DE7BC();

  return sub_2296DC450(a1, v2);
}

unint64_t sub_2296DC140(uint64_t a1)
{
  sub_22A4DC02C();
  v2 = MEMORY[0x277D17D28];
  sub_2296DC65C(&qword_27D87F2A8, MEMORY[0x277D17D28], MEMORY[0x277D17D30]);
  v3 = sub_22A4DD4EC();
  return sub_2296DC4BC(a1, v3, MEMORY[0x277D17D28], &qword_27D87F2B0, v2, MEMORY[0x277D17D38]);
}

unint64_t sub_2296DC214(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = sub_2295C6134(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_2295C6134(a1) && v9 == v10)
      {
        break;
      }

      v12 = sub_22A4DE60C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2296DC318(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2296DC384(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_229562F68(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_22A4DDEDC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2296DC450(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2296DC4BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_2296DC65C(v23, v24, v25);
      v19 = sub_22A4DD58C();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_2296DC65C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2296DC6A4()
{
  result = qword_27D87F2B8;
  if (!qword_27D87F2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87F2C0, &unk_22A583410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F2B8);
  }

  return result;
}

uint64_t sub_2296DC710()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2296DA434(v2, v3, v4);
}

uint64_t sub_2296DC7C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_229569B30;

  return sub_2296D92F0(v2, v3, v4, v5, v7, v6);
}

void sub_2296DC89C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  JUMPOUT(0x2296D7ADCLL);
}

uint64_t sub_2296DC99C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_229586D38;

  return sub_2296D57A8(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_2296DCA90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D8, &unk_22A57E5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296DCB20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D8, &unk_22A57E5D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_2296DCBC8()
{
  v2 = *(v0 + 16);
  result = (*(v0 + 24))(&v4);
  if (!v1)
  {
    *v2 = 0;
  }

  return result;
}

void *sub_2296DCC48()
{
  v2 = *(v0 + 16);
  result = (*(v0 + 24))(&v4);
  if (!v1)
  {
    *v2 = v4;
  }

  return result;
}

id sub_2296DCCAC(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22A4DB77C();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithModelID:v4 context:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_22A4DB7DC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_22A4DB3EC();

    swift_willThrow();
    v11 = sub_22A4DB7DC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_2296DCE0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = *(v1 + 34);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2296D1404(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2296DCED8()
{
  v2 = *(sub_22A4DB7DC() - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_229586D38;

  return sub_2296D4BCC(v4, v5, v6, v7, v0 + v3);
}

uint64_t sub_2296DCFCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_2296D53B8(a1, v4, v5, v6);
}

uint64_t sub_2296DD08C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2296D4824(v2, v3, v4);
}

uint64_t sub_2296DD134(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229586D38;

  return sub_2296D5CF8(v8, a1, a2, v6, v7);
}

uint64_t sub_2296DD210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229631318(a1, v4, v5, v6);
}

uint64_t sub_2296DD2D0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_229631400(v2);
}

uint64_t objectdestroy_134Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2296DD3CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2296D5120(v2, v3, v4);
}

uint64_t sub_2296DD474(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229569B30;

  return sub_2296D5CF8(v8, a1, a2, v6, v7);
}

uint64_t sub_2296DD57C()
{
  if (*(v0 + 24))
  {

    sub_22A4DDA7C();
  }

  return swift_deallocClassInstance();
}

id sub_2296DD620(void *a1)
{
  v3 = *v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 homeManager];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 isThisDesignatedFMFDevice];
  }

  else
  {
    v10 = 0;
  }

  sub_229541CB0(v3, &off_283CE0828);
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCDC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v10;
    _os_log_impl(&dword_229538000, v11, v12, "Evaluating if execution is supported for MeDevice: %{BOOL}d", v13, 8u);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_2296DD7E4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v10 - 8);
  v33 = &v31 - v11;
  v12 = sub_22A4DD07C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v4;
  sub_229541CB0(v4, &off_283CE0828);
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v7;
    v19 = v6;
    v20 = v9;
    v21 = a1;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_229538000, v16, v17, "Registering for me device changes", v18, 2u);
    v23 = v22;
    a1 = v21;
    v9 = v20;
    v6 = v19;
    v7 = v32;
    MEMORY[0x22AAD4E50](v23, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v24 = sub_22A4DDE5C();
  v25 = sub_22A4DD9DC();
  v26 = v33;
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v27 = swift_allocObject();
  swift_weakInit();
  sub_2295FE8C0(a1, v9);
  v28 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v24;
  v29[5] = v27;
  sub_2295FE930(v9, v29 + v28);
  *(v29 + ((v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v2[3] = sub_22957F3C0(0, 0, v26, &unk_22A57E6B8, v29);
}

uint64_t sub_2296DDB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = sub_22A4DD07C();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v7[26] = swift_task_alloc();
  v10 = sub_22A4DDE4C();
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296DDD30, 0, 0);
}

uint64_t sub_2296DDD30()
{

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_2295F39B0();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_2296DDE04;
  v3 = v0[26];
  v4 = v0[27];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2296DDE04()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2295FE7D4;
  }

  else
  {
    v2 = sub_2296DDF18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296DDF34()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:

    v19 = v0[1];

    return v19();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v18 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v18);
    goto LABEL_10;
  }

  v4 = Strong;
  sub_229541CB0(v0[19], &off_283CE0828);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_229538000, v5, v6, "Received HMDFMFStatusUpdate", v7, 2u);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[24];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  v21 = v0[20];
  v22 = v0[26];

  (*(v10 + 8))(v8, v9);
  v0[5] = v13;
  v0[6] = &off_283CE0840;
  v0[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v12 + 8))(v11, v21);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v22);
  v14 = sub_2295F39B0();
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_2296DDE04;
  v16 = v0[26];
  v17 = v0[27];

  return MEMORY[0x282200308](v16, v17, v14);
}

uint64_t sub_2296DE2A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229569B30;

  return sub_2296DDB70(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_2296DE3EC()
{
  v1[18] = v0;
  v1[19] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F458, &qword_22A57E718);
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v4 = sub_22A4DB7DC();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296DE594, 0, 0);
}

uint64_t sub_2296DE594()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[29];
  v5 = v0[26];
  v8 = v0 + 24;
  v6 = v0[24];
  v7 = v8[1];
  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22A576190;
  *(v9 + 32) = [objc_allocWithZone(MEMORY[0x277D287B8]) initWithLocationTypeEnum_];
  sub_229562F68(0, &qword_27D87F468, 0x277D287B8);
  v10 = sub_22A4DD81C();
  v1[31] = v10;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_2296DE7E0;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2296DF91C;
  v1[13] = &block_descriptor_18;
  [v13 createServiceWithServiceType:1 locationTypes:v10 reply:v3];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2296DE7E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_2296DEAC4;
  }

  else
  {
    v2 = sub_2296DE8F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296DE8F0()
{
  v1 = v0[31];
  v3 = v0[18];
  v2 = v0[19];
  (*(v0[28] + 32))(v0[30], v0[29], v0[27]);

  v4 = objc_allocWithZone(MEMORY[0x277D28780]);
  v5 = sub_22A4DB77C();
  v6 = [v4 initWithDelegate:v3 serviceIdentifier:v5];

  v7 = *(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection);
  *(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection) = v6;

  sub_229541CB0(v2, &off_283CE08B0);
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[23];
  v12 = v0[20];
  v13 = v0[21];
  if (v10)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_229538000, v8, v9, "Created ULConnection to milod", v14, 2u);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  (*(v13 + 8))(v11, v12);
  (*(v0[28] + 8))(v0[30], v0[27]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_2296DEAC4(uint64_t a1)
{
  v3 = v1[31];
  v2 = v1[32];
  v4 = v1[19];
  swift_willThrow();

  sub_229541CB0(v4, &off_283CE08B0);
  v5 = v2;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[32];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_229538000, v6, v7, "Unable to create ULConnection: %@", v10, 0xCu);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  else
  {
  }

  (*(v1[21] + 8))(v1[22], v1[20]);

  v14 = v1[1];

  return v14();
}

uint64_t sub_2296DEC98()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE08B0);
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_229538000, v13, v14, "Calling ULConnection.connect()", v15, 2u);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v16 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection;
  v17 = *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection);
  if (v17)
  {
    v18 = [v17 connect];
    sub_22A4DB79C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_22A4DB7DC();
  v21 = *(*(v20 - 8) + 56);
  v22 = 1;
  v21(v8, v19, 1, v20);
  sub_22953EAE4(v8, &unk_27D87D2A0, &unk_22A578BD0);
  v23 = *(v1 + v16);
  if (v23)
  {
    v24 = objc_allocWithZone(MEMORY[0x277D28818]);
    v25 = v23;
    v26 = [v24 initWithIsLowLatency_];
    v27 = [v25 startUpdatingWithConfiguration_];

    sub_22A4DB79C();
    v22 = 0;
  }

  v21(v6, v22, 1, v20);
  return sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
}

uint64_t sub_2296DEFB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE08B0);
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_229538000, v13, v14, "Calling ULConnection.disconnect()", v15, 2u);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v16 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection;
  v17 = *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection);
  if (v17)
  {
    v18 = [v17 stopUpdating];
    sub_22A4DB79C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_22A4DB7DC();
  v21 = *(*(v20 - 8) + 56);
  v22 = 1;
  v21(v8, v19, 1, v20);
  sub_22953EAE4(v8, &unk_27D87D2A0, &unk_22A578BD0);
  v23 = *(v1 + v16);
  if (v23)
  {
    v24 = [v23 disconnect];
    sub_22A4DB79C();

    v22 = 0;
  }

  v21(v6, v22, 1, v20);
  return sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
}

id sub_2296DF28C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F448, &qword_22A57E708);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F450, &qword_22A577F80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F430, &qword_22A57E6F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  *&v0[OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F420, &qword_22A57E6C8);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v17 = v12;
  sub_229562F68(0, &qword_27D87F410, 0x277D287F0);
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v2);
  sub_22A4DDA6C();
  (*(v7 + 16))(&v0[OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_events], v9, v6);
  sub_2296E01E0(v12, &v0[OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_continuation]);
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  (*(v7 + 8))(v9, v6);
  sub_22953EAE4(v12, &qword_27D87F430, &qword_22A57E6F8);
  return v14;
}

uint64_t sub_2296DF578(uint64_t a1, uint64_t a2)
{
  sub_22953EAE4(a2, &qword_27D87F430, &qword_22A57E6F8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F420, &qword_22A57E6C8);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

id sub_2296DF678()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE08B0);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "deinit", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_2296DEFB4();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

uint64_t _s7AdapterCMa(uint64_t a1)
{
  result = qword_27D87F3F8;
  if (!qword_27D87F3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2296DF91C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_22A4DB7DC();
  MEMORY[0x28223BE20](v5 - 8);
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F458, &qword_22A57E718);
    sub_22A4DD8EC();
  }

  else
  {
    sub_22A4DB79C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F458, &qword_22A57E718);
    sub_22A4DD8FC();
  }
}

void sub_2296DFB00(uint64_t a1)
{
  sub_2296DFBD4(319);
  if (v1 <= 0x3F)
  {
    sub_2296DFC3C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2296DFBD4(uint64_t a1)
{
  if (!qword_27D87F408)
  {
    sub_229562F68(255, &qword_27D87F410, 0x277D287F0);
    v1 = sub_22A4DDA5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D87F408);
    }
  }
}

void sub_2296DFC3C(uint64_t a1)
{
  if (!qword_27D87F418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87F420, &qword_22A57E6C8);
    v1 = sub_22A4DDF9C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D87F418);
    }
  }
}

uint64_t sub_2296DFCBC(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE08B0);
  v7 = a1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_229538000, v8, v9, "Received didUpdateServiceStatus from milod: %@", v10, 0xCu);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2296DFE70(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F430, &qword_22A57E6F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F438, &qword_22A57E700);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE08B0);
  v15 = a1;
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v29 = v2;
    v21 = v20;
    *v19 = 138412290;
    *(v19 + 4) = v15;
    *v20 = v15;
    v22 = v15;
    _os_log_impl(&dword_229538000, v16, v17, "Received didUpdatePrediction from milod: %@", v19, 0xCu);
    sub_22953EAE4(v21, &qword_27D87D7D0, &unk_22A578D90);
    v23 = v21;
    v2 = v29;
    MEMORY[0x22AAD4E50](v23, -1, -1);
    v24 = v19;
    v8 = v30;
    MEMORY[0x22AAD4E50](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  sub_2296E01E0(v2 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_continuation, v7);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F420, &qword_22A57E6C8);
  v26 = *(v25 - 8);
  result = (*(v26 + 48))(v7, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v15;
    v28 = v15;
    sub_22A4DDA0C();
    (*(v31 + 8))(v10, v8);
    return (*(v26 + 8))(v7, v25);
  }

  return result;
}

uint64_t sub_2296E01E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F430, &qword_22A57E6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2296E0258(char a1)
{
  result = 0x754E6C6169726573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x646E65526576696CLL;
    case 3:
      return 0x7470697263736564;
    case 4:
      return 0x4C79654B656D6F68;
    case 5:
      return 0xD00000000000001BLL;
    case 6:
      return 0x655674616D726F66;
    case 7:
      return 0x7462755364726163;
    case 8:
      return 0x6E6564496D616574;
    case 9:
    case 33:
      return 0xD000000000000018;
    case 10:
      return 0xD000000000000014;
    case 11:
      return 0xD00000000000001ALL;
    case 12:
      v3 = 1801675106;
      return v3 | 0x756F726700000000;
    case 13:
      v3 = 1701998438;
      return v3 | 0x756F726700000000;
    case 14:
      return 0x6C6F436C6562616CLL;
    case 15:
      return 0xD000000000000010;
    case 16:
    case 27:
      return 0xD00000000000001CLL;
    case 17:
      return 0xD000000000000021;
    case 18:
      return 0xD000000000000015;
    case 19:
      return 0xD000000000000014;
    case 20:
      return 0xD000000000000025;
    case 21:
      return 0xD00000000000002DLL;
    case 22:
    case 23:
      return 0xD000000000000019;
    case 24:
      return 0x43746E656D796170;
    case 25:
      return 0xD000000000000013;
    case 26:
      return 0x65636E6575716573;
    case 28:
      return 0x6E6172626F437369;
    case 29:
      return 0x4E746361746E6F63;
    case 30:
      v4 = 11;
      goto LABEL_30;
    case 31:
      return 0xD000000000000016;
    case 32:
      v4 = 9;
LABEL_30:
      result = v4 | 0xD000000000000014;
      break;
    case 34:
      result = 0x6570795464726163;
      break;
    case 35:
      result = 0x6F666E4972657375;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_2296E06AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2296E4344(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2296E06EC(uint64_t a1)
{
  v2 = sub_2296E0EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E0728(uint64_t a1)
{
  v2 = sub_2296E0EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassJSON.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F470, &qword_22A57E720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E0EA4();
  sub_22A4DE80C();
  LOBYTE(v10) = 0;
  sub_22A4DE54C();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_22A4DE54C();
    LOBYTE(v10) = 2;
    sub_22A4DE54C();
    LOBYTE(v10) = 3;
    sub_22A4DE54C();
    LOBYTE(v10) = 4;
    sub_22A4DE54C();
    LOBYTE(v10) = 5;
    sub_22A4DE57C();
    LOBYTE(v10) = 6;
    sub_22A4DE57C();
    LOBYTE(v10) = 7;
    sub_22A4DE54C();
    LOBYTE(v10) = 8;
    sub_22A4DE54C();
    LOBYTE(v10) = 9;
    sub_22A4DE54C();
    LOBYTE(v10) = 10;
    sub_22A4DE54C();
    *&v10 = *(v3 + 160);
    v12 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F480, &qword_22A57E728);
    sub_2296EBD90(&qword_27D87F488, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    sub_22A4DE59C();
    LOBYTE(v10) = 12;
    sub_22A4DE54C();
    LOBYTE(v10) = 13;
    sub_22A4DE54C();
    LOBYTE(v10) = 14;
    sub_22A4DE54C();
    LOBYTE(v10) = 15;
    sub_22A4DE54C();
    LOBYTE(v10) = 16;
    sub_22A4DE55C();
    LOBYTE(v10) = 17;
    sub_22A4DE54C();
    LOBYTE(v10) = 18;
    sub_22A4DE54C();
    LOBYTE(v10) = 19;
    sub_22A4DE54C();
    LOBYTE(v10) = 20;
    sub_22A4DE55C();
    LOBYTE(v10) = 21;
    sub_22A4DE55C();
    LOBYTE(v10) = 22;
    sub_22A4DE57C();
    LOBYTE(v10) = 23;
    sub_22A4DE57C();
    v10 = *(v3 + 312);
    v11 = *(v3 + 328);
    v12 = 24;
    sub_2296E0EF8();
    sub_22A4DE59C();
    *&v10 = *(v3 + 336);
    v12 = 25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F498, &qword_22A57E730);
    sub_2296E0F4C();
    sub_22A4DE59C();
    LOBYTE(v10) = 26;
    sub_22A4DE57C();
    *&v10 = *(v3 + 352);
    v12 = 27;
    sub_22A4DE59C();
    LOBYTE(v10) = 28;
    sub_22A4DE55C();
    LOBYTE(v10) = 29;
    sub_22A4DE54C();
    LOBYTE(v10) = 30;
    sub_22A4DE55C();
    LOBYTE(v10) = 31;
    sub_22A4DE55C();
    LOBYTE(v10) = 32;
    sub_22A4DE55C();
    LOBYTE(v10) = 33;
    sub_22A4DE54C();
    LOBYTE(v10) = 34;
    sub_22A4DE54C();
    v10 = *(v3 + 424);
    v12 = 35;
    sub_2296E1024();
    sub_22A4DE53C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2296E0EA4()
{
  result = qword_27D87F478;
  if (!qword_27D87F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F478);
  }

  return result;
}

unint64_t sub_2296E0EF8()
{
  result = qword_27D87F490;
  if (!qword_27D87F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F490);
  }

  return result;
}

unint64_t sub_2296E0F4C()
{
  result = qword_27D87F4A0;
  if (!qword_27D87F4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F498, &qword_22A57E730);
    sub_2296E0FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4A0);
  }

  return result;
}

unint64_t sub_2296E0FD0()
{
  result = qword_27D87F4A8;
  if (!qword_27D87F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4A8);
  }

  return result;
}

unint64_t sub_2296E1024()
{
  result = qword_27D87F4B0;
  if (!qword_27D87F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4B0);
  }

  return result;
}

void *PassJSON.init(from:)@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_2296E4E5C(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x1B8uLL);
  }

  return result;
}

void *sub_2296E10C4@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_2296E4E5C(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x1B8uLL);
  }

  return result;
}

uint64_t sub_2296E1130()
{
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](0);
  return sub_22A4DE7BC();
}

uint64_t sub_2296E1174(uint64_t a1)
{
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](0);
  return sub_22A4DE7BC();
}

uint64_t sub_2296E11D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x800000022A5926B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22A4DE60C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2296E1264(uint64_t a1)
{
  v2 = sub_2296E6528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E12A0(uint64_t a1)
{
  v2 = sub_2296E6528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserInfoJSON.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4B8, &qword_22A57E738);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E6528();
  sub_22A4DE80C();
  sub_22A4DE54C();
  return (*(v5 + 8))(v7, v4);
}

void *UserInfoJSON.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4C8, &qword_22A57E740);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E6528();
  sub_22A4DE7FC();
  if (!v1)
  {
    v7 = sub_22A4DE49C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_2296E1578@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4C8, &qword_22A57E740);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E6528();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_22A4DE49C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_2296E16F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4B8, &qword_22A57E738);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E6528();
  sub_22A4DE80C();
  sub_22A4DE54C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2296E1830(char a1)
{
  result = 0x54746E656D796170;
  switch(a1)
  {
    case 1:
      result = 0x6574617473;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6E6564494E415044;
      break;
    case 5:
      result = 0x666675534E415044;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0x6564657263627573;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2296E1A64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2296E68A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2296E1A98(uint64_t a1)
{
  v2 = sub_2296E657C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E1AD4(uint64_t a1)
{
  v2 = sub_2296E657C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaymentApplicationJSON.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4D0, &unk_22A57E748);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E657C();
  sub_22A4DE80C();
  LOBYTE(v19) = 0;
  sub_22A4DE54C();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    sub_22A4DE57C();
    LOBYTE(v19) = 2;
    sub_22A4DE54C();
    LOBYTE(v19) = 3;
    sub_22A4DE54C();
    LOBYTE(v19) = 4;
    sub_22A4DE54C();
    LOBYTE(v19) = 5;
    sub_22A4DE54C();
    LOBYTE(v19) = 6;
    sub_22A4DE57C();
    LOBYTE(v19) = 7;
    sub_22A4DE57C();
    LOBYTE(v19) = 8;
    sub_22A4DE57C();
    LOBYTE(v19) = 9;
    sub_22A4DE54C();
    LOBYTE(v19) = 10;
    sub_22A4DE55C();
    LOBYTE(v19) = 11;
    sub_22A4DE57C();
    *&v19 = *(v3 + 144);
    LOBYTE(v16[0]) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    sub_2296E65D0(&qword_27D87F4E0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_22A4DE59C();
    LOBYTE(v19) = 13;
    sub_22A4DE54C();
    *&v19 = *(v3 + 168);
    LOBYTE(v16[0]) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4E8, &qword_22A57E758);
    sub_2296E663C();
    sub_22A4DE59C();
    v9 = *(v3 + 224);
    v10 = *(v3 + 192);
    v26 = *(v3 + 208);
    v27 = v9;
    v11 = *(v3 + 224);
    v28 = *(v3 + 240);
    v12 = *(v3 + 192);
    v25[0] = *(v3 + 176);
    v25[1] = v12;
    v21 = v26;
    v22 = v11;
    v23 = *(v3 + 240);
    v29 = *(v3 + 256);
    v24 = *(v3 + 256);
    v19 = v25[0];
    v20 = v10;
    v18 = 15;
    sub_2296E6714(v25, v16);
    sub_2296E674C();
    sub_22A4DE59C();
    v16[2] = v21;
    v16[3] = v22;
    v16[4] = v23;
    v17 = v24;
    v16[0] = v19;
    v16[1] = v20;
    sub_2296E67A0(v16);
    v15 = *(v3 + 264);
    v14[7] = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F508, &qword_22A57E760);
    sub_2296E67D0();
    sub_22A4DE59C();
  }

  return (*(v6 + 8))(v8, v5);
}

void *PaymentApplicationJSON.init(from:)@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_2296E6DE8(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x110uLL);
  }

  return result;
}

void *sub_2296E205C@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_2296E6DE8(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x110uLL);
  }

  return result;
}

uint64_t sub_2296E20C0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x696669746E656469;
    if (v1 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6574617473;
    }
  }

  else
  {
    v2 = 0x616D726F466F7369;
    if (v1 != 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2296E21B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2296E77F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2296E21EC(uint64_t a1)
{
  v2 = sub_2296E779C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E2228(uint64_t a1)
{
  v2 = sub_2296E779C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubcredentialJSON.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F520, &qword_22A57E768);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E779C();
  sub_22A4DE80C();
  v17 = 0;
  sub_22A4DE57C();
  if (!v2)
  {
    v16 = 1;
    sub_22A4DE54C();
    v15 = 2;
    sub_22A4DE54C();
    v14 = 3;
    sub_22A4DE54C();
    v13 = 4;
    sub_22A4DE58C();
    v12 = 5;
    sub_22A4DE51C();
    v11 = *(v3 + 80);
    v10[15] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    sub_2296E65D0(&qword_27D87F4E0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_22A4DE53C();
  }

  return (*(v6 + 8))(v8, v5);
}

double SubcredentialJSON.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2296E7A4C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

double sub_2296E2558@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2296E7A4C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_2296E25CC()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x7374726F70707573;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x4449726564616572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1936286580;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2296E266C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2296E805C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2296E26A0(uint64_t a1)
{
  v2 = sub_2296E7F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E26DC(uint64_t a1)
{
  v2 = sub_2296E7F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutomaticSelectionCriteriaJSON.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F530, &qword_22A57E770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E7F30();
  sub_22A4DE80C();
  LOBYTE(v11) = 0;
  sub_22A4DE54C();
  if (!v2)
  {
    v11 = v3[2];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    sub_2296E65D0(&qword_27D87F4E0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_22A4DE59C();
    LOBYTE(v11) = 2;
    sub_22A4DE55C();
    v11 = v3[4];
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F540, &qword_22A57E778);
    sub_2296E7F84();
    sub_22A4DE53C();
    v11 = v3[5];
    HIBYTE(v10) = 4;
    sub_22A4DE53C();
  }

  return (*(v6 + 8))(v8, v5);
}

double AutomaticSelectionCriteriaJSON.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2296E8224(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

double sub_2296E29C8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2296E8224(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_2296E2A24()
{
  if (*v0)
  {
    return 0x797469726F697270;
  }

  else
  {
    return 0x4449726564616572;
  }
}

uint64_t sub_2296E2A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726564616572 && a2 == 0xE800000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2296E2B34(uint64_t a1)
{
  v2 = sub_2296E8530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E2B70(uint64_t a1)
{
  v2 = sub_2296E8530();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssociatedReaderIDsJSON.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F558, &qword_22A57E780);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E8530();
  sub_22A4DE80C();
  v13 = 0;
  sub_22A4DE54C();
  if (!v4)
  {
    v12 = 1;
    sub_22A4DE57C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2296E2D6C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2296E8584(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2296E2DBC()
{
  if (*v0)
  {
    return 0x654B63696C627570;
  }

  else
  {
    return 0x656D65686373;
  }
}

uint64_t sub_2296E2DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D65686373 && a2 == 0xE600000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2296E2ED8(uint64_t a1)
{
  v2 = sub_2296E875C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E2F14(uint64_t a1)
{
  v2 = sub_2296E875C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2296E3048()
{
  if (*v0)
  {
    return 0x4143726564616572;
  }

  else
  {
    return 0x4449726564616572;
  }
}

uint64_t sub_2296E3088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726564616572 && a2 == 0xE800000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4143726564616572 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}