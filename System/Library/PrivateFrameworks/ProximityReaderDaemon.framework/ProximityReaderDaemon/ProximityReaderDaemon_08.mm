unint64_t sub_2612FEC0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2613A228C();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2612FEC58(uint64_t a1, uint64_t a2)
{
  v2 = sub_2613A228C();

  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2612FECA8()
{
  result = qword_27FEA0330;
  if (!qword_27FEA0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0330);
  }

  return result;
}

unint64_t sub_2612FED00()
{
  result = qword_27FEA0338;
  if (!qword_27FEA0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0338);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafMonitorEventBuilder.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafMonitorEventBuilder.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafMonitorEventBuilder.EventField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafMonitorEventBuilder.EventField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2612FF018@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_2612FF028()
{
  sub_2613A256C();
  sub_2613A19DC();
  sub_2613A19DC();
  sub_2613A258C();
  return sub_2613A25CC();
}

uint64_t sub_2612FF0A8(uint64_t a1)
{
  sub_2613A19DC();
  sub_2613A19DC();
  return sub_2613A258C();
}

uint64_t sub_2612FF0FC(uint64_t a1)
{
  sub_2613A256C();
  sub_2613A19DC();
  sub_2613A19DC();
  sub_2613A258C();
  return sub_2613A25CC();
}

unint64_t sub_2612FF17C()
{
  result = qword_27FEA0348;
  if (!qword_27FEA0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0348);
  }

  return result;
}

uint64_t sub_2612FF1D0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_2613A241C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_2613A241C()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2612FF284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2612FF2CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2612FF320()
{
  sub_2612F9F2C();

  v0 = sub_2612F9F7C();

  MEMORY[0x266700B50](v1);
  return v0;
}

uint64_t sub_2612FF364()
{
  sub_2612F9F2C();

  v0 = sub_2612F9F7C();

  MEMORY[0x266700B50](v1);
  return v0;
}

uint64_t sub_2612FF3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002613BC400 == a2 || (sub_2613A241C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002613BC420 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2613A241C();

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

uint64_t sub_2612FF4E0(uint64_t a1)
{
  v2 = sub_2612FF6E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612FF51C(uint64_t a1)
{
  v2 = sub_2612FF6E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612FF558(void *a1, uint64_t a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0350, &qword_2613ABB40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FF6E0();
  sub_2613A262C();
  v12 = 0;
  sub_2613A23DC();
  if (!v3)
  {
    v11 = 1;
    sub_2613A23AC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2612FF6E0()
{
  result = qword_27FEACD60[0];
  if (!qword_27FEACD60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEACD60);
  }

  return result;
}

void sub_2612FF734(uint64_t a1@<X8>, void *a2@<X0>)
{
  v5 = sub_2612FFA74(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
  }
}

uint64_t sub_2612FF784()
{
  v1 = *(v0 + 8);
  sub_2613A256C();
  sub_2613A25AC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x266700A30](*&v2);
  return sub_2613A25CC();
}

uint64_t sub_2612FF7F0()
{
  v1 = *(v0 + 8);
  sub_2613A25AC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x266700A30](*&v2);
}

uint64_t sub_2612FF83C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2613A256C();
  sub_2613A25AC();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x266700A30](*&v3);
  return sub_2613A25CC();
}

uint64_t sub_2612FF8D0(double a1)
{
  sub_2613A211C();
  MEMORY[0x2666FFEA0](0xD000000000000017, 0x80000002613BC3E0);
  v1 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v1);

  MEMORY[0x2666FFEA0](0x7265746E49202C5DLL, 0xEF5B202D206C6176);
  sub_2613A1D2C();
  MEMORY[0x2666FFEA0](93, 0xE100000000000000);
  return 0;
}

BOOL sub_2612FF9D4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) < *(a2 + 8);
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_2612FF9FC(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) >= *(a1 + 8);
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_2612FFA24(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) >= *(a2 + 8);
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_2612FFA4C(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) < *(a1 + 8);
  }

  else
  {
    return *a2 < *a1;
  }
}

double sub_2612FFA74(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEA0360, &qword_2613ABDB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FF6E0();
  sub_2613A260C();
  v11 = 0;
  sub_2613A233C();
  v10 = 1;
  sub_2613A22FC();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2612FFC24()
{
  result = qword_27FEA0358;
  if (!qword_27FEA0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0358);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CPUTimestamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CPUTimestamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_2612FFCE4()
{
  result = qword_27FEAD170[0];
  if (!qword_27FEAD170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAD170);
  }

  return result;
}

unint64_t sub_2612FFD3C()
{
  result = qword_27FEAD280;
  if (!qword_27FEAD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAD280);
  }

  return result;
}

unint64_t sub_2612FFD94()
{
  result = qword_27FEAD288[0];
  if (!qword_27FEAD288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAD288);
  }

  return result;
}

id sub_2612FFDEC()
{
  result = [objc_allocWithZone(type metadata accessor for AppleAccountMonitor()) init];
  qword_27FEAEE08 = result;
  return result;
}

uint64_t *sub_2612FFE1C()
{
  if (qword_27FEAD310 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEE08;
}

uint64_t sub_2612FFE6C()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2612FFEB0(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2612FFF00()
{
  v0[OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount] = 0;
  v1 = &v0[OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isStarted] = 0;
  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E8, &qword_2613A7310);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for AppleAccountMonitor();
  v4 = objc_msgSendSuper2(&v16, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3F8, &unk_2613A9AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4310;
  *(inited + 32) = sub_2613A18CC();
  *(inited + 40) = v6;
  v7 = v4;
  sub_261300EF4(inited);
  swift_setDeallocating();
  sub_26130105C(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x277CB8F80]);
  v9 = v7;
  v10 = sub_2613A1D3C();

  v11 = [v8 initWithAccountTypes:v10 delegate:v9];

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v15[4] = sub_2613010B0;
  v15[5] = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_261300748;
  v15[3] = &block_descriptor_9;
  v13 = _Block_copy(v15);

  [v11 registerWithCompletion_];
  _Block_release(v13);

  return v9;
}

uint64_t sub_261300140(unint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v13 = &v53 - v12;
  if (a2)
  {
    v14 = a2;
    v15 = sub_26129B7C4();
    sub_26124AA44(v15, v13);
    v16 = sub_2613A124C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v13, 1, v16) == 1)
    {

      return sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = a2;
      v26 = sub_2613A122C();
      v27 = sub_2613A1D8C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v55 = a2;
        v56[0] = v29;
        *v28 = 136315138;
        v30 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v31 = sub_2613A195C();
        v33 = sub_26124C11C(v31, v32, v56);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_261243000, v26, v27, "Could not register store: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x266701350](v29, -1, -1);
        MEMORY[0x266701350](v28, -1, -1);
      }

      else
      {
      }

      return (*(v17 + 8))(v13, v16);
    }
  }

  v53 = a3;
  v54 = v11;
  if (!a1)
  {
    goto LABEL_29;
  }

  if (!(a1 >> 62))
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_29:
    v47 = sub_26129B7C4();
    sub_26124AA44(v47, v10);
    v48 = sub_2613A124C();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v10, 1, v48) == 1)
    {
      return sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    v50 = sub_2613A122C();
    v51 = sub_2613A1D9C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_261243000, v50, v51, "No primary account", v52, 2u);
      MEMORY[0x266701350](v52, -1, -1);
    }

    return (*(v49 + 8))(v10, v48);
  }

LABEL_28:
  v19 = sub_2613A221C();
  if (!v19)
  {
    goto LABEL_29;
  }

LABEL_7:
  v20 = 0;
  v21 = *MEMORY[0x277CEC688];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x2667005C0](v20, a1);
    }

    else
    {
      if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v22 = *(a1 + 8 * v20 + 32);
    }

    v23 = v22;
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if ([v22 aa:v21 isAccountClass:?])
    {
      break;
    }

    ++v20;
    if (v24 == v19)
    {
      goto LABEL_29;
    }
  }

  v34 = sub_26129B7C4();
  v35 = v54;
  sub_26124AA44(v34, v54);
  v36 = sub_2613A124C();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_26124C718(v35, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v38 = v23;
    v39 = sub_2613A122C();
    v40 = sub_2613A1D9C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138739971;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&dword_261243000, v39, v40, "Primary account: %{sensitive}@)", v41, 0xCu);
      sub_26124C718(v42, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v42, -1, -1);
      v35 = v54;
      MEMORY[0x266701350](v41, -1, -1);
    }

    (*(v37 + 8))(v35, v36);
  }

  v44 = [v23 aa_isSandboxAccount];

  v45 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount;
  v46 = v53;
  result = swift_beginAccess();
  *(v46 + v45) = v44;
  return result;
}

uint64_t sub_261300748(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_261301138();
    v4 = sub_2613A1B7C();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_261300800()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_2612FBDE4();
  os_unfair_lock_unlock(v1 + 4);
}

id sub_261300874()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleAccountMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261300968(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  result = [a1 aa:*MEMORY[0x277CEC688] isAccountClass:?];
  if (result)
  {
    v8 = sub_26129B7C4();
    sub_26124AA44(v8, v6);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      v11 = sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v12 = sub_2613A122C();
      v13 = sub_2613A1D9C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261243000, v12, v13, "accountWasRemoved", v14, 2u);
        MEMORY[0x266701350](v14, -1, -1);
      }

      v11 = (*(v10 + 8))(v6, v9);
    }

    result = (*((*MEMORY[0x277D85000] & *v2) + 0x70))(v11);
    if (result)
    {
      v15 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount;
      result = swift_beginAccess();
      *(v2 + v15) = 0;
      v16 = v2 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler;
      v17 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler);
      if (v17)
      {
        v18 = *(v16 + 1);

        v17(v19);
        return sub_26124A228(v17, v18);
      }
    }
  }

  return result;
}

uint64_t sub_261300C18(void *a1, const char *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  result = [a1 aa:*MEMORY[0x277CEC688] isAccountClass:?];
  if (result)
  {
    v10 = sub_26129B7C4();
    sub_26124AA44(v10, v8);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v13 = sub_2613A122C();
      v14 = sub_2613A1D9C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_261243000, v13, v14, a2, v15, 2u);
        MEMORY[0x266701350](v15, -1, -1);
      }

      (*(v12 + 8))(v8, v11);
    }

    v16 = [a1 aa_isSandboxAccount];
    result = (*((*MEMORY[0x277D85000] & *v4) + 0x70))();
    if (v16 != (result & 1))
    {
      v17 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount;
      result = swift_beginAccess();
      *(v4 + v17) = v16;
      v18 = v4 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler;
      v19 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler);
      if (v19)
      {
        v20 = *(v18 + 1);

        v19(v21);
        return sub_26124A228(v19, v20);
      }
    }
  }

  return result;
}

uint64_t sub_261300EF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB80, &unk_2613ABA70);
    v3 = sub_2613A20DC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2613A256C();

      sub_2613A19DC();
      result = sub_2613A25CC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2613A241C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2613010D0()
{
  v1 = v0[2];
  if ((*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isStarted) & 1) == 0)
  {
    v3 = v0[3];
    v2 = v0[4];
    *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isStarted) = 1;
    v4 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler);
    v5 = *v4;
    v6 = v4[1];
    *v4 = v3;
    v4[1] = v2;

    return sub_26124A228(v5, v6);
  }

  return result;
}

unint64_t sub_261301138()
{
  result = qword_27FEA0408;
  if (!qword_27FEA0408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEA0408);
  }

  return result;
}

uint64_t sub_261301184()
{
  if (*v0)
  {
    return 0x7265766F63736964;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_2613011CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_2613A241C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEE00736D65744979)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2613A241C();

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

uint64_t sub_2613012B0(uint64_t a1)
{
  v2 = sub_2613014F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2613012EC(uint64_t a1)
{
  v2 = sub_2613014F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261301328(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0418, "Z>");
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2613014F0();
  sub_2613A262C();
  v13 = 0;
  sub_2613A23BC();
  if (!v3)
  {
    v11[1] = a3;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0420, &qword_2613ABE18);
    sub_2613040C8(&qword_27FEA0428, sub_261301544, MEMORY[0x277D83948]);
    sub_2613A23CC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2613014F0()
{
  result = qword_27FEAD320;
  if (!qword_27FEAD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAD320);
  }

  return result;
}

unint64_t sub_261301544()
{
  result = qword_27FEA0430;
  if (!qword_27FEA0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0430);
  }

  return result;
}

uint64_t sub_261301598@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2613023EC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2613015E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[10];
  v5 = v0[11];

  return MEMORY[0x2821A50D0](v1, v2, v3, v4, v6, v5);
}

uint64_t sub_261301668()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6369706F74;
  if (v1 != 5)
  {
    v3 = 0x6369706F74627573;
  }

  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x754274756F79616CLL;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_261301760@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2613026EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261301788(uint64_t a1)
{
  v2 = sub_2613025F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2613017C4(uint64_t a1)
{
  v2 = sub_2613025F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261301800(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0438, &qword_2613ABE20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2613025F0();
  sub_2613A262C();
  LOBYTE(v12) = 0;
  sub_2613A238C();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_2613A238C();
    LOBYTE(v12) = 2;
    sub_2613A23BC();
    v12 = *(v3 + 40);
    v11 = 3;
    sub_261302644();
    sub_2613A237C();
    *&v12 = *(v3 + 56);
    v11 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0448, &qword_2613ABE28);
    sub_261303FF0(&qword_27FEA0450, sub_261302698, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_2613A237C();
    LOBYTE(v12) = 5;
    sub_2613A238C();
    LOBYTE(v12) = 6;
    sub_2613A238C();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_261301ACC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_261302950(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_261301B30()
{
  if (*v0)
  {
    return 0x6D756D6978616DLL;
  }

  else
  {
    return 0x6D756D696E696DLL;
  }
}

uint64_t sub_261301B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D756D696E696DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_2613A241C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D756D6978616DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2613A241C();

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

uint64_t sub_261301C40(uint64_t a1)
{
  v2 = sub_261302F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261301C7C(uint64_t a1)
{
  v2 = sub_261302F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261301CB8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0460, &qword_2613ABE30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261302F30();
  sub_2613A262C();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0468, &qword_2613ABE38);
  sub_261302F84(&qword_27FEA0470, sub_261303008, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_2613A237C();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_2613A237C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_261301EB4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26130305C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_261301EFC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2613A261C();
  if (a4)
  {
    if (a4 == 1)
    {
      v9 = a2;
      __swift_mutable_project_boxed_opaque_existential_0(v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB50, &qword_2613ABE40);
      sub_261303E98(&qword_27FE9FB58, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_2613A245C();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_0(v7, v8);
    sub_2613A244C();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

void *sub_26130202C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_261303294(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_26130207C()
{
  v1 = 0x6D756D6978616DLL;
  if (*v0 != 1)
  {
    v1 = 0x736C65646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D756D696E696DLL;
  }
}

uint64_t sub_2613020D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261303464(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2613020FC(uint64_t a1)
{
  v2 = sub_261303410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261302138(uint64_t a1)
{
  v2 = sub_261303410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261302174(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0480, &unk_2613ABE48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261303410();
  sub_2613A262C();
  v13 = 0;
  sub_2613A234C();
  if (!v2)
  {
    v12 = 1;
    sub_2613A234C();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
    sub_261303E2C(&qword_27FEA0488, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_2613A237C();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_26130238C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_261303578(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_2613023EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04E0, &qword_2613AC5E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_2613014F0();
  sub_2613A260C();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_2613A230C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0420, &qword_2613ABE18);
    v9[15] = 1;
    sub_2613040C8(&qword_27FEA04E8, sub_261304140, MEMORY[0x277D83978]);
    sub_2613A231C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2613025F0()
{
  result = qword_27FEAD328;
  if (!qword_27FEAD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAD328);
  }

  return result;
}

unint64_t sub_261302644()
{
  result = qword_27FEA0440;
  if (!qword_27FEA0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0440);
  }

  return result;
}

unint64_t sub_261302698()
{
  result = qword_27FEA0458;
  if (!qword_27FEA0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0458);
  }

  return result;
}

uint64_t sub_2613026EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x754274756F79616CLL && a2 == 0xEF4C5255656C646ELL || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xEE0065676E61526ELL || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002613BC4E0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6369706F74 && a2 == 0xE500000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369706F74627573 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_2613A241C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_261302950@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04C0, &qword_2613AC5E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2613025F0();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v40) = 0;
  v9 = sub_2613A22DC();
  v33 = v10;
  LOBYTE(v40) = 1;
  *&v32 = sub_2613A22DC();
  *(&v32 + 1) = v11;
  LOBYTE(v40) = 2;
  v12 = sub_2613A230C();
  LOBYTE(v34) = 3;
  sub_261303F9C();
  sub_2613A22CC();
  v30 = v40;
  v31 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0448, &qword_2613ABE28);
  LOBYTE(v34) = 4;
  sub_261303FF0(&qword_27FEA04D0, sub_261304074, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  v29 = 0;
  sub_2613A22CC();
  v27 = v40;
  LOBYTE(v40) = 5;
  v26 = sub_2613A22DC();
  v28 = v13;
  v52 = 6;
  v25 = sub_2613A22DC();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  *&v34 = v9;
  v16 = v33;
  *(&v34 + 1) = v33;
  v35 = v32;
  v17 = *(&v32 + 1);
  *&v36 = v12;
  v24 = v12;
  v18 = v30;
  *(&v36 + 1) = v30;
  *&v37 = v31;
  *(&v37 + 1) = v27;
  *&v38 = v26;
  v19 = v25;
  *(&v38 + 1) = v28;
  *&v39 = v25;
  *(&v39 + 1) = v15;
  sub_261264584(&v34, &v40);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v40 = v9;
  v41 = v16;
  v42 = v32;
  v43 = v17;
  v44 = v24;
  v45 = v18;
  v46 = v31;
  v47 = v27;
  v48 = v26;
  v49 = v28;
  v50 = v19;
  v51 = v15;
  result = sub_2612645E0(&v40);
  v21 = v37;
  a2[2] = v36;
  a2[3] = v21;
  v22 = v39;
  a2[4] = v38;
  a2[5] = v22;
  v23 = v35;
  *a2 = v34;
  a2[1] = v23;
  return result;
}

unint64_t sub_261302F30()
{
  result = qword_27FEAD330;
  if (!qword_27FEAD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAD330);
  }

  return result;
}

uint64_t sub_261302F84(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA0468, &qword_2613ABE38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261303008()
{
  result = qword_27FEA0478;
  if (!qword_27FEA0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0478);
  }

  return result;
}

uint64_t sub_26130305C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04A8, &qword_2613AC5D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261302F30();
  sub_2613A260C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0468, &qword_2613ABE38);
  v9 = 0;
  sub_261302F84(&qword_27FEA04B0, sub_261303F04, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_2613A22CC();
  v7 = v10;
  v9 = 1;
  sub_2613A22CC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

void *sub_261303294(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2613A25FC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_2613A242C();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

unint64_t sub_261303410()
{
  result = qword_27FEAD338[0];
  if (!qword_27FEAD338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAD338);
  }

  return result;
}

uint64_t sub_261303464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D756D696E696DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756D6978616DLL && a2 == 0xE700000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2613A241C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_261303578@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0490, &qword_2613AC5D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261303410();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v24 = 0;
  v9 = sub_2613A229C();
  v11 = v10;
  v20 = v9;
  v23 = 1;
  v12 = sub_2613A229C();
  v14 = v13;
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
  v22 = 2;
  sub_261303E2C(&qword_27FEA0498, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_2613A22CC();
  (*(v6 + 8))(v8, v5);
  v15 = v21;
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v17 = v19;
  *a2 = v20;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v15;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21ProximityReaderDaemon14OSVersionRangeVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261303830(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_26130388C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21ProximityReaderDaemon12VersionRangeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_261303908(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_261303950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_261303994(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_261303A10()
{
  result = qword_27FEAD940[0];
  if (!qword_27FEAD940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAD940);
  }

  return result;
}

unint64_t sub_261303A68()
{
  result = qword_27FEADB50[0];
  if (!qword_27FEADB50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEADB50);
  }

  return result;
}

unint64_t sub_261303AC0()
{
  result = qword_27FEADD60[0];
  if (!qword_27FEADD60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEADD60);
  }

  return result;
}

unint64_t sub_261303B18()
{
  result = qword_27FEADF70[0];
  if (!qword_27FEADF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEADF70);
  }

  return result;
}

unint64_t sub_261303B70()
{
  result = qword_27FEAE080;
  if (!qword_27FEAE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAE080);
  }

  return result;
}

unint64_t sub_261303BC8()
{
  result = qword_27FEAE088[0];
  if (!qword_27FEAE088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAE088);
  }

  return result;
}

unint64_t sub_261303C20()
{
  result = qword_27FEAE110;
  if (!qword_27FEAE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAE110);
  }

  return result;
}

unint64_t sub_261303C78()
{
  result = qword_27FEAE118[0];
  if (!qword_27FEAE118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAE118);
  }

  return result;
}

unint64_t sub_261303CD0()
{
  result = qword_27FEAE1A0;
  if (!qword_27FEAE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAE1A0);
  }

  return result;
}

unint64_t sub_261303D28()
{
  result = qword_27FEAE1A8[0];
  if (!qword_27FEAE1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAE1A8);
  }

  return result;
}

unint64_t sub_261303D80()
{
  result = qword_27FEAE230;
  if (!qword_27FEAE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAE230);
  }

  return result;
}

unint64_t sub_261303DD8()
{
  result = qword_27FEAE238[0];
  if (!qword_27FEAE238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAE238);
  }

  return result;
}

uint64_t sub_261303E2C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F3E0, "R7");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261303E98(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9FB50, &qword_2613ABE40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261303F04()
{
  result = qword_27FEA04B8;
  if (!qword_27FEA04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA04B8);
  }

  return result;
}

uint64_t sub_261303F58(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_261303F9C()
{
  result = qword_27FEA04C8;
  if (!qword_27FEA04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA04C8);
  }

  return result;
}

uint64_t sub_261303FF0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA0448, &qword_2613ABE28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261304074()
{
  result = qword_27FEA04D8;
  if (!qword_27FEA04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA04D8);
  }

  return result;
}

