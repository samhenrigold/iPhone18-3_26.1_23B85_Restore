uint64_t sub_26D260B40(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_26D260BA8);
}

uint64_t sub_26D260BA8()
{
  v1 = *(v0 + 16);
  v1[2](v1, 1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26D260C44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D260C84()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26D25BA88;

  return sub_26D260B40(v2);
}

uint64_t sub_26D260D30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26D25D8A8;

  return v6();
}

uint64_t sub_26D260E1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26D25BA88;

  return v7();
}

uint64_t sub_26D260F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59B0, &qword_26D263D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_26D2611C0(a3, v23 - v10);
  v12 = sub_26D26265C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26D261230(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_26D26264C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_26D26261C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_26D26254C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_26D261230(a3);

    return v21;
  }

LABEL_8:
  sub_26D261230(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_26D2611C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59B0, &qword_26D263D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D261230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59B0, &qword_26D263D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D261298(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26D261390;

  return v6(a1);
}

uint64_t sub_26D261390()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26D261488()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D2614C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26D25D8A8;

  return sub_26D261298(a1, v4);
}

uint64_t sub_26D261578(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26D25BA88;

  return sub_26D261298(a1, v4);
}

TelephonyKit::XPCDaemonState_optional __swiftcall XPCDaemonState.init(rawValue:)(TelephonyKit::XPCDaemonState_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= TelephonyKit_XPCDaemonState_unknownDefault)
  {
    value = TelephonyKit_XPCDaemonState_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

unint64_t sub_26D26165C()
{
  result = qword_2804F5A18;
  if (!qword_2804F5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5A18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCDaemonState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCDaemonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26D261808()
{
  v0 = sub_26D26249C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26D26247C();
  __swift_allocate_value_buffer(v4, qword_2804F5A20);
  __swift_project_value_buffer(v4, qword_2804F5A20);
  v5 = sub_26D26273C();
  MEMORY[0x26D6B79B0](v5);
  sub_26D26248C();
  (*(v1 + 8))(v3, v0);
  return sub_26D26246C();
}

uint64_t sub_26D261958()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void *sub_26D2619D0()
{
  if ((sub_26D261A74() & 1) == 0)
  {
    return 0;
  }

  result = *(v0 + 16);
  if (result)
  {
    v2 = [result remoteObjectProxy];
    sub_26D2626DC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F59D0, &qword_26D263E78);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26D261A74()
{
  if (*(v0 + 16))
  {
    return 1;
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_26D2624FC();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  v4 = *(v0 + 16);
  *(v0 + 16) = v3;
  v5 = v3;

  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v6 interfaceWithProtocol_];
    v8 = [v6 interfaceWithProtocol_];
    [v7 setInterface:v8 forSelector:sel_runWithClient_scheme_ argumentIndex:0 ofReply:0];

    v9 = [v6 interfaceWithProtocol_];
    [v7 setInterface:v9 forSelector:sel_addWithClient_ argumentIndex:0 ofReply:0];

    [v5 setRemoteObjectInterface_];
    v17 = sub_26D261EA0;
    v18 = v0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_26D261D38;
    v16 = &block_descriptor_0;
    v10 = _Block_copy(&v13);

    [v5 setInvalidationHandler_];
    _Block_release(v10);
    v17 = sub_26D261EBC;
    v18 = v0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_26D261D38;
    v16 = &block_descriptor_8;
    v11 = _Block_copy(&v13);

    [v5 setInterruptionHandler_];
    _Block_release(v11);
    [v5 resume];

    return 1;
  }

  return 0;
}

uint64_t sub_26D261D38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_26D261D94(const char *a1)
{
  v3 = v1;
  if (qword_2804F5740 != -1)
  {
    swift_once();
  }

  v4 = sub_26D26247C();
  __swift_project_value_buffer(v4, qword_2804F5A20);
  v5 = sub_26D26245C();
  v6 = sub_26D26267C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26D24E000, v5, v6, a1, v7, 2u);
    MEMORY[0x26D6B8170](v7, -1, -1);
  }

  [*(v3 + 16) invalidate];
  v8 = *(v3 + 16);
  *(v3 + 16) = 0;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

TelephonyKit::XPCDaemonRole_optional __swiftcall XPCDaemonRole.init(rawValue:)(TelephonyKit::XPCDaemonRole_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= TelephonyKit_XPCDaemonRole_unknownDefault)
  {
    value = TelephonyKit_XPCDaemonRole_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

TelephonyKit::XPCScheme_optional __swiftcall XPCScheme.init(rawValue:)(TelephonyKit::XPCScheme_optional rawValue)
{
  if (rawValue.value == TelephonyKit_XPCScheme_esim)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == TelephonyKit_XPCScheme_migration)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_26D261F1C()
{
  result = qword_2804F5A38;
  if (!qword_2804F5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5A38);
  }

  return result;
}

unint64_t sub_26D261F74()
{
  result = qword_2804F5A40;
  if (!qword_2804F5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F5A40);
  }

  return result;
}

_BYTE *sub_26D261FC8@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCDaemonRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCDaemonRole(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id static XPCInterface.interface()()
{
  v0 = objc_opt_self();
  v1 = [v0 interfaceWithProtocol_];
  v2 = [v0 interfaceWithProtocol_];
  [v1 setInterface:v2 forSelector:sel_runWithClient_scheme_ argumentIndex:0 ofReply:0];

  v3 = [v0 interfaceWithProtocol_];
  [v1 setInterface:v3 forSelector:sel_addWithClient_ argumentIndex:0 ofReply:0];

  return v1;
}