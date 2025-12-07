unint64_t sub_22CE6827C()
{
  result = qword_281445380;
  if (!qword_281445380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281445380);
  }

  return result;
}

unint64_t sub_22CE682D4()
{
  result = qword_27D9EEEE8;
  if (!qword_27D9EEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEEE8);
  }

  return result;
}

unint64_t sub_22CE6832C()
{
  result = qword_27D9EEEF0;
  if (!qword_27D9EEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEEF0);
  }

  return result;
}

unint64_t sub_22CE68384()
{
  result = qword_27D9EEEF8;
  if (!qword_27D9EEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEEF8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24SessionPushNotifications0B12SubscriptionV0D4TypeO8ActivityV0bE0O(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22CE6841C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFFFF && *(a1 + 51))
  {
    return (*a1 + 0xFFFFF);
  }

  v3 = ((*(a1 + 50) >> 7) | (2 * ((*(a1 + 48) >> 3) & 0x1FC0 | (*(a1 + 48) >> 2) | (((*(a1 + 50) >> 1) & 0x3F) << 13)))) ^ 0xFFFFF;
  if (v3 >= 0xFFFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22CE68490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 0xFFFFF;
    if (a3 >= 0xFFFFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x7FFFF) - (a2 << 19);
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 50) = (v3 >> 12) & 0xFE;
      *(result + 48) = (8 * v3) & 0xFE00 | (4 * (v3 & 0x3F));
    }
  }

  return result;
}

uint64_t sub_22CE68524(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x7F;
  *result = v2;
  return result;
}

uint64_t sub_22CE68540(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  result = a1 + 48;
  v4 = (v3 | (*(result + 2) << 16)) & 0x10103 | (a2 << 23);
  *result = v3 & 0x103;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_22CE6857C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_22CE685C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CE68628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22CE68670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_22CE686B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t DeviceActivityMonitor.__allocating_init(taskScheduler:)(void *a1)
{
  v2 = swift_allocObject();
  DeviceActivityMonitor.init(taskScheduler:)(a1);
  return v2;
}

uint64_t *DeviceActivityMonitor.init(taskScheduler:)(void *a1)
{
  v2 = v1;
  v30 = a1;
  v33 = *v1;
  v3 = sub_22CE85D14();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v35 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22CE85974();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22CE85FD4();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22CE85FB4();
  MEMORY[0x28223BE20](v10);
  v34 = sub_22CE85D34();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF00, &unk_22CE87740);
  swift_allocObject();
  v1[3] = sub_22CE85CC4();
  v13 = sub_22CE4FC1C();
  v25[0] = "; subscriptionType: ";
  v25[1] = v13;
  sub_22CE85D24();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CE4265C(&qword_281445320, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  v27 = MEMORY[0x277D83970];
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930, MEMORY[0x277D83970]);
  sub_22CE86034();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v26);
  v1[4] = sub_22CE86004();
  *(v1 + 11) = 0u;
  *(v1 + 13) = 0u;
  v1[15] = 0;
  v14 = v1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v30;
  sub_22CE40D28(v30, (v1 + 5));
  v16 = v1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = [objc_allocWithZone(MEMORY[0x277CF89F8]) initWithOptions_];
  *(v1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus) = v17;
  v18 = v28;
  sub_22CE85954();
  (*(v29 + 32))(v2 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate, v18, v31);
  *(v2 + 80) = 1;
  sub_22CE68D68();
  v19 = swift_allocObject();
  v20 = v33;
  *(v19 + 16) = v2;
  *(v19 + 24) = v20;
  aBlock[4] = sub_22CE691A0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);

  sub_22CE85D24();
  v38 = MEMORY[0x277D84F90];
  sub_22CE4265C(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, v27);
  v23 = v35;
  v22 = v36;
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v12, v23, v21);
  _Block_release(v21);
  __swift_destroy_boxed_opaque_existential_1(v15);
  (*(v37 + 8))(v23, v22);
  (*(v32 + 8))(v12, v34);

  return v2;
}

void sub_22CE68D68()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v13[4] = sub_22CE41CA4;
  v13[5] = v2;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22CE41C44;
  v13[3] = &block_descriptor_32;
  v3 = _Block_copy(v13);

  v4 = IOPMScheduleUserActivityLevelNotificationWithTimeout();
  _Block_release(v3);
  v5 = v4 == 0;
  if (v4)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v6 = sub_22CE85C84();
    __swift_project_value_buffer(v6, qword_281445368);
    v7 = sub_22CE85C74();
    v8 = sub_22CE85FA4();
    if (!os_log_type_enabled(v7, v8))
    {
      v5 = 0;
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22CE3F000, v7, v8, "Registered for device activity events", v9, 2u);
  }

  else
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v10 = sub_22CE85C84();
    __swift_project_value_buffer(v10, qword_281445368);
    v7 = sub_22CE85C74();
    v11 = sub_22CE85F94();
    if (!os_log_type_enabled(v7, v11))
    {
      v4 = 0;
      v5 = 1;
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22CE3F000, v7, v11, "Failed to register for device activity events", v9, 2u);
    v4 = 0;
  }

  MEMORY[0x2318C20D0](v9, -1, -1);
LABEL_13:

  v12 = v1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle;
  *v12 = v4;
  *(v12 + 8) = v5;
}

uint64_t sub_22CE68FD4(uint64_t a1)
{
  v2 = sub_22CE85974();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus;
  v10 = [*(a1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus) currentSession];
  sub_22CE691A8(v10, v8);

  (*(v3 + 16))(v6, v8, v2);
  v11 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
  swift_beginAccess();
  (*(v3 + 40))(a1 + v11, v6, v2);
  swift_endAccess();
  v12 = [*(a1 + v9) currentSession];
  LOBYTE(v6) = sub_22CE6A620(v8, v12);

  *(a1 + 80) = v6 & 1;
  sub_22CE44A24();
  return (*(v3 + 8))(v8, v2);
}

void sub_22CE691A8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v40 - v5;
  v7 = sub_22CE85974();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v40 - v12;
  if (a1)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v14 = sub_22CE85C84();
    __swift_project_value_buffer(v14, qword_281445368);
    v15 = sub_22CE85C74();
    v16 = sub_22CE85FA4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_7;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Active CarPlay session; device is treated as active";
LABEL_6:
    _os_log_impl(&dword_22CE3F000, v15, v16, v18, v17, 2u);
    MEMORY[0x2318C20D0](v17, -1, -1);
LABEL_7:

    sub_22CE85954();
    return;
  }

  v40[0] = [objc_opt_self() userContext];
  if (!v40[0])
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v26 = sub_22CE85C84();
    __swift_project_value_buffer(v26, qword_281445368);
    v15 = sub_22CE85C74();
    v16 = sub_22CE85FA4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_7;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Cannot obtain user context; device is treated as active";
    goto LABEL_6;
  }

  v19 = [objc_opt_self() keyPathForLastUseDate];
  if (v19)
  {
    v20 = v19;
    v21 = [v40[0] objectForContextualKeyPath_];
    if (v21)
    {
      v40[1] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF48, &unk_22CE88640);
      v22 = swift_dynamicCast();
      (*(v8 + 56))(v6, v22 ^ 1u, 1, v7);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        v23 = *(v8 + 32);
        v23(v13, v6, v7);
        sub_22CE85954();
        v24 = sub_22CE85904();
        v25 = *(v8 + 8);
        v25(v11, v7);
        if (v24)
        {

          v23(a2, v13, v7);
        }

        else
        {
          if (qword_281445360 != -1)
          {
            swift_once();
          }

          v36 = sub_22CE85C84();
          __swift_project_value_buffer(v36, qword_281445368);
          v37 = sub_22CE85C74();
          v38 = sub_22CE85FA4();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_22CE3F000, v37, v38, "Reported last activity date is nonsense; device is treated as active", v39, 2u);
            MEMORY[0x2318C20D0](v39, -1, -1);
          }

          sub_22CE85954();
          v25(v13, v7);
        }

        return;
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
    }

    sub_22CE42330(v6, &qword_27D9EEF40, &qword_22CE86C00);
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v32 = sub_22CE85C84();
    __swift_project_value_buffer(v32, qword_281445368);
    v33 = sub_22CE85C74();
    v34 = sub_22CE85FA4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22CE3F000, v33, v34, "Cannot obtain last activity date; device is treated as active", v35, 2u);
      MEMORY[0x2318C20D0](v35, -1, -1);
    }

    sub_22CE85954();
  }

  else
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v27 = sub_22CE85C84();
    __swift_project_value_buffer(v27, qword_281445368);
    v28 = sub_22CE85C74();
    v29 = sub_22CE85FA4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22CE3F000, v28, v29, "Cannot last use date keypath; device is treated as active", v30, 2u);
      MEMORY[0x2318C20D0](v30, -1, -1);
    }

    sub_22CE85954();
    v31 = v40[0];
  }
}

uint64_t DeviceActivityMonitor.deinit()
{
  if ((*(v0 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle + 8) & 1) == 0)
  {
    IOPMUnregisterNotification();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  sub_22CE42330(v0 + 88, &unk_27D9EEF30, &unk_22CE87948);
  v1 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
  v2 = sub_22CE85974();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DeviceActivityMonitor.__deallocating_deinit()
{
  if ((*(v0 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle + 8) & 1) == 0)
  {
    IOPMUnregisterNotification();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  sub_22CE42330(v0 + 88, &unk_27D9EEF30, &unk_22CE87948);
  v1 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
  v2 = sub_22CE85974();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_22CE69ADC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_22CE85974();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
  swift_beginAccess();
  (*(v5 + 16))(v7, a1 + v8, v4);
  v9 = [*(a1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus) currentSession];
  LOBYTE(v8) = sub_22CE6A620(v7, v9);

  result = (*(v5 + 8))(v7, v4);
  *a2 = v8 & 1;
  return result;
}

uint64_t type metadata accessor for DeviceActivityMonitor(uint64_t a1)
{
  result = qword_281444B30;
  if (!qword_281444B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CE69CCC(uint64_t a1)
{
  result = sub_22CE85974();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22CE69E40(uint64_t a1, uint64_t a2)
{
  v3 = sub_22CE85D14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22CE85D34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + 32);
    v12 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a2;
    v18 = v12;
    aBlock[4] = sub_22CE6AD38;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CE42F10;
    aBlock[3] = &block_descriptor_28;
    v14 = v8;
    v15 = _Block_copy(aBlock);

    sub_22CE85D24();
    v20 = MEMORY[0x277D84F90];
    sub_22CE4265C(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
    v17 = v7;
    sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
    sub_22CE86034();
    MEMORY[0x2318C1890](0, v10, v6, v15);
    _Block_release(v15);
    (*(v4 + 8))(v6, v3);
    (*(v14 + 8))(v10, v17);
  }

  return result;
}

uint64_t sub_22CE6A150(uint64_t a1)
{
  v2 = sub_22CE85974();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  v7 = [*(a1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus) currentSession];
  v8 = sub_22CE6A620(v5, v7);

  result = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    if ((*(a1 + 80) & 1) == 0)
    {
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v10 = sub_22CE85C84();
      __swift_project_value_buffer(v10, qword_281445368);
      v11 = sub_22CE85C74();
      v12 = sub_22CE85FA4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22CE3F000, v11, v12, "Device is active as grace period has not expired.  Scheduling another wake.", v13, 2u);
        MEMORY[0x2318C20D0](v13, -1, -1);
      }

      return sub_22CE44A24();
    }
  }

  else
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v14 = sub_22CE85C84();
    __swift_project_value_buffer(v14, qword_281445368);
    v15 = sub_22CE85C74();
    v16 = sub_22CE85FA4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22CE3F000, v15, v16, "Device is inactive after grace period expired.  Publishing budget level change event.", v17, 2u);
      MEMORY[0x2318C20D0](v17, -1, -1);
    }

    v18[7] = 0;
    return sub_22CE85CB4();
  }

  return result;
}

uint64_t sub_22CE6A470@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

double sub_22CE6A4A0()
{
  if (!os_variant_has_internal_ui())
  {
    return 900.0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_22CE85DF4();
  [v0 doubleForKey_];
  v3 = v2;

  if (v3 <= 0.0)
  {
    return 900.0;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v4 = sub_22CE85C84();
  __swift_project_value_buffer(v4, qword_281445368);
  v5 = sub_22CE85C74();
  v6 = sub_22CE85FA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_22CE3F000, v5, v6, "Device activity timeout overridden; set to %{public}f", v7, 0xCu);
    MEMORY[0x2318C20D0](v7, -1, -1);
  }

  return v3;
}

uint64_t sub_22CE6A620(uint64_t a1, uint64_t a2)
{
  v4 = sub_22CE85974();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v55 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v55 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  sub_22CE6A4A0();
  sub_22CE85964();
  sub_22CE85954();
  if (a2)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v20 = sub_22CE85C84();
    __swift_project_value_buffer(v20, qword_281445368);
    (*(v5 + 16))(v14, a1, v4);
    v21 = sub_22CE85C74();
    v22 = sub_22CE85FA4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v57 = v17;
      v58 = v24;
      v25 = v24;
      *v23 = 136315138;
      sub_22CE4265C(&qword_2814452A0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v26 = sub_22CE86174();
      v28 = v27;
      v56 = v19;
      v29 = *(v5 + 8);
      v29(v14, v4);
      v30 = sub_22CE44280(v26, v28, &v58);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_22CE3F000, v21, v22, "Inferring device active as there is an ongoing CarPlay Session (last active at %s)", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x2318C20D0](v25, -1, -1);
      v31 = v23;
LABEL_11:
      MEMORY[0x2318C20D0](v31, -1, -1);

      v29(v57, v4);
      v29(v56, v4);
      return 1;
    }

    v42 = *(v5 + 8);
    v42(v14, v4);
LABEL_18:
    v42(v17, v4);
    v42(v19, v4);
    return 1;
  }

  if (sub_22CE858F4())
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v32 = sub_22CE85C84();
    __swift_project_value_buffer(v32, qword_281445368);
    (*(v5 + 16))(v11, a1, v4);
    v21 = sub_22CE85C74();
    v33 = sub_22CE85FA4();
    if (os_log_type_enabled(v21, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v57 = v17;
      v58 = v35;
      v36 = v35;
      *v34 = 136315138;
      sub_22CE4265C(&qword_2814452A0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v37 = sub_22CE86174();
      v39 = v38;
      v56 = v19;
      v29 = *(v5 + 8);
      v29(v11, v4);
      v40 = sub_22CE44280(v37, v39, &v58);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_22CE3F000, v21, v33, "Device active (last active at %s)", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x2318C20D0](v36, -1, -1);
      v31 = v34;
      goto LABEL_11;
    }

    v42 = *(v5 + 8);
    v42(v11, v4);
    goto LABEL_18;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v43 = sub_22CE85C84();
  __swift_project_value_buffer(v43, qword_281445368);
  (*(v5 + 16))(v8, a1, v4);
  v44 = sub_22CE85C74();
  v45 = sub_22CE85FA4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v57 = v17;
    v58 = v47;
    v48 = v47;
    *v46 = 136315138;
    sub_22CE4265C(&qword_2814452A0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v49 = sub_22CE86174();
    v51 = v50;
    v56 = v19;
    v52 = *(v5 + 8);
    v52(v8, v4);
    v53 = sub_22CE44280(v49, v51, &v58);

    *(v46 + 4) = v53;
    _os_log_impl(&dword_22CE3F000, v44, v45, "Device inactive (last active at %s)", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x2318C20D0](v48, -1, -1);
    MEMORY[0x2318C20D0](v46, -1, -1);

    v52(v57, v4);
    v52(v56, v4);
  }

  else
  {

    v54 = *(v5 + 8);
    v54(v8, v4);
    v54(v17, v4);
    v54(v19, v4);
  }

  return 0;
}

uint64_t sub_22CE6AD50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE18, &unk_22CE87900);
  sub_22CE85FE4();
  return v1;
}

uint64_t BudgetCache.__allocating_init(persistentStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BudgetCache.init(persistentStore:)(a1);
  return v2;
}

uint64_t BudgetCache.init(persistentStore:)(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v16 = sub_22CE85FD4();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22CE85FB4();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22CE85D34();
  MEMORY[0x28223BE20](v7 - 8);
  sub_22CE4FC1C();
  sub_22CE85D24();
  v20[0] = MEMORY[0x277D84F90];
  sub_22CE52580();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE6B1A0();
  sub_22CE86034();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v16);
  v8 = v17;
  *(v1 + 16) = sub_22CE86004();
  sub_22CE6B204(v8, v1 + 24);
  sub_22CE6B204(v8, &v18);
  if (v19)
  {
    sub_22CE501DC(&v18, v20);
    v9 = v21;
    v10 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    *(v1 + 64) = (*(v10 + 8))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_22CE6B274(&v18);
    *(v1 + 64) = sub_22CE62DF0(MEMORY[0x277D84F90]);
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v11 = sub_22CE85C84();
  __swift_project_value_buffer(v11, qword_281445368);

  v12 = sub_22CE85C74();
  v13 = sub_22CE85FA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    swift_beginAccess();
    *(v14 + 4) = *(*(v2 + 64) + 16);

    _os_log_impl(&dword_22CE3F000, v12, v13, "Restored %{public}ld budgets", v14, 0xCu);
    MEMORY[0x2318C20D0](v14, -1, -1);
  }

  else
  {
  }

  sub_22CE6B274(v8);
  return v2;
}

unint64_t sub_22CE6B1A0()
{
  result = qword_281445328;
  if (!qword_281445328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9EEF10, &unk_22CE87930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281445328);
  }

  return result;
}

uint64_t sub_22CE6B204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF50, &unk_22CE88650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE6B274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF50, &unk_22CE88650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CE6B358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 64);
  if (*(v8 + 16))
  {

    v9 = sub_22CE498B0(a2, a3);
    if (v10)
    {
      v11 = v9;
      v12 = *(v8 + 56);
      v13 = type metadata accessor for Budget(0);
      v14 = *(v13 - 8);
      sub_22CE6BD10(v12 + *(v14 + 72) * v11, a4);

      return (*(v14 + 56))(a4, 0, 1, v13);
    }
  }

  v16 = type metadata accessor for Budget(0);
  return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
}

uint64_t sub_22CE6B4BC(uint64_t a1)
{
  v3 = type metadata accessor for Budget(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 16);
  sub_22CE6BD10(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_22CE6BD74(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22CE6BDD8;
  *(v9 + 24) = v8;
  aBlock[4] = sub_22CE42778;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE50228;
  aBlock[3] = &block_descriptor_3;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE6B6A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Budget(0);
  v8 = (a2 + *(v7 + 24));
  v9 = *v8;
  v10 = v8[1];
  sub_22CE6BD10(a2, v6);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  swift_beginAccess();

  sub_22CE46F64(v6, v9, v10);
  swift_endAccess();
  sub_22CE6B204(a1 + 24, &v14);
  if (!v15)
  {
    return sub_22CE6B274(&v14);
  }

  sub_22CE501DC(&v14, v16);
  v11 = v17;
  v12 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v12 + 24))(a2, v11, v12);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_22CE6B828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22CE6BE3C;
  *(v8 + 24) = v7;
  v11[4] = sub_22CE5E888;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22CE50228;
  v11[3] = &block_descriptor_13;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE6B998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for Budget(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  swift_beginAccess();

  sub_22CE46F64(v8, a2, a3);
  swift_endAccess();
  sub_22CE6B204(a1 + 24, &v13);
  if (!v14)
  {
    return sub_22CE6B274(&v13);
  }

  sub_22CE501DC(&v13, v15);
  v10 = v16;
  v11 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v11 + 32))(a2, a3, v10, v11);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t BudgetCache.deinit()
{
  sub_22CE6B274(v0 + 24);

  return v0;
}