uint64_t sub_2613040C8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA0420, &qword_2613ABE18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261304140()
{
  result = qword_27FEA04F0;
  if (!qword_27FEA04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA04F0);
  }

  return result;
}

uint64_t sub_261304198()
{
  result = *MEMORY[0x277D025F0];
  if (*MEMORY[0x277D025F0])
  {
    result = sub_2613A18CC();
    qword_27FEAE2C8 = result;
    qword_27FEAE2D0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static XpcEventNotification.register()()
{
  v0 = *sub_2612A4A58();
  v3[4] = sub_26130428C;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_261304570;
  v3[3] = &block_descriptor_10;
  v1 = _Block_copy(v3);
  v2 = v0;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v1);
  _Block_release(v1);
}

const char *sub_26130428C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  result = xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]);
  if (result)
  {
    v6 = sub_2613A1A3C();
    v8 = v7;
    if (qword_27FEAE2C0 != -1)
    {
      swift_once();
    }

    v9 = qword_27FEAE2C8 == v6 && qword_27FEAE2D0 == v8;
    if (v9 || (sub_2613A241C() & 1) != 0)
    {

      sub_2612F9F2C();

      v10 = sub_2612F9F7C();
      sub_2612F9F80((v10 + 1));
    }

    else
    {
      v11 = sub_26129B7C4();
      sub_26124AA44(v11, v4);
      v12 = sub_2613A124C();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v4, 1, v12) == 1)
      {

        return sub_26124D0CC(v4);
      }

      else
      {

        v14 = sub_2613A122C();
        v15 = sub_2613A1D9C();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v20 = v17;
          *v16 = 136315138;
          v18 = sub_26124C11C(v6, v8, &v20);

          *(v16 + 4) = v18;
          _os_log_impl(&dword_261243000, v14, v15, "Unexpected event: [ %s ]", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v17);
          MEMORY[0x266701350](v17, -1, -1);
          MEMORY[0x266701350](v16, -1, -1);
        }

        else
        {
        }

        return (*(v13 + 8))(v4, v12);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261304570(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2613045F8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId;
  swift_beginAccess();
  sub_26125A870(v1 + v9, v8, &qword_27FE9F280, &unk_2613A42B0);
  v10 = sub_26139F13C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_26124C718(v8, &qword_27FE9F280, &unk_2613A42B0);
  v12 = *(v11 + 16);
  v12(a1, *(v1 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v10);
  v12(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_261304804(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_261304804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261304874(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId;
  swift_beginAccess();
  sub_261304804(v5, v1 + v8);
  return swift_endAccess();
}

void (*sub_26130499C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = sub_26139F13C();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_2613045F8(v10);
  return sub_261304ABC;
}

void sub_261304ABC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId;
    swift_beginAccess();
    sub_261304804(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId;
    swift_beginAccess();
    sub_261304804(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_261304C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a7;
  v22 = a6;
  v23 = a2;
  v24 = a3;
  v10 = sub_26139F13C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = *(**sub_2612C11DC() + 112);

  v15(v16);

  *(v14 + 104) = 0;
  (*(v11 + 56))(v14 + OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId, 1, 1, v10);
  *(v14 + 16) = a4;
  v17 = v21;
  *(v14 + 80) = v22;
  *(v14 + 88) = v17;
  *(v14 + 72) = a5;
  type metadata accessor for PINStore(0);
  (*(v11 + 16))(v13, a1, v10);

  *(v14 + 24) = sub_261268EC8(v13, v23, v24);
  type metadata accessor for PINHelper();
  sub_2612B5A20(v14 + 32, v25);
  v18 = sub_261324938(a4, v25, a5);
  (*(v11 + 8))(a1, v10);
  *(v14 + 96) = v18;
  return v14;
}

void *sub_261304E30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_2613A122C();
    v9 = sub_2613A1D9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261243000, v8, v9, "IssuerPINTask destroyed", v10, 2u);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 32));

  sub_26124C718(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId, &qword_27FE9F280, &unk_2613A42B0);
  return v1;
}

uint64_t sub_261305024()
{
  sub_261304E30();

  return swift_deallocClassInstance();
}

uint64_t sub_26130507C()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for TransactionData(0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_26139F13C();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620);
  v1[12] = swift_task_alloc();
  v4 = type metadata accessor for TransactionContainer(0);
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26130529C, 0, 0);
}

uint64_t sub_26130529C()
{
  v1 = v0[16];
  v2 = sub_26129B5FC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[16];
  if (v5 == 1)
  {
    sub_26124C718(v0[16], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v7, 0x65746164696C6176, 0xEA00000000002928, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v0[17] = type metadata accessor for Mock();
  if ((sub_26129B0F4(8) & 1) == 0)
  {
    v11 = v0[4];
    v12 = v11[7];
    v13 = v11[8];
    __swift_project_boxed_opaque_existential_1(v11 + 4, v12);
    v14 = (v11[3] + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_pinToken);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v13 + 16);

    v17(v16, v15, v12, v13);
  }

  v18 = *(v0[4] + 16);
  v0[18] = v18;
  v19 = sub_26125B314(*(v18 + 64), *(v18 + 72));
  v0[19] = v19;
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = v19;
  v21 = (*(*v19 + 376))();
  v0[20] = v21;
  if (!v21)
  {

LABEL_12:
    v27 = v0[10];
    v26 = v0[11];
    v28 = v0[9];
    (*(v27 + 16))(v26, *(v0[4] + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v28);
    sub_261306CA8(v26, 4, 0xD000000000000011, 0x80000002613BC580);
    (*(v27 + 8))(v26, v28);
    goto LABEL_13;
  }

  v22 = (*(*v20 + 400))();
  if (v22 == 2 || (v22 & 1) != 0)
  {
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];
    (*(v24 + 16))(v23, *(v0[4] + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v25);
    sub_261306CA8(v23, 6, 0xD000000000000018, 0x80000002613BC5A0);

    (*(v24 + 8))(v23, v25);
LABEL_13:

    v29 = v0[1];

    return v29(0);
  }

  v32 = v0[10];
  v31 = v0[11];
  v33 = v0[9];
  v34 = v0[4];
  v35 = sub_261287C58();
  v36 = *v35;
  v0[21] = *v35;
  v37 = *(v34 + 24);
  v38 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID;
  v39 = *(v32 + 16);
  v0[22] = v39;
  v0[23] = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39(v31, v37 + v38, v33);
  v40 = *(*v36 + 136);

  v44 = (v40 + *v40);
  v41 = swift_task_alloc();
  v0[24] = v41;
  *v41 = v0;
  v41[1] = sub_261305904;
  v43 = v0[11];
  v42 = v0[12];

  return v44(v42, v43);
}

uint64_t sub_261305904()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);

  v5 = *(v3 + 8);
  *(v1 + 200) = v5;
  *(v1 + 208) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_261305A8C, 0, 0);
}

uint64_t sub_261305A8C()
{
  v1 = v0[13];
  v2 = v0[12];
  if ((*(v0[14] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[25];
    v4 = v0[22];
    v5 = v0[11];
    v6 = v0[9];
    v7 = v0[4];
    sub_26124C718(v2, &qword_27FE9F568, &unk_2613AC620);
    v4(v5, *(v7 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v6);
    sub_261306CA8(v5, 31, 0xD000000000000022, 0x80000002613BC5C0);

    v3(v5, v6);
    v8 = 0;
  }

  else
  {
    v9 = v0[19];
    v10 = v0[15];
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[5];
    v27 = v0[6];
    v14 = v0[4];
    sub_261308DFC(v2, v10, type metadata accessor for TransactionContainer);
    sub_261281B9C(v12);
    v15 = *(v14 + 24);
    sub_2612A8628(v12, v13);
    (*(v11 + 56))(v13, 0, 1, v27);
    v16 = *(*v15 + 136);

    v16(v13);

    (*(*v9 + 184))(v17);
    sub_26129B284(22);
    if (*(v10 + *(v1 + 96) + 8))
    {
      v18 = *(v0[4] + 24);

      v19 = sub_2613A053C();
    }

    else
    {
      v20 = *(v0[15] + *(v0[13] + 92) + 8);
      v18 = *(v0[4] + 24);

      if (v20)
      {
        v19 = sub_2613A054C();
      }

      else
      {
        v19 = sub_2613A056C();
      }
    }

    v26 = v0[15];
    v21 = v0[8];
    (*(*v18 + 208))(v19);

    sub_2613A121C();

    sub_2613A115C();

    v22 = objc_allocWithZone(MEMORY[0x277CCA980]);

    v23 = sub_2613A189C();
    [v22 initWithString_];

    objc_allocWithZone(sub_26139FA7C());

    v8 = sub_26139FA6C();

    sub_261308D00(v21, type metadata accessor for TransactionData);
    sub_261308D00(v26, type metadata accessor for TransactionContainer);
  }

  v24 = v0[1];

  return v24(v8);
}

uint64_t sub_261305F4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = *(**(v0 + 24) + 152);

  v7 = v5(v6);
  LOBYTE(v5) = v8;

  if (v5)
  {

    v9 = *(v0 + 96);
    if (v9)
    {
      (*(*v9 + 144))(sub_261308D60, v4);
    }
  }

  else
  {
    v11 = sub_26129B5FC();
    sub_26125A870(v11, v3, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v3, 1, v12) == 1)
    {
      sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D9C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v7;
        v22 = v17;
        *v16 = 136315138;
        sub_2612B45EC();
        v18 = sub_2613A24FC();
        v20 = sub_26124C11C(v18, v19, &v22);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_261243000, v14, v15, "[IssuerPIN] pinAuthNeeded skipped due to %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x266701350](v17, -1, -1);
        MEMORY[0x266701350](v16, -1, -1);
      }

      (*(v13 + 8))(v3, v12);
    }

    sub_261306268(v4);
  }
}

uint64_t sub_261306268(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_26139F95C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_26129B5FC();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v14 = sub_2613A122C();
    v15 = sub_2613A1D9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = v5;
      v17 = v16;
      *v16 = 0;
      _os_log_impl(&dword_261243000, v14, v15, "[IssuerPIN] pinAuthNeeded cleanup handler called", v16, 2u);
      v18 = v17;
      v5 = v24;
      MEMORY[0x266701350](v18, -1, -1);
    }

    (*(v13 + 8))(v10, v12);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    (*(**(result + 16) + 136))();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_26124C718(v3, &qword_27FEA04F8, &qword_2613AC6F0);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v21 = sub_26139F94C();
      (*(v5 + 8))(v7, v4);
      if (v21)
      {
      }
    }

    v22 = *(**(v20 + 24) + 232);

    v22(v23);
  }

  return result;
}

uint64_t sub_2613065FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v13 = *(**(v4 + 24) + 160);

    v13(30, 0);
  }

  v14 = *(v4 + 96);
  if (v14)
  {
    (*(v9 + 16))(v12, *(v4 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v8);
    (*(*v14 + 152))(v12, a1, a2);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_261306788(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = sub_26125B314(*(*(v1 + 16) + 64), *(*(v1 + 16) + 72));
  if (!v9)
  {
    v21 = *(**(v1 + 24) + 160);

    v22 = 4;
    v21(4, 0);

    v43 = 4;
    sub_2612B45EC();
    swift_willThrowTypedImpl();
    return v22;
  }

  v10 = v9;
  v40 = v6;
  v12 = *(v1 + 56);
  v11 = *(v1 + 64);
  v41 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 32), v12);
  v42 = v10;
  v14 = *(v10 + 32);
  v13 = *(v10 + 40);
  v15 = *(v11 + 88);

  v16 = v15(v14, v13, a1, 1, v12, v11);
  v18 = v17;

  if (v18 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_13;
    }

    v20 = v8;
    if (*(v16 + 16) == *(v16 + 24))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = v8;
    if (v19)
    {
      if (v16 == v16 >> 32)
      {
LABEL_13:
        sub_26124A168(v16, v18);
LABEL_14:
        v26 = sub_26129B5FC();
        v27 = v40;
        sub_26125A870(v26, v40, &qword_27FE9F560, &qword_2613A3CB0);
        v28 = sub_2613A124C();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v27, 1, v28) == 1)
        {
          sub_26124C718(v27, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v30 = sub_2613A122C();
          v31 = sub_2613A1D9C();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_261243000, v30, v31, "cardBlob failed", v32, 2u);
            MEMORY[0x266701350](v32, -1, -1);
          }

          (*(v29 + 8))(v27, v28);
        }

        v33 = *(**(v41 + 24) + 160);

        v22 = 27;
        v33(27, 0);

        v43 = 27;
        sub_2612B45EC();
        swift_willThrowTypedImpl();

        return v22;
      }
    }

    else if ((v18 & 0xFF000000000000) == 0)
    {
      goto LABEL_13;
    }
  }

  v23 = sub_26129B5FC();
  sub_26125A870(v23, v20, &qword_27FE9F560, &qword_2613A3CB0);
  v24 = sub_2613A124C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v20, 1, v24) == 1)
  {
    sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v34 = sub_2613A122C();
    v35 = sub_2613A1D9C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_261243000, v34, v35, "cardBlob encrypted", v36, 2u);
      MEMORY[0x266701350](v36, -1, -1);
    }

    (*(v25 + 8))(v20, v24);
  }

  v37 = *(v41 + 24);
  v38 = *(*v37 + 184);
  v22 = *v37 + 184;

  sub_26125C348(v16, v18);
  v38(v16, v18);

  sub_26124A168(v16, v18);

  return v22;
}

uint64_t sub_261306CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    *&v27[0] = a3;
    *(&v27[0] + 1) = a4;
    sub_261306EF0(v27, v25);
  }

  if (*(v4 + 72))
  {
    v7 = sub_261253D64();
    v8 = sub_261253D64();
    v9 = sub_261396E6C(v8);
    v11 = v10;
    v12 = sub_26125A798();
    sub_261396E70(a1, 0, 0, v7, v8, v9, v11, 2, a2, 0, v12 & 1);
  }

  type metadata accessor for PINMonitorEventBuilder();
  sub_2612BAC20(4);
  v13 = *(v4 + 16);
  v14 = *(v13 + 64);
  v15 = *(v13 + 72);

  sub_2612BAC6C(0, v14, v15);

  v16 = sub_26139F0FC();
  sub_2612BAC6C(4u, v16, v17);

  v18 = sub_2613A03AC();
  sub_2612BAC6C(6u, v18, v19);

  v20 = sub_26139FACC();
  sub_2612BAC6C(8u, v20, v21);

  sub_2612BB0C0(v25);
  if (v26)
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v26;
    v22 = *(v4 + 56);
    v23 = *(v4 + 64);
    __swift_project_boxed_opaque_existential_1((v4 + 32), v22);
    (*(v23 + 120))(v27, v22, v23);
    sub_2612A0E50(v27);
  }

  else
  {
    sub_26124C718(v25, &qword_27FE9F8D0, &unk_2613AC6E0);
  }

  (*(v4 + 80))(0, a2, 0);
}

uint64_t sub_261306EF0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = sub_26129B5FC();
  sub_26125A870(v9, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v6, 1, v10);
  if (v12 == 1)
  {
    result = sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v14 = sub_2613A122C();
    v15 = sub_2613A1D8C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v20 = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_26124C11C(v7, v8, &v21);
      _os_log_impl(&dword_261243000, v14, v15, "%{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x266701350](v18, -1, -1);
      v19 = v17;
      a2 = v20;
      MEMORY[0x266701350](v19, -1, -1);
    }

    result = (*(v11 + 8))(v6, v10);
  }

  *a2 = v12 == 1;
  return result;
}

uint64_t sub_261307114()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 96);
  if (v6)
  {
    type metadata accessor for PINMonitorEventBuilder();
    sub_2612BAC20(0);
    (*(v2 + 16))(v5, *(v0 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v1);
    v7 = sub_26139F0FC();
    v9 = v8;
    (*(v2 + 8))(v5, v1);
    sub_2612BAC6C(4u, v7, v9);

    v10 = sub_2613A03AC();
    v12 = sub_2612BAC6C(6u, v10, v11);

    (*(*v6 + 176))(v12);
  }

  return result;
}

uint64_t sub_2613072CC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_26139F95C();
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x28223BE20](v15);
  v59 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26139F13C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 96);
  if (v21)
  {
    v56 = a3;
    v22 = *(v4 + 24);
    (*(v18 + 16))(v20, v22 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v17);
    v23 = *(*v22 + 200);
    v57 = v14;
    v24 = v4;

    v26 = v23(v25);
    v28 = v27;

    v29 = sub_2613A027C();
    v30 = v26;
    v4 = v24;
    v14 = v57;
    (*(*v21 + 160))(v20, 0, a2, v56, v30, v28, v29 & 1);

    (*(v18 + 8))(v20, v17);
  }

  v31 = *(**(v4 + 24) + 144);

  v32 = v31(v63);
  v34 = v33;
  v35 = type metadata accessor for TransactionData(0);
  if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
  {
    v36 = *(v35 + 96);
    v37 = *(v34 + v36);
    *(v34 + v36) = a1;
    v38 = a1;
  }

  v32(v63, 0);

  (*(**(v4 + 16) + 136))(v39);
  v41 = v61;
  v40 = v62;
  if ((*(v61 + 48))(v14, 1, v62) == 1)
  {
    return sub_26124C718(v14, &qword_27FEA04F8, &qword_2613AC6F0);
  }

  v43 = v59;
  (*(v41 + 32))(v59, v14, v40);
  v44 = sub_26139F94C();
  result = (*(v41 + 8))(v43, v40);
  if (v44)
  {
    v45 = sub_26129B5FC();
    v46 = v60;
    sub_26125A870(v45, v60, &qword_27FE9F560, &qword_2613A3CB0);
    v47 = sub_2613A124C();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_26124C718(v60, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v49 = sub_2613A122C();
      v50 = sub_2613A1D9C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_261243000, v49, v50, "Issuer PIN, returning data early", v51, 2u);
        MEMORY[0x266701350](v51, -1, -1);
      }

      (*(v48 + 8))(v60, v47);
    }

    v52 = sub_2613A1C1C();
    v53 = v58;
    (*(*(v52 - 8) + 56))(v58, 1, 1, v52);
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = v4;

    sub_261266800(0, 0, v53, &unk_2613AC638, v54);
  }

  return result;
}

uint64_t sub_261307938()
{
  (*(**(v0 + 16) + 296))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2613079C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 96);
  if (v12)
  {
    v22 = a3;
    v13 = *(v4 + 24);
    (*(v9 + 16))(v11, v13 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v8);
    v14 = *(*v13 + 200);

    v16 = v14(v15);
    v18 = v17;

    (*(*v12 + 168))(v11, a1, 0, a2, v22, v16, v18);

    (*(v9 + 8))(v11, v8);
  }

  v19 = *(**(v4 + 24) + 160);

  v19(a1, 0);
}

uint64_t sub_261307BA8()
{
  v1 = sub_26139F13C();
  v86 = *(v1 - 8);
  v87 = v1;
  MEMORY[0x28223BE20](v1);
  v89 = v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v88 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v91 = v85 - v6;
  v7 = type metadata accessor for TransactionData(0);
  v8 = *(v7 - 8);
  v93 = v7;
  v94 = v8;
  MEMORY[0x28223BE20](v7);
  v90 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v85 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v92 = v85 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v85 - v19;
  v95 = sub_26129B5FC();
  sub_26125A870(v95, v20, &qword_27FE9F560, &qword_2613A3CB0);
  v21 = sub_2613A124C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v20, 1, v21);
  v85[1] = v13;
  if (v24 == 1)
  {
    sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
    v25 = v0;
    if ((*(v0 + 104) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = sub_26125A798();
    v39 = sub_261291AA8();
    v85[0] = v22 + 48;
    sub_26129BC3C(v38 & 1, v0, 0xD00000000000001BLL, 0x80000002613BC5F0, v39, v40);

    (*(v22 + 8))(v20, v21);
    v25 = v0;
    if ((*(v0 + 104) & 1) == 0)
    {
LABEL_3:
      v85[0] = v21;
      *(v25 + 104) = 1;
      v26 = *(**(v25 + 24) + 152);

      v28 = v26(v27);
      v30 = v29;

      if (v30)
      {
        v31 = *(**(v25 + 24) + 128);

        v33 = v91;
        v31(v32);
        v34 = v33;

        v35 = v94 + 48;
        v36 = *(v94 + 48);
        if (v36(v34, 1, v93) == 1)
        {
          sub_26124C718(v34, &qword_27FE9F340, &unk_2613A4B40);
          return (*(v25 + 80))(0, 27, 0);
        }

        else
        {
          v94 = v35;
          v46 = v90;
          sub_261308DFC(v34, v90, type metadata accessor for TransactionData);
          v47 = *(**(v25 + 24) + 240);

          LOBYTE(v47) = v47(v48);

          if (v47)
          {
            sub_261306788(v46);
          }

          v59 = *(**(v25 + 24) + 176);

          v61 = v59(v60);
          v63 = v62;

          if (v63 >> 60 == 15)
          {
            (*(v25 + 80))(0, 27, 0);
            return sub_261308D00(v46, type metadata accessor for TransactionData);
          }

          else
          {
            v95 = v25;
            v64 = *(v25 + 24);
            (*(v86 + 16))(v89, v64 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v87);
            v65 = v93;
            v66 = (v46 + v93[11]);
            v67 = *v66;
            v68 = v66[1];
            v69 = (v46 + v93[32]);
            v70 = v69[1];
            v87 = *v69;
            v71 = *(*v64 + 128);
            v91 = v68;
            v92 = v67;
            sub_26124C778(v67, v68);

            v86 = v70;

            v73 = v88;
            v71(v72);

            if (v36(v73, 1, v65) || (v74 = *(v73 + v93[24])) == 0)
            {
              sub_26124C718(v73, &qword_27FE9F340, &unk_2613A4B40);
            }

            else
            {
              v75 = v74;
              sub_26124C718(v73, &qword_27FE9F340, &unk_2613A4B40);
              sub_2613A027C();
            }

            v76 = v46;
            v77 = objc_allocWithZone(sub_26139F66C());
            sub_26124C778(v61, v63);
            v78 = sub_26139F65C();
            v79 = *(v95 + 80);
            v80 = *(**(v95 + 24) + 152);

            v82 = v80(v81);
            v84 = v83;

            v79(v78, v82, v84 & 1);

            sub_26124A168(v61, v63);
            return sub_261308D00(v76, type metadata accessor for TransactionData);
          }
        }
      }

      else
      {
        v41 = v92;
        sub_26125A870(v95, v92, &qword_27FE9F560, &qword_2613A3CB0);
        v42 = v85[0];
        if (v23(v41, 1, v85[0]) == 1)
        {
          sub_26124C718(v41, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v49 = sub_2613A122C();
          v50 = sub_2613A1D8C();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = v22;
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v96 = v53;
            *v52 = 136315138;
            v54 = sub_26139FACC();
            v56 = v25;
            v57 = sub_26124C11C(v54, v55, &v96);

            *(v52 + 4) = v57;
            v25 = v56;
            _os_log_impl(&dword_261243000, v49, v50, "has error %s", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v53);
            MEMORY[0x266701350](v53, -1, -1);
            v58 = v52;
            v22 = v51;
            v41 = v92;
            MEMORY[0x266701350](v58, -1, -1);
          }

          (*(v22 + 8))(v41, v42);
        }

        return (*(v25 + 80))(0, v28, 0);
      }
    }
  }

  sub_26125A870(v95, v16, &qword_27FE9F560, &qword_2613A3CB0);
  if (v23(v16, 1, v21) == 1)
  {
    return sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v43 = sub_2613A122C();
  v44 = sub_2613A1D9C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_261243000, v43, v44, "already returned, skipping return data/error", v45, 2u);
    MEMORY[0x266701350](v45, -1, -1);
  }

  return (*(v22 + 8))(v16, v21);
}

uint64_t sub_261308774(int a1)
{
  v2 = v1;
  v4 = sub_26139F13C();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - v10;
  v12 = sub_26129B5FC();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v13) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    if (a1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(v53) = a1;
    v16 = v9;
    v17 = v13;
    v18 = v2;
    v19 = v15;
    v20 = v14;
    v21 = sub_26125A798();
    v22 = sub_261291AA8();
    v57 = v12;
    v23 = v21 & 1;
    v14 = v20;
    v15 = v19;
    v2 = v18;
    v13 = v17;
    v9 = v16;
    v24 = v53;
    sub_26129BC3C(v23, v2, 0xD000000000000018, 0x80000002613BC610, v22, v25);
    v12 = v57;

    (*(v14 + 8))(v11, v13);
    if (v24)
    {
      goto LABEL_9;
    }
  }

  v26 = *(**(v2 + 24) + 152);

  v26(v27);
  v29 = v28;

  if (v29)
  {
    v53 = v15;
    v30 = *(v2 + 96);
    if (v30)
    {
      type metadata accessor for PINMonitorEventBuilder();
      v51 = v30;
      sub_2612BAC20(2);
      v52 = v14;
      v31 = v54;
      v32 = v55;
      v33 = v56;
      (*(v55 + 16))(v54, *(v2 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v56);
      v34 = sub_26139F0FC();
      v57 = v12;
      v36 = v35;
      (*(v32 + 8))(v31, v33);
      sub_2612BAC6C(4u, v34, v36);
      v14 = v52;

      v12 = v57;

      v37 = sub_2613A03AC();
      sub_2612BAC6C(6u, v37, v38);

      v39 = sub_2613A05AC();
      sub_2612BAC6C(7u, v39, v40);

      v41 = sub_2613A058C();
      v43 = sub_2612BAC6C(8u, v41, v42);

      (*(*v51 + 176))(v43);
    }

    v44 = *(**(v2 + 24) + 160);

    v44(30, 0);

    v15 = v53;
  }

LABEL_9:
  sub_26125A870(v12, v9, &qword_27FE9F560, &qword_2613A3CB0);
  if (v15(v9, 1, v13) == 1)
  {
    v45 = sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v46 = sub_2613A122C();
    v47 = sub_2613A1D8C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_261243000, v46, v47, "Normal return data after UI", v48, 2u);
      MEMORY[0x266701350](v48, -1, -1);
    }

    v45 = (*(v14 + 8))(v9, v13);
  }

  return (*(*v2 + 296))(v45);
}

uint64_t sub_261308D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261308D68()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261262AA4;

  return sub_261307918(v3, v4, v5, v2);
}

uint64_t sub_261308DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for IssuerPINTask(uint64_t a1)
{
  result = qword_27FEAE2E0;
  if (!qword_27FEAE2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261308EB8(uint64_t a1)
{
  sub_261308F88(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_261308F88(uint64_t a1)
{
  if (!qword_27FEA0500)
  {
    sub_26139F13C();
    v1 = sub_2613A1F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEA0500);
    }
  }
}

uint64_t sub_261308FE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalContext_terminalOptions;
  swift_beginAccess();
  return sub_261309038(v1 + v3, a1);
}

uint64_t sub_261309038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2613090A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalContext_terminalOptions;
  swift_beginAccess();
  sub_261309108(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_261309108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2613091D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = a7;
  v25 = a7 >> 8;
  v14 = HIWORD(a7);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalContext_terminalOptions;
  v17 = sub_26139F95C();
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  *(v15 + 96) = v7;
  *(v15 + 97) = v25;
  *(v15 + 98) = v14;
  sub_2613A121C();

  v18 = sub_2613A10CC();
  v20 = v19;

  *(v15 + 64) = v18;
  *(v15 + 72) = v20;
  v21 = sub_2613A10DC();
  v23 = v22;

  *(v15 + 80) = v21;
  *(v15 + 88) = v23;
  return v15;
}

uint64_t sub_261309344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2613093AC()
{

  sub_261309344(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalContext_terminalOptions);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PaymentTerminalContext(uint64_t a1)
{
  result = qword_27FEAE2F0;
  if (!qword_27FEAE2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26130948C(uint64_t a1)
{
  sub_261309538(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_261309538(uint64_t a1)
{
  if (!qword_27FEA0508)
  {
    sub_26139F95C();
    v1 = sub_2613A1F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEA0508);
    }
  }
}

void sub_261309590()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 72);

  v4 = sub_26125B314(v2, v3);

  v113 = v4;
  if (v4)
  {
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = v0[4];
  v8 = v0[5];
  v112 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 1, v7);
  (*(v8 + 24))(&v118, v5, v6, v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2613AC780;
  *(v9 + 32) = sub_2613A101C();
  *(v9 + 40) = v10;
  v11 = sub_2612E6298();
  v13 = *v11;
  v12 = v11[1];
  *&v115 = v13;
  *(&v115 + 1) = v12;

  MEMORY[0x2666FFEA0](10272, 0xE200000000000000);
  v14 = sub_2612E62A4();
  v15 = *v14;
  v16 = *(v14 + 1);

  MEMORY[0x2666FFEA0](v15, v16);

  MEMORY[0x2666FFEA0](41, 0xE100000000000000);
  v17 = v115;
  v18 = MEMORY[0x277D837D0];
  *(v9 + 72) = MEMORY[0x277D837D0];
  *(v9 + 48) = v17;
  *(v9 + 80) = sub_2613A109C();
  *(v9 + 88) = v19;
  v21 = v1[4];
  v20 = v1[5];
  *(v9 + 120) = v18;
  *(v9 + 96) = v21;
  *(v9 + 104) = v20;

  *(v9 + 128) = sub_2613A10BC();
  *(v9 + 136) = v22;
  v24 = v1[2];
  v23 = v1[3];
  *(v9 + 168) = v18;
  *(v9 + 144) = v24;
  *(v9 + 152) = v23;

  *(v9 + 176) = sub_2613A105C();
  *(v9 + 184) = v25;
  v26 = v1[8];
  v27 = v1[9];

  v28 = sub_2612CA370(6, v26, v27);
  v29 = v1;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  *&v115 = 3026478;
  *(&v115 + 1) = 0xE300000000000000;
  v36 = MEMORY[0x2666FFE20](v28, v31, v33, v35);
  v38 = v37;

  *&v114[0] = v36;
  *(&v114[0] + 1) = v38;
  sub_2613A1A1C();
  v39 = sub_2613A1FCC();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v111 = v29;
  v47 = v29[8];
  v46 = v29[9];

  sub_26129C02C(6uLL, v47, v46);
  v49 = v48;
  v51 = v50;

  *(v9 + 216) = MEMORY[0x277D83E40];
  v52 = swift_allocObject();
  *(v9 + 192) = v52;
  v116 = v49;
  v117 = v51;
  v53 = MEMORY[0x2666FFE20](v39, v41, v43, v45);
  v55 = v54;

  *&v114[0] = v53;
  *(&v114[0] + 1) = v55;
  sub_261309E5C();
  sub_2613A1A1C();
  v56 = sub_2613A1FCC();
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v52[2] = v56;
  v52[3] = v58;
  v52[4] = v60;
  v52[5] = v62;
  v63 = MEMORY[0x277D837D0];
  *(v9 + 224) = sub_2613A0FEC();
  *(v9 + 232) = v64;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  if (v119)
  {
    v65 = v118;
  }

  else
  {
    v65 = 0x6E776F6E6B6E75;
  }

  if (v119)
  {
    v66 = v119;
  }

  else
  {
    v66 = 0xE700000000000000;
  }

  MEMORY[0x2666FFEA0](v65, v66);

  v67 = v115;
  *(v9 + 264) = v63;
  *(v9 + 240) = v67;
  *(v9 + 272) = sub_2613A108C();
  *(v9 + 280) = v68;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  v69 = *(v111 + 98);
  LOWORD(v114[0]) = *(v111 + 48);
  BYTE2(v114[0]) = v69;
  sub_2613A21FC();
  *(v9 + 312) = v63;
  *(v9 + 288) = 0;
  *(v9 + 296) = 0xE000000000000000;
  *(v9 + 320) = sub_2613A102C();
  *(v9 + 328) = v70;
  v71 = v120;
  v72 = MEMORY[0x277D839B0];
  *(v9 + 360) = MEMORY[0x277D839B0];
  *(v9 + 336) = v71;
  *(v9 + 368) = sub_2613A107C();
  *(v9 + 376) = v73;
  v74 = v121;
  *(v9 + 408) = v72;
  *(v9 + 384) = v74;
  *(v9 + 416) = sub_2613A100C();
  *(v9 + 424) = v75;
  v76 = v122;
  *(v9 + 456) = v72;
  *(v9 + 432) = v76;
  *(v9 + 464) = sub_2613A0FFC();
  *(v9 + 472) = v77;
  v78 = v123;
  *(v9 + 504) = v72;
  *(v9 + 480) = v78;
  *(v9 + 512) = sub_2613A106C();
  *(v9 + 520) = v79;
  v80 = v124;
  *(v9 + 552) = v72;
  *(v9 + 528) = v80;
  *(v9 + 560) = sub_2613A10AC();
  *(v9 + 568) = v81;
  *&v115 = 0;
  *(&v115 + 1) = 0xE000000000000000;
  if (v126)
  {
    v82 = v125;
  }

  else
  {
    v82 = 0x7974706D65;
  }

  if (v126)
  {
    v83 = v126;
  }

  else
  {
    v83 = 0xE500000000000000;
  }

  MEMORY[0x2666FFEA0](v82, v83);

  v84 = v115;
  *(v9 + 600) = v63;
  *(v9 + 576) = v84;
  sub_2612C59B8(&v118);
  v85 = sub_261259E78(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (!v113 || (v86 = *(*v113 + 376), v87 = , v88 = v86(v87), , !v88))
  {
    v89 = v112;
    goto LABEL_34;
  }

  v89 = v112;
  v90 = v112[7];
  if (!v90 || (v113[2] != v112[6] || v90 != v113[3]) && (sub_2613A241C() & 1) == 0)
  {

    goto LABEL_34;
  }

  v91 = v88[16];
  v92 = v88[15] & 0xFFFFFFFFFFFFLL;
  if ((v91 & 0x2000000000000000) != 0)
  {
    v92 = HIBYTE(v91) & 0xF;
  }

  if (v92)
  {
    v93 = sub_2613A104C();
    v95 = v94;
    v96 = v88[15];
    v97 = v88[16];
    v117 = v63;
    *&v115 = v96;
    *(&v115 + 1) = v97;
    sub_26125A7B0(&v115, v114);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_261258F20(v114, v93, v95, isUniquelyReferenced_nonNull_native);
  }

  if ((*(*v88 + 200))())
  {
    v99 = sub_2613A103C();
    v101 = v100;
    v117 = v63;
    *&v115 = 0x44455249505845;
    *(&v115 + 1) = 0xE700000000000000;
    sub_26125A7B0(&v115, v114);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    sub_261258F20(v114, v99, v101, v102);

LABEL_34:
    (v89[8])(v85, 0);

    return;
  }

  v103 = (*(*v88 + 216))();
  if ((*&v103 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v103 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v103 < 9.22337204e18)
  {
    v104 = v103;
    v105 = sub_2613A103C();
    v107 = v106;
    *&v114[0] = v104 / 60;
    *&v115 = sub_2613A23EC();
    *(&v115 + 1) = v108;
    MEMORY[0x2666FFEA0](58, 0xE100000000000000);
    *&v114[0] = v104 % 60;
    v109 = sub_2613A23EC();
    MEMORY[0x2666FFEA0](v109);

    MEMORY[0x2666FFEA0](0x7466656C20, 0xE500000000000000);
    v117 = MEMORY[0x277D837D0];
    sub_26125A7B0(&v115, v114);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    sub_261258F20(v114, v105, v107, v110);

    goto LABEL_34;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_261309DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  v11 = *(**sub_2612C11DC() + 112);

  v11(v12);

  a6[6] = a2;
  a6[7] = a3;
  a6[8] = a4;
  a6[9] = a5;
  return result;
}

unint64_t sub_261309E5C()
{
  result = qword_27FEA0510;
  if (!qword_27FEA0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0510);
  }

  return result;
}

uint64_t sub_261309EB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_261309EF8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_261309F5C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261309FF8, 0, 0);
}

uint64_t sub_261309FF8()
{
  v1 = v0[7];
  v2 = sub_26129B5FC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = sub_26124C718(v0[7], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "[SAF] decline transaction", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[7];

    v5 = (*(v4 + 8))(v9, v3);
  }

  if ((*((*MEMORY[0x277D85000] & *v0[6]) + 0x1B0))(v5))
  {
    sub_261397E34(v0[5]);
  }

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_26130A21C;
  v12 = v0[5];
  v11 = v0[6];

  return sub_26130A45C(v10, v11, v12, (v0 + 2));
}

uint64_t sub_26130A21C()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 72) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);
    v3 = sub_26130A33C;
  }

  else
  {
    v3 = sub_26130A3F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26130A33C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 25);
  type metadata accessor for StoreAndForwardManager();
  v3 = sub_261272A24(v1, v2);
  *(v0 + 32) = v3;
  sub_2612B45EC();
  swift_willThrowTypedImpl();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_26130A3F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26130A45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[98] = a4;
  v4[97] = a3;
  v4[96] = a2;
  return MEMORY[0x2822009F8](sub_26130A484, 0, 0);
}

uint64_t sub_26130A484()
{
  v8 = *(v0 + 768);
  sub_26130CC3C((v0 + 16));
  v1 = *(v0 + 128);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v1;
  *(v0 + 425) = *(v0 + 137);
  v2 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v2;
  v3 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v3;
  v4 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v4;
  v5 = swift_task_alloc();
  *(v0 + 792) = v5;
  *(v5 + 16) = v0 + 304;
  *(v5 + 24) = vextq_s8(v8, v8, 8uLL);
  v6 = swift_task_alloc();
  *(v0 + 800) = v6;
  *v6 = v0;
  v6[1] = sub_26130A594;

  return sub_26130B004(v6, &unk_2613AC848, v5, v0 + 736);
}

uint64_t sub_26130A594()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 808) = *(v2 + 736);
    *(v2 + 153) = *(v2 + 744);
    v3 = sub_26130A6B4;
  }

  else
  {
    v3 = sub_26130AA08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26130A6B4()
{
  v1 = *(v0 + 768);

  type metadata accessor for SafMonitorEventDispatcher();
  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter;
  v3 = *(v0 + 416);
  *(v0 + 256) = *(v0 + 400);
  *(v0 + 272) = v3;
  *(v0 + 281) = *(v0 + 425);
  v4 = *(v0 + 352);
  *(v0 + 192) = *(v0 + 336);
  *(v0 + 208) = v4;
  v5 = *(v0 + 384);
  *(v0 + 224) = *(v0 + 368);
  *(v0 + 240) = v5;
  v6 = *(v0 + 320);
  *(v0 + 160) = *(v0 + 304);
  *(v0 + 176) = v6;
  v7 = swift_task_alloc();
  *(v0 + 816) = v7;
  *v7 = v0;
  v7[1] = sub_26130A7C4;
  v8 = *(v0 + 808);
  v9 = *(v0 + 776);
  v10 = *(v0 + 153);

  return sub_26129EF48(v1 + v2, v0 + 160, v9, v8, v10);
}

uint64_t sub_26130A7C4()
{

  return MEMORY[0x2822009F8](sub_26130A8C0, 0, 0);
}

uint64_t sub_26130A8C0()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 768)) + 0x1B0))())
  {
    sub_261399030(*(v0 + 776), *(v0 + 808), *(v0 + 153));
  }

  v1 = *(v0 + 153);
  v2 = *(v0 + 808);
  v3 = *(v0 + 784);
  *(v0 + 752) = v2;
  *(v0 + 760) = v1;
  sub_261274084();
  swift_willThrowTypedImpl();
  v4 = *(v0 + 416);
  *(v0 + 544) = *(v0 + 400);
  *(v0 + 560) = v4;
  *(v0 + 569) = *(v0 + 425);
  v5 = *(v0 + 352);
  *(v0 + 480) = *(v0 + 336);
  *(v0 + 496) = v5;
  v6 = *(v0 + 384);
  *(v0 + 512) = *(v0 + 368);
  *(v0 + 528) = v6;
  v7 = *(v0 + 320);
  *(v0 + 448) = *(v0 + 304);
  *(v0 + 464) = v7;
  sub_26124C718(v0 + 448, &qword_27FE9F458, &unk_2613A4BE0);
  *v3 = v2;
  *(v3 + 8) = v1;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26130AA08()
{
  v1 = *(v0 + 416);
  *(v0 + 688) = *(v0 + 400);
  *(v0 + 704) = v1;
  v2 = *(v0 + 352);
  *(v0 + 624) = *(v0 + 336);
  *(v0 + 640) = v2;
  v3 = *(v0 + 384);
  *(v0 + 656) = *(v0 + 368);
  *(v0 + 672) = v3;
  v4 = *(v0 + 320);
  *(v0 + 592) = *(v0 + 304);
  *(v0 + 608) = v4;
  *(v0 + 713) = *(v0 + 425);
  sub_26124C718(v0 + 592, &qword_27FE9F458, &unk_2613A4BE0);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26130AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[60] = a6;
  v7[61] = a7;
  v7[58] = a4;
  v7[59] = a5;
  v7[56] = a2;
  v7[57] = a3;
  return MEMORY[0x2822009F8](sub_26130AADC, 0, 0);
}

uint64_t sub_26130AADC()
{
  v1 = v0[58];
  v2 = v0[56];
  type metadata accessor for StoreAndForwardManager();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  sub_26126B07C(v3, v4, (v0 + 20));
  sub_26130CD20((v0 + 20), v1);
  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = sub_26130ABB8;
  v6 = v0[59];

  return sub_26126CAB0(v3, v4, v6);
}

uint64_t sub_26130ABB8(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v6 + 488);
    *v8 = a1;
    *(v8 + 8) = a2;
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26130AD20, 0, 0);
  }
}

uint64_t sub_26130AD20()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  type metadata accessor for SafMonitorEventDispatcher();
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter;
  *(v0 + 16) = *v2;
  v4 = v2[4];
  v6 = v2[1];
  v5 = v2[2];
  *(v0 + 64) = v2[3];
  *(v0 + 80) = v4;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  v8 = v2[6];
  v7 = v2[7];
  v9 = v2[5];
  *(v0 + 137) = *(v2 + 121);
  *(v0 + 112) = v8;
  *(v0 + 128) = v7;
  *(v0 + 96) = v9;
  sub_26125A870(v0 + 16, v0 + 304, &qword_27FE9F458, &unk_2613A4BE0);
  v10 = swift_task_alloc();
  *(v0 + 504) = v10;
  *v10 = v0;
  v10[1] = sub_26130AE34;
  v11 = *(v0 + 472);

  return sub_26129EB38(v1 + v3, v0 + 16, v11);
}

uint64_t sub_26130AE34()
{
  v1 = *v0;

  sub_26124C718(v1 + 16, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_26130AF48, 0, 0);
}

uint64_t sub_26130AF48()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 480)) + 0x1B0))())
  {
    sub_261399030(*(v0 + 472), 0, 255);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26130B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = v4;
  v5[14] = a4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_26130B02C, 0, 0);
}

uint64_t sub_26130B02C()
{
  sub_26130C424();
  v1 = sub_26130C608(0x80000002613BC760);
  *(v0 + 120) = v1;
  v2 = v1;
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & **(v0 + 104)) + 0x180))();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for StoreAndForwardManager();
    v5 = sub_261269430();
    v9 = *((*v3 & **(v0 + 104)) + 0x188);

    v9(v10);
  }

  *(v0 + 128) = v5;
  v11 = (*(v0 + 88) + **(v0 + 88));
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_26130B2D4;
  v7 = *(v0 + 80);

  return v11(v7, v2, v5, v0 + 56);
}

uint64_t sub_26130B2D4()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 144) = *(v2 + 56);
    *(v2 + 49) = *(v2 + 64);
    v3 = sub_26130B3F4;
  }

  else
  {
    v3 = sub_26130B474;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26130B3F4()
{

  v1 = *(v0 + 49);
  v2 = *(v0 + 112);
  *v2 = *(v0 + 144);
  *(v2 + 8) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26130B474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26130B668(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_26139F13C();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_26139F11C();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_26130B794;

  return sub_261309F5C(v7);
}

uint64_t sub_26130B794(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *v2;

  v7 = v4[6];
  v8 = v4[2];
  (*(v4[4] + 8))(v4[5], v4[3]);

  if (v1)
  {
    sub_2612B45EC();
    v9 = swift_allocError();
    *v10 = a1;
    v11 = sub_26139EE6C();
    (*(v7 + 16))(v7, v11);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(v5[6]);

  v12 = v6[1];

  return v12();
}

uint64_t sub_26130B98C()
{
  *(v1 + 72) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26130BA28, 0, 0);
}

uint64_t sub_26130BA28()
{
  v1 = *(v0 + 80);
  v2 = sub_26129B5FC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(*(v0 + 80), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = sub_2613A122C();
    v6 = sub_2613A1D9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261243000, v5, v6, "[SAF] status", v7, 2u);
      MEMORY[0x266701350](v7, -1, -1);
    }

    v8 = *(v0 + 80);

    (*(v4 + 8))(v8, v3);
  }

  sub_26130C424();
  v9 = sub_26130C608(0x80000002613BC760);
  *(v0 + 88) = v9;
  v10 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & **(v0 + 72)) + 0x180))();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    type metadata accessor for StoreAndForwardManager();
    v12 = sub_261269430();
    v17 = *((*v10 & **(v0 + 72)) + 0x188);

    v17(v18);
  }

  *(v0 + 96) = v12;
  v14 = *(v9 + 80);
  v13 = *(v9 + 88);
  v15 = swift_task_alloc();
  *(v0 + 104) = v15;
  *v15 = v0;
  v15[1] = sub_26130BDDC;

  return sub_26126BF78(v14, v13);
}

uint64_t sub_26130BDDC(uint64_t a1, char a2)
{
  v5 = *v3;
  *(*v3 + 112) = a1;

  if (v2)
  {
    *(v5 + 49) = a2;
    v6 = sub_26130BF80;
  }

  else
  {
    v6 = sub_26130BF04;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26130BF04()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_26130BF80()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 49);
  type metadata accessor for StoreAndForwardManager();
  v3 = sub_261272A24(v1, v2);
  *(v0 + 56) = v3;
  sub_2612B45EC();
  swift_willThrowTypedImpl();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_26130C1C0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_26130C268;

  return sub_26130B98C();
}

uint64_t sub_26130C268(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  v7 = *(v4 + 24);
  if (v1)
  {
    sub_2612B45EC();
    v8 = swift_allocError();
    *v9 = a1;
    v10 = sub_26139EE6C();
    (v7)[2](v7, 0, v10);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v11 = *(v6 + 8);

  return v11();
}

uint64_t sub_26130C424()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  if ((*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) & 1) == 0)
  {
    v5 = sub_26129B5FC();
    sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v6 = sub_2613A124C();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v8 = sub_2613A122C();
      v9 = sub_2613A1D8C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_261243000, v8, v9, "[SAF] no entitlement", v10, 2u);
        MEMORY[0x266701350](v10, -1, -1);
      }

      (*(v7 + 8))(v4, v6);
    }

    v11 = 0;
    v12 = 2;
    sub_261274084();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26130C608(uint64_t a1)
{
  v38 = a1;
  v2 = sub_26139FDCC();
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26139FAEC();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26139FB7C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - v14;
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x2A0))(v13);
  if (!result)
  {
    v31 = v5;
    v32 = v11;
    v17 = v36;
    v33 = v7;
    v34 = v9;
    v35 = v8;
    v41 = v4;
    v18 = sub_26129B5FC();
    sub_26125A870(v18, v15, &qword_27FE9F560, &qword_2613A3CB0);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v15, 1, v19) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
      v21 = v2;
      v23 = v32;
      v22 = v33;
    }

    else
    {
      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();
      v26 = os_log_type_enabled(v24, v25);
      v21 = v2;
      v23 = v32;
      if (v26)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261243000, v24, v25, "[SAF] no context", v27, 2u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      (*(v20 + 8))(v15, v19);
      v22 = v33;
    }

    (*(v37 + 104))(v22, *MEMORY[0x277D43868], v31);
    (*(v17 + 104))(v41, *MEMORY[0x277D43978], v21);
    v28 = objc_opt_self();

    v29 = [v28 processInfo];
    v30 = [v29 processName];

    sub_2613A18CC();
    sub_26139FB6C();
    sub_26139FDBC();
    v39 = 0;
    v40 = 2;
    sub_261274084();
    swift_willThrowTypedImpl();
    (*(v34 + 8))(v23, v35);
    return 0;
  }

  return result;
}

uint64_t sub_26130CADC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_26130C1C0(v2, v3);
}

uint64_t sub_26130CB88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_26130B668(v2, v3, v4);
}

double sub_26130CC3C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_26130CC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_261262AA4;

  return sub_26130AAB4(v12, a2, a3, v9, v10, v11, a4);
}

uint64_t sub_26130CD20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F458, &unk_2613A4BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26130CEDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id sub_26130CF30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v10 = v9;
  v58 = a7;
  v59 = a8;
  v57 = a6;
  v54 = a4;
  v55 = a5;
  v56 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - v15;
  v17 = objc_allocWithZone(v9);
  v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession] = 0;
  v18 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0518, &unk_2613AC888);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0520, &unk_2613AC898);
  v21 = type metadata accessor for TransactionUIManager(0);
  *&v17[v18] = sub_26127B4E0(0, v19, v20, v21);
  v22 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0528, &unk_2613AC8A8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0530, &qword_2613AC8B8);
  v25 = type metadata accessor for RegistrationUIManager(0);
  *&v17[v22] = sub_26127B4E0(1u, v23, v24, v25);
  v26 = *(**sub_2612C11DC() + 112);

  v26(v27);

  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cachedSAFManager] = 0;
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask] = 0;
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_analyticsTask] = 0;
  v28 = &v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion];
  *v28 = 0;
  v28[1] = 0;
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask] = 0;
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask] = 0;
  v29 = &v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion];
  *v29 = 0;
  v29[1] = 0;
  v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_voiceOverRequiresReEnabling] = 0;
  v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readerSessionActive] = 0;
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask] = 0;
  v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup] = 0;
  v30 = &v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion];
  *v30 = 0;
  v30[1] = 0;
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_context] = 0;
  v31 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuation;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0560, &unk_2613AC8C0);
  v33 = *(*(v32 - 8) + 56);
  v33(&v17[v31], 1, 1, v32);
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuationTimeout] = 0;
  v33(&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuation], 1, 1, v32);
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuationTimeout] = 0;
  v34 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_continuityDisplayMonitor;
  type metadata accessor for ContinuityDisplayMonitor();
  *&v17[v34] = sub_2612FC220();
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_deprecationAlertDialog] = 0;
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_connection] = a1;
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client] = a2;
  v35 = &v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_bundleId];
  v36 = v54;
  v37 = v55;
  *v35 = a3;
  v35[1] = v36;
  v38 = &v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_installId];
  v40 = v57;
  v39 = v58;
  *v38 = v37;
  v38[1] = v40;
  v41 = &v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_seInfo];
  *v41 = v39;
  *(v41 + 1) = v59;
  v41[16] = v56 & 1;
  v42 = a1;
  swift_unknownObjectRetain();
  sub_26128DAD8(v42, v61);
  v43 = &v17[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements];
  v44 = v61[3];
  *(v43 + 2) = v61[2];
  *(v43 + 3) = v44;
  *(v43 + 4) = v62[0];
  *(v43 + 79) = *(v62 + 15);
  v45 = v61[1];
  *v43 = v61[0];
  *(v43 + 1) = v45;
  v60.receiver = v17;
  v60.super_class = v10;
  v46 = objc_msgSendSuper2(&v60, sel_init);
  v47 = sub_26129B5FC();
  sub_26125A870(v47, v16, &qword_27FE9F560, &qword_2613A3CB0);
  v48 = sub_2613A124C();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v16, 1, v48) == 1)
  {

    swift_unknownObjectRelease();
    sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v50 = sub_2613A122C();
    v51 = sub_2613A1D9C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_261243000, v50, v51, "created", v52, 2u);
      MEMORY[0x266701350](v52, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v49 + 8))(v16, v48);
  }

  return v46;
}

id sub_26130D468()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = *(**sub_2612C11DC() + 120);

  v5(v6);

  v7 = *(**&v0[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager] + 568);

  v7(v8);

  v9 = *(**&v0[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager] + 448);

  v9(v10);

  v11 = sub_26129B5FC();
  sub_26125A870(v11, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v14 = sub_2613A122C();
    v15 = sub_2613A1D9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261243000, v14, v15, "destroyed", v16, 2u);
      MEMORY[0x266701350](v16, -1, -1);
    }

    (*(v13 + 8))(v4, v12);
  }

  v17 = type metadata accessor for PaymentTerminalService(0);
  v19.receiver = v1;
  v19.super_class = v17;
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

uint64_t sub_26130D954()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "onDisconnect", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v8 = (*(v7 + 8))(v4, v6);
  }

  v12 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
  v13 = (*(*v12 + 536))(v8);
  v14 = *v12;
  if (v13)
  {
    if (((*(v14 + 520))() & 1) == 0)
    {
      v15 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
      if (v15)
      {
        v16 = *(*v15 + 296);

        v16(2);
      }

      v17 = &selRef_updateWithTransactionEvent_;
      v18 = 20;
      return [v12 *v17];
    }
  }

  else
  {
    result = (*(v14 + 544))();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v17 = &selRef_errorInDaemonWithError_;
  v18 = 2;
  return [v12 *v17];
}

void *sub_26130DC08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v1, 0xD000000000000016, 0x80000002613BD0E0, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  [*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client) closed_];
  result = [*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_connection) invalidate];
  if (*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readerSessionActive) == 1)
  {
    *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readerSessionActive) = 0;
    v12 = MEMORY[0x277D85000];
    v13 = *((*MEMORY[0x277D85000] & *v1) + 0x1B0);
    v14 = v13(result);
    if (v14)
    {
      sub_26139AA34();
    }

    v15 = v13(v14);
    if (v15)
    {
      sub_261391B34(0);
    }

    result = (*((*v12 & *v1) + 0x2A0))(v15);
    if (result)
    {

      j_nullsub_1();
      v17 = v16;
      v19 = v18;
      v25 = &type metadata for ReaderInactive;
      v26 = sub_2613246E4();
      *&v24 = v17;
      *(&v24 + 1) = v19;
      sub_2612B64A4(1, &v24, v27);
      v20 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter);
      v21 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
      v22 = v20[4];
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v22 + 120))(v27, v21, v22);
      return sub_2612A0E50(v27);
    }
  }

  return result;
}

void sub_26130DF80(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v5 = v4;
  v33 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v32 = sub_26129B5FC();
  sub_26125A870(v32, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  v31 = *(v16 + 48);
  if (v31(v14, 1, v15) == 1)
  {
    v17 = sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v30 = v15;
    v18 = sub_26125A798();
    v19 = sub_261291AA8();
    v29 = a2;
    v15 = v30;
    sub_26129BC3C(v18 & 1, v5, 0xD00000000000001ELL, 0x80000002613BC8D0, v19, v20);
    a2 = v29;

    v17 = (*(v16 + 8))(v14, v15);
  }

  v21 = (*((*MEMORY[0x277D85000] & *v5) + 0x2A0))(v17);
  if (v21)
  {
    v22 = v21;
    if (sub_26130E39C(a3))
    {
      type metadata accessor for LinkTask();

      v23 = sub_261345EA4(v22, v33, a2, 0);
      (*(*v23 + 200))(a3, a4);
    }

    else
    {
      sub_26125A870(v32, v12, &qword_27FE9F560, &qword_2613A3CB0);
      if (v31(v12, 1, v15) == 1)
      {

        sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v26 = sub_2613A122C();
        v27 = sub_2613A1D9C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_261243000, v26, v27, "linkPreCheck - failed", v28, 2u);
          MEMORY[0x266701350](v28, -1, -1);
        }

        (*(v16 + 8))(v12, v15);
      }
    }
  }

  else
  {
    v34[0] = 0x65746E6F63206F6ELL;
    v34[1] = 0xEA00000000007478;
    sub_261314DEC(v34, &v35);
    v24 = objc_allocWithZone(sub_26139F2CC());
    v25 = sub_26139F2DC();
    a3(0, v25);
  }
}

uint64_t sub_26130E39C(void (*a1)(void, void *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18[-1] - v4;
  type metadata accessor for Mock();
  if (sub_26129B0F4(6))
  {
    v6 = sub_26129B5FC();
    sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
      return 1;
    }

    else
    {
      v11 = sub_2613A122C();
      v12 = sub_2613A1D9C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_261243000, v11, v12, "linkPreCheck - ui mode, so always pass", v13, 2u);
        MEMORY[0x266701350](v13, -1, -1);
      }

      (*(v8 + 8))(v5, v7);
      return 1;
    }
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80))
    {
      sub_2613A121C();
      if (sub_2613A10FC())
      {
        if (!*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion))
        {
          return 1;
        }

        v18[0] = 0xD000000000000010;
        v18[1] = 0x80000002613BC930;
        sub_261314DEC(v18, &v19);
        v10 = objc_allocWithZone(sub_26139F2CC());
      }

      else
      {
        v18[0] = 0xD000000000000032;
        v18[1] = 0x80000002613BC8F0;
        sub_261314DEC(v18, &v19);
        v15 = objc_allocWithZone(sub_26139F2CC());
      }
    }

    else
    {
      strcpy(v18, "no entitlement");
      HIBYTE(v18[1]) = -18;
      sub_261314DEC(v18, &v19);
      v14 = objc_allocWithZone(sub_26139F2CC());
    }

    v16 = sub_26139F2DC();
    a1(0, v16);

    return 0;
  }
}

void sub_26130E754(uint64_t a1, uint64_t a2, int a3, void (*a4)(void, void *), uint64_t a5)
{
  v6 = v5;
  v46 = a1;
  v47 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v44 = sub_26129B5FC();
  sub_26125A870(v44, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  v43 = *(v17 + 48);
  v18 = v43(v15, 1, v16);
  v45 = a3;
  if (v18 == 1)
  {
    v19 = sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v48 = 0x206B6E696C6572;
    v49 = 0xE700000000000000;
    if (a3)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    v41 = a5;
    v42 = a4;
    if (a3)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x2666FFEA0](v20, v21);

    v22 = v48;
    v23 = v49;
    v24 = sub_26125A798();
    sub_26129BC3C(v24 & 1, v6, 0xD000000000000021, 0x80000002613BC950, v22, v23);
    a5 = v41;
    a4 = v42;

    v19 = (*(v17 + 8))(v15, v16);
  }

  v25 = (*((*MEMORY[0x277D85000] & *v6) + 0x2A0))(v19);
  if (v25)
  {
    v26 = v25;
    if (sub_26130E39C(a4))
    {
      v27 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
      v28 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
      v29 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion + 8);
      *v27 = a4;
      v27[1] = a5;

      sub_26124A228(v28, v29);
      type metadata accessor for LinkTask();

      v30 = v47;

      LOBYTE(v29) = v45 & 1;
      v31 = v46;
      v32 = sub_261345EA4(v26, v46, v30, v45 & 1);
      v33 = swift_allocObject();
      *(v33 + 16) = v6;
      *(v33 + 24) = a4;
      *(v33 + 32) = a5;
      *(v33 + 40) = v32;
      *(v33 + 48) = v31;
      *(v33 + 56) = v30;
      *(v33 + 64) = v29;
      *(v33 + 72) = v26;
      v34 = *(*v32 + 192);

      v35 = v6;

      v34(sub_26131FF6C, v33);
    }

    else
    {
      sub_26125A870(v44, v13, &qword_27FE9F560, &qword_2613A3CB0);
      if (v43(v13, 1, v16) == 1)
      {

        sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v38 = sub_2613A122C();
        v39 = sub_2613A1D9C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_261243000, v38, v39, "linkPreCheck - failed", v40, 2u);
          MEMORY[0x266701350](v40, -1, -1);
        }

        (*(v17 + 8))(v13, v16);
      }
    }
  }

  else
  {
    v48 = 0x65746E6F63206F6ELL;
    v49 = 0xEA00000000007478;
    sub_261314DEC(&v48, &v50);
    v36 = objc_allocWithZone(sub_26139F2CC());
    v37 = sub_26139F2DC();
    a4(0, v37);
  }
}

void sub_26130EC44(char a1, void *a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 *a10)
{
  v41 = a8;
  v16 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v38 - v18;
  if ((a1 & 1) == 0)
  {
    sub_26130EFF0(2, a2);
    return;
  }

  type metadata accessor for Mock();
  if (sub_26129B0F4(6))
  {
    goto LABEL_5;
  }

  sub_2613A121C();
  sub_2613A113C();
  if (v20)
  {

LABEL_5:
    *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask) = a6;

    *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup) = 0;
    v21 = a10[96];
    v22 = a10[97];
    v23 = a10[98];
    v24 = sub_26129B5FC();
    sub_26125A870(v24, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v25 = sub_2613A124C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v19, 1, v25) == 1)
    {
      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v40 = a9;
      v27 = sub_26125A798();
      v28 = sub_261291AA8();
      v39 = v23;
      v16 = v40;
      sub_26129BC3C(v27 & 1, a3, 0xD000000000000020, 0x80000002613BC980, v28, v29);
      v23 = v39;

      (*(v26 + 8))(v19, v25);
    }

    v30 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager);
    (*(*v30 + 368))(a3);
    v31 = *(*v30 + 488);
    v32 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_connection);
    v31(a7, v41, v16 & 1, v32, v21 | (v22 << 8) | (v23 << 16));

    return;
  }

  v42[0] = 0xD000000000000032;
  v42[1] = 0x80000002613BD100;
  sub_261314DEC(v42, &v43);
  v33 = objc_allocWithZone(sub_26139F2CC());
  v34 = sub_26139F2DC();
  a4(0, v34);

  v35 = (a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
  v36 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
  v37 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion + 8);
  *v35 = 0;
  v35[1] = 0;

  sub_26124A228(v36, v37);
}

void *sub_26130EFF0(char a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager);
  if ((*(*v6 + 192))())
  {
    (*(*v6 + 456))();
  }

  if (a1 == 2)
  {
    v7 = v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion;
    v8 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
    if (a2)
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = *(v7 + 8);
      v10 = a2;
      sub_26124A17C(v8, v9);
      v8(0, a2);
      v11 = v8;
      v12 = v9;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v15 = *(v7 + 8);
      v16 = objc_allocWithZone(sub_26139F2CC());

      v10 = sub_26139F2DC();
      v8(0, v10);
      v11 = v8;
      v12 = v15;
    }

    sub_26124A228(v11, v12);
  }

  else
  {
    v13 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
    if (v13)
    {
      v14 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion + 8);

      v13(a1 & 1, 0);
      sub_26124A228(v13, v14);
    }
  }

LABEL_12:
  v17 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup;
  if ((*(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup) & 1) == 0)
  {
    *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask) = 0;

    *(v3 + v17) = 0;
  }

  v18 = (v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
  v19 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
  v20 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion + 8);
  *v18 = 0;
  v18[1] = 0;
  result = sub_26124A228(v19, v20);
  if (*(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) == 1)
  {
    *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) = 0;

    return sub_26130DC08();
  }

  return result;
}

void sub_26130F34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_2613A17EC();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

uint64_t sub_26130F3D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = (*(**(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) + 528))(v2);
  v6 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  v7 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
  v8 = sub_26129B5FC();
  sub_26125A870(v8, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D9C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109632;
      *(v13 + 4) = v5 & 1;
      *(v13 + 8) = 1024;
      *(v13 + 10) = v6 != 0;
      *(v13 + 14) = 1024;
      *(v13 + 16) = v7 != 0;
      _os_log_impl(&dword_261243000, v11, v12, "checking busy, UI visible: %{BOOL}d, readTask: %{BOOL}d, pinTask: %{BOOL}d", v13, 0x14u);
      MEMORY[0x266701350](v13, -1, -1);
    }

    (*(v10 + 8))(v4, v9);
  }

  return v5 & 1 | (v6 != 0) | (v7 != 0);
}

uint64_t sub_26130F630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = v43 - v7;
  v8 = sub_26139FC1C();
  v49 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v43 - v11;
  v13 = *(**sub_2612B4F84() + 88);

  v13(v51, v14);

  if (v51[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0600, &qword_2613AC8E0);
    type metadata accessor for SessionTask(0);
    v15 = swift_dynamicCast();
    v16 = v50;
    if (!v15)
    {
      v16 = 0;
    }

    v48 = v16;
  }

  else
  {
    sub_26124C718(v51, &qword_27FE9FAC0, &qword_2613A7F30);
    v48 = 0;
  }

  v17 = v49;
  v18 = *(v49 + 16);
  v18(v12, a2, v8);
  v19 = *(v17 + 88);
  v20 = v19(v12, v8);
  if (v20 != *MEMORY[0x277D43908])
  {

    (*(v17 + 8))(v12, v8);
LABEL_29:
    v41 = 0;
    return v41 & 1;
  }

  v21 = v20;
  v44 = a1;
  v45 = v3;
  v22 = *(v17 + 96);
  v22(v12, v8);
  v23 = *(v12 + 1);
  v24 = v48;
  if (!v48)
  {
LABEL_28:

    goto LABEL_29;
  }

  v43[0] = v22;
  v43[1] = v23;
  v25 = v47;
  v18(v47, v48 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType, v8);
  v26 = v19(v25, v8);
  v27 = v24;
  if (v26 != v21)
  {

    (*(v49 + 8))(v25, v8);
    goto LABEL_29;
  }

  (v43[0])(v25, v8);
  v28 = *v25;
  v29 = sub_26129B5FC();
  v30 = v46;
  sub_26125A870(v29, v46, &qword_27FE9F560, &qword_2613A3CB0);
  v31 = sub_2613A124C();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_26124C718(v30, &qword_27FE9F560, &qword_2613A3CB0);
    v33 = v44;
  }

  else
  {

    v34 = sub_2613A122C();
    v35 = sub_2613A1D7C();
    v36 = os_log_type_enabled(v34, v35);
    v33 = v44;
    if (v36)
    {
      v49 = v28;
      v37 = swift_slowAlloc();
      *v37 = 134218240;
      v38 = *(v27 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_serviceId);
      if (v38)
      {
        v38 = sub_2613A187C();
      }

      *(v37 + 4) = v38;
      v27 = v48;

      *(v37 + 12) = 2048;
      *(v37 + 14) = sub_2613A187C();
      _os_log_impl(&dword_261243000, v34, v35, "checking rebind to %ld from %ld", v37, 0x16u);
      MEMORY[0x266701350](v37, -1, -1);
    }

    else
    {
    }

    (*(v32 + 8))(v30, v31);
  }

  if (*(v27 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_serviceId))
  {
    v39 = sub_2613A187C();
    if (v39 == sub_2613A187C())
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  else
  {
    sub_2613A187C();
  }

  v40 = *(v27 + 24);
  if ((*(v40 + 64) != *(v33 + 64) || *(v40 + 72) != *(v33 + 72)) && (sub_2613A241C() & 1) == 0)
  {
    goto LABEL_27;
  }

  v41 = sub_2613A0FBC();

  return v41 & 1;
}

uint64_t sub_26130FBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0650, &qword_2613ACAC0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEA0658, &qword_2613ACAC8);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26130FD24, 0, 0);
}

uint64_t sub_26130FD24()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(**(v0 + 32) + 264))();
  sub_2613A1C4C();
  (*(v2 + 8))(v1, v3);
  *(v0 + 104) = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_26130FE50;
  v5 = *(v0 + 80);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v5);
}

uint64_t sub_26130FE50()
{

  return MEMORY[0x2822009F8](sub_26130FF4C, 0, 0);
}

uint64_t sub_26130FF4C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 48);
    v5 = sub_26129B5FC();
    sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v6 = sub_2613A124C();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_26124C718(*(v0 + 48), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v8 = sub_2613A122C();
      v9 = sub_2613A1D7C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = v1;
        _os_log_impl(&dword_261243000, v8, v9, "progress %ld", v10, 0xCu);
        MEMORY[0x266701350](v10, -1, -1);
      }

      v11 = *(v0 + 48);

      (*(v7 + 8))(v11, v6);
    }

    [*(*(v0 + 40) + *(v0 + 104)) loading_];
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_26130FE50;
    v13 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 16, 0, 0, v13);
  }
}

uint64_t sub_2613101E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[42] = a8;
  v8[43] = v16;
  v8[40] = a6;
  v8[41] = a7;
  v8[39] = a5;
  v10 = sub_26139FC1C();
  v8[44] = v10;
  v8[45] = *(v10 - 8);
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v11 = sub_26139F64C();
  v8[49] = v11;
  v8[50] = *(v11 - 8);
  v8[51] = swift_task_alloc();
  v14 = (*(*a4 + 272) + **(*a4 + 272));
  v12 = swift_task_alloc();
  v8[52] = v12;
  *v12 = v8;
  v12[1] = sub_261310400;

  return v14(v8 + 10);
}

uint64_t sub_261310400()
{

  return MEMORY[0x2822009F8](sub_2613104FC, 0, 0);
}

uint64_t sub_2613104FC()
{
  v76 = v0;
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v4;
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 57) = *(v0 + 121);
  sub_26139F60C();
  sub_26139F5BC();
  (*(v2 + 8))(v1, v3);
  if ((*(v0 + 72) & 1) == 0)
  {
    v18 = *(v0 + 336);
    v19 = *(v0 + 320);
    v20 = *(v0 + 328);
    *v72 = *(v0 + 16);
    *&v72[8] = *(v0 + 24);
    *&v72[24] = *(v0 + 40);
    *&v72[40] = *(v0 + 56);
    v21 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v21;
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 185) = *(v0 + 57);
    sub_261324738(v0 + 144, v0 + 208);
    v22 = sub_261310B4C(v72, v19, v20);
    v18(v22, 0);
    sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);

    sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);
    goto LABEL_24;
  }

  v5 = *(v0 + 16);
  sub_26139F2BC();
  v6 = sub_26139F2FC();
  if (v6 != sub_26139F2FC())
  {
    sub_26139F2BC();
    v23 = sub_26139F2FC();
    if (v23 != sub_26139F2FC())
    {
      goto LABEL_16;
    }

    v24 = *(v0 + 376);
    v25 = *(v0 + 352);
    v26 = *(v0 + 360);
    sub_26139FEBC();
    v27 = (*(v26 + 88))(v24, v25);
    v11 = *(v0 + 376);
    v12 = *(v0 + 352);
    v13 = *(v0 + 360);
    if (v27 == *MEMORY[0x277D43908])
    {
      (*(v13 + 96))(*(v0 + 376), v12);
      v34 = sub_2612F6894(*v11, v11[1], v28, v29, v30, v31, v32, v33, v69);
      if (v35)
      {
        v36 = v35;
        v71 = v34;
      }

      else
      {
        v71 = sub_2613A0CFC();
        v36 = v37;
      }

      v38 = (*((*MEMORY[0x277D85000] & **(v0 + 312)) + 0x2A0))();
      if (v38)
      {
        v39 = *(v38 + 64);
        v40 = *(v38 + 72);
      }

      else
      {
        v39 = sub_2613A0CFC();
        v40 = v41;
      }

      v70 = *(v0 + 312);
      v42 = sub_2613A0CFC();
      v44 = v43;
      v45 = [v5 description];
      v46 = sub_2613A18CC();
      v48 = v47;

      sub_2612A77D4(v39, v40, v71, v36, v42, v44, v46, v48, v72);
      v74 = &type metadata for InternalSessionError;
      v75 = sub_2613248C8();
      v49 = swift_allocObject();
      *&v73 = v49;
      v50 = *&v72[16];
      v49[1] = *v72;
      v49[2] = v50;
      v51 = *&v72[48];
      v49[3] = *&v72[32];
      v49[4] = v51;
      sub_2612B64A4(6, &v73, (v0 + 264));
      v52 = *(v70 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
      v53 = *(v70 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
      __swift_project_boxed_opaque_existential_1((v70 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v52);
      (*(v53 + 120))(v0 + 264, v52, v53);
      sub_2612A0E50(v0 + 264);

      goto LABEL_16;
    }

LABEL_10:
    (*(v13 + 8))(v11, v12);
    goto LABEL_16;
  }

  v7 = *(v0 + 384);
  v8 = *(v0 + 352);
  v9 = *(v0 + 360);
  sub_26139FEBC();
  v10 = (*(v9 + 88))(v7, v8);
  v11 = *(v0 + 384);
  v12 = *(v0 + 352);
  v13 = *(v0 + 360);
  if (v10 != *MEMORY[0x277D43908])
  {
    goto LABEL_10;
  }

  (*(v13 + 96))(*(v0 + 384), v12);
  v15 = *v11;
  v14 = v11[1];
  type metadata accessor for LinkTask();

  v17 = sub_261345EA4(v16, v15, v14, 0);
  (*(*v17 + 240))(v17);

LABEL_16:
  v55 = *(v0 + 360);
  v54 = *(v0 + 368);
  v56 = *(v0 + 352);
  sub_26139FEBC();
  v57 = (*(v55 + 88))(v54, v56);
  v58 = *MEMORY[0x277D43900];
  (*(v55 + 8))(v54, v56);
  if (v57 == v58)
  {
    v59 = sub_26125B314(*(*(v0 + 328) + 64), *(*(v0 + 328) + 72));
    if (v59)
    {
      v60 = (*(*v59 + 376))(v59);
    }

    else
    {
      v60 = 0;
    }

    if ((*((*MEMORY[0x277D85000] & **(v0 + 312)) + 0x1B0))(v59))
    {
      v61 = [v5 description];
      v62 = sub_2613A18CC();
      v64 = v63;

      sub_261399FA8(v60, v62, v64);
    }
  }

  v65 = *(v0 + 336);
  v66 = *(v0 + 16);
  v65(0, v5);
  sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);
  sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);

LABEL_24:

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_261310B4C(uint64_t a1, _BYTE *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0280, &qword_2613AB430);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v75 = &v65[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v65[-v13];
  v68 = sub_26139FC1C();
  v15 = *(v68 - 8);
  v16 = MEMORY[0x28223BE20](v68);
  v18 = &v65[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a1;
  v20 = *(a1 + 9);
  v21 = *(a1 + 24);
  v73 = *(a1 + 16);
  v72 = v21;
  v22 = *(a1 + 40);
  v71 = *(a1 + 32);
  v70 = v22;
  v69 = *(a1 + 48);
  v76 = v3;
  v23 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readerSessionActive);
  v74 = v10;
  if ((v23 & 1) == 0)
  {
    v66 = v20;
    v67 = a2;
    v24 = v19;
    v25 = v76;
    *(v76 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readerSessionActive) = 1;
    if ((*((*MEMORY[0x277D85000] & *v25) + 0x1B0))(v16))
    {
      sub_261391B34(1);
    }

    nullsub_1();
    v27 = v26;
    v29 = v28;
    v30 = *(v76 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
    v31 = *(v76 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
    __swift_project_boxed_opaque_existential_1((v76 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v30);
    v82 = &type metadata for ReaderActive;
    v83 = sub_261324794();
    *&v80 = v27;
    *(&v80 + 1) = v29;
    sub_2612B64A4(0, &v80, v84);
    (*(v31 + 120))(v84, v30, v31);
    v16 = sub_2612A0E50(v84);
    v19 = v24;
    v20 = v66;
  }

  if (v20 && (*(*v19 + 376))(v16))
  {

    sub_2612B94C4();
    v78 = &type metadata for SessionCreated;
    v79 = sub_26132482C();
    v32 = swift_allocObject();
    *&v77 = v32;
    v33 = v84[1];
    v32[1] = v84[0];
    v32[2] = v33;
    v32[3] = v84[2];
    sub_2612B64A4(7, &v77, &v80);
    v34 = *(v76 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
    v35 = *(v76 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
    v67 = v14;
    __swift_project_boxed_opaque_existential_1((v76 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v34);
    v14 = v67;
    (*(v35 + 120))(&v80, v34, v35);

    sub_2612A0E50(&v80);
  }

  sub_26139FEBC();
  v36 = v68;
  v37 = (*(v15 + 88))(v18, v68);
  v38 = *MEMORY[0x277D43900];
  v39 = (*(v15 + 8))(v18, v36);
  if (v37 == v38)
  {
    v40 = (*(*v19 + 376))(v39);
    if (v40)
    {
      v41 = v40;
      if ((*((*MEMORY[0x277D85000] & *v76) + 0x1B0))())
      {
        sub_2613993D8(v41);
      }
    }
  }

  sub_26139FECC();
  v42 = sub_26139F95C();
  (*(*(v42 - 8) + 56))(v14, 0, 1, v42);
  (*(*a3 + 144))(v14);
  sub_2612F9F2C();
  v43 = a3[4];

  sub_2612FB13C();

  v44 = v76;
  v45 = *((*MEMORY[0x277D85000] & *v76) + 0x1B0);

  v45(v46);
  v47 = sub_261378868(v19, v43);
  v49 = v48;
  v67 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v73;
  v55 = v72;
  *&v80 = v73;
  *(&v80 + 1) = v72;
  v68 = v19;
  v56 = v71;
  v57 = v70;
  v81 = v71;
  v82 = v70;
  v58 = v69;
  v83 = v69;
  sub_2613247E8(v73, v72, v71, v70, v69);
  v59 = sub_26137887C(&v80, v47, v49, v51, v53);
  sub_261273F3C(v80, *(&v80 + 1), v81, v82, v83);
  *(v44 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_deprecationAlertDialog) = v59;

  *&v80 = v54;
  *(&v80 + 1) = v55;
  v81 = v56;
  v82 = v57;
  v83 = v58;
  sub_2613247E8(v54, v55, v56, v57, v58);
  v60 = v75;
  sub_261378DC0(&v80, v75);
  sub_261273F3C(v80, *(&v80 + 1), v81, v82, v83);
  v61 = sub_26125A870(v60, v74, &qword_27FEA0280, &qword_2613AB430);
  (*(*v68 + 184))(v61);
  v62 = objc_allocWithZone(sub_26139F89C());
  v63 = sub_26139F88C();

  sub_26124C718(v60, &qword_27FEA0280, &qword_2613AB430);
  return v63;
}

uint64_t sub_2613113B4(int a1, char a2)
{
  v5 = sub_26139FDCC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_26139FAEC();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_26139FB7C();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v54 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v56 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v44[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v44[-v15];
  v57 = sub_26129B5FC();
  sub_26125A870(v57, v16, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v16, 1, v17) == 1)
  {
    v20 = sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v22 = sub_26125A798();
    v23 = sub_261291AA8();
    v45 = a1;
    sub_26129BC3C(v22 & 1, v2, 0xD000000000000022, 0x80000002613BCA30, v23, v24);
    LOBYTE(a1) = v45;

    v20 = (*(v18 + 8))(v16, v17);
  }

  v21 = v2;
  if (*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 82) == 1 && (a2 & 1) != 0)
  {
    v25 = v56;
    sub_26125A870(v57, v56, &qword_27FE9F560, &qword_2613A3CB0);
    if (v19(v25, 1, v17) == 1)
    {
      return sub_26124C718(v25, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v34 = sub_2613A122C();
      v35 = sub_2613A1D9C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_261243000, v34, v35, "Close session skipped - has retail entitlement and is backgrounded", v36, 2u);
        MEMORY[0x266701350](v36, -1, -1);
      }

      return (*(v18 + 8))(v25, v17);
    }
  }

  else
  {
    v27 = (*((*MEMORY[0x277D85000] & *v2) + 0x2A0))(v20);
    if (v27)
    {
      v28 = v27;
      if (*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_deprecationAlertDialog))
      {
        *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_deprecationAlertDialog) = 0;
        sub_26139F6CC();
      }

      if (a1)
      {
        v29 = *(v28 + 64);
        v30 = *(v28 + 72);

        sub_261311C30(v29, v30);

        sub_26139F73C();
        sub_26139F72C();

        sub_26139F71C();
      }

      v31 = *(v21 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
      if ((*(*v31 + 536))())
      {
        *(v21 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) = 1;
        v32 = *(v21 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
        if (v32)
        {
          v33 = *(*v32 + 296);

          v33(2);
        }

        [v31 updateWithTransactionEvent_];
      }

      else if ((*(*v31 + 544))())
      {
        *(v21 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) = 1;
        (*(*v31 + 464))();
      }

      else
      {
        sub_26130DC08();
      }
    }

    else
    {
      v37 = v49;
      sub_26125A870(v57, v49, &qword_27FE9F560, &qword_2613A3CB0);
      if (v19(v37, 1, v17) == 1)
      {
        sub_26124C718(v37, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v38 = sub_2613A122C();
        v39 = sub_2613A1D8C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_261243000, v38, v39, "no context", v40, 2u);
          MEMORY[0x266701350](v40, -1, -1);
        }

        (*(v18 + 8))(v37, v17);
      }

      (*(v50 + 104))(v55, *MEMORY[0x277D43868], v51);
      (*(v52 + 104))(v47, *MEMORY[0x277D43978], v53);
      v41 = [objc_opt_self() processInfo];
      v42 = [v41 processName];

      sub_2613A18CC();
      v43 = v54;
      sub_26139FB6C();
      sub_26139FDBC();
      return (*(v46 + 8))(v43, v48);
    }
  }
}

uint64_t sub_261311C30(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v9 = sub_26125B314(a1, a2);
  if (v9)
  {
    if ((*(*v9 + 376))(v9))
    {

      sub_2612C1138();
      *(&v25 + 1) = &type metadata for SessionDeleted;
      *&v26 = sub_261324690();
      v10 = swift_allocObject();
      *&v24 = v10;
      v11 = v34;
      v10[1] = v33;
      v10[2] = v11;
      v10[3] = v35;
      sub_2612B64A4(8, &v24, &v27);

      sub_26124C718(&v30, &qword_27FE9F8D0, &unk_2613AC6E0);
      v30 = v27;
      v31 = v28;
      v32 = v29;
    }

    else
    {
    }
  }

  if (sub_26125B3FC(a1, a2))
  {
    v12 = sub_26129B5FC();
    sub_26125A870(v12, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v8, 1, v13) == 1)
    {
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v15 = sub_2613A122C();
      v16 = sub_2613A1D9C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v27 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_26124C11C(a1, a2, &v27);
        _os_log_impl(&dword_261243000, v15, v16, "Session deleted - %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x266701350](v18, -1, -1);
        MEMORY[0x266701350](v17, -1, -1);
      }

      (*(v14 + 8))(v8, v13);
    }

    sub_26125A870(&v30, &v24, &qword_27FE9F8D0, &unk_2613AC6E0);
    if (!v26)
    {
      sub_26124C718(&v30, &qword_27FE9F8D0, &unk_2613AC6E0);
      v22 = &v24;
      return sub_26124C718(v22, &qword_27FE9F8D0, &unk_2613AC6E0);
    }

    v27 = v24;
    v28 = v25;
    v29 = v26;
    v19 = (v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter);
    v20 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
    v21 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v21 + 120))(&v27, v20, v21);
    sub_2612A0E50(&v27);
  }

  v22 = &v30;
  return sub_26124C718(v22, &qword_27FE9F8D0, &unk_2613AC6E0);
}

uint64_t sub_26131208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[137] = a7;
  v7[136] = a6;
  v7[135] = a5;
  v7[134] = a4;
  v8 = sub_26139F97C();
  v7[138] = v8;
  v7[139] = *(v8 - 8);
  v7[140] = swift_task_alloc();
  v9 = sub_26139FDCC();
  v7[141] = v9;
  v7[142] = *(v9 - 8);
  v7[143] = swift_task_alloc();
  v10 = sub_26139FAEC();
  v7[144] = v10;
  v7[145] = *(v10 - 8);
  v7[146] = swift_task_alloc();
  v11 = sub_26139FB7C();
  v7[147] = v11;
  v7[148] = *(v11 - 8);
  v7[149] = swift_task_alloc();
  v12 = sub_26139F13C();
  v7[150] = v12;
  v7[151] = *(v12 - 8);
  v7[152] = swift_task_alloc();
  v13 = sub_26139F64C();
  v7[153] = v13;
  v7[154] = *(v13 - 8);
  v7[155] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7[156] = swift_task_alloc();
  v7[157] = swift_task_alloc();
  v7[158] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261312374, 0, 0);
}

uint64_t sub_261312374()
{
  v173 = v0;
  v1 = *(v0 + 1264);
  v166 = sub_26129B5FC();
  sub_26125A870(v166, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v2 = sub_2613A124C();
  v3 = *(v2 - 8);
  v163 = *(v3 + 48);
  v4 = v163(v1, 1, v2);
  v5 = *(v0 + 1264);
  if (v4 == 1)
  {
    sub_26124C718(*(v0 + 1264), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = *(v0 + 1072);
    v7 = sub_26125A798();
    v8 = sub_261291AA8();
    sub_26129BC3C(v7 & 1, v6, 0xD00000000000001FLL, 0x80000002613BD080, v8, v9);

    (*(v3 + 8))(v5, v2);
  }

  v10 = *(v0 + 1240);
  v11 = *(v0 + 1232);
  v12 = *(v0 + 1224);
  v13 = *(v0 + 1072);
  sub_26139F5CC();
  sub_26139F5DC();
  v14 = *(v11 + 8);
  v14(v10, v12);
  sub_26139F3AC();
  sub_26139F5DC();
  v15 = (v14)(v10, v12);
  if ((*(v13 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) & 1) == 0)
  {
    v29 = *(v0 + 1072);
    sub_2613135DC(0, 0x7469746E65206F6ELL, 0xEE00746E656D656CLL, *(v0 + 1080), *(v0 + 1088), *(v0 + 1096));
LABEL_30:
    *(v29 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask) = 0;
    goto LABEL_31;
  }

  v159 = v3;
  v161 = v2;
  v16 = MEMORY[0x277D85000];
  v158 = *((*MEMORY[0x277D85000] & **(v0 + 1072)) + 0x1B0);
  v17 = (v158)(v15);
  if (v17)
  {
    v18 = v14;
    v19 = *(v0 + 1216);
    v20 = *(v0 + 1208);
    v21 = *(v0 + 1200);
    sub_26139FCEC();
    sub_261392D24(v19);

    v22 = v19;
    v14 = v18;
    v23 = v21;
    v16 = MEMORY[0x277D85000];
    v17 = (*(v20 + 8))(v22, v23);
  }

  v24 = (*((*v16 & **(v0 + 1072)) + 0x2A0))(v17);
  if (!v24)
  {
    v33 = *(v0 + 1192);
    v34 = *(v0 + 1184);
    v167 = *(v0 + 1176);
    v35 = *(v0 + 1168);
    v36 = *(v0 + 1160);
    v37 = *(v0 + 1152);
    v38 = *(v0 + 1144);
    v39 = *(v0 + 1136);
    v40 = *(v0 + 1128);
    v29 = *(v0 + 1072);
    sub_2613135DC(0, 0x65746E6F63206F6ELL, 0xEA00000000007478, *(v0 + 1080), *(v0 + 1088), *(v0 + 1096));
    (*(v36 + 104))(v35, *MEMORY[0x277D43868], v37);
    (*(v39 + 104))(v38, *MEMORY[0x277D43978], v40);
    v41 = [objc_opt_self() processInfo];
    v42 = [v41 processName];

    sub_2613A18CC();
    sub_26139FB6C();
    sub_26139FDBC();
    (*(v34 + 8))(v33, v167);
    goto LABEL_30;
  }

  v25 = v24;
  sub_2613A121C();
  if (sub_2613A10EC())
  {
    v26 = *(v0 + 1096);
    v27 = *(v0 + 1088);
    v28 = *(v0 + 1080);
    v29 = *(v0 + 1072);
    v30 = 0xD000000000000015;
    v31 = 0x80000002613BCB10;
    v32 = 18;
LABEL_28:
    sub_2613135DC(v32, v30, v31, v28, v27, v26);
LABEL_29:

    goto LABEL_30;
  }

  if ((sub_2613A10FC() & 1) == 0)
  {
    v26 = *(v0 + 1096);
    v27 = *(v0 + 1088);
    v28 = *(v0 + 1080);
    v29 = *(v0 + 1072);
    v31 = 0x80000002613BC9F0;
    v32 = 19;
LABEL_27:
    v30 = 0xD000000000000011;
    goto LABEL_28;
  }

  v156 = v14;
  v43 = *(v0 + 1256);

  v44 = sub_2613A117C();

  sub_26125A870(v166, v43, &qword_27FE9F560, &qword_2613A3CB0);
  v45 = v161;
  if (v163(v43, 1, v161) == 1)
  {
    sub_26124C718(*(v0 + 1256), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v46 = sub_2613A122C();
    v47 = sub_2613A1D9C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 67240192;
      *(v48 + 4) = v44 & 1;
      _os_log_impl(&dword_261243000, v46, v47, "Diagnostics mode = %{BOOL,public}d", v48, 8u);
      v45 = v161;
      MEMORY[0x266701350](v48, -1, -1);
    }

    v49 = *(v0 + 1256);

    (*(v159 + 8))(v49, v45);
  }

  v50 = (*(v0 + 1072) + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter);
  v51 = v50[3];
  v52 = v50[4];
  __swift_project_boxed_opaque_existential_1(v50, v51);
  (*(v52 + 48))(v44 & 1, v51, v52);
  v53 = sub_26125B314(v25[8], v25[9]);
  if (!v53)
  {
LABEL_26:
    v26 = *(v0 + 1096);
    v27 = *(v0 + 1088);
    v28 = *(v0 + 1080);
    v29 = *(v0 + 1072);
    v31 = 0x80000002613BC580;
    v32 = 4;
    goto LABEL_27;
  }

  v54 = v53;
  v55 = (*(*v53 + 376))();
  if (!v55)
  {

    goto LABEL_26;
  }

  v56 = v55;
  v57 = sub_26139FC7C();
  if (v57 >> 62)
  {
    v58 = sub_2613A221C();
  }

  else
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v58 >= 51)
  {
    v60 = *(v0 + 1096);
    v61 = *(v0 + 1088);
    v62 = *(v0 + 1080);
    v29 = *(v0 + 1072);
    v63 = 0xD000000000000023;
    v64 = 0x80000002613BD050;
    v65 = 24;
LABEL_45:
    sub_2613135DC(v65, v63, v64, v62, v61, v60);

    goto LABEL_29;
  }

  if ((*(*v54 + 304))(v59))
  {
    type metadata accessor for StoreAndForwardManager();
    v154 = v56;
    v68 = v25[10];
    v69 = v25[11];

    sub_26126B07C(v68, v69, v0 + 160);
    v56 = v154;
  }

  else
  {
    v71.n128_f64[0] = sub_26130CC3C((v0 + 160));
  }

  v72 = (*(*v54 + 400))(v70, v71);
  if (v72 == 2 || (v72 & 1) != 0)
  {
    v73 = *(v0 + 272);
    *(v0 + 400) = *(v0 + 256);
    *(v0 + 416) = v73;
    *(v0 + 425) = *(v0 + 281);
    v74 = *(v0 + 208);
    *(v0 + 336) = *(v0 + 192);
    *(v0 + 352) = v74;
    v75 = *(v0 + 240);
    *(v0 + 368) = *(v0 + 224);
    *(v0 + 384) = v75;
    v76 = *(v0 + 176);
    *(v0 + 304) = *(v0 + 160);
    *(v0 + 320) = v76;
    if (sub_261273F24(v0 + 304) == 1)
    {
      v168 = *(v0 + 1096);
      v164 = *(v0 + 1088);
      v77 = *(v0 + 1080);
      v78 = *(v0 + 1072);
      v79 = v25[8];
      v80 = v25[9];
      v81 = v54[2];
      v82 = v54[3];

      v83 = sub_2612B8F3C(v79, v80, v81, v82);
      v85 = v84;
      v87 = v86;
      v89 = v88;
      v171 = &type metadata for InvalidPartnerToken;
      v172 = sub_26132445C();
      v90 = swift_allocObject();
      *&v170 = v90;
      v90[2] = v83;
      v90[3] = v85;
      v90[4] = v87;
      v90[5] = v89;
      sub_2612B64A4(2, &v170, (v0 + 1024));
      v91 = v50[3];
      v92 = v50[4];
      __swift_project_boxed_opaque_existential_1(v50, v91);
      (*(v92 + 120))(v0 + 1024, v91, v92);
      sub_2613135DC(6, 0xD000000000000015, 0x80000002613BCFA0, v77, v164, v168);

      sub_2612A0E50(v0 + 1024);
      *(v78 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask) = 0;
      goto LABEL_31;
    }
  }

  v152 = (v0 + 160);
  if (sub_26130F3D4() & 1) != 0 || (v93 = *(**sub_2612B4F84() + 120), v94 = , LOBYTE(v93) = v93(v94), , (v93))
  {
    v95 = *(v0 + 1096);
    v96 = *(v0 + 1088);
    v97 = *(v0 + 1080);
    v29 = *(v0 + 1072);
    sub_26124C718(v152, &qword_27FE9F458, &unk_2613A4BE0);
    v63 = 0x6920726564616572;
    v64 = 0xEE00797375622073;
    v65 = 9;
LABEL_44:
    v62 = v97;
    v61 = v96;
    v60 = v95;
    goto LABEL_45;
  }

  v98 = *(v0 + 272);
  *(v0 + 544) = *(v0 + 256);
  *(v0 + 560) = v98;
  *(v0 + 569) = *(v0 + 281);
  v99 = *(v0 + 208);
  *(v0 + 480) = *(v0 + 192);
  *(v0 + 496) = v99;
  v100 = *(v0 + 240);
  *(v0 + 512) = *(v0 + 224);
  *(v0 + 528) = v100;
  v101 = *(v0 + 176);
  *(v0 + 448) = *v152;
  *(v0 + 464) = v101;
  if (sub_261273F24(v0 + 448) != 1)
  {
    v106 = *(v0 + 560);
    *(v0 + 112) = *(v0 + 544);
    *(v0 + 128) = v106;
    *(v0 + 137) = *(v0 + 569);
    v107 = *(v0 + 496);
    *(v0 + 48) = *(v0 + 480);
    *(v0 + 64) = v107;
    v108 = *(v0 + 528);
    *(v0 + 80) = *(v0 + 512);
    *(v0 + 96) = v108;
    v109 = *(v0 + 464);
    *(v0 + 16) = *(v0 + 448);
    *(v0 + 32) = v109;
    v110 = *(v0 + 272);
    *(v0 + 832) = *(v0 + 256);
    *(v0 + 848) = v110;
    *(v0 + 857) = *(v0 + 281);
    v111 = *(v0 + 208);
    *(v0 + 768) = *(v0 + 192);
    *(v0 + 784) = v111;
    v112 = *(v0 + 240);
    *(v0 + 800) = *(v0 + 224);
    *(v0 + 816) = v112;
    v113 = *(v0 + 176);
    *(v0 + 736) = *v152;
    *(v0 + 752) = v113;
    v114 = sub_261274028(v0 + 736, v0 + 880);
    v115 = sub_26127E13C(v114);
    sub_26124C718(v152, &qword_27FE9F458, &unk_2613A4BE0);
    if (v115)
    {
      v95 = *(v0 + 1096);
      v96 = *(v0 + 1088);
      v97 = *(v0 + 1080);
      v29 = *(v0 + 1072);
      sub_26124C718(v152, &qword_27FE9F458, &unk_2613A4BE0);
      v63 = 0xD000000000000013;
      v64 = 0x80000002613BD030;
      v65 = 5;
      goto LABEL_44;
    }

    if (*(v0 + 296))
    {
      v95 = *(v0 + 1096);
      v96 = *(v0 + 1088);
      v97 = *(v0 + 1080);
      v29 = *(v0 + 1072);
      sub_26124C718(v152, &qword_27FE9F458, &unk_2613A4BE0);
      v63 = 0xD000000000000035;
      v64 = 0x80000002613BCFF0;
      v65 = 4;
      goto LABEL_44;
    }
  }

  if (sub_2612FC1C0())
  {
    v102 = *(v0 + 1096);
    v103 = *(v0 + 1088);
    v104 = *(v0 + 1080);
    v105 = *(v0 + 1072);
    sub_26124C718(v152, &qword_27FE9F458, &unk_2613A4BE0);
    sub_2613A11FC();
    sub_2613135DC(10, 0xD00000000000002BLL, 0x80000002613BCFC0, v104, v103, v102);
  }

  else
  {
    if (sub_2612FBFC4())
    {
      v95 = *(v0 + 1096);
      v96 = *(v0 + 1088);
      v97 = *(v0 + 1080);
      v29 = *(v0 + 1072);
      sub_26124C718(v152, &qword_27FE9F458, &unk_2613A4BE0);
      v63 = 0xD00000000000002BLL;
      v64 = 0x80000002613BCFC0;
      v65 = 17;
      goto LABEL_44;
    }

    v155 = v56;
    v150 = (v0 + 592);
    v116 = *(v0 + 1248);
    v117 = *(v0 + 1240);
    v118 = *(v0 + 1224);
    sub_26139F3AC();
    sub_26139F5BC();
    v156(v117, v118);
    sub_26125A870(v166, v116, &qword_27FE9F560, &qword_2613A3CB0);
    v119 = v161;
    if (v163(v116, 1, v161) == 1)
    {
      sub_26124C718(*(v0 + 1248), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v120 = *(v0 + 1080);
      v121 = sub_2613A122C();
      v122 = sub_2613A1D7C();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = *(v0 + 1080);
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *v124 = 138412290;
        *(v124 + 4) = v123;
        *v125 = v123;
        v126 = v123;
        _os_log_impl(&dword_261243000, v121, v122, "Transaction request: %@", v124, 0xCu);
        sub_26124C718(v125, &qword_27FEA0410, &qword_2613AA780);
        v119 = v161;
        MEMORY[0x266701350](v125, -1, -1);
        MEMORY[0x266701350](v124, -1, -1);
      }

      v127 = *(v0 + 1248);

      (*(v159 + 8))(v127, v119);
    }

    v165 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v169 = swift_allocObject();
    v128 = swift_unknownObjectWeakInit();
    (*(*v54 + 184))(v128);
    type metadata accessor for Mock();
    sub_26129B284(22);
    sub_26139FC5C();
    v129 = v54[3];
    v149 = v54[2];
    v130 = *(v0 + 272);
    *(v0 + 688) = *(v0 + 256);
    *(v0 + 704) = v130;
    *(v0 + 713) = *(v0 + 281);
    v131 = *(v0 + 208);
    *(v0 + 624) = *(v0 + 192);
    *(v0 + 640) = v131;
    v132 = *(v0 + 240);
    *(v0 + 656) = *(v0 + 224);
    *(v0 + 672) = v132;
    v133 = *(v0 + 176);
    *v150 = *v152;
    *(v0 + 608) = v133;
    if (sub_261273F24(v150) == 1)
    {

      v147 = 0;
      v148 = 0;
    }

    else
    {
      v148 = *(v0 + 592);
      v134 = *(v0 + 600);

      v147 = v134;

      sub_26124C718(v152, &qword_27FE9F458, &unk_2613A4BE0);
    }

    v157 = *(v0 + 1112);
    v160 = *(v0 + 1104);
    v162 = *(v0 + 1120);
    v153 = *(v0 + 1096);
    v151 = *(v0 + 1088);
    v135 = *(v0 + 1080);
    v105 = *(v0 + 1072);
    type metadata accessor for TransactionTask();
    v136 = v158();
    v137 = *(v105 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
    v138 = v135;

    v140 = sub_2613377D4(v139, v138, v149, v129, v148, v147, v136, v137, sub_26132454C, v169, sub_2613244B0, v165);
    *(v105 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask) = v140;

    (*(*v140 + 280))(v155);

    v141 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v142 = swift_allocObject();
    *(v142 + 2) = v141;
    *(v142 + 3) = v151;
    *(v142 + 4) = v153;
    *(v142 + 5) = v138;
    v143 = (v105 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion);
    v144 = *(v105 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion);
    v145 = *(v105 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion + 8);
    *v143 = sub_261324624;
    v143[1] = v142;
    v146 = v138;

    sub_26124A228(v144, v145);

    LOBYTE(v141) = sub_2613A116C();

    sub_261314844(v146, v162, v141 & 1);

    (*(v157 + 8))(v162, v160);
  }

  *(v105 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask) = 0;
LABEL_31:

  v66 = *(v0 + 8);

  return v66();
}

void sub_2613135DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void *), void *a6)
{
  v7 = v6;
  v44[1] = a6;
  v45 = a5;
  v44[0] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v44 - v15;
  ErrorEventData = type metadata accessor for ReadErrorEventData(0);
  MEMORY[0x28223BE20](ErrorEventData - 8);
  v19 = (v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_26139F64C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[0] = a2;
  v46[1] = a3;
  sub_261314DEC(v46, &v47);
  sub_26139F3AC();
  sub_26139F5BC();
  v24 = *(v21 + 8);
  v24(v23, v20);
  sub_26139F5CC();
  sub_26139F5BC();
  v25 = (v24)(v23, v20);
  v26 = MEMORY[0x277D85000];
  v27 = (*((*MEMORY[0x277D85000] & *v7) + 0x2A0))(v25);
  if (v27)
  {
    v28 = sub_26125B314(*(v27 + 64), *(v27 + 72));
    if (v28)
    {
      v29 = (*(*v28 + 376))();
      if (v29)
      {
        v30 = v29;
        v31 = type metadata accessor for TransactionData(0);
        (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
        v32 = v44[0];

        v33 = sub_2612B5C88(v32, v30, a1, v16, v19);
        if ((*((*v26 & *v7) + 0x1B0))(v33))
        {
          v34 = sub_2613A055C();
          sub_2613965D4(v19, 0, v34, v35);
        }

        else
        {
        }

        sub_261324634(v19);
        goto LABEL_16;
      }
    }
  }

  v36 = sub_26129B858();
  sub_26125A870(v36, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v37 = sub_2613A124C();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v13, 1, v37) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v39 = sub_2613A122C();
    v40 = sub_2613A1D8C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_261243000, v39, v40, "Could not send transaction error event, context or session is empty", v41, 2u);
      MEMORY[0x266701350](v41, -1, -1);
    }

    (*(v38 + 8))(v13, v37);
  }

LABEL_16:
  sub_2612B45EC();
  v42 = swift_allocError();
  *v43 = a1;
  v45(0, v42);
}

uint64_t sub_261313B18(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v37 = a3;
  v33 = a2;
  v36 = a1;
  v5 = sub_26139F64C();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = sub_26129B5FC();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v31 = v13;
    v17 = sub_26125A798();
    v18 = sub_261291AA8();
    v32 = v14;
    v13 = v31;
    sub_26129BC3C(v17 & 1, v4, 0xD00000000000001DLL, 0x80000002613BD0C0, v18, v19);
    v14 = v32;

    (*(v15 + 8))(v12, v14);
  }

  v20 = v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion;
  v21 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion);
  if (v21)
  {
    v22 = *(v20 + 8);

    v23 = v36;
    if (v36 || (v37 & 1) == 0)
    {
      v25 = v34;
      sub_26139F52C();
      sub_26139F5DC();
      v26 = *(v35 + 8);
      v26(v25, v5);
      v21(v23, v33, v37 & 1);
      sub_26139F52C();
      sub_26139F5BC();
      sub_26124A228(v21, v22);
      return (v26)(v25, v5);
    }

    else
    {
      v21(0, 25, 0);
      return sub_26124A228(v21, v22);
    }
  }

  else
  {
    sub_26125A870(v13, v10, &qword_27FE9F560, &qword_2613A3CB0);
    if (v16(v10, 1, v14) == 1)
    {
      return sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D7C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "reportTransactionResult - completion is nil", v29, 2u);
        MEMORY[0x266701350](v29, -1, -1);
      }

      return (*(v15 + 8))(v10, v14);
    }
  }
}

void sub_261313F38(void *a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(void *, void *), uint64_t a6, uint64_t a7)
{
  v72 = a7;
  v78 = a6;
  v79 = a5;
  v84 = a3;
  v75 = a2;
  v73 = sub_26139F13C();
  v9 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v80 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_26139F64C();
  v11 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v83 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = v69 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v69 - v19;
  v77 = sub_26129B5FC();
  sub_26125A870(v77, v20, &qword_27FE9F560, &qword_2613A3CB0);
  v21 = sub_2613A124C();
  v22 = *(*(v21 - 8) + 48);
  v81 = *(v21 - 8);
  v82 = v22;
  v23 = v22(v20, 1, v21);
  v85 = a1;
  if (v23 == 1)
  {
    sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v71 = v9;
    v24 = a1;
    v25 = sub_2613A122C();
    v26 = sub_2613A1D7C();

    if (os_log_type_enabled(v25, v26))
    {
      v70 = a4;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = v85;
      *(v27 + 12) = 2112;
      if (v84)
      {
        v29 = v24;
        v30 = 0;
      }

      else
      {
        sub_2612B45EC();
        v69[1] = swift_allocError();
        *v31 = v75;
        v32 = v24;
        v30 = _swift_stdlib_bridgeErrorToNSError();
      }

      *(v27 + 14) = v30;
      v28[1] = v30;
      _os_log_impl(&dword_261243000, v25, v26, "transactionCompletion: result=%@. error=%@", v27, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0410, &qword_2613AA780);
      swift_arrayDestroy();
      MEMORY[0x266701350](v28, -1, -1);
      MEMORY[0x266701350](v27, -1, -1);
      a4 = v70;
    }

    (*(v81 + 8))(v20, v21);
    v9 = v71;
  }

  sub_26139F5CC();
  sub_26139F5BC();
  (*(v11 + 8))(v13, v76);
  v33 = v84;
  v34 = v85;
  v35 = v83;
  v36 = v77;
  if (v84)
  {
LABEL_12:
    if (!v34)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v37 = v74;
  sub_26125A870(v77, v74, &qword_27FE9F560, &qword_2613A3CB0);
  if (v82(v37, 1, v21) == 1)
  {
    sub_26124C718(v37, &qword_27FE9F560, &qword_2613A3CB0);
    goto LABEL_12;
  }

  v48 = sub_2613A122C();
  v49 = sub_2613A1D7C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    sub_2612B45EC();
    swift_allocError();
    *v52 = v75;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v53;
    *v51 = v53;
    _os_log_impl(&dword_261243000, v48, v49, "Returning transaction error: %@", v50, 0xCu);
    sub_26124C718(v51, &qword_27FEA0410, &qword_2613AA780);
    v54 = v51;
    v35 = v83;
    MEMORY[0x266701350](v54, -1, -1);
    MEMORY[0x266701350](v50, -1, -1);
  }

  (*(v81 + 8))(v74, v21);
  v34 = v85;
  if (v85)
  {
LABEL_13:
    sub_26125A870(v36, v35, &qword_27FE9F560, &qword_2613A3CB0);
    if (v82(v35, 1, v21) == 1)
    {
      sub_26124C718(v35, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v38 = v34;
      v39 = v34;
      v40 = sub_2613A122C();
      v41 = sub_2613A1D7C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = v9;
        v44 = swift_slowAlloc();
        *v42 = 138412290;
        *(v42 + 4) = v39;
        *v44 = v38;
        v45 = v39;
        _os_log_impl(&dword_261243000, v40, v41, "Returning transaction result: %@", v42, 0xCu);
        sub_26124C718(v44, &qword_27FEA0410, &qword_2613AA780);
        v46 = v44;
        v9 = v43;
        v33 = v84;
        MEMORY[0x266701350](v46, -1, -1);
        v47 = v42;
        v35 = v83;
        MEMORY[0x266701350](v47, -1, -1);
        v39 = v40;
        v40 = v45;
      }

      (*(v81 + 8))(v35, v21);
      v34 = v85;
    }
  }

LABEL_21:
  if (v33)
  {
    v55 = 0;
  }

  else
  {
    sub_2612B45EC();
    v55 = swift_allocError();
    *v56 = v75;
  }

  v57 = v80;
  v79(v34, v55);

  if (v34)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v59 = Strong;
      v60 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1B0))();

      if (v60)
      {
        sub_26139FCEC();
        sub_261396B94(v57);
LABEL_32:

LABEL_33:
        (*(v9 + 8))(v57, v73);
      }
    }
  }

  else if (v33)
  {
    swift_beginAccess();
    v61 = swift_unknownObjectWeakLoadStrong();
    if (v61)
    {
      v62 = v61;
      v63 = (*((*MEMORY[0x277D85000] & *v61) + 0x1B0))();

      if (v63)
      {
        sub_26139FCEC();
        sub_261398A5C(v57);
        goto LABEL_32;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v64 = swift_unknownObjectWeakLoadStrong();
    if (v64)
    {
      v65 = v64;
      v66 = (*((*MEMORY[0x277D85000] & *v64) + 0x1B0))();

      if (v66)
      {
        sub_26139FCEC();
        v67 = sub_26139FACC();
        sub_261396BCC(v57, v67, v68);

        goto LABEL_33;
      }
    }
  }

  sub_2613178E0(a4, &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion);
}

uint64_t sub_261314844(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v32 = sub_26129B5FC();
  sub_26125A870(v32, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v31 = *(v15 + 48);
  if (v31(v13, 1, v14) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v29 = v4;
    v16 = sub_26125A798();
    v17 = sub_261291AA8();
    v30 = v14;
    v4 = v29;
    sub_26129BC3C(v16 & 1, v29, 0xD000000000000018, 0x80000002613BD0A0, v17, v18);
    v14 = v30;

    (*(v15 + 8))(v13, v14);
  }

  v19 = [objc_opt_self() server];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 voiceOverEnabled];
  }

  else
  {
    v21 = 0;
  }

  *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_voiceOverRequiresReEnabling) = v21;
  v22 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
  (*(*v22 + 368))(v4);
  sub_26125A870(v32, v11, &qword_27FE9F560, &qword_2613A3CB0);
  if (v31(v11, 1, v14) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v23 = sub_2613A122C();
    v24 = sub_2613A1D7C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v15;
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = a3 & 1;
      _os_log_impl(&dword_261243000, v23, v24, "showTapUI - %{BOOL}d", v26, 8u);
      v27 = v26;
      v15 = v25;
      MEMORY[0x266701350](v27, -1, -1);
    }

    (*(v15 + 8))(v11, v14);
  }

  return (*(*v22 + 552))(a1, a2, a3 & 1);
}

void sub_261314D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26139EE6C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_261314DEC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = sub_26129B5FC();
  sub_26125A870(v9, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v6, 1, v10);
  if (v12 == 1)
  {
    result = sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v14 = sub_2613A122C();
    v15 = sub_2613A1D8C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v20 = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_26124C11C(v7, v8, &v21);
      _os_log_impl(&dword_261243000, v14, v15, "%{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x266701350](v18, -1, -1);
      v19 = v17;
      a2 = v20;
      MEMORY[0x266701350](v19, -1, -1);
    }

    result = (*(v11 + 8))(v6, v10);
  }

  *a2 = v12 == 1;
  return result;
}

uint64_t sub_261315010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v3)
  {
    v4 = *(*v3 + 296);

    v5 = v4(0);
  }

  else
  {
    v5 = 0;
  }

  return a2(v5 & 1);
}

uint64_t sub_2613150B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_261315170;
  v9 = MEMORY[0x277D84A98];
  v10 = MEMORY[0x277D84AC0];
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v6 + 5, a4, v11, v9, v10);
}

uint64_t sub_261315170()
{

  return MEMORY[0x2822009F8](sub_26131526C, 0, 0);
}

uint64_t sub_26131526C()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

void sub_2613152E8(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_261315364()
{
  v1[9] = v0;
  v2 = sub_2613A177C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = sub_2613A172C();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = sub_2613A171C();
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26131550C, 0, 0);
}

uint64_t sub_26131550C()
{
  v1 = v0[21];
  v40 = sub_26129B5FC();
  sub_26125A870(v40, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v2 = sub_2613A124C();
  v3 = *(v2 - 8);
  v44 = *(v3 + 48);
  v4 = v44(v1, 1, v2);
  v5 = v0[21];
  if (v4 == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[9];
    v7 = sub_26125A798();
    v8 = sub_261291AA8();
    sub_26129BC3C(v7 & 1, v6, 0xD000000000000011, 0x80000002613BCF50, v8, v9);

    (*(v3 + 8))(v5, v2);
  }

  v41 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuationTimeout;
  v42 = v0[9];
  v43 = v3;
  if (*(v42 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuationTimeout))
  {

    sub_2613A179C();
  }

  v10 = v0[15];
  v11 = v0[16];
  v37 = v0[13];
  v12 = v0[11];
  v35 = v0[14];
  v36 = v0[12];
  v38 = v0[10];
  v39 = v0[20];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_26132440C;
  v0[7] = v13;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_261276D54;
  v0[5] = &block_descriptor_181;
  _Block_copy(v0 + 2);
  v0[8] = MEMORY[0x277D84F90];
  sub_2612D4168(&qword_27FE9F4B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F640, &unk_2613AA600);
  sub_26128D9C4();
  sub_2613A203C();
  sub_2613A17AC();
  swift_allocObject();
  v14 = sub_2613A178C();

  *(v42 + v41) = v14;

  sub_26127BBE0();
  (*(v10 + 104))(v11, *MEMORY[0x277D851C8], v35);
  v15 = sub_2613A1E3C();
  (*(v10 + 8))(v11, v35);
  sub_2613A176C();
  sub_2613A17CC();
  v16 = *(v12 + 8);
  v16(v36, v38);
  sub_2613A1DFC();

  v16(v37, v38);
  sub_26125A870(v40, v39, &qword_27FE9F560, &qword_2613A3CB0);
  if (v44(v39, 1, v2) == 1)
  {
    sub_26124C718(v0[20], &qword_27FE9F560, &qword_2613A3CB0);
    v17 = v43;
  }

  else
  {
    v18 = sub_2613A122C();
    v19 = sub_2613A1D9C();
    v17 = v43;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_261243000, v18, v19, "waitForTaskDone - about to wait", v20, 2u);
      MEMORY[0x266701350](v20, -1, -1);
    }

    v21 = v0[20];

    (*(v43 + 8))(v21, v2);
  }

  if (sub_26130F3D4() & 1) != 0 || (v22 = *(**sub_2612B4F84() + 120), v23 = , LOBYTE(v22) = v22(v23), , (v22))
  {
    v24 = v0[9];
    v25 = swift_task_alloc();
    v0[22] = v25;
    *(v25 + 16) = v24;
    v26 = swift_task_alloc();
    v0[23] = v26;
    *v26 = v0;
    v26[1] = sub_261315CAC;
    v27 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 24, 0, 0, 0xD000000000000011, 0x80000002613BCF50, sub_261324438, v25, v27);
  }

  v28 = v0[19];
  sub_26125A870(v40, v28, &qword_27FE9F560, &qword_2613A3CB0);
  if (v44(v28, 1, v2) != 1)
  {
    v29 = sub_2613A122C();
    v30 = sub_2613A1D9C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_261243000, v29, v30, "waitForTaskDone - already completed or nothing pending", v31, 2u);
      MEMORY[0x266701350](v31, -1, -1);
    }

    v32 = v0[19];

    (*(v17 + 8))(v32, v2);
    if (!*(v42 + v41))
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  sub_26124C718(v0[19], &qword_27FE9F560, &qword_2613A3CB0);
  if (*(v42 + v41))
  {
LABEL_18:

    sub_2613A179C();
  }

LABEL_22:
  *(v42 + v41) = 0;

  v33 = v0[1];

  return v33(1);
}

uint64_t sub_261315CAC()
{

  return MEMORY[0x2822009F8](sub_261315DC4, 0, 0);
}

uint64_t sub_261315DC4()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261315E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v14;
  v8[8] = v15;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_26139F13C();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v8[11] = *(v10 + 64);
  v8[12] = swift_task_alloc();
  v11 = sub_26139F64C();
  v8[13] = v11;
  v8[14] = *(v11 - 8);
  v8[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261315FF0, 0, 0);
}

uint64_t sub_261315FF0()
{
  if (sub_26130F3D4() & 1) != 0 || (v1 = *(**sub_2612B4F84() + 120), v2 = , LOBYTE(v1) = v1(v2), , (v1))
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_261316494;

    return sub_261315364();
  }

  else
  {
    v5 = v0[12];
    v6 = v0[9];
    v7 = v0[10];
    v33 = v7;
    v34 = v0[11];
    v29 = v6;
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[3];
    v35 = v0[4];
    v37 = v0[5];
    v31 = v10;
    v32 = v0[6];
    v11 = v0[2];
    v12 = swift_allocObject();
    v0[18] = v12;
    swift_unknownObjectWeakInit();
    type metadata accessor for IssuerPINTask(0);
    v30 = *(v7 + 16);
    v30(v5, v10, v6);
    v13 = *((*MEMORY[0x277D85000] & *v11) + 0x1B0);

    v15 = v13(v14);

    v16 = sub_261304C34(v5, v32, v8, v9, v15, sub_261324338, v12);
    v17 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask;
    *(v11 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask) = v16;

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30(v5, v31, v29);
    v19 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    (*(v33 + 32))(v20 + v19, v5, v29);
    v21 = (v20 + ((v34 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v21 = v35;
    v21[1] = v37;
    v22 = (v11 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
    v23 = *(v11 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
    v24 = *(v11 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion + 8);
    *v22 = sub_261324350;
    v22[1] = v20;

    sub_26124A228(v23, v24);

    v25 = *(v11 + v17);
    v0[19] = v25;
    if (v25)
    {
      v26 = *(*v25 + 232);

      v36 = (v26 + *v26);
      v27 = swift_task_alloc();
      v0[20] = v27;
      *v27 = v0;
      v27[1] = sub_261316BF4;

      return v36();
    }

    else
    {
      sub_261317CBC(1);

      v28 = v0[1];

      return v28();
    }
  }
}

uint64_t sub_261316494(char a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_261316594, 0, 0);
}

uint64_t sub_261316594()
{
  v54 = v0;
  if (*(v0 + 176))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v47 = v3;
    v48 = *(v0 + 88);
    v43 = v2;
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(v0 + 24);
    v49 = *(v0 + 32);
    v51 = *(v0 + 40);
    v45 = v6;
    v46 = *(v0 + 48);
    v7 = *(v0 + 16);
    v8 = swift_allocObject();
    *(v0 + 144) = v8;
    swift_unknownObjectWeakInit();
    type metadata accessor for IssuerPINTask(0);
    v44 = *(v3 + 16);
    v44(v1, v6, v2);
    v9 = *((*MEMORY[0x277D85000] & *v7) + 0x1B0);

    v11 = v9(v10);

    v12 = sub_261304C34(v1, v46, v4, v5, v11, sub_261324338, v8);
    v13 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask;
    *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask) = v12;

    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44(v1, v45, v43);
    v15 = (*(v47 + 80) + 24) & ~*(v47 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v47 + 32))(v16 + v15, v1, v43);
    v17 = (v16 + ((v48 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = v49;
    v17[1] = v51;
    v18 = (v7 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
    v19 = *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
    v20 = *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion + 8);
    *v18 = sub_261324350;
    v18[1] = v16;

    sub_26124A228(v19, v20);

    v21 = *(v7 + v13);
    *(v0 + 152) = v21;
    if (v21)
    {
      v22 = *(*v21 + 232);

      v50 = (v22 + *v22);
      v23 = swift_task_alloc();
      *(v0 + 160) = v23;
      *v23 = v0;
      v23[1] = sub_261316BF4;

      return v50();
    }

    sub_261317CBC(1);
  }

  else
  {
    v25 = *(v0 + 128);
    v26 = sub_26129B5FC();
    sub_26125A870(v26, v25, &qword_27FE9F560, &qword_2613A3CB0);
    v27 = sub_2613A124C();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v25, 1, v27) == 1)
    {
      sub_26124C718(*(v0 + 128), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v29 = sub_2613A122C();
      v30 = sub_2613A1D8C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "timed out waiting for issuerPINContinuation", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      v32 = *(v0 + 128);

      (*(v28 + 8))(v32, v27);
    }

    v34 = *(v0 + 112);
    v33 = *(v0 + 120);
    v35 = *(v0 + 104);
    v36 = *(v0 + 32);
    v37 = *(v0 + 16);
    sub_26139F50C();
    sub_26139F5BC();
    v38 = *(v34 + 8);
    v38(v33, v35);
    strcpy(v53, "reader is busy");
    HIBYTE(v53[1]) = -18;
    v39 = sub_261314DEC(v53, &v52);
    (*((*MEMORY[0x277D85000] & *v37) + 0x2A0))(v39);

    sub_26139F47C();
    sub_26139F5DC();
    v38(v33, v35);
    sub_2612B45EC();
    v40 = swift_allocError();
    *v41 = 9;
    v36(0, v40);

    sub_26139F47C();
    sub_26139F5BC();
    v38(v33, v35);
    sub_261317CBC(1);
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_261316BF4(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_261316D14, 0, 0);
}

uint64_t sub_261316D14()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[7];
    v3 = v0[6];
    sub_2613A121C();
    v4 = sub_2613A116C();
    sub_261318200(v3, v2, v1, v4 & 1);
  }

  else
  {
    sub_261317CBC(1);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_261316E00(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v42 = a3;
  v39 = a2;
  v41 = a1;
  v43 = sub_26139F64C();
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = sub_26129B5FC();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v37 = v16;
    v17 = v13;
    v18 = v4;
    v19 = v15;
    v20 = sub_26125A798();
    v21 = sub_261291AA8();
    v38 = v14;
    v22 = v20 & 1;
    v15 = v19;
    v4 = v18;
    v13 = v17;
    v16 = v37;
    sub_26129BC3C(v22, v4, 0xD000000000000015, 0x80000002613BCF30, v21, v23);
    v14 = v38;

    (*(v15 + 8))(v12, v14);
  }

  v24 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
  if (v24)
  {
    v25 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion + 8);

    sub_26139F50C();
    sub_26139F5BC();
    v26 = *(v40 + 8);
    v26(v6, v43);
    v27 = v42;
    v28 = v41;
    if (v41 || (v42 & 1) == 0)
    {
      sub_26139F47C();
      sub_26139F5DC();
      v30 = v43;
      v26(v6, v43);
      v24(v28, v39, v27 & 1);
      sub_26139F47C();
      sub_26139F5BC();
      sub_26124A228(v24, v25);
      return (v26)(v6, v30);
    }

    else
    {
      v24(0, 27, 0);
      return sub_26124A228(v24, v25);
    }
  }

  else
  {
    sub_26125A870(v13, v10, &qword_27FE9F560, &qword_2613A3CB0);
    if (v16(v10, 1, v14) == 1)
    {
      return sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v31 = sub_2613A122C();
      v32 = sub_2613A1D7C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = v15;
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_261243000, v31, v32, "reportTransactionResult - completion is nil", v34, 2u);
        v35 = v34;
        v15 = v33;
        MEMORY[0x266701350](v35, -1, -1);
      }

      return (*(v15 + 8))(v10, v14);
    }
  }
}

void sub_261317248(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v60 = a2;
  v61 = a7;
  v63 = a3;
  v65 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v64 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v56 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v56 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1B0))();

    if (v20)
    {
      sub_261398A5C(a5);
    }
  }

  v62 = sub_26129B5FC();
  sub_26125A870(v62, v17, &qword_27FE9F560, &qword_2613A3CB0);
  v21 = sub_2613A124C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v17, 1, v21) == 1)
  {
    sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v57 = a6;
    v58 = a4;
    v24 = v65;
    v25 = sub_2613A122C();
    v26 = sub_2613A1D7C();

    if (os_log_type_enabled(v25, v26))
    {
      v59 = v22;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = v65;
      *(v27 + 12) = 2112;
      if (v63)
      {
        v29 = v24;
        v30 = 0;
      }

      else
      {
        sub_2612B45EC();
        v56[1] = swift_allocError();
        *v31 = v60;
        v32 = v24;
        v30 = _swift_stdlib_bridgeErrorToNSError();
      }

      *(v27 + 14) = v30;
      v28[1] = v30;
      _os_log_impl(&dword_261243000, v25, v26, "pinCompletion: result=%@. error=%@", v27, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0410, &qword_2613AA780);
      swift_arrayDestroy();
      MEMORY[0x266701350](v28, -1, -1);
      MEMORY[0x266701350](v27, -1, -1);
      v22 = v59;
    }

    (*(v22 + 8))(v17, v21);
    a6 = v57;
    a4 = v58;
  }

  v33 = v63;
  v34 = v64;
  if (v63)
  {
LABEL_15:
    v35 = v65;
    if (!v65)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  sub_26125A870(v62, v15, &qword_27FE9F560, &qword_2613A3CB0);
  if (v23(v15, 1, v21) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    goto LABEL_15;
  }

  v45 = sub_2613A122C();
  v46 = sub_2613A1D7C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v59 = v22;
    v48 = v47;
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    sub_2612B45EC();
    swift_allocError();
    *v50 = v60;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v51;
    *v49 = v51;
    _os_log_impl(&dword_261243000, v45, v46, "Issuer PIN error: %@", v48, 0xCu);
    sub_26124C718(v49, &qword_27FEA0410, &qword_2613AA780);
    v52 = v49;
    v33 = v63;
    MEMORY[0x266701350](v52, -1, -1);
    v53 = v48;
    v22 = v59;
    MEMORY[0x266701350](v53, -1, -1);
  }

  (*(v22 + 8))(v15, v21);
  v34 = v64;
  v35 = v65;
  if (v65)
  {
LABEL_16:
    sub_26125A870(v62, v34, &qword_27FE9F560, &qword_2613A3CB0);
    if (v23(v34, 1, v21) == 1)
    {
      sub_26124C718(v34, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v59 = v22;
      v36 = v35;
      v37 = sub_2613A122C();
      v38 = sub_2613A1D7C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = a6;
        v41 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v36;
        *v41 = v35;
        v42 = v36;
        _os_log_impl(&dword_261243000, v37, v38, "Issuer PIN result: %@", v39, 0xCu);
        sub_26124C718(v41, &qword_27FEA0410, &qword_2613AA780);
        v43 = v41;
        a6 = v40;
        MEMORY[0x266701350](v43, -1, -1);
        v44 = v39;
        v33 = v63;
        MEMORY[0x266701350](v44, -1, -1);
        v36 = v37;
        v37 = v42;
      }

      (*(v59 + 8))(v64, v21);
    }
  }

LABEL_24:
  if (v33)
  {
    v54 = 0;
  }

  else
  {
    sub_2612B45EC();
    v54 = swift_allocError();
    *v55 = v60;
  }

  a6(v35, v54);

  sub_2613178E0(a4, &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
}

void sub_2613178E0(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0560, &unk_2613AC8C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA05F8, &unk_2613AC8D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_26129B5FC();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v32 = v6;
    v16 = sub_2613A122C();
    v17 = sub_2613A1D7C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = v4;
      v19 = a2;
      v20 = v18;
      *v18 = 0;
      _os_log_impl(&dword_261243000, v16, v17, "!!!!!!! finishedCompletion: done", v18, 2u);
      v21 = v20;
      a2 = v19;
      v4 = v31;
      MEMORY[0x266701350](v21, -1, -1);
    }

    (*(v15 + 8))(v12, v14);
    v6 = v32;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuation;
    v24 = Strong;
    swift_beginAccess();
    sub_26125A870(v24 + v23, v9, &qword_27FEA05F8, &unk_2613AC8D0);

    if ((*(v4 + 48))(v9, 1, v3))
    {
      sub_26124C718(v9, &qword_27FEA05F8, &unk_2613AC8D0);
    }

    else
    {
      (*(v4 + 16))(v6, v9, v3);
      sub_26124C718(v9, &qword_27FEA05F8, &unk_2613AC8D0);
      v33 = 1;
      sub_2613A1BDC();
      (*(v4 + 8))(v6, v3);
    }
  }

  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = (v25 + *a2);
    v28 = *v26;
    v27 = v26[1];
    *v26 = 0;
    v26[1] = 0;
    v29 = v25;
    sub_26124A228(v28, v27);
  }
}

uint64_t sub_261317CBC(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0560, &unk_2613AC8C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v34[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA05F8, &unk_2613AC8D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v34[-v14];
  v38 = *(v5 + 56);
  v39 = v5 + 56;
  v38(&v34[-v14], 1, 1, v4);
  v16 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuation;
  swift_beginAccess();
  sub_2613242C8(v15, v2 + v16);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuationTimeout;
  if (*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuationTimeout))
  {

    sub_2613A179C();
  }

  *(v2 + v17) = 0;

  v18 = sub_26129B5FC();
  sub_26125A870(v18, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v19 = sub_2613A124C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v36 = v5;
    v21 = sub_2613A122C();
    v22 = sub_2613A1D7C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = v3;
      v3 = v23;
      *v23 = 0;
      _os_log_impl(&dword_261243000, v21, v22, "serviceCleanup: cleaning", v23, 2u);
      v24 = v3;
      LOBYTE(v3) = v35;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v20 + 8))(v9, v19);
    v5 = v36;
  }

  [*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client) readFeedback_];
  v25 = &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask;
  if ((v3 & 1) == 0)
  {
    v25 = &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask;
  }

  *(v2 + *v25) = 0;
  if (v3)
  {
    v26 = &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion;
  }

  else
  {
    v26 = &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion;
  }

  v27 = (v2 + *v26);
  v28 = *v27;
  v29 = v27[1];
  *v27 = 0;
  v27[1] = 0;
  sub_26124A228(v28, v29);
  if (*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) == 1)
  {
    *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) = 0;
    sub_26130DC08();
  }

  *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_voiceOverRequiresReEnabling) = 0;
  v30 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuation;
  swift_beginAccess();
  sub_26125A870(v2 + v30, v13, &qword_27FEA05F8, &unk_2613AC8D0);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_26124C718(v13, &qword_27FEA05F8, &unk_2613AC8D0);
  }

  else
  {
    v31 = v37;
    (*(v5 + 16))(v37, v13, v4);
    sub_26124C718(v13, &qword_27FEA05F8, &unk_2613AC8D0);
    v40 = 1;
    sub_2613A1BDC();
    (*(v5 + 8))(v31, v4);
  }

  v38(v15, 1, 1, v4);
  swift_beginAccess();
  sub_2613242C8(v15, v2 + v30);
  swift_endAccess();
  v32 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuationTimeout;
  if (*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuationTimeout))
  {

    sub_2613A179C();
  }

  *(v2 + v32) = 0;
}

id sub_261318200(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v34 = a4;
  v35 = a2;
  v33 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = sub_26129B5FC();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v32 = *(v15 + 48);
  if (v32(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v31 = v14;
    v16 = sub_26125A798();
    v17 = sub_261291AA8();
    v14 = v31;
    sub_26129BC3C(v16 & 1, v5, 0xD000000000000027, 0x80000002613BCF70, v17, v18);

    (*(v15 + 8))(v12, v14);
  }

  v19 = [objc_opt_self() server];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 voiceOverEnabled];
  }

  else
  {
    v21 = 0;
  }

  *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_voiceOverRequiresReEnabling) = v21;
  v22 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
  (*(*v22 + 368))(v5);
  sub_26125A870(v13, v10, &qword_27FE9F560, &qword_2613A3CB0);
  if (v32(v10, 1, v14) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = v34;
  }

  else
  {
    v24 = v15;
    v25 = sub_2613A122C();
    v26 = sub_2613A1D7C();
    v27 = os_log_type_enabled(v25, v26);
    v23 = v34;
    if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = v23 & 1;
      _os_log_impl(&dword_261243000, v25, v26, "show PINUI - %{BOOL}d", v28, 8u);
      MEMORY[0x266701350](v28, -1, -1);
    }

    (*(v24 + 8))(v10, v14);
  }

  (*(*v22 + 560))(v33, v35, a3, v23 & 1);
  return [*(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client) readFeedback_];
}

uint64_t sub_261318724(char *a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v60 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v17 = sub_26129B5FC();
  sub_26125A870(v17, v16, &qword_27FE9F560, &qword_2613A3CB0);
  v18 = sub_2613A124C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v56 = v17;
    v57 = v12;
    v21 = sub_26125A798();
    v22 = sub_261291AA8();
    v17 = v56;
    v12 = v57;
    sub_26129BC3C(v21 & 1, v3, 0xD000000000000014, 0x80000002613BCB70, v22, v23);

    (*(v19 + 8))(v16, v18);
  }

  v24 = v60;
  if (v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_voiceOverRequiresReEnabling] == 1)
  {
    sub_26125A870(v17, v60, &qword_27FE9F560, &qword_2613A3CB0);
    if (v20(v24, 1, v18) == 1)
    {
      sub_26124C718(v24, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = sub_2613A122C();
      v26 = sub_2613A1D9C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v57 = a1;
        v28 = v27;
        *v27 = 0;
        _os_log_impl(&dword_261243000, v25, v26, "attempting to restore VO", v27, 2u);
        v29 = v28;
        a1 = v57;
        MEMORY[0x266701350](v29, -1, -1);
      }

      (*(v19 + 8))(v60, v18);
    }

    v30 = [objc_opt_self() server];
    if (v30)
    {
      v31 = v30;
      [v30 setVoiceOverEnabled_];
    }
  }

  if (sub_2613A0DEC() == a1 && v32 == v61)
  {

LABEL_16:
    sub_26125A870(v17, v12, &qword_27FE9F560, &qword_2613A3CB0);
    if (v20(v12, 1, v18) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v34 = sub_2613A122C();
      v35 = sub_2613A1D9C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_261243000, v34, v35, "cleaning invalidated TapUI", v36, 2u);
        MEMORY[0x266701350](v36, -1, -1);
      }

      (*(v19 + 8))(v12, v18);
    }

    v37 = *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask];
    if (v37)
    {
      v38 = v3;
      v39 = *(*v37 + 336);

      v39(0);
      v3 = v38;
    }

    if (*&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion])
    {
      [*&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client] readFeedback_];
    }

    v40 = sub_2613A1C1C();
    v41 = v59;
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0;
    *(v42 + 40) = v3;
    v43 = v3;
    v44 = &unk_2613AC940;
    v45 = v41;
LABEL_26:
    sub_261266800(0, 0, v45, v44, v42);
  }

  v33 = sub_2613A241C();

  if (v33)
  {
    goto LABEL_16;
  }

  if (sub_2613A0DDC() == a1 && v47 == v61)
  {

LABEL_32:
    v49 = v58;
    sub_26125A870(v17, v58, &qword_27FE9F560, &qword_2613A3CB0);
    if (v20(v49, 1, v18) == 1)
    {
      sub_26124C718(v58, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v50 = sub_2613A122C();
      v51 = sub_2613A1D9C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_261243000, v50, v51, "cleaning invalidated Issuer PIN", v52, 2u);
        MEMORY[0x266701350](v52, -1, -1);
      }

      (*(v19 + 8))(v58, v18);
    }

    sub_261316E00(0, 27, 0);
    v53 = sub_2613A1C1C();
    v54 = v59;
    (*(*(v53 - 8) + 56))(v59, 1, 1, v53);
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = 1;
    *(v42 + 40) = v3;
    v55 = v3;
    v44 = &unk_2613AC938;
    v45 = v54;
    goto LABEL_26;
  }

  v48 = sub_2613A241C();

  if (v48)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_261318F10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v0 - 8);
  v48 = &v47 - v1;
  v2 = sub_26139F64C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v50 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = sub_26129B5FC();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v52 = v14;
  if (v16(v12, 1) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = v51;
  }

  else
  {
    v18 = v16;
    v19 = v3;
    v20 = v13;
    v21 = v2;
    v22 = sub_26125A798();
    v23 = sub_261291AA8();
    v17 = v51;
    v47 = v15;
    v24 = v22 & 1;
    v2 = v21;
    v13 = v20;
    v3 = v19;
    v16 = v18;
    sub_26129BC3C(v24, v51, 0x6469444955706174, 0xEE00292864616F4CLL, v23, v25);
    v15 = v47;

    (*(v15 + 8))(v12, v52);
  }

  sub_26139F61C();
  sub_26139F5BC();
  (*(v3 + 8))(v5, v2);
  v26 = *(v17 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v26)
  {
    v27 = v15;
    v28 = *((*MEMORY[0x277D85000] & *v17) + 0x2A0);

    v30 = v28(v29);
    if (v30)
    {
      if (sub_26125B314(*(v30 + 64), *(v30 + 72)))
      {

        v31 = sub_2613A1C1C();
        v32 = v48;
        (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
        v33 = swift_allocObject();
        v33[2] = 0;
        v33[3] = 0;
        v33[4] = v26;
        sub_261266800(0, 0, v32, &unk_2613AC950, v33);
      }
    }

    v42 = v50;
    sub_26125A870(v13, v50, &qword_27FE9F560, &qword_2613A3CB0);
    if ((v16)(v42, 1, v52) == 1)
    {
      v43 = sub_26124C718(v50, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v44 = sub_2613A122C();
      v45 = sub_2613A1D8C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_261243000, v44, v45, "Invalid context or no session store in daemon after TapUI loaded, cleaning up UI", v46, 2u);
        MEMORY[0x266701350](v46, -1, -1);
      }

      v43 = (*(v27 + 8))(v50, v52);
    }

    (*(**(v17 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) + 464))(v43);
  }

  v34 = v13;
  v35 = v49;
  sub_26125A870(v34, v49, &qword_27FE9F560, &qword_2613A3CB0);
  if ((v16)(v35, 1, v52) == 1)
  {
    v36 = sub_26124C718(v35, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v37 = v15;
    v38 = sub_2613A122C();
    v39 = sub_2613A1D8C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_261243000, v38, v39, "No read task in daemon after TapUI loaded, cleaning up UI", v40, 2u);
      MEMORY[0x266701350](v40, -1, -1);
    }

    v36 = (*(v37 + 8))(v35, v52);
  }

  return (*(**(v17 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) + 464))(v36);
}

uint64_t sub_261319578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2613A21DC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261319638, 0, 0);
}

uint64_t sub_261319638(uint64_t a1)
{
  v2 = sub_2613A263C();
  v4 = v3;
  sub_2613A24CC();
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_261319714;

  return sub_2612D3284(v2, v4, 0, 0, 1);
}

uint64_t sub_261319714()
{
  v2 = *v1;

  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_261324920;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_2613198AC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2613198AC()
{
  v1 = *(v0 + 16);
  v2 = sub_26125A798();
  v3 = sub_26125A798();
  v4 = sub_26125A798();
  v5.n128_f64[0] = sub_26133BE48();
  (*(*v1 + 344))(0, v2 & 1, v3 & 1, v4 & 1, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_261319988()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v1, 0xD000000000000016, 0x80000002613BCB90, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  v11 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
  v12 = [v11 updateWithTransactionEvent_];
  v13 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (!v13)
  {
    return (*(*v11 + 464))(v12);
  }

  v14 = sub_26125A798();
  v15 = sub_26125A798();
  v16 = sub_26125A798();
  v17.n128_f64[0] = sub_26133BE48();
  (*(*v13 + 344))(1, v14 & 1, v15 & 1, v16 & 1, v17);
}

uint64_t sub_261319BD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_26125A798();
    v10 = sub_261291AA8();
    sub_26129BC3C(v9 & 1, v1, 0xD000000000000017, 0x80000002613BCBB0, v10, v11);

    v8 = (*(v7 + 8))(v4, v6);
  }

  v12 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (!v12)
  {
    return (*(**(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) + 464))(v8);
  }

  v13 = *(*v12 + 296);

  v13(1);
}