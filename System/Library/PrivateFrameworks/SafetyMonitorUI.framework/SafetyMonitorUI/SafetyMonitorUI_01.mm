uint64_t sub_264624F54(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  return v3;
}

uint64_t sub_264624FFC(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;

  v10 = sub_264783EE4();
  return a7(v10);
}

void sub_2646250B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;

  v7 = sub_264783EE4();
  a4(v7);
}

uint64_t sub_26462513C()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = v2;
    v9 = v8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v1;
    v20 = v11;
    *v9 = 136315651;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v20);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0x7461636F4C646E65, 0xEB000000006E6F69, &v20);
    *(v9 + 22) = 2117;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v19);

    v15 = v19;
    *(v9 + 24) = v19;
    *v10 = v15;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: endLocation was changed to %{sensitive}@", v9, 0x20u);
    sub_26460CD50(v10, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    return (*(v3 + 8))(v5, v18);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

void (*SessionViewModel.endLocation.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_2646254A0;
}

void sub_2646254C8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v8;
  v13 = v8;

  if (a2)
  {
    v9 = v13;
    v10 = sub_264783EE4();
    a5(v10);

    v11 = *a1;
  }

  else
  {
    v12 = sub_264783EE4();
    a5(v12);
    v11 = v13;
  }
}

uint64_t sub_2646255D8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$endLocation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$endLocation.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__endLocation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

void sub_264625A04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  v0 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (![v4 isActiveState])
  {

LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v4);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v4);

    return;
  }

  v1 = [v0 configuration];
  if (v1 && (v2 = v1, v3 = [v1 destination], v2, v3))
  {
    [v3 radius];
  }

  else
  {
  }
}

uint64_t sub_264625C28()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v1;
    v19 = v9;
    *v8 = 136315651;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x80000002647948E0, &v19);
    *(v8 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v18);

    sub_264659D00();
    v13 = sub_264785964();
    v15 = v14;

    v16 = sub_2646DF234(v13, v15, &v19);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: candidateSessionDestinations was changed to %{sensitive}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t (*SessionViewModel.candidateSessionDestinations.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_264625F78;
}

uint64_t sub_264625FBC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D28, &qword_2647891A8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B40, &qword_264788A18);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$candidateSessionDestinations.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D28, &qword_2647891A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B40, &qword_264788A18);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$candidateSessionDestinations.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D28, &qword_2647891A8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__candidateSessionDestinations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B40, &qword_264788A18);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t sub_264626414@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v6);

  *a4 = v6;
  return result;
}

uint64_t sub_2646264B8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = sub_264783EE4();
  return a7(v8);
}

uint64_t sub_264626570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_264783EE4();
  return a4(v5);
}

uint64_t sub_2646265F0()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v1;
    v19 = v9;
    *v8 = 136315650;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD000000000000019, 0x80000002647948C0, &v19);
    *(v8 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v18);

    v13 = MEMORY[0x26673F530](v18, MEMORY[0x277D837D0]);
    v15 = v14;

    v16 = sub_2646DF234(v13, v15, &v19);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: mostLikelyReceiverHandles was changed to %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t (*SessionViewModel.mostLikelyReceiverHandles.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_264626934;
}

uint64_t sub_26462695C(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v8;

  if (a2)
  {

    v9 = sub_264783EE4();
    a5(v9);
  }

  else
  {
    v11 = sub_264783EE4();
    return a5(v11);
  }
}

uint64_t sub_264626A64(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D30, &qword_2647891F8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B38, &qword_264788A10);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$mostLikelyReceiverHandles.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D30, &qword_2647891F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B38, &qword_264788A10);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$mostLikelyReceiverHandles.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D30, &qword_2647891F8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__mostLikelyReceiverHandles;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B38, &qword_264788A10);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

double SessionViewModel.expectedTravelTime.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_264626F18(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264627014();
}

uint64_t SessionViewModel.expectedTravelTime.setter(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264627014();
}

uint64_t sub_264627014()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v1;
    v15 = v9;
    *v8 = 136315650;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD000000000000012, 0x80000002647948A0, &v15);
    *(v8 + 22) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v14);

    *(v8 + 24) = v14;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: expectedTravelTime was changed to %f", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t (*SessionViewModel.expectedTravelTime.modify(void *a1))()
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_264627320;
}

uint64_t sub_264627320(void *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v2;

  sub_264783EE4();
  return sub_264627014();
}

uint64_t sub_2646273BC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$expectedTravelTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$expectedTravelTime.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__expectedTravelTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t SessionViewModel.deviceClass.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_264627870(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_2646278E8();
}

uint64_t sub_2646278E8()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v1;
    v18 = v9;
    *v8 = 136315650;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0x6C43656369766564, 0xEB00000000737361, &v18);
    *(v8 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v17);

    type metadata accessor for UIUserInterfaceIdiom(0);
    v13 = sub_264785764();
    v15 = sub_2646DF234(v13, v14, &v18);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: deviceClass was changed to %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t (*SessionViewModel.deviceClass.modify(void *a1))()
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_264627C24;
}

uint64_t sub_264627C24(void *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v2;

  sub_264783EE4();
  return sub_2646278E8();
}

uint64_t sub_264627CB8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D48, &qword_264789258);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D40, &qword_264789250);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$deviceClass.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D48, &qword_264789258);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D40, &qword_264789250);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$deviceClass.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D48, &qword_264789258);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__deviceClass;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D40, &qword_264789250);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26462815C()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v6 = sub_264783E14();
  v7 = sub_2647859F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v1;
    v15 = v9;
    *v8 = 136315650;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0x6576697463417369, 0xEE00656369766544, &v15);
    *(v8 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v14);

    *(v8 + 24) = v14;

    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: isActiveDevice was changed to %{BOOL}d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t (*SessionViewModel.isActiveDevice.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_264628490;
}

uint64_t sub_2646284D4(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$isActiveDevice.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$isActiveDevice.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isActiveDevice;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_264628950()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v6 = sub_264783E14();
  v7 = sub_2647859F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v1;
    v15 = v9;
    *v8 = 136315650;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD000000000000019, 0x8000000264794980, &v15);
    *(v8 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v14);

    *(v8 + 24) = v14;

    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: isProcessingRemoteCommand was changed to %{BOOL}d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t (*SessionViewModel.isProcessingRemoteCommand.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_264628C7C;
}

uint64_t sub_264628CC0(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$isProcessingRemoteCommand.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$isProcessingRemoteCommand.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isProcessingRemoteCommand;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646290EC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

void sub_26462916C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  sub_264629270();
}

uint64_t SessionViewModel.userSessionConfiguration.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  sub_264629270();
}

void sub_264629270()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264785594();
  v65 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2647855C4();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  v11 = sub_264783B64();
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x28223BE20](v11);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264783E24();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v72 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - v17;
  sub_264783DF4();
  swift_retain_n();
  v19 = sub_264783E14();
  v20 = sub_2647859F4();
  v21 = os_log_type_enabled(v19, v20);
  v68 = v2;
  v73 = v14;
  v74 = v13;
  v71 = v3;
  if (!v21)
  {

    v35 = *(v14 + 8);
    v35(v18, v13);
    v36 = v3;
    v32 = v72;
    v33 = v70;
    goto LABEL_9;
  }

  v22 = swift_slowAlloc();
  v60 = swift_slowAlloc();
  v75 = v1;
  aBlock[0] = v60;
  *v22 = 136315906;

  v23 = sub_264785764();
  v25 = sub_2646DF234(v23, v24, aBlock);

  *(v22 + 4) = v25;
  *(v22 + 12) = 2080;
  *(v22 + 14) = sub_2646DF234(0xD000000000000018, 0x8000000264794880, aBlock);
  *(v22 + 22) = 2080;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v75);

  type metadata accessor for UserSessionConfiguration(0);
  v26 = sub_264785764();
  v28 = sub_2646DF234(v26, v27, aBlock);

  *(v22 + 24) = v28;
  *(v22 + 32) = 1024;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v75);

  v29 = v75;
  if (!v75)
  {

    v32 = v72;
    v31 = v73;
    v33 = v70;
    goto LABEL_7;
  }

  v30 = [v75 isActiveState];

  v32 = v72;
  v31 = v73;
  v33 = v70;
  if ((v30 & 1) == 0)
  {
LABEL_7:
    v34 = 0;
    goto LABEL_8;
  }

  v34 = 1;
LABEL_8:
  *(v22 + 34) = v34;

  _os_log_impl(&dword_264605000, v19, v20, "%s, %s: New user session configuration set, %s, hasActiveSession, %{BOOL}d", v22, 0x26u);
  v37 = v60;
  swift_arrayDestroy();
  MEMORY[0x266740650](v37, -1, -1);
  MEMORY[0x266740650](v22, -1, -1);

  v35 = *(v31 + 8);
  v35(v18, v74);
  v36 = v71;
LABEL_9:
  v38 = v69;
  SessionViewModel.currentSessionID.getter(v10);
  if ((*(v38 + 48))(v10, 1, v33) == 1)
  {
    sub_26460CD50(v10, &qword_27FF75CE8, &unk_264788B70);
  }

  else
  {
    v39 = v35;
    v40 = v38;
    v41 = *(v38 + 32);
    v42 = v66;
    v41(v66, v10, v33);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(aBlock);

    v43 = aBlock[0];
    v44 = v67;
    v41(v67, v42, v33);
    (*(v40 + 56))(v44, 0, 1, v33);
    v35 = v39;
    v36 = v71;
    v32 = v72;
    v45 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
    swift_beginAccess();
    sub_264659660(v44, v43 + v45, &qword_27FF75CE8, &unk_264788B70);
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(aBlock);

  type metadata accessor for UserSessionConfiguration(0);
  sub_264655E3C(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);
  v46 = sub_264783E64();

  aBlock[0] = v46;
  swift_allocObject();
  swift_weakInit();
  sub_264783E84();
  sub_264783F14();

  swift_beginAccess();
  sub_264783E34();
  swift_endAccess();

  sub_264783DF4();

  v47 = sub_264783E14();
  v48 = sub_2647859F4();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v75 = v1;
    aBlock[0] = v50;
    *v49 = 136315394;

    v51 = sub_264785764();
    v53 = sub_2646DF234(v51, v52, aBlock);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_2646DF234(0xD000000000000018, 0x8000000264794880, aBlock);
    _os_log_impl(&dword_264605000, v47, v48, "%s, %s: New user session configuration set.", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v50, -1, -1);
    MEMORY[0x266740650](v49, -1, -1);
  }

  v35(v32, v74);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(aBlock);

  v54 = aBlock[0];
  if (aBlock[0])
  {
    if ([aBlock[0] isActiveState])
    {
    }

    else
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v55 = sub_264785A44();
      aBlock[4] = sub_264659CF8;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_627;
      v56 = _Block_copy(aBlock);

      v57 = v61;
      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
      v58 = v63;
      sub_264785BD4();
      MEMORY[0x26673F780](0, v57, v58, v56);
      _Block_release(v56);

      (*(v65 + 8))(v58, v36);
      (*(v62 + 8))(v57, v64);
    }
  }
}

id SessionViewModel.hasActiveSession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  v0 = v3;
  if (!v3)
  {
    return 0;
  }

  v1 = [v3 isActiveState];

  return v1;
}

uint64_t sub_264629EA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for SessionViewModel(0);
    sub_264655E3C(&qword_27FF75DC0, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
    sub_264783E64();

    sub_264783E74();
  }

  return result;
}

void sub_264629F5C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  v1 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  v2 = v1;

  sub_264783EE4();
  sub_26462513C();
}

uint64_t (*SessionViewModel.userSessionConfiguration.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_26462A108;
}

uint64_t sub_26462A108(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  if (a2)
  {
    swift_retain_n();

    sub_264783EE4();
    sub_264629270();
  }

  else
  {

    sub_264783EE4();
    sub_264629270();
  }
}

uint64_t sub_26462A214(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D50, &qword_2647892A8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B28, &unk_264788A00);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$userSessionConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D50, &qword_2647892A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B28, &unk_264788A00);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$userSessionConfiguration.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D50, &qword_2647892A8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__userSessionConfiguration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B28, &unk_264788A00);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26462A654(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  return v3;
}

uint64_t sub_26462A724()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v1;
    v18 = v9;
    *v8 = 136315650;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD000000000000024, 0x8000000264794850, &v18);
    *(v8 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v17);

    if (v17)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v17)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = sub_2646DF234(v13, v14, &v18);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: fetchedMostLikelySessionDestinations was changed to %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t (*SessionViewModel.fetchedMostLikelySessionDestinations.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_26462AA6C;
}

uint64_t sub_26462AAB0(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_26462AB28(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_264783EA4();
  return swift_endAccess();
}

uint64_t sub_26462ABA4(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$fetchedMostLikelySessionDestinations.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$fetchedMostLikelySessionDestinations.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__fetchedMostLikelySessionDestinations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

void sub_26462AFD0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_264783EB4();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_264783EB4();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t SessionViewModel.endLocationAnnotations.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  v0 = v3;
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = [v3 placemark];

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  result = swift_allocObject();
  *(result + 16) = xmmword_264788990;
  *(result + 32) = v1;
  return result;
}

id sub_26462B210()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v12);

  v0 = v12[0];
  if (!v12[0])
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v12);

  if (!v12[0] || (v1 = *(v12[0] + 16), , !v1))
  {

    return 0;
  }

  v2 = *(v0 + 16);
  if (v2)
  {
    v12[0] = MEMORY[0x277D84F90];
    sub_264785D54();
    v3 = v0 + 40;
    do
    {
      v4 = objc_allocWithZone(MEMORY[0x277D4AAE8]);

      v5 = sub_264785714();

      v6 = sub_2647857E4();
      [v4 initWithPrimaryHandle:v5 secondaryHandles:v6];

      sub_264785D34();
      sub_264785D64();
      sub_264785D74();
      sub_264785D44();
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v12);

  v8 = v12[1];
  sub_264659B70(0, &qword_27FF75E98, 0x277D4AAE8);
  v9 = sub_2647857E4();

  if (v8)
  {
    v10 = sub_264785714();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D4AA98]) initWithReceiverHandles:v9 identifier:v10 displayName:0];

  return v11;
}

uint64_t SessionViewModel.recipientContacts.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v9);

  v1 = v9;
  if (!v9)
  {
    return 0;
  }

  v2 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 32);
    v5 = v1 + 40;
    do
    {

      v6 = sub_264785714();

      v7 = [v4 contactWith_];

      MEMORY[0x26673F500]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264785814();
      }

      sub_264785844();
      v5 += 16;
      --v3;
    }

    while (v3);
    v2 = v9;
  }

  return v2;
}

uint64_t SessionViewModel.recipientsDisplayNameFromLocalConversation.getter()
{
  sub_264783D04();
  v0 = sub_26462B210();
  v1 = MEMORY[0x26673DA20]();

  return v1;
}

id SessionViewModel.localConversationIsGroup.getter()
{
  v0 = sub_26462B210();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 isGroup];

  return v2;
}

uint64_t SessionViewModel.isActiveSessionForRecipient.getter()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v37);

  v6 = v37;
  if (v37)
  {
    v7 = [v37 sessionState];

    if (v7 == 1)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v37);

  v9 = v37;
  if (v37)
  {
    v10 = [v37 configuration];

    if (v10)
    {
      v11 = [v10 conversation];

      if (v11)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(&v37);

        if (v37)
        {
          sub_264655868(v37);

          v12 = sub_264785944();

          v13 = [v11 hasEqualPrimaryHandlesAsSet_];

          return v13;
        }
      }
    }
  }

  sub_264783DF4();

  v14 = sub_264783E14();
  v15 = sub_2647859D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v1;
    v37 = v35;
    *v16 = 136315906;

    v17 = sub_264785764();
    v19 = sub_2646DF234(v17, v18, &v37);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x8000000264793800, &v37);
    *(v16 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v36);

    v20 = v36;
    if (v36 && (v21 = [v36 configuration], v20, v21))
    {
      v22 = [v21 conversation];

      v23 = [v22 description];
      v24 = sub_264785724();
      v26 = v25;

      v27 = v24;
    }

    else
    {
      v26 = 0xE300000000000000;
      v27 = 7104878;
    }

    v28 = sub_2646DF234(v27, v26, &v37);

    *(v16 + 24) = v28;
    *(v16 + 32) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v36);

    if (v36)
    {
      v29 = MEMORY[0x26673F530](v36, MEMORY[0x277D837D0]);
      v31 = v30;
    }

    else
    {
      v31 = 0xE300000000000000;
      v29 = 7104878;
    }

    v32 = sub_2646DF234(v29, v31, &v37);

    *(v16 + 34) = v32;
    _os_log_impl(&dword_264605000, v14, v15, "%s, %s, No session conversation,%s, or recipientHandles, %s", v16, 0x2Au);
    v33 = v35;
    swift_arrayDestroy();
    MEMORY[0x266740650](v33, -1, -1);
    MEMORY[0x266740650](v16, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_26462BC54(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_264785594();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2647855C4();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2647855A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  (*(v10 + 104))(v12, *MEMORY[0x277D851B8], v9);
  v13 = sub_264785A64();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  v16 = v20;
  v15 = v21;
  v14[2] = a1;
  v14[3] = v16;
  v14[4] = v15;
  aBlock[4] = sub_264659440;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_545;
  v17 = _Block_copy(aBlock);
  sub_26465944C(a1, v16);

  sub_2647855B4();
  v24 = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v8, v5, v17);
  _Block_release(v17);

  (*(v23 + 8))(v5, v3);
  (*(v6 + 8))(v8, v22);
}

uint64_t SessionViewModel.activeSessionRecipientContacts.getter()
{
  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v7);

  v2 = v7;
  if (v7)
  {
    v3 = [v7 configuration];

    if (v3)
    {
      v2 = [v3 conversation];
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = [v1 activeSessionRecipientContactsFor_];

  sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
  v5 = sub_2647857F4();

  return v5;
}

uint64_t SessionViewModel.activeSessionGroupID.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v6);

  v0 = v6;
  if (!v6)
  {
    return 0;
  }

  v1 = [v6 configuration];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 conversation];

  v3 = [v2 identifier];
  if (!v3)
  {
    return 0;
  }

  v4 = sub_264785724();

  return v4;
}