uint64_t BudgetCache.__deallocating_deinit()
{
  sub_22CE6B274(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_22CE6BC44(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_22CE6BC90(void *__src, uint64_t a2, void *__dst)
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

_BYTE **sub_22CE6BCB0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_22CE6BCC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22CE6BD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Budget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE6BD74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Budget(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE6BDD8()
{
  v1 = *(type metadata accessor for Budget(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22CE6B6A4(v2, v3);
}

uint64_t BasicBudgetEnforcementPolicy.priority(for:applying:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  result = type metadata accessor for Budget(0);
  if (*(a2 + *(result + 20)) <= 0)
  {
    if (*(v7 + 16))
    {
      result = sub_22CE4DE0C();
      if (v9)
      {
        v6 = *(*(v7 + 56) + result);
      }
    }
  }

  *a3 = v6;
  return result;
}

unint64_t sub_22CE6BFBC()
{
  result = sub_22CE62FD8(&unk_2840174F0);
  qword_281445410 = result;
  return result;
}

unint64_t sub_22CE6C008()
{
  result = sub_22CE62FD8(&unk_284017518);
  qword_27D9EEF58 = result;
  return result;
}

unint64_t sub_22CE6C054()
{
  result = sub_22CE62FD8(&unk_284017540);
  qword_2814449B0 = result;
  return result;
}

uint64_t BasicBudgetEnforcementPolicy.description.getter()
{
  v1 = *v0;
  v2 = sub_22CE44074();

  return MEMORY[0x2821FB7B8](v1, &type metadata for Priority, &type metadata for Priority, v2);
}

uint64_t sub_22CE6C0D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22CE6C118(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CE6C290()
{
  v0 = sub_22CE85B64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22CE85C84();
  __swift_allocate_value_buffer(v4, qword_281445368);
  __swift_project_value_buffer(v4, qword_281445368);
  (*(v1 + 104))(v3, *MEMORY[0x277CB96A0], v0);
  return sub_22CE85C64();
}

uint64_t static Logger.pushServer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v2 = sub_22CE85C84();
  v3 = __swift_project_value_buffer(v2, qword_281445368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double sub_22CE6C540@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22CE498B0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_22CE44458(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t sub_22CE6C5A4(char a1)
{
  result = 7565409;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x2D746E65746E6F63;
      break;
    case 3:
      result = 0x746E657665;
      break;
    case 4:
      result = 0x617373696D736964;
      break;
    case 5:
      result = 0x7472656C61;
      break;
    case 6:
      result = 0x656C746974;
      break;
    case 7:
      result = 2036625250;
      break;
    case 8:
      result = 0x79656B2D636F6CLL;
      break;
    case 9:
      result = 0x736772612D636F6CLL;
      break;
    case 10:
      result = 0x646E756F73;
      break;
    case 11:
      result = 0x61642D656C617473;
      break;
    case 12:
      result = 0x636E6176656C6572;
      break;
    case 13:
      result = 0x7475626972747461;
      break;
    case 14:
      result = 0x7475626972747461;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void APSPushConnection.__allocating_init(environmentName:namedDelegatePort:queue:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v11 = objc_allocWithZone(v8);
  *&v11[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a7;
  swift_unknownObjectWeakAssign();
  v12 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v13 = sub_22CE85DF4();
  v14 = sub_22CE85DF4();
  v15 = [v12 initWithEnvironmentName:v13 namedDelegatePort:v14 queue:a5];

  if (v15)
  {

    *&v11[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection] = v15;
    v19.receiver = v11;
    v19.super_class = v8;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    v17 = *&v16[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection];
    v18 = v16;
    [v17 setDelegate_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void APSPushConnection.init(environmentName:namedDelegatePort:queue:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a7;
  swift_unknownObjectWeakAssign();
  v9 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v10 = sub_22CE85DF4();
  v11 = sub_22CE85DF4();
  v12 = [v9 initWithEnvironmentName:v10 namedDelegatePort:v11 queue:a5];

  if (v12)
  {

    *&v7[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection] = v12;
    v16.receiver = v7;
    v16.super_class = type metadata accessor for APSPushConnection();
    v13 = objc_msgSendSuper2(&v16, sel_init);
    v14 = *&v13[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection];
    v15 = v13;
    [v14 setDelegate_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id APSPushConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id APSPushConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APSPushConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22CE6CBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = objc_allocWithZone(MEMORY[0x277CD9D98]);
  v8 = sub_22CE85DF4();
  v9 = [v7 initWithChannelID_];

  v10 = *(v5 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection);
  v11 = sub_22CE85DF4();
  [v10 *a5];
}

void sub_22CE6CC8C(uint64_t *a1, SEL *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  v9 = a1[1];
  v18[0] = *a1;
  v18[1] = v9;

  MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
  v10 = objc_allocWithZone(MEMORY[0x277CEEA00]);
  v11 = sub_22CE85DF4();

  v12 = sub_22CE85DF4();
  v13 = [v10 initWithTopic:v11 identifier:v12];

  v14 = type metadata accessor for AppTokenInfo(0);
  sub_22CE63D88(a1 + *(v14 + 24), v8);
  v15 = sub_22CE85974();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v8, 1, v15) != 1)
  {
    v17 = sub_22CE858E4();
    (*(v16 + 8))(v8, v15);
  }

  [v13 setExpirationDate_];

  [*(v4 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection) *a2];
}

Swift::Void __swiftcall APSPushConnection.setEnabledTopics(_:ignoredTopics:opportunisticTopics:nonWakingTopics:)(Swift::OpaquePointer _, Swift::OpaquePointer ignoredTopics, Swift::OpaquePointer opportunisticTopics, Swift::OpaquePointer nonWakingTopics)
{
  v5 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection);
  v6 = sub_22CE85F24();
  v7 = sub_22CE85F24();
  v8 = sub_22CE85F24();
  v9 = sub_22CE85F24();
  [v5 setEnabledTopics:v6 ignoredTopics:v7 opportunisticTopics:v8 nonWakingTopics:v9];
}

void sub_22CE6CF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v9 = objc_allocWithZone(MEMORY[0x277CD9D98]);
  v10 = sub_22CE85DF4();
  v11 = [v9 initWithChannelID_];

  v12 = *(v7 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection);
  v13 = sub_22CE85DF4();
  [v12 *a7];
}

void sub_22CE6D04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection);
  v6 = sub_22CE85F24();
  v7 = sub_22CE85F24();
  v8 = sub_22CE85F24();
  v9 = sub_22CE85F24();
  [v5 setEnabledTopics:v6 ignoredTopics:v7 opportunisticTopics:v8 nonWakingTopics:v9];
}

id sub_22CE6D1E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 pushType] != 1024)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v28 = sub_22CE85C84();
    __swift_project_value_buffer(v28, qword_281445368);
    v29 = a1;
    v30 = sub_22CE85C74();
    v31 = sub_22CE85F94();
    if (!os_log_type_enabled(v30, v31))
    {

      v30 = v29;
      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    *v32 = 134349056;
    *(v32 + 4) = [v29 pushType];

    _os_log_impl(&dword_22CE3F000, v30, v31, "Incoming message has an unexpected push type: %{public}lu", v32, 0xCu);
    v33 = v32;
LABEL_19:
    MEMORY[0x2318C20D0](v33, -1, -1);
LABEL_21:

    sub_22CE70ADC();
    swift_allocError();
    *v37 = 1;
    return swift_willThrow();
  }

  sub_22CE86084();
  result = [a1 userInfo];
  if (!result)
  {
    __break(1u);
    goto LABEL_40;
  }

  v6 = result;
  v7 = sub_22CE85D74();

  if (!*(v7 + 16) || (v8 = sub_22CE49990(v52), (v9 & 1) == 0))
  {

    sub_22CE4DD40(v52);
    goto LABEL_15;
  }

  sub_22CE44458(*(v7 + 56) + 32 * v8, v53);
  sub_22CE4DD40(v52);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEFA0, &qword_22CE88898);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v34 = sub_22CE85C84();
    __swift_project_value_buffer(v34, qword_281445368);
    v30 = sub_22CE85C74();
    v35 = sub_22CE85F94();
    if (!os_log_type_enabled(v30, v35))
    {
      goto LABEL_21;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_22CE3F000, v30, v35, "Incoming message does not contain an aps dictionary", v36, 2u);
    v33 = v36;
    goto LABEL_19;
  }

  result = [a1 topic];
  if (!result)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v10 = result;
  v54 = 7565409;
  v11 = sub_22CE85E04();
  v13 = v12;

  v14 = "; activityIdentifier: ";
  if (sub_22CE85EF4())
  {
    v15 = sub_22CE85E64();
    v16 = sub_22CE4EF5C(v15, v11, v13);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v50 = MEMORY[0x2318C16D0](v16, v18, v20, v22);
    v24 = v23;

    v25 = [a1 perAppToken];
    if (v25)
    {
      v26 = v25;
      v2 = sub_22CE858A4();
      v14 = v27;
    }

    else
    {
      v2 = 0;
      v14 = 0xF000000000000000;
    }

    v38 = [a1 channelID];
    if (v38)
    {
      v39 = v38;
      v40 = sub_22CE85E04();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = [a1 priority];
    if (v43 == 1)
    {
      v44 = 2;
      goto LABEL_32;
    }

    if (v43 == 10)
    {
      v44 = 0;
      goto LABEL_32;
    }

    if (v43 == 5)
    {
      v44 = 1;
LABEL_32:
      v52[0] = v51;
      v52[1] = v24;
      v53[0] = v44;
      static APSPushConnection.createIncomingMessage(from:topic:priority:token:channelID:)(v54, v52, v53, v2, v14, v40, v42, a2);
      sub_22CE70B40(v2, v14);
    }

    if (qword_281445360 == -1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_34:
  v45 = sub_22CE85C84();
  __swift_project_value_buffer(v45, qword_281445368);
  v46 = sub_22CE85C74();
  v47 = sub_22CE85F94();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_22CE3F000, v46, v47, "Incoming message contains an illegal priority", v48, 2u);
    MEMORY[0x2318C20D0](v48, -1, -1);
  }

  sub_22CE70ADC();
  swift_allocError();
  *v49 = 1;
  swift_willThrow();
  return sub_22CE70B40(v2, v14);
}

uint64_t static APSPushConnection.createIncomingMessage(from:topic:priority:token:channelID:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v193 = a6;
  v194 = a7;
  v191 = a4;
  v192 = a5;
  v195 = a8;
  v11 = type metadata accessor for IncomingMessage.EventType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v173 - v15;
  v17 = sub_22CE85974();
  v197 = *(v17 - 8);
  v198 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v196 = &v173 - v21;
  if (!*(a1 + 16) || (v22 = a2[1], v189 = *a2, v190 = v22, v23 = *a3, v24 = sub_22CE498B0(0x746E657665, 0xE500000000000000), (v25 & 1) == 0) || (sub_22CE44458(*(a1 + 56) + 32 * v24, &v208), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v31 = sub_22CE85C84();
    __swift_project_value_buffer(v31, qword_281445368);
    v32 = sub_22CE85C74();
    v33 = sub_22CE85F94();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_16;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Incoming message does not contain an event type";
    goto LABEL_15;
  }

  if (!*(a1 + 16) || (v188 = v202, v26 = sub_22CE498B0(0x6D617473656D6974, 0xE900000000000070), (v27 & 1) == 0) || (sub_22CE44458(*(a1 + 56) + 32 * v26, &v208), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v38 = sub_22CE85C84();
    __swift_project_value_buffer(v38, qword_281445368);
    v32 = sub_22CE85C74();
    v33 = sub_22CE85F94();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_16;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Incoming message does not contain a timestamp";
LABEL_15:
    _os_log_impl(&dword_22CE3F000, v32, v33, v35, v34, 2u);
    MEMORY[0x2318C20D0](v34, -1, -1);
LABEL_16:

    sub_22CE70ADC();
    swift_allocError();
    *v36 = 1;
    return swift_willThrow();
  }

  sub_22CE85924();
  if (*(a1 + 16) && (v28 = sub_22CE498B0(0x61642D656C617473, 0xEA00000000006574), (v29 & 1) != 0) && (sub_22CE44458(*(a1 + 56) + 32 * v28, &v208), (swift_dynamicCast() & 1) != 0))
  {
    sub_22CE85924();
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v184 = *(v197 + 56);
  v185 = v197 + 56;
  v184(v16, v30, 1, v198);
  if (!*(a1 + 16))
  {
    v187 = 0;
    v186 = 1;
    goto LABEL_40;
  }

  v39 = sub_22CE498B0(0x636E6176656C6572, 0xEF65726F63732D65);
  if (v40)
  {
    sub_22CE44458(*(a1 + 56) + 32 * v39, v214);
    v41 = swift_dynamicCast();
    v42 = v208;
    if (!v41)
    {
      v42 = 0;
    }

    v187 = v42;
    v43 = v41 ^ 1;
  }

  else
  {
    v187 = 0;
    v43 = 1;
  }

  v186 = v43;
  if (!*(a1 + 16) || (v44 = sub_22CE498B0(0x7472656C61, 0xE500000000000000), (v45 & 1) == 0) || (sub_22CE44458(*(a1 + 56) + 32 * v44, &v202), v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEFA0, &qword_22CE88898), (swift_dynamicCast() & 1) == 0))
  {
LABEL_40:
    v208 = xmmword_22CE88870;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    if (!*(a1 + 16))
    {
      goto LABEL_112;
    }

    goto LABEL_41;
  }

  v46 = *&v207[0];
  v47 = *(*&v207[0] + 16);
  v183 = *&v207[0];
  if (v47)
  {
    v48 = sub_22CE498B0(0x646E756F73, 0xE500000000000000);
    if (v49)
    {
      sub_22CE44458(v183[7] + 32 * v48, &v202);
      v50 = swift_dynamicCast();
      v51 = *&v207[0];
      if (!v50)
      {
        v51 = 0;
      }

      v176 = v51;
      if (v50)
      {
        v52 = *(&v207[0] + 1);
      }

      else
      {
        v52 = 0;
      }

      v179 = v52;
    }

    else
    {
      v176 = 0;
      v179 = 0;
    }

    v46 = v183;
  }

  else
  {
    v176 = 0;
    v179 = 0;
  }

  if (v46[2])
  {
    v79 = sub_22CE498B0(0x656C746974, 0xE500000000000000);
    v46 = v183;
    if (v80)
    {
      sub_22CE44458(v183[7] + 32 * v79, &v202);
      if (swift_dynamicCast())
      {
        v81 = *&v207[0];
        if (*(*&v207[0] + 16))
        {
          v82 = sub_22CE498B0(0x79656B2D636F6CLL, 0xE700000000000000);
          if (v83)
          {
            sub_22CE44458(*(v81 + 56) + 32 * v82, &v202);
            if (swift_dynamicCast())
            {
              *&v180[8] = *(&v207[0] + 1);
              v178 = *&v207[0];
              sub_22CE6C540(0x736772612D636F6CLL, 0xE800000000000000, v81, &v202);

              if (*(&v203 + 1))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF90, &qword_22CE87110);
                if (swift_dynamicCast())
                {
                  v84 = *&v207[0];
LABEL_145:
                  v177 = sub_22CE6F9FC(v84);

                  v175 = 0;
                  *v180 = 0;
                  v46 = v183;
                  goto LABEL_83;
                }
              }

              else
              {
                sub_22CE42330(&v202, &qword_27D9EEE40, &qword_22CE87B20);
              }

              v84 = MEMORY[0x277D84F90];
              goto LABEL_145;
            }
          }
        }
      }

      v46 = v183;
    }
  }

  if (v46[2] && (v91 = sub_22CE498B0(0x656C746974, 0xE500000000000000), v46 = v183, (v92 & 1) != 0))
  {
    sub_22CE44458(v183[7] + 32 * v91, &v202);
    if (swift_dynamicCast())
    {
      v177 = 0;
      v178 = 0;
      *v180 = *(&v207[0] + 1);
      v175 = *&v207[0];
      *&v180[8] = 0;
    }

    else
    {
      v175 = 0;
      *v180 = 0;
      *&v180[8] = 0;
      v177 = 0;
      v178 = 0;
    }

    v46 = v183;
  }

  else
  {
    v175 = 0;
    *v180 = 0;
    *&v180[8] = 0;
    v177 = 0;
    v178 = 0;
  }

LABEL_83:
  v93 = v46[2];
  v182 = v23;
  if (v93)
  {
    v94 = sub_22CE498B0(2036625250, 0xE400000000000000);
    v46 = v183;
    if (v95)
    {
      sub_22CE44458(v183[7] + 32 * v94, &v202);
      if (swift_dynamicCast())
      {
        v96 = *&v207[0];
        sub_22CE6C540(0x79656B2D636F6CLL, 0xE700000000000000, *&v207[0], &v202);
        if (*(&v203 + 1))
        {
          if (swift_dynamicCast())
          {

            v174 = *(&v207[0] + 1);
            v183 = *&v207[0];
            sub_22CE6C540(0x736772612D636F6CLL, 0xE800000000000000, v96, &v202);

            if (*(&v203 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF90, &qword_22CE87110);
              if (swift_dynamicCast())
              {
                v97 = *&v207[0];
LABEL_137:
                v181 = sub_22CE6F9FC(v97);

                v101 = 0;
                v102 = 0;
                v100 = v174;
                goto LABEL_105;
              }
            }

            else
            {
              sub_22CE42330(&v202, &qword_27D9EEE40, &qword_22CE87B20);
            }

            v97 = MEMORY[0x277D84F90];
            goto LABEL_137;
          }
        }

        else
        {

          sub_22CE42330(&v202, &qword_27D9EEE40, &qword_22CE87B20);
        }
      }

      v46 = v183;
    }
  }

  if (v46[2])
  {
    v98 = sub_22CE498B0(2036625250, 0xE400000000000000);
    if (v99)
    {
      sub_22CE44458(v183[7] + 32 * v98, &v202);
    }

    else
    {
      v202 = 0u;
      v203 = 0u;
    }
  }

  else
  {
    v202 = 0u;
    v203 = 0u;
  }

  if (*(&v203 + 1))
  {
    if (swift_dynamicCast())
    {
      v183 = 0;
      v100 = 0;
      v181 = 0;
      v102 = *(&v207[0] + 1);
      v101 = *&v207[0];
      goto LABEL_105;
    }
  }

  else
  {
    sub_22CE42330(&v202, &qword_27D9EEE40, &qword_22CE87B20);
  }

  v101 = 0;
  v102 = 0;
  v183 = 0;
  v100 = 0;
  v181 = 0;
LABEL_105:
  if (*v180 == 0)
  {

    v103 = v183;
    v104 = v100;
    v105 = v181;
LABEL_109:
    sub_22CE70BB4(v103, v104, v105);
    v208 = xmmword_22CE88870;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    goto LABEL_111;
  }

  if (!(v100 | v102))
  {

    v105 = v177;
    v103 = v178;
    v104 = *&v180[8];
    goto LABEL_109;
  }

  *&v208 = v178;
  *(&v208 + 1) = *&v180[8];
  *&v209 = v177;
  *(&v209 + 1) = v183;
  *&v210 = v100;
  *(&v210 + 1) = v181;
  *&v211 = v175;
  *(&v211 + 1) = *v180;
  *&v212 = v101;
  *(&v212 + 1) = v102;
  *&v213 = v176;
  *(&v213 + 1) = v179;
LABEL_111:
  v23 = v182;
  if (!*(a1 + 16))
  {
    goto LABEL_112;
  }

LABEL_41:
  v53 = sub_22CE498B0(0x2D746E65746E6F63, 0xED00006574617473);
  if (v54)
  {
    v182 = v23;
    sub_22CE44458(*(a1 + 56) + 32 * v53, &v202);
    sub_22CE70B30(&v202, v207);
    v55 = swift_allocObject();
    *&v180[8] = xmmword_22CE88880;
    *(v55 + 16) = xmmword_22CE88880;
    v181 = v55 + 16;
    sub_22CE44458(v207, v206);
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    sub_22CE70B30(v206, (v56 + 24));
    v204 = sub_22CE70EAC;
    v205 = v56;
    *&v202 = MEMORY[0x277D85DD0];
    *(&v202 + 1) = 1107296256;
    *&v203 = sub_22CE42F10;
    *(&v203 + 1) = &block_descriptor_4;
    v57 = _Block_copy(&v202);
    v183 = v55;

    v58 = acTryWithObjCException();
    _Block_release(v57);
    if (v58)
    {

      sub_22CE42330(&v208, &unk_27D9EEF80, &qword_22CE872D8);
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v59 = sub_22CE85C84();
      __swift_project_value_buffer(v59, qword_281445368);
      v60 = v58;
      v61 = v58;
      v62 = sub_22CE85C74();
      v63 = sub_22CE85F94();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = 138543362;
        *(v64 + 4) = v61;
        *v65 = v60;
        v66 = v61;
        _os_log_impl(&dword_22CE3F000, v62, v63, "Incoming message contains a payload that cannot be serialized to data: %{public}@", v64, 0xCu);
        sub_22CE42330(v65, &qword_27D9EEF98, &qword_22CE88890);
        MEMORY[0x2318C20D0](v65, -1, -1);
        MEMORY[0x2318C20D0](v64, -1, -1);
      }

      sub_22CE70ADC();
      swift_allocError();
      *v67 = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v207);
      sub_22CE42330(v16, &qword_27D9EEF40, &qword_22CE86C00);
      (*(v197 + 8))(v196, v198);
    }

    swift_beginAccess();
    v68 = v183[3];
    if (v68 >> 60 == 15)
    {

      sub_22CE42330(&v208, &unk_27D9EEF80, &qword_22CE872D8);
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v69 = sub_22CE85C84();
      __swift_project_value_buffer(v69, qword_281445368);
      v70 = sub_22CE85C74();
      v71 = sub_22CE85F94();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_22CE3F000, v70, v71, "Incoming message does not contain a usable payload", v72, 2u);
        MEMORY[0x2318C20D0](v72, -1, -1);
      }

      sub_22CE70ADC();
      swift_allocError();
      *v73 = 1;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v207);
      sub_22CE42330(v16, &qword_27D9EEF40, &qword_22CE86C00);
      (*(v197 + 8))(v196, v198);
    }

    v74 = v183[2];
    if (v188 == __PAIR128__(0xE600000000000000, 0x657461647075) || (v181 = v183[3], v75 = sub_22CE86194(), v68 = v181, (v75 & 1) != 0))
    {
      sub_22CE41BF0(v74, v68);
      __swift_destroy_boxed_opaque_existential_1(v207);

      swift_storeEnumTagMultiPayload();
      v77 = v194;
      v76 = v195;
      v78 = v74;
LABEL_124:
      v111 = type metadata accessor for IncomingMessage(0);
      sub_22CE517C8(v13, v76 + v111[10]);
      (*(v197 + 32))(v76 + v111[8], v196, v198);
      sub_22CE50774(v16, v76 + v111[12]);
      v113 = v191;
      v112 = v192;
      *v76 = v191;
      *(v76 + 8) = v112;
      v114 = v190;
      *(v76 + 16) = v189;
      *(v76 + 24) = v114;

      sub_22CE51710(v113, v112);

      *(v76 + 32) = v193;
      *(v76 + 40) = v77;
      *(v76 + 48) = v182;
      v115 = (v76 + v111[9]);
      *v115 = v78;
      v115[1] = v68;
      v116 = (v76 + v111[11]);
      v117 = v211;
      v116[2] = v210;
      v116[3] = v117;
      v118 = v213;
      v116[4] = v212;
      v116[5] = v118;
      v119 = v209;
      *v116 = v208;
      v116[1] = v119;
      v120 = v76 + v111[13];
      *v120 = v187;
      *(v120 + 8) = v186;
      return result;
    }

    *v180 = v74;
    if (v188 == __PAIR128__(0xE300000000000000, 6581861) || (v85 = sub_22CE86194(), v68 = v181, (v85 & 1) != 0))
    {
      sub_22CE41BF0(v74, v68);

      sub_22CE6C540(0x617373696D736964, 0xEE00657461642D6CLL, a1, &v202);
      if (*(&v203 + 1))
      {
        v86 = swift_dynamicCast();
        v77 = v194;
        if (v86)
        {
          sub_22CE85924();
          __swift_destroy_boxed_opaque_existential_1(v207);
          v87 = v198;
          (*(v197 + 32))(v13, v20, v198);
          v88 = v13;
          v89 = 0;
          v90 = v87;
LABEL_122:
          v184(v88, v89, 1, v90);
          swift_storeEnumTagMultiPayload();
          v76 = v195;
LABEL_123:
          v68 = v181;
          v78 = *v180;
          goto LABEL_124;
        }

        __swift_destroy_boxed_opaque_existential_1(v207);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v207);
        sub_22CE42330(&v202, &qword_27D9EEE40, &qword_22CE87B20);
        v77 = v194;
      }

      v88 = v13;
      v89 = 1;
      v90 = v198;
      goto LABEL_122;
    }

    if (v188 == __PAIR128__(0xE500000000000000, 0x7472617473))
    {
      sub_22CE41BF0(*v180, v181);
    }

    else
    {
      v121 = sub_22CE86194();
      sub_22CE41BF0(*v180, v181);

      if ((v121 & 1) == 0)
      {
        sub_22CE42330(&v208, &unk_27D9EEF80, &qword_22CE872D8);
        if (qword_281445360 != -1)
        {
          swift_once();
        }

        v132 = sub_22CE85C84();
        __swift_project_value_buffer(v132, qword_281445368);
        v133 = sub_22CE85C74();
        v134 = sub_22CE85F94();
        if (!os_log_type_enabled(v133, v134))
        {
          goto LABEL_154;
        }

        v135 = swift_slowAlloc();
        *v135 = 0;
        v136 = "Incoming message contains an illegal event type";
        goto LABEL_153;
      }
    }

    sub_22CE6C540(0x7475626972747461, 0xEF657079742D7365, a1, &v202);
    if (*(&v203 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        v137 = &unk_27D9EEF80;
        v138 = &qword_22CE872D8;
        v139 = &v208;
LABEL_149:
        sub_22CE42330(v139, v137, v138);
        if (qword_281445360 != -1)
        {
          swift_once();
        }

        v140 = sub_22CE85C84();
        __swift_project_value_buffer(v140, qword_281445368);
        v133 = sub_22CE85C74();
        v134 = sub_22CE85F94();
        if (!os_log_type_enabled(v133, v134))
        {
          goto LABEL_154;
        }

        v135 = swift_slowAlloc();
        *v135 = 0;
        v136 = "Incoming message does not contain usable attributes";
LABEL_153:
        _os_log_impl(&dword_22CE3F000, v133, v134, v136, v135, 2u);
        MEMORY[0x2318C20D0](v135, -1, -1);
LABEL_154:

        sub_22CE70ADC();
        swift_allocError();
        *v141 = 1;
        swift_willThrow();
        sub_22CE70B40(*v180, v181);
        __swift_destroy_boxed_opaque_existential_1(v207);
        sub_22CE42330(v16, &qword_27D9EEF40, &qword_22CE86C00);
        (*(v197 + 8))(v196, v198);
      }

      *&v188 = *(&v206[0] + 1);
      v179 = *&v206[0];
      sub_22CE6C540(0x7475626972747461, 0xEA00000000007365, a1, &v202);
      if (*(&v203 + 1))
      {
        sub_22CE70B30(&v202, v206);
        v122 = swift_allocObject();
        *(v122 + 16) = *&v180[8];
        *(&v188 + 1) = v122 + 16;
        sub_22CE44458(v206, v201);
        v123 = swift_allocObject();
        *(v123 + 16) = v122;
        sub_22CE70B30(v201, (v123 + 24));
        v204 = sub_22CE70B94;
        v205 = v123;
        *&v202 = MEMORY[0x277D85DD0];
        *(&v202 + 1) = 1107296256;
        *&v203 = sub_22CE42F10;
        *(&v203 + 1) = &block_descriptor_10;
        v124 = _Block_copy(&v202);
        v185 = v122;

        v125 = acTryWithObjCException();
        _Block_release(v124);
        if (v125)
        {

          sub_22CE42330(&v208, &unk_27D9EEF80, &qword_22CE872D8);
          if (qword_281445360 != -1)
          {
            swift_once();
          }

          v126 = sub_22CE85C84();
          __swift_project_value_buffer(v126, qword_281445368);
          v127 = sub_22CE85C74();
          v128 = sub_22CE85F94();
          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            *v129 = 138543362;
            *(v129 + 4) = 0;
            *v130 = 0;
            _os_log_impl(&dword_22CE3F000, v127, v128, "Incoming message contains attributes that cannot be serialized to data: %{public}@", v129, 0xCu);
            sub_22CE42330(v130, &qword_27D9EEF98, &qword_22CE88890);
            MEMORY[0x2318C20D0](v130, -1, -1);
            MEMORY[0x2318C20D0](v129, -1, -1);
          }

          sub_22CE70ADC();
          swift_allocError();
          *v131 = 1;
          swift_willThrow();
          sub_22CE70B40(*v180, v181);

          goto LABEL_162;
        }

        swift_beginAccess();
        v178 = *(v185 + 24);
        if (v178 >> 60 == 15)
        {

          sub_22CE42330(&v208, &unk_27D9EEF80, &qword_22CE872D8);
          if (qword_281445360 != -1)
          {
            swift_once();
          }

          v142 = sub_22CE85C84();
          __swift_project_value_buffer(v142, qword_281445368);
          v143 = sub_22CE85C74();
          v144 = sub_22CE85F94();
          if (os_log_type_enabled(v143, v144))
          {
            v145 = swift_slowAlloc();
            *v145 = 0;
            _os_log_impl(&dword_22CE3F000, v143, v144, "Incoming message contains attributes that cannot be serialized to data", v145, 2u);
            MEMORY[0x2318C20D0](v145, -1, -1);
          }

          sub_22CE70ADC();
          swift_allocError();
          *v146 = 1;
          swift_willThrow();
LABEL_161:
          sub_22CE70B40(*v180, v181);
LABEL_162:
          __swift_destroy_boxed_opaque_existential_1(v206);
          __swift_destroy_boxed_opaque_existential_1(v207);
          sub_22CE42330(v16, &qword_27D9EEF40, &qword_22CE86C00);
          (*(v197 + 8))(v196, v198);
        }

        v177 = *(v185 + 16);
        sub_22CE41BF0(v177, v178);
        sub_22CE6C540(0xD000000000000010, 0x800000022CE8A980, a1, &v202);
        if (*(&v203 + 1))
        {
          if ((swift_dynamicCast() & 1) != 0 && v199 == 1)
          {
            v147 = sub_22CE605F0(0, 1, 1, MEMORY[0x277D84F90]);
            v149 = *(v147 + 2);
            v148 = *(v147 + 3);
            *(&v188 + 1) = v147;
            if (v149 >= v148 >> 1)
            {
              *(&v188 + 1) = sub_22CE605F0((v148 > 1), v149 + 1, 1, *(&v188 + 1));
            }

            v150 = *(&v188 + 1);
            *(*(&v188 + 1) + 16) = v149 + 1;
            v151 = v150 + 24 * v149;
            *(v151 + 32) = 0;
            *(v151 + 40) = 0;
            *(v151 + 48) = 2;
            v152 = 1;
LABEL_171:
            sub_22CE6C540(0xD000000000000012, 0x800000022CE8A9A0, a1, &v202);
            if (*(&v203 + 1))
            {
              if (swift_dynamicCast())
              {
                v153 = v200;
                if (v152)
                {
                  sub_22CE42330(&v208, &unk_27D9EEF80, &qword_22CE872D8);

                  if (qword_281445360 != -1)
                  {
                    swift_once();
                  }

                  v154 = sub_22CE85C84();
                  __swift_project_value_buffer(v154, qword_281445368);
                  v155 = sub_22CE85C74();
                  v156 = sub_22CE85F94();
                  if (os_log_type_enabled(v155, v156))
                  {
                    v157 = swift_slowAlloc();
                    *v157 = 0;
                    _os_log_impl(&dword_22CE3F000, v155, v156, "Incoming message contains two forms of push input", v157, 2u);
                    MEMORY[0x2318C20D0](v157, -1, -1);
                  }

                  sub_22CE70ADC();
                  swift_allocError();
                  *v158 = 1;
                  swift_willThrow();
                  sub_22CE70B40(v177, v178);
                  goto LABEL_161;
                }

                v184 = v199;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  *(&v188 + 1) = sub_22CE605F0(0, *(*(&v188 + 1) + 16) + 1, 1, *(&v188 + 1));
                }

                v160 = *(*(&v188 + 1) + 16);
                v159 = *(*(&v188 + 1) + 24);
                if (v160 >= v159 >> 1)
                {
                  *(&v188 + 1) = sub_22CE605F0((v159 > 1), v160 + 1, 1, *(&v188 + 1));
                }

                v161 = *(&v188 + 1);
                *(*(&v188 + 1) + 16) = v160 + 1;
                v162 = v161 + 24 * v160;
                *(v162 + 32) = v184;
                *(v162 + 40) = v153;
                *(v162 + 48) = 0;
              }
            }

            else
            {
              sub_22CE42330(&v202, &qword_27D9EEE40, &qword_22CE87B20);
            }

            sub_22CE6C540(0xD000000000000018, 0x800000022CE8A9C0, a1, &v202);
            if (*(&v203 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF90, &qword_22CE87110);
              if (swift_dynamicCast())
              {
                v176 = v199;
                v163 = *(v199 + 16);
                if (v163)
                {
                  v164 = (v176 + 40);
                  do
                  {
                    v165 = *v164;
                    *&v180[8] = *(v164 - 1);
                    v184 = v165;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      *(&v188 + 1) = sub_22CE605F0(0, *(*(&v188 + 1) + 16) + 1, 1, *(&v188 + 1));
                    }

                    v167 = *(*(&v188 + 1) + 16);
                    v166 = *(*(&v188 + 1) + 24);
                    if (v167 >= v166 >> 1)
                    {
                      *(&v188 + 1) = sub_22CE605F0((v166 > 1), v167 + 1, 1, *(&v188 + 1));
                    }

                    v168 = *(&v188 + 1);
                    *(*(&v188 + 1) + 16) = v167 + 1;
                    v169 = v168 + 24 * v167;
                    v170 = v184;
                    *(v169 + 32) = *&v180[8];
                    *(v169 + 40) = v170;
                    *(v169 + 48) = 1;
                    v164 += 2;
                    --v163;
                  }

                  while (v163);
                }
              }

              __swift_destroy_boxed_opaque_existential_1(v206);
              __swift_destroy_boxed_opaque_existential_1(v207);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v206);
              __swift_destroy_boxed_opaque_existential_1(v207);
              sub_22CE42330(&v202, &qword_27D9EEE40, &qword_22CE87B20);
            }

            v171 = v188;
            *v13 = v179;
            *(v13 + 1) = v171;
            v172 = v178;
            *(v13 + 2) = v177;
            *(v13 + 3) = v172;
            *(v13 + 4) = *(&v188 + 1);
            swift_storeEnumTagMultiPayload();

            v77 = v194;
            v76 = v195;
            goto LABEL_123;
          }
        }

        else
        {
          sub_22CE42330(&v202, &qword_27D9EEE40, &qword_22CE87B20);
        }

        v152 = 0;
        *(&v188 + 1) = MEMORY[0x277D84F90];
        goto LABEL_171;
      }

      sub_22CE42330(&v208, &unk_27D9EEF80, &qword_22CE872D8);
    }

    else
    {
      sub_22CE42330(&v208, &unk_27D9EEF80, &qword_22CE872D8);
    }

    v137 = &qword_27D9EEE40;
    v138 = &qword_22CE87B20;
    v139 = &v202;
    goto LABEL_149;
  }

LABEL_112:
  sub_22CE42330(&v208, &unk_27D9EEF80, &qword_22CE872D8);

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v106 = sub_22CE85C84();
  __swift_project_value_buffer(v106, qword_281445368);
  v107 = sub_22CE85C74();
  v108 = sub_22CE85F94();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_22CE3F000, v107, v108, "Incoming message does not contain a payload", v109, 2u);
    MEMORY[0x2318C20D0](v109, -1, -1);
  }

  sub_22CE70ADC();
  swift_allocError();
  *v110 = 1;
  swift_willThrow();
  sub_22CE42330(v16, &qword_27D9EEF40, &qword_22CE86C00);
  return (*(v197 + 8))(v196, v198);
}

uint64_t sub_22CE6F9FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22CE4BBE8(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D83838];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_22CE4BBE8((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v12 = MEMORY[0x277D837D0];
      v13 = v5;
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v9 + 1;
      sub_22CE501DC(&v11, v2 + 40 * v9 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22CE6FAF8(uint64_t a1, void *a2)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15[0] = 0;
  v5 = [v4 dataWithJSONObject:sub_22CE86184() options:0 error:v15];
  swift_unknownObjectRelease();
  v6 = v15[0];
  if (v5)
  {
    v7 = sub_22CE858A4();
    v9 = v8;
  }

  else
  {
    v10 = v6;
    v11 = sub_22CE85834();

    swift_willThrow();
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  swift_beginAccess();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  return sub_22CE70B40(v12, v13);
}

void sub_22CE6FC58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v3 = sub_22CE85C84();
    __swift_project_value_buffer(v3, qword_281445368);
    oslog = sub_22CE85C74();
    v4 = sub_22CE85F94();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22CE3F000, oslog, v4, "Incoming package token is nil; abandoning", v5, 2u);
      MEMORY[0x2318C20D0](v5, -1, -1);
    }
  }

  else
  {
    v8 = v2 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 8);
      sub_22CE41BF0(a1, a2);
      v11(v2, &protocol witness table for APSPushConnection, a1, a2, ObjectType, v9);
      swift_unknownObjectRelease();

      sub_22CE70B40(a1, a2);
    }
  }
}

void sub_22CE6FE2C(void *a1)
{
  v3 = type metadata accessor for IncomingMessage(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_22CE6D1E8(v6, v5);
    v11 = v1 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      (*(v12 + 16))(v1, &protocol witness table for APSPushConnection, v5, ObjectType, v12);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_22CE70E48(v5, type metadata accessor for IncomingMessage);
  }

  else
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v7 = sub_22CE85C84();
    __swift_project_value_buffer(v7, qword_281445368);
    v14 = sub_22CE85C74();
    v8 = sub_22CE85F94();
    if (os_log_type_enabled(v14, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22CE3F000, v14, v8, "Incoming message token is nil; abandoning", v9, 2u);
      MEMORY[0x2318C20D0](v9, -1, -1);
    }

    v10 = v14;
  }
}

void sub_22CE70160(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v10 = type metadata accessor for AppTokenInfo(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 >> 60 == 15)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v14 = sub_22CE85C84();
    __swift_project_value_buffer(v14, qword_281445368);
    v51 = sub_22CE85C74();
    v15 = sub_22CE85F94();
    if (os_log_type_enabled(v51, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22CE3F000, v51, v15, "Incoming token is nil; abandoning", v16, 2u);
      MEMORY[0x2318C20D0](v16, -1, -1);
    }

LABEL_14:
    v42 = v51;

    return;
  }

  if (!a3)
  {
    sub_22CE41BF0(a1, a2);
    if (qword_281445360 == -1)
    {
LABEL_11:
      v39 = sub_22CE85C84();
      __swift_project_value_buffer(v39, qword_281445368);
      v51 = sub_22CE85C74();
      v40 = sub_22CE85F94();
      if (os_log_type_enabled(v51, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_22CE3F000, v51, v40, "Incoming token info is nil; abandoning", v41, 2u);
        MEMORY[0x2318C20D0](v41, -1, -1);
      }

      sub_22CE70B40(a1, a2);
      goto LABEL_14;
    }

LABEL_23:
    swift_once();
    goto LABEL_11;
  }

  v51 = v11;
  v17 = a3;
  sub_22CE51710(a1, a2);
  v18 = [v17 topic];
  v19 = sub_22CE85E04();
  v21 = v20;

  if ((sub_22CE85EF4() & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v50 = a1;
  v22 = sub_22CE85E64();
  v23 = sub_22CE4EF5C(v22, v19, v21);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v49 = MEMORY[0x2318C16D0](v23, v25, v27, v29);
  v31 = v30;

  v32 = [v17 identifier];
  v33 = sub_22CE85E04();
  v35 = v34;

  v36 = [v17 expirationDate];
  if (v36)
  {
    v37 = v36;
    sub_22CE85944();

    v38 = sub_22CE85974();
    (*(*(v38 - 8) + 56))(v9, 0, 1, v38);
  }

  else
  {
    v43 = sub_22CE85974();
    (*(*(v43 - 8) + 56))(v9, 1, 1, v43);
  }

  *v13 = v49;
  v13[1] = v31;
  v13[2] = v33;
  v13[3] = v35;
  sub_22CE50774(v9, v13 + SLODWORD(v51[3].isa));
  v44 = v3 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v47 = v50;
    (*(v45 + 24))(v3, &protocol witness table for APSPushConnection, v50, a2, v13, ObjectType, v45);

    swift_unknownObjectRelease();
  }

  else
  {

    v47 = v50;
  }

  sub_22CE70B40(v47, a2);
  sub_22CE70E48(v13, type metadata accessor for AppTokenInfo);
}

void sub_22CE70658(unint64_t a1)
{
  if (!a1)
  {
    if (qword_281445360 == -1)
    {
LABEL_23:
      v33 = sub_22CE85C84();
      __swift_project_value_buffer(v33, qword_281445368);
      osloga = sub_22CE85C74();
      v34 = sub_22CE85F94();
      if (os_log_type_enabled(osloga, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22CE3F000, osloga, v34, "Incoming channel subscription failures array is nil; abandoning", v35, 2u);
        MEMORY[0x2318C20D0](v35, -1, -1);
      }

      return;
    }

LABEL_41:
    swift_once();
    goto LABEL_23;
  }

  v2 = v1;
  v3 = a1;
  v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
LABEL_39:
    v5 = sub_22CE86134();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_28:
    v36 = v2 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 8);
      ObjectType = swift_getObjectType();
      (*(v37 + 32))(v2, &protocol witness table for APSPushConnection, v6, ObjectType, v37);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v40 = v4;
  v45 = MEMORY[0x277D84F90];
  sub_22CE4BC08(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v39 = v2;
  v7 = 0;
  v8 = v45;
  v41 = v3 & 0xC000000000000001;
  while (1)
  {
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v41)
    {
      v2 = v8;
      v9 = MEMORY[0x2318C19A0](v7, v3);
    }

    else
    {
      if (v7 >= v40[2])
      {
        goto LABEL_38;
      }

      v2 = v8;
      v9 = *(v3 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = [v9 failureReason];
    v12 = 2 * (v11 != 1);
    if (!v11)
    {
      v12 = 1;
    }

    oslog = v12;
    v13 = [v10 pushTopic];
    if (!v13)
    {
      break;
    }

    v4 = v13;
    sub_22CE85E04();

    if ((sub_22CE85EF4() & 1) == 0)
    {
      goto LABEL_36;
    }

    if (sub_22CE85E64() < 0)
    {
      goto LABEL_37;
    }

    v42 = v7 + 1;
    v14 = v5;
    v15 = v3;
    sub_22CE85E94();
    v16 = sub_22CE85F14();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = MEMORY[0x2318C16D0](v16, v18, v20, v22);
    v25 = v24;

    v26 = [v10 channelID];
    if (!v26)
    {
      goto LABEL_43;
    }

    v27 = v26;
    v28 = sub_22CE85E04();
    v30 = v29;

    v8 = v2;
    v46 = v2;
    v2 = *(v2 + 16);
    v31 = *(v8 + 24);
    v4 = (v2 + 1);
    if (v2 >= v31 >> 1)
    {
      sub_22CE4BC08((v31 > 1), v2 + 1, 1);
      v8 = v46;
    }

    *(v8 + 16) = v4;
    v32 = v8 + 40 * v2;
    *(v32 + 32) = v23;
    *(v32 + 40) = v25;
    *(v32 + 48) = v28;
    *(v32 + 56) = v30;
    *(v32 + 64) = oslog;
    ++v7;
    v5 = v14;
    v3 = v15;
    if (v42 == v14)
    {
      v6 = v8;
      v2 = v39;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

unint64_t sub_22CE70ADC()
{
  result = qword_27D9EEF78;
  if (!qword_27D9EEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEF78);
  }

  return result;
}

_OWORD *sub_22CE70B30(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22CE70B40(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22CE4E0DC(result, a2);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_22CE70BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void sub_22CE70BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for APSPushConnection();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a7;
  swift_unknownObjectWeakAssign();
  v11 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v12 = sub_22CE85DF4();
  v13 = sub_22CE85DF4();
  v14 = [v11 initWithEnvironmentName:v12 namedDelegatePort:v13 queue:a5];

  if (v14)
  {
    *&v10[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection] = v14;
    v16.receiver = v10;
    v16.super_class = v9;
    v15 = objc_msgSendSuper2(&v16, sel_init);
    [*&v15[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection] setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22CE70DD4()
{
  result = qword_27D9EF010;
  if (!qword_27D9EF010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9EF010);
  }

  return result;
}

uint64_t sub_22CE70E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Budget.consumedBudget.getter()
{
  v1 = type metadata accessor for Budget(0);
  v2 = *(v0 + *(v1 + 44));
  v3 = *(v0 + *(v1 + 20));
  result = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
  }

  return result;
}

uint64_t Budget.init(topic:subscriptionID:budgetType:startDate:remainingBudget:level:windowDuration:maximumBudgetPerWindow:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = *a4;
  v18 = *a7;
  sub_22CE858C4();
  v19 = type metadata accessor for Budget(0);
  v20 = v19[5];
  v21 = (a9 + v19[7]);
  *v21 = v15;
  v21[1] = v16;
  v22 = (a9 + v19[6]);
  *v22 = a2;
  v22[1] = a3;
  *(a9 + v19[9]) = v17;
  v23 = sub_22CE85974();
  result = (*(*(v23 - 8) + 40))(a9, a5, v23);
  *(a9 + v20) = a6;
  *(a9 + v19[10]) = a10;
  *(a9 + v19[11]) = a8;
  *(a9 + v19[8]) = v18;
  return result;
}

uint64_t Budget.expirationDate.getter()
{
  v1 = sub_22CE85974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_22CE85954();
  v8 = sub_22CE858F4();
  v9 = *(v2 + 8);
  v9(v5, v1);
  if (v8)
  {
    sub_22CE858C4();
  }

  else
  {
    (*(v2 + 16))(v7, v0, v1);
  }

  type metadata accessor for Budget(0);
  sub_22CE85914();
  return (v9)(v7, v1);
}

Swift::Void __swiftcall Budget.reduceBudget()()
{
  v1 = *(type metadata accessor for Budget(0) + 20);
  v2 = *(v0 + v1);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v1) = v4;
  }
}

uint64_t Budget.isExpired.getter()
{
  v1 = v0;
  v2 = sub_22CE85974();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_22CE85954();
  v12 = sub_22CE858F4();
  v13 = *(v3 + 8);
  v13(v6, v2);
  if (v12)
  {
    sub_22CE858C4();
  }

  else
  {
    (*(v3 + 16))(v9, v1, v2);
  }

  type metadata accessor for Budget(0);
  sub_22CE85914();
  v13(v9, v2);
  sub_22CE85954();
  v14 = sub_22CE85904();
  v13(v6, v2);
  v13(v11, v2);
  return v14 & 1;
}

uint64_t Budget.Level.description.getter()
{
  v1 = 0x64656375646572;
  if (*v0 != 1)
  {
    v1 = 0x746E657571657266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

uint64_t Budget.Level.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE71500()
{
  v1 = 0x64656375646572;
  if (*v0 != 1)
  {
    v1 = 0x746E657571657266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

uint64_t Budget.BudgetType.description.getter()
{
  if (*v0)
  {
    return 0x7974697669746361;
  }

  else
  {
    return 0x74536F5468737570;
  }
}

uint64_t Budget.BudgetType.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE71614()
{
  if (*v0)
  {
    return 0x7974697669746361;
  }

  else
  {
    return 0x74536F5468737570;
  }
}

uint64_t Budget.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22CE85974();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Budget.startDate.setter(uint64_t a1)
{
  v3 = sub_22CE85974();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Budget.remainingBudget.setter(uint64_t a1)
{
  result = type metadata accessor for Budget(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Budget.subscriptionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Budget(0) + 24));

  return v1;
}

uint64_t Budget.subscriptionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Budget(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Budget.topic.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Budget(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t Budget.topic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for Budget(0) + 28));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t Budget.level.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Budget(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t Budget.level.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Budget(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t Budget.budgetType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Budget(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t Budget.budgetType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Budget(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t Budget.windowDuration.setter(double a1)
{
  result = type metadata accessor for Budget(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Budget.maximumBudgetPerWindow.setter(uint64_t a1)
{
  result = type metadata accessor for Budget(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t Budget.description.getter()
{
  sub_22CE860F4();
  v1 = 0xE700000000000000;
  MEMORY[0x2318C1750](0x203A6369706F74, 0xE700000000000000);
  v2 = type metadata accessor for Budget(0);
  v3 = (v0 + v2[7]);
  v11 = *v3;
  v12 = v3[1];

  MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
  MEMORY[0x2318C1750](v11, v12);

  MEMORY[0x2318C1750](0xD000000000000012, 0x800000022CE8AAB0);
  MEMORY[0x2318C1750](*(v0 + v2[6]), *(v0 + v2[6] + 8));
  MEMORY[0x2318C1750](0x746567647562203BLL, 0xEE00203A65707954);
  if (*(v0 + v2[9]))
  {
    v4 = 0x7974697669746361;
  }

  else
  {
    v4 = 0x74536F5468737570;
  }

  if (*(v0 + v2[9]))
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEB00000000747261;
  }

  MEMORY[0x2318C1750](v4, v5);

  MEMORY[0x2318C1750](0x447472617473203BLL, 0xED0000203A657461);
  sub_22CE85974();
  sub_22CE72364(&qword_2814452A0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v6 = sub_22CE86174();
  MEMORY[0x2318C1750](v6);

  MEMORY[0x2318C1750](0xD000000000000013, 0x800000022CE8AAD0);
  v7 = sub_22CE86174();
  MEMORY[0x2318C1750](v7);

  MEMORY[0x2318C1750](0x3A6C6576656C203BLL, 0xE900000000000020);
  if (*(v0 + v2[8]))
  {
    if (*(v0 + v2[8]) == 1)
    {
      v8 = 0x64656375646572;
    }

    else
    {
      v1 = 0xE800000000000000;
      v8 = 0x746E657571657266;
    }
  }

  else
  {
    v1 = 0xE800000000000000;
    v8 = 0x6576697463616E69;
  }

  MEMORY[0x2318C1750](v8, v1);

  MEMORY[0x2318C1750](0xD000000000000012, 0x800000022CE8AAF0);
  sub_22CE85F54();
  MEMORY[0x2318C1750](0xD00000000000001ALL, 0x800000022CE8AB10);
  v9 = sub_22CE86174();
  MEMORY[0x2318C1750](v9);

  return 0;
}

uint64_t Budget.hash(into:)(uint64_t a1)
{
  sub_22CE85974();
  sub_22CE72364(&unk_2814452A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22CE85D94();
  v2 = type metadata accessor for Budget(0);
  MEMORY[0x2318C1AB0](*(v1 + v2[5]));
  sub_22CE85E54();
  sub_22CE85E54();
  MEMORY[0x2318C1AB0](*(v1 + v2[8]));
  MEMORY[0x2318C1AB0](*(v1 + v2[9]));
  v3 = *(v1 + v2[10]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x2318C1AD0](*&v3);
  return MEMORY[0x2318C1AB0](*(v1 + v2[11]));
}

uint64_t Budget.hashValue.getter()
{
  sub_22CE86204();
  Budget.hash(into:)(v1);
  return sub_22CE86244();
}

uint64_t sub_22CE720E8()
{
  sub_22CE86204();
  Budget.hash(into:)(v1);
  return sub_22CE86244();
}

uint64_t sub_22CE7212C(uint64_t a1)
{
  sub_22CE86204();
  Budget.hash(into:)(v2);
  return sub_22CE86244();
}

BOOL _s24SessionPushNotifications6BudgetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_22CE85934() & 1) != 0 && (v4 = type metadata accessor for Budget(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && ((v5 = v4, v6 = *(v4 + 24), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), (v10 || (sub_22CE86194()) && ((v11 = v5[7], v12 = *(a1 + v11), v13 = *(a1 + v11 + 8), v14 = (a2 + v11), v12 == *v14) ? (v15 = v13 == v14[1]) : (v15 = 0), (v15 || (sub_22CE86194()) && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]))))
  {
    return *(a1 + v5[11]) == *(a2 + v5[11]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22CE72270()
{
  result = qword_2814448A0;
  if (!qword_2814448A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814448A0);
  }

  return result;
}

unint64_t sub_22CE722C8()
{
  result = qword_27D9EF020;
  if (!qword_27D9EF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EF020);
  }

  return result;
}

uint64_t sub_22CE72364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CE723D4(uint64_t a1)
{
  result = sub_22CE85974();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22CE724A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_22CE7253C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t PublicTokenStore.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t PublicTokenStore.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

double sub_22CE7261C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_22CE498B0(a1, a2);
    if (v9)
    {
      v10 = (*(v7 + 56) + 32 * v8);
      v11 = v10[1];
      v12 = v10[2];
      v13 = v10[3];
      *a3 = *v10;
      a3[1] = v11;
      a3[2] = v12;
      a3[3] = v13;

      sub_22CE41BF0(v12, v13);

      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_22CE726D0(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  swift_beginAccess();
  v7 = *(v1 + 16);
  v8 = *(v7 + 16);

  if (!v8)
  {
    v13 = 0;
    v12 = 0;
    v14 = 0;
LABEL_10:
    swift_beginAccess();

    sub_22CE41BF0(v5, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_22CE61D50(v4, v3, v5, v6, v4, v3, isUniquelyReferenced_nonNull_native);

    *(v2 + 16) = v18;
    swift_endAccess();
    sub_22CE72A70(v13, v12, v8, v14);
    return 1;
  }

  v9 = sub_22CE498B0(v4, v3);
  if ((v10 & 1) == 0)
  {

    v13 = 0;
    v12 = 0;
    v8 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v11 = (*(v7 + 56) + 32 * v9);
  v13 = *v11;
  v12 = v11[1];
  v8 = v11[2];
  v14 = v11[3];

  sub_22CE41BF0(v8, v14);

  if (v14 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      sub_22CE41BF0(v8, v14);
      sub_22CE41BF0(v5, v6);

      sub_22CE4E0DC(v8, v14);

      sub_22CE70B40(v8, v14);
      return 0;
    }

    goto LABEL_9;
  }

  if (v6 >> 60 == 15)
  {
LABEL_9:
    sub_22CE41BF0(v8, v14);
    sub_22CE41BF0(v5, v6);
    sub_22CE70B40(v8, v14);
    sub_22CE70B40(v5, v6);
    goto LABEL_10;
  }

  sub_22CE41BF0(v8, v14);
  sub_22CE41BF0(v5, v6);
  sub_22CE41BF0(v8, v14);
  sub_22CE41BF0(v5, v6);
  v17 = sub_22CE51390(v8, v14, v5, v6);
  sub_22CE4E0DC(v5, v6);
  sub_22CE4E0DC(v8, v14);
  sub_22CE70B40(v5, v6);
  sub_22CE70B40(v8, v14);
  if (!v17)
  {
    goto LABEL_10;
  }

  sub_22CE4E0DC(v8, v14);

  return 0;
}

uint64_t PublicTokenStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_22CE72A70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_22CE4E0DC(a3, a4);
  }
}

uint64_t sub_22CE72CD8()
{
  MEMORY[0x2318C20D0](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22CE72D3C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t PushServer.ServerError.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE72E80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF108, &qword_22CE88EB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22CE88D00;
  *(inited + 32) = sub_22CE85E04();
  *(inited + 40) = v1;
  *(inited + 48) = 0xD00000000000002BLL;
  *(inited + 56) = 0x800000022CE8AED0;
  *(inited + 64) = sub_22CE85E04();
  *(inited + 72) = v2;
  *(inited + 80) = 0xD00000000000002FLL;
  *(inited + 88) = 0x800000022CE8AF00;
  v3 = sub_22CE630B8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF110, &unk_22CE88EC0);
  result = swift_arrayDestroy();
  qword_281445E98 = v3;
  return result;
}

uint64_t sub_22CE72F7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB58, &qword_22CE88EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22CE88D00;
  *(v0 + 32) = sub_22CE85E04();
  *(v0 + 40) = v1;
  result = sub_22CE85E04();
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  qword_281445E90 = v0;
  return result;
}

uint64_t sub_22CE730B8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_22CE85FE4();
  return v4;
}

uint64_t sub_22CE7311C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22CE40D28(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_publicTokenStore, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_22CE49BC4(*(v5 + 16), 0);
  v9 = sub_22CE4C450(&v11, v8 + 4, v7, v6);
  sub_22CE412C8(v11);
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    v8 = MEMORY[0x277D84F90];
  }

  result = __swift_destroy_boxed_opaque_existential_1(v12);
  *a2 = v8;
  return result;
}

id PushServer.__allocating_init(connectionFactory:subscriptionStore:publicTokenStore:tokenStore:budgetServer:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v40 = a1;
  v43 = a4;
  v44 = a5;
  v41 = a2;
  v42 = a3;
  v47 = sub_22CE85FD4();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22CE85FB4();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22CE85D34();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__eventPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF038, &qword_22CE88D10);
  swift_allocObject();
  *&v11[v12] = sub_22CE85CC4();
  v13 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__tokenPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF048, &qword_22CE88D18);
  swift_allocObject();
  *&v11[v13] = sub_22CE85CC4();
  v14 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__subscriptionExceedingReducedBudgetPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF058, &qword_22CE88D20);
  swift_allocObject();
  *&v11[v14] = sub_22CE85CC4();
  v15 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__unsubscribedActivityPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF068, &qword_22CE88D28);
  swift_allocObject();
  *&v11[v15] = sub_22CE85CC4();
  v38 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue;
  v45 = sub_22CE4FC1C();
  v37 = "UnfairLock";
  sub_22CE85D24();
  v49 = MEMORY[0x277D84F90];
  v46 = sub_22CE426A4(&qword_281445320, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  v34 = sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930, MEMORY[0x277D83970]);
  v35 = v9;
  sub_22CE86034();
  v16 = *MEMORY[0x277D85260];
  v33 = *(v6 + 104);
  v31[0] = v8;
  v17 = v8;
  v32 = v16;
  v18 = v47;
  v33(v17, v16, v47);
  v31[1] = v6 + 104;
  *&v11[v38] = sub_22CE86004();
  v37 = "cations.internal";
  v38 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_calloutQueue;
  sub_22CE85D24();
  v49 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v19 = v31[0];
  v20 = v18;
  v21 = v33;
  v33(v31[0], v16, v20);
  *&v11[v38] = sub_22CE86004();
  v22 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_apsQueue;
  sub_22CE85D24();
  v49 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v21(v19, v32, v47);
  *&v11[v22] = sub_22CE86004();
  v23 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connections;
  *&v11[v23] = sub_22CE631CC(MEMORY[0x277D84F90]);
  *&v11[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_topicsByPriority] = 0;
  *&v11[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_cancellableSubscriptions] = MEMORY[0x277D84FA0];
  v24 = v40;
  sub_22CE40D28(v40, &v11[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connectionFactory]);
  v25 = v41;
  sub_22CE40D28(v41, &v11[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore]);
  v26 = v42;
  sub_22CE40D28(v42, &v11[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_publicTokenStore]);
  v27 = v43;
  sub_22CE40D28(v43, &v11[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore]);
  v28 = v44;
  sub_22CE83C40(v44, &v11[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer]);
  v48.receiver = v11;
  v48.super_class = v39;
  v29 = objc_msgSendSuper2(&v48, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v29;
}

id PushServer.init(connectionFactory:subscriptionStore:publicTokenStore:tokenStore:budgetServer:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v44 = a4;
  v45 = a5;
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v7 = sub_22CE85FD4();
  v8 = *(v7 - 8);
  v47 = v7;
  v48 = v8;
  MEMORY[0x28223BE20](v7);
  v40 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22CE85FB4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22CE85D34();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__eventPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF038, &qword_22CE88D10);
  swift_allocObject();
  *&v5[v12] = sub_22CE85CC4();
  v13 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__tokenPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF048, &qword_22CE88D18);
  swift_allocObject();
  *&v5[v13] = sub_22CE85CC4();
  v14 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__subscriptionExceedingReducedBudgetPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF058, &qword_22CE88D20);
  swift_allocObject();
  *&v5[v14] = sub_22CE85CC4();
  v15 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__unsubscribedActivityPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF068, &qword_22CE88D28);
  swift_allocObject();
  *&v5[v15] = sub_22CE85CC4();
  v39 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue;
  v46 = sub_22CE4FC1C();
  v38 = "UnfairLock";
  sub_22CE85D24();
  v50 = MEMORY[0x277D84F90];
  v37 = sub_22CE426A4(&qword_281445320, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  v17 = sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930, MEMORY[0x277D83970]);
  v34 = v16;
  v35 = v17;
  v36 = v10;
  sub_22CE86034();
  v32 = *MEMORY[0x277D85260];
  v18 = v47;
  v19 = *(v48 + 104);
  v48 += 104;
  v20 = v40;
  v19(v40);
  v33 = v19;
  *&v5[v39] = sub_22CE86004();
  v38 = "cations.internal";
  v39 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_calloutQueue;
  sub_22CE85D24();
  v50 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v21 = v32;
  (v19)(v20, v32, v18);
  *&v5[v39] = sub_22CE86004();
  v38 = "ncore.PushNotifications.callout";
  v39 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_apsQueue;
  sub_22CE85D24();
  v50 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v33(v20, v21, v47);
  *&v5[v39] = sub_22CE86004();
  v22 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connections;
  *&v5[v22] = sub_22CE631CC(MEMORY[0x277D84F90]);
  *&v5[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_topicsByPriority] = 0;
  *&v5[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_cancellableSubscriptions] = MEMORY[0x277D84FA0];
  v23 = v41;
  sub_22CE40D28(v41, v6 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connectionFactory);
  v24 = v42;
  sub_22CE40D28(v42, v6 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore);
  v25 = v43;
  sub_22CE40D28(v43, v6 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_publicTokenStore);
  v26 = v44;
  sub_22CE40D28(v44, v6 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore);
  v27 = v45;
  sub_22CE83C40(v45, v6 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer);
  v28 = type metadata accessor for PushServer();
  v49.receiver = v6;
  v49.super_class = v28;
  v29 = objc_msgSendSuper2(&v49, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v29;
}

uint64_t sub_22CE73DAC()
{
  v1 = *&v0[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22CE83CC8;
  *(v3 + 24) = v2;
  v8[4] = sub_22CE42778;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22CE50228;
  v8[3] = &block_descriptor_5;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE73F00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF138, &qword_22CE88EF8);
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  MEMORY[0x28223BE20](v2);
  v35 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED88, &unk_22CE872C0);
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v27 - v9;
  sub_22CE744F8();
  v34 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer;
  sub_22CE83C40(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer, v40);
  v11 = v41;
  v12 = v43;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v13 = (*(*(v12 + 8) + 8))(v11);
  v38 = *(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  v14 = v38;
  v39 = v13;
  v32 = sub_22CE85FC4();
  v15 = *(v32 - 8);
  v31 = *(v15 + 56);
  v33 = v15 + 56;
  v31(v7, 1, 1, v32);
  v29 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED90, &qword_22CE88F00);
  v27 = sub_22CE4FC1C();
  v28 = MEMORY[0x277CBCD90];
  sub_22CE40A60(&qword_281444830, &qword_27D9EED90, &qword_22CE88F00, MEMORY[0x277CBCD90]);
  sub_22CE426A4(&qword_281445318, sub_22CE4FC1C, MEMORY[0x277D85228]);
  sub_22CE85CF4();
  sub_22CE42330(v7, &qword_27D9EED80, &unk_22CE87920);

  __swift_destroy_boxed_opaque_existential_1(v40);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = MEMORY[0x277CBCD60];
  sub_22CE40A60(&qword_281444848, &qword_27D9EED88, &unk_22CE872C0, MEMORY[0x277CBCD60]);
  v17 = v30;
  sub_22CE85D04();

  (*(v8 + 8))(v10, v17);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();

  sub_22CE83C40(a1 + v34, v40);
  v18 = v41;
  v19 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v20 = (*(v19 + 16))(v18, v19);
  v21 = v29;
  v38 = v29;
  v39 = v20;
  v31(v7, 1, 1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF140, &qword_22CE88F08);
  sub_22CE40A60(&qword_281444840, &qword_27D9EF140, &qword_22CE88F08, v28);
  v22 = v35;
  sub_22CE85CF4();
  sub_22CE42330(v7, &qword_27D9EED80, &unk_22CE87920);

  __swift_destroy_boxed_opaque_existential_1(v40);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_22CE856B8;
  *(v24 + 24) = v23;
  sub_22CE40A60(qword_281444858, &qword_27D9EF138, &qword_22CE88EF8, v16);
  v25 = v36;
  sub_22CE85D04();

  (*(v37 + 8))(v22, v25);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();
}

uint64_t sub_22CE744F8()
{
  v1 = v0;
  v2 = sub_22CE85D44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_22CE85D54();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_22CE40D28(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v28);
    v9 = v29;
    v10 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v11 = (*(v10 + 32))(v9, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    v13 = 0;
    v14 = 1 << *(v11 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v11 + 56);
    v17 = (v14 + 63) >> 6;
    *&v12 = 136446210;
    v25 = v12;
    v26 = v11;
    v27 = v1;
    if (v16)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
      }

      v16 = *(v11 + 56 + 8 * v19);
      ++v13;
      if (v16)
      {
        while (1)
        {
          v20 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
          v21 = (*(v11 + 48) + ((v19 << 10) | (16 * v20)));
          v22 = *v21;
          v23 = v21[1];

          v24 = sub_22CE783C8(v22, v23, 1);
          sub_22CE78AE0(v22, v23, v24, v18);
          swift_unknownObjectRelease();

          v13 = v19;
          if (!v16)
          {
            break;
          }

LABEL_11:
          v19 = v13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22CE748B8(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (v6 == 1)
    {
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v9 = sub_22CE85C84();
      __swift_project_value_buffer(v9, qword_281445368);

      v10 = sub_22CE85C74();
      v11 = sub_22CE85FA4();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = v13;
        *v12 = 136446210;
        *(v12 + 4) = sub_22CE44280(a1, a2, &v14);
        _os_log_impl(&dword_22CE3F000, v10, v11, "Budget server says budget level exceeded for %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x2318C20D0](v13, -1, -1);
        MEMORY[0x2318C20D0](v12, -1, -1);
      }

      sub_22CE74A50(a1, a2);
    }
  }
}

void sub_22CE74A50(uint64_t a1, unint64_t a2)
{
  v36 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore;
  sub_22CE40D28(v2 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v57);
  v5 = *(&v58 + 1);
  v6 = v59;
  __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
  (*(v6 + 88))(&v62, a1, a2, v5, v6);
  v7 = *(&v62 + 1);
  v40 = v62;
  v8 = *(&v63 + 1);
  v9 = v63;
  v10 = *(&v64 + 1);
  v11 = v64;
  v38 = *(&v65 + 1);
  v12 = v65;
  v13 = SBYTE2(v66);
  v14 = v66;
  v39 = HIBYTE(v66);
  __swift_destroy_boxed_opaque_existential_1(&v57);
  if (v7)
  {
    v15 = v7;
    v16 = v14 | (v13 << 16);
    if ((v16 & 0x80000000) != 0)
    {
      v24 = v12;
      if ((v16 & 0x10000) != 0)
      {
        v27 = v39;
        v32 = v38;
        v25 = v9;
        v31 = v40;
      }

      else
      {
        v35 = v15;
        v25 = v9;
        v46[0] = v9;
        v46[1] = v8;
        v46[2] = v11;
        v46[3] = v10;
        v46[4] = v12;
        v46[5] = v38;
        v47 = v16 & 0x1FF;
        v48 = 1;
        v49[0] = v9;
        v49[1] = v8;
        v49[2] = v11;
        v49[3] = v10;
        v49[4] = v12;
        v49[5] = v38;
        v51 = (v16 & 0x7E0000) >> 16;
        v50 = v16;
        sub_22CE449A4(v9, v8, v11, v10, v12, v38, v16);
        sub_22CE449A4(v9, v8, v11, v10, v12, v38, v16);
        sub_22CE85480(v49, &v62);
        sub_22CE854DC(v46);
        sub_22CE62988(v9, v8, v11, v10, v12, v38, v16);
        sub_22CE40D28(v37 + v36, &v41);
        v26 = v43;
        v33 = *(&v42 + 1);
        __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
        *&v52[0] = v40;
        *(&v52[0] + 1) = v35;
        v52[1] = __PAIR128__(v8, v9);
        v52[2] = __PAIR128__(v10, v11);
        v53 = __PAIR128__(v38, v12);
        BYTE2(v54) = 0x80;
        LOWORD(v54) = v16 & 0x103;
        v27 = v39;
        HIBYTE(v54) = v39;
        v64 = __PAIR128__(v10, v11);
        v65 = v53;
        v66 = v54;
        v62 = v52[0];
        v63 = __PAIR128__(v8, v9);
        v34 = v8;
        v28 = v11;
        v29 = v10;
        v30 = *(v26 + 48);
        sub_22CE41214(v52, &v57);
        v30(&v62, v33, v26);
        v10 = v29;
        v11 = v28;
        v8 = v34;
        v31 = v40;
        v32 = v38;
        v55[2] = v64;
        v55[3] = v65;
        v56 = v66;
        v55[0] = v62;
        v55[1] = v63;
        sub_22CE632E8(v55);
        __swift_destroy_boxed_opaque_existential_1(&v41);
        *&v57 = v40;
        *(&v57 + 1) = v35;
        v58 = __PAIR128__(v34, v9);
        v59 = __PAIR128__(v10, v11);
        v60 = __PAIR128__(v38, v24);
        BYTE2(v61) = 0x80;
        LOWORD(v61) = v16 & 0x103;
        HIBYTE(v61) = v39;
        v43 = __PAIR128__(v10, v11);
        v44 = __PAIR128__(v38, v24);
        v45 = v61;
        v41 = v57;
        v42 = __PAIR128__(v34, v9);
        sub_22CE41214(&v57, &v62);
        sub_22CE8071C(&v41);
        sub_22CE62988(v9, v34, v11, v10, v24, v38, v16);
        v64 = v43;
        v65 = v44;
        v66 = v45;
        v62 = v41;
        v63 = v42;
        sub_22CE632E8(&v62);
        v15 = v35;
        LODWORD(v16) = v16 & 0x103 | 0xFF800000;
      }

      *&v62 = v31;
      *(&v62 + 1) = v15;
      *&v63 = v25;
      *(&v63 + 1) = v8;
      *&v64 = v11;
      *(&v64 + 1) = v10;
      *&v65 = v24;
      *(&v65 + 1) = v32;
      LOWORD(v66) = v16;
      BYTE2(v66) = BYTE2(v16);
      HIBYTE(v66) = v27;
    }

    else
    {
      *&v62 = v40;
      *(&v62 + 1) = v15;
      v63 = __PAIR128__(v8, v9);
      v64 = __PAIR128__(v10, v11);
      v65 = __PAIR128__(v38, v12);
      LOWORD(v66) = v14;
      BYTE2(v66) = (v14 | (v13 << 16)) >> 16;
      HIBYTE(v66) = v39;
    }

    sub_22CE632E8(&v62);
  }

  else
  {
    v17 = a1;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v18 = sub_22CE85C84();
    __swift_project_value_buffer(v18, qword_281445368);
    v19 = a2;

    v20 = sub_22CE85C74();
    v21 = sub_22CE85F94();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v62 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_22CE44280(v17, v19, &v62);
      _os_log_impl(&dword_22CE3F000, v20, v21, "Subscription does not exist: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x2318C20D0](v23, -1, -1);
      MEMORY[0x2318C20D0](v22, -1, -1);
    }
  }
}

uint64_t sub_22CE74F14(__int128 *a1, char a2)
{
  v5 = sub_22CE85D14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22CE85D34();
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[2];
  v13 = a1[3];
  v14 = *a1;
  v25[1] = a1[1];
  v25[2] = v12;
  v25[3] = v13;
  v26 = *(a1 + 16);
  v25[0] = v14;
  v21[1] = *&v2[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v15 = swift_allocObject();
  v16 = *a1;
  *(v15 + 40) = a1[1];
  v17 = a1[3];
  *(v15 + 56) = a1[2];
  *(v15 + 72) = v17;
  *(v15 + 16) = v2;
  *(v15 + 88) = *(a1 + 16);
  *(v15 + 24) = v16;
  *(v15 + 92) = a2;
  aBlock[4] = sub_22CE83CD0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_10_0;
  v18 = _Block_copy(aBlock);
  v19 = v2;
  sub_22CE41214(v25, v23);
  sub_22CE85D24();
  v23[0] = MEMORY[0x277D84F90];
  sub_22CE426A4(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v11, v8, v18);
  _Block_release(v18);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v22);
}

__n128 sub_22CE75250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v7 = *(a2 + 64);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  sub_22CE7544C(v6, a3);
  return result;
}

void sub_22CE7544C(__int128 *a1, char a2)
{
  v4 = v2;
  v7 = sub_22CE85D44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[3];
  v117 = a1[2];
  v118 = v11;
  v119 = *(a1 + 16);
  v12 = a1[1];
  v115 = *a1;
  v116 = v12;
  v13 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v10 = v13;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v14 = v13;
  LOBYTE(v13) = sub_22CE85D54();
  (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v95 = v117;
  v96 = v118;
  v97 = v119;
  v93 = v115;
  v94 = v116;
  if ((sub_22CE79448(&v93) & 1) == 0)
  {
    if (qword_281445360 == -1)
    {
LABEL_6:
      v20 = sub_22CE85C84();
      __swift_project_value_buffer(v20, qword_281445368);
      sub_22CE41214(&v115, &v93);
      v21 = sub_22CE85C74();
      v22 = sub_22CE85F94();
      sub_22CE632E8(&v115);
      if (!os_log_type_enabled(v21, v22))
      {
LABEL_36:

        sub_22CE70ADC();
        swift_allocError();
        *v49 = 1;
        swift_willThrow();
        return;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v107[0] = v24;
      *v23 = 136446210;
      if ((v119 | (SBYTE2(v119) << 16)) < 0)
      {
        v25 = *(&v116 + 1);
        v26 = v116;
      }

      else
      {
        v93 = v115;

        MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
        v25 = *(&v93 + 1);
        v26 = v93;
      }

      v38 = sub_22CE44280(v26, v25, v107);

      *(v23 + 4) = v38;
      _os_log_impl(&dword_22CE3F000, v21, v22, "Subscription is invalid: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x2318C20D0](v24, -1, -1);
      v39 = v23;
LABEL_35:
      MEMORY[0x2318C20D0](v39, -1, -1);
      goto LABEL_36;
    }

LABEL_61:
    swift_once();
    goto LABEL_6;
  }

  v77 = v3;
  v75 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore;
  sub_22CE40D28(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v112);
  v15 = v113;
  v16 = v114;
  __swift_project_boxed_opaque_existential_1(v112, v113);
  v18 = *(&v116 + 1);
  v17 = v116;
  v72 = *(&v117 + 1);
  v73 = v117;
  v70 = *(&v118 + 1);
  v71 = v118;
  v78 = v119 | (BYTE2(v119) << 16);
  v120 = *(&v116 + 1);
  v74 = v115;
  v76 = v116;
  if ((v78 & 0x800000) != 0)
  {

    v19 = v17;
  }

  else
  {
    v93 = v115;

    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    v18 = *(&v93 + 1);
    v19 = v93;
  }

  (*(v16 + 88))(v107, v19, v18, v15, v16);

  v27 = v107[0];
  v28 = v107[1];
  __swift_destroy_boxed_opaque_existential_1(v112);
  if ((a2 & 1) == 0 && !v28)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v29 = sub_22CE85C84();
    __swift_project_value_buffer(v29, qword_281445368);
    sub_22CE41214(&v115, &v93);
    v21 = sub_22CE85C74();
    v30 = sub_22CE85F94();
    sub_22CE632E8(&v115);
    v31 = os_log_type_enabled(v21, v30);
    v32 = v120;
    if (!v31)
    {
      goto LABEL_36;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v88 = v34;
    *v33 = 136446210;
    if ((v78 & 0x800000) != 0)
    {

      v35 = v76;
    }

    else
    {
      v93 = v74;

      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
      v32 = *(&v93 + 1);
      v35 = v93;
    }

    v48 = sub_22CE44280(v35, v32, &v88);

    *(v33 + 4) = v48;
    _os_log_impl(&dword_22CE3F000, v21, v30, "Cannot update subscription for activity %{public}s as no subscription exists", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x2318C20D0](v34, -1, -1);
    v39 = v33;
    goto LABEL_35;
  }

  v36 = v115;
  v103 = v116;
  v104 = v117;
  v105 = v118;
  v106 = v119;
  if (!v28)
  {
    if (!*(&v115 + 1))
    {
      v93 = v27;
      v94 = v108;
      v95 = v109;
      v96 = v110;
      v97 = v111;
      sub_22CE41214(&v115, &v88);
      sub_22CE42330(&v93, &qword_27D9EEE78, &qword_22CE88E90);
LABEL_39:
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v50 = sub_22CE85C84();
      __swift_project_value_buffer(v50, qword_281445368);
      sub_22CE41214(&v115, &v93);
      v51 = sub_22CE85C74();
      v52 = sub_22CE85FA4();
      sub_22CE632E8(&v115);
      v53 = os_log_type_enabled(v51, v52);
      v54 = v120;
      if (v53)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v88 = v56;
        *v55 = 136446210;
        if ((v78 & 0x800000) != 0)
        {

          v57 = v76;
        }

        else
        {
          v93 = v74;

          MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
          v54 = *(&v93 + 1);
          v57 = v93;
        }

        v69 = sub_22CE44280(v57, v54, &v88);

        *(v55 + 4) = v69;
        _os_log_impl(&dword_22CE3F000, v51, v52, "Subscription has not changed: %{public}s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x2318C20D0](v56, -1, -1);
        MEMORY[0x2318C20D0](v55, -1, -1);
      }

      else
      {
      }

      return;
    }

    sub_22CE41214(&v115, &v93);
    goto LABEL_26;
  }

  *&v93 = v27;
  *(&v93 + 1) = v28;
  v94 = v108;
  v95 = v109;
  v96 = v110;
  v97 = v111;
  v90 = v109;
  v91 = v110;
  v92 = v111;
  v88 = v93;
  v89 = v108;
  if (!*(&v115 + 1))
  {
    v85 = v95;
    v86 = v96;
    v87 = v97;
    v83 = v93;
    v84 = v94;
    sub_22CE41214(&v115, v81);
    sub_22CE4DD94(&v93, v81, &qword_27D9EEE78, &qword_22CE88E90);
    sub_22CE632E8(&v83);
LABEL_26:
    v94 = v108;
    v95 = v109;
    v96 = v110;
    v99 = v103;
    *&v93 = v27;
    *(&v93 + 1) = v28;
    v97 = v111;
    v98 = v36;
    v100 = v104;
    v101 = v105;
    v102 = v106;
    sub_22CE42330(&v93, &qword_27D9EF130, &qword_22CE88EE8);
    goto LABEL_27;
  }

  v84 = v116;
  v85 = v117;
  v86 = v118;
  v87 = v119;
  v83 = v115;
  sub_22CE41214(&v115, v81);
  sub_22CE4DD94(&v93, v81, &qword_27D9EEE78, &qword_22CE88E90);
  v37 = _s24SessionPushNotifications0B12SubscriptionV2eeoiySbAC_ACtFZ_0(&v88, &v83);
  v79[2] = v85;
  v79[3] = v86;
  v80 = v87;
  v79[0] = v83;
  v79[1] = v84;
  sub_22CE632E8(v79);
  v81[2] = v90;
  v81[3] = v91;
  v82 = v92;
  v81[0] = v88;
  v81[1] = v89;
  sub_22CE632E8(v81);
  *&v83 = v27;
  *(&v83 + 1) = v28;
  v84 = v108;
  v85 = v109;
  v86 = v110;
  v87 = v111;
  sub_22CE42330(&v83, &qword_27D9EEE78, &qword_22CE88E90);
  if (v37)
  {
    goto LABEL_39;
  }

LABEL_27:
  v40 = v77;
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v41 = sub_22CE85C84();
  __swift_project_value_buffer(v41, qword_281445368);
  sub_22CE41214(&v115, &v93);
  v42 = sub_22CE85C74();
  v43 = sub_22CE85FA4();
  sub_22CE632E8(&v115);
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v88 = v45;
    *v44 = 136446210;
    v46 = v120;
    if ((v78 & 0x800000) != 0)
    {

      v47 = v76;
    }

    else
    {
      v93 = v74;

      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
      v46 = *(&v93 + 1);
      v47 = v93;
    }

    v58 = sub_22CE44280(v47, v46, &v88);

    *(v44 + 4) = v58;
    _os_log_impl(&dword_22CE3F000, v42, v43, "Creating new subscription to activity: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x2318C20D0](v45, -1, -1);
    MEMORY[0x2318C20D0](v44, -1, -1);

    v40 = v77;
  }

  else
  {
  }

  sub_22CE40D28(v4 + v75, &v88);
  v59 = *(&v89 + 1);
  v60 = v90;
  __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
  v95 = v117;
  v96 = v118;
  v97 = v119;
  v93 = v115;
  v94 = v116;
  (*(v60 + 48))(&v93, v59, v60);
  __swift_destroy_boxed_opaque_existential_1(&v88);
  v61 = v78;
  if ((v78 & 0x800000) != 0)
  {
    if ((v78 & 0xFE) != 0)
    {
      return;
    }

    v120 = v72;
    v76 = v73;
  }

  v62 = v120;

  v63 = v76;
  v64 = sub_22CE783C8(v76, v62, 1);
  if (v40)
  {
  }

  else
  {
    v66 = v64;
    v67 = v65;
    sub_22CE78AE0(v63, v62, v64, v65);

    if ((v61 & 0x800000) != 0 && v61)
    {
      if (v61 == 1)
      {
        ObjectType = swift_getObjectType();
        v93 = v74;

        MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
        (*(v67 + 24))(v71, v70, v93, *(&v93 + 1), ObjectType, v67);
      }
    }

    else
    {
      v95 = v117;
      v96 = v118;
      v97 = v119;
      v93 = v115;
      v94 = v116;
      sub_22CE7976C(&v93, v66, v67);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_22CE76088(uint64_t a1, uint64_t a2)
{
  v5 = sub_22CE85D14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22CE85D34();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_22CE83CE0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_16;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_22CE85D24();
  v18 = MEMORY[0x277D84F90];
  sub_22CE426A4(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_22CE7650C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22CE85D44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  LOBYTE(v10) = sub_22CE85D54();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  sub_22CE40D28(v3 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v22);
  v12 = *(&v23 + 1);
  v13 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  (*(v13 + 72))(v27, a1, a2, v12, v13);
  v15 = v27[0];
  v14 = v27[1];
  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  __swift_destroy_boxed_opaque_existential_1(&v22);
  if (v14)
  {
    *&v22 = v15;
    *(&v22 + 1) = v14;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    sub_22CE76D38(&v22);
    return sub_22CE42330(v27, &qword_27D9EEE78, &qword_22CE88E90);
  }

  if (qword_281445360 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = sub_22CE85C84();
  __swift_project_value_buffer(v17, qword_281445368);
  v18 = sub_22CE85C74();
  v19 = sub_22CE85F94();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22CE3F000, v18, v19, "Subscription does not exist", v20, 2u);
    MEMORY[0x2318C20D0](v20, -1, -1);
  }

  sub_22CE70ADC();
  swift_allocError();
  *v21 = 1;
  return swift_willThrow();
}

uint64_t sub_22CE7680C(__int128 *a1)
{
  v3 = sub_22CE85D14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22CE85D34();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[2];
  v11 = a1[3];
  v12 = *a1;
  v23[1] = a1[1];
  v23[2] = v10;
  v23[3] = v11;
  v24 = *(a1 + 16);
  v23[0] = v12;
  v19[1] = *&v1[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v13 = swift_allocObject();
  v14 = *a1;
  *(v13 + 40) = a1[1];
  v15 = a1[3];
  *(v13 + 56) = a1[2];
  *(v13 + 72) = v15;
  *(v13 + 16) = v1;
  *(v13 + 88) = *(a1 + 16);
  *(v13 + 24) = v14;
  aBlock[4] = sub_22CE83D54;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_22;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  sub_22CE41214(v23, v21);
  sub_22CE85D24();
  v21[0] = MEMORY[0x277D84F90];
  sub_22CE426A4(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v9, v6, v16);
  _Block_release(v16);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v20);
}

__n128 sub_22CE76B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v5[2] = *(a2 + 32);
  v5[3] = v2;
  v6 = *(a2 + 64);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  sub_22CE76D38(v5);
  return result;
}

void sub_22CE76D38(__int128 *a1)
{
  v3 = v2;
  v5 = sub_22CE85D44();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[3];
  v110 = a1[2];
  v111 = v9;
  v112 = *(a1 + 16);
  v10 = a1[1];
  v108 = *a1;
  v109 = v10;
  v12 = *(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v8 = v12;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v11 = v12;
  LODWORD(v12) = sub_22CE85D54();
  (*(v6 + 8))(v8, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v86 = v2;
  v88 = v1;
  v83 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore;
  sub_22CE40D28(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v105);
  v14 = v106;
  v13 = v107;
  __swift_project_boxed_opaque_existential_1(v105, v106);
  v3 = *(&v109 + 1);
  v15 = v109;
  ObjectType = v110;
  v90 = v109;
  v87 = *(&v110 + 1);
  v85 = v111;
  v12 = v112 | (SBYTE2(v112) << 16);
  v84 = v108;
  if ((v12 & 0x80000000) != 0)
  {

    v16 = v15;
    v17 = v3;
  }

  else
  {
    v101[0] = v108;

    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    v17 = *(&v101[0] + 1);
    v16 = *&v101[0];
  }

  (*(v13 + 56))(v103, v16, v17, v14, v13);

  v101[2] = v103[2];
  v101[3] = v103[3];
  v102 = v104;
  v101[0] = v103[0];
  v101[1] = v103[1];
  sub_22CE42330(v101, &qword_27D9EEE78, &qword_22CE88E90);
  __swift_destroy_boxed_opaque_existential_1(v105);
  if ((v12 & 0x80000000) == 0)
  {
    v18 = qword_281445360;

    if (v18 == -1)
    {
LABEL_7:
      v19 = sub_22CE85C84();
      __swift_project_value_buffer(v19, qword_281445368);
      sub_22CE41214(&v108, &v96);
      v20 = sub_22CE85C74();
      v21 = sub_22CE85FA4();
      sub_22CE632E8(&v108);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *&v91 = v23;
        *v22 = 136446210;
        v96 = v84;

        MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
        v24 = sub_22CE44280(v96, *(&v96 + 1), &v91);

        *(v22 + 4) = v24;
        _os_log_impl(&dword_22CE3F000, v20, v21, "Unsubscribing from subscription ID: %{public}s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x2318C20D0](v23, -1, -1);
        MEMORY[0x2318C20D0](v22, -1, -1);
      }

      v25 = v90;
      v26 = v86;
      v27 = v88;
      goto LABEL_10;
    }

LABEL_43:
    swift_once();
    goto LABEL_7;
  }

  v25 = ObjectType;
  v49 = v87;
  v50 = v85;
  sub_22CE62924(ObjectType, v87, v85, *(&v85 + 1), v12);
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v51 = sub_22CE85C84();
  __swift_project_value_buffer(v51, qword_281445368);

  sub_22CE62924(v25, v49, v50, *(&v50 + 1), v12);
  v52 = sub_22CE85C74();
  v53 = sub_22CE85FA4();
  v54 = v90;
  sub_22CE62988(v90, v3, v25, v49, v50, *(&v50 + 1), v12);
  if (os_log_type_enabled(v52, v53))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v96 = v56;
    *v55 = 136446210;
    *(v55 + 4) = sub_22CE44280(v54, v3, &v96);
    _os_log_impl(&dword_22CE3F000, v52, v53, "Unsubscribing from activity ID: %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x2318C20D0](v56, -1, -1);
    v57 = v55;
    v25 = ObjectType;
    MEMORY[0x2318C20D0](v57, -1, -1);
  }

  v26 = v86;
  v27 = v88;
  *&v96 = v54;
  *(&v96 + 1) = v3;

  sub_22CE85CB4();

  v58 = *(&v85 + 1);
  if (v12)
  {
    v59 = v85;
    if (v12 != 1)
    {
      sub_22CE62988(v90, v3, v25, v87, v85, *(&v85 + 1), v12);
      return;
    }

    v60 = v87;
    sub_22CE62924(v25, v87, v85, *(&v85 + 1), 1);
    v61 = v3;
    v3 = v60;
    sub_22CE62988(v90, v61, v25, v60, v59, v58, v12);
  }

  else
  {
    v62 = v87;
    v63 = v85;
    sub_22CE62924(v25, v87, v85, *(&v85 + 1), 0);
    v64 = v3;
    v3 = v62;
    sub_22CE62988(v90, v64, v25, v62, v63, v58, v12);
  }

LABEL_10:
  v28 = sub_22CE783C8(v25, v3, 0);
  if (v26)
  {
LABEL_20:

    return;
  }

  v30 = v28;
  v31 = v29;
  if ((v12 & 0x80000000) == 0)
  {
    ObjectType = v25;
    v90 = v28;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v32 = sub_22CE85C84();
    __swift_project_value_buffer(v32, qword_281445368);
    sub_22CE41214(&v108, &v96);
    v33 = sub_22CE85C74();
    v34 = sub_22CE85F74();
    sub_22CE632E8(&v108);
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_17;
    }

    v35 = swift_slowAlloc();
    v87 = v3;
    v36 = v35;
    v37 = swift_slowAlloc();
    v113 = v37;
    *v36 = 136380675;
    v93 = v110;
    v94 = v111;
    v95 = v112;
    v91 = v108;
    v92 = v109;
    sub_22CE41214(&v108, &v96);
    v38 = PushSubscription.description.getter();
    v39 = v31;
    v41 = v40;
    v98 = v93;
    v99 = v94;
    v100 = v95;
    v96 = v91;
    v97 = v92;
    sub_22CE632E8(&v96);
    v42 = sub_22CE44280(v38, v41, &v113);
    v31 = v39;

    *(v36 + 4) = v42;
    v43 = "Unsubscribing from push-to-start: %{private}s";
    goto LABEL_16;
  }

  if (v12)
  {
    if (v12 == 1)
    {
      ObjectType = v25;
      v90 = v28;
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v88 = v31;
      v65 = sub_22CE85C84();
      __swift_project_value_buffer(v65, qword_281445368);
      sub_22CE41214(&v108, &v96);
      v66 = sub_22CE85C74();
      v67 = sub_22CE85F74();
      sub_22CE632E8(&v108);
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v87 = v3;
        v69 = v68;
        v70 = swift_slowAlloc();
        v113 = v70;
        *v69 = 136380675;
        v93 = v110;
        v94 = v111;
        v95 = v112;
        v91 = v108;
        v92 = v109;
        sub_22CE41214(&v108, &v96);
        v71 = PushSubscription.description.getter();
        v73 = v72;
        v98 = v93;
        v99 = v94;
        v100 = v95;
        v96 = v91;
        v97 = v92;
        sub_22CE632E8(&v96);
        v74 = sub_22CE44280(v71, v73, &v113);

        *(v69 + 4) = v74;
        _os_log_impl(&dword_22CE3F000, v66, v67, "Unsubscribing from channel push: %{private}s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x2318C20D0](v70, -1, -1);
        v75 = v69;
        v3 = v87;
        MEMORY[0x2318C20D0](v75, -1, -1);
      }

      v25 = ObjectType;
      v30 = v90;
      ObjectType = swift_getObjectType();
      v96 = v84;

      MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
      v31 = v88;
      (*(v88 + 16))(v85, *(&v85 + 1), v96, *(&v96 + 1), ObjectType, v88);
    }

    goto LABEL_18;
  }

  ObjectType = v25;
  v90 = v28;
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v76 = sub_22CE85C84();
  __swift_project_value_buffer(v76, qword_281445368);
  sub_22CE41214(&v108, &v96);
  v33 = sub_22CE85C74();
  v34 = sub_22CE85F74();
  sub_22CE632E8(&v108);
  if (os_log_type_enabled(v33, v34))
  {
    v77 = swift_slowAlloc();
    v87 = v3;
    v36 = v77;
    v37 = swift_slowAlloc();
    v113 = v37;
    *v36 = 136380675;
    v93 = v110;
    v94 = v111;
    v95 = v112;
    v91 = v108;
    v92 = v109;
    sub_22CE41214(&v108, &v96);
    v78 = PushSubscription.description.getter();
    v79 = v31;
    v81 = v80;
    v98 = v93;
    v99 = v94;
    v100 = v95;
    v96 = v91;
    v97 = v92;
    sub_22CE632E8(&v96);
    v82 = sub_22CE44280(v78, v81, &v113);
    v31 = v79;

    *(v36 + 4) = v82;
    v43 = "Unsubscribing from token push: %{private}s";
LABEL_16:
    _os_log_impl(&dword_22CE3F000, v33, v34, v43, v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v44 = v37;
    v27 = v88;
    MEMORY[0x2318C20D0](v44, -1, -1);
    v45 = v36;
    v3 = v87;
    MEMORY[0x2318C20D0](v45, -1, -1);
  }

LABEL_17:

  v25 = ObjectType;
  v30 = v90;
  v98 = v110;
  v99 = v111;
  v100 = v112;
  v96 = v108;
  v97 = v109;
  sub_22CE7A8A4(&v96, v90, v31);
LABEL_18:
  sub_22CE78AE0(v25, v3, v30, v31);
  sub_22CE40D28(v27 + v83, &v96);
  v46 = *(&v97 + 1);
  v47 = v98;
  __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
  v48 = (*(v47 + 96))(v25, v3, v46, v47);
  __swift_destroy_boxed_opaque_existential_1(&v96);
  if (v48)
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  swift_beginAccess();
  sub_22CE47160(0, 0, v25, v3);
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t sub_22CE779E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_22CE85D44();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_22CE85D54();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v32 = a3;
    sub_22CE40D28(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v33);
    v15 = v34;
    v16 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v16 + 72))(v36, a1, a2, v15, v16);
    v17 = v36[1];
    v18 = v36[2];
    v19 = v36[3];
    v20 = v36[4];
    v22 = v36[5];
    v21 = v36[6];
    v23 = v36[7];
    v24 = v38;
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1(v33);
    if (v17)
    {
      v26 = v25 | (v24 << 16);
      if ((v26 & 0x80000000) != 0)
      {
        if (!v26)
        {
          sub_22CE40D28(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, v33);
          v28 = v35;
          v31 = v34;
          __swift_project_boxed_opaque_existential_1(v33, v34);
          v30 = *(v28 + 88);
          sub_22CE449A4(v18, v19, v20, v22, v21, v23, v26);

          v30(v18, v19, v31, v28);
          sub_22CE62988(v18, v19, v20, v22, v21, v23, v26);
          sub_22CE42330(v36, &qword_27D9EEE78, &qword_22CE88E90);

          return __swift_destroy_boxed_opaque_existential_1(v33);
        }

        if (v26 == 1)
        {
          sub_22CE449A4(v18, v19, v20, v22, v21, v23, v26);
          sub_22CE62924(v20, v22, v21, v23, 1);

          sub_22CE62988(v18, v19, v20, v22, v21, v23, v26);
        }
      }

      sub_22CE42330(v36, &qword_27D9EEE78, &qword_22CE88E90);
    }

    v27 = type metadata accessor for PushToken(0);
    return (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE77DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v13 = sub_22CE85D44();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  LOBYTE(v17) = sub_22CE85D54();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    sub_22CE40D28(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v26);
    v20 = v27;
    v21 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v25[0] = a4;
    v25[1] = a5;
    LOBYTE(v20) = (*(v21 + 112))(a2, a3, v25, v22, v23, v20, v21);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    *v24 = v20 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PushServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PushServer.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PushServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22CE78334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_22CE40A60(a6, a4, a5, MEMORY[0x277CBCE20]);
  return sub_22CE85CE4();
}

uint64_t sub_22CE783C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22CE85D44();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_22CE85D54();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_8;
  }

  v14 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connections;
  swift_beginAccess();
  v15 = *(v4 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_22CE498B0(a1, a2);
    if (v17)
    {
      a3 = *(*(v15 + 56) + 16 * v16);
      swift_unknownObjectRetain();

      return a3;
    }
  }

  if ((a3 & 1) == 0)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v36 = sub_22CE85C84();
    __swift_project_value_buffer(v36, qword_281445368);

    v37 = sub_22CE85C74();
    v38 = sub_22CE85F94();

    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_21;
    }

    a3 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v54[0] = v39;
    *a3 = 136446210;
    *(a3 + 4) = sub_22CE44280(a1, a2, v54);
    v40 = "Failed to find a connection for environment %{public}s";
    goto LABEL_20;
  }

  if (qword_2814455F8 != -1)
  {
    goto LABEL_34;
  }

LABEL_8:
  v18 = qword_281445E98;
  if (!*(qword_281445E98 + 16) || (v19 = sub_22CE498B0(a1, a2), (v20 & 1) == 0))
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v42 = sub_22CE85C84();
    __swift_project_value_buffer(v42, qword_281445368);

    v43 = sub_22CE85C74();
    v44 = sub_22CE85F94();

    if (os_log_type_enabled(v43, v44))
    {
      a3 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v54[0] = v45;
      *a3 = 136446210;
      *(a3 + 4) = sub_22CE44280(a1, a2, v54);
      _os_log_impl(&dword_22CE3F000, v43, v44, "No Mach service name exists for environment %{public}s", a3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x2318C20D0](v45, -1, -1);
      MEMORY[0x2318C20D0](a3, -1, -1);
    }

    v41 = 1;
    goto LABEL_27;
  }

  v21 = (*(v18 + 56) + 16 * v19);
  v22 = v21[1];
  v53 = *v21;
  v24 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connectionFactory + 24);
  v23 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connectionFactory + 32);
  v25 = __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connectionFactory), v24);
  v26 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_apsQueue);
  v51 = *(v23 + 8);
  v52 = v25;

  v55 = a1;
  a3 = v51(a1, a2, v53, v22, v26, v4, &protocol witness table for PushServer, v24, v23);
  v28 = v27;

  if (!a3)
  {
    v48 = v55;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v49 = sub_22CE85C84();
    __swift_project_value_buffer(v49, qword_281445368);

    v37 = sub_22CE85C74();
    v38 = sub_22CE85F94();

    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_21;
    }

    a3 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v54[0] = v39;
    *a3 = 136446210;
    *(a3 + 4) = sub_22CE44280(v48, a2, v54);
    v40 = "Could not create a connection for environment %{public}s";
LABEL_20:
    _os_log_impl(&dword_22CE3F000, v37, v38, v40, a3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x2318C20D0](v39, -1, -1);
    MEMORY[0x2318C20D0](a3, -1, -1);
LABEL_21:

    v41 = 0;
LABEL_27:
    sub_22CE70ADC();
    swift_allocError();
    *v46 = v41;
    swift_willThrow();
    return a3;
  }

  swift_beginAccess();

  v29 = swift_unknownObjectRetain();
  v30 = v55;
  sub_22CE47160(v29, v28, v55, a2);
  swift_endAccess();
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v31 = sub_22CE85C84();
  __swift_project_value_buffer(v31, qword_281445368);

  v32 = sub_22CE85C74();
  v33 = sub_22CE85F74();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v54[0] = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_22CE44280(v30, a2, v54);
    _os_log_impl(&dword_22CE3F000, v32, v33, "Created new connection for environment %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x2318C20D0](v35, -1, -1);
    MEMORY[0x2318C20D0](v34, -1, -1);
  }

  return a3;
}

uint64_t sub_22CE78AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22CE85D44();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  v15 = sub_22CE85D54();
  (*(v10 + 8))(v12, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v16 = sub_22CE7A0C8(a1, a2);
  v17 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_topicsByPriority;
  v18 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_topicsByPriority);
  if (v18)
  {

    v19 = sub_22CE824BC(v16, v18);

    if (v19)
    {
      swift_bridgeObjectRelease_n();
      return 0;
    }
  }

  else
  {
  }

  *(v4 + v17) = v16;

  if (!*(v16 + 16))
  {
    v9 = MEMORY[0x277D84F90];
    a2 = MEMORY[0x277D84F90];
LABEL_34:

    a1 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v21 = sub_22CE4DE0C();
  if (v22)
  {
    v23 = *(*(v16 + 56) + 8 * v21);
    v24 = *(v23 + 16);
    a2 = MEMORY[0x277D84F90];
    if (v24)
    {
      v84 = a4;
      v85 = v16;
      v83 = a3;
      v88 = MEMORY[0x277D84F90];

      sub_22CE4BB64(0, v24, 0);
      a2 = v88;
      v25 = (v23 + 40);
      do
      {
        v26 = *v25;
        v86 = *(v25 - 1);
        v87 = v26;
        swift_bridgeObjectRetain_n();
        MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);

        v27 = v86;
        v28 = v87;
        v88 = a2;
        v30 = *(a2 + 16);
        v29 = *(a2 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_22CE4BB64((v29 > 1), v30 + 1, 1);
          a2 = v88;
        }

        *(a2 + 16) = v30 + 1;
        v31 = a2 + 16 * v30;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        v25 += 2;
        --v24;
      }

      while (v24);

      a3 = v83;
      a4 = v84;
      v16 = v85;
      if (!*(v85 + 16))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }
  }

  else
  {
    a2 = MEMORY[0x277D84F90];
  }

  if (!*(v16 + 16))
  {
LABEL_25:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

LABEL_17:
  v32 = sub_22CE4DE0C();
  v33 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  if (v34)
  {
    v35 = *(*(v16 + 56) + 8 * v32);
    v36 = *(v35 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v36)
    {
      v84 = a4;
      v85 = v16;
      v83 = a3;
      v88 = MEMORY[0x277D84F90];

      sub_22CE4BB64(0, v36, 0);
      v9 = v88;
      v82 = v35;
      v37 = (v35 + 40);
      do
      {
        v38 = *v37;
        v86 = *(v37 - 1);
        v87 = v38;
        swift_bridgeObjectRetain_n();
        MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);

        v39 = v86;
        v40 = v87;
        v88 = v9;
        v42 = *(v9 + 16);
        v41 = *(v9 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_22CE4BB64((v41 > 1), v42 + 1, 1);
          v9 = v88;
        }

        *(v9 + 16) = v42 + 1;
        v43 = v9 + 16 * v42;
        *(v43 + 32) = v39;
        *(v43 + 40) = v40;
        v37 += 2;
        --v36;
      }

      while (v36);

      a3 = v83;
      a4 = v84;
      v16 = v85;
      v33 = MEMORY[0x277D84F90];
    }
  }

  if (!*(v16 + 16))
  {
    goto LABEL_34;
  }

  v44 = sub_22CE4DE0C();
  if ((v45 & 1) == 0)
  {
    goto LABEL_34;
  }

  v46 = *(*(v16 + 56) + 8 * v44);

  v47 = *(v46 + 16);
  if (!v47)
  {
    goto LABEL_34;
  }

  v83 = a3;
  v84 = a4;
  v88 = v33;
  sub_22CE4BB64(0, v47, 0);
  a1 = v88;
  v85 = "; activityIdentifier: ";
  v82 = v46;
  v48 = (v46 + 40);
  do
  {
    v49 = *v48;
    v86 = *(v48 - 1);
    v87 = v49;
    swift_bridgeObjectRetain_n();
    MEMORY[0x2318C1750](0xD000000000000017, v85 | 0x8000000000000000);

    v50 = v86;
    v51 = v87;
    v88 = a1;
    v53 = *(a1 + 16);
    v52 = *(a1 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_22CE4BB64((v52 > 1), v53 + 1, 1);
      a1 = v88;
    }

    *(a1 + 16) = v53 + 1;
    v54 = a1 + 16 * v53;
    *(v54 + 32) = v50;
    *(v54 + 40) = v51;
    v48 += 2;
    --v47;
  }

  while (v47);

  a4 = v84;
LABEL_35:
  ObjectType = swift_getObjectType();
  (*(a4 + 40))(v9, MEMORY[0x277D84F90], a2, a1, ObjectType, a4);
  if (qword_281445360 != -1)
  {
LABEL_48:
    swift_once();
  }

  v56 = sub_22CE85C84();
  __swift_project_value_buffer(v56, qword_281445368);

  v57 = sub_22CE85C74();
  v58 = sub_22CE85F74();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v86 = v60;
    *v59 = 136380675;
    v61 = MEMORY[0x2318C17E0](v9, MEMORY[0x277D837D0]);
    v63 = v62;

    v64 = sub_22CE44280(v61, v63, &v86);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_22CE3F000, v57, v58, "Normal topics: %{private}s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x2318C20D0](v60, -1, -1);
    MEMORY[0x2318C20D0](v59, -1, -1);
  }

  else
  {
  }

  v65 = sub_22CE85C74();
  v66 = sub_22CE85F74();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v86 = v68;
    *v67 = 136380675;
    v69 = MEMORY[0x2318C17E0](a2, MEMORY[0x277D837D0]);
    v71 = v70;

    v72 = sub_22CE44280(v69, v71, &v86);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_22CE3F000, v65, v66, "Opportunistic topics: %{private}s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x2318C20D0](v68, -1, -1);
    MEMORY[0x2318C20D0](v67, -1, -1);
  }

  else
  {
  }

  v73 = sub_22CE85C74();
  v74 = sub_22CE85F74();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v86 = v76;
    *v75 = 136380675;
    v77 = MEMORY[0x2318C17E0](a1, MEMORY[0x277D837D0]);
    v79 = v78;

    v80 = sub_22CE44280(v77, v79, &v86);

    *(v75 + 4) = v80;
    _os_log_impl(&dword_22CE3F000, v73, v74, "Non-waking topics: %{private}s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x2318C20D0](v76, -1, -1);
    MEMORY[0x2318C20D0](v75, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t PushServer.connection(forEnvironmentName:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connections;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_22CE498B0(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 16 * v7);
    swift_unknownObjectRetain();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_22CE79448(uint64_t a1)
{
  v3 = sub_22CE85D44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 66);
  v12 = *(a1 + 64);
  v13 = *(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v6 = v13;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v14 = v13;
  LOBYTE(v13) = sub_22CE85D54();
  (*(v4 + 8))(v6, v3);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    v15 = swift_once();
    goto LABEL_4;
  }

  if (((v12 | (v11 << 16)) & 0x800000) != 0)
  {
    if ((v12 & 0xFE) != 0)
    {
      return 1;
    }

    v7 = v10;
    v8 = v9;
  }

  if (qword_2814455F0 != -1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v25[0] = v8;
  v25[1] = v7;
  MEMORY[0x28223BE20](v15);
  *&v24[-16] = v25;
  if (sub_22CE72D3C(sub_22CE85660, &v24[-32], v16))
  {

    return 1;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v17 = sub_22CE85C84();
  __swift_project_value_buffer(v17, qword_281445368);

  v18 = sub_22CE85C74();
  v19 = sub_22CE85F94();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25[0] = v21;
    *v20 = 136446210;
    v22 = sub_22CE44280(v8, v7, v25);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_22CE3F000, v18, v19, "Environment name %{public}s is unsupported", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x2318C20D0](v21, -1, -1);
    MEMORY[0x2318C20D0](v20, -1, -1);
  }

  else
  {
  }

  return 0;
}

void sub_22CE7976C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v69 = type metadata accessor for AppTokenInfo(0);
  MEMORY[0x28223BE20](v69);
  v70 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22CE85974();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v61 - v14;
  v16 = sub_22CE85D44();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v78 = a1[2];
  v79 = v20;
  v80 = *(a1 + 16);
  v21 = a1[1];
  v76 = *a1;
  v77 = v21;
  v22 = *(v5 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v19 = v22;
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v23 = v22;
  LOBYTE(v22) = sub_22CE85D54();
  (*(v17 + 8))(v19, v16);
  if (v22)
  {
    v65 = a3;
    if (qword_281445360 == -1)
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
  v64 = a2;
  v81 = v4;
  v24 = sub_22CE85C84();
  __swift_project_value_buffer(v24, qword_281445368);
  sub_22CE41214(&v76, &v73);
  v25 = sub_22CE85C74();
  v26 = sub_22CE85FA4();
  sub_22CE632E8(&v76);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v72 = v28;
    *v27 = 136380675;
    if ((v80 | (SBYTE2(v80) << 16)) < 0)
    {
      v29 = *(&v77 + 1);
      v30 = v77;
    }

    else
    {
      v73 = v76;

      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
      v29 = *(&v73 + 1);
      v30 = v73;
    }

    v31 = sub_22CE44280(v30, v29, &v72);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_22CE3F000, v25, v26, "Fetching push token for subscription: %{private}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x2318C20D0](v28, -1, -1);
    MEMORY[0x2318C20D0](v27, -1, -1);
  }

  sub_22CE40D28(v5 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, &v73);
  v32 = v74;
  v33 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, v74);
  v34 = *(&v76 + 1);
  v36 = *(&v77 + 1);
  v35 = v77;
  v37 = v80 | (SBYTE2(v80) << 16);
  v71 = v76;
  v61 = *(&v77 + 1);
  v62 = v77;
  if (v37 < 0)
  {

    v38 = v35;
  }

  else
  {
    v72 = v76;

    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    v36 = *(&v72 + 1);
    v38 = v72;
  }

  (*(v33 + 88))(v38, v36, v32, v33);

  v39 = type metadata accessor for PushToken(0);
  v40 = (*(*(v39 - 8) + 48))(v15, 1, v39);
  sub_22CE42330(v15, &qword_27D9EEB28, &qword_22CE86BF0);
  __swift_destroy_boxed_opaque_existential_1(&v73);
  if (v40 == 1)
  {
    sub_22CE41214(&v76, &v73);
    v41 = sub_22CE85C74();
    v42 = sub_22CE85FA4();
    sub_22CE632E8(&v76);
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v72 = v44;
      *v43 = 136380675;
      *&v73 = v71;
      *(&v73 + 1) = v34;

      MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
      v45 = sub_22CE44280(v73, *(&v73 + 1), &v72);

      *(v43 + 4) = v45;
      _os_log_impl(&dword_22CE3F000, v41, v42, "Requesting push token for topic: %{private}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x2318C20D0](v44, -1, -1);
      MEMORY[0x2318C20D0](v43, -1, -1);
    }

    v46 = v68;
    if (v37 < 0)
    {
      v55 = v63;
      sub_22CE85954();
      sub_22CE85964();
      v56 = v66;
      v57 = v55;
      v58 = v67;
      (*(v66 + 8))(v57, v67);
      (*(v56 + 56))(v46, 0, 1, v58);

      v49 = v61;

      v47 = v71;
      v48 = v62;
    }

    else
    {
      (*(v66 + 56))(v68, 1, 1, v67);
      v47 = v71;
      *&v73 = v71;
      *(&v73 + 1) = v34;
      swift_bridgeObjectRetain_n();
      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
      v49 = *(&v73 + 1);
      v48 = v73;
    }

    v59 = v70;
    sub_22CE4DD94(v46, &v70[*(v69 + 24)], &qword_27D9EEF40, &qword_22CE86C00);
    *v59 = v47;
    v59[1] = v34;
    v59[2] = v48;
    v59[3] = v49;
    ObjectType = swift_getObjectType();
    (*(v65 + 8))(v59, ObjectType);
    sub_22CE85600(v59, type metadata accessor for AppTokenInfo);
    sub_22CE42330(v46, &qword_27D9EEF40, &qword_22CE86C00);
  }

  else
  {
    sub_22CE41214(&v76, &v73);
    v50 = sub_22CE85C74();
    v51 = sub_22CE85FA4();
    sub_22CE632E8(&v76);
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v72 = v53;
      *v52 = 136380675;
      *&v73 = v71;
      *(&v73 + 1) = v34;

      MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
      v54 = sub_22CE44280(v73, *(&v73 + 1), &v72);

      *(v52 + 4) = v54;
      _os_log_impl(&dword_22CE3F000, v50, v51, "Found existing push token for topic: %{private}s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x2318C20D0](v53, -1, -1);
      MEMORY[0x2318C20D0](v52, -1, -1);
    }
  }
}

uint64_t sub_22CE7A0C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = a2;
  v5 = sub_22CE85D44();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  v11 = sub_22CE85D54();
  result = (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    goto LABEL_59;
  }

  v78 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore;
  sub_22CE40D28(v3 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v93);
  v13 = *(&v94 + 1);
  v14 = v95;
  __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
  v15 = (*(v14 + 40))(v13, v14);
  v16 = *(v15 + 16);
  v86 = a1;
  if (v16)
  {
    v92[0] = MEMORY[0x277D84F90];
    sub_22CE4BC28(0, v16, 0);
    v17 = v92[0];
    v18 = (v15 + 40);
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v92[0] = v17;
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);

      if (v21 >= v22 >> 1)
      {
        sub_22CE4BC28((v22 > 1), v21 + 1, 1);
        v17 = v92[0];
      }

      *(v17 + 16) = v21 + 1;
      v23 = v17 + 16 * v21;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v18 += 9;
      --v16;
    }

    while (v16);

    a1 = v86;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(&v93);
  v24 = sub_22CE633A0(v17);

  v25 = 0;
  v27 = v24 + 56;
  v26 = *(v24 + 56);
  v81 = v24;
  v28 = 1 << *(v24 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v26;
  v75 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer;
  v31 = (v28 + 63) >> 6;
  v32 = MEMORY[0x277D84F98];
  v76 = v27;
  v74 = v31;
  v77 = v3;
  if (!v30)
  {
    do
    {
LABEL_13:
      v33 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_58;
      }

      if (v33 >= v31)
      {

        return v32;
      }

      v30 = *(v27 + 8 * v33);
      ++v25;
    }

    while (!v30);
    v84 = v32;
    v25 = v33;
    goto LABEL_17;
  }

  while (1)
  {
    v84 = v32;
LABEL_17:
    v83 = v30;
    v34 = *(v81 + 48);
    v82 = v25;
    v35 = (v34 + ((v25 << 10) | (16 * __clz(__rbit64(v30)))));
    v36 = *v35;
    v37 = v35[1];
    sub_22CE40D28(v3 + v78, &v98);
    v38 = v99;
    v39 = v100;
    __swift_project_boxed_opaque_existential_1(&v98, v99);
    v40 = *(v39 + 40);
    v90 = v37;

    result = v40(v38, v39);
    v41 = result;
    v42 = *(result + 16);
    if (v42)
    {
      break;
    }

    LOBYTE(v45) = 2;
LABEL_46:

    __swift_destroy_boxed_opaque_existential_1(&v98);
    v3 = v77;
    sub_22CE83C40(v77 + v75, &v93);
    v60 = *(&v94 + 1);
    v61 = *(&v95 + 1);
    __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
    v92[0] = v36;
    v92[1] = v90;
    v91 = v45;
    (*(v61 + 16))(&v98, v92, &v91, v60, v61);
    v62 = v98;
    __swift_destroy_boxed_opaque_existential_1(&v93);
    v63 = v84;
    if (*(v84 + 16) && (v64 = sub_22CE4DE0C(), (v65 & 1) != 0))
    {
      v66 = *(*(v63 + 56) + 8 * v64);
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_22CE6070C(0, *(v66 + 2) + 1, 1, v66);
    }

    v68 = *(v66 + 2);
    v67 = *(v66 + 3);
    if (v68 >= v67 >> 1)
    {
      v66 = sub_22CE6070C((v67 > 1), v68 + 1, 1, v66);
    }

    v69 = (v83 - 1) & v83;
    *(v66 + 2) = v68 + 1;
    v70 = &v66[16 * v68];
    v71 = v90;
    *(v70 + 4) = v36;
    *(v70 + 5) = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v93 = v63;
    result = sub_22CE62088(v66, v62, isUniquelyReferenced_nonNull_native);
    v30 = v69;
    v32 = v93;
    a1 = v86;
    v27 = v76;
    v31 = v74;
    v25 = v82;
    if (!v69)
    {
      goto LABEL_13;
    }
  }

  v43 = 0;
  v44 = result + 32;
  v89 = *(result + 16);
  v79 = v42 - 1;
  v45 = 2;
  v87 = result;
  v80 = result + 32;
LABEL_19:
  v85 = v45;
  v46 = (v44 + 72 * v43);
  v47 = v43;
  while (v47 < *(v41 + 16))
  {
    v93 = *v46;
    v49 = v46[1];
    v50 = v46[2];
    v51 = v46[3];
    v97 = *(v46 + 16);
    v95 = v50;
    v96 = v51;
    v94 = v49;
    result = v93;
    if (v93 != __PAIR128__(v90, v36))
    {
      result = sub_22CE86194();
      if ((result & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v52 = v36;
    v53 = *(&v95 + 1);
    v54 = v95;
    v55 = v96;
    v56 = v97 | (SBYTE2(v97) << 16);
    if ((v56 & 0x80000000) == 0)
    {
      v57 = *(&v94 + 1);
      v58 = v94;
      sub_22CE41214(&v93, v92);
      sub_22CE449A4(v58, v57, v54, v53, v55, *(&v55 + 1), v56);
      v54 = v58;
      v53 = v57;
      a1 = v86;
      goto LABEL_28;
    }

    if (!v97)
    {
      sub_22CE41214(&v93, v92);
      sub_22CE62924(v54, v53, v55, *(&v55 + 1), 0);
LABEL_28:
      v36 = v52;
      v41 = v87;
      if (v54 == a1)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v36 = v52;
    v41 = v87;
    if (v97 != 1)
    {
      goto LABEL_22;
    }

    sub_22CE41214(&v93, v92);
    sub_22CE62924(v54, v53, v55, *(&v55 + 1), 1);

    if (v54 == a1)
    {
LABEL_20:
      if (v53 == v88)
      {

        result = sub_22CE632E8(&v93);
LABEL_36:
        v45 = v85;
        if (v85)
        {
          v59 = HIBYTE(v97);
          if (HIBYTE(v97) >= 2u)
          {
            v59 = 2;
          }

          if (v85 == 1)
          {
            v45 = HIBYTE(v97) != 0;
          }

          else
          {
            v45 = v59;
          }
        }

        v43 = v47 + 1;
        v44 = v80;
        if (v79 != v47)
        {
          goto LABEL_19;
        }

        goto LABEL_46;
      }
    }

LABEL_21:
    v48 = sub_22CE86194();

    result = sub_22CE632E8(&v93);
    if (v48)
    {
      goto LABEL_36;
    }

LABEL_22:
    ++v47;
    v46 = (v46 + 72);
    if (v89 == v47)
    {
      LOBYTE(v45) = v85;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_22CE7A8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  v37 = type metadata accessor for AppTokenInfo(0);
  MEMORY[0x28223BE20](v37);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22CE85D44();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 24);
  v35 = *(a1 + 16);
  v36 = v12;
  v15 = *(a1 + 66);
  v16 = *(a1 + 64);
  v40 = v4;
  v17 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v11 = v17;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v18 = v17;
  LOBYTE(v17) = sub_22CE85D54();
  v20 = *(v9 + 8);
  v19 = v9 + 8;
  v20(v11, v8);
  if (v17)
  {
    if (((v16 | (v15 << 16)) & 0x80000000) != 0)
    {

      v19 = v35;
      v16 = v36;
    }

    else
    {
      v16 = v36;
      v41 = v36;
      v42 = v13;

      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
      v19 = v41;
      v14 = v42;
    }

    if (qword_281445360 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v21 = sub_22CE85C84();
  __swift_project_value_buffer(v21, qword_281445368);

  v22 = sub_22CE85C74();
  v23 = sub_22CE85FA4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136380675;
    *(v24 + 4) = sub_22CE44280(v19, v14, &v41);
    _os_log_impl(&dword_22CE3F000, v22, v23, "Invalidating token: %{private}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x2318C20D0](v25, -1, -1);
    MEMORY[0x2318C20D0](v24, -1, -1);
  }

  v26 = *(v37 + 24);
  v27 = sub_22CE85974();
  (*(*(v27 - 8) + 56))(v7 + v26, 1, 1, v27);
  *v7 = v16;
  v7[1] = v13;
  v7[2] = v19;
  v7[3] = v14;
  ObjectType = swift_getObjectType();
  v29 = v39;
  v30 = *(v39 + 32);

  v30(v7, ObjectType, v29);
  sub_22CE40D28(v40 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, &v41);
  v31 = v43;
  v32 = v44;
  __swift_project_boxed_opaque_existential_1(&v41, v43);
  (*(v32 + 40))(v19, v14, v31, v32);

  sub_22CE85600(v7, type metadata accessor for AppTokenInfo);
  return __swift_destroy_boxed_opaque_existential_1(&v41);
}

uint64_t sub_22CE7ACA8(uint64_t a1)
{
  v3 = sub_22CE85D44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_22CE85D54();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connections;
    result = swift_beginAccess();
    v11 = 0;
    v12 = *(v1 + v10);
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = v11;
LABEL_11:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = v18 | (v17 << 6);
      if (*(*(v12 + 56) + 16 * v19) == a1)
      {
        v20 = *(*(v12 + 48) + 16 * v19);

        return v20;
      }
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        return 0;
      }

      v15 = *(v12 + 64 + 8 * v17);
      ++v11;
      if (v15)
      {
        v11 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PushServer.connection(_:didReceivePublicToken:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_22CE85C54();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v10 = v4;
  swift_unknownObjectRetain();
  sub_22CE41BF0(a3, a4);
  sub_22CE85C44();
  sub_22CE85C34();
}

void sub_22CE7AF88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v85 = a4;
  v97 = a2;
  v96 = type metadata accessor for AppTokenInfo(0);
  MEMORY[0x28223BE20](v96);
  v95 = (v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = sub_22CE85974();
  v8 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v86 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v82 - v11;
  v13 = sub_22CE85D44();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  LOBYTE(v17) = sub_22CE85D54();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_9:
    v41 = sub_22CE85C84();
    __swift_project_value_buffer(v41, qword_281445368);
    v42 = sub_22CE85C74();
    v43 = sub_22CE85F94();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22CE3F000, v42, v43, "Connection for incoming package token is unknown", v44, 2u);
      MEMORY[0x2318C20D0](v44, -1, -1);
    }

    goto LABEL_16;
  }

  v19 = sub_22CE7ACA8(a1);
  if (!v20)
  {
    if (qword_281445360 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

  v21 = v19;
  v22 = v20;
  v99 = v4;
  v100 = v8;
  sub_22CE40D28(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_publicTokenStore, &v102);
  v23 = v104;
  v24 = v105;
  __swift_project_boxed_opaque_existential_1(&v102, v104);
  v98 = v21;
  v101[0] = v21;
  v101[1] = v22;
  v25 = v85;
  v101[2] = a3;
  v101[3] = v85;
  v26 = *(v24 + 24);

  v83 = a3;
  sub_22CE41BF0(a3, v25);
  LOBYTE(v23) = v26(v101, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(&v102);
  if ((v23 & 1) == 0)
  {

    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v45 = sub_22CE85C84();
    __swift_project_value_buffer(v45, qword_281445368);
    v42 = sub_22CE85C74();
    v46 = sub_22CE85FA4();
    v47 = os_log_type_enabled(v42, v46);
    v48 = v83;
    v49 = v85;
    if (v47)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_22CE3F000, v42, v46, "package token has not changed", v50, 2u);
      MEMORY[0x2318C20D0](v50, -1, -1);
    }

    sub_22CE4E0DC(v48, v49);
LABEL_16:

    return;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v27 = sub_22CE85C84();
  __swift_project_value_buffer(v27, qword_281445368);

  v28 = v83;
  v29 = v85;
  sub_22CE41BF0(v83, v85);
  v30 = sub_22CE85C74();
  v31 = sub_22CE85FA4();
  sub_22CE4E0DC(v28, v29);

  v32 = os_log_type_enabled(v30, v31);
  v33 = v99;
  if (v32)
  {
    v34 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v102 = v92;
    *v34 = 136446466;
    v35 = sub_22CE85894();
    v37 = sub_22CE44280(v35, v36, &v102);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2082;
    v38 = v98;
    *(v34 + 14) = sub_22CE44280(v98, v22, &v102);
    _os_log_impl(&dword_22CE3F000, v30, v31, "Received package token: %{public}s for environment: %{public}s", v34, 0x16u);
    v39 = v92;
    swift_arrayDestroy();
    MEMORY[0x2318C20D0](v39, -1, -1);
    MEMORY[0x2318C20D0](v34, -1, -1);

    v40 = v100;
  }

  else
  {

    v40 = v100;
    v38 = v98;
  }

  sub_22CE40D28(v33 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, &v102);
  v51 = v104;
  v52 = v105;
  __swift_project_boxed_opaque_existential_1(&v102, v104);
  (*(v52 + 56))(v38, v22, v51, v52);

  __swift_destroy_boxed_opaque_existential_1(&v102);
  sub_22CE40D28(v33 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v102);
  v53 = v104;
  v54 = v105;
  __swift_project_boxed_opaque_existential_1(&v102, v104);
  v55 = (*(v54 + 16))(v53, v54);
  __swift_destroy_boxed_opaque_existential_1(&v102);
  v56 = *(v55 + 16);
  if (v56)
  {
    v82[1] = v22;
    ObjectType = swift_getObjectType();
    v90 = *(v97 + 8);
    v91 = v97 + 8;
    v92 = ObjectType;
    v84 = (v40 + 8);
    v89 = (v40 + 56);
    v82[0] = v55;
    v58 = v55 + 48;
    v93 = a1;
    v87 = v12;
    do
    {
      v99 = v56;
      v60 = v12;
      v67 = *(v58 - 16);
      v100 = *(v58 - 8);
      v63 = *v58;
      v64 = *(v58 + 8);
      v69 = *(v58 + 16);
      v68 = *(v58 + 24);
      v71 = *(v58 + 32);
      v70 = *(v58 + 40);
      v72 = *(v58 + 48) | (*(v58 + 50) << 16);
      if ((v72 & 0x80000000) != 0)
      {

        v88 = v69;
        v73 = v69;
        v74 = v68;
        v75 = v68;
        v76 = v71;
        v77 = v71;
        v78 = v70;
        sub_22CE449A4(v63, v64, v73, v75, v77, v70, v72);
        v62 = v67;
        v79 = v86;
        sub_22CE85954();
        sub_22CE85964();
        v80 = v79;
        v81 = v94;
        (*v84)(v80, v94);
        (*v89)(v60, 0, 1, v81);

        sub_22CE62988(v63, v64, v88, v74, v76, v78, v72);
      }

      else
      {
        (*v89)(v60, 1, 1, v94);
        v59 = v100;

        sub_22CE449A4(v63, v64, v69, v68, v71, v70, v72);
        v102 = v67;
        v103 = v59;
        swift_bridgeObjectRetain_n();
        v98 = v67;
        MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
        v60 = v87;

        v61 = v70;
        v62 = v98;
        sub_22CE62988(v63, v64, v69, v68, v71, v61, v72);
        v63 = v102;
        v64 = v103;
      }

      v65 = v95;
      sub_22CE4DD94(v60, v95 + *(v96 + 24), &qword_27D9EEF40, &qword_22CE86C00);
      v66 = v100;
      *v65 = v62;
      v65[1] = v66;
      v65[2] = v63;
      v65[3] = v64;
      v90(v65, v92, v97);
      sub_22CE85600(v65, type metadata accessor for AppTokenInfo);
      sub_22CE42330(v60, &qword_27D9EEF40, &qword_22CE86C00);
      v58 += 72;
      v56 = v99 - 1;
      v12 = v60;
    }

    while (v99 != 1);
  }

  sub_22CE4E0DC(v83, v85);
}

uint64_t PushServer.connection(_:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IncomingMessage(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22CE85C54();
  sub_22CE85598(a3, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IncomingMessage);
  v10 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a2;
  sub_22CE85530(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for IncomingMessage);
  v12 = v3;
  swift_unknownObjectRetain();
  sub_22CE85C44();
  sub_22CE85C34();
}

void sub_22CE7BADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(&v364 + 1) = a1;
  v365 = a3;
  v324 = a2;
  v432 = *MEMORY[0x277D85DE8];
  v336 = type metadata accessor for IncomingMessage.EventType(0);
  v5 = MEMORY[0x28223BE20](v336);
  v333 = &v313 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v325 = &v313 - v8;
  MEMORY[0x28223BE20](v7);
  v334 = &v313 - v9;
  v335 = type metadata accessor for PushEvent(0);
  v328 = *(v335 - 8);
  v10 = MEMORY[0x28223BE20](v335);
  v330 = &v313 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v327 = &v313 - v13;
  v329 = v14;
  MEMORY[0x28223BE20](v12);
  v347 = &v313 - v15;
  v354 = sub_22CE85AB4();
  v356 = *(v354 - 8);
  MEMORY[0x28223BE20](v354);
  v350 = &v313 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v17 - 8);
  v345 = &v313 - v18;
  v19 = sub_22CE85A94();
  MEMORY[0x28223BE20](v19 - 8);
  v344 = &v313 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = sub_22CE85974();
  v359 = *(v351 - 8);
  MEMORY[0x28223BE20](v351);
  v343 = &v313 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED60, "J#");
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v346 = &v313 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v352 = &v313 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0F8, &qword_22CE88EA8);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v342 = &v313 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v355 = &v313 - v29;
  v30 = type metadata accessor for PushEvent.EventType(0);
  MEMORY[0x28223BE20](v30 - 8);
  v357 = (&v313 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_22CE85AF4();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v358 = &v313 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22CE859A4();
  v338 = *(v35 - 8);
  v339 = v35;
  MEMORY[0x28223BE20](v35);
  v337 = &v313 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = type metadata accessor for PushToken(0);
  *(&v360 + 1) = *(v349 - 1);
  v37 = MEMORY[0x28223BE20](v349);
  v340 = &v313 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  *&v360 = &v313 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v348 = &v313 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v361 = &v313 - v43;
  v353 = type metadata accessor for IncomingMessage(0);
  v44 = MEMORY[0x28223BE20](v353);
  v326 = &v313 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v323 = &v313 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v313 - v48;
  v50 = sub_22CE85D44();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = (&v313 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v53 = v54;
  (*(v51 + 104))(v53, *MEMORY[0x277D85200], v50);
  v55 = v54;
  v56 = sub_22CE85D54();
  (*(v51 + 8))(v53, v50);
  if ((v56 & 1) == 0)
  {
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    swift_once();
    goto LABEL_4;
  }

  *&v364 = sub_22CE7ACA8(*(&v364 + 1));
  if (!v57)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v70 = sub_22CE85C84();
    __swift_project_value_buffer(v70, qword_281445368);
    v71 = sub_22CE85C74();
    v72 = sub_22CE85F94();
    if (!os_log_type_enabled(v71, v72))
    {
      goto LABEL_117;
    }

    v73 = swift_slowAlloc();
    *v73 = 0;
    v74 = "Incoming message arrived on an unknown connection";
    goto LABEL_116;
  }

  v54 = v57;
  v321 = v33;
  if (qword_281445360 != -1)
  {
    goto LABEL_176;
  }

LABEL_4:
  v58 = sub_22CE85C84();
  v59 = __swift_project_value_buffer(v58, qword_281445368);
  sub_22CE85598(v365, v49, type metadata accessor for IncomingMessage);

  v60 = sub_22CE85C74();
  v61 = sub_22CE85FA4();

  v62 = os_log_type_enabled(v60, v61);
  v322 = v32;
  v341 = v4;
  v362 = v59;
  v363 = v54;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v423 = v64;
    *v63 = 136446466;
    v65 = IncomingMessage.description.getter();
    v67 = v66;
    sub_22CE85600(v49, type metadata accessor for IncomingMessage);
    v68 = sub_22CE44280(v65, v67, &v423);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2082;
    *(v63 + 14) = sub_22CE44280(v364, v54, &v423);
    _os_log_impl(&dword_22CE3F000, v60, v61, "Received message: %{public}s for environment: %{public}s", v63, 0x16u);
    swift_arrayDestroy();
    v69 = v341;
    MEMORY[0x2318C20D0](v64, -1, -1);
    MEMORY[0x2318C20D0](v63, -1, -1);
  }

  else
  {

    sub_22CE85600(v49, type metadata accessor for IncomingMessage);
    v69 = v4;
  }

  v75 = v365;
  v4 = *(v365 + 32);
  v76 = *(v365 + 40);
  if (v76)
  {
    sub_22CE40D28(v69 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v418);
    v77 = *(&v419 + 1);
    v78 = v420;
    __swift_project_boxed_opaque_existential_1(&v418, *(&v419 + 1));
    v79 = *(v75 + 24);
    *&v414[0] = *(v75 + 16);
    *(&v414[0] + 1) = v79;
    v80 = *(v78 + 80);

    v317 = v4;
    v319 = v76;
    v80(&v423, v364, v363, v414, v4, v76, v77, v78);

    v81 = *(&v423 + 1);
    v82 = v423;
    v428 = v424;
    v429 = v425;
    v430 = v426;
    v431 = v427;
    __swift_destroy_boxed_opaque_existential_1(&v418);
    goto LABEL_13;
  }

  v88 = *(v365 + 8);
  if (v88 >> 60 == 15)
  {

    v71 = sub_22CE85C74();
    v72 = sub_22CE85F94();
    if (!os_log_type_enabled(v71, v72))
    {
LABEL_117:

      return;
    }

    v73 = swift_slowAlloc();
    *v73 = 0;
    v74 = "Incoming message provides neither token nor channel";
LABEL_116:
    _os_log_impl(&dword_22CE3F000, v71, v72, v74, v73, 2u);
    MEMORY[0x2318C20D0](v73, -1, -1);
    goto LABEL_117;
  }

  v317 = *(v365 + 32);
  v319 = 0;
  v89 = *v365;
  sub_22CE40D28(v69 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, &v423);
  v90 = *(&v424 + 1);
  v91 = v425;
  __swift_project_boxed_opaque_existential_1(&v423, *(&v424 + 1));
  v92 = *(v91 + 80);
  sub_22CE41BF0(v89, v88);
  v93 = v92(v364, v363, v90, v91);
  v331 = *(v93 + 16);
  v318 = v88;
  if (v331)
  {
    v32 = 0;
    v49 = 0;
    v94 = *(&v360 + 1);
    v332 = v93 + ((*(*(&v360 + 1) + 80) + 32) & ~*(*(&v360 + 1) + 80));
    if (v89)
    {
      v95 = 0;
    }

    else
    {
      v95 = v88 == 0xC000000000000000;
    }

    v96 = !v95;
    v316 = v96;
    v97 = v89;
    v98 = v88 >> 62;
    v320 = v97;
    v99 = HIDWORD(v97) - v97;
    v100 = __OFSUB__(HIDWORD(v97), v97);
    v314 = v100;
    v313 = v99;
    v315 = BYTE6(v88);
    v101 = v361;
    v54 = v360;
    while (1)
    {
      if (v32 >= *(v93 + 16))
      {
        goto LABEL_175;
      }

      v4 = v93;
      sub_22CE85598(v332 + *(v94 + 72) * v32, v54, type metadata accessor for PushToken);
      v102 = *v54;
      v103 = v54[1];
      v104 = v103 >> 62;
      if (v103 >> 62 == 3)
      {
        break;
      }

      if (v104 > 1)
      {
        if (v104 != 2)
        {
          goto LABEL_63;
        }

        v110 = *(v102 + 16);
        v109 = *(v102 + 24);
        v111 = __OFSUB__(v109, v110);
        v108 = v109 - v110;
        if (v111)
        {
          goto LABEL_180;
        }

        if (v98 <= 1)
        {
          goto LABEL_60;
        }
      }

      else if (v104)
      {
        LODWORD(v108) = HIDWORD(v102) - v102;
        if (__OFSUB__(HIDWORD(v102), v102))
        {
          goto LABEL_179;
        }

        v108 = v108;
        if (v98 <= 1)
        {
LABEL_60:
          v112 = v315;
          if (v98)
          {
            v112 = v313;
            if (v314)
            {
              goto LABEL_178;
            }
          }

          goto LABEL_66;
        }
      }

      else
      {
        v108 = BYTE6(v103);
        if (v98 <= 1)
        {
          goto LABEL_60;
        }
      }

LABEL_64:
      if (v98 != 2)
      {
        if (!v108)
        {
          goto LABEL_88;
        }

        goto LABEL_39;
      }

      v114 = *(v320 + 16);
      v113 = *(v320 + 24);
      v111 = __OFSUB__(v113, v114);
      v112 = v113 - v114;
      if (v111)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
      }

LABEL_66:
      if (v108 == v112)
      {
        if (v108 < 1)
        {
          goto LABEL_88;
        }

        if (v104 > 1)
        {
          if (v104 != 2)
          {
            *(&v418 + 6) = 0;
            *&v418 = 0;
LABEL_87:
            sub_22CE8228C(&v418, v320, v318, v414);
            if (v414[0])
            {
              goto LABEL_88;
            }

            goto LABEL_39;
          }

          v115 = *(v102 + 16);
          v116 = *(v102 + 24);
          v117 = sub_22CE85804();
          if (v117)
          {
            v118 = sub_22CE85824();
            if (__OFSUB__(v115, v118))
            {
              goto LABEL_183;
            }

            v117 += v115 - v118;
          }

          if (__OFSUB__(v116, v115))
          {
            goto LABEL_182;
          }
        }

        else
        {
          if (!v104)
          {
            *&v418 = *v54;
            WORD4(v418) = v103;
            BYTE10(v418) = BYTE2(v103);
            BYTE11(v418) = BYTE3(v103);
            BYTE12(v418) = BYTE4(v103);
            BYTE13(v418) = BYTE5(v103);
            goto LABEL_87;
          }

          v119 = v102;
          if (v102 >> 32 < v102)
          {
            goto LABEL_181;
          }

          v117 = sub_22CE85804();
          if (v117)
          {
            v120 = sub_22CE85824();
            if (__OFSUB__(v119, v120))
            {
              goto LABEL_184;
            }

            v117 += v119 - v120;
          }
        }

        sub_22CE85814();
        sub_22CE8228C(v117, v320, v318, &v418);
        v94 = *(&v360 + 1);
        v101 = v361;
        v54 = v360;
        if (v418)
        {
          goto LABEL_88;
        }
      }

LABEL_39:
      ++v32;
      sub_22CE85600(v54, type metadata accessor for PushToken);
      v93 = v4;
      if (v331 == v32)
      {

        v121 = 1;
        goto LABEL_111;
      }
    }

    if (v102)
    {
      v105 = 0;
    }

    else
    {
      v105 = v103 == 0xC000000000000000;
    }

    v107 = !v105 || v98 < 3;
    if (((v107 | v316) & 1) == 0)
    {
LABEL_88:

      sub_22CE85530(v54, v101, type metadata accessor for PushToken);
      v121 = 0;
LABEL_111:
      v75 = v365;
      v89 = v320;
      goto LABEL_112;
    }

LABEL_63:
    v108 = 0;
    if (v98 <= 1)
    {
      goto LABEL_60;
    }

    goto LABEL_64;
  }

  v121 = 1;
  v94 = *(&v360 + 1);
  v101 = v361;
LABEL_112:
  v156 = *(v94 + 56);
  v157 = v94;
  v158 = v349;
  v156(v101, v121, 1, v349);
  __swift_destroy_boxed_opaque_existential_1(&v423);
  v159 = v348;
  sub_22CE4DD94(v101, v348, &qword_27D9EEB28, &qword_22CE86BF0);
  if ((*(v157 + 48))(v159, 1, v158) == 1)
  {
    sub_22CE42330(v101, &qword_27D9EEB28, &qword_22CE86BF0);
    sub_22CE70B40(v89, v318);

    sub_22CE42330(v159, &qword_27D9EEB28, &qword_22CE86BF0);
    swift_allocObject();
    goto LABEL_114;
  }

  v160 = v101;
  v161 = v340;
  sub_22CE85530(v159, v340, type metadata accessor for PushToken);
  sub_22CE40D28(v341 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v418);
  v162 = *(&v419 + 1);
  v163 = v420;
  __swift_project_boxed_opaque_existential_1(&v418, *(&v419 + 1));
  (*(v163 + 88))(&v423, *(v161 + 16), *(v161 + 24), v162, v163);
  sub_22CE70B40(v89, v318);
  sub_22CE42330(v160, &qword_27D9EEB28, &qword_22CE86BF0);
  sub_22CE85600(v161, type metadata accessor for PushToken);
  v81 = *(&v423 + 1);
  v82 = v423;
  v428 = v424;
  v429 = v425;
  v430 = v426;
  v431 = v427;
  __swift_destroy_boxed_opaque_existential_1(&v418);
LABEL_13:
  v83 = swift_allocObject();
  v84 = v83;
  if (!v81)
  {

LABEL_114:
    swift_deallocUninitializedObject();
    v71 = sub_22CE85C74();
    v72 = sub_22CE85F94();
    if (!os_log_type_enabled(v71, v72))
    {
      goto LABEL_117;
    }

    v73 = swift_slowAlloc();
    *v73 = 0;
    v74 = "Incoming message does not belong to an activity";
    goto LABEL_116;
  }

  *(v83 + 16) = v82;
  *(v83 + 24) = v81;
  v85 = v429;
  *(v83 + 32) = v428;
  *(v83 + 48) = v85;
  *(v83 + 64) = v430;
  *(v83 + 80) = v431;
  if ((v82 != *(v75 + 16) || v81 != *(v75 + 24)) && (sub_22CE86194() & 1) == 0)
  {

    v71 = sub_22CE85C74();
    v122 = sub_22CE85F94();
    if (os_log_type_enabled(v71, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      v124 = "Incoming message topic does not match subscription topic";
LABEL_100:
      _os_log_impl(&dword_22CE3F000, v71, v122, v124, v123, 2u);
      MEMORY[0x2318C20D0](v123, -1, -1);
    }

LABEL_101:

    goto LABEL_117;
  }

  if (((*(v84 + 80) | (*(v84 + 82) << 16)) & 0x800000) == 0 || *(v84 + 80) != 1)
  {
    if (!v319)
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

  v86 = *(v84 + 64);
  v87 = *(v84 + 72);

  if (!v319)
  {

    goto LABEL_98;
  }

  if (v86 == v317 && v87 == v319)
  {

    goto LABEL_96;
  }

  v125 = sub_22CE86194();

  if ((v125 & 1) == 0)
  {
LABEL_98:

    v71 = sub_22CE85C74();
    v122 = sub_22CE85F94();
    if (os_log_type_enabled(v71, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      v124 = "Incoming message channel does not match subscription channel";
      goto LABEL_100;
    }

    goto LABEL_101;
  }

LABEL_96:
  if ((*(v84 + 80) | (*(v84 + 82) << 16)) < 0)
  {
    v128 = *(v84 + 40);
    *(&v360 + 1) = *(v84 + 32);
    v361 = v128;
  }

  else
  {
    v126 = v337;
    sub_22CE85994();
    *(&v360 + 1) = sub_22CE85984();
    v361 = v127;
    (*(v338 + 8))(v126, v339);
  }

  v129 = *(v84 + 32);
  v130 = *(v84 + 64);
  v415 = *(v84 + 48);
  v416 = v130;
  v131 = *(v84 + 32);
  v414[0] = *(v84 + 16);
  v414[1] = v131;
  v132 = *(v84 + 64);
  v411 = v415;
  v412 = v132;
  v417 = *(v84 + 80);
  v413 = *(v84 + 80);
  v409 = v414[0];
  v410 = v129;
  sub_22CE41214(v414, &v404);
  sub_22CE80FA4(&v409, v358);
  v133 = *(v84 + 32);
  v134 = *(v84 + 64);
  v420 = *(v84 + 48);
  v421 = v134;
  v135 = *(v84 + 32);
  v418 = *(v84 + 16);
  v419 = v135;
  v136 = *(v84 + 64);
  v411 = v420;
  v412 = v136;
  v422 = *(v84 + 80);
  v413 = *(v84 + 80);
  v409 = v418;
  v410 = v133;
  sub_22CE41214(&v418, &v404);
  sub_22CE812C4(&v409, v357);
  v425 = v411;
  v426 = v412;
  v427 = v413;
  v423 = v409;
  v424 = v410;
  sub_22CE632E8(&v423);
  v137 = v355;
  sub_22CE81C94(v355);
  v138 = v353;
  v139 = *(v353 + 32);
  v140 = *(v359 + 16);
  v359 += 16;
  *&v360 = v139;
  v349 = v140;
  (v140)(v343, v75 + v139, v351);
  v141 = (v75 + *(v138 + 36));
  v142 = *v141;
  v143 = v141[1];
  sub_22CE4DD94(v75 + *(v138 + 48), v345, &qword_27D9EEF40, &qword_22CE86C00);
  sub_22CE41BF0(v142, v143);
  sub_22CE85A84();
  sub_22CE4DD94(v137, v342, &qword_27D9EF0F8, &qword_22CE88EA8);
  v144 = v352;
  sub_22CE85AA4();
  v145 = v356;
  v146 = *(v356 + 56);
  v147 = v354;
  v146(v144, 0, 1, v354);
  v148 = *(v365 + 48);
  v149 = v346;
  sub_22CE4DD94(v144, v346, &qword_27D9EED60, "J#");
  if ((*(v145 + 48))(v149, 1, v147) != 1)
  {
    (*(v145 + 32))(v350, v149, v147);
    v413 = *(v84 + 80);
    v154 = *(v84 + 64);
    v411 = *(v84 + 48);
    v412 = v154;
    v155 = *(v84 + 32);
    v409 = *(v84 + 16);
    v410 = v155;
    v344 = 0;
    if ((v413 | (SBYTE2(v413) << 16)) < 0)
    {
      v346 = *(&v410 + 1);
      v348 = v410;
    }

    else
    {
      v399 = v409;
      sub_22CE41214(&v409, &v404);

      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
      sub_22CE632E8(&v409);
      v346 = *(&v399 + 1);
      v348 = v399;
    }

    LODWORD(v345) = (v148 - 3) < 0xFFFFFFFE;
    v165 = *(v84 + 16);
    v164 = *(v84 + 24);
    v166 = v335;
    v167 = v347;
    (v349)(&v347[*(v335 + 28)], v365 + v360, v351);
    sub_22CE85598(v357, &v167[v166[8]], type metadata accessor for PushEvent.EventType);
    (*(v321 + 16))(&v167[v166[9]], v358, v322);
    v168 = v166[10];
    v169 = v354;
    (*(v356 + 16))(&v167[v168], v350, v354);
    v146(&v167[v168], 0, 1, v169);
    v170 = v346;
    *v167 = v348;
    *(v167 + 1) = v170;
    v171 = v361;
    *(v167 + 2) = *(&v360 + 1);
    *(v167 + 3) = v171;
    *(v167 + 4) = v165;
    *(v167 + 5) = v164;
    v167[v166[11]] = v345;
    v172 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer;
    sub_22CE83C40(v341 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer, &v404);
    v173 = *(&v405 + 1);
    v174 = v406;
    __swift_project_boxed_opaque_existential_1(&v404, *(&v405 + 1));
    v175 = *(v174 + 56);

    v175(v167, v173, v174);
    __swift_destroy_boxed_opaque_existential_1(&v404);
    v176 = *(v84 + 80) | (*(v84 + 82) << 16);
    if ((v176 & 0x80000000) == 0)
    {
      v177 = v365;
      v178 = v333;
      sub_22CE85598(v365 + *(v353 + 40), v333, type metadata accessor for IncomingMessage.EventType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22CE85600(v178, type metadata accessor for IncomingMessage.EventType);

        v179 = sub_22CE85C74();
        v180 = sub_22CE85FA4();
        if (os_log_type_enabled(v179, v180))
        {
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          *&v380 = v182;
          *v181 = 136380675;
          swift_beginAccess();
          v408 = *(v84 + 80);
          v183 = *(v84 + 64);
          v406 = *(v84 + 48);
          v407 = v183;
          v184 = *(v84 + 32);
          v404 = *(v84 + 16);
          v405 = v184;
          v185 = v347;
          if ((v408 | (SBYTE2(v408) << 16)) < 0)
          {
            v186 = *(&v405 + 1);
            v187 = v405;
          }

          else
          {
            v394 = v404;
            sub_22CE41214(&v404, &v399);

            MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
            sub_22CE632E8(&v404);

            v186 = *(&v394 + 1);
            v187 = v394;
          }

          v250 = sub_22CE44280(v187, v186, &v380);

          *(v181 + 4) = v250;
          _os_log_impl(&dword_22CE3F000, v179, v180, "Received pushToStart notification for %{private}s", v181, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v182);
          MEMORY[0x2318C20D0](v182, -1, -1);
          MEMORY[0x2318C20D0](v181, -1, -1);

          v221 = v356;
          v222 = v341;
        }

        else
        {

          v221 = v356;
          v222 = v341;
          v185 = v347;
        }

        v251 = v222;
        sub_22CE83C40(v222 + v172, &v394);
        v252 = *(&v395 + 1);
        v253 = v396;
        __swift_project_boxed_opaque_existential_1(&v394, *(&v395 + 1));
        swift_beginAccess();
        v408 = *(v84 + 80);
        v254 = *(v84 + 64);
        v406 = *(v84 + 48);
        v407 = v254;
        v255 = *(v84 + 32);
        v404 = *(v84 + 16);
        v405 = v255;
        if ((v408 | (SBYTE2(v408) << 16)) < 0)
        {
          v257 = *(&v405 + 1);
          v256 = v405;
        }

        else
        {
          v366 = v404;
          sub_22CE41214(&v404, &v399);

          MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
          sub_22CE632E8(&v404);
          v257 = *(&v366 + 1);
          v256 = v366;
        }

        v258 = (*(v253 + 32))(v256, v257, v252, v253);

        __swift_destroy_boxed_opaque_existential_1(&v394);
        if (v258)
        {
          sub_22CE78AE0(v364, v363, *(&v364 + 1), v324);

          v259 = sub_22CE85C74();
          v260 = sub_22CE85FA4();
          if (os_log_type_enabled(v259, v260))
          {
            v261 = swift_slowAlloc();
            v262 = swift_slowAlloc();
            v391[0] = v262;
            *v261 = 136446210;
            v403 = *(v84 + 80);
            v263 = *(v84 + 64);
            v401 = *(v84 + 48);
            v402 = v263;
            v264 = *(v84 + 32);
            v399 = *(v84 + 16);
            v400 = v264;
            if ((v403 | (SBYTE2(v403) << 16)) < 0)
            {
              v266 = *(&v400 + 1);
              v267 = v400;

              v265 = v267;
            }

            else
            {
              v366 = v399;
              sub_22CE41214(&v399, &v394);

              MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
              sub_22CE632E8(&v399);

              v266 = *(&v366 + 1);
              v265 = v366;
            }

            v268 = sub_22CE44280(v265, v266, v391);

            *(v261 + 4) = v268;
            _os_log_impl(&dword_22CE3F000, v259, v260, "Push-to-start budget exceeded for %{public}s; not starting activity", v261, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v262);
            MEMORY[0x2318C20D0](v262, -1, -1);
            MEMORY[0x2318C20D0](v261, -1, -1);

            sub_22CE85600(v185, type metadata accessor for PushEvent);
            (*(v356 + 8))(v350, v354);
          }

          else
          {

            sub_22CE85600(v185, type metadata accessor for PushEvent);
            (*(v221 + 8))(v350, v354);
          }

          v153 = v352;
          goto LABEL_107;
        }

        v196 = v251;
        goto LABEL_168;
      }

      v210 = v326;
      sub_22CE85598(v177, v326, type metadata accessor for IncomingMessage);
      v211 = sub_22CE85C74();
      v212 = sub_22CE85F94();
      v213 = os_log_type_enabled(v211, v212);
      v214 = v322;
      if (v213)
      {
        v215 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        *&v404 = v216;
        *v215 = 136446210;
        sub_22CE85598(v210 + *(v353 + 40), v325, type metadata accessor for IncomingMessage.EventType);
        v217 = sub_22CE85E24();
        v219 = v218;
        sub_22CE85600(v210, type metadata accessor for IncomingMessage);
        v220 = sub_22CE44280(v217, v219, &v404);

        *(v215 + 4) = v220;
        _os_log_impl(&dword_22CE3F000, v211, v212, "Unsupported push notification event type for pushToStart subscription: %{public}s", v215, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v216);
        MEMORY[0x2318C20D0](v216, -1, -1);
        MEMORY[0x2318C20D0](v215, -1, -1);

        sub_22CE85600(v347, type metadata accessor for PushEvent);
        (*(v356 + 8))(v350, v354);
        sub_22CE42330(v352, &qword_27D9EED60, "J#");
        sub_22CE42330(v355, &qword_27D9EF0F8, &qword_22CE88EA8);
        sub_22CE85600(v357, type metadata accessor for PushEvent.EventType);
        (*(v321 + 8))(v358, v322);
      }

      else
      {

        sub_22CE85600(v210, type metadata accessor for IncomingMessage);
        sub_22CE85600(v347, type metadata accessor for PushEvent);
        (*(v356 + 8))(v350, v354);
        sub_22CE42330(v352, &qword_27D9EED60, "J#");
        sub_22CE42330(v355, &qword_27D9EF0F8, &qword_22CE88EA8);
        sub_22CE85600(v357, type metadata accessor for PushEvent.EventType);
        (*(v321 + 8))(v358, v214);
      }

      v223 = v178;
LABEL_143:
      sub_22CE85600(v223, type metadata accessor for IncomingMessage.EventType);
      goto LABEL_173;
    }

    v189 = *(v84 + 48);
    v188 = *(v84 + 56);
    v190 = *(v84 + 64);
    v191 = *(v84 + 72);
    v193 = *(v84 + 32);
    v192 = *(v84 + 40);
    v194 = (v176 >> 8) & 1;
    LODWORD(v361) = HIWORD(v176) & 1;
    *&v364 = v193;
    *(&v364 + 1) = v192;
    v391[0] = v193;
    v391[1] = v192;
    v391[2] = v189;
    v391[3] = v188;
    v391[4] = v190;
    v391[5] = v191;
    v393 = BYTE2(v176) & 0x7F;
    v392 = v176;
    sub_22CE85480(v391, &v404);

    sub_22CE85598(v365 + *(v353 + 40), v334, type metadata accessor for IncomingMessage.EventType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v196 = v341;
      if (EnumCaseMultiPayload == 1)
      {
        *&v360 = v189;
        *(&v360 + 1) = v188;
        v197 = v323;
        sub_22CE85598(v365, v323, type metadata accessor for IncomingMessage);
        v198 = sub_22CE85C74();
        v199 = sub_22CE85F94();
        if (os_log_type_enabled(v198, v199))
        {
          v200 = swift_slowAlloc();
          v359 = v190;
          v201 = v200;
          v202 = swift_slowAlloc();
          LODWORD(v365) = (v176 >> 8) & 1;
          v203 = v202;
          *&v399 = v202;
          *v201 = 136446210;
          v204 = v197 + *(v353 + 40);
          v351 = v191;
          v205 = v197;
          sub_22CE85598(v204, v325, type metadata accessor for IncomingMessage.EventType);
          v206 = sub_22CE85E24();
          v208 = v207;
          sub_22CE85600(v205, type metadata accessor for IncomingMessage);
          v209 = sub_22CE44280(v206, v208, &v399);

          *(v201 + 4) = v209;
          _os_log_impl(&dword_22CE3F000, v198, v199, "Unsupported push notification event type for activity subscription: %{public}s", v201, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v203);
          MEMORY[0x2318C20D0](v203, -1, -1);
          MEMORY[0x2318C20D0](v201, -1, -1);

          v404 = v364;
          v405 = v360;
          *&v406 = v359;
          *(&v406 + 1) = v351;
          LOBYTE(v407) = v176;
          BYTE1(v407) = v365;
        }

        else
        {

          sub_22CE85600(v197, type metadata accessor for IncomingMessage);
          v404 = v364;
          v405 = v360;
          *&v406 = v190;
          *(&v406 + 1) = v191;
          LOWORD(v407) = v176 & 0x1FF;
        }

        BYTE2(v407) = v361;
        sub_22CE854DC(&v404);
        sub_22CE85600(v347, type metadata accessor for PushEvent);
        (*(v356 + 8))(v350, v354);
        sub_22CE42330(v352, &qword_27D9EED60, "J#");
        sub_22CE42330(v355, &qword_27D9EF0F8, &qword_22CE88EA8);
        sub_22CE85600(v357, type metadata accessor for PushEvent.EventType);
        (*(v321 + 8))(v358, v322);
        v223 = v334;
        goto LABEL_143;
      }

      v351 = v191;
      v185 = v347;
      if (*(v365 + 48) != 2 && (v176 & 0x10000) == 0)
      {
        *&v360 = v189;
        *(&v360 + 1) = v188;
        v359 = v190;
        LODWORD(v365) = (v176 >> 8) & 1;
        sub_22CE83C40(v341 + v172, &v394);
        v244 = *(&v395 + 1);
        v245 = v396;
        __swift_project_boxed_opaque_existential_1(&v394, *(&v395 + 1));
        v408 = *(v84 + 80);
        v246 = *(v84 + 64);
        v406 = *(v84 + 48);
        v407 = v246;
        v247 = *(v84 + 32);
        v404 = *(v84 + 16);
        v405 = v247;
        if ((v408 | (SBYTE2(v408) << 16)) < 0)
        {
          v249 = *(&v405 + 1);
          v248 = v405;
        }

        else
        {
          v380 = v404;
          sub_22CE41214(&v404, &v399);

          MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
          sub_22CE632E8(&v404);
          v249 = *(&v380 + 1);
          v248 = v380;
        }

        LOBYTE(v399) = 1;
        v269 = (*(v245 + 40))(v248, v249, &v399, v244, v245);

        __swift_destroy_boxed_opaque_existential_1(&v394);
        if (v269)
        {
          v371[0] = v364;
          v270 = *(&v364 + 1);
          v371[1] = v360;
          v271 = v360;
          v372 = v359;
          v272 = v359;
          v373 = v351;
          v273 = v351;
          LOBYTE(v374) = v176;
          HIBYTE(v374) = v365;
          v375 = 1;
          v274 = *(v84 + 80);
          v275 = v374 & 0x103;
          v363 = *(v84 + 32);
          v276 = *(v84 + 48);
          v361 = *(v84 + 40);
          v277 = *(v84 + 56);
          v278 = *(v84 + 64);
          v279 = *(v84 + 72);
          v280 = v274 | (*(v84 + 82) << 16);
          *(v84 + 32) = v364;
          *(v84 + 40) = v270;
          *(v84 + 48) = v271;
          *(v84 + 64) = v272;
          *(v84 + 72) = v273;
          *(v84 + 82) = -127;
          *(v84 + 80) = v275;
          sub_22CE85480(v371, &v399);
          sub_22CE62988(v363, v361, v276, v277, v278, v279, v280);
          sub_22CE40D28(v341 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v366);
          v282 = *(&v367 + 1);
          v281 = v368;
          __swift_project_boxed_opaque_existential_1(&v366, *(&v367 + 1));
          v283 = *(v84 + 32);
          v284 = *(v84 + 64);
          v377 = *(v84 + 48);
          v378 = v284;
          v285 = *(v84 + 32);
          v376[0] = *(v84 + 16);
          v376[1] = v285;
          v286 = *(v84 + 64);
          v401 = v377;
          v402 = v286;
          v379 = *(v84 + 80);
          v403 = *(v84 + 80);
          v399 = v376[0];
          v400 = v283;
          v287 = *(v281 + 48);
          sub_22CE41214(v376, &v394);
          v287(&v399, v282, v281);
          v196 = v341;
          v382 = v401;
          v383 = v402;
          v384 = v403;
          v380 = v399;
          v381 = v400;
          sub_22CE632E8(&v380);
          __swift_destroy_boxed_opaque_existential_1(&v366);
          v288 = *(v84 + 32);
          v289 = *(v84 + 64);
          v396 = *(v84 + 48);
          v397 = v289;
          v290 = *(v84 + 32);
          v394 = *(v84 + 16);
          v395 = v290;
          v291 = *(v84 + 64);
          v368 = v396;
          v369 = v291;
          v398 = *(v84 + 80);
          v370 = *(v84 + 80);
          v366 = v394;
          v367 = v288;
          sub_22CE41214(&v394, &v399);
          sub_22CE8071C(&v366);
          v401 = v368;
          v402 = v369;
          v403 = v370;
          v399 = v366;
          v400 = v367;
          sub_22CE632E8(&v399);
          v385[0] = v364;
          v385[1] = v360;
          v386 = v359;
          v387 = v351;
          v388 = v176;
          v389 = v365;
          v390 = 1;
          v292 = v385;
LABEL_167:
          sub_22CE854DC(v292);
LABEL_168:
          v243 = v327;
          goto LABEL_169;
        }

        v196 = v341;
        LOBYTE(v194) = v365;
        v190 = v359;
        v188 = *(&v360 + 1);
        v189 = v360;
      }

      v404 = v364;
      *&v405 = v189;
      *(&v405 + 1) = v188;
      *&v406 = v190;
      *(&v406 + 1) = v351;
      LOBYTE(v407) = v176;
      BYTE1(v407) = v194;
      BYTE2(v407) = v361;
      v292 = &v404;
      goto LABEL_167;
    }

    *&v360 = v189;
    *(&v360 + 1) = v188;
    v359 = v190;
    v224 = *(v84 + 32);
    v225 = *(v84 + 64);
    v406 = *(v84 + 48);
    v407 = v225;
    v226 = *(v84 + 32);
    v404 = *(v84 + 16);
    v405 = v226;
    v227 = *(v84 + 64);
    v401 = v406;
    v402 = v227;
    v408 = *(v84 + 80);
    v403 = *(v84 + 80);
    v399 = v404;
    v400 = v224;
    sub_22CE41214(&v404, &v394);
    v196 = v341;
    v228 = v344;
    sub_22CE76D38(&v399);
    if (v228)
    {
      v396 = v401;
      v397 = v402;
      v398 = v403;
      v394 = v399;
      v395 = v400;
      sub_22CE632E8(&v394);
      v229 = v228;
      v230 = sub_22CE85C74();
      v231 = sub_22CE85F94();

      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        LODWORD(v365) = (v176 >> 8) & 1;
        v233 = v232;
        v234 = swift_slowAlloc();
        *&v376[0] = v234;
        *v233 = 136446210;
        *&v380 = v228;
        v235 = v228;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF100, &qword_22CE88EB0);
        v236 = sub_22CE85E24();
        v238 = sub_22CE44280(v236, v237, v376);
        v351 = v191;
        v239 = v238;

        *(v233 + 4) = v239;
        v240 = v334;
        _os_log_impl(&dword_22CE3F000, v230, v231, "Error unsubscribing from push notifications: %{public}s", v233, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v234);
        v241 = v234;
        v196 = v341;
        MEMORY[0x2318C20D0](v241, -1, -1);
        MEMORY[0x2318C20D0](v233, -1, -1);

        v380 = v364;
        v381 = v360;
        *&v382 = v359;
        *(&v382 + 1) = v351;
        LOBYTE(v383) = v176;
        BYTE1(v383) = v365;
        BYTE2(v383) = v361;
        sub_22CE854DC(&v380);
        v242 = v240;
        v243 = v327;
LABEL_158:
        sub_22CE42330(v242, &qword_27D9EEF40, &qword_22CE86C00);
        v185 = v347;
LABEL_169:
        sub_22CE85598(v185, v243, type metadata accessor for PushEvent);
        v293 = sub_22CE85C74();
        v294 = sub_22CE85FA4();
        if (os_log_type_enabled(v293, v294))
        {
          v295 = swift_slowAlloc();
          v296 = v196;
          v297 = swift_slowAlloc();
          *&v404 = v297;
          *v295 = 136446210;
          v298 = PushEvent.description.getter();
          v299 = v243;
          v301 = v300;
          sub_22CE85600(v299, type metadata accessor for PushEvent);
          v302 = sub_22CE44280(v298, v301, &v404);

          *(v295 + 4) = v302;
          _os_log_impl(&dword_22CE3F000, v293, v294, "Publishing event: %{public}s", v295, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v297);
          v303 = v297;
          v196 = v296;
          MEMORY[0x2318C20D0](v303, -1, -1);
          MEMORY[0x2318C20D0](v295, -1, -1);
        }

        else
        {

          sub_22CE85600(v243, type metadata accessor for PushEvent);
        }

        v304 = v321;
        v305 = v328;
        sub_22CE85C54();
        v306 = v185;
        v307 = v330;
        sub_22CE85598(v306, v330, type metadata accessor for PushEvent);
        v308 = *(v305 + 80);
        v309 = v196;
        v310 = (v308 + 24) & ~v308;
        v311 = swift_allocObject();
        *(v311 + 16) = v309;
        sub_22CE85530(v307, v311 + v310, type metadata accessor for PushEvent);
        v312 = v309;
        sub_22CE85C44();
        sub_22CE85C34();

        sub_22CE85600(v347, type metadata accessor for PushEvent);
        (*(v356 + 8))(v350, v354);
        sub_22CE42330(v352, &qword_27D9EED60, "J#");
        sub_22CE42330(v355, &qword_27D9EF0F8, &qword_22CE88EA8);
        sub_22CE85600(v357, type metadata accessor for PushEvent.EventType);
        (*(v304 + 8))(v358, v322);
        goto LABEL_173;
      }
    }

    else
    {
      v396 = v401;
      v397 = v402;
      v398 = v403;
      v394 = v399;
      v395 = v400;
      sub_22CE632E8(&v394);
    }

    v380 = v364;
    v381 = v360;
    *&v382 = v359;
    *(&v382 + 1) = v191;
    LOWORD(v383) = v176 & 0x1FF;
    BYTE2(v383) = v361;
    sub_22CE854DC(&v380);
    v243 = v327;
    v242 = v334;
    goto LABEL_158;
  }

  sub_22CE42330(v149, &qword_27D9EED60, "J#");
  v150 = sub_22CE85C74();
  v151 = sub_22CE85F94();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    *v152 = 0;
    _os_log_impl(&dword_22CE3F000, v150, v151, "Error extracing payload from incoming message", v152, 2u);
    MEMORY[0x2318C20D0](v152, -1, -1);
  }

  v153 = v144;
LABEL_107:
  sub_22CE42330(v153, &qword_27D9EED60, "J#");
  sub_22CE42330(v355, &qword_27D9EF0F8, &qword_22CE88EA8);
  sub_22CE85600(v357, type metadata accessor for PushEvent.EventType);
  (*(v321 + 8))(v358, v322);
LABEL_173:
}

uint64_t PushServer.connection(_:didReceiveToken:for:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for AppTokenInfo(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v18[1] = sub_22CE85C54();
  sub_22CE85598(a5, v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppTokenInfo);
  v14 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  sub_22CE85530(v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AppTokenInfo);
  v16 = v5;
  swift_unknownObjectRetain();
  sub_22CE41BF0(a3, a4);
  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7EA94(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0F0, &qword_22CE88EA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v20 - v15;
  sub_22CE85598(a8, &v20 - v15, type metadata accessor for AppTokenInfo);
  v17 = type metadata accessor for AppTokenInfo(0);
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  sub_22CE7EBE0(a4, a5, a6, a7, v16);
  v18 = sub_22CE42330(v16, &qword_27D9EF0F0, &qword_22CE88EA0);
  return a1(v18);
}

void sub_22CE7EBE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int (*a5)(void, void, void))
{
  v6 = v5;
  v118 = a4;
  v117 = a3;
  v109 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v9 - 8);
  v116 = v106 - v10;
  v115 = type metadata accessor for PushToken(0);
  MEMORY[0x28223BE20](v115);
  v119 = (v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0F0, &qword_22CE88EA0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v110 = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v108 = v106 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v111 = (v106 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v121 = v106 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v120 = (v106 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v106 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v106 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v106 - v29;
  v31 = sub_22CE85D44();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = (v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *&v6[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  *v34 = v35;
  (*(v32 + 104))(v34, *MEMORY[0x277D85200], v31);
  v36 = v35;
  LOBYTE(v35) = sub_22CE85D54();
  v38 = *(v32 + 8);
  v37 = v32 + 8;
  v38(v34, v31);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
LABEL_4:
    v41 = sub_22CE85C84();
    v42 = __swift_project_value_buffer(v41, qword_281445368);
    sub_22CE4DD94(a5, v30, &qword_27D9EF0F0, &qword_22CE88EA0);

    v106[1] = v42;
    v43 = sub_22CE85C74();
    v44 = sub_22CE85FA4();
    v45 = os_log_type_enabled(v43, v44);
    v106[0] = a1;
    v112 = v37;
    if (v45)
    {
      v113 = a5;
      v46 = v37;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v131[0] = v48;
      *v47 = 136446466;
      sub_22CE4DD94(v30, v28, &qword_27D9EF0F0, &qword_22CE88EA0);
      v49 = type metadata accessor for AppTokenInfo(0);
      v50 = (*(*(v49 - 8) + 48))(v28, 1, v49);

      if (v50 == 1)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      sub_22CE42330(v30, &qword_27D9EF0F0, &qword_22CE88EA0);
      v51 = *(v28 + 2);
      v52 = *(v28 + 3);

      sub_22CE85600(v28, type metadata accessor for AppTokenInfo);
      v53 = sub_22CE44280(v51, v52, v131);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2082;
      *(v47 + 14) = sub_22CE44280(v114, v46, v131);
      _os_log_impl(&dword_22CE3F000, v43, v44, "Received app token with identifier: %{public}s for environment: %{public}s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C20D0](v48, -1, -1);
      MEMORY[0x2318C20D0](v47, -1, -1);

      a5 = v113;
    }

    else
    {

      sub_22CE42330(v30, &qword_27D9EF0F0, &qword_22CE88EA0);
    }

    v107 = v6;
    sub_22CE40D28(&v6[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore], &v133);
    v58 = v134;
    v59 = v135;
    __swift_project_boxed_opaque_existential_1(&v133, v134);
    sub_22CE4DD94(a5, v25, &qword_27D9EF0F0, &qword_22CE88EA0);
    v60 = type metadata accessor for AppTokenInfo(0);
    v61 = (*(v60 - 8) + 48);
    v113 = *v61;
    if (v113(v25, 1, v60) == 1)
    {
      __break(1u);
    }

    else
    {
      v62 = *(v25 + 2);
      v63 = *(v25 + 3);

      sub_22CE85600(v25, type metadata accessor for AppTokenInfo);
      (*(v59 + 88))(v131, v62, v63, v58, v59);

      v126 = v131[0];
      v127 = v131[1];
      v128 = v131[2];
      v129 = v131[3];
      v130 = v132;
      v64 = *(&v131[0] + 1);
      if (!*(&v131[0] + 1))
      {
        v121 = v61;
        __swift_destroy_boxed_opaque_existential_1(&v133);
        v70 = a5;
        v71 = v111;
        sub_22CE4DD94(a5, v111, &qword_27D9EF0F0, &qword_22CE88EA0);
        v72 = sub_22CE85C74();
        v73 = sub_22CE85F94();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v122 = v75;
          *v74 = 136446210;
          v76 = v108;
          sub_22CE4DD94(v71, v108, &qword_27D9EF0F0, &qword_22CE88EA0);
          v77 = v113;
          if (v113(v76, 1, v60) == 1)
          {
LABEL_35:
            __break(1u);
            return;
          }

          sub_22CE42330(v71, &qword_27D9EF0F0, &qword_22CE88EA0);
          v78 = *(v76 + 16);
          v79 = *(v76 + 24);

          sub_22CE85600(v76, type metadata accessor for AppTokenInfo);
          v80 = sub_22CE44280(v78, v79, &v122);

          *(v74 + 4) = v80;
          _os_log_impl(&dword_22CE3F000, v72, v73, "Subscription for token does not exist: %{public}s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v75);
          MEMORY[0x2318C20D0](v75, -1, -1);
          MEMORY[0x2318C20D0](v74, -1, -1);
        }

        else
        {

          sub_22CE42330(v71, &qword_27D9EF0F0, &qword_22CE88EA0);
          v77 = v113;
        }

        v104 = v110;
        sub_22CE4DD94(v70, v110, &qword_27D9EF0F0, &qword_22CE88EA0);
        if (v77(v104, 1, v60) != 1)
        {
          ObjectType = swift_getObjectType();

          (*(v109 + 32))(v104, ObjectType);
          v102 = type metadata accessor for AppTokenInfo;
          v103 = v104;
          goto LABEL_27;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v65 = v126;
      v66 = *(&v127 + 1);
      v67 = v127;
      v68 = v130 | (SBYTE2(v130) << 16);
      __swift_destroy_boxed_opaque_existential_1(&v133);
      v69 = a5;
      if (v68 < 0)
      {
        v111 = v67;
      }

      else
      {
        v122 = v65;
        v123 = v64;

        MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
        v111 = v122;
        v66 = v123;
      }

      v81 = v107;
      v82 = v121;
      v83 = v120;
      v84 = v113;
      sub_22CE4DD94(v69, v120, &qword_27D9EF0F0, &qword_22CE88EA0);
      if (v84(v83, 1, v60) != 1)
      {
        v86 = *v83;
        v85 = v83[1];

        sub_22CE85600(v83, type metadata accessor for AppTokenInfo);
        sub_22CE4DD94(v69, v82, &qword_27D9EF0F0, &qword_22CE88EA0);
        if (v84(v82, 1, v60) != 1)
        {
          sub_22CE42330(&v126, &qword_27D9EEE78, &qword_22CE88E90);
          v87 = v116;
          sub_22CE4DD94(v82 + *(v60 + 24), v116, &qword_27D9EEF40, &qword_22CE86C00);
          sub_22CE85600(v82, type metadata accessor for AppTokenInfo);
          v88 = *(v115 + 32);
          v89 = sub_22CE85974();
          v90 = v119;
          (*(*(v89 - 8) + 56))(v119 + v88, 1, 1, v89);
          v90[2] = v111;
          v90[3] = v66;
          v91 = v112;
          v90[4] = v114;
          v90[5] = v91;
          v90[6] = v86;
          v90[7] = v85;
          v92 = v117;
          v93 = v118;
          *v90 = v117;
          v90[1] = v93;
          sub_22CE41BF0(v92, v93);
          sub_22CE63E3C(v87, v90 + v88);
          v94 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore;
          sub_22CE40D28(v81 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, &v122);
          v95 = v124;
          v96 = v125;
          __swift_project_boxed_opaque_existential_1(&v122, v124);
          (*(v96 + 16))(v90, v95, v96);
          __swift_destroy_boxed_opaque_existential_1(&v122);
          sub_22CE40D28(v81 + v94, &v122);
          v97 = v124;
          v98 = v125;
          __swift_project_boxed_opaque_existential_1(&v122, v124);
          v99 = (*(v98 + 8))(v97, v98);
          __swift_destroy_boxed_opaque_existential_1(&v122);
          sub_22CE85C54();
          v100 = swift_allocObject();
          *(v100 + 16) = v81;
          *(v100 + 24) = v99;
          v101 = v81;
          sub_22CE85C44();
          sub_22CE85C34();

          v102 = type metadata accessor for PushToken;
          v103 = v90;
LABEL_27:
          sub_22CE85600(v103, v102);
          return;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v39 = sub_22CE7ACA8(a1);
  if (v40)
  {
    v37 = v40;
    v114 = v39;
    if (qword_281445360 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v54 = sub_22CE85C84();
  __swift_project_value_buffer(v54, qword_281445368);
  v55 = sub_22CE85C74();
  v56 = sub_22CE85F94();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_22CE3F000, v55, v56, "Connection for incoming push token is unknown", v57, 2u);
    MEMORY[0x2318C20D0](v57, -1, -1);
  }
}

uint64_t PushServer.connection(_:channelSubscriptionsFailedWith:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22CE85C54();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = v3;
  swift_unknownObjectRetain();

  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7FA94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_22CE85C54();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v10 = v4;
  swift_unknownObjectRetain();
  sub_22CE41BF0(a3, a4);
  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7FB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IncomingMessage(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22CE85C54();
  sub_22CE85598(a3, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IncomingMessage);
  v10 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a2;
  sub_22CE85530(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for IncomingMessage);
  v12 = v3;
  swift_unknownObjectRetain();
  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7FD1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for AppTokenInfo(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v18[1] = sub_22CE85C54();
  sub_22CE85598(a5, v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppTokenInfo);
  v14 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  sub_22CE85530(v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AppTokenInfo);
  v16 = v5;
  swift_unknownObjectRetain();
  sub_22CE41BF0(a3, a4);
  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7FED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22CE85C54();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = v3;
  swift_unknownObjectRetain();

  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7FFB4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v44[1] = a2;
  v45 = a1;
  v59 = type metadata accessor for PushEvent(0);
  MEMORY[0x28223BE20](v59);
  v57 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22CE85B54();
  MEMORY[0x28223BE20](v6 - 8);
  v64 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22CE85B14();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v62 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22CE85A34();
  v10 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v12 = (v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_22CE85A74();
  v13 = MEMORY[0x28223BE20](v58);
  v61 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 16);
  if (!v16)
  {
    return v45(v13);
  }

  v54 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__eventPublisher;
  v47 = *MEMORY[0x277CB9220];
  v56 = (v10 + 104);
  v46 = *MEMORY[0x277CB9218];
  v48 = *MEMORY[0x277CB9210];
  v53 = (v8 + 16);
  v52 = (v14 + 16);
  v51 = *MEMORY[0x277CB9320];
  v50 = (v8 + 8);
  v49 = (v14 + 8);
  v17 = a3 + 48;
  v55 = v12;
  while (1)
  {
    v18 = *(v17 - 16);
    v19 = *(v17 - 8);
    v21 = *v17;
    v20 = *(v17 + 8);
    v22 = *(v17 + 16);
    v23 = *(v17 + 24);
    v25 = *(v17 + 32);
    v24 = *(v17 + 40);
    v26 = *(v17 + 48) | (*(v17 + 50) << 16);
    v68 = v22;
    v69 = v16;
    v71 = v20;
    v72 = v18;
    v66 = v25;
    v67 = v23;
    v65 = v24;
    if ((v26 & 0x80000000) == 0)
    {
      *v12 = v21;
      v12[1] = v20;
      (*v56)(v12, v48, v63);

      sub_22CE449A4(v21, v20, v22, v23, v25, v24, v26);
      v27 = v22;
      v28 = v21;
      v29 = v21;
      v30 = v20;
LABEL_5:
      sub_22CE449A4(v29, v30, v27, v23, v25, v24, v26);

      goto LABEL_6;
    }

    if (v26)
    {
      if (v26 != 1)
      {
        (*v56)(v12, v47, v63);

        v27 = v22;
        v28 = v21;
        v29 = v21;
        v30 = v71;
        goto LABEL_5;
      }

      *v12 = v22;
      v12[1] = v23;
      v12[2] = v25;
      v12[3] = v24;
      (*v56)(v12, v46, v63);

      v41 = v22;
      v28 = v21;
      sub_22CE449A4(v21, v71, v41, v23, v25, v24, v26);

      sub_22CE62924(v41, v23, v25, v24, 1);
    }

    else
    {
      *v12 = v22;
      v12[1] = v23;
      (*v56)(v12, v48, v63);

      v42 = v22;
      v28 = v21;
      sub_22CE449A4(v21, v71, v42, v23, v25, v24, v26);

      sub_22CE62924(v42, v23, v25, v24, 0);
    }

LABEL_6:
    v31 = v61;
    sub_22CE85A54();
    sub_22CE85B44();
    v32 = v62;
    sub_22CE85B04();
    if ((v26 & 0x80000000) == 0)
    {
      break;
    }

    v33 = v59;

    v34 = v71;
    swift_bridgeObjectRetain_n();
    v35 = v57;
    sub_22CE85954();

    sub_22CE62988(v28, v34, v68, v67, v66, v65, v26);
    (*v53)(v35 + v33[8], v32, v70);
    type metadata accessor for PushEvent.EventType(0);
    swift_storeEnumTagMultiPayload();
    v36 = v33[9];
    v37 = v58;
    (*v52)(v35 + v36, v31, v58);
    v38 = sub_22CE85AF4();
    (*(*(v38 - 8) + 104))(v35 + v36, v51, v38);
    v39 = v33[10];
    v40 = sub_22CE85AB4();
    (*(*(v40 - 8) + 56))(v35 + v39, 1, 1, v40);
    *v35 = v28;
    v35[1] = v34;
    v35[2] = v28;
    v35[3] = v34;
    v35[4] = v72;
    v35[5] = v19;
    *(v35 + v33[11]) = 0;
    sub_22CE85CB4();
    sub_22CE85600(v35, type metadata accessor for PushEvent);
    (*v50)(v32, v70);
    v13 = (*v49)(v31, v37);
    v17 += 72;
    v16 = v69 - 1;
    v12 = v55;
    if (v69 == 1)
    {
      return v45(v13);
    }
  }

  v73 = v72;
  v74 = v19;

  result = MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
  __break(1u);
  return result;
}

void sub_22CE8071C(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v55 - v4;
  v6 = type metadata accessor for Budget(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = &v55 - v11;
  v12 = sub_22CE85D44();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[2];
  v75 = a1[3];
  v76 = *(a1 + 16);
  v17 = *a1;
  v73 = a1[1];
  v74 = v16;
  v72 = v17;
  v18 = *(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v15 = v18;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v19 = v18;
  LOBYTE(v18) = sub_22CE85D54();
  (*(v13 + 8))(v15, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (((v76 | (SBYTE2(v76) << 16)) & 0x80000000) == 0)
  {
    if (qword_281445360 == -1)
    {
LABEL_4:
      v20 = sub_22CE85C84();
      __swift_project_value_buffer(v20, qword_281445368);
      sub_22CE41214(&v72, &v67);
      v21 = sub_22CE85C74();
      v22 = sub_22CE85F94();
      sub_22CE632E8(&v72);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v66 = v24;
        *v23 = 136380675;
        v67 = v72;

        MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
        v25 = sub_22CE44280(v67, *(&v67 + 1), &v66);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_22CE3F000, v21, v22, "Cannot request frequent updates for push-to-start subscription: %{private}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x2318C20D0](v24, -1, -1);
        MEMORY[0x2318C20D0](v23, -1, -1);
      }

      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_4;
  }

  v62 = v76 | (SBYTE2(v76) << 16);
  v57 = v10;
  v26 = v73;
  v60 = *(&v74 + 1);
  v61 = v74;
  v58 = *(&v75 + 1);
  v59 = v75;
  v64 = v1;
  sub_22CE83C40(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer, &v67);
  v28 = *(&v68 + 1);
  v27 = v69;
  __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
  v29 = *(v27 + 48);

  v63 = v26;
  v29(v26, *(&v26 + 1), v28, v27);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_22CE42330(v5, &qword_27D9EEBA0, &qword_22CE86D20);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v30 = sub_22CE85C84();
    __swift_project_value_buffer(v30, qword_281445368);

    v31 = v61;
    v32 = v60;
    v33 = v59;
    v34 = v58;
    v35 = v62;
    sub_22CE62924(v61, v60, v59, v58, v62);
    v36 = sub_22CE85C74();
    v37 = sub_22CE85FA4();
    v38 = v63;
    sub_22CE62988(v63, *(&v26 + 1), v31, v32, v33, v34, v35);
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v67 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_22CE44280(v38, *(&v26 + 1), &v67);
      _os_log_impl(&dword_22CE3F000, v36, v37, "Requesting frequent updates permission for activity exceeding reduced budget %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x2318C20D0](v40, -1, -1);
      MEMORY[0x2318C20D0](v39, -1, -1);
    }
  }

  else
  {
    v56 = v6;
    v41 = v65;
    sub_22CE85530(v5, v65, type metadata accessor for Budget);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v42 = sub_22CE85C84();
    __swift_project_value_buffer(v42, qword_281445368);
    v43 = v57;
    sub_22CE85598(v41, v57, type metadata accessor for Budget);

    v44 = v61;
    v45 = v60;
    v46 = v59;
    v47 = v58;
    v48 = v62;
    sub_22CE62924(v61, v60, v59, v58, v62);
    v49 = sub_22CE85C74();
    v50 = sub_22CE85FA4();
    v51 = v63;
    sub_22CE62988(v63, *(&v26 + 1), v44, v45, v46, v47, v48);
    if (os_log_type_enabled(v49, v50))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v67 = v53;
      *v52 = 136446466;
      *(v52 + 4) = sub_22CE44280(v51, *(&v26 + 1), &v67);
      *(v52 + 12) = 2050;
      v54 = *(v43 + *(v56 + 20));
      sub_22CE85600(v43, type metadata accessor for Budget);
      *(v52 + 14) = v54;
      _os_log_impl(&dword_22CE3F000, v49, v50, "Requesting frequent updates permission for activity exceeding reduced budget %{public}s; remaining budget: %{public}ld", v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x2318C20D0](v53, -1, -1);
      MEMORY[0x2318C20D0](v52, -1, -1);
    }

    else
    {
      sub_22CE85600(v43, type metadata accessor for Budget);
    }

    sub_22CE85600(v65, type metadata accessor for Budget);
  }

  v69 = v74;
  v70 = v75;
  v71 = v76;
  v67 = v72;
  v68 = v73;
  sub_22CE85CB4();
}

uint64_t sub_22CE80FA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_22CE85A34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22CE85A74();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v23 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v22[0] = *a1;
  v22[1] = v9;
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v16 = *(a1 + 32) | (*(a1 + 66) << 16);
  if ((v16 & 0x80000000) != 0)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        *v6 = v12;
        v6[1] = v13;
        v6[2] = v14;
        v6[3] = v15;
        (*(v4 + 104))(v6, *MEMORY[0x277CB9218], v3);
        sub_22CE62924(v12, v13, v14, v15, 1);
      }

      else
      {
        (*(v4 + 104))(v6, *MEMORY[0x277CB9220], v3);
      }
    }

    else
    {
      *v6 = v12;
      v6[1] = v13;
      (*(v4 + 104))(v6, *MEMORY[0x277CB9210], v3);
      sub_22CE62924(v12, v13, v14, v15, 0);
    }
  }

  else
  {
    *v6 = v11;
    v6[1] = v10;
    (*(v4 + 104))(v6, *MEMORY[0x277CB9210], v3);
    sub_22CE449A4(v11, v10, v12, v13, v14, v15, v16);
  }

  v17 = v23;
  sub_22CE85A54();

  sub_22CE62988(v11, v10, v12, v13, v14, v15, v16);
  v18 = v26;
  (*(v24 + 32))(v26, v17, v25);
  v19 = *MEMORY[0x277CB9320];
  v20 = sub_22CE85AF4();
  return (*(*(v20 - 8) + 104))(v18, v19, v20);
}

uint64_t sub_22CE812C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v76 = a2;
  v85 = sub_22CE85B94();
  v75 = *(v85 - 8);
  v3 = MEMORY[0x28223BE20](v85);
  v73 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v83 = &v68 - v5;
  v81 = sub_22CE85A64();
  v74 = *(v81 - 1);
  MEMORY[0x28223BE20](v81);
  v80 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22CE85AE4();
  v7 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v87 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22CE85B54();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_22CE85974();
  v78 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v68 - v20;
  v22 = type metadata accessor for IncomingMessage.EventType(0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1[1];
  v84 = *a1;
  v82 = v25;
  v26 = type metadata accessor for IncomingMessage(0);
  sub_22CE85598(v79 + *(v26 + 40), v24, type metadata accessor for IncomingMessage.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = *v24;
      v71 = v24[1];
      v72 = v28;
      v29 = v24[2];
      v69 = v24[3];
      v70 = v29;
      v30 = v24[4];
      v31 = *(v30 + 16);
      v32 = MEMORY[0x277D84F90];
      v33 = v76;
      v68 = v30;
      if (v31)
      {
        v88 = MEMORY[0x277D84F90];
        sub_22CE4BC48(0, v31, 0);
        v32 = v88;
        v78 = v74 + 8;
        v79 = (v75 + 8);
        v34 = v7 + 32;
        v35 = (v30 + 48);
        v77 = v7;
        do
        {
          v37 = *(v35 - 2);
          v36 = *(v35 - 1);
          if (*v35)
          {
            if (*v35 == 1)
            {

              sub_22CE85AD4();
              sub_22CE52058(v37, v36, 1u);
            }

            else
            {
              v42 = v80;
              sub_22CE85A44();

              v43 = v83;
              sub_22CE85B74();
              sub_22CE85B84();
              (*v79)(v43, v85);
              sub_22CE85AC4();

              (*v78)(v42, v81);
            }
          }

          else
          {

            v38 = v34;
            v39 = v80;
            sub_22CE85A24();

            v40 = v83;
            sub_22CE85B74();
            sub_22CE85B84();
            (*v79)(v40, v85);
            sub_22CE85AC4();

            sub_22CE52058(v37, v36, 0);
            v41 = v39;
            v34 = v38;
            v7 = v77;
            (*v78)(v41, v81);
          }

          v88 = v32;
          v45 = *(v32 + 16);
          v44 = *(v32 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_22CE4BC48((v44 > 1), v45 + 1, 1);
            v32 = v88;
          }

          v35 += 24;
          *(v32 + 16) = v45 + 1;
          (*(v7 + 32))(v32 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v45, v87, v86);
          --v31;
        }

        while (v31);
        v33 = v76;
      }

      v47 = v75;
      if (!*(v32 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB70, &qword_22CE86CF0);
        v87 = *(v7 + 72);
        v48 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_22CE88D00;
        v49 = v32 + v48;
        v50 = (v32 + v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF120, &qword_22CE88EE0) + 48));
        sub_22CE85A44();

        v51 = v83;
        sub_22CE85B74();
        v52 = sub_22CE85B84();
        v54 = v53;
        v81 = *(v47 + 8);
        v81(v51, v85);
        *v50 = v52;
        v50[1] = v54;
        v55 = *MEMORY[0x277CB9330];
        v83 = *(v7 + 104);
        v56 = v86;
        (v83)(v49, v55, v86);
        v57 = &v87[v49];

        v58 = v73;
        sub_22CE85B74();
        v59 = sub_22CE85B84();
        v61 = v60;
        v81(v58, v85);
        *v57 = v59;
        v57[1] = v61;
        (v83)(v57, *MEMORY[0x277CB9338], v56);
      }

      v62 = v71;

      v64 = v69;
      v63 = v70;
      sub_22CE41BF0(v70, v69);

      sub_22CE4E0DC(v63, v64);

      *v33 = v72;
      v33[1] = v62;
      v33[2] = v63;
      v33[3] = v64;
      v33[4] = v32;
      type metadata accessor for PushEvent.EventType(0);
    }

    else
    {
      type metadata accessor for PushEvent.EventType(0);
    }
  }

  else
  {
    sub_22CE44874(v24, v21, &qword_27D9EEF40, &qword_22CE86C00);
    sub_22CE4DD94(v21, v19, &qword_27D9EEF40, &qword_22CE86C00);
    v46 = v78;
    if ((*(v78 + 48))(v19, 1, v10) == 1)
    {
      sub_22CE42330(v19, &qword_27D9EEF40, &qword_22CE86C00);
      sub_22CE85B34();
      sub_22CE85B04();
      sub_22CE42330(v21, &qword_27D9EEF40, &qword_22CE86C00);
      type metadata accessor for PushEvent.EventType(0);
    }

    else
    {
      (*(v46 + 32))(v15, v19, v10);
      sub_22CE85954();
      sub_22CE426A4(&qword_27D9EF128, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v65 = sub_22CE85DD4();
      v66 = *(v46 + 8);
      v66(v13, v10);
      if (v65)
      {
        sub_22CE85B24();
      }

      else
      {
        sub_22CE85B44();
      }

      sub_22CE85B04();
      v66(v15, v10);
      sub_22CE42330(v21, &qword_27D9EEF40, &qword_22CE86C00);
      type metadata accessor for PushEvent.EventType(0);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22CE81C94@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = sub_22CE85BC4();
  v68 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v64 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v65 = v54 - v5;
  v6 = sub_22CE85854();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v62 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = v54 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v70 = v54 - v12;
  MEMORY[0x28223BE20](v11);
  v73 = v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0F8, &qword_22CE88EA8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v63 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v54 - v17;
  v19 = (v1 + *(type metadata accessor for IncomingMessage(0) + 44));
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v69 = v19[3];
  v23 = v19[4];
  v24 = v19[5];
  v25 = v19[6];
  v26 = v19[7];
  v27 = v19[8];
  v71 = v19[9];
  v72 = v27;
  v29 = v19[10];
  v28 = v19[11];
  v59 = v29;
  v60 = v28;
  v30 = sub_22CE85BE4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  if (v21 == 1)
  {
    v33 = v74;

    return v32(v33, 1, 1, v30);
  }

  else
  {
    v57 = v2;
    v58 = v18;
    v56 = v30;
    v55 = v32;
    v54[1] = v31 + 56;
    (v32)(v18, 1, 1);
    v36 = *(v1 + 16);
    v35 = *(v1 + 24);
    type metadata accessor for StringLocalizer();
    swift_initStackObject();

    v37 = sub_22CE64974(v36, v35);
    if (v21)
    {
    }

    else
    {
      v22 = 0;
      v20 = 0;
    }

    sub_22CE64CE8(v20, v21, v22, v25, v26);
    v39 = v38;

    v40 = v74;
    if (v23)
    {

      v41 = v69;
    }

    else
    {
      v24 = 0;
      v41 = 0;
    }

    sub_22CE64CE8(v41, v23, v24, v72, v71);
    v43 = v42;

    if (v39 && (v72 = v37, v43))
    {
      sub_22CE85844();
      sub_22CE85844();
      if (v60)
      {

        v44 = v65;
        sub_22CE85BA4();
      }

      else
      {
        v44 = v65;
        sub_22CE85BB4();
      }

      v46 = v57;
      v48 = v66;
      v47 = v67;
      v49 = *(v66 + 16);
      v49(v61, v73, v67);
      v50 = v70;
      v49(v62, v70, v47);
      v51 = v68;
      (*(v68 + 16))(v64, v44, v46);
      v52 = v63;
      sub_22CE85BD4();

      (*(v51 + 8))(v44, v46);
      v53 = *(v48 + 8);
      v53(v50, v47);
      v53(v73, v47);
      v45 = v58;
      sub_22CE42330(v58, &qword_27D9EF0F8, &qword_22CE88EA8);
      v55(v52, 0, 1, v56);
      sub_22CE44874(v52, v45, &qword_27D9EF0F8, &qword_22CE88EA8);
      v40 = v74;
    }

    else
    {

      v45 = v58;
    }

    return sub_22CE44874(v45, v40, &qword_27D9EF0F8, &qword_22CE88EA8);
  }
}

uint64_t sub_22CE8228C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22CE85804();
    if (v10)
    {
      v11 = sub_22CE85824();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22CE85814();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22CE85804();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22CE85824();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22CE85814();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22CE824BC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 56) + 8 * (v9 | (v4 << 6)));

    if (!v12)
    {
      return 1;
    }

    result = sub_22CE4DE0C();
    if ((v13 & 1) == 0 || (v14 = *(*(a2 + 56) + 8 * result), v15 = *(v14 + 16), v15 != *(v12 + 16)))
    {
LABEL_29:

      return 0;
    }

    if (v15)
    {
      v16 = v14 == v12;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = (v14 + 40);
      v18 = (v12 + 40);
      while (v15)
      {
        result = *(v17 - 1);
        if (result != *(v18 - 1) || *v17 != *v18)
        {
          result = sub_22CE86194();
          if ((result & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v17 += 2;
        v18 += 2;
        if (!--v15)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_6:
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_22CE82670(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22CE44280(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_22CE826CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_22CE82718(a1, a2);
  sub_22CE82848(&unk_284017400);
  return v3;
}

void *sub_22CE82718(uint64_t a1, unint64_t a2)
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

  v6 = sub_22CE82934(v5, 0);
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

  result = sub_22CE86114();
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
        v10 = sub_22CE85EC4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22CE82934(v10, 0);
        result = sub_22CE860B4();
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

uint64_t sub_22CE82848(uint64_t result)
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

  result = sub_22CE829A8(result, v11, 1, v3);
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

void *sub_22CE82934(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0E8, &qword_22CE88E98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22CE829A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0E8, &qword_22CE88E98);
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

uint64_t sub_22CE82A9C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22CE86204();
  sub_22CE85E54();
  v8 = sub_22CE86244();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22CE86194() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22CE83218(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22CE82C08(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22CE86204();
  sub_22CE85E54();
  v8 = sub_22CE86244();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22CE86194() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22CE83398(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22CE82D58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF148, qword_22CE88F10);
  result = sub_22CE860A4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22CE82FB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF118, &unk_22CE88ED0);
  result = sub_22CE860A4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22CE83218(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22CE82D58(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22CE83518();
      goto LABEL_16;
    }

    sub_22CE837D0(v8 + 1);
  }

  v10 = *v4;
  sub_22CE86204();
  sub_22CE85E54();
  result = sub_22CE86244();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22CE86194();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22CE861A4();
  __break(1u);
  return result;
}

uint64_t sub_22CE83398(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22CE82FB8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22CE83674();
      goto LABEL_16;
    }

    sub_22CE83A08(v8 + 1);
  }

  v10 = *v4;
  sub_22CE86204();
  sub_22CE85E54();
  result = sub_22CE86244();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22CE86194();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22CE861A4();
  __break(1u);
  return result;
}

void *sub_22CE83518()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF148, qword_22CE88F10);
  v2 = *v0;
  v3 = sub_22CE86094();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_22CE83674()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF118, &unk_22CE88ED0);
  v2 = *v0;
  v3 = sub_22CE86094();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

uint64_t sub_22CE837D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF148, qword_22CE88F10);
  result = sub_22CE860A4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22CE86204();

      sub_22CE85E54();
      result = sub_22CE86244();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22CE83A08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF118, &unk_22CE88ED0);
  result = sub_22CE860A4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22CE86204();

      sub_22CE85E54();
      result = sub_22CE86244();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22CE83C40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_6Tm(uint64_t a1)
{

  sub_22CE62988(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88) | (*(v1 + 90) << 16));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_22CE83DC0()
{
  result = qword_27D9EF0E0;
  if (!qword_27D9EF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EF0E0);
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_30Tm()
{
  v1 = (type metadata accessor for AppTokenInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);

  swift_unknownObjectRelease();
  sub_22CE4E0DC(*(v0 + 40), *(v0 + 48));

  v5 = v1[8];
  v6 = sub_22CE85974();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CE8429C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for AppTokenInfo(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_22CE7EA94(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_27Tm()
{
  v1 = type metadata accessor for IncomingMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v16 = *(*(v1 - 1) + 64);

  swift_unknownObjectRelease();
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  if (v5 >> 60 != 15)
  {
    sub_22CE4E0DC(*v4, v5);
  }

  v6 = v1[8];
  v7 = sub_22CE85974();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  sub_22CE4E0DC(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v4 + v1[10];
  type metadata accessor for IncomingMessage.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    sub_22CE4E0DC(*(v10 + 2), *(v10 + 3));
  }

  else if (!EnumCaseMultiPayload && !(*(v8 + 48))(v10, 1, v7))
  {
    v9(v10, v7);
  }

  v12 = v4 + v1[11];
  v13 = *(v12 + 1);
  if (v13)
  {
    if (v13 == 1)
    {
      goto LABEL_14;
    }
  }

  if (*(v12 + 4))
  {
  }

LABEL_14:
  v14 = v1[12];
  if (!(*(v8 + 48))(v4 + v14, 1, v7))
  {
    v9(v4 + v14, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v16, v2 | 7);
}

uint64_t sub_22CE84590(uint64_t (*a1)(void))
{
  v3 = *(type metadata accessor for IncomingMessage(0) - 8);
  sub_22CE7BADC(*(v1 + 24), *(v1 + 32), v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));
  return a1();
}

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();
  sub_22CE4E0DC(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22CE846D0(uint64_t a1)
{
  v3 = sub_22CE85D44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = v1;
  v7 = *&v1[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_22CE85D54();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v95 = *(a1 + 16);
    if (v95)
    {
      v11 = 0;
      v94 = a1 + 32;
      v99 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore;
      *&v10 = 136446210;
      v93 = v10;
      v92 = MEMORY[0x277D84F90];
      while (1)
      {
        v101 = v11;
        v19 = (v94 + 40 * v11);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v104 = *v19;
        v105 = v21;
        v98 = *(v19 + 32);
        sub_22CE40D28(v100 + v99, &v106);
        v23 = *(&v107 + 1);
        v24 = v108;
        __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
        v25 = *(v24 + 24);

        v103 = v22;

        result = v25(v23, v24);
        v26 = result;
        v27 = *(result + 16);
        if (!v27)
        {
          v102 = MEMORY[0x277D84F90];
          goto LABEL_28;
        }

        v28 = 0;
        v29 = result + 32;
        v96 = v27 - 1;
        v102 = MEMORY[0x277D84F90];
        v97 = result + 32;
        do
        {
          v30 = (v29 + 72 * v28);
          v31 = v28;
          while (1)
          {
            if (v31 >= *(v26 + 16))
            {
              __break(1u);
              goto LABEL_69;
            }

            v32 = v30[1];
            v33 = v30[2];
            v34 = *(v30 + 16);
            v119 = v30[3];
            v35 = *v30;
            v120 = v34;
            v117 = v32;
            v118 = v33;
            v116 = v35;
            if ((v34 & 0x800000) != 0 && v34 == 1)
            {
              break;
            }

LABEL_13:
            ++v31;
            v30 = (v30 + 72);
            if (v27 == v31)
            {
              goto LABEL_28;
            }
          }

          v36 = v119;
          v37 = v118;
          sub_22CE41214(&v116, v114);
          sub_22CE62924(v37, *(&v37 + 1), v36, *(&v36 + 1), 1);

          if (v36 == __PAIR128__(v103, v105))
          {
          }

          else
          {
            v38 = sub_22CE86194();

            if ((v38 & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          if (v116 != __PAIR128__(v20, v104) && (sub_22CE86194() & 1) == 0)
          {
LABEL_12:
            result = sub_22CE632E8(&v116);
            goto LABEL_13;
          }

          v39 = v102;
          result = swift_isUniquelyReferenced_nonNull_native();
          v111[0] = v39;
          if ((result & 1) == 0)
          {
            result = sub_22CE4BBC8(0, *(v39 + 16) + 1, 1);
            v39 = v111[0];
          }

          v41 = *(v39 + 16);
          v40 = *(v39 + 24);
          if (v41 >= v40 >> 1)
          {
            result = sub_22CE4BBC8((v40 > 1), v41 + 1, 1);
            v39 = v111[0];
          }

          v28 = v31 + 1;
          *(v39 + 16) = v41 + 1;
          v102 = v39;
          v42 = v39 + 72 * v41;
          *(v42 + 32) = v116;
          v43 = v117;
          v44 = v118;
          v45 = v119;
          *(v42 + 96) = v120;
          *(v42 + 64) = v44;
          *(v42 + 80) = v45;
          *(v42 + 48) = v43;
          v29 = v97;
        }

        while (v96 != v31);
LABEL_28:

        __swift_destroy_boxed_opaque_existential_1(&v106);
        v46 = *(v102 + 16);
        if (!v46)
        {

          if (qword_281445360 != -1)
          {
            swift_once();
          }

          v53 = sub_22CE85C84();
          __swift_project_value_buffer(v53, qword_281445368);

          v54 = v103;

          v51 = sub_22CE85C74();
          v55 = sub_22CE85F94();

          if (os_log_type_enabled(v51, v55))
          {
            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            *&v116 = v13;
            *v12 = v93;

            v56 = sub_22CE44280(v105, v54, &v116);

            *(v12 + 4) = v56;
            v15 = v55;
            v16 = v51;
            v17 = "Cannot find subscription for failed channel: %{public}s ";
            goto LABEL_5;
          }

          goto LABEL_38;
        }

        v47 = *(v102 + 48);
        v48 = *(v102 + 80);
        v118 = *(v102 + 64);
        v119 = v48;
        v120 = *(v102 + 96);
        v116 = *(v102 + 32);
        v117 = v47;
        if ((v120 & 0x800000) != 0)
        {
          v57 = v117;
          if (v98)
          {
            if (v98 == 1)
            {
              sub_22CE41214(&v116, v114);

              if (qword_281445360 != -1)
              {
                swift_once();
              }

              v58 = sub_22CE85C84();
              __swift_project_value_buffer(v58, qword_281445368);

              v59 = sub_22CE85C74();
              v60 = sub_22CE85F94();

              if (os_log_type_enabled(v59, v60))
              {
                v61 = swift_slowAlloc();
                v62 = swift_slowAlloc();
                *&v114[0] = v62;
                *v61 = v93;
                v63 = sub_22CE44280(v57, *(&v57 + 1), v114);

                *(v61 + 4) = v63;
                v64 = v60;
                v65 = v59;
                v66 = "Subscription for activity %{public}s failed with a bad channel ID";
                goto LABEL_58;
              }

LABEL_59:

LABEL_60:

              sub_22CE40D28(v100 + v99, v111);
              v78 = v112;
              v79 = v113;
              __swift_project_boxed_opaque_existential_1(v111, v112);
              v80 = *(v79 + 56);

              v80(&v106, v57, *(&v57 + 1), v78, v79);

              v114[2] = v108;
              v114[3] = v109;
              v115 = v110;
              v114[0] = v106;
              v114[1] = v107;
              sub_22CE42330(v114, &qword_27D9EEE78, &qword_22CE88E90);
              __swift_destroy_boxed_opaque_existential_1(v111);
              v81 = v92;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v81 = sub_22CE60818(0, *(v81 + 2) + 1, 1, v81);
              }

              v18 = v101;
              v83 = *(v81 + 2);
              v82 = *(v81 + 3);
              if (v83 >= v82 >> 1)
              {
                v81 = sub_22CE60818((v82 > 1), v83 + 1, 1, v81);
              }

              *(v81 + 2) = v83 + 1;
              v92 = v81;
              v84 = &v81[72 * v83];
              *(v84 + 2) = v116;
              v85 = v117;
              v86 = v118;
              v87 = v119;
              *(v84 + 24) = v120;
              *(v84 + 4) = v86;
              *(v84 + 5) = v87;
              *(v84 + 3) = v85;
              goto LABEL_7;
            }

            sub_22CE41214(&v116, v114);

            if (qword_281445360 != -1)
            {
              swift_once();
            }

            v72 = sub_22CE85C84();
            __swift_project_value_buffer(v72, qword_281445368);

            v59 = sub_22CE85C74();
            v73 = sub_22CE85F94();

            if (!os_log_type_enabled(v59, v73))
            {
              goto LABEL_59;
            }

            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *&v114[0] = v62;
            *v61 = v93;
            v74 = sub_22CE44280(v57, *(&v57 + 1), v114);

            *(v61 + 4) = v74;
            v64 = v73;
            v65 = v59;
            v66 = "Subscription for activity %{public}s failed for an unknown reason";
LABEL_58:
            _os_log_impl(&dword_22CE3F000, v65, v64, v66, v61, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v62);
            MEMORY[0x2318C20D0](v62, -1, -1);
            MEMORY[0x2318C20D0](v61, -1, -1);
            goto LABEL_60;
          }

          sub_22CE41214(&v116, v114);

          if (v46 != 1)
          {
            if (qword_281445360 != -1)
            {
              swift_once();
            }

            v75 = sub_22CE85C84();
            __swift_project_value_buffer(v75, qword_281445368);

            v59 = sub_22CE85C74();
            v76 = sub_22CE85F94();

            if (!os_log_type_enabled(v59, v76))
            {
              goto LABEL_59;
            }

            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *&v114[0] = v62;
            *v61 = v93;
            v77 = sub_22CE44280(v57, *(&v57 + 1), v114);

            *(v61 + 4) = v77;
            v64 = v76;
            v65 = v59;
            v66 = "Subscription for activity %{public}s failed as it is a duplicate";
            goto LABEL_58;
          }

          sub_22CE632E8(&v116);
          if (qword_281445360 != -1)
          {
            swift_once();
          }

          v67 = sub_22CE85C84();
          __swift_project_value_buffer(v67, qword_281445368);

          v51 = sub_22CE85C74();
          v68 = sub_22CE85FA4();

          if (os_log_type_enabled(v51, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *&v114[0] = v70;
            *v69 = v93;
            v71 = sub_22CE44280(v57, *(&v57 + 1), v114);

            *(v69 + 4) = v71;
            _os_log_impl(&dword_22CE3F000, v51, v68, "Subscription for activity %{public}s already exists; we will reuse it", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v70);
            MEMORY[0x2318C20D0](v70, -1, -1);
            MEMORY[0x2318C20D0](v69, -1, -1);
          }

          else
          {
          }

LABEL_38:

          goto LABEL_6;
        }

        if (qword_281445360 != -1)
        {
          swift_once();
        }

        v49 = sub_22CE85C84();
        __swift_project_value_buffer(v49, qword_281445368);

        v50 = v103;

        v51 = sub_22CE85C74();
        v52 = sub_22CE85F94();

        if (!os_log_type_enabled(v51, v52))
        {
          goto LABEL_38;
        }

        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v114[0] = v13;
        *v12 = v93;

        v14 = sub_22CE44280(v105, v50, v114);

        *(v12 + 4) = v14;
        v15 = v52;
        v16 = v51;
        v17 = "Subscription has no activityIdentifier for failed channel: %{public}s ";
LABEL_5:
        _os_log_impl(&dword_22CE3F000, v16, v15, v17, v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x2318C20D0](v13, -1, -1);
        MEMORY[0x2318C20D0](v12, -1, -1);
LABEL_6:

        v18 = v101;
LABEL_7:
        v11 = v18 + 1;
        if (v11 == v95)
        {
          goto LABEL_67;
        }
      }
    }

    v92 = MEMORY[0x277D84F90];
LABEL_67:
    sub_22CE85C54();
    v88 = v100;
    v89 = swift_allocObject();
    *(v89 + 16) = v92;
    *(v89 + 24) = v88;
    v90 = v88;
    sub_22CE85C44();
    sub_22CE85C34();
  }

  else
  {
LABEL_69:
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE853F4(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PushEvent(0);
  v2 = sub_22CE85CB4();
  return a1(v2);
}

uint64_t sub_22CE85530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE85598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE85600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CE85660(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22CE86194() & 1;
  }
}