id SessionViewModel.smSessionStartMessage()()
{
  v1 = v0;
  v123 = *v0;
  v2 = sub_264783AF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v128 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v113 - v6;
  v8 = sub_264783B64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_264783E24();
  v129 = *(v126 - 8);
  v11 = MEMORY[0x28223BE20](v126);
  v13 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v115 = &v113 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v124 = &v113 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v121 = &v113 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v120 = &v113 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v113 - v22;
  v24 = sub_26461A57C();
  if (v24)
  {
    v25 = v24;
    v122 = v7;
    v118 = v3;
    sub_264783DF4();

    v26 = v0;
    v27 = v25;
    v28 = sub_264783E14();
    v29 = sub_2647859F4();

    v30 = os_log_type_enabled(v28, v29);
    v125 = v27;
    v119 = v2;
    v116 = v9;
    v117 = v8;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v130[0] = v114;
      *v31 = 136315650;
      v132 = v26;

      v33 = sub_264785764();
      v35 = sub_2646DF234(v33, v34, v130);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v130);
      *(v31 + 22) = 2112;
      *(v31 + 24) = v27;
      *v32 = v25;
      v36 = v27;
      _os_log_impl(&dword_264605000, v28, v29, "%s, %s: sessionConfiguration: %@", v31, 0x20u);
      sub_26460CD50(v32, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v32, -1, -1);
      v37 = v114;
      swift_arrayDestroy();
      MEMORY[0x266740650](v37, -1, -1);
      MEMORY[0x266740650](v31, -1, -1);
    }

    v38 = *(v129 + 8);
    v39 = v126;
    v38(v23, v126);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v130);

    v40 = v130[0];
    v41 = v26;
    if (v130[0] && (v42 = [v130[0] configuration], v40, v42))
    {
      v43 = [v42 conversation];

      v44 = v124;
      v45 = v125;
    }

    else
    {
      v46 = v120;
      sub_264783DF4();

      v47 = sub_264783E14();
      v48 = sub_2647859D4();

      v49 = os_log_type_enabled(v47, v48);
      v44 = v124;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v130[0] = v51;
        *v50 = 136315394;
        v132 = v26;

        v52 = sub_264785764();
        v53 = v39;
        v54 = v46;
        v56 = sub_2646DF234(v52, v55, v130);

        *(v50 + 4) = v56;
        *(v50 + 12) = 2080;
        *(v50 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v130);
        _os_log_impl(&dword_264605000, v47, v48, "%s, %s: sessionMessage, missing receiverHandle", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v51, -1, -1);
        v57 = v50;
        v44 = v124;
        MEMORY[0x266740650](v57, -1, -1);

        v58 = v54;
        v39 = v53;
        v38(v58, v53);
      }

      else
      {

        v38(v46, v39);
      }

      v45 = v125;
    }

    v67 = v121;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v130);

    if (v131)
    {
    }

    else
    {
      sub_264783DF4();

      v68 = sub_264783E14();
      v69 = sub_2647859B4();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v130[0] = v71;
        *v70 = 136315394;
        v132 = v26;

        v72 = sub_264785764();
        v74 = sub_2646DF234(v72, v73, v130);

        *(v70 + 4) = v74;
        v45 = v125;
        *(v70 + 12) = 2080;
        *(v70 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v130);
        _os_log_impl(&dword_264605000, v68, v69, "%s, %s: sessionMessage, missing initiatorInvitationTokenMap", v70, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v71, -1, -1);
        v75 = v70;
        v44 = v124;
        MEMORY[0x266740650](v75, -1, -1);
      }

      v38(v67, v39);
    }

    v76 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
    if ([v45 sessionType] == 2)
    {
      v77 = [v45 destination];
      if (v77)
      {
        v78 = v77;
        v79 = [v77 destinationMapItem];

        v80 = sub_264783A14();
        v82 = v81;

        sub_264783DF4();

        v83 = sub_264783E14();
        v84 = sub_2647859F4();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v121 = v38;
          v87 = v86;
          v130[0] = v86;
          *v85 = 136315394;
          v132 = v26;

          v88 = sub_264785764();
          v90 = sub_2646DF234(v88, v89, v130);
          v45 = v125;

          *(v85 + 4) = v90;
          *(v85 + 12) = 2080;
          *(v85 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v130);
          _os_log_impl(&dword_264605000, v83, v84, "%s, %s: created destinationMapItemHandle", v85, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v87, -1, -1);
          MEMORY[0x266740650](v85, -1, -1);

          (v121)(v124, v126);
        }

        else
        {

          v38(v44, v126);
        }

        v76 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
        goto LABEL_30;
      }

      v91 = v115;
      sub_264783DF4();

      v92 = sub_264783E14();
      v93 = sub_2647859D4();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v130[0] = v95;
        *v94 = 136315394;
        v132 = v41;

        v96 = sub_264785764();
        v121 = v38;
        v98 = sub_2646DF234(v96, v97, v130);

        *(v94 + 4) = v98;
        v45 = v125;
        *(v94 + 12) = 2080;
        *(v94 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v130);
        _os_log_impl(&dword_264605000, v92, v93, "%s, %s: missing destinationMapItemHandle", v94, 0x16u);
        swift_arrayDestroy();
        v99 = v95;
        v76 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
        MEMORY[0x266740650](v99, -1, -1);
        MEMORY[0x266740650](v94, -1, -1);

        (v121)(v91, v39);
      }

      else
      {

        v38(v91, v39);
      }
    }

    v80 = 0;
    v82 = 0xF000000000000000;
LABEL_30:
    v100 = [v45 sessionID];
    sub_264783B44();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v130);

    if (!v131)
    {
      sub_264655A9C(MEMORY[0x277D84F90], &qword_27FF75F50, &qword_2647898F8);
    }

    v101 = [v45 v76[71]];
    SessionViewModel.endDate.getter();
    SessionViewModel.coarseEndDate.getter(v128);
    v102 = [v45 destination];
    if (v102)
    {
      v103 = v102;
      v104 = [v102 destinationType];
    }

    else
    {
      v104 = 0;
    }

    v105 = sub_264783B14();
    sub_264659B70(0, &qword_27FF75D58, 0x277CBC2C0);
    v106 = sub_264785604();

    v107 = sub_264783A64();
    v108 = sub_264783A64();
    v109 = 0;
    if (v82 >> 60 != 15)
    {
      v109 = sub_264783A04();
      sub_264655900(v80, v82);
    }

    v66 = [objc_allocWithZone(MEMORY[0x277D4ABE8]) initWithSessionID:v105 invitationTokenDict:v106 sessionType:v101 estimatedEndTime:v107 coarseEstimatedEndTime:v108 destinationType:v104 destinationMapItem:v109 lowPowerModeWarningState:0];

    v110 = v119;
    v111 = *(v118 + 8);
    v111(v128, v119);
    v111(v122, v110);
    (*(v116 + 8))(v127, v117);
    return v66;
  }

  sub_264783DF4();

  v59 = sub_264783E14();
  v60 = sub_2647859D4();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v130[0] = v62;
    *v61 = 136315394;
    v132 = v1;

    v63 = sub_264785764();
    v65 = sub_2646DF234(v63, v64, v130);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    *(v61 + 14) = sub_2646DF234(0xD000000000000017, 0x8000000264793820, v130);
    _os_log_impl(&dword_264605000, v59, v60, "%s, %s: missing sessionConfiguration", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v62, -1, -1);
    MEMORY[0x266740650](v61, -1, -1);
  }

  (*(v129 + 8))(v13, v126);
  return 0;
}

uint64_t SessionViewModel.initiatorInvitationTokenMap.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v1);

  return v1[2];
}

uint64_t SessionViewModel.endDate.getter()
{
  v0 = sub_264783AF4();
  MEMORY[0x28223BE20](v0 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  v1 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  if (v1 == 2)
  {
    sub_264713490();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v3);
  }

  sub_264783AD4();
  return sub_264783A24();
}

uint64_t SessionViewModel.coarseEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v13 = sub_264783AF4();
  v1 = *(v13 - 8);
  v2 = MEMORY[0x28223BE20](v13);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v12 - v4;
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v14);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v14);

  v8 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v14);

  if (v8 == 2)
  {
    sub_264713490();

    sub_264783AD4();
    sub_264783A24();
    v5 = v7;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v14);

    sub_264783AD4();
    sub_264783A24();
  }

  v9 = sub_264783A64();
  v10 = [v9 roundedTime];

  sub_264783AC4();
  return (*(v1 + 8))(v5, v13);
}

uint64_t SessionViewModel.endDateString.getter()
{
  v0 = sub_264783AF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionViewModel.endDate.getter();
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  v5 = sub_264783A64();
  v6 = [v4 stringFromDate_];

  v7 = sub_264785724();
  (*(v1 + 8))(v3, v0);
  return v7;
}

BOOL SessionViewModel.isInitiatorEligible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v2);

  v0 = v2;

  return v0 == 1;
}

BOOL SessionViewModel.isReceiverEligible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v2);

  v0 = v2[1];

  return v0 == 1;
}

BOOL SessionViewModel.isReady.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v5);

  v0 = v5;
  if (v5)
  {
    v1 = [v5 isActiveState];

    if (v1)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v5);

  v3 = v5;
  if (!v5)
  {
    return 0;
  }

  v4 = [v5 sessionState];

  return v4 == 11;
}

BOOL SessionViewModel.hasInitiatorInvitationToken.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v2);

  v0 = v3;
  if (v3)
  {
  }

  return v0 != 0;
}

uint64_t sub_26462DB64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  if (v3 != 2)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  if (!v3)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  sub_264713490();
  if ((v0 & 1) == 0)
  {

    return 0;
  }

  v1 = sub_2647138C4();

  if (!v1)
  {
    return 1;
  }

  return 0;
}

BOOL sub_26462DD54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  if (v4)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  v1 = v3;
  if (!v3)
  {
    return 0;
  }

  v2 = [v3 sessionState];

  return v2 == 10;
}

uint64_t sub_26462DE48()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  if (*(v0 + v1) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v6), , , v6 == 1))
  {
    v2 = sub_26462DB64();
  }

  else
  {
    v2 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v6);

  v3 = v6;
  if (!v6 || (v4 = [v6 sessionState], v3, v4 != 11))
  {
    v2 = 0;
  }

  return v2 & 1;
}

Swift::Void __swiftcall SessionViewModel.prepareForConfigurationPresentation()()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v58 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v58 - v10;
  v12 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13)
  {
    v14 = v13;
    sub_264783DF4();
    v15 = v14;

    v16 = sub_264783E14();
    v17 = sub_2647859F4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v59 = v3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v60 = v2;
      v21 = v20;
      v58 = swift_slowAlloc();
      aBlock[0] = v58;
      *v19 = 136315651;
      aBlock[6] = v1;

      v22 = sub_264785764();
      v24 = sub_2646DF234(v22, v23, aBlock);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2646DF234(0xD000000000000025, 0x8000000264793870, aBlock);
      *(v19 + 22) = 2117;
      *(v19 + 24) = v15;
      *v21 = v13;
      v25 = v15;
      _os_log_impl(&dword_264605000, v16, v17, "%s, %s: - picking up suggestedSessionConfig and setting UserSessionConfiguration, %{sensitive}@", v19, 0x20u);
      sub_26460CD50(v21, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v21, -1, -1);
      v26 = v58;
      swift_arrayDestroy();
      MEMORY[0x266740650](v26, -1, -1);
      MEMORY[0x266740650](v19, -1, -1);

      (*(v59 + 8))(v11, v60);
    }

    else
    {

      (*(v3 + 8))(v11, v2);
    }

    v38 = v15;
    v39 = _s15SafetyMonitorUI24UserSessionConfigurationC4withACSo09SMSessionF0C_tcfC_0(v38);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(aBlock);

    v40 = _s15SafetyMonitorUI24UserSessionConfigurationC2eeoiySbAC_ACtFZ_0(aBlock[0], v39);

    if (v40)
    {

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v39;

    sub_264783EE4();
    sub_264629270();

    goto LABEL_26;
  }

  v27 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
  swift_beginAccess();
  v28 = *(v1 + v27);
  if (v28)
  {
    v60 = v2;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_264783ED4(aBlock);

    v29 = aBlock[0];
    sub_264783DF4();

    v30 = sub_264783E14();
    v31 = sub_2647859F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v59 = v3;
      v33 = v32;
      v34 = swift_slowAlloc();
      v61 = v1;
      aBlock[0] = v34;
      *v33 = 136315650;

      v35 = sub_264785764();
      v37 = sub_2646DF234(v35, v36, aBlock);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2646DF234(0xD000000000000025, 0x8000000264793870, aBlock);
      *(v33 + 22) = 2048;
      *(v33 + 24) = v29;
      _os_log_impl(&dword_264605000, v30, v31, "%s, %s: - picking up workoutSessionConfiguration and setting UserSessionConfiguration, activity type: %lu", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v34, -1, -1);
      MEMORY[0x266740650](v33, -1, -1);

      (*(v59 + 8))(v9, v60);
    }

    else
    {

      (*(v3 + 8))(v9, v60);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(aBlock);

    v52 = _s15SafetyMonitorUI24UserSessionConfigurationC2eeoiySbAC_ACtFZ_0(aBlock[0], v28);

    if (!v52)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock[0] = v28;

      sub_264783EE4();
      sub_264629270();
    }

    goto LABEL_26;
  }

  v41 = v3;
  sub_264783DF4();
  swift_retain_n();
  v42 = sub_264783E14();
  v43 = sub_2647859F4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v1;
    aBlock[0] = v45;
    *v44 = 136315650;

    v46 = sub_264785764();
    v48 = sub_2646DF234(v46, v47, aBlock);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_2646DF234(0xD000000000000025, 0x8000000264793870, aBlock);
    *(v44 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v61);

    v49 = v61;
    if (v61)
    {
      v50 = [v61 isActiveState];

      if (v50)
      {
        v51 = 1;
LABEL_22:
        *(v44 + 24) = v51;

        _os_log_impl(&dword_264605000, v42, v43, "%s, %s: - There is no suggested configuration, hasActiveSession, %{BOOL}d.", v44, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x266740650](v45, -1, -1);
        MEMORY[0x266740650](v44, -1, -1);

        goto LABEL_23;
      }
    }

    else
    {
    }

    v51 = 0;
    goto LABEL_22;
  }

LABEL_23:
  (*(v41 + 8))(v6, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(aBlock);

  v53 = aBlock[0];
  if (!aBlock[0] || (v54 = [aBlock[0] isActiveState], v53, (v54 & 1) == 0))
  {
    v55 = v1[2];
    v56 = swift_allocObject();
    v56[2] = v1;
    v56[3] = sub_264655914;
    v56[4] = v1;
    aBlock[4] = sub_264655938;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26465A0C0;
    aBlock[3] = &block_descriptor_203;
    v57 = _Block_copy(aBlock);
    swift_retain_n();

    [v55 fetchCurrentWorkoutSnapshotWithCompletion_];
    _Block_release(v57);
LABEL_26:
  }
}

uint64_t sub_26462E928(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_264783E24();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  if (![objc_opt_self() zelkovaKahanaEnabled] || (a1 & 1) == 0)
  {
    sub_264783DF4();
    swift_retain_n();
    v30 = sub_264783E14();
    v31 = sub_2647859F4();
    if (!os_log_type_enabled(v30, v31))
    {

LABEL_15:
      (*(v13 + 8))(v16, v12);
      v40 = sub_26471B978();
      goto LABEL_16;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47 = a5;
    v48 = v33;
    *v32 = 136315650;

    v34 = sub_264785764();
    v36 = sub_2646DF234(v34, v35, &v48);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_2646DF234(0xD000000000000025, 0x8000000264793870, &v48);
    *(v32 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v47);

    v37 = v47;
    if (v47)
    {
      v38 = [v47 isActiveState];

      if (v38)
      {
        v39 = 1;
LABEL_14:
        *(v32 + 24) = v39;

        _os_log_impl(&dword_264605000, v30, v31, "%s, %s: - Setting initial configuration to the default one hour session since hasActiveSession is %{BOOL}d.", v32, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x266740650](v33, -1, -1);
        MEMORY[0x266740650](v32, -1, -1);

        goto LABEL_15;
      }
    }

    else
    {
    }

    v39 = 0;
    goto LABEL_14;
  }

  sub_264783DF4();

  v19 = sub_264783E14();
  v20 = sub_2647859F4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = v12;
    v22 = v21;
    v43 = swift_slowAlloc();
    v47 = a5;
    v48 = v43;
    *v22 = 136315650;

    v23 = sub_264785764();
    v25 = sub_2646DF234(v23, v24, &v48);
    v45 = a3;
    v26 = v13;
    v27 = a4;
    v28 = v25;

    *(v22 + 4) = v28;
    a4 = v27;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2646DF234(0xD000000000000025, 0x8000000264793870, &v48);
    *(v22 + 22) = 2048;
    *(v22 + 24) = v45;
    _os_log_impl(&dword_264605000, v19, v20, "%s, %s: - Currently in workout, workout activity type, %lu", v22, 0x20u);
    v29 = v43;
    swift_arrayDestroy();
    MEMORY[0x266740650](v29, -1, -1);
    MEMORY[0x266740650](v22, -1, -1);

    (*(v26 + 8))(v18, v44);
    a3 = v45;
  }

  else
  {

    (*(v13 + 8))(v18, v12);
  }

  sub_26460CCE8(v46, v11, &qword_27FF75CE8, &unk_264788B70);
  v40 = _s15SafetyMonitorUI24UserSessionConfigurationC07workoutE2ID0G12ActivityType0geJ0AC10Foundation4UUIDVSg_So09HKWorkoutiJ0VSo0meJ0VtcfC_0(v11, a3, a4);
LABEL_16:
  v41 = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = v41;

  sub_264783EE4();
  sub_264629270();
}

void SessionViewModel.fetchIsCurrentlyInWorkout(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v8[4] = sub_264659FB0;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26465A0C0;
  v8[3] = &block_descriptor_210;
  v7 = _Block_copy(v8);

  [v5 fetchCurrentWorkoutSnapshotWithCompletion_];
  _Block_release(v7);
}

uint64_t SessionViewModel.isInitiatorLoading.getter()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v6 = sub_264783E14();
  v7 = sub_2647859F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v25 = v2;
    v9 = v8;
    v24 = swift_slowAlloc();
    v27 = v24;
    *v9 = 136316931;
    v26[0] = v1;

    v10 = sub_264785764();
    v23 = v7;
    v12 = sub_2646DF234(v10, v11, &v27);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0xD000000000000012, 0x80000002647938A0, &v27);
    *(v9 + 22) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v26);

    v13 = v26[0];

    *(v9 + 24) = v13;

    *(v9 + 32) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v26);

    v14 = v26[1];

    *(v9 + 34) = v14;

    *(v9 + 42) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v26);

    *(v9 + 44) = LOBYTE(v26[0]);

    *(v9 + 48) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v26);

    *(v9 + 50) = LOBYTE(v26[0]);

    *(v9 + 54) = 1024;
    v15 = sub_26462DB64();

    *(v9 + 56) = v15 & 1;

    *(v9 + 60) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v26);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v16 = sub_264785764();
    v18 = sub_2646DF234(v16, v17, &v27);

    *(v9 + 62) = v18;
    _os_log_impl(&dword_264605000, v6, v23, "%s, %s: initiatorEligibility, %ld, receiverEligibility, %ld, fetchedMostLikelySessionDestinations, %{BOOL}d, isInitializing, %{BOOL}d, missingETA, %{BOOL}d, sessionState, %{sensitive}s", v9, 0x46u);
    v19 = v24;
    swift_arrayDestroy();
    MEMORY[0x266740650](v19, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v3 + 8))(v5, v25);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  if (sub_26462DD54())
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_26462DE48();
  }

  return v20 & 1;
}

uint64_t SessionViewModel.sendStartMessageValidity.getter@<X0>(NSObject **a1@<X8>)
{
  v2 = v1;
  v287 = a1;
  v3.isa = v1->isa;
  v4 = sub_264783C74();
  v5 = *(v4 - 8);
  v288 = v4;
  v289 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v276 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783E24();
  v9 = *(v8 - 8);
  v285 = v8;
  v286 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v276 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v276 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v276 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v276 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v283 = (&v276 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v276 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v282 = (&v276 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v281 = (&v276 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v280 = (&v276 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v279 = &v276 - v34;
  MEMORY[0x28223BE20](v33);
  v278 = &v276 - v35;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v290);

  v36 = v290;
  if (!v290)
  {
    goto LABEL_9;
  }

  isa = v3.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v290);

  if (!v290 || (v37 = v290[2].isa, , !v37))
  {

LABEL_9:
    v59 = v12;
    sub_264783DF4();

    v60 = sub_264783E14();
    v61 = sub_2647859D4();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      isa = v59;
      LODWORD(v282) = v61;
      v63 = v62;
      v283 = swift_slowAlloc();
      v290 = v283;
      *v63 = 136315650;
      v293 = v2;

      v64 = sub_264785764();
      v66 = sub_2646DF234(v64, v65, &v290);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2080;
      *(v63 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v290);
      *(v63 + 22) = 2080;
      v67 = *MEMORY[0x277D4AA08];
      v68 = v7;
      v70 = v288;
      v69 = v289;
      v71 = *(v289 + 104);
      v71(v68, v67, v288);
      v72 = sub_264783C24();
      v74 = v73;
      (*(v69 + 8))(v68, v70);
      v75 = sub_2646DF234(v72, v74, &v290);

      *(v63 + 24) = v75;
      _os_log_impl(&dword_264605000, v60, v282, "%s, %s: no receiver, User string: %s", v63, 0x20u);
      v76 = v283;
      swift_arrayDestroy();
      MEMORY[0x266740650](v76, -1, -1);
      MEMORY[0x266740650](v63, -1, -1);

      (*(v286 + 8))(isa, v285);
LABEL_13:
      v77 = v287;
      v78 = v67;
      v79 = v70;
      return (v71)(v77, v78, v79);
    }

    (*(v286 + 8))(v59, v285);
    v67 = *MEMORY[0x277D4AA08];
    v71 = *(v289 + 104);
LABEL_12:
    v70 = v288;
    goto LABEL_13;
  }

  if (([objc_opt_self() zelkovaGroupEnabled] & 1) == 0 && v36[2].isa > 1)
  {
    sub_264783DF4();

    v38 = sub_264783E14();
    v39 = sub_2647859D4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v7;
      v41 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      v290 = v283;
      *v41 = 136315906;
      v293 = v2;

      v42 = sub_264785764();
      v44 = sub_2646DF234(v42, v43, &v290);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v290);
      *(v41 + 22) = 2048;
      v45 = v36[2].isa;

      *(v41 + 24) = v45;

      *(v41 + 32) = 2080;
      v46 = *MEMORY[0x277D4AA50];
      LODWORD(isa) = v39;
      v47 = v289;
      v48 = *(v289 + 104);
      v49 = v40;
      v50 = v40;
      v51 = v288;
      v48(v50, v46, v288);
      v282 = v38;
      v52 = v49;
      v53 = sub_264783C24();
      v55 = v54;
      (*(v47 + 8))(v52, v51);
      v56 = sub_2646DF234(v53, v55, &v290);

      *(v41 + 34) = v56;
      v57 = v282;
      _os_log_impl(&dword_264605000, v282, isa, "%s, %s: group chat, handle count, %ld, User string: %s", v41, 0x2Au);
      v58 = v283;
      swift_arrayDestroy();
      MEMORY[0x266740650](v58, -1, -1);
      MEMORY[0x266740650](v41, -1, -1);

      (*(v286 + 8))(v15, v285);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v286 + 8))(v15, v285);
      v46 = *MEMORY[0x277D4AA50];
      v51 = v288;
      v48 = *(v289 + 104);
    }

    return (v48)(v287, v46, v51);
  }

  v277 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v290);

  v81 = v290;
  if (v290)
  {
    v82 = [v290 isActiveState];

    if (v82)
    {

      sub_264783DF4();

      v83 = sub_264783E14();
      v84 = sub_2647859D4();

      v85 = os_log_type_enabled(v83, v84);
      v86 = v289;
      if (v85)
      {
        v87 = swift_slowAlloc();
        v283 = swift_slowAlloc();
        v290 = v283;
        *v87 = 136315650;
        v293 = v2;

        v88 = sub_264785764();
        LODWORD(isa) = v84;
        v90 = sub_2646DF234(v88, v89, &v290);

        *(v87 + 4) = v90;
        *(v87 + 12) = 2080;
        *(v87 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v290);
        *(v87 + 22) = 2080;
        v91 = *MEMORY[0x277D4AA30];
        v92 = *(v86 + 104);
        v93 = v277;
        v94 = v288;
        v92(v277, v91, v288);
        v95 = sub_264783C24();
        v282 = v83;
        v96 = v95;
        v98 = v97;
        (*(v86 + 8))(v93, v94);
        v99 = sub_2646DF234(v96, v98, &v290);

        *(v87 + 24) = v99;
        v100 = v282;
        _os_log_impl(&dword_264605000, v282, isa, "%s, %s: session is already active, User string: %s", v87, 0x20u);
        v101 = v283;
        swift_arrayDestroy();
        MEMORY[0x266740650](v101, -1, -1);
        MEMORY[0x266740650](v87, -1, -1);

        (*(v286 + 8))(v18, v285);
      }

      else
      {

        (*(v286 + 8))(v18, v285);
        v91 = *MEMORY[0x277D4AA30];
        v92 = *(v86 + 104);
        v94 = v288;
      }

      return (v92)(v287, v91, v94);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v290);

  v102 = v290;

  v104 = v288;
  v103 = v289;
  if (v102 != 1)
  {

    sub_264783DF4();
    swift_retain_n();
    v112 = sub_264783E14();
    v113 = sub_2647859D4();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      v293 = v283;
      *v114 = 136315906;
      v290 = v2;

      v115 = sub_264785764();
      v117 = sub_2646DF234(v115, v116, &v293);

      *(v114 + 4) = v117;
      *(v114 + 12) = 2080;
      *(v114 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v293);
      *(v114 + 22) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v290);

      v118 = v290;

      *(v114 + 24) = v118;
      v119 = v288;

      *(v114 + 32) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v290);

      v120 = v290;

      v121 = v277;
      *v277 = v120;
      (*(v289 + 104))(v121, *MEMORY[0x277D4AA28], v119);
      v122 = sub_264783C24();
      v124 = v123;
      (*(v289 + 8))(v121, v119);
      v125 = sub_2646DF234(v122, v124, &v293);

      *(v114 + 34) = v125;
      _os_log_impl(&dword_264605000, v112, v113, "%s, %s: initiator not eligible, %ld, User string: %s", v114, 0x2Au);
      v126 = v283;
      swift_arrayDestroy();
      v103 = v289;
      MEMORY[0x266740650](v126, -1, -1);
      MEMORY[0x266740650](v114, -1, -1);
    }

    else
    {
    }

    (*(v286 + 8))(v21, v285);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v290);

    v148 = v290;

    *v287 = v148;
    v149 = *(v103 + 104);
    return v149();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v290);

  v105 = v291;

  if (v105 == 1)
  {
    v106 = sub_26461A57C();
    if (!v106)
    {

      sub_264783DF4();

      v154 = sub_264783E14();
      v155 = sub_2647859D4();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v283 = swift_slowAlloc();
        v290 = v283;
        *v156 = 136315650;
        v293 = v2;

        v157 = sub_264785764();
        LODWORD(isa) = v155;
        v159 = sub_2646DF234(v157, v158, &v290);

        *(v156 + 4) = v159;
        *(v156 + 12) = 2080;
        *(v156 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v290);
        *(v156 + 22) = 2080;
        v160 = *MEMORY[0x277D4AA10];
        v71 = *(v103 + 104);
        v161 = v277;
        v162 = v288;
        v71(v277, v160, v288);
        v163 = sub_264783C24();
        v282 = v154;
        v164 = v163;
        v166 = v165;
        (*(v103 + 8))(v161, v162);
        v167 = sub_2646DF234(v164, v166, &v290);

        *(v156 + 24) = v167;
        v168 = v282;
        _os_log_impl(&dword_264605000, v282, isa, "%s, %s: sessionConfiguration is nil, User string: %s", v156, 0x20u);
        v169 = v283;
        swift_arrayDestroy();
        MEMORY[0x266740650](v169, -1, -1);
        MEMORY[0x266740650](v156, -1, -1);

        (*(v286 + 8))(v26, v285);
      }

      else
      {

        (*(v286 + 8))(v26, v285);
        v160 = *MEMORY[0x277D4AA10];
        v71 = *(v103 + 104);
        v162 = v288;
      }

      v77 = v287;
      v78 = v160;
      v79 = v162;
      return (v71)(v77, v78, v79);
    }

    if (SessionViewModel.isReady.getter())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v290);

      if (!v292)
      {

        v217 = v281;
        sub_264783DF4();

        v218 = sub_264783E14();
        v219 = sub_2647859D4();

        if (os_log_type_enabled(v218, v219))
        {
          v220 = swift_slowAlloc();
          LODWORD(v282) = v219;
          v221 = v220;
          v283 = swift_slowAlloc();
          v290 = v283;
          *v221 = 136315650;
          v293 = v2;

          v222 = sub_264785764();
          v224 = v103;
          v225 = sub_2646DF234(v222, v223, &v290);

          *(v221 + 4) = v225;
          *(v221 + 12) = 2080;
          *(v221 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v290);
          *(v221 + 22) = 2080;
          v209 = *MEMORY[0x277D4AA48];
          v210 = *(v224 + 104);
          v226 = v277;
          v210(v277, v209, v104);
          v227 = sub_264783C24();
          v229 = v228;
          (*(v224 + 8))(v226, v104);
          v230 = sub_2646DF234(v227, v229, &v290);

          *(v221 + 24) = v230;
          _os_log_impl(&dword_264605000, v218, v282, "%s, %s: missing initiator invitation token, User string: %s", v221, 0x20u);
          v231 = v283;
          swift_arrayDestroy();
          MEMORY[0x266740650](v231, -1, -1);
          MEMORY[0x266740650](v221, -1, -1);

          (*(v286 + 8))(v281, v285);
          goto LABEL_68;
        }

        (*(v286 + 8))(v217, v285);
        v256 = MEMORY[0x277D4AA48];
LABEL_67:
        v209 = *v256;
        v210 = *(v103 + 104);
        goto LABEL_68;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v290);

      v107 = v290;
      if (v290 && (v108 = [v290 configuration], v107, v108))
      {
        v109 = [v108 conversation];

        v110 = [v109 receiverPrimaryHandles];
        v111 = sub_2647857F4();
      }

      else
      {
        v111 = MEMORY[0x277D84F90];
      }

      v188 = sub_264655868(v111);

      v189 = sub_264655868(v36);

      if ((sub_264631958(v188, v189) & 1) == 0)
      {
        v232 = v280;
        sub_264783DF4();

        v233 = sub_264783E14();
        v234 = sub_2647859D4();

        if (os_log_type_enabled(v233, v234))
        {
          v235 = swift_slowAlloc();
          LODWORD(v282) = v234;
          v236 = v103;
          v237 = v235;
          v283 = swift_slowAlloc();
          v290 = v283;
          *v237 = 136316162;
          v293 = v2;

          v238 = sub_264785764();
          v240 = sub_2646DF234(v238, v239, &v290);

          *(v237 + 4) = v240;
          *(v237 + 12) = 2080;
          *(v237 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v290);
          *(v237 + 22) = 2080;
          v241 = sub_264785964();
          v243 = v242;

          v244 = sub_2646DF234(v241, v243, &v290);
          v104 = v288;

          *(v237 + 24) = v244;
          *(v237 + 32) = 2080;
          v245 = sub_264785964();
          v247 = v246;

          v248 = sub_2646DF234(v245, v247, &v290);

          *(v237 + 34) = v248;
          *(v237 + 42) = 2080;
          v249 = *MEMORY[0x277D4AA18];
          v210 = *(v236 + 104);
          v250 = v277;
          v210(v277, v249, v104);
          v251 = sub_264783C24();
          v253 = v252;
          (*(v236 + 8))(v250, v104);
          v254 = sub_2646DF234(v251, v253, &v290);

          *(v237 + 44) = v254;
          _os_log_impl(&dword_264605000, v233, v282, "%s, %s: receiver is not the same as who we initialized with, sessionViewModelReceiverSet, %s, configurationReceiverSet, %s, User string: %s", v237, 0x34u);
          v255 = v283;
          swift_arrayDestroy();
          MEMORY[0x266740650](v255, -1, -1);
          MEMORY[0x266740650](v237, -1, -1);

          (*(v286 + 8))(v280, v285);
        }

        else
        {

          (*(v286 + 8))(v232, v285);
          v249 = *MEMORY[0x277D4AA18];
          v210 = *(v103 + 104);
        }

        v257 = v287;
        v258 = v249;
        return (v210)(v257, v258, v104);
      }

      v190 = sub_26461A57C();
      if (!v190 || (v191 = v190, v192 = [v190 sessionType], v191, v192))
      {
        v193 = sub_26461A57C();
        if (v193)
        {
          v194 = v193;
          v195 = [v193 sessionType];

          if (v195 == 2)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_264783ED4(&v290);

            sub_264713490();
            v197 = v196;

            if (v197)
            {
              v198 = v278;
              sub_264783DF4();

              v199 = sub_264783E14();
              v200 = sub_2647859D4();

              if (os_log_type_enabled(v199, v200))
              {
                v201 = swift_slowAlloc();
                LODWORD(v282) = v200;
                v202 = v201;
                v283 = swift_slowAlloc();
                v290 = v283;
                *v202 = 136315907;
                v293 = v2;

                v203 = sub_264785764();
                v205 = sub_2646DF234(v203, v204, &v290);

                *(v202 + 4) = v205;
                *(v202 + 12) = 2080;
                *(v202 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v290);
                *(v202 + 22) = 2085;
                swift_getKeyPath();
                swift_getKeyPath();
                sub_264783ED4(&v293);

                type metadata accessor for UserSessionConfiguration(0);
                v206 = sub_264785764();
                v208 = sub_2646DF234(v206, v207, &v290);

                *(v202 + 24) = v208;
                *(v202 + 32) = 2080;
                v209 = *MEMORY[0x277D4AA00];
                v210 = *(v103 + 104);
                v211 = v277;
                v210(v277, v209, v104);
                v212 = sub_264783C24();
                v214 = v213;
                (*(v103 + 8))(v211, v104);
                v215 = sub_2646DF234(v212, v214, &v290);

                *(v202 + 34) = v215;
                _os_log_impl(&dword_264605000, v199, v282, "%s, %s: missing ETA, %{sensitive}s, User string: %s", v202, 0x2Au);
                v216 = v283;
                swift_arrayDestroy();
                MEMORY[0x266740650](v216, -1, -1);
                MEMORY[0x266740650](v202, -1, -1);

                (*(v286 + 8))(v278, v285);
LABEL_68:
                v257 = v287;
                v258 = v209;
                return (v210)(v257, v258, v104);
              }

              (*(v286 + 8))(v198, v285);
              v256 = MEMORY[0x277D4AA00];
              goto LABEL_67;
            }
          }
        }

        v149 = *(v103 + 104);
        return v149();
      }

      v259 = v279;
      sub_264783DF4();

      v260 = sub_264783E14();
      v261 = sub_2647859D4();

      if (os_log_type_enabled(v260, v261))
      {
        v262 = swift_slowAlloc();
        LODWORD(v282) = v261;
        v263 = v262;
        v264 = swift_slowAlloc();
        v281 = v264;
        v283 = swift_slowAlloc();
        v290 = v283;
        *v263 = 136315907;
        v293 = v2;

        v265 = sub_264785764();
        v267 = sub_2646DF234(v265, v266, &v290);

        *(v263 + 4) = v267;
        *(v263 + 12) = 2080;
        *(v263 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v290);
        *(v263 + 22) = 2117;
        v268 = sub_26461A57C();
        *(v263 + 24) = v268;
        *v264 = v268;
        *(v263 + 32) = 2080;
        v67 = *MEMORY[0x277D4AA10];
        v71 = *(v103 + 104);
        v269 = v277;
        v70 = v288;
        v71(v277, v67, v288);
        v270 = sub_264783C24();
        v272 = v271;
        (*(v103 + 8))(v269, v70);
        v273 = sub_2646DF234(v270, v272, &v290);

        *(v263 + 34) = v273;
        _os_log_impl(&dword_264605000, v260, v282, "%s, %s: session type is unknown, %{sensitive}@, User string: %s", v263, 0x2Au);
        v274 = v281;
        sub_26460CD50(v281, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v274, -1, -1);
        v275 = v283;
        swift_arrayDestroy();
        MEMORY[0x266740650](v275, -1, -1);
        MEMORY[0x266740650](v263, -1, -1);

        (*(v286 + 8))(v279, v285);
        goto LABEL_13;
      }

      (*(v286 + 8))(v259, v285);
      v187 = MEMORY[0x277D4AA10];
    }

    else
    {

      v170 = v282;
      sub_264783DF4();

      v171 = sub_264783E14();
      v172 = sub_2647859D4();

      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        LODWORD(v281) = v172;
        v174 = v173;
        v175 = swift_slowAlloc();
        v280 = v175;
        v283 = swift_slowAlloc();
        v290 = v283;
        *v174 = 136315906;
        v293 = v2;

        v176 = sub_264785764();
        v178 = sub_2646DF234(v176, v177, &v290);

        *(v174 + 4) = v178;
        *(v174 + 12) = 2080;
        *(v174 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v290);
        *(v174 + 22) = 2112;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(&v293);

        v179 = v293;
        *(v174 + 24) = v293;
        *v175 = v179;
        *(v174 + 32) = 2080;
        v67 = *MEMORY[0x277D4AA48];
        v71 = *(v103 + 104);
        v180 = v277;
        v70 = v288;
        v71(v277, v67, v288);
        v181 = sub_264783C24();
        v183 = v182;
        (*(v103 + 8))(v180, v70);
        v184 = sub_2646DF234(v181, v183, &v290);

        *(v174 + 34) = v184;
        _os_log_impl(&dword_264605000, v171, v281, "%s, %s: not in ready state, %@, User string: %s", v174, 0x2Au);
        v185 = v280;
        sub_26460CD50(v280, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v185, -1, -1);
        v186 = v283;
        swift_arrayDestroy();
        MEMORY[0x266740650](v186, -1, -1);
        MEMORY[0x266740650](v174, -1, -1);

        (*(v286 + 8))(v282, v285);
        goto LABEL_13;
      }

      (*(v286 + 8))(v170, v285);
      v187 = MEMORY[0x277D4AA48];
    }

    v67 = *v187;
    v71 = *(v103 + 104);
    goto LABEL_12;
  }

  v127 = v283;
  sub_264783DF4();
  swift_retain_n();
  v128 = sub_264783E14();
  v129 = sub_2647859D4();
  v130 = os_log_type_enabled(v128, v129);
  v131 = MEMORY[0x277D4AA20];
  if (v130)
  {
    v132 = swift_slowAlloc();
    v282 = swift_slowAlloc();
    v293 = v282;
    *v132 = 136315906;
    v290 = v2;

    v133 = sub_264785764();
    v135 = sub_2646DF234(v133, v134, &v293);

    *(v132 + 4) = v135;
    *(v132 + 12) = 2080;
    *(v132 + 14) = sub_2646DF234(0xD000000000000018, 0x80000002647938C0, &v293);
    *(v132 + 22) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v290);

    v136 = v291;

    *(v132 + 24) = v136;

    *(v132 + 32) = 2080;
    v137 = *v131;
    v139 = v288;
    v138 = v289;
    v140 = v277;
    (*(v289 + 104))(v277, v137, v288);
    v141 = sub_264783C24();
    v143 = v142;
    v144 = *(v138 + 8);
    v145 = v139;
    v144(v140, v139);
    v146 = sub_2646DF234(v141, v143, &v293);

    *(v132 + 34) = v146;
    _os_log_impl(&dword_264605000, v128, v129, "%s, %s: receiver not eligible, %ld, User string: %s", v132, 0x2Au);
    v147 = v282;
    swift_arrayDestroy();
    MEMORY[0x266740650](v147, -1, -1);
    MEMORY[0x266740650](v132, -1, -1);
  }

  else
  {
    v145 = v104;
  }

  (*(v286 + 8))(v127, v285);
  v150 = sub_26462B210();
  if (v150 && (v151 = v150, v152 = [v150 isGroup], v151, v152))
  {
    v153 = MEMORY[0x277D4AA38];
  }

  else
  {
    v153 = MEMORY[0x277D4AA20];
  }

  return (*(v289 + 104))(v287, *v153, v145);
}

void sub_2646316E0(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_264654BC8(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_264785AD4();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_264785AE4();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_264631958(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_264785F44();

    sub_264785794();
    v16 = sub_264785F94();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_264785E84() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t SessionViewModel.timeSinceLastStateChange.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v13);

  v7 = v13;
  if (v13)
  {
    v8 = [v13 date];

    if (v8)
    {
      sub_264783AC4();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = sub_264783AF4();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v3, v9, 1, v10);
    sub_26460E7E4(v3, v5, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v11 + 48))(v5, 1, v10) == 1)
    {
      return sub_26460CD50(v5, &qword_27FF756B8, &qword_26478AC90);
    }

    else
    {
      sub_264783AA4();
      return (*(v11 + 8))(v5, v10);
    }
  }

  return result;
}

uint64_t SessionViewModel.justStartedSession.getter()
{
  v1 = v0;
  v2 = sub_264783E24();
  v43 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v45);

  v5 = v45;
  if (v45)
  {
    v6 = [v45 sessionState];

    v7 = v6 == 2;
  }

  else
  {
    v7 = 0;
  }

  SessionViewModel.timeSinceLastStateChange.getter();
  if (v8 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    SessionViewModel.timeSinceLastStateChange.getter();
    v10 = v9 < 1.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v45);

  v11 = v45;
  if (v45 && (v12 = [v45 configuration], v11, v12))
  {
    v13 = [v12 conversation];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v45);

    if (v45)
    {
      v14 = v45;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    sub_264655868(v14);

    v15 = sub_264785944();

    v16 = [v13 hasEqualPrimaryHandlesAsSet_];
  }

  else
  {
    v16 = 0;
  }

  sub_264783DF4();

  v17 = sub_264783E14();
  v18 = sub_2647859F4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = v10;
    v20 = v19;
    v40 = swift_slowAlloc();
    v44 = v1;
    v45 = v40;
    *v20 = 136316162;

    v21 = sub_264785764();
    v23 = sub_2646DF234(v21, v22, &v45);

    *(v20 + 4) = v23;
    v39 = v2;
    v41 = v16;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_2646DF234(0xD000000000000012, 0x80000002647938E0, &v45);
    *(v20 + 22) = 2080;
    HIDWORD(v37) = v18;
    if (v7)
    {
      v24 = 5457241;
    }

    else
    {
      v24 = 20302;
    }

    v25 = v43;
    v38 = v4;
    if (v7)
    {
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = 0xE200000000000000;
    }

    v27 = sub_2646DF234(v24, v26, &v45);

    *(v20 + 24) = v27;
    *(v20 + 32) = 2080;
    if (v42)
    {
      v28 = 5457241;
    }

    else
    {
      v28 = 20302;
    }

    if (v42)
    {
      v29 = 0xE300000000000000;
    }

    else
    {
      v29 = 0xE200000000000000;
    }

    v30 = sub_2646DF234(v28, v29, &v45);

    *(v20 + 34) = v30;
    *(v20 + 42) = 2080;
    v16 = v41;
    if (v41)
    {
      v31 = 5457241;
    }

    else
    {
      v31 = 20302;
    }

    if (v41)
    {
      v32 = 0xE300000000000000;
    }

    else
    {
      v32 = 0xE200000000000000;
    }

    v33 = sub_2646DF234(v31, v32, &v45);

    *(v20 + 44) = v33;
    _os_log_impl(&dword_264605000, v17, BYTE4(v37), "%s, %s: isMonitoring, %s, isInTimeDeltaSinceLastStateChange, %s, hasEqualRecipients, %s", v20, 0x34u);
    v34 = v40;
    swift_arrayDestroy();
    MEMORY[0x266740650](v34, -1, -1);
    v35 = v20;
    v10 = v42;
    MEMORY[0x266740650](v35, -1, -1);

    (*(v25 + 8))(v38, v39);
  }

  else
  {

    (*(v43 + 8))(v4, v2);
  }

  return (v7 && v10) & v16;
}

uint64_t SessionViewModel.isReadyToConfigure.getter()
{
  if (sub_26463231C())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v4);

    v0 = v4;
    if (v4 && (v1 = [v4 sessionState], v0, v1 == 11))
    {
      v2 = 1;
    }

    else
    {
      v2 = SessionViewModel.justStartedSession.getter();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL sub_26463231C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v3);

  result = v4;
  if (v4)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v3);

    v1 = v3[0];

    if (v1 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v3);

      v2 = v3[1];

      return v2 == 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26463244C(char a1)
{
  *(v2 + 440) = v1;
  *(v2 + 548) = a1;
  *(v2 + 448) = *v1;
  v3 = sub_264783E24();
  *(v2 + 456) = v3;
  *(v2 + 464) = *(v3 - 8);
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 480) = swift_task_alloc();
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = swift_task_alloc();
  sub_2647858B4();
  *(v2 + 504) = sub_2647858A4();
  v5 = sub_264785874();
  *(v2 + 512) = v5;
  *(v2 + 520) = v4;

  return MEMORY[0x2822009F8](sub_264632594, v5, v4);
}

uint64_t sub_264632594()
{
  v21 = v0;
  v1 = sub_26462B210();
  *(v0 + 528) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 548);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 544) = 1;

    sub_264783EE4();
    sub_2646226B4();
    if (v3 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 360) = 0;
      *(v0 + 368) = 0;
      *(v0 + 352) = 0;

      sub_264783EE4();
      sub_264621B20();
    }

    v4 = *(*(v0 + 440) + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_264632948;
    v5 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F40, &qword_2647898D8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_26463364C;
    *(v0 + 104) = &block_descriptor_605;
    *(v0 + 112) = v5;
    [v4 initializeSessionWithConversation:v2 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    sub_264783DF4();

    v6 = sub_264783E14();
    v7 = sub_2647859D4();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 480);
    v10 = *(v0 + 456);
    v11 = *(v0 + 464);
    if (v8)
    {
      v12 = *(v0 + 440);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315394;
      *(v0 + 376) = v12;

      v15 = sub_264785764();
      v17 = sub_2646DF234(v15, v16, &v20);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2646DF234(0xD000000000000027, 0x80000002647947A0, &v20);
      _os_log_impl(&dword_264605000, v6, v7, "%s, %s: no valid conversation", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v14, -1, -1);
      MEMORY[0x266740650](v13, -1, -1);
    }

    (*(v11 + 8))(v9, v10);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_264632948()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 536) = v2;
  v3 = *(v1 + 520);
  v4 = *(v1 + 512);
  if (v2)
  {
    v5 = sub_26463306C;
  }

  else
  {
    v5 = sub_264632A78;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264632A78()
{
  v46 = v0;

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  sub_264783DF4();

  v4 = sub_264783E14();
  v5 = sub_2647859F4();

  v43 = v2;
  if (os_log_type_enabled(v4, v5))
  {
    v40 = *(v0 + 464);
    v41 = *(v0 + 456);
    v42 = *(v0 + 496);
    v6 = *(v0 + 440);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45 = v8;
    *v7 = 136316162;
    *(v0 + 432) = v6;

    v9 = sub_264785764();
    v11 = sub_2646DF234(v9, v10, &v45);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2646DF234(0xD000000000000027, 0x80000002647947A0, &v45);
    *(v7 + 22) = 2048;
    *(v7 + 24) = v2;
    *(v7 + 32) = 2048;
    *(v7 + 34) = v3;
    *(v7 + 42) = 2080;
    sub_264659B70(0, &qword_27FF75D58, 0x277CBC2C0);
    v12 = sub_264785624();
    v14 = sub_2646DF234(v12, v13, &v45);

    *(v7 + 44) = v14;
    _os_log_impl(&dword_264605000, v4, v5, "%s, %s: initiator eligibility, %ld, receiverEligibility, %ld, invitationTokens, %s", v7, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v8, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);

    v15 = *(v40 + 8);
    v15(v42, v41);
  }

  else
  {
    v16 = *(v0 + 496);
    v17 = *(v0 + 456);
    v18 = *(v0 + 464);

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  v19 = sub_26462B210();
  if (!v19)
  {
LABEL_8:

    sub_264783DF4();

    v24 = sub_264783E14();
    v25 = sub_2647859D4();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 488);
    v28 = *(v0 + 456);
    if (v26)
    {
      v29 = *(v0 + 440);
      v44 = *(v0 + 488);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315394;
      *(v0 + 424) = v29;

      v32 = sub_264785764();
      v34 = sub_2646DF234(v32, v33, &v45);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2646DF234(0xD000000000000027, 0x80000002647947A0, &v45);
      _os_log_impl(&dword_264605000, v24, v25, "%s, %s: recipient handles have changed while initializing session", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v31, -1, -1);
      MEMORY[0x266740650](v30, -1, -1);

      v35 = v44;
    }

    else
    {

      v35 = v27;
    }

    v15(v35, v28);
    v21 = *(v0 + 528);
    v36 = *(v0 + 440);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4((v0 + 280));

    v37 = *(v0 + 280);

    *(v36 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated) = v37 == 1;
    sub_264614D5C();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 546) = 0;

    goto LABEL_12;
  }

  v20 = v19;
  if (![*(v0 + 528) hasEqualPrimaryHandlesAsConversation_])
  {

    goto LABEL_8;
  }

  v21 = *(v0 + 528);
  v22 = *(v0 + 440);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 304) = v43;
  *(v0 + 312) = v3;
  *(v0 + 320) = v1;

  sub_264783EE4();
  sub_264621B20();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((v0 + 328));

  v23 = *(v0 + 328);

  *(v22 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated) = v23 == 1;
  sub_264614D5C();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 547) = 0;

LABEL_12:
  sub_264783EE4();
  sub_2646226B4();

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_26463306C()
{
  v48 = v0;
  v1 = *(v0 + 536);

  swift_willThrow();
  *(v0 + 384) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
  sub_264659B70(0, &qword_27FF75F48, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v3 = *(v0 + 392);
  v4 = [v3 userInfo];
  v5 = sub_264785614();

  v6 = sub_264785724();
  if (!*(v5 + 16))
  {

    goto LABEL_10;
  }

  v8 = sub_2646548B4(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_264655DB8(*(v5 + 56) + 32 * v8, v0 + 144);

  sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v11 = *(v0 + 408);
  v12 = [v3 userInfo];
  v13 = sub_264785614();

  v14 = sub_264785724();
  if (*(v13 + 16))
  {
    v16 = sub_2646548B4(v14, v15);
    v18 = v17;

    if (v18)
    {
      sub_264655DB8(*(v13 + 56) + 32 * v16, v0 + 176);

      if (swift_dynamicCast())
      {
        v19 = *(v0 + 416);
        v20 = [v11 integerValue];
        v21 = [v19 integerValue];
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 256) = v20;
        *(v0 + 264) = v21;
        *(v0 + 272) = 0;

        sub_264783EE4();
        sub_264621B20();

        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

LABEL_20:

LABEL_12:
  v22 = *(v0 + 536);
  sub_264783DF4();

  v23 = v22;
  v24 = sub_264783E14();
  v25 = sub_2647859D4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 536);
    v27 = *(v0 + 464);
    v45 = *(v0 + 456);
    v46 = *(v0 + 472);
    v28 = *(v0 + 440);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v47[0] = v31;
    *v29 = 136315650;
    *(v0 + 400) = v28;

    v32 = sub_264785764();
    v34 = sub_2646DF234(v32, v33, v47);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_2646DF234(0xD000000000000027, 0x80000002647947A0, v47);
    *(v29 + 22) = 2112;
    v35 = v26;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 24) = v36;
    *v30 = v36;
    _os_log_impl(&dword_264605000, v24, v25, "%s, %s: error while initializing a session, %@", v29, 0x20u);
    sub_26460CD50(v30, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v30, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v31, -1, -1);
    MEMORY[0x266740650](v29, -1, -1);

    (*(v27 + 8))(v46, v45);
  }

  else
  {
    v38 = *(v0 + 464);
    v37 = *(v0 + 472);
    v39 = *(v0 + 456);

    (*(v38 + 8))(v37, v39);
  }

  v40 = *(v0 + 528);
  v41 = *(v0 + 440);
  swift_willThrow();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((v0 + 232));

  v42 = *(v0 + 232);

  *(v41 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated) = v42 == 1;
  sub_264614D5C();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 545) = 0;

  sub_264783EE4();
  sub_2646226B4();

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_26463364C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v9 = swift_allocError();
    *v10 = a5;
    v11 = a5;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    sub_264659B70(0, &qword_27FF75D58, 0x277CBC2C0);
    v12 = sub_264785614();
    v13 = *(*(v8 + 64) + 40);
    *v13 = v12;
    v13[1] = a3;
    v13[2] = a4;

    return MEMORY[0x282200950](v8);
  }
}

BOOL SessionViewModel.isEligibilityUnknown.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v3);

  v0 = v3[0];

  if (!v0)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v3);

  v1 = v3[1];

  return v1 == 0;
}

Swift::Void __swiftcall SessionViewModel.initializeIfNeeded(needsInfoForStaging:)(Swift::Bool needsInfoForStaging)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2647858E4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2647858B4();

  v8 = sub_2647858A4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v2;
  *(v9 + 40) = needsInfoForStaging;
  sub_264635430(0, 0, v6, &unk_264789310, v9);
}

uint64_t sub_26463396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 24) = a4;
  v6 = sub_264783E24();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  sub_2647858B4();
  *(v5 + 56) = sub_2647858A4();
  v8 = sub_264785874();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x2822009F8](sub_264633A64, v8, v7);
}

uint64_t sub_264633A64(uint64_t a1)
{
  v20 = v1;
  sub_264783DF4();

  v2 = sub_264783E14();
  v3 = sub_2647859F4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 40);
    v18 = *(v1 + 48);
    v6 = *(v1 + 24);
    v5 = *(v1 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    *(v1 + 16) = v6;
    type metadata accessor for SessionViewModel(0);

    v9 = sub_264785764();
    v11 = sub_2646DF234(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v19);
    _os_log_impl(&dword_264605000, v2, v3, "%s, %s: sync", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v8, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);

    (*(v4 + 8))(v18, v5);
  }

  else
  {
    v13 = *(v1 + 40);
    v12 = *(v1 + 48);
    v14 = *(v1 + 32);

    (*(v13 + 8))(v12, v14);
  }

  v15 = swift_task_alloc();
  *(v1 + 80) = v15;
  *v15 = v1;
  v15[1] = sub_264633CA8;
  v16 = *(v1 + 88);

  return SessionViewModel.initializeIfNeeded(needsInfoForStaging:)(v16);
}

uint64_t sub_264633CA8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_264659E38;
  }

  else
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_264633DCC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_264633DCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SessionViewModel.initializeIfNeeded(needsInfoForStaging:)(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 290) = a1;
  *(v2 + 152) = *v1;
  v3 = sub_264783E24();
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v3 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  sub_2647858B4();
  *(v2 + 224) = sub_2647858A4();
  v5 = sub_264785874();
  *(v2 + 232) = v5;
  *(v2 + 240) = v4;

  return MEMORY[0x2822009F8](sub_264633F90, v5, v4);
}

uint64_t sub_264633F90(uint64_t a1)
{
  v105 = v1;
  sub_264783DF4();

  v2 = sub_264783E14();
  v3 = sub_2647859F4();

  if (os_log_type_enabled(v2, v3))
  {
    v98 = *(v1 + 216);
    v5 = *(v1 + 160);
    v4 = *(v1 + 168);
    v6 = *(v1 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v104 = v8;
    *v7 = 136315394;
    *(v1 + 136) = v6;

    v9 = sub_264785764();
    v11 = sub_2646DF234(v9, v10, &v104);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v104);
    _os_log_impl(&dword_264605000, v2, v3, "%s, %s: async", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v8, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);

    v12 = *(v4 + 8);
    v12(v98, v5);
  }

  else
  {
    v13 = *(v1 + 216);
    v14 = *(v1 + 160);
    v15 = *(v1 + 168);

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  *(v1 + 248) = v12;
  if (!SessionViewModel.isReady.getter() && (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4((v1 + 288)), , , *(v1 + 288) != 1) || (v16 = *(v1 + 144), v17 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling, swift_beginAccess(), (*(v16 + v17) & 1) != 0))
  {
    if (*(v1 + 290) == 1)
    {
      sub_2646366D8();
    }

    sub_264783DF4();
    swift_retain_n();
    v18 = sub_264783E14();
    v19 = sub_2647859F4();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v1 + 248);
    v22 = *(v1 + 176);
    v23 = *(v1 + 160);
    if (v20)
    {
      v99 = *(v1 + 176);
      v24 = *(v1 + 144);
      v25 = swift_slowAlloc();
      v95 = v21;
      v26 = swift_slowAlloc();
      v104 = v26;
      *v25 = 136315650;
      *(v1 + 64) = v24;

      v27 = sub_264785764();
      v29 = sub_2646DF234(v27, v28, &v104);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v104);
      *(v25 + 22) = 1024;
      v30 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
      swift_beginAccess();
      LODWORD(v30) = *(v24 + v30);

      *(v25 + 24) = v30;

      _os_log_impl(&dword_264605000, v18, v19, "%s, %s: isCancelling: %{BOOL}d", v25, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x266740650](v26, -1, -1);
      MEMORY[0x266740650](v25, -1, -1);

      v95(v99, v23);
    }

    else
    {

      v21(v22, v23);
    }

    v45 = swift_task_alloc();
    *(v1 + 272) = v45;
    *v45 = v1;
    v45[1] = sub_2646350D8;
    v46 = *(v1 + 290);

    return sub_26463244C(v46);
  }

  sub_264783DF4();
  swift_retain_n();
  v31 = sub_264783E14();
  v32 = sub_2647859F4();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v1 + 208);
  v35 = *(v1 + 160);
  if (v33)
  {
    v100 = *(v1 + 208);
    v36 = *(v1 + 144);
    v96 = *(v1 + 160);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v104 = v38;
    *v37 = 136315906;
    *(v1 + 128) = v36;

    v39 = sub_264785764();
    v41 = sub_2646DF234(v39, v40, &v104);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v104);
    *(v37 + 22) = 1024;
    v42 = SessionViewModel.isReady.getter();

    *(v37 + 24) = v42;

    *(v37 + 28) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4((v1 + 289));

    *(v37 + 30) = *(v1 + 289);

    _os_log_impl(&dword_264605000, v31, v32, "%s, %s: isReady, %{BOOL}d, isInitializing, %{BOOL}d", v37, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v38, -1, -1);
    MEMORY[0x266740650](v37, -1, -1);

    v44 = v96;
    v43 = v100;
  }

  else
  {

    v43 = v34;
    v44 = v35;
  }

  v12(v43, v44);
  if (SessionViewModel.isActiveSessionForRecipient.getter())
  {

    sub_264783DF4();

    v48 = sub_264783E14();
    v49 = sub_2647859F4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v1 + 144);
      v51 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v104 = v101;
      *v51 = 136315650;
      *(v1 + 112) = v50;

      v52 = sub_264785764();
      v54 = sub_2646DF234(v52, v53, &v104);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v104);
      *(v51 + 22) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4((v1 + 120));

      if (*(v1 + 120))
      {
        v55 = MEMORY[0x26673F530](*(v1 + 120), MEMORY[0x277D837D0]);
        v57 = v56;
      }

      else
      {
        v57 = 0xE300000000000000;
        v55 = 7104878;
      }

      v90 = *(v1 + 200);
      v91 = *(v1 + 160);
      v92 = sub_2646DF234(v55, v57, &v104);

      *(v51 + 24) = v92;
      _os_log_impl(&dword_264605000, v48, v49, "%s, %s: Already initialized for recipients %s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v101, -1, -1);
      MEMORY[0x266740650](v51, -1, -1);

      v71 = v90;
      v93 = v91;
      goto LABEL_37;
    }

    v88 = *(v1 + 200);
    v64 = *(v1 + 160);

    v71 = v88;
LABEL_36:
    v93 = v64;
LABEL_37:
    v12(v71, v93);

    v94 = *(v1 + 8);

    return v94();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((v1 + 72));

  v58 = *(v1 + 72);
  if (v58)
  {
    v59 = [*(v1 + 72) isActiveState];

    if (v59)
    {

      sub_264783DF4();

      v60 = sub_264783E14();
      v61 = sub_2647859F4();

      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v1 + 192);
      v64 = *(v1 + 160);
      if (v62)
      {
        v65 = *(v1 + 144);
        v102 = *(v1 + 192);
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v104 = v67;
        *v66 = 136315394;
        *(v1 + 104) = v65;

        v68 = sub_264785764();
        v70 = sub_2646DF234(v68, v69, &v104);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2080;
        *(v66 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v104);
        _os_log_impl(&dword_264605000, v60, v61, "%s, %s: Already in active session", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v67, -1, -1);
        MEMORY[0x266740650](v66, -1, -1);

        v71 = v102;
      }

      else
      {

        v71 = v63;
      }

      goto LABEL_36;
    }
  }

  sub_264783DF4();

  v72 = sub_264783E14();
  v73 = sub_2647859F4();

  v74 = os_log_type_enabled(v72, v73);
  v75 = *(v1 + 184);
  v76 = *(v1 + 160);
  if (v74)
  {
    v77 = *(v1 + 144);
    v103 = *(v1 + 184);
    v78 = swift_slowAlloc();
    v97 = v76;
    v79 = swift_slowAlloc();
    v104 = v79;
    *v78 = 136315650;
    *(v1 + 80) = v77;

    v80 = sub_264785764();
    v82 = sub_2646DF234(v80, v81, &v104);

    *(v78 + 4) = v82;
    *(v78 + 12) = 2080;
    *(v78 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v104);
    *(v78 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4((v1 + 88));

    *(v1 + 96) = *(v1 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C30, &qword_264788A68);
    v83 = sub_264785764();
    v85 = sub_2646DF234(v83, v84, &v104);

    *(v78 + 24) = v85;
    _os_log_impl(&dword_264605000, v72, v73, "%s, %s: Restarting initialization for %s", v78, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v79, -1, -1);
    MEMORY[0x266740650](v78, -1, -1);

    v87 = v97;
    v86 = v103;
  }

  else
  {

    v86 = v75;
    v87 = v76;
  }

  v12(v86, v87);
  v89 = swift_task_alloc();
  *(v1 + 256) = v89;
  *v89 = v1;
  v89[1] = sub_264634D0C;

  return sub_264635A44();
}

uint64_t sub_264634D0C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_2646352C0;
  }

  else
  {
    v5 = sub_264634E48;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264634E48(uint64_t a1)
{
  v21 = v1;
  if (*(v1 + 290) == 1)
  {
    sub_2646366D8();
  }

  sub_264783DF4();
  swift_retain_n();
  v2 = sub_264783E14();
  v3 = sub_2647859F4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 248);
  v6 = *(v1 + 176);
  v7 = *(v1 + 160);
  if (v4)
  {
    v8 = *(v1 + 144);
    v19 = *(v1 + 248);
    v9 = swift_slowAlloc();
    v18 = v6;
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315650;
    *(v1 + 64) = v8;

    v11 = sub_264785764();
    v13 = sub_2646DF234(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0xD000000000000028, 0x8000000264793900, &v20);
    *(v9 + 22) = 1024;
    v14 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
    swift_beginAccess();
    LODWORD(v14) = *(v8 + v14);

    *(v9 + 24) = v14;

    _os_log_impl(&dword_264605000, v2, v3, "%s, %s: isCancelling: %{BOOL}d", v9, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    v19(v18, v7);
  }

  else
  {

    v5(v6, v7);
  }

  v15 = swift_task_alloc();
  *(v1 + 272) = v15;
  *v15 = v1;
  v15[1] = sub_2646350D8;
  v16 = *(v1 + 290);

  return sub_26463244C(v16);
}

uint64_t sub_2646350D8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_264635378;
  }

  else
  {
    v5 = sub_264635214;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264635214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2646352C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264635378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264635430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26460CCE8(a3, v25 - v10, &qword_27FF76970, &qword_264789300);
  v12 = sub_2647858E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26460CD50(v11, &qword_27FF76970, &qword_264789300);
  }

  else
  {
    sub_2647858D4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_264785874();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_264785784() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_264635730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26460CCE8(a3, v25 - v10, &qword_27FF76970, &qword_264789300);
  v12 = sub_2647858E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26460CD50(v11, &qword_27FF76970, &qword_264789300);
  }

  else
  {
    sub_2647858D4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_264785874();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_264785784() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F28, &qword_2647898C0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F28, &qword_2647898C0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_264635A44()
{
  v1[31] = v0;
  v1[32] = *v0;
  v2 = sub_264783E24();
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_2647858B4();
  v1[38] = sub_2647858A4();
  v4 = sub_264785874();
  v1[39] = v4;
  v1[40] = v3;

  return MEMORY[0x2822009F8](sub_264635B78, v4, v3);
}

uint64_t sub_264635B78(uint64_t a1)
{
  v44 = v1;
  sub_264783DF4();

  v2 = sub_264783E14();
  v3 = sub_2647859F4();

  if (os_log_type_enabled(v2, v3))
  {
    v39 = *(v1 + 272);
    v40 = *(v1 + 264);
    v41 = *(v1 + 296);
    v4 = *(v1 + 248);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v1 + 232) = v4;
    v43 = v7;
    *v5 = 136315650;

    v8 = sub_264785764();
    v10 = sub_2646DF234(v8, v9, &v43);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264794690, &v43);
    *(v5 + 22) = 2112;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4((v1 + 240));

    v11 = *(v1 + 240);
    *(v5 + 24) = v11;
    *v6 = v11;
    _os_log_impl(&dword_264605000, v2, v3, "%s, %s: sessionState %@", v5, 0x20u);
    sub_26460CD50(v6, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v7, -1, -1);
    MEMORY[0x266740650](v5, -1, -1);

    v12 = *(v39 + 8);
    v12(v41, v40);
  }

  else
  {
    v13 = *(v1 + 296);
    v14 = *(v1 + 264);
    v15 = *(v1 + 272);

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  *(v1 + 328) = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 352) = 0;

  sub_264783EE4();
  sub_2646226B4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 353) = 0;

  sub_264783EE4();
  sub_26462A724();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((v1 + 192));

  v16 = *(v1 + 192);
  if (v16 && (v17 = [*(v1 + 192) sessionState], v16, v17 == 10) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4((v1 + 200)), , , (v18 = *(v1 + 200)) != 0) && (v19 = objc_msgSend(*(v1 + 200), sel_sessionState), v18, v19 == 11))
  {
    v20 = *(v1 + 248);
    v21 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
    *(v1 + 336) = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
    swift_beginAccess();
    *(v20 + v21) = 1;
    sub_2646249AC();
    sub_264636D6C(0);
    v22 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
    swift_beginAccess();
    if (*(v20 + v22) == 2)
    {
      sub_264637EFC(0);
    }

    v23 = *(*(v1 + 248) + 16);
    *(v1 + 16) = v1;
    *(v1 + 24) = sub_264636260;
    v24 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D70, &qword_264789350);
    *(v1 + 80) = MEMORY[0x277D85DD0];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_2646384B4;
    *(v1 + 104) = &block_descriptor_569;
    *(v1 + 112) = v24;
    [v23 cancelInitializationWithCompletion_];

    return MEMORY[0x282200938](v1 + 16);
  }

  else
  {

    sub_264783DF4();

    v25 = sub_264783E14();
    v26 = sub_2647859F4();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v1 + 288);
    v29 = *(v1 + 264);
    if (v27)
    {
      v30 = *(v1 + 248);
      v42 = *(v1 + 288);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43 = v32;
      *v31 = 136315394;
      *(v1 + 208) = v30;

      v33 = sub_264785764();
      v35 = sub_2646DF234(v33, v34, &v43);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264794690, &v43);
      _os_log_impl(&dword_264605000, v25, v26, "%s, %s: No initialization to cancel", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v32, -1, -1);
      MEMORY[0x266740650](v31, -1, -1);

      v36 = v42;
    }

    else
    {

      v36 = v28;
    }

    v12(v36, v29);

    v37 = *(v1 + 8);

    return v37();
  }
}

uint64_t sub_264636260()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 320);
  v4 = *(v1 + 312);
  if (v2)
  {
    v5 = sub_264636420;
  }

  else
  {
    v5 = sub_264636390;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264636390()
{
  v1 = v0[42];
  v2 = v0[31];

  *(v2 + v1) = 0;
  sub_2646249AC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_264636420()
{
  v27 = v0;
  v1 = v0[43];

  swift_willThrow();
  sub_264783DF4();

  v2 = v1;
  v3 = sub_264783E14();
  v4 = sub_2647859F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[43];
    v24 = v0[35];
    v25 = v0[41];
    v23 = v0[33];
    v6 = v0[31];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136315650;
    v0[27] = v6;

    v9 = sub_264785764();
    v11 = sub_2646DF234(v9, v10, v26);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264794690, v26);
    *(v7 + 22) = 2080;
    v0[28] = v5;
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v13 = sub_264785764();
    v15 = sub_2646DF234(v13, v14, v26);

    *(v7 + 24) = v15;
    _os_log_impl(&dword_264605000, v3, v4, "%s, %s: error cancelling session: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v8, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);

    v25(v24, v23);
  }

  else
  {
    v16 = v0[41];
    v17 = v0[35];
    v18 = v0[33];

    v16(v17, v18);
  }

  v19 = v0[42];
  v20 = v0[31];
  swift_willThrow();
  *(v20 + v19) = 0;
  sub_2646249AC();

  v21 = v0[1];

  return v21();
}

uint64_t sub_2646366D8()
{
  v1 = sub_264785594();
  v17 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2647855C4();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  *(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus) = 1;
  v10 = [objc_opt_self() now];
  sub_264783AC4();

  v11 = sub_264783AF4();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  v12 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime;
  swift_beginAccess();
  sub_264659660(v9, v0 + v12, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v13 = sub_264785A44();
  aBlock[4] = sub_264659658;
  v19 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_573;
  v14 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v6, v3, v14);
  _Block_release(v14);

  (*(v17 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v16);
}

uint64_t sub_264636AC4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_2647858B4();
  v1[4] = sub_2647858A4();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_264636B74;

  return sub_264635A44();
}

uint64_t sub_264636B74()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_264785874();
    v4 = v3;
    v5 = sub_264659F34;
  }

  else
  {
    v2 = sub_264785874();
    v4 = v6;
    v5 = sub_264636CF8;
  }

  return MEMORY[0x2822009F8](v5, v2, v4);
}

uint64_t sub_264636CF8()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_264636D6C(int a1)
{
  v2 = v1;
  v109 = a1;
  v104 = *v1;
  v3 = sub_264783E24();
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x28223BE20](v3);
  v112 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v108 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v107 = &v100 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v100 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v100 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v100 - v16;
  v18 = sub_264783AF4();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v103 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v102 = &v100 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v101 = &v100 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v100 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v100 - v30;
  result = MEMORY[0x28223BE20](v29);
  v34 = &v100 - v33;
  v113 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStatus;
  if (!*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStatus) && !*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStatus) && !*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus))
  {
    return result;
  }

  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesLatency + 8) == 1)
  {
    v106 = v12;
    v35 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStartTime;
    swift_beginAccess();
    sub_26460CCE8(v2 + v35, v17, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_26460CD50(v17, &qword_27FF756B8, &qword_26478AC90);
      v105 = 1;
    }

    else
    {
      (*(v19 + 32))(v34, v17, v18);
      v36 = [objc_opt_self() now];
      sub_264783AC4();

      sub_264783A44();
      v37 = *(v19 + 8);
      v37(v31, v18);
      v37(v34, v18);
      v105 = 0;
    }

    v12 = v106;
  }

  else
  {
    v105 = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesLatency + 8) == 1)
  {
    v38 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStartTime;
    swift_beginAccess();
    sub_26460CCE8(v2 + v38, v15, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {
      sub_26460CD50(v15, &qword_27FF756B8, &qword_26478AC90);
      LODWORD(v106) = 1;
    }

    else
    {
      (*(v19 + 32))(v28, v15, v18);
      v39 = [objc_opt_self() now];
      sub_264783AC4();

      sub_264783A44();
      v40 = v12;
      v41 = *(v19 + 8);
      v41(v31, v18);
      v41(v28, v18);
      v12 = v40;
      LODWORD(v106) = 0;
    }
  }

  else
  {
    LODWORD(v106) = 0;
  }

  v42 = v108;
  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsLatency + 8) == 1)
  {
    v43 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime;
    swift_beginAccess();
    sub_26460CCE8(v2 + v43, v12, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v19 + 48))(v12, 1, v18) == 1)
    {
      sub_26460CD50(v12, &qword_27FF756B8, &qword_26478AC90);
      v44 = 1;
    }

    else
    {
      v45 = v101;
      (*(v19 + 32))(v101, v12, v18);
      v46 = [objc_opt_self() now];
      sub_264783AC4();

      sub_264783A44();
      v47 = *(v19 + 8);
      v47(v31, v18);
      v47(v45, v18);
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityLatency + 8) == 1)
  {
    v48 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityStartTime;
    swift_beginAccess();
    v49 = v2 + v48;
    v50 = v107;
    sub_26460CCE8(v49, v107, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v19 + 48))(v50, 1, v18) == 1)
    {
      sub_26460CD50(v50, &qword_27FF756B8, &qword_26478AC90);
      v51 = 1;
    }

    else
    {
      v52 = v102;
      (*(v19 + 32))(v102, v50, v18);
      v53 = [objc_opt_self() now];
      sub_264783AC4();

      sub_264783A44();
      v54 = v44;
      v55 = *(v19 + 8);
      v55(v31, v18);
      v55(v52, v18);
      v44 = v54;
      v51 = 0;
    }
  }

  else
  {
    v51 = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchReceiverEligibilityLatency + 8) == 1)
  {
    sub_26460CCE8(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchReceiverEligibilityStartTime, v42, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v19 + 48))(v42, 1, v18) == 1)
    {
      sub_26460CD50(v42, &qword_27FF756B8, &qword_26478AC90);
      v56 = 1;
    }

    else
    {
      v57 = v103;
      (*(v19 + 32))(v103, v42, v18);
      v58 = [objc_opt_self() now];
      sub_264783AC4();

      sub_264783A44();
      v59 = *(v19 + 8);
      v59(v31, v18);
      v59(v57, v18);
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F08, &qword_264789890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889A0;
  *(inited + 32) = 0x546E6F6973736573;
  *(inited + 40) = 0xEB00000000657079;
  SessionViewModel.sessionType.getter();
  *(inited + 48) = sub_264785B54();
  *(inited + 56) = 0xD000000000000020;
  *(inited + 64) = 0x8000000264793D30;
  *(inited + 72) = sub_264785994();
  *(inited + 80) = 0xD000000000000024;
  *(inited + 88) = 0x8000000264793D90;
  v108 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStatus;
  *(inited + 96) = sub_264785994();
  *(inited + 104) = 0xD000000000000028;
  *(inited + 112) = 0x8000000264793DF0;
  v107 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus;
  *(inited + 120) = sub_264785994();
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000264794310;
  *(inited + 144) = sub_264785864();
  v61 = sub_264655A9C(inited, &qword_27FF75E88, &unk_264789810);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F10, &qword_264789898);
  swift_arrayDestroy();
  if (v105)
  {
    if (v106)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v88 = sub_264785904();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = v61;
    sub_2646933E4(v88, 0xD000000000000021, 0x8000000264793D00, isUniquelyReferenced_nonNull_native);
    v61 = v115[0];
    if (v106)
    {
LABEL_32:
      if (v44)
      {
        goto LABEL_33;
      }

      goto LABEL_44;
    }
  }

  v90 = sub_264785904();
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v115[0] = v61;
  sub_2646933E4(v90, 0xD000000000000025, 0x8000000264793D60, v91);
  v61 = v115[0];
  if (v44)
  {
LABEL_33:
    if (v51)
    {
      goto LABEL_34;
    }

LABEL_45:
    v94 = sub_264785904();
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = v61;
    sub_2646933E4(v94, 0xD000000000000019, 0x8000000264794410, v95);
    v61 = v115[0];
    if (v56)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_44:
  v92 = sub_264785904();
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v115[0] = v61;
  sub_2646933E4(v92, 0xD000000000000029, 0x8000000264793DC0, v93);
  v61 = v115[0];
  if ((v51 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_34:
  if ((v56 & 1) == 0)
  {
LABEL_35:
    v62 = sub_264785904();
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = v61;
    sub_2646933E4(v62, 0xD000000000000018, 0x80000002647943F0, v63);
    v61 = v115[0];
  }

LABEL_36:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v115);

  v64 = sub_264785994();
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v115[0] = v61;
  sub_2646933E4(v64, 0xD00000000000001ALL, 0x8000000264794330, v65);
  v66 = v115[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v115);

  v67 = sub_264785994();
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v115[0] = v66;
  sub_2646933E4(v67, 0xD000000000000019, 0x8000000264794350, v68);
  v69 = v115[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v115);

  v70 = v115[0];

  if (v70)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v115);

    v71 = sub_264785864();
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = v69;
    sub_2646933E4(v71, 0xD000000000000011, 0x8000000264794370, v72);
    v69 = v115[0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v115);

  v73 = v115[1];

  if (v73)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v115);

    v74 = sub_264785864();
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = v69;
    sub_2646933E4(v74, 0xD000000000000010, 0x8000000264794390, v75);
    v69 = v115[0];
  }

  v76 = v112;
  sub_264783DF4();

  v77 = sub_264783E14();
  v78 = sub_2647859F4();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v114 = v2;
    v115[0] = v80;
    *v79 = 136315650;

    v81 = sub_264785764();
    v83 = sub_2646DF234(v81, v82, v115);

    *(v79 + 4) = v83;
    *(v79 + 12) = 2080;
    *(v79 + 14) = sub_2646DF234(0xD000000000000035, 0x80000002647943B0, v115);
    *(v79 + 22) = 2080;
    sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);

    v84 = sub_264785624();
    v86 = v85;

    v87 = sub_2646DF234(v84, v86, v115);

    *(v79 + 24) = v87;
    _os_log_impl(&dword_264605000, v77, v78, "%s, %s, sending analytics event StagingPerformance, %s", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v80, -1, -1);
    MEMORY[0x266740650](v79, -1, -1);

    (*(v110 + 8))(v112, v111);
  }

  else
  {

    (*(v110 + 8))(v76, v111);
  }

  v96 = *MEMORY[0x277D4AE30];

  v97 = v96;
  sub_264692AAC(v69);

  sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
  v98 = sub_264785604();

  AnalyticsSendEvent();

  *(v2 + v113) = 0;
  v99 = v107;
  v108[v2] = 0;
  *(v2 + v99) = 0;
}

uint64_t sub_264637EFC(int a1)
{
  v2 = v1;
  v44 = a1;
  v41 = sub_264783854();
  v3 = *(v41 - 8);
  v4 = MEMORY[0x28223BE20](v41);
  v42 = v5;
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = sub_264783AF4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v46 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  v22 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_lastSuggestionConversionEventTime;
  swift_beginAccess();
  sub_26460CCE8(v2 + v22, v12, &qword_27FF756B8, &qword_26478AC90);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26460CD50(v12, &qword_27FF756B8, &qword_26478AC90);
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
    v23 = v46;
    sub_264783AD4();
    sub_264783A44();
    v25 = v24;
    v40 = v10;
    v26 = v2;
    v27 = *(v14 + 8);
    v27(v23, v13);
    result = (v27)(v21, v13);
    v2 = v26;
    v10 = v40;
    if (v25 < 1.0)
    {
      return result;
    }
  }

  sub_264783AD4();
  (*(v14 + 56))(v10, 0, 1, v13);
  swift_beginAccess();
  sub_264659660(v10, v2 + v22, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  sub_264783AD4();
  sub_264783A54();
  (*(v14 + 8))(v17, v13);
  sub_264783AD4();
  v29 = v45;
  sub_264783844();
  v30 = objc_allocWithZone(MEMORY[0x277D4AC18]);
  v31 = sub_264783834();
  v32 = [v30 initWithIncludeSuppressed:0 sortByCreationDate:1 ascending:0 dateInterval:v31 filteredToSuggestionTriggers:0 filteredToSuggestionUserTypes:0 filteredToSessionTypes:0];

  v33 = swift_allocObject();
  *(v33 + 16) = sub_264655A9C(MEMORY[0x277D84F90], &qword_27FF75E88, &unk_264789810);
  v34 = *(v2 + 16);
  v35 = v43;
  v36 = v41;
  (*(v3 + 16))(v43, v29, v41);
  v37 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  *(v38 + 24) = v44 & 1;
  *(v38 + 32) = v2;
  (*(v3 + 32))(v38 + v37, v35, v36);
  aBlock[4] = sub_26465908C;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264653FB8;
  aBlock[3] = &block_descriptor_478;
  v39 = _Block_copy(aBlock);

  [v34 fetchSuggestionsWithOptions:v32 handler:v39];
  _Block_release(v39);

  (*(v3 + 8))(v29, v36);
}

uint64_t sub_2646384B4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

Swift::Void __swiftcall SessionViewModel.onDidResignActive()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v2 - 8);
  v69 = &v65 - v3;
  v4 = sub_264783E24();
  v70 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v65 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v65 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  sub_264783DF4();

  v16 = sub_264783E14();
  v17 = sub_2647859F4();

  v18 = os_log_type_enabled(v16, v17);
  v68 = v13;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v67 = v7;
    v20 = v19;
    v66 = swift_slowAlloc();
    v71[0] = v66;
    *v20 = 136315394;
    v72 = v1;

    v21 = sub_264785764();
    v23 = v10;
    v24 = v4;
    v25 = sub_2646DF234(v21, v22, v71);

    *(v20 + 4) = v25;
    v4 = v24;
    v10 = v23;
    v26 = v70;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264793930, v71);
    _os_log_impl(&dword_264605000, v16, v17, "%s, %s", v20, 0x16u);
    v27 = v66;
    swift_arrayDestroy();
    MEMORY[0x266740650](v27, -1, -1);
    v28 = v20;
    v7 = v67;
    MEMORY[0x266740650](v28, -1, -1);

    v29 = v26;
  }

  else
  {

    v29 = v70;
  }

  v30 = *(v29 + 8);
  v30(v15, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v71);

  v31 = v71[0];
  if (v71[0])
  {
    if (([v71[0] isActiveState] & 1) == 0)
    {
      v32 = v68;
      sub_264783DF4();

      v33 = sub_264783E14();
      v34 = sub_2647859F4();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v71[0] = v67;
        *v35 = 136315394;
        v72 = v1;

        v36 = sub_264785764();
        v38 = sub_2646DF234(v36, v37, v71);
        LODWORD(v66) = v34;
        v39 = v4;
        v40 = v38;

        *(v35 + 4) = v40;
        v4 = v39;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264793930, v71);
        _os_log_impl(&dword_264605000, v33, v66, "%s, %s:Reset sessionInitializationInfo", v35, 0x16u);
        v41 = v67;
        swift_arrayDestroy();
        MEMORY[0x266740650](v41, -1, -1);
        MEMORY[0x266740650](v35, -1, -1);

        v30(v68, v39);
      }

      else
      {

        v30(v32, v4);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      memset(v71, 0, sizeof(v71));

      sub_264783EE4();
      sub_264621B20();
    }

    if ([v31 sessionState] == 10 || objc_msgSend(v31, sel_sessionState) == 11)
    {
      sub_264783DF4();

      v51 = sub_264783E14();
      v52 = sub_2647859F4();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v68 = v30;
        v55 = v54;
        v71[0] = v54;
        *v53 = 136315394;
        v72 = v1;

        v56 = sub_264785764();
        v58 = v4;
        v59 = sub_2646DF234(v56, v57, v71);

        *(v53 + 4) = v59;
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264793930, v71);
        _os_log_impl(&dword_264605000, v51, v52, "%s, %s:Canceling Initialization", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v55, -1, -1);
        MEMORY[0x266740650](v53, -1, -1);

        v68(v10, v58);
      }

      else
      {

        v30(v10, v4);
      }

      v60 = sub_2647858E4();
      v61 = v69;
      (*(*(v60 - 8) + 56))(v69, 1, 1, v60);
      sub_2647858B4();

      v62 = sub_2647858A4();
      v63 = swift_allocObject();
      v64 = MEMORY[0x277D85700];
      v63[2] = v62;
      v63[3] = v64;
      v63[4] = v1;
      sub_264635730(0, 0, v61, &unk_26478C7D0, v63);
    }
  }

  else
  {
    sub_264783DF4();

    v42 = sub_264783E14();
    v43 = sub_2647859D4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v30;
      v45 = swift_slowAlloc();
      v46 = v7;
      v47 = swift_slowAlloc();
      v71[0] = v47;
      *v45 = 136315394;
      v72 = v1;

      v48 = sub_264785764();
      v50 = sub_2646DF234(v48, v49, v71);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264793930, v71);
      _os_log_impl(&dword_264605000, v42, v43, "%s, %s: Unexpected found nil sessionState", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v47, -1, -1);
      MEMORY[0x266740650](v45, -1, -1);

      v44(v46, v4);
    }

    else
    {

      v30(v7, v4);
    }
  }
}

uint64_t SessionViewModel.setSuggestedSessionConfiguration(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = a1;
  v9 = sub_264783E14();
  v10 = sub_2647859F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v2;
    v26[0] = v24;
    *v11 = 136315651;

    v13 = sub_264785764();
    v15 = sub_2646DF234(v13, v14, v26);
    v23 = v4;
    v16 = v15;

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2646DF234(0xD000000000000024, 0x8000000264793950, v26);
    *(v11 + 22) = 2117;
    *(v11 + 24) = v8;
    *v12 = v8;
    v17 = v8;
    _os_log_impl(&dword_264605000, v9, v10, "%s, %s: set suggested session configuration %{sensitive}@", v11, 0x20u);
    sub_26460CD50(v12, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v12, -1, -1);
    v18 = v24;
    swift_arrayDestroy();
    MEMORY[0x266740650](v18, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);

    (*(v5 + 8))(v7, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v19 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v20 = *(v2 + v19);
  *(v2 + v19) = v8;
  v21 = v8;

  return sub_26461D484();
}

Swift::Void __swiftcall SessionViewModel.clearSuggestedSessionConfiguration()()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v1;
    v16[0] = v9;
    *v8 = 136315394;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD000000000000024, 0x8000000264793980, v16);
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: Clearing suggested session configuration", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v14 = *(v1 + v13);
  *(v1 + v13) = 0;

  sub_26461D484();
}

void sub_2646393C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_opt_self();
  v4 = sub_264783A04();
  v5 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_2646594A0;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_26464CCBC;
  v7[3] = &block_descriptor_549;
  v6 = _Block_copy(v7);

  [v3 _mapItemFromHandle_completionHandler_];
  _Block_release(v6);
}

uint64_t sub_2646394CC(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = sub_264785594();
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2647855C4();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (!a2)
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v49 = sub_264785A44();
      v40 = swift_allocObject();
      *(v40 + 16) = v18;
      *(v40 + 24) = a1;
      aBlock[4] = sub_2646594A8;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_555;
      v41 = _Block_copy(aBlock);
      v42 = a1;

      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
      sub_264785BD4();
      v43 = v49;
      MEMORY[0x26673F780](0, v16, v13, v41);
      _Block_release(v41);

      (*(v47 + 8))(v13, v11);
      return (*(v46 + 8))(v16, v14);
    }

    v19 = a2;
    sub_264783DF4();

    v20 = a2;
    v21 = sub_264783E14();
    v22 = sub_2647859D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v23 = 136315650;
      v51 = v18;
      type metadata accessor for SessionViewModel(0);

      v26 = sub_264785764();
      v28 = sub_2646DF234(v26, v27, aBlock);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, aBlock);
      *(v23 + 22) = 2112;
      v29 = a2;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 24) = v30;
      *v24 = v30;
      _os_log_impl(&dword_264605000, v21, v22, "%s, %s: Error resolving map item from map data handle, error, %@", v23, 0x20u);
      sub_26460CD50(v24, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v24, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v25, -1, -1);
      MEMORY[0x266740650](v23, -1, -1);
    }

    else
    {
    }

    v38 = *(v48 + 8);
    v39 = v10;
  }

  else
  {
    sub_264783DF4();

    v31 = sub_264783E14();
    v32 = sub_2647859D4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = v34;
      *v33 = 136315650;
      swift_beginAccess();
      aBlock[6] = swift_weakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
      v35 = sub_264785764();
      v37 = sub_2646DF234(v35, v36, &v51);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, &v51);
      *(v33 + 22) = 2080;
      *(v33 + 24) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, &v51);
      _os_log_impl(&dword_264605000, v31, v32, "%s, %s: no reference to self in %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v34, -1, -1);
      MEMORY[0x266740650](v33, -1, -1);
    }

    v38 = *(v48 + 8);
    v39 = v8;
  }

  return v38(v39, v49);
}

uint64_t sub_264639BF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a2;

  v8 = sub_264783EE4();
  return a5(v8);
}

uint64_t SessionViewModel.SendError.reason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264783C74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionViewModel.startSession(needsSendMessage:)(char a1)
{
  *(v2 + 768) = v1;
  *(v2 + 698) = a1;
  *(v2 + 776) = *v1;
  v3 = sub_264783C44();
  *(v2 + 784) = v3;
  *(v2 + 792) = *(v3 - 8);
  *(v2 + 800) = swift_task_alloc();
  v4 = sub_264783B64();
  *(v2 + 808) = v4;
  *(v2 + 816) = *(v4 - 8);
  *(v2 + 824) = swift_task_alloc();
  v5 = sub_264783E24();
  *(v2 + 832) = v5;
  *(v2 + 840) = *(v5 - 8);
  *(v2 + 848) = swift_task_alloc();
  *(v2 + 856) = swift_task_alloc();
  *(v2 + 864) = swift_task_alloc();
  *(v2 + 872) = swift_task_alloc();
  *(v2 + 880) = swift_task_alloc();
  *(v2 + 888) = swift_task_alloc();
  *(v2 + 896) = swift_task_alloc();
  *(v2 + 904) = swift_task_alloc();
  v6 = sub_264783C74();
  *(v2 + 912) = v6;
  *(v2 + 920) = *(v6 - 8);
  *(v2 + 928) = swift_task_alloc();
  *(v2 + 936) = swift_task_alloc();
  *(v2 + 944) = sub_2647858B4();
  *(v2 + 952) = sub_2647858A4();
  v7 = swift_task_alloc();
  *(v2 + 960) = v7;
  *v7 = v2;
  v7[1] = sub_264639F9C;

  return SessionViewModel.initializeIfNeeded(needsInfoForStaging:)(0);
}

uint64_t sub_264639F9C()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  v3 = sub_264785874();
  if (v0)
  {
    v5 = sub_26463C6D0;
  }

  else
  {
    *(v2 + 976) = v3;
    *(v2 + 984) = v4;
    v5 = sub_26463A104;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26463A104()
{
  v1 = *(v0[96] + 16);
  v0[124] = v1;
  v0[2] = v0;
  v0[7] = v0 + 88;
  v0[3] = sub_26463A228;
  v2 = swift_continuation_init();
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D60, &qword_264789348);
  v0[42] = MEMORY[0x277D85DD0];
  v0[43] = 1107296256;
  v0[44] = sub_26463E318;
  v0[45] = &block_descriptor_226;
  v0[46] = v2;
  [v1 fetchCurrentSessionStateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26463A228()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1000) = v2;
  v3 = *(v1 + 984);
  v4 = *(v1 + 976);
  if (v2)
  {
    v5 = sub_26463CBF0;
  }

  else
  {
    v5 = sub_26463A358;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26463A358()
{
  v94 = v0;
  v1 = *(v0 + 704);
  *(v0 + 1008) = v1;
  v2 = *(v0 + 712);
  v3 = v1;
  sub_264617568(v1, v2);

  v4 = sub_26461A57C();
  *(v0 + 1016) = v4;
  if (!v4)
  {

    sub_264783DF4();

    v9 = sub_264783E14();
    v10 = sub_2647859E4();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 864);
    v13 = *(v0 + 840);
    v14 = *(v0 + 832);
    if (v11)
    {
      v15 = *(v0 + 768);
      v90 = v3;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v93[0] = v17;
      *v16 = 136315394;
      *(v0 + 728) = v15;

      v18 = sub_264785764();
      v20 = sub_2646DF234(v18, v19, v93);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v93);
      swift_arrayDestroy();
      MEMORY[0x266740650](v17, -1, -1);
      MEMORY[0x266740650](v16, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v12, v14);
    goto LABEL_25;
  }

  v5 = v4;
  SessionViewModel.sendStartMessageValidity.getter(*(v0 + 936));
  if (sub_264783C64())
  {
    v6 = *(v0 + 992);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_26463AE70;
    v7 = swift_continuation_init();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D70, &qword_264789350);
    *(v0 + 1024) = v8;
    *(v0 + 456) = v8;
    *(v0 + 400) = MEMORY[0x277D85DD0];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_2646384B4;
    *(v0 + 424) = &block_descriptor_229;
    *(v0 + 432) = v7;
    [v6 startSessionWithConfiguration:v5 completion:v0 + 400];

    return MEMORY[0x282200938](v0 + 80);
  }

  v91 = v3;
  v21 = *(v0 + 936);
  v22 = *(v0 + 928);
  v23 = *(v0 + 920);
  v24 = *(v0 + 912);

  sub_264783DF4();
  v88 = *(v23 + 16);
  v88(v22, v21, v24);

  v25 = sub_264783E14();
  v26 = sub_2647859D4();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 928);
  v29 = *(v0 + 920);
  v87 = *(v0 + 912);
  v30 = *(v0 + 872);
  v31 = *(v0 + 840);
  v32 = *(v0 + 832);
  if (v27)
  {
    v85 = *(v0 + 872);
    v86 = *(v0 + 832);
    v33 = *(v0 + 800);
    v84 = v26;
    v34 = *(v0 + 792);
    v80 = *(v0 + 928);
    v81 = *(v0 + 784);
    log = v25;
    v35 = *(v0 + 768);
    v36 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v93[0] = v82;
    *v36 = 136315650;
    *(v0 + 736) = v35;

    v37 = sub_264785764();
    v39 = sub_2646DF234(v37, v38, v93);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v93);
    *(v36 + 22) = 2080;
    sub_264783C54();
    v40 = sub_264783C34();
    v42 = v41;
    (*(v34 + 8))(v33, v81);
    v43 = *(v29 + 8);
    v43(v80, v87);
    v44 = sub_2646DF234(v40, v42, v93);

    *(v36 + 24) = v44;
    _os_log_impl(&dword_264605000, log, v84, "%s, %s: Start message send invalid: %s", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v82, -1, -1);
    v45 = v36;
    v46 = v43;
    MEMORY[0x266740650](v45, -1, -1);

    (*(v31 + 8))(v85, v86);
  }

  else
  {

    v46 = *(v29 + 8);
    v46(v28, v87);
    (*(v31 + 8))(v30, v32);
  }

  v47 = *(v0 + 936);
  v48 = *(v0 + 912);
  type metadata accessor for SessionViewModel.SendError(0);
  sub_264655E3C(&qword_27FF75D68, type metadata accessor for SessionViewModel.SendError, &protocol conformance descriptor for SessionViewModel.SendError);
  v49 = swift_allocError();
  v88(v50, v47, v48);
  swift_willThrow();

  v46(v47, v48);
  sub_264783DF4();

  v51 = v49;
  v52 = sub_264783E14();
  v53 = sub_2647859D4();

  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 856);
  v56 = *(v0 + 840);
  v57 = *(v0 + 832);
  if (v54)
  {
    v92 = *(v0 + 832);
    v58 = v49;
    v89 = *(v0 + 856);
    v59 = *(v0 + 768);
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v93[0] = v62;
    *v60 = 136315650;
    *(v0 + 720) = v59;

    v63 = sub_264785764();
    v65 = sub_2646DF234(v63, v64, v93);

    *(v60 + 4) = v65;
    v49 = v58;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v93);
    *(v60 + 22) = 2112;
    v66 = v58;
    v67 = _swift_stdlib_bridgeErrorToNSError();
    *(v60 + 24) = v67;
    *v61 = v67;
    _os_log_impl(&dword_264605000, v52, v53, "%s, %s, error %@", v60, 0x20u);
    sub_26460CD50(v61, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v61, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v62, -1, -1);
    MEMORY[0x266740650](v60, -1, -1);

    (*(v56 + 8))(v89, v92);
  }

  else
  {

    (*(v56 + 8))(v55, v57);
  }

  if (*(v0 + 698) == 1)
  {
    v68 = sub_264783984();
    v69 = [v68 domain];
    v70 = sub_264785724();
    v72 = v71;

    if (v70 == sub_264785724() && v72 == v73)
    {
    }

    else
    {
      v75 = sub_264785E84();

      if ((v75 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if ([v68 code] == 42)
    {
LABEL_24:

LABEL_25:

      v74 = *(v0 + 8);
      goto LABEL_26;
    }

LABEL_23:
    sub_264783CB4();
    sub_264783C84();
    v76 = sub_264785714();

    sub_264783C94();
    v77 = sub_264785714();

    sub_264783CA4();
    v78 = sub_264785714();

    CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v76, v77, v78, 0, 0, 0);

    goto LABEL_24;
  }

  swift_willThrow();

  v74 = *(v0 + 8);
LABEL_26:

  return v74();
}

uint64_t sub_26463AE70()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1032) = v2;
  v3 = *(v1 + 984);
  v4 = *(v1 + 976);
  if (v2)
  {
    v5 = sub_26463D118;
  }

  else
  {
    v5 = sub_26463AFA0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26463AFA0()
{
  v52 = v0;
  if (*(v0 + 698) == 1)
  {
    started = SessionViewModel.smSessionStartMessage()();
    *(v0 + 1040) = started;
    if (started)
    {
      v2 = started;
      v3 = [*(v0 + 1016) conversation];
      *(v0 + 1048) = v3;
      v4 = [v2 summaryText];
      if (!v4)
      {
        sub_264785724();
        v4 = sub_264785714();
      }

      *(v0 + 1056) = v4;
      v5 = *(v0 + 992);
      *(v0 + 272) = v0;
      *(v0 + 312) = v0 + 680;
      *(v0 + 280) = sub_26463B758;
      v6 = swift_continuation_init();
      *(v0 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D88, &qword_264789360);
      *(v0 + 624) = v6;
      *(v0 + 592) = MEMORY[0x277D85DD0];
      *(v0 + 600) = 1107296256;
      *(v0 + 608) = sub_26463E3F8;
      *(v0 + 616) = &block_descriptor_238;
      [v5 sendMadridMessage:v2 associatedGUID:0 toConversation:v3 summaryText:v4 completion:v0 + 592];
      v7 = v0 + 272;
      goto LABEL_10;
    }

    sub_264783DF4();

    v25 = sub_264783E14();
    v26 = sub_2647859E4();

    v27 = os_log_type_enabled(v25, v26);
    v50 = *(v0 + 1016);
    v28 = *(v0 + 1008);
    v29 = *(v0 + 936);
    v30 = *(v0 + 920);
    v31 = *(v0 + 912);
    v32 = *(v0 + 904);
    v33 = *(v0 + 840);
    v34 = *(v0 + 832);
    if (v27)
    {
      v46 = *(v0 + 832);
      v48 = *(v0 + 936);
      v35 = *(v0 + 768);
      v44 = *(v0 + 912);
      v36 = swift_slowAlloc();
      v43 = v32;
      v37 = swift_slowAlloc();
      v51 = v37;
      *v36 = 136315394;
      *(v0 + 760) = v35;

      v38 = sub_264785764();
      v40 = sub_2646DF234(v38, v39, &v51);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, &v51);
      swift_arrayDestroy();
      MEMORY[0x266740650](v37, -1, -1);
      MEMORY[0x266740650](v36, -1, -1);

      (*(v33 + 8))(v43, v46);
      (*(v30 + 8))(v48, v44);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
      (*(v30 + 8))(v29, v31);
    }
  }

  else
  {
    v8 = *(v0 + 1016);
    v9 = *(v0 + 768);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4((v0 + 744));

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4((v0 + 697));

    sub_26463E4D4(v8, *(v0 + 697));
    sub_26463E810(v8);
    sub_264636D6C(1);
    v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
    swift_beginAccess();
    if (*(v9 + v10) == 2)
    {
      sub_264637EFC(1);
    }

    if ([*(v0 + 1016) sessionType] == 4)
    {
      v11 = *(v0 + 992);
      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 752;
      *(v0 + 152) = sub_26463BD1C;
      v12 = swift_continuation_init();
      *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D78, &qword_264789358);
      *(v0 + 464) = MEMORY[0x277D85DD0];
      *(v0 + 472) = 1107296256;
      *(v0 + 480) = sub_26463F8C4;
      *(v0 + 488) = &block_descriptor_232;
      *(v0 + 496) = v12;
      [v11 fetchCurrentWorkoutSnapshotWithCompletion_];
      v7 = v0 + 144;
LABEL_10:

      return MEMORY[0x282200938](v7);
    }

    sub_264783DF4();
    v13 = sub_264783E14();
    v14 = sub_2647859C4();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 1016);
    v17 = *(v0 + 1008);
    v18 = *(v0 + 936);
    v19 = *(v0 + 920);
    v20 = *(v0 + 912);
    v49 = *(v0 + 880);
    v21 = *(v0 + 840);
    v22 = *(v0 + 832);
    if (v15)
    {
      v47 = *(v0 + 936);
      v23 = swift_slowAlloc();
      v45 = v20;
      v24 = swift_slowAlloc();
      v51 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, &v51);
      _os_log_impl(&dword_264605000, v13, v14, "%s: not considering ending session because not workout-bound", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x266740650](v24, -1, -1);
      MEMORY[0x266740650](v23, -1, -1);

      (*(v21 + 8))(v49, v22);
      (*(v19 + 8))(v47, v45);
    }

    else
    {

      (*(v21 + 8))(v49, v22);
      (*(v19 + 8))(v18, v20);
    }
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_26463B758()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  *(*v0 + 1064) = v2;
  v3 = *(v1 + 984);
  v4 = *(v1 + 976);
  if (v2)
  {
    v5 = sub_26463D674;
  }

  else
  {
    v5 = sub_26463B888;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26463B888()
{
  v26 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);

  v3 = *(v0 + 1016);
  v4 = *(v0 + 768);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((v0 + 744));

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((v0 + 697));

  sub_26463E4D4(v3, *(v0 + 697));
  sub_26463E810(v3);
  sub_264636D6C(1);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  swift_beginAccess();
  if (*(v4 + v5) == 2)
  {
    sub_264637EFC(1);
  }

  if ([*(v0 + 1016) sessionType] == 4)
  {
    v6 = *(v0 + 992);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 752;
    *(v0 + 152) = sub_26463BD1C;
    v7 = swift_continuation_init();
    *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D78, &qword_264789358);
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_26463F8C4;
    *(v0 + 488) = &block_descriptor_232;
    *(v0 + 496) = v7;
    [v6 fetchCurrentWorkoutSnapshotWithCompletion_];

    return MEMORY[0x282200938](v0 + 144);
  }

  else
  {

    sub_264783DF4();
    v8 = sub_264783E14();
    v9 = sub_2647859C4();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 1016);
    v12 = *(v0 + 1008);
    v13 = *(v0 + 936);
    v14 = *(v0 + 920);
    v15 = *(v0 + 912);
    v24 = *(v0 + 880);
    v16 = *(v0 + 840);
    v17 = *(v0 + 832);
    if (v10)
    {
      v23 = *(v0 + 936);
      v18 = swift_slowAlloc();
      v22 = v15;
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, &v25);
      _os_log_impl(&dword_264605000, v8, v9, "%s: not considering ending session because not workout-bound", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266740650](v19, -1, -1);
      MEMORY[0x266740650](v18, -1, -1);

      (*(v16 + 8))(v24, v17);
      (*(v14 + 8))(v23, v22);
    }

    else
    {

      (*(v16 + 8))(v24, v17);
      (*(v14 + 8))(v13, v15);
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_26463BD1C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1072) = v2;
  v3 = *(v1 + 984);
  v4 = *(v1 + 976);
  if (v2)
  {
    v5 = sub_26463DBE8;
  }

  else
  {
    v5 = sub_26463BE4C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26463BE4C(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 752);
  if (v2 && (v3 = [*(v1 + 752) isWorkoutOngoing], v2, v3))
  {
    v4 = *(v1 + 1016);
    v5 = *(v1 + 1008);
    (*(*(v1 + 920) + 8))(*(v1 + 936), *(v1 + 912));

    v6 = *(v1 + 8);

    return v6();
  }

  else
  {
    sub_264783DF4();
    v8 = sub_264783E14();
    v9 = sub_2647859F4();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v1 + 896);
    v12 = *(v1 + 840);
    v13 = *(v1 + 832);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, &v26);
      _os_log_impl(&dword_264605000, v8, v9, "%s: ending session because there's no longer a workout", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266740650](v15, -1, -1);
      MEMORY[0x266740650](v14, -1, -1);
    }

    v16 = *(v12 + 8);
    v16(v11, v13);
    *(v1 + 1080) = v16;
    v17 = *(v1 + 1024);
    v18 = *(v1 + 992);
    v19 = *(v1 + 824);
    v20 = *(v1 + 816);
    v21 = *(v1 + 808);
    v22 = [*(v1 + 1016) sessionID];
    sub_264783B44();

    v23 = sub_264783B14();
    *(v1 + 1088) = v23;
    v24 = *(v20 + 8);
    *(v1 + 1096) = v24;
    *(v1 + 1104) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v19, v21);
    *(v1 + 208) = v1;
    *(v1 + 216) = sub_26463C1FC;
    v25 = swift_continuation_init();
    *(v1 + 584) = v17;
    *(v1 + 560) = v25;
    *(v1 + 528) = MEMORY[0x277D85DD0];
    *(v1 + 536) = 1107296256;
    *(v1 + 544) = sub_2646384B4;
    *(v1 + 552) = &block_descriptor_235;
    [v18 endSessionForSessionID:v23 reason:8 completion:v1 + 528];

    return MEMORY[0x282200938](v1 + 208);
  }
}

uint64_t sub_26463C1FC()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1112) = v2;
  v3 = *(v1 + 984);
  v4 = *(v1 + 976);
  if (v2)
  {
    v5 = sub_26463DF7C;
  }

  else
  {
    v5 = sub_26463C32C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26463C32C()
{
  v36 = v0;
  v1 = v0[136];
  v2 = v0[127];

  sub_264783DF4();
  v3 = v2;
  v4 = sub_264783E14();
  v5 = sub_2647859F4();

  if (os_log_type_enabled(v4, v5))
  {
    v27 = v0[137];
    v6 = v0[127];
    v31 = v0[126];
    v32 = v0[135];
    v7 = v0[115];
    v33 = v0[114];
    v34 = v0[117];
    v28 = v6;
    v29 = v0[104];
    v30 = v0[111];
    v8 = v0[103];
    v9 = v0[101];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, &v35);
    *(v10 + 12) = 2080;
    v12 = [v6 sessionID];
    sub_264783B44();

    sub_264655E3C(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_264785E44();
    v15 = v14;
    v27(v8, v9);
    v16 = sub_2646DF234(v13, v15, &v35);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_264605000, v4, v5, "%s): ended session with ID %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    v32(v30, v29);
    (*(v7 + 8))(v34, v33);
  }

  else
  {
    v17 = v0[135];
    v18 = v0[127];
    v19 = v0[126];
    v20 = v0[117];
    v21 = v0[115];
    v22 = v0[114];
    v23 = v0[111];
    v24 = v0[104];

    v17(v23, v24);
    (*(v21 + 8))(v20, v22);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_26463C6D0()
{
  v34 = v0;

  v1 = *(v0 + 968);
  sub_264783DF4();

  v2 = v1;
  v3 = sub_264783E14();
  v4 = sub_2647859D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 840);
    v31 = *(v0 + 832);
    v32 = *(v0 + 856);
    v6 = v1;
    v7 = *(v0 + 768);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33[0] = v10;
    *v8 = 136315650;
    *(v0 + 720) = v7;

    v11 = sub_264785764();
    v13 = sub_2646DF234(v11, v12, v33);

    *(v8 + 4) = v13;
    v1 = v6;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v33);
    *(v8 + 22) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&dword_264605000, v3, v4, "%s, %s, error %@", v8, 0x20u);
    sub_26460CD50(v9, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);

    (*(v5 + 8))(v32, v31);
  }

  else
  {
    v16 = *(v0 + 856);
    v17 = *(v0 + 840);
    v18 = *(v0 + 832);

    (*(v17 + 8))(v16, v18);
  }

  if (*(v0 + 698) != 1)
  {
    swift_willThrow();

    v25 = *(v0 + 8);
    goto LABEL_13;
  }

  v19 = sub_264783984();
  v20 = [v19 domain];
  v21 = sub_264785724();
  v23 = v22;

  if (v21 == sub_264785724() && v23 == v24)
  {
  }

  else
  {
    v26 = sub_264785E84();

    if ((v26 & 1) == 0)
    {
LABEL_11:
      sub_264783CB4();
      sub_264783C84();
      v27 = sub_264785714();

      sub_264783C94();
      v28 = sub_264785714();

      sub_264783CA4();
      v29 = sub_264785714();

      CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v27, v28, v29, 0, 0, 0);

      goto LABEL_12;
    }
  }

  if ([v19 code] != 42)
  {
    goto LABEL_11;
  }

LABEL_12:

  v25 = *(v0 + 8);
LABEL_13:

  return v25();
}

uint64_t sub_26463CBF0()
{
  v34 = v0;

  swift_willThrow();
  v1 = *(v0 + 1000);
  sub_264783DF4();

  v2 = v1;
  v3 = sub_264783E14();
  v4 = sub_2647859D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 840);
    v31 = *(v0 + 832);
    v32 = *(v0 + 856);
    v6 = v1;
    v7 = *(v0 + 768);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33[0] = v10;
    *v8 = 136315650;
    *(v0 + 720) = v7;

    v11 = sub_264785764();
    v13 = sub_2646DF234(v11, v12, v33);

    *(v8 + 4) = v13;
    v1 = v6;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v33);
    *(v8 + 22) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&dword_264605000, v3, v4, "%s, %s, error %@", v8, 0x20u);
    sub_26460CD50(v9, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);

    (*(v5 + 8))(v32, v31);
  }

  else
  {
    v16 = *(v0 + 856);
    v17 = *(v0 + 840);
    v18 = *(v0 + 832);

    (*(v17 + 8))(v16, v18);
  }

  if (*(v0 + 698) != 1)
  {
    swift_willThrow();

    v25 = *(v0 + 8);
    goto LABEL_13;
  }

  v19 = sub_264783984();
  v20 = [v19 domain];
  v21 = sub_264785724();
  v23 = v22;

  if (v21 == sub_264785724() && v23 == v24)
  {
  }

  else
  {
    v26 = sub_264785E84();

    if ((v26 & 1) == 0)
    {
LABEL_11:
      sub_264783CB4();
      sub_264783C84();
      v27 = sub_264785714();

      sub_264783C94();
      v28 = sub_264785714();

      sub_264783CA4();
      v29 = sub_264785714();

      CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v27, v28, v29, 0, 0, 0);

      goto LABEL_12;
    }
  }

  if ([v19 code] != 42)
  {
    goto LABEL_11;
  }

LABEL_12:

  v25 = *(v0 + 8);
LABEL_13:

  return v25();
}

uint64_t sub_26463D118()
{
  v39 = v0;
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 936);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);

  swift_willThrow();

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 1032);
  sub_264783DF4();

  v7 = v6;
  v8 = sub_264783E14();
  v9 = sub_2647859D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 840);
    v36 = *(v0 + 832);
    v37 = *(v0 + 856);
    v11 = v6;
    v12 = *(v0 + 768);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38[0] = v15;
    *v13 = 136315650;
    *(v0 + 720) = v12;

    v16 = sub_264785764();
    v18 = sub_2646DF234(v16, v17, v38);

    *(v13 + 4) = v18;
    v6 = v11;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v38);
    *(v13 + 22) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v20;
    *v14 = v20;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s, error %@", v13, 0x20u);
    sub_26460CD50(v14, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v15, -1, -1);
    MEMORY[0x266740650](v13, -1, -1);

    (*(v10 + 8))(v37, v36);
  }

  else
  {
    v21 = *(v0 + 856);
    v22 = *(v0 + 840);
    v23 = *(v0 + 832);

    (*(v22 + 8))(v21, v23);
  }

  if (*(v0 + 698) != 1)
  {
    swift_willThrow();

    v30 = *(v0 + 8);
    goto LABEL_13;
  }

  v24 = sub_264783984();
  v25 = [v24 domain];
  v26 = sub_264785724();
  v28 = v27;

  if (v26 == sub_264785724() && v28 == v29)
  {
  }

  else
  {
    v31 = sub_264785E84();

    if ((v31 & 1) == 0)
    {
LABEL_11:
      sub_264783CB4();
      sub_264783C84();
      v32 = sub_264785714();

      sub_264783C94();
      v33 = sub_264785714();

      sub_264783CA4();
      v34 = sub_264785714();

      CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v32, v33, v34, 0, 0, 0);

      goto LABEL_12;
    }
  }

  if ([v24 code] != 42)
  {
    goto LABEL_11;
  }

LABEL_12:

  v30 = *(v0 + 8);
LABEL_13:

  return v30();
}

uint64_t sub_26463D674()
{
  v42 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 936);
  v7 = *(v0 + 920);
  v8 = *(v0 + 912);

  swift_willThrow();

  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 1064);
  sub_264783DF4();

  v10 = v9;
  v11 = sub_264783E14();
  v12 = sub_2647859D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 840);
    v39 = *(v0 + 832);
    v40 = *(v0 + 856);
    v14 = v9;
    v15 = *(v0 + 768);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41[0] = v18;
    *v16 = 136315650;
    *(v0 + 720) = v15;

    v19 = sub_264785764();
    v21 = sub_2646DF234(v19, v20, v41);

    *(v16 + 4) = v21;
    v9 = v14;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v41);
    *(v16 + 22) = 2112;
    v22 = v14;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v23;
    *v17 = v23;
    _os_log_impl(&dword_264605000, v11, v12, "%s, %s, error %@", v16, 0x20u);
    sub_26460CD50(v17, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v18, -1, -1);
    MEMORY[0x266740650](v16, -1, -1);

    (*(v13 + 8))(v40, v39);
  }

  else
  {
    v24 = *(v0 + 856);
    v25 = *(v0 + 840);
    v26 = *(v0 + 832);

    (*(v25 + 8))(v24, v26);
  }

  if (*(v0 + 698) != 1)
  {
    swift_willThrow();

    v33 = *(v0 + 8);
    goto LABEL_13;
  }

  v27 = sub_264783984();
  v28 = [v27 domain];
  v29 = sub_264785724();
  v31 = v30;

  if (v29 == sub_264785724() && v31 == v32)
  {
  }

  else
  {
    v34 = sub_264785E84();

    if ((v34 & 1) == 0)
    {
LABEL_11:
      sub_264783CB4();
      sub_264783C84();
      v35 = sub_264785714();

      sub_264783C94();
      v36 = sub_264785714();

      sub_264783CA4();
      v37 = sub_264785714();

      CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v35, v36, v37, 0, 0, 0);

      goto LABEL_12;
    }
  }

  if ([v27 code] != 42)
  {
    goto LABEL_11;
  }

LABEL_12:

  v33 = *(v0 + 8);
LABEL_13:

  return v33();
}

uint64_t sub_26463DBE8()
{
  v34 = v0;

  swift_willThrow();
  v1 = v0[134];
  v2 = v0[127];
  sub_264783DF4();
  v3 = v2;
  v4 = sub_264783E14();
  v5 = sub_2647859D4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[127];
  v8 = v0[117];
  v9 = v0[115];
  v10 = v0[114];
  v11 = v0[106];
  v12 = v0[105];
  v31 = v0[126];
  v32 = v0[104];
  if (v6)
  {
    v30 = v0[117];
    v13 = v0[103];
    v28 = v1;
    v14 = v0[102];
    v24 = v5;
    v15 = v0[101];
    v29 = v0[114];
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33[0] = v25;
    *v16 = 136315394;
    *(v16 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v33);
    *(v16 + 12) = 2080;
    v26 = v7;
    v27 = v11;
    v17 = [v7 sessionID];
    sub_264783B44();

    sub_264655E3C(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_264785E44();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_2646DF234(v18, v20, v33);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_264605000, v4, v24, "%s): error (considering) ending session with ID %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v25, -1, -1);
    MEMORY[0x266740650](v16, -1, -1);

    (*(v12 + 8))(v27, v32);
    (*(v9 + 8))(v30, v29);
  }

  else
  {

    (*(v12 + 8))(v11, v32);
    (*(v9 + 8))(v8, v10);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_26463DF7C()
{
  v35 = v0;
  v1 = v0[136];

  swift_willThrow();

  v2 = v0[139];
  v3 = v0[127];
  sub_264783DF4();
  v4 = v3;
  v5 = sub_264783E14();
  v6 = sub_2647859D4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[127];
  v9 = v0[117];
  v10 = v0[115];
  v11 = v0[114];
  v12 = v0[106];
  v13 = v0[105];
  v32 = v0[126];
  v33 = v0[104];
  if (v7)
  {
    v31 = v0[117];
    v14 = v0[103];
    v29 = v2;
    v15 = v0[102];
    v25 = v6;
    v16 = v0[101];
    v30 = v0[114];
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34[0] = v26;
    *v17 = 136315394;
    *(v17 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x80000002647939B0, v34);
    *(v17 + 12) = 2080;
    v27 = v8;
    v28 = v12;
    v18 = [v8 sessionID];
    sub_264783B44();

    sub_264655E3C(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_264785E44();
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_2646DF234(v19, v21, v34);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_264605000, v5, v25, "%s): error (considering) ending session with ID %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v26, -1, -1);
    MEMORY[0x266740650](v17, -1, -1);

    (*(v13 + 8))(v28, v33);
    (*(v10 + 8))(v31, v30);
  }

  else
  {

    (*(v13 + 8))(v12, v33);
    (*(v10 + 8))(v9, v11);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_26463E318(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_26463E3F8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v7 = swift_allocError();
    *v8 = a4;
    v9 = a4;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    v10 = sub_264785724();
    v11 = *(*(v6 + 64) + 40);
    *v11 = v10;
    *(v11 + 8) = v12;
    *(v11 + 16) = a3;

    return MEMORY[0x282200950](v6);
  }
}

uint64_t sub_26463E4D4(void *a1, char a2)
{
  v3 = v2;
  [a1 sessionType];
  swift_beginAccess();
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F08, &qword_264789890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889B0;
  *(inited + 32) = 0x546E6F6973736573;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 48) = sub_264785B54();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000264794430;
  *(inited + 72) = sub_264785B54();
  v6 = sub_264655A9C(inited, &qword_27FF75E88, &unk_264789810);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F10, &qword_264789898);
  swift_arrayDestroy();
  *(v4 + 16) = v6;
  if (*(v3 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated) != 2)
  {
    v7 = sub_264785864();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = v6;
    *(v4 + 16) = 0x8000000000000000;
    sub_2646933E4(v7, 0xD000000000000013, 0x8000000264793F60, isUniquelyReferenced_nonNull_native);
    v6 = v18[0];
    *(v4 + 16) = v18[0];
  }

  v9 = sub_264785864();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v18[0] = v6;
  *(v4 + 16) = 0x8000000000000000;
  sub_2646933E4(v9, 0xD000000000000014, 0x8000000264794570, v10);
  v11 = v18[0];
  *(v4 + 16) = v18[0];
  swift_beginAccess();
  v12 = sub_264785B54();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v18[0] = v11;
  *(v4 + 16) = 0x8000000000000000;
  sub_2646933E4(v12, 0xD000000000000011, 0x8000000264794590, v13);
  *(v4 + 16) = v18[0];
  v14 = *(v3 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v3;
  v18[4] = sub_26465929C;
  v18[5] = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_26465A0C0;
  v18[3] = &block_descriptor_528;
  v16 = _Block_copy(v18);

  [v14 fetchCurrentWorkoutSnapshotWithCompletion_];
  _Block_release(v16);
}

uint64_t sub_26463E810(void *a1)
{
  v95 = sub_264785594();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v92 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2647855C4();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_264783BC4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v85 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v84 = &v77 - v9;
  MEMORY[0x28223BE20](v8);
  v88 = &v77 - v10;
  v83 = sub_264783C14();
  v82 = *(v83 - 1);
  MEMORY[0x28223BE20](v83);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_264783BE4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v97 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264783AF4();
  v98 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v78 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v77 - v18;
  MEMORY[0x28223BE20](v17);
  v96 = &v77 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F08, &qword_264789890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889C0;
  strcpy((inited + 32), "numRecipients");
  *(inited + 46) = -4864;
  v22 = [a1 conversation];
  v23 = [v22 receiverHandles];

  v89 = sub_264659B70(0, &qword_27FF75E98, 0x277D4AAE8);
  v24 = sub_2647857F4();

  if (v24 >> 62)
  {
    sub_264785C14();
  }

  v25 = swift_allocObject();
  *(inited + 48) = sub_264785994();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000264794430;
  swift_beginAccess();
  *(inited + 72) = sub_264785B54();
  *(inited + 80) = 0x546E6F6973736573;
  *(inited + 88) = 0xEF6D756E45657079;
  [a1 sessionType];
  *(inited + 96) = sub_264785B54();
  v26 = sub_264655A9C(inited, &qword_27FF75E88, &unk_264789810);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F10, &qword_264789898);
  swift_arrayDestroy();
  *(v25 + 16) = v26;
  SessionViewModel.sessionDestinationType.getter();
  v27 = sub_264785B54();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v26;
  *(v25 + 16) = 0x8000000000000000;
  sub_2646933E4(v27, 0xD00000000000001BLL, 0x80000002647944B0, isUniquelyReferenced_nonNull_native);
  *(v25 + 16) = aBlock;
  v99 = a1;
  v29 = [a1 sessionStartDate];
  v30 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
  if (v29)
  {
    v31 = v29;
    sub_264783AC4();

    v32 = *(v98 + 32);
    v32(v96, v19, v14);
    v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    sub_264783BB4();
    sub_264783C04();
    v34 = sub_264783BF4();
    (*(v82 + 8))(v12, v83);
    [v33 setTimeZone_];

    v35 = sub_264785714();
    [v33 setDateFormat_];

    v36 = sub_264783A64();
    v37 = [v33 stringFromDate_];

    if (!v37)
    {
      sub_264785724();
      v37 = sub_264785714();
    }

    v83 = v33;
    v38 = [v33 dateFromString_];

    v39 = v88;
    v40 = v85;
    v41 = v84;
    if (v38)
    {
      sub_264783AC4();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = v98;
    (*(v98 + 56))(v41, v42, 1, v14);
    sub_26460E7E4(v41, v39, &qword_27FF756B8, &qword_26478AC90);
    sub_26460CCE8(v39, v40, &qword_27FF756B8, &qword_26478AC90);
    if ((*(v43 + 48))(v40, 1, v14) == 1)
    {

      sub_26460CD50(v39, &qword_27FF756B8, &qword_26478AC90);
      (*(v86 + 8))(v97, v87);
      (*(v98 + 8))(v96, v14);
      sub_26460CD50(v40, &qword_27FF756B8, &qword_26478AC90);
    }

    else
    {
      v44 = v78;
      v32(v78, v40, v14);
      v45 = v80;
      v46 = v98;
      v47 = v79;
      v48 = v81;
      (*(v80 + 104))(v79, *MEMORY[0x277CC9980], v81);
      sub_264783BD4();
      (*(v45 + 8))(v47, v48);
      v49 = sub_264785994();
      v50 = *(v25 + 16);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v50;
      *(v25 + 16) = 0x8000000000000000;
      sub_2646933E4(v49, 0xD000000000000015, 0x8000000264794490, v51);
      *(v25 + 16) = aBlock;

      v52 = *(v46 + 8);
      v52(v44, v14);
      sub_26460CD50(v39, &qword_27FF756B8, &qword_26478AC90);
      (*(v86 + 8))(v97, v87);
      v52(v96, v14);
    }

    v30 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
  }

  v53 = dispatch_group_create();
  dispatch_group_enter(v53);
  v54 = *(v100 + 16);
  v55 = [v99 *(v30 + 120)];
  v56 = [v55 receiverHandles];

  if (!v56)
  {
    sub_2647857F4();
    v56 = sub_2647857E4();
  }

  v57 = swift_allocObject();
  *(v57 + 16) = v25;
  *(v57 + 24) = v53;
  v106 = sub_264659120;
  v107 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_264652E80;
  v105 = &block_descriptor_485;
  v58 = _Block_copy(&aBlock);

  v59 = v53;

  [v54 fetchNumFavoriteRecipientsWithReceiverHandles:v56 handler:v58];
  _Block_release(v58);

  dispatch_group_enter(v59);
  v60 = [v99 v30 + 1194];
  v61 = [v60 receiverHandles];

  if (!v61)
  {
    sub_2647857F4();
    v61 = sub_2647857E4();
  }

  v62 = swift_allocObject();
  *(v62 + 16) = v25;
  *(v62 + 24) = v59;
  v106 = sub_264659160;
  v107 = v62;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_264652E80;
  v105 = &block_descriptor_491;
  v63 = _Block_copy(&aBlock);

  v64 = v59;

  [v54 fetchNumEmergencyRecipientsWithReceiverHandles:v61 handler:v63];
  _Block_release(v63);

  dispatch_group_enter(v64);
  v65 = [v99 v30 + 1194];
  v66 = [v65 receiverHandles];

  if (!v66)
  {
    sub_2647857F4();
    v66 = sub_2647857E4();
  }

  v67 = swift_allocObject();
  *(v67 + 16) = v25;
  *(v67 + 24) = v64;
  v106 = sub_2646591A0;
  v107 = v67;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_264652E80;
  v105 = &block_descriptor_497;
  v68 = _Block_copy(&aBlock);

  v69 = v64;

  [v54 fetchNumiCloudFamilyRecipientsWithReceiverHandles:v66 handler:v68];
  _Block_release(v68);

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v70 = sub_264785A44();
  v71 = swift_allocObject();
  *(v71 + 16) = v100;
  *(v71 + 24) = v25;
  v106 = sub_2646591E4;
  v107 = v71;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_264659F60;
  v105 = &block_descriptor_503;
  v72 = _Block_copy(&aBlock);

  v73 = v90;
  sub_2647855B4();
  v101 = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  v74 = v92;
  v75 = v95;
  sub_264785BD4();
  sub_264785A14();
  _Block_release(v72);

  (*(v94 + 8))(v74, v75);
  (*(v91 + 8))(v73, v93);
}

uint64_t sub_26463F8C4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

void sub_26463FA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v73 = a5;
  v74 = a6;
  v70 = a3;
  v71 = a4;
  v69 = a2;
  v7 = *a1;
  v8 = sub_264783B64();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = v11;
  v68 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v76 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - v16;
  v18 = sub_264783E24();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v75 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  sub_264783DF4();

  v24 = sub_264783E14();
  v25 = sub_2647859F4();

  v26 = os_log_type_enabled(v24, v25);
  v77 = v7;
  if (v26)
  {
    v63 = v25;
    v64 = v19;
    v62 = v18;
    v27 = v8;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315650;
    v79 = a1;

    v30 = sub_264785764();
    v32 = sub_2646DF234(v30, v31, aBlock);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
    *(v28 + 22) = 2080;
    SessionViewModel.currentSessionID.getter(v17);
    v33 = (*(v9 + 48))(v17, 1, v27);
    v65 = v9;
    v66 = v27;
    if (v33 == 1)
    {
      sub_26460CD50(v17, &qword_27FF75CE8, &unk_264788B70);
      v34 = 0xED00004449206E6FLL;
      v35 = 0x6973736553206F4ELL;
    }

    else
    {
      v35 = sub_264783B04();
      v34 = v37;
      (*(v9 + 8))(v17, v27);
    }

    v38 = sub_2646DF234(v35, v34, aBlock);

    *(v28 + 24) = v38;
    _os_log_impl(&dword_264605000, v24, v63, "%s, %s: Attempting to end session for sessionID, %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v29, -1, -1);
    MEMORY[0x266740650](v28, -1, -1);

    v36 = *(v64 + 8);
    v18 = v62;
    v36(v23, v62);
    v9 = v65;
    v8 = v66;
  }

  else
  {

    v36 = *(v19 + 8);
    v36(v23, v18);
  }

  v39 = v76;
  SessionViewModel.currentSessionID.getter(v76);
  if ((*(v9 + 48))(v39, 1, v8) == 1)
  {
    sub_26460CD50(v39, &qword_27FF75CE8, &unk_264788B70);
    v40 = v75;
    sub_264783DF4();

    v41 = sub_264783E14();
    v42 = sub_2647859D4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136315394;
      v79 = a1;

      v45 = sub_264785764();
      v47 = sub_2646DF234(v45, v46, aBlock);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
      _os_log_impl(&dword_264605000, v41, v42, "%s, %s: Error cannot end session without sessionID)", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v44, -1, -1);
      MEMORY[0x266740650](v43, -1, -1);

      v48 = v75;
    }

    else
    {

      v48 = v40;
    }

    v36(v48, v18);
    v60 = v74;
    v61 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:0];
    v60();
  }

  else
  {
    v49 = *(v9 + 32);
    v50 = v72;
    v49(v72, v39, v8);
    v51 = v8;
    v77 = *(a1 + 16);
    v76 = sub_264783B14();
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = v68;
    (*(v9 + 16))(v68, v50, v51);
    v54 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v55 = (v67 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = v52;
    v49((v56 + v54), v53, v51);
    v57 = (v56 + v55);
    *v57 = v70;
    v57[1] = 0;
    aBlock[4] = v71;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26465A0B4;
    aBlock[3] = v73;
    v58 = _Block_copy(aBlock);

    v59 = v76;
    [v77 endSessionForSessionID:v76 reason:2 completion:v58];
    _Block_release(v58);

    (*(v9 + 8))(v50, v51);
  }
}

void SessionViewModel.endSession(with:)(void (*a1)(void), void (*a2)(void))
{
  v3 = v2;
  v75 = a1;
  v76 = a2;
  v4 = *v2;
  v5 = sub_264783B64();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v69 = v8;
  v70 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - v13;
  v15 = sub_264783E24();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v71 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v63 - v19;
  sub_264783DF4();

  v21 = sub_264783E14();
  v22 = sub_2647859F4();

  v23 = os_log_type_enabled(v21, v22);
  v73 = v4;
  if (v23)
  {
    v64 = v22;
    v65 = v16;
    v66 = v15;
    v24 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v24 = 136315650;
    v78 = v3;

    v25 = sub_264785764();
    v27 = v6;
    v28 = sub_2646DF234(v25, v26, aBlock);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
    *(v24 + 22) = 2080;
    SessionViewModel.currentSessionID.getter(v14);
    v29 = (*(v27 + 48))(v14, 1, v5);
    v67 = v27;
    v68 = v5;
    if (v29 == 1)
    {
      sub_26460CD50(v14, &qword_27FF75CE8, &unk_264788B70);
      v30 = 0xED00004449206E6FLL;
      v31 = 0x6973736553206F4ELL;
    }

    else
    {
      v31 = sub_264783B04();
      v30 = v33;
      (*(v27 + 8))(v14, v5);
    }

    v34 = sub_2646DF234(v31, v30, aBlock);

    *(v24 + 24) = v34;
    _os_log_impl(&dword_264605000, v21, v64, "%s, %s: Attempting to end session for sessionID, %s", v24, 0x20u);
    v35 = v63;
    swift_arrayDestroy();
    MEMORY[0x266740650](v35, -1, -1);
    MEMORY[0x266740650](v24, -1, -1);

    v15 = v66;
    v32 = *(v65 + 8);
    v32(v20, v66);
    v6 = v67;
    v5 = v68;
  }

  else
  {

    v32 = *(v16 + 8);
    v32(v20, v15);
  }

  v36 = v72;
  SessionViewModel.currentSessionID.getter(v72);
  if ((*(v6 + 48))(v36, 1, v5) == 1)
  {
    sub_26460CD50(v36, &qword_27FF75CE8, &unk_264788B70);
    v37 = v71;
    sub_264783DF4();

    v38 = sub_264783E14();
    v39 = sub_2647859D4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136315394;
      v78 = v3;

      v42 = sub_264785764();
      v44 = v15;
      v45 = sub_2646DF234(v42, v43, aBlock);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
      _os_log_impl(&dword_264605000, v38, v39, "%s, %s: Error cannot end session without sessionID)", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v41, -1, -1);
      MEMORY[0x266740650](v40, -1, -1);

      v46 = v37;
      v47 = v44;
    }

    else
    {

      v46 = v37;
      v47 = v15;
    }

    v32(v46, v47);
    v62 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:0];
    v75();
  }

  else
  {
    v48 = *(v6 + 32);
    v49 = v74;
    v48(v74, v36, v5);
    v73 = v3[2];
    v50 = v5;
    v72 = sub_264783B14();
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = v70;
    (*(v6 + 16))(v70, v49, v50);
    v53 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v54 = (v69 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v56 = v76;
    v57 = v6;
    v58 = v55;
    *(v55 + 16) = v51;
    v48((v55 + v53), v52, v50);
    v59 = (v58 + v54);
    *v59 = v75;
    v59[1] = v56;
    aBlock[4] = sub_264655E88;
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26465A0B4;
    aBlock[3] = &block_descriptor_245;
    v60 = _Block_copy(aBlock);

    v61 = v72;
    [v73 endSessionForSessionID:v72 reason:2 completion:v60];
    _Block_release(v60);

    (*(v57 + 8))(v74, v50);
  }
}

uint64_t sub_264640A3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v68 = a5;
  v69 = a4;
  v66 = sub_264785594();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2647855C4();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264783B64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264783E24();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - v17;
  sub_264783DF4();
  (*(v10 + 16))(v12, a3, v9);

  v19 = a1;
  v20 = sub_264783E14();
  v21 = sub_2647859F4();

  v22 = os_log_type_enabled(v20, v21);
  v67 = a1;
  if (v22)
  {
    v58 = v21;
    v59 = v14;
    v60 = v13;
    v23 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v23 = 136315906;
    swift_beginAccess();
    v72[1] = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v24 = sub_264785764();
    v26 = sub_2646DF234(v24, v25, aBlock);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
    *(v23 + 22) = 2080;
    if (a1)
    {
      swift_getErrorValue();
      v27 = sub_264785EF4();
      v29 = v28;
    }

    else
    {
      v29 = 0xE300000000000000;
      v27 = 7104878;
    }

    v31 = sub_2646DF234(v27, v29, aBlock);

    *(v23 + 24) = v31;
    *(v23 + 32) = 2080;
    sub_264655E3C(&qword_27FF75D80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v32 = sub_264785E44();
    v34 = v33;
    (*(v10 + 8))(v12, v9);
    v35 = sub_2646DF234(v32, v34, aBlock);

    *(v23 + 34) = v35;
    _os_log_impl(&dword_264605000, v20, v58, "%s, %s: error, %s, sessionID, %s", v23, 0x2Au);
    v36 = v57;
    swift_arrayDestroy();
    MEMORY[0x266740650](v36, -1, -1);
    MEMORY[0x266740650](v23, -1, -1);

    v30 = *(v59 + 8);
    v13 = v60;
    v30(v18, v60);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v30 = *(v14 + 8);
    v30(v18, v13);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v38 = v70;
  if (Strong)
  {
    v39 = Strong;
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v40 = sub_264785A44();
    aBlock[4] = sub_264658F3C;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_469;
    v41 = _Block_copy(aBlock);

    v42 = v61;
    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
    v43 = v63;
    v44 = v66;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v42, v43, v41);
    _Block_release(v41);

    (*(v65 + 8))(v43, v44);
    (*(v62 + 8))(v42, v64);
    v69(v67);
  }

  else
  {
    sub_264783DF4();

    v46 = sub_264783E14();
    v47 = sub_2647859D4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = v13;
      v50 = swift_slowAlloc();
      v72[0] = v50;
      *v48 = 136315650;
      swift_beginAccess();
      aBlock[6] = swift_weakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
      v51 = sub_264785764();
      v53 = sub_2646DF234(v51, v52, v72);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, v72);
      *(v48 + 22) = 2080;
      *(v48 + 24) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, v72);
      _os_log_impl(&dword_264605000, v46, v47, "%s, %s: no reference to self in %s", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v48, -1, -1);

      v54 = v38;
      v55 = v49;
    }

    else
    {

      v54 = v38;
      v55 = v13;
    }

    return (v30)(v54, v55);
  }
}

uint64_t sub_264641360(uint64_t a1)
{
  v2 = sub_264783B64();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28[0] = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED8, &qword_264789880);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v30 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v32);

  v16 = v32[0];
  v17 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  sub_26460CCE8(v16 + v17, v15, &qword_27FF75CE8, &unk_264788B70);

  v28[1] = a1;
  v18 = v29;
  SessionViewModel.currentSessionID.getter(v13);
  v19 = *(v5 + 56);
  sub_26460CCE8(v15, v7, &qword_27FF75CE8, &unk_264788B70);
  sub_26460CCE8(v13, &v7[v19], &qword_27FF75CE8, &unk_264788B70);
  v20 = *(v18 + 48);
  if (v20(v7, 1, v2) != 1)
  {
    sub_26460CCE8(v7, v30, &qword_27FF75CE8, &unk_264788B70);
    if (v20(&v7[v19], 1, v2) != 1)
    {
      v22 = &v7[v19];
      v23 = v28[0];
      (*(v18 + 32))(v28[0], v22, v2);
      sub_264655E3C(&qword_27FF78040, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v24 = v30;
      v25 = sub_264785684();
      v26 = *(v18 + 8);
      v26(v23, v2);
      sub_26460CD50(v13, &qword_27FF75CE8, &unk_264788B70);
      sub_26460CD50(v15, &qword_27FF75CE8, &unk_264788B70);
      v26(v24, v2);
      result = sub_26460CD50(v7, &qword_27FF75CE8, &unk_264788B70);
      if ((v25 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_26460CD50(v13, &qword_27FF75CE8, &unk_264788B70);
    sub_26460CD50(v15, &qword_27FF75CE8, &unk_264788B70);
    (*(v18 + 8))(v30, v2);
    return sub_26460CD50(v7, &qword_27FF75ED8, &qword_264789880);
  }

  sub_26460CD50(v13, &qword_27FF75CE8, &unk_264788B70);
  sub_26460CD50(v15, &qword_27FF75CE8, &unk_264788B70);
  if (v20(&v7[v19], 1, v2) != 1)
  {
    return sub_26460CD50(v7, &qword_27FF75ED8, &qword_264789880);
  }

  sub_26460CD50(v7, &qword_27FF75CE8, &unk_264788B70);
LABEL_8:
  v27 = sub_26471B978();
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v27;

  sub_264783EE4();
  sub_264629270();
}

void SessionViewModel.safeResponseToTriggerPrompt(with:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v82 = a2;
  v77 = a1;
  v4 = *v2;
  v5 = sub_264783B64();
  v79 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v80 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v73 - v10;
  v12 = sub_264783E24();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v78 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v83 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - v18;
  sub_264783DF4();

  v20 = sub_264783E14();
  v21 = sub_2647859F4();

  v22 = os_log_type_enabled(v20, v21);
  v84 = v13;
  v76 = v5;
  v81 = v4;
  if (v22)
  {
    v74 = v12;
    v23 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock = v73;
    *v23 = 136315650;
    v91[0] = v2;

    v24 = sub_264785764();
    v26 = sub_2646DF234(v24, v25, &aBlock);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &aBlock);
    *(v23 + 22) = 2080;
    SessionViewModel.currentSessionID.getter(v11);
    v27 = v79;
    if ((*(v79 + 48))(v11, 1, v5) == 1)
    {
      sub_26460CD50(v11, &qword_27FF75CE8, &unk_264788B70);
      v28 = 0xED00004449206E6FLL;
      v29 = 0x6973736553206F4ELL;
    }

    else
    {
      v29 = sub_264783B04();
      v28 = v31;
      (*(v27 + 8))(v11, v5);
    }

    v32 = sub_2646DF234(v29, v28, &aBlock);

    *(v23 + 24) = v32;
    _os_log_impl(&dword_264605000, v20, v21, "%s, %s:Attempting to respond to trigger prompt for sessionID, %s", v23, 0x20u);
    v33 = v73;
    swift_arrayDestroy();
    MEMORY[0x266740650](v33, -1, -1);
    MEMORY[0x266740650](v23, -1, -1);

    v30 = *(v84 + 8);
    v12 = v74;
    v30(v19, v74);
  }

  else
  {

    v30 = *(v13 + 8);
    v30(v19, v12);
  }

  v34 = v82;
  v35 = v80;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&aBlock);

  v36 = aBlock;
  v37 = v83;
  if (aBlock && (v38 = [aBlock sessionState], v36, v38 <= 0xE) && ((1 << v38) & 0x4280) != 0)
  {
    SessionViewModel.currentSessionID.getter(v35);
    v39 = v79;
    v40 = v76;
    if ((*(v79 + 48))(v35, 1, v76) == 1)
    {
      sub_26460CD50(v35, &qword_27FF75CE8, &unk_264788B70);
      sub_264783DF4();

      v41 = sub_264783E14();
      v42 = sub_2647859D4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock = v44;
        *v43 = 136315394;
        v91[0] = v3;

        v45 = sub_264785764();
        v47 = sub_2646DF234(v45, v46, &aBlock);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &aBlock);
        _os_log_impl(&dword_264605000, v41, v42, "%s, %s: Error cannot safeResponseToTriggerPrompt without sessionID)", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v44, -1, -1);
        MEMORY[0x266740650](v43, -1, -1);

        v48 = v83;
      }

      else
      {

        v48 = v37;
      }

      v30(v48, v12);
      v69 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:0];
      v77();
    }

    else
    {
      v60 = v39;
      v61 = v75;
      v62 = v40;
      (*(v39 + 32))(v75, v35, v40);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&aBlock);

      if ((aBlock & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock) = 1;

        sub_264783EE4();
        sub_264628950();
      }

      v63 = v3[2];
      v64 = sub_264783B14();
      v65 = swift_allocObject();
      swift_weakInit();
      v66 = swift_allocObject();
      v67 = v77;
      v66[2] = v65;
      v66[3] = v67;
      v66[4] = v34;
      v89 = sub_264655E8C;
      v90 = v66;
      aBlock = MEMORY[0x277D85DD0];
      v86 = 1107296256;
      v87 = sub_26465A0B4;
      v88 = &block_descriptor_252;
      v68 = _Block_copy(&aBlock);

      [v63 respondToTriggerPromptForSessionID:v64 response:2 handler:v68];
      _Block_release(v68);

      (*(v60 + 8))(v61, v62);
    }
  }

  else
  {
    v49 = v78;
    sub_264783DF4();

    v50 = sub_264783E14();
    v51 = sub_2647859D4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v91[0] = v53;
      *v52 = 136315650;
      aBlock = v3;

      v54 = sub_264785764();
      v56 = sub_2646DF234(v54, v55, v91);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, v91);
      *(v52 + 22) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&aBlock);

      v57 = aBlock;
      if (aBlock)
      {
        v58 = [aBlock sessionState];
      }

      else
      {
        v58 = 0;
      }

      aBlock = v58;
      LOBYTE(v86) = v57 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D90, &qword_264789368);
      v70 = sub_264785764();
      v72 = sub_2646DF234(v70, v71, v91);

      *(v52 + 24) = v72;
      _os_log_impl(&dword_264605000, v50, v51, "%s, %s: Unable extend session from state: %s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v53, -1, -1);
      MEMORY[0x266740650](v52, -1, -1);

      v59 = v78;
    }

    else
    {

      v59 = v49;
    }

    v30(v59, v12);
  }
}