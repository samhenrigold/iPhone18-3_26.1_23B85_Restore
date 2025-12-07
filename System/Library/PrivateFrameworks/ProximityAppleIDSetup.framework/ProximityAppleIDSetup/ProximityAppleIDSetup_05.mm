uint64_t sub_261014710(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, ...)
{
  sub_260FA9918(a1, v12, &qword_27FE63858, &unk_2610BE900);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v12, &v11, &qword_27FE63858, &unk_2610BE900);

  sub_2610BC854();
  sub_2610148D0(a5, a6, a7);
  return sub_260FA9980(v12, &qword_27FE63858, &unk_2610BE900);
}

uint64_t sub_261014804(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, ...)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(a1, v9, &qword_27FE63858, &unk_2610BE900);

  sub_2610BC854();
  sub_2610148D0(a2, a3, a4);
  return sub_260FA9980(a1, &qword_27FE63858, &unk_2610BE900);
}

void sub_2610148D0(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);

  oslog = sub_2610BC794();
  v5 = sub_2610BCD54();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2610BC844();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63858, &unk_2610BE900);
    v8 = sub_2610BCE54();
    v10 = v9;
    sub_260FA9980(v13, &qword_27FE63858, &unk_2610BE900);
    v11 = sub_260FA5970(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, oslog, v5, a3, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }
}

void (*PASDeviceProvider.sourceDevice.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return sub_261014B98;
}

void sub_261014BB4(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  v8 = *a1;
  if (a2)
  {
    sub_260FA9918(*a1, v8 + 40, &qword_27FE63858, &unk_2610BE900);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FA9918(v8 + 40, v8 + 80, &qword_27FE63858, &unk_2610BE900);

    sub_2610BC854();
    sub_2610148D0(a3, a4, a5);
    sub_260FA9980(v8 + 40, &qword_27FE63858, &unk_2610BE900);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FA9918(v8, v8 + 40, &qword_27FE63858, &unk_2610BE900);

    sub_2610BC854();
    sub_2610148D0(a3, a4, a5);
  }

  sub_260FA9980(v8, &qword_27FE63858, &unk_2610BE900);

  free(v8);
}

uint64_t sub_261014D44(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E8, &qword_2610C6948);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  sub_2610BC824();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t sub_261014EDC(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E8, &qword_2610C6948);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  sub_2610BC824();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*PASDeviceProvider.$sourceDevice.modify(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E8, &qword_2610C6948);
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

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDevice;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  sub_2610BC814();
  swift_endAccess();
  return sub_261015184;
}

void sub_2610151E8(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);

  oslog = sub_2610BC794();
  v5 = sub_2610BCD54();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2610BC844();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63850, qword_2610CC240);
    v8 = sub_2610BCE54();
    v10 = v9;
    sub_260FA9980(v13, &qword_27FE63850, qword_2610CC240);
    v11 = sub_260FA5970(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, oslog, v5, a3, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }
}

void (*PASDeviceProvider.sourceDeviceContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return sub_2610154B0;
}

void (*PASDeviceProvider.$sourceDeviceContext.modify(uint64_t *a1))(uint64_t, char)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
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

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDeviceContext;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  sub_2610BC814();
  swift_endAccess();
  return sub_261018E7C;
}

uint64_t PASDeviceProvider.setTargetDevice(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_260FA9918(a1, v5, &qword_27FE63858, &unk_2610BE900);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v5, v4, &qword_27FE63858, &unk_2610BE900);

  sub_2610BC854();
  sub_2610148D0(&unk_2610C68F0, &unk_2610C6918, "PASDeviceProvider targetDevice set %{public}s");
  sub_260FA9980(v5, &qword_27FE63858, &unk_2610BE900);
  sub_260FA9918(a2, v5, &qword_27FE63850, qword_2610CC240);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v5, v4, &qword_27FE63850, qword_2610CC240);

  sub_2610BC854();
  sub_2610151E8(&unk_2610C6950, &unk_2610C6978, "PASDeviceProvider targetDeviceContext set %{public}s");
  return sub_260FA9980(v5, &qword_27FE63850, qword_2610CC240);
}

uint64_t PASDeviceProvider.setSourceDevice(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_260FA9918(a1, v5, &qword_27FE63858, &unk_2610BE900);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v5, v4, &qword_27FE63858, &unk_2610BE900);

  sub_2610BC854();
  sub_2610148D0(&unk_2610C69B0, &unk_2610C69D8, "PASDeviceProvider sourceDevice set %{public}s");
  sub_260FA9980(v5, &qword_27FE63858, &unk_2610BE900);
  sub_260FA9918(a2, v5, &qword_27FE63850, qword_2610CC240);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v5, v4, &qword_27FE63850, qword_2610CC240);

  sub_2610BC854();
  sub_2610151E8(&unk_2610C69F8, &unk_2610C6A20, "PASDeviceProvider sourceDeviceContext set %{public}s");
  return sub_260FA9980(v5, &qword_27FE63850, qword_2610CC240);
}

uint64_t PASDeviceProvider.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDeviceContext;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDevice, v2);
  v6(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDeviceContext, v5);
  return v0;
}

uint64_t PASDeviceProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDeviceContext;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDevice, v2);
  v6(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDeviceContext, v5);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_261015BB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  v20 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v18 - v9;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDevice;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_260FA9918(&v23, v22, &qword_27FE63858, &unk_2610BE900);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63858, &unk_2610BE900);
  sub_2610BC804();
  sub_260FA9980(&v23, &qword_27FE63858, &unk_2610BE900);
  v19 = *(v7 + 32);
  v12 = v0;
  v19(v0 + v11, v10, v6);
  v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDeviceContext;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_260FA9918(&v23, v22, &qword_27FE63850, qword_2610CC240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63850, qword_2610CC240);
  sub_2610BC804();
  sub_260FA9980(&v23, &qword_27FE63850, qword_2610CC240);
  v14 = *(v2 + 32);
  v18[1] = v2 + 32;
  v14(v12 + v13, v5, v1);
  v15 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDevice;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_260FA9918(&v23, v22, &qword_27FE63858, &unk_2610BE900);
  sub_2610BC804();
  sub_260FA9980(&v23, &qword_27FE63858, &unk_2610BE900);
  v19(v12 + v15, v10, v20);
  v16 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__sourceDeviceContext;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_260FA9918(&v23, v22, &qword_27FE63850, qword_2610CC240);
  sub_2610BC804();
  sub_260FA9980(&v23, &qword_27FE63850, qword_2610CC240);
  v14(v12 + v16, v5, v1);
  return v12;
}

uint64_t sub_261015F4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();
}

uint64_t sub_261016030(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_2610BC814();
  return swift_endAccess();
}

ProximityAppleIDSetup::PASDeviceClass_optional __swiftcall PASDeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2610BD154();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_261016118()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610161CC(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_26101626C(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

void sub_261016328(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x454E4F485049;
  v4 = 0xE400000000000000;
  v5 = 1145131081;
  if (*v1 != 2)
  {
    v5 = 0x4E574F4E4B4E55;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1146048585;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2610163B8()
{
  v1 = 0x454E4F485049;
  v2 = 1145131081;
  if (*v0 != 2)
  {
    v2 = 0x4E574F4E4B4E55;
  }

  if (*v0)
  {
    v1 = 1146048585;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

id PASDevice.init()@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for PASDeviceClass;
  a1[4] = &protocol witness table for PASDeviceClass;
  *a1 = 3;
  if (qword_27FE63800 != -1)
  {
    swift_once();
  }

  v2 = MGGetSInt32Answer();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  a1[3] = &type metadata for PASDeviceClass;
  a1[4] = &protocol witness table for PASDeviceClass;
  v3 = 0x2010003u >> (8 * v2);
  if (v2 >= 4)
  {
    LOBYTE(v3) = 3;
  }

  *a1 = v3;
  type metadata accessor for PASBiometryEvaluator();
  inited = swift_initStackObject();
  sub_2610135F4();
  v5 = [*(inited + 16) biometryType];

  a1[5] = v5;
  result = [objc_opt_self() currentDevice];
  a1[6] = result;
  return result;
}

uint64_t static PASDevice.current.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27FE637F8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_260FA6AE0(qword_27FE65498, v2);
}

uint64_t sub_2610165D8()
{
  result = sub_2610BC9D4();
  qword_27FE80AA0 = result;
  return result;
}

uint64_t sub_261016634()
{
  v1 = 0x797274656D6F6962;
  if (*v0 != 1)
  {
    v1 = 0x63697665645F6B61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C43656369766564;
  }
}

uint64_t sub_2610166AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261018C68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2610166D4(uint64_t a1)
{
  v2 = sub_261016C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261016710(uint64_t a1)
{
  v2 = sub_261016C68();

  return MEMORY[0x2821FE720](a1, v2);
}

void *PASDevice.ak_device.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t PASDevice.init(deviceClass:biometryProvider:ak_device:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[3] = &type metadata for PASDeviceClass;
  a4[4] = &protocol witness table for PASDeviceClass;
  *a4 = 3;
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  a4[3] = &type metadata for PASDeviceClass;
  a4[4] = &protocol witness table for PASDeviceClass;
  v8 = 0x2010003u >> (8 * a1);
  if (a1 >= 4)
  {
    LOBYTE(v8) = 3;
  }

  *a4 = v8;
  sub_260FA9918(a2, &v15, &qword_27FE65510, &qword_2610C6A40);
  if (v16)
  {
    sub_260F98E14(&v15, v17);
  }

  else
  {
    v9 = type metadata accessor for PASBiometryEvaluator();
    v10 = swift_allocObject();
    sub_2610135F4();
    v18 = v9;
    v19 = &off_2873874F0;
    v17[0] = v10;
    if (v16)
    {
      sub_260FA9980(&v15, &qword_27FE65510, &qword_2610C6A40);
    }
  }

  v11 = v18;
  v12 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v13 = (v12[1])(v11, v12);
  sub_260FA9980(a2, &qword_27FE65510, &qword_2610C6A40);
  a4[5] = v13;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v17);
  a4[6] = a3;
  return result;
}

uint64_t PASDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65518, &qword_2610C6A48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  v22[3] = &type metadata for PASDeviceClass;
  v22[4] = &protocol witness table for PASDeviceClass;
  LOBYTE(v22[0]) = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261016C68();
  sub_2610BD5D4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    v18 = v6;
    LOBYTE(v19) = 0;
    sub_2610BD1B4();
    v10 = sub_2610BD154();

    if (v10 >= 4)
    {
      v11 = 3;
    }

    else
    {
      v11 = v10;
    }

    v20 = &type metadata for PASDeviceClass;
    v21 = &protocol witness table for PASDeviceClass;
    LOBYTE(v19) = v11;
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    sub_260F98E14(&v19, v22);
    type metadata accessor for LABiometryType(0);
    v23 = 1;
    sub_261018E30(&qword_27FE65528, 255, type metadata accessor for LABiometryType, &protocol conformance descriptor for LABiometryType);
    sub_2610BD1E4();
    v22[5] = v19;
    v23 = 2;
    sub_260FE4B78();
    sub_2610BD1E4();
    v12 = v18;
    v13 = v19;
    v17 = v5;
    sub_260FAA188(v19, *(&v19 + 1));
    v14 = sub_2610BC514();
    sub_260FAC46C(v13, *(&v13 + 1));
    v15 = [objc_opt_self() deviceWithSerializedData_];

    sub_260FAC46C(v13, *(&v13 + 1));
    (*(v12 + 8))(v9, v17);
    v22[6] = v15;
    sub_260FA6AE0(v22, a2);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_261016CBC(v22);
  }
}

unint64_t sub_261016C68()
{
  result = qword_27FE65520;
  if (!qword_27FE65520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65520);
  }

  return result;
}

uint64_t PASDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65530, &unk_2610C6A50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261016C68();
  sub_2610BD5F4();
  v10 = v3[3];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v10);
  (*(v11 + 8))(v10, v11);
  LOBYTE(v21) = 0;
  sub_2610BD274();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v21 = v3[5];
    v23 = 1;
    type metadata accessor for LABiometryType(0);
    sub_261018E30(&qword_27FE65538, 255, type metadata accessor for LABiometryType, &protocol conformance descriptor for LABiometryType);
    sub_2610BD2A4();
    v13 = v3[6];
    if (v13)
    {
      v14 = v13;
      v15 = [v14 serializedData];
      if (v15)
      {
        v16 = v15;
        v17 = sub_2610BC534();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xF000000000000000;
      }

      v21 = v17;
      v22 = v19;
      v23 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FA0, &qword_2610BF500);
      sub_261016FA4();
      sub_2610BD2A4();

      sub_260FAC458(v21, v22);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

unint64_t sub_261016FA4()
{
  result = qword_27FE65540;
  if (!qword_27FE65540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE63FA0, &qword_2610BF500);
    sub_260FE50F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65540);
  }

  return result;
}

uint64_t PASDevice.deviceClassCodeName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t PASDevice.deviceBiometricKey.getter()
{
  v1 = *(v0 + 40);
  v2 = 0x44494843554F54;
  v3 = 0x454D4F49425F4F4ELL;
  if (v1 == 2)
  {
    v3 = 0x444945434146;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x454D4F49425F4F4ELL;
  }
}

uint64_t PASDevice.deviceBiometricIconName.getter()
{
  v1 = *(v0 + 40);
  v2 = 0x64696863756F74;
  if (v1 != 1)
  {
    v2 = 0;
  }

  if (v1 == 2)
  {
    return 0x646965636166;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26101715C()
{
  v1 = *(v0 + 40);
  v2 = 0x44494843554F54;
  v3 = 0x454D4F49425F4F4ELL;
  if (v1 == 2)
  {
    v3 = 0x444945434146;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x454D4F49425F4F4ELL;
  }
}

uint64_t sub_2610171EC()
{
  v1 = *(v0 + 40);
  v2 = 0x64696863756F74;
  if (v1 != 1)
  {
    v2 = 0;
  }

  if (v1 == 2)
  {
    return 0x646965636166;
  }

  else
  {
    return v2;
  }
}

void *sub_261017230()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t PASDeviceCapability.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static PASDeviceCapability.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27FE654D0 = a1;
}

uint64_t sub_261017468(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_27FE654D0 = v1;
}

void *sub_2610174C0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_2610174CC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2610174D8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27FE654D0;
}

uint64_t sub_261017528()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_26101757C(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_261017674(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2610BD384();
  }
}

uint64_t sub_2610176B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2610BD514();
  sub_2610BCA54();
  v6 = sub_2610BD574();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2610BD384() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2610177CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2610BD384();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261017858(uint64_t a1)
{
  v2 = sub_261017AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261017894(uint64_t a1)
{
  v2 = sub_261017AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PASDeviceContext.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t PASDeviceContext.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65548, &qword_2610C6A60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261017AB8();
  sub_2610BD5F4();
  v10[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65558, &qword_2610C6A68);
  sub_261017B0C(&qword_27FE65560, sub_261017B84, MEMORY[0x277D83B50]);
  sub_2610BD2A4();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_261017AB8()
{
  result = qword_27FE65550;
  if (!qword_27FE65550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65550);
  }

  return result;
}

uint64_t sub_261017B0C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE65558, &qword_2610C6A68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261017B84()
{
  result = qword_27FE65568;
  if (!qword_27FE65568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65568);
  }

  return result;
}

uint64_t PASDeviceContext.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PASDeviceContext.init(from:)(a1);
  return v2;
}

void *PASDeviceContext.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65570, &qword_2610C6A70);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261017AB8();
  sub_2610BD5D4();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65558, &qword_2610C6A68);
    sub_261017B0C(&qword_27FE65578, sub_261017E24, MEMORY[0x277D83B70]);
    sub_2610BD1E4();
    (*(v10 + 8))(v7, v4);
    *(v1 + 16) = v11;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

unint64_t sub_261017E24()
{
  result = qword_27FE65580;
  if (!qword_27FE65580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65580);
  }

  return result;
}

void *sub_261017E8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = PASDeviceContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *MGDeviceClass.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5C4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_2610BD3C4();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t MGDeviceClass.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5E4();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2610BD3F4();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_261018064@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5C4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v6 = sub_2610BD3C4();
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

uint64_t sub_261018138(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5E4();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2610BD3F4();
  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

void *LABiometryType.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5C4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_2610BD3A4();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t LABiometryType.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5E4();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2610BD3D4();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

unint64_t sub_26101832C()
{
  result = qword_27FE65588;
  if (!qword_27FE65588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65588);
  }

  return result;
}

unint64_t sub_261018384()
{
  result = qword_27FE65590;
  if (!qword_27FE65590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE65598, &qword_2610C6C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65590);
  }

  return result;
}

unint64_t sub_2610183EC()
{
  result = qword_27FE655A0;
  if (!qword_27FE655A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655A0);
  }

  return result;
}

uint64_t sub_261018440(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_261018E30(&qword_27FE63FD0, a2, type metadata accessor for PASDeviceContext, &protocol conformance descriptor for PASDeviceContext);
  result = sub_261018E30(&qword_27FE655A8, v3, type metadata accessor for PASDeviceContext, &protocol conformance descriptor for PASDeviceContext);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2610184E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5C4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v6 = sub_2610BD3A4();
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

uint64_t sub_2610185BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5E4();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2610BD3D4();
  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

uint64_t type metadata accessor for PASDeviceProvider(uint64_t a1)
{
  result = qword_27FE655B0;
  if (!qword_27FE655B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261018780(uint64_t a1)
{
  sub_260FC5678(319, &qword_27FE655C0, &qword_27FE63858, &unk_2610BE900);
  if (v1 <= 0x3F)
  {
    sub_260FC5678(319, &qword_27FE655C8, &qword_27FE63850, qword_2610CC240);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_261018930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_261018978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261018A5C()
{
  result = qword_27FE655D0;
  if (!qword_27FE655D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655D0);
  }

  return result;
}

unint64_t sub_261018AB4()
{
  result = qword_27FE655D8;
  if (!qword_27FE655D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655D8);
  }

  return result;
}

unint64_t sub_261018B0C()
{
  result = qword_27FE655E0;
  if (!qword_27FE655E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655E0);
  }

  return result;
}

unint64_t sub_261018B64()
{
  result = qword_27FE655E8;
  if (!qword_27FE655E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655E8);
  }

  return result;
}

unint64_t sub_261018BBC()
{
  result = qword_27FE655F0;
  if (!qword_27FE655F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655F0);
  }

  return result;
}

unint64_t sub_261018C14()
{
  result = qword_27FE655F8;
  if (!qword_27FE655F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE655F8);
  }

  return result;
}

uint64_t sub_261018C68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797274656D6F6962 && a2 == 0xEC00000065707954 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63697665645F6B61 && a2 == 0xED00006174614465)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

unint64_t sub_261018D90()
{
  result = qword_27FE65600;
  if (!qword_27FE65600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65600);
  }

  return result;
}

unint64_t sub_261018DE4()
{
  result = qword_27FE668D0;
  if (!qword_27FE668D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE668D0);
  }

  return result;
}

uint64_t sub_261018E30(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261018EB0()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_260FF7C64;

  return sub_2610AF360();
}

uint64_t sub_261018F6C()
{
  v3 = (*(*(v0 + 24) + 16) + **(*(v0 + 24) + 16));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_261019058;

  return v3();
}

uint64_t sub_261019058(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26101918C, 0, 0);
}

uint64_t sub_26101918C()
{
  v1 = v0[5];
  v2 = [objc_opt_self() interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = type metadata accessor for PASExtensionManifest();
  *v4 = v0;
  v4[1] = sub_2610192D8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x74736566696E616DLL, 0xEA00000000002928, sub_26101CB0C, v3, v5);
}

uint64_t sub_2610192D8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_26101945C;
  }

  else
  {

    v2 = sub_2610193F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610193F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26101945C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610194C8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65650, &qword_2610C7378);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26101CBD4;
  *(v11 + 24) = v10;
  v12 = a2;

  v13 = sub_26101C33C(sub_26101CBEC, v11);

  aBlock[4] = sub_26101CBD4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101CDF4;
  aBlock[3] = &block_descriptor_79_0;
  v14 = _Block_copy(aBlock);

  [v13 fetchManifestWithCompletion_];
  _Block_release(v14);

  return swift_unknownObjectRelease();
}

uint64_t sub_2610196F0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_261019710, 0, 0);
}

uint64_t sub_261019710()
{
  v3 = (*(*(v0 + 32) + 16) + **(*(v0 + 32) + 16));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2610197FC;

  return v3();
}

uint64_t sub_2610197FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261019930, 0, 0);
}

uint64_t sub_261019930()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = type metadata accessor for PASExtensionProvidedViewDetails();
  *v5 = v0;
  v5[1] = sub_261019A88;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000011, 0x80000002610D4310, sub_26101C924, v4, v6);
}

uint64_t sub_261019A88()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_261019C0C;
  }

  else
  {

    v2 = sub_261019BA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261019BA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261019C0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261019C78(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65648, &qword_2610C7360);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26101C92C;
  *(v13 + 24) = v12;
  v14 = a2;

  v15 = sub_26101C33C(sub_26101CDEC, v13);

  aBlock[4] = sub_26101C92C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101CDF4;
  aBlock[3] = &block_descriptor_55;
  v16 = _Block_copy(aBlock);

  [v15 fetchViewDetailsWithDevicePair:a3 completion:v16];
  _Block_release(v16);

  return swift_unknownObjectRelease();
}

uint64_t sub_261019EA8(void *a1, void *a2, id a3, uint64_t a4, uint64_t *a5, uint64_t *a6, char a7)
{
  [a3 invalidate];
  if (a2)
  {
    v12 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    return sub_2610BCC04();
  }

  if (!a1)
  {
    sub_26101C72C();
    swift_allocError();
    *v15 = a7;
    goto LABEL_3;
  }

  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return sub_2610BCC14();
}

uint64_t sub_261019F7C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_261019FA0, 0, 0);
}

uint64_t sub_261019FA0()
{
  super_class = v0[3].super_class;
  v2 = [v0[3].receiver anisetteDataProvider];
  v3 = type metadata accessor for AuthenticateExtras();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC21ProximityAppleIDSetupP33_6B22B88DD3ECBED0D0354FC242B14C8118AuthenticateExtras_anisetteDataProvider] = v2;
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, sel_init);
  v7 = (*(super_class + 2) + **(super_class + 2));
  v5 = swift_task_alloc();
  v0[4].super_class = v5;
  *v5 = v0;
  *(v5 + 1) = sub_26101A0E8;

  return v7();
}

uint64_t sub_26101A0E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_26101A534;
  }

  else
  {
    v4 = sub_26101A1FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26101A1FC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v11 = *(v0 + 40);
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  [v1 setExportedObject_];
  v5 = [v3 interfaceWithProtocol_];
  v6 = [v3 interfaceWithProtocol_];
  [v5 setInterface:v6 forSelector:sel_fetchExtrasWithCompletion_ argumentIndex:0 ofReply:1];

  [v1 setExportedInterface_];
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v11;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  *v8 = v0;
  v8[1] = sub_26101A418;

  return MEMORY[0x2822008A0](v0 + 32, 0, 0, 0xD000000000000015, 0x80000002610D4250, sub_26101C2A0, v7, v9);
}

uint64_t sub_26101A418()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26101A608;
  }

  else
  {

    v2 = sub_26101A598;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26101A534()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26101A598()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 32);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26101A608()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26101A680(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65618, qword_2610C7310);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26101C2AC;
  *(v15 + 24) = v14;
  v16 = a2;

  v17 = sub_26101C33C(sub_26101C4E8, v15);

  aBlock[4] = sub_26101C2AC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101C518;
  aBlock[3] = &block_descriptor_4;
  v18 = _Block_copy(aBlock);

  [v17 authenticateWithAccount:a3 with:a4 completion:v18];
  _Block_release(v18);

  return swift_unknownObjectRelease();
}

uint64_t sub_26101A8C0(uint64_t a1, void *a2, id a3)
{
  [a3 invalidate];
  if (a2)
  {
    v5 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65618, qword_2610C7310);
    return sub_2610BCC04();
  }

  if (!a1)
  {
    sub_26101C72C();
    swift_allocError();
    *v7 = 1;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65618, qword_2610C7310);
  return sub_2610BCC14();
}

uint64_t sub_26101A998(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26101A9BC, 0, 0);
}

uint64_t sub_26101A9BC()
{
  v3 = (*(*(v0 + 32) + 16) + **(*(v0 + 32) + 16));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26101AAA8;

  return v3();
}

uint64_t sub_26101AAA8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26101ABDC, 0, 0);
}

uint64_t sub_26101ABDC()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_26101AD38;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000019, 0x80000002610D4390, sub_26101C9E0, v5, v7);
}

uint64_t sub_26101AD38()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_261019C0C;
  }

  else
  {

    v2 = sub_26101AE54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26101AE54()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_26101AEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65638, &qword_2610C7340);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = aBlock - v8;
  (*(v6 + 16))(aBlock - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_26101CA70;
  *(v12 + 24) = v11;

  v13 = sub_26101C33C(sub_26101CAE4, v12);

  v14 = sub_2610BC9D4();
  aBlock[4] = sub_26101CA70;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101C5E0;
  aBlock[3] = &block_descriptor_67;
  v15 = _Block_copy(aBlock);

  [v13 signInSucceededWithAccount:v14 completion:v15];
  _Block_release(v15);

  swift_unknownObjectRelease();
}

uint64_t sub_26101B11C()
{
  v3 = (*(*(v0 + 16) + 16) + **(*(v0 + 16) + 16));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26101B208;

  return v3();
}

uint64_t sub_26101B208(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x2822009F8](sub_26101B340, 0, 0);
}

uint64_t sub_26101B340()
{
  v1 = v0[4];
  v2 = [objc_opt_self() interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26101B490;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 8, 0, 0, 0xD000000000000022, 0x80000002610D42E0, sub_26101C860, v3, v5);
}

uint64_t sub_26101B490()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26101B614;
  }

  else
  {

    v2 = sub_26101B5AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26101B5AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26101B614()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_26101B684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65640, &qword_2610C7350);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26101C868;
  *(v9 + 24) = v8;

  v10 = sub_26101C33C(sub_26101C8F4, v9);

  aBlock[4] = sub_26101C868;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101C64C;
  aBlock[3] = &block_descriptor_43;
  v11 = _Block_copy(aBlock);

  [v10 shouldPerformLocalAuthenticationWithCompletion_];
  _Block_release(v11);

  return swift_unknownObjectRelease();
}

uint64_t sub_26101B8A0(char a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65640, &qword_2610C7350);
    return sub_2610BCC04();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65640, &qword_2610C7350);
    return sub_2610BCC14();
  }
}

uint64_t sub_26101B944()
{
  v3 = (*(*(v0 + 16) + 16) + **(*(v0 + 16) + 16));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26101BA30;

  return v3();
}

uint64_t sub_26101BA30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26101BB64, 0, 0);
}

uint64_t sub_26101BB64()
{
  v1 = v0[4];
  v2 = [objc_opt_self() interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 resume];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26101BCB0;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD00000000000001FLL, 0x80000002610D42C0, sub_26101C858, v3, v5);
}

uint64_t sub_26101BCB0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26101BE30;
  }

  else
  {

    v2 = sub_26101BDCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26101BDCC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26101BE30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26101BE9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65638, &qword_2610C7340);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26101CDF0;
  *(v9 + 24) = v8;

  v10 = sub_26101C33C(sub_26101CDE8, v9);

  aBlock[4] = sub_26101CDF0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101C5E0;
  aBlock[3] = &block_descriptor_31;
  v11 = _Block_copy(aBlock);

  [v10 didPerformLocalAuthenticationWithCompletion_];
  _Block_release(v11);

  return swift_unknownObjectRelease();
}

uint64_t sub_26101C0B8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65638, &qword_2610C7340);
    return sub_2610BCC04();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65638, &qword_2610C7340);
    return sub_2610BCC14();
  }
}

uint64_t sub_26101C12C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_26101C234()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthenticateExtras();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26101C2AC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65618, qword_2610C7310);
  v5 = *(v2 + 16);

  return sub_26101A8C0(a1, a2, v5);
}

uint64_t sub_26101C33C(uint64_t a1, uint64_t a2)
{
  [v2 activate];
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26101C6C4;
  aBlock[3] = &block_descriptor_17;
  v5 = _Block_copy(aBlock);

  v6 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v5);
  sub_2610BCEA4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65628, &qword_2610C7328);
  swift_dynamicCast();
  return v8;
}

void sub_26101C45C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_26101C518(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    v4 = sub_2610BC914();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26101C5E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_26101C64C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_26101C6C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_26101C72C()
{
  result = qword_27FE65630;
  if (!qword_27FE65630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65630);
  }

  return result;
}

unint64_t sub_26101C788()
{
  v1 = 0xD000000000000036;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t sub_26101C7E0(uint64_t a1)
{
  v2 = sub_26101CC64();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26101C81C(uint64_t a1)
{
  v2 = sub_26101CC64();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26101C868(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65640, &qword_2610C7350);

  return sub_26101B8A0(a1, a2);
}

uint64_t objectdestroy_24Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

unint64_t sub_26101CC2C(void *a1)
{
  a1[1] = sub_26101CC64();
  a1[2] = sub_26101CCB8();
  result = sub_26101CD0C();
  a1[3] = result;
  return result;
}

unint64_t sub_26101CC64()
{
  result = qword_27FE65658;
  if (!qword_27FE65658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65658);
  }

  return result;
}

unint64_t sub_26101CCB8()
{
  result = qword_27FE65660;
  if (!qword_27FE65660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65660);
  }

  return result;
}

unint64_t sub_26101CD0C()
{
  result = qword_27FE65668;
  if (!qword_27FE65668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65668);
  }

  return result;
}

unint64_t sub_26101CD64()
{
  result = qword_27FE65670;
  if (!qword_27FE65670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65670);
  }

  return result;
}

void *PASFlowStepTargetError.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError_error);
  v2 = v1;
  return v1;
}

uint64_t PASFlowStepTargetError.__allocating_init(delegate:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError__targetAppleIDExchanger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65688, &unk_2610C7510);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v6 + v7) = v8;
  *(v6 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError_error) = a3;
  v9 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t PASFlowStepTargetError.init(delegate:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError__targetAppleIDExchanger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65688, &unk_2610C7510);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v3 + v7) = v8;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError_error) = a3;
  v9 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_26101CF84()
{
  v1 = *(v0 + 96) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 96);
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError_error);
    *(v0 + 16) = v6;
    *(v0 + 64) = 1;
    v7 = *(v4 + 24);
    v8 = v6;
    v12 = (v7 + *v7);
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_26101D148;

    return v12(v0 + 16, ObjectType, v4);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_26101D148()
{
  v1 = *v0;
  v4 = *v0;

  swift_unknownObjectRelease();
  sub_26101D40C(v1 + 16);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26101D290()
{
}

uint64_t PASFlowStepTargetError.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);

  return v0;
}

uint64_t PASFlowStepTargetError.__deallocating_deinit()
{
  PASFlowStepTargetError.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26101D40C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65690, qword_2610C7520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PASFlowStepTargetError(uint64_t a1)
{
  result = qword_27FE65698;
  if (!qword_27FE65698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PASFlowStepTargetError.exitFlow()()
{
  v4 = (*(*v0 + 352) + **(*v0 + 352));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return v4();
}

uint64_t sub_26101D68C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__anisetteDataProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA0E88();
    *(v1 + 16) = v2;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_26101D758@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63C70, &unk_2610C0780);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63C70, &unk_2610C0780);
  swift_endAccess();
}

uint64_t sub_26101D8B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__featureFlags);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E668(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE63C00, &qword_2610BEDD0);
  swift_endAccess();
}

uint64_t sub_26101D9F0()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account;
  swift_beginAccess();
  sub_260FA9918(v0 + v1, v11, &unk_27FE656B0, &unk_2610BFCE0);
  v2 = v12;
  if (v12)
  {
    v3 = v13;
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v2 - 8);
    MEMORY[0x28223BE20](v4, v4);
    v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v5 + 16))(v7);
    sub_260FA9980(v11, &unk_27FE656B0, &unk_2610BFCE0);
    v8 = (*(v3 + 32))(v2, v3);
    (*(v5 + 8))(v7, v2);
  }

  else
  {
    sub_260FA9980(v11, &unk_27FE656B0, &unk_2610BFCE0);
    return 0;
  }

  return v8;
}

uint64_t sub_26101DB8C(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_26101DBB0, 0, 0);
}

uint64_t sub_26101DBB0()
{
  v1 = sub_26101D66C();
  v3 = v2;
  v0[60] = v1;
  v0[61] = v2;
  v0[62] = swift_getObjectType();
  v0[63] = *(v3 + 8);
  v0[64] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0xE13E000000000000;
  v0[65] = sub_2610BCC74();
  v0[66] = sub_2610BCC64();
  v5 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26101DC6C, v5, v4);
}

uint64_t sub_26101DC6C()
{
  v1 = v0[63];
  v3 = v0[61];
  v2 = v0[62];

  v1(v2, v3);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26101DD08, 0, 0);
}

uint64_t sub_26101DD08()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 256);
    __swift_project_boxed_opaque_existential_1((v0 + 224), *(v0 + 248));
    v3 = (*(v2 + 32))(v1, v2);
    *(v0 + 536) = v3;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 224));
    if (v3)
    {
      v4 = *(v0 + 472);
      v18 = *(v0 + 456);
      [v3 setLinkType_];
      v5 = swift_allocObject();
      *(v0 + 544) = v5;
      *(v5 + 16) = v18;
      *(v5 + 32) = v3;
      *(v5 + 40) = v4;
      v6 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController + 24);
      v7 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController + 32);
      __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController), v6);
      v8 = *(v7 + 8);
      v9 = v3;

      v17 = (v8 + *v8);
      v10 = swift_task_alloc();
      *(v0 + 552) = v10;
      *v10 = v0;
      v10[1] = sub_26101E010;

      return v17(sub_26101F8FC, v5, v6, v7);
    }
  }

  else
  {
    sub_260FA9980(v0 + 224, &qword_27FE63858, &unk_2610BE900);
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);
  v13 = sub_2610BC794();
  v14 = sub_2610BCD64();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260F97000, v13, v14, "PASFlowStepSourceAuthentication authenticate has no target ak_device", v15, 2u);
    MEMORY[0x2666F8720](v15, -1, -1);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_26101E010(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 560) = a1;
  *(v3 + 568) = v1;

  if (v1)
  {
    v4 = sub_26101E5BC;
  }

  else
  {
    v4 = sub_26101E128;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26101E128()
{
  v18 = v0;
  if (*(v0 + 560))
  {
    v1 = (v0 + 176);
    v2 = *(v0 + 472);
    v3 = sub_260FDF8D0(*(v0 + 560));

    v17 = sub_260FA8A9C(MEMORY[0x277D84F90]);

    sub_260FE4DD0(v4, &v17, sub_260FE618C, 0, v3);
    swift_bridgeObjectRelease_n();
    v5 = sub_260FE03F8(v17);

    v6 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account;
    swift_beginAccess();
    sub_260FA9918(v2 + v6, v0 + 176, &unk_27FE656B0, &unk_2610BFCE0);
    *(v0 + 216) = v5;
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = (v0 + 128);
    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = sub_2610BC794();
    v9 = sub_2610BCD84();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "PASFlowStepSourceAuthentication authenticate returned nil", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    v2 = *(v0 + 472);

    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *v1 = 0u;
  }

  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult;
  swift_beginAccess();
  sub_26101F908(v1, v2 + v11);
  swift_endAccess();
  v12 = *(v0 + 472);
  v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account;
  swift_beginAccess();
  sub_260FA9918(v12 + v13, v0 + 264, &unk_27FE656B0, &unk_2610BFCE0);
  *(v0 + 576) = sub_2610BCC64();
  v15 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26101E3CC, v15, v14);
}

uint64_t sub_26101E3CC()
{

  sub_26101EF00(v0 + 264);
  sub_260FA9980(v0 + 264, &unk_27FE656B0, &unk_2610BFCE0);

  return MEMORY[0x2822009F8](sub_26101E458, 0, 0);
}

uint64_t sub_26101E458(uint64_t a1)
{
  *(v1 + 584) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26101E4E4, v3, v2);
}

uint64_t sub_26101E4E4()
{

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26101E554, 0, 0);
}

uint64_t sub_26101E554()
{
  v1 = *(v0 + 536);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26101E5BC()
{
  v1 = *(v0 + 568);
  *(v0 + 448) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 65) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v27 = sub_2610BC7B4();
    __swift_project_value_buffer(v27, qword_27FE65900);
    v28 = sub_2610BC794();
    v29 = sub_2610BCD84();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_260F97000, v28, v29, "PASFlowStepSourceAuthentication authenticate got targetCantSignInForSelf", v30, 2u);
      MEMORY[0x2666F8720](v30, -1, -1);
    }

    v31 = *(v0 + 472);

    v32 = v31 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 592) = Strong;
    if (Strong)
    {
      v34 = *(v32 + 8);
      ObjectType = swift_getObjectType();
      *(v0 + 88) = 0u;
      *(v0 + 104) = 0u;
      *(v0 + 120) = 0;
      *(v0 + 72) = 0u;
      v41 = (*(v34 + 16) + **(v34 + 16));
      v36 = swift_task_alloc();
      *(v0 + 600) = v36;
      *v36 = v0;
      v36[1] = sub_26101EB14;
      v23 = v0 + 72;
      v24 = ObjectType;
      v25 = v34;
      v26 = v41;
      goto LABEL_17;
    }
  }

  else
  {

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 568);
    v5 = sub_2610BC7B4();
    __swift_project_value_buffer(v5, qword_27FE65900);
    v6 = v4;
    v7 = sub_2610BC794();
    v8 = sub_2610BCD64();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 568);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = v9;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepSourceAuthentication authenticate error: %{public}@", v10, 0xCu);
      sub_260FA9980(v11, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v11, -1, -1);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    v14 = *(v0 + 472);

    v15 = v14 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 608) = v16;
    if (v16)
    {
      v17 = *(v0 + 568);
      v18 = *(v15 + 8);
      v19 = swift_getObjectType();
      *(v0 + 16) = v17;
      *(v0 + 64) = 1;
      v20 = *(v18 + 16);
      v21 = v17;
      v40 = (v20 + *v20);
      v22 = swift_task_alloc();
      *(v0 + 616) = v22;
      *v22 = v0;
      v22[1] = sub_26101ECB8;
      v23 = v0 + 16;
      v24 = v19;
      v25 = v18;
      v26 = v40;
LABEL_17:

      return v26(v23, v24, v25);
    }

    v38 = *(v0 + 568);
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_26101EB14()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 72, &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_26101EC44, 0, 0);
}

uint64_t sub_26101EC44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26101ECB8()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 16, &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_26101EDE8, 0, 0);
}

uint64_t sub_26101EDE8()
{
  v1 = *(v0 + 568);

  v2 = *(v0 + 8);

  return v2();
}

void *sub_26101EE60(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = a1();
  [v4 setProxiedDevice_];
  [v4 setIsUsernameEditable_];
  [v4 setServiceType_];
  [v4 setAnisetteDataProvider_];
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_26101EF00(uint64_t a1)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  sub_260FA9918(a1, v33, &unk_27FE656B0, &unk_2610BFCE0);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v6 = a1;
    v7 = v29;
    *v5 = 136315138;
    sub_260FA9918(v33, v30, &unk_27FE656B0, &unk_2610BFCE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656B0, &unk_2610BFCE0);
    v8 = sub_2610BCA34();
    v10 = v9;
    sub_260FA9980(v33, &unk_27FE656B0, &unk_2610BFCE0);
    v11 = sub_260FA5970(v8, v10, &v29);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepSourceAuthentication updateTargetAccount to %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    v12 = v7;
    a1 = v6;
    MEMORY[0x2666F8720](v12, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    sub_260FA9980(v33, &unk_27FE656B0, &unk_2610BFCE0);
  }

  sub_26101D8B4(v33);
  v13 = v34;
  v14 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  LOBYTE(v30[0]) = 4;
  if ((*(v14 + 8))(v30, v13, v14))
  {
    sub_26101D894();
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v30, ObjectType, v16);
    swift_unknownObjectRelease();
    v18 = v31;
    if (v31)
    {
      v19 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v19 + 8))(&v29, v18, v19);
      LODWORD(v18) = v29;
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
    }

    else
    {
      sub_260FA9980(v30, &qword_27FE63CF0, &qword_2610C2510);
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  sub_26101D758(v33);
  v20 = v34;
  v21 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  (*(v21 + 8))(v30, v20, v21);
  v22 = v31;
  sub_260FA9980(v30, &unk_27FE656B0, &unk_2610BFCE0);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v33);
  if (!v22 || v18)
  {
    v24 = sub_2610BC794();
    v25 = sub_2610BCD54();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_260F97000, v24, v25, "PASFlowStepSourceAuthentication updateTargetAccount shouldUpdateTargetAccount", v26, 2u);
      MEMORY[0x2666F8720](v26, -1, -1);
    }

    sub_26101D758(v33);
    v27 = v34;
    v28 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    type metadata accessor for PASAccountContext();
    static PASAccountContext.defaultContextFor(account:targetHasProtoAccount:)(a1, v18, v30);
    (*(v28 + 40))(a1, v30, v27, v28);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    return __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  return result;
}

uint64_t sub_26101F344()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult;
  swift_beginAccess();
  sub_26101FB9C(v0 + v1, v26);
  v2 = v27;
  if (v27)
  {
    if (v27 == 1)
    {
      v3 = 0x80000002610D4520;
      sub_260FC3450();
      swift_allocError();
      *v4 = 0xD00000000000003BLL;
      *(v4 + 8) = 0x80000002610D4520;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = 1;
      swift_willThrow();
      sub_26101FBD4(v26);
    }

    else
    {
      v12 = v0;
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v13 = sub_2610BC7B4();
      __swift_project_value_buffer(v13, qword_27FE65900);
      v14 = sub_2610BC794();
      v15 = sub_2610BCD84();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_260F97000, v14, v15, "PASFlowStepSourceAuthentication setting target account", v16, 2u);
        MEMORY[0x2666F8720](v16, -1, -1);
      }

      v17 = v12 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v19 = *(v17 + 8);
      v25[3] = &type metadata for PASAuthResults;
      v25[4] = sub_26101FC04();
      v25[0] = v2;
      type metadata accessor for PASFlowStepSendAuthResults(0);
      v20 = swift_allocObject();
      v21 = OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults__sourceAppleIDExchanger;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65448, &unk_2610C65A0);
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v20 + v21) = v22;
      v23 = v20 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result;
      *v23 = 0;
      *(v23 + 8) = -1;
      sub_260FA99E0(v25, v20 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account);
      *(v20 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_proxiedAuthResults) = v2;

      v3 = sub_26104DC44(Strong, v19);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      sub_26101FC9C(&qword_27FE65710, type metadata accessor for PASFlowStepSendAuthResults);
      sub_260FA9980(v26, &unk_27FE656B0, &unk_2610BFCE0);
    }
  }

  else
  {
    v5 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    v7 = *(v5 + 8);
    type metadata accessor for PASFlowStepSignInResult(0);
    v8 = swift_allocObject();
    v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656F0, &qword_2610BFCF0);
    v10 = swift_allocObject();
    *(v8 + v9) = v10;
    *(v10 + 16) = 0;
    v11 = (v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
    *v11 = 0;
    v11[1] = 0;
    v3 = sub_26104DC44(v6, v7);
    swift_unknownObjectRelease();
    sub_26101FC9C(&qword_27FE64040, type metadata accessor for PASFlowStepSignInResult);
  }

  return v3;
}

uint64_t sub_26101F708()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController));
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account, &unk_27FE656B0, &unk_2610BFCE0);
  v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult;

  return sub_26101FBD4(v1);
}

uint64_t PASFlowStepSourceAuthentication.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController));
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account, &unk_27FE656B0, &unk_2610BFCE0);
  sub_26101FBD4(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult);
  return v0;
}

uint64_t PASFlowStepSourceAuthentication.__deallocating_deinit()
{
  v0 = PASFlowStepSourceAuthentication.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26101F940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30[3] = a6;
  v30[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(a5 + v14) = v15;
  v16 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__anisetteDataProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65440, &unk_2610C5640);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(a5 + v16) = v17;
  v18 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v19 = swift_allocObject();
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0;
  *(a5 + v18) = v19;
  v20 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v21 = swift_allocObject();
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0;
  *(a5 + v20) = v21;
  v22 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__targetAccountOptionsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648E0, &qword_2610BEEC0);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(a5 + v22) = v23;
  v24 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__featureFlags;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v25 = swift_allocObject();
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0;
  *(a5 + v24) = v25;
  v26 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account;
  *(v26 + 32) = 0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v27 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0;
  *(v27 + 40) = 1;
  sub_260FA99E0(v30, a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController);
  swift_beginAccess();
  sub_261020090(a4, v26);
  swift_endAccess();
  v28 = sub_26104DC44(a1, a2);
  sub_260FA9980(a4, &unk_27FE656B0, &unk_2610BFCE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  return v28;
}

unint64_t sub_26101FC04()
{
  result = qword_27FE65700;
  if (!qword_27FE65700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65700);
  }

  return result;
}

uint64_t sub_26101FC58(uint64_t a1)
{
  result = sub_26101FC9C(&unk_27FE65B70, type metadata accessor for PASFlowStepSourceAuthentication);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26101FC9C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepSourceAuthentication(uint64_t a1)
{
  result = qword_27FE65748;
  if (!qword_27FE65748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PASFlowStepSourceAuthentication.authenticate(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 720) + **(*v2 + 720));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260FB6DB4;

  return v8(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup18PASAccountProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup31PASFlowStepSourceAuthenticationC20AuthControllerResultO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26101FF98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26101FFEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

double sub_261020050(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 40) = (a2 - 1);
  }

  return result;
}

uint64_t sub_261020090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656B0, &unk_2610BFCE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_261020110(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v4 = "E";
  }

  else
  {
    v4 = "missingDependentAppleID";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (*a2)
  {
    v7 = "missingDependentAppleID";
  }

  else
  {
    v7 = "E";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2610BD384();
  }

  return v9 & 1;
}

uint64_t sub_2610201BC()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26102023C(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_2610202A8(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_261020324@<X0>(char *a2@<X8>)
{
  v3 = sub_2610BD154();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_261020384(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (*v1)
  {
    v3 = "missingDependentAppleID";
  }

  else
  {
    v3 = "E";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_2610203C4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B4404(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_26102048C(uint64_t a1)
{
  v2 = sub_261029334();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610204C8(uint64_t a1)
{
  v2 = sub_261029334();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t (*sub_261020504(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FB2E8C;
}

uint64_t sub_261020598()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260F9F58C();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_261020668@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63CB0, &unk_2610BFDB0);
  swift_endAccess();
}

uint64_t sub_26102079C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE658C0, qword_2610C8270);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE658C0, qword_2610C8270);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA135C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE658C0, qword_2610C8270);
  swift_endAccess();
}

uint64_t sub_2610208D0()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA1868();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_2610209A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9EB74(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63AD0, qword_2610C7BC0);
  swift_endAccess();
}

uint64_t sub_261020AD4()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260F9D764();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_261020BA4()
{
  sub_261020AD4();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(v7, ObjectType, v1);
  swift_unknownObjectRelease();
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    strcpy(v6, "endFlowMessage");
    v6[15] = -18;
    LOBYTE(v3) = (*(v4 + 24))(v6, v3, v4);

    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    sub_260FA9980(v7, &qword_27FE63850, qword_2610CC240);
  }

  return v3 & 1;
}

uint64_t sub_261020C98()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    sub_2610209A0(v5);
    v2 = v6;
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v1 = (*(v3 + 8))(&type metadata for PASSourceFlowController.AnalyticsEvent, &off_287387C58, v2, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t PASSourceFlowController.__allocating_init()()
{
  v0 = swift_allocObject();
  PASSourceFlowController.init()();
  return v0;
}

uint64_t PASSourceFlowController.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_2610BD0E4())
  {
    v2 = sub_26100978C(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65448, &unk_2610C65A0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v0 + 64) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v0 + 72) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE657B0, &qword_2610C7CB0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v0 + 88) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657D0, &qword_2610C76F0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v0 + 96) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v0 + 104) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v0 + 112) = v9;
  *(v0 + 120) = 0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v10 = sub_2610BC7B4();
  __swift_project_value_buffer(v10, qword_27FE65900);
  v11 = sub_2610BC794();
  v12 = sub_2610BCD54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_260F97000, v11, v12, "PASSourceFlowController init", v13, 2u);
    MEMORY[0x2666F8720](v13, -1, -1);
  }

  return v1;
}

uint64_t sub_261020FF4()
{
  v1[16] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657E0, &qword_2610C7708);
  v1[18] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657F0, &qword_2610C7718);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65768, &qword_2610C7720);
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = sub_2610BCC74();
  v1[29] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v1[30] = v6;
  v1[31] = v5;

  return MEMORY[0x2822009F8](sub_261021238, v6, v5);
}

uint64_t sub_261021238()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowController prepareFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_261020598();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 16);

  v8(v9, &protocol witness table for PASSourceFlowController, ObjectType, v6);
  swift_unknownObjectRelease();
  v10 = sub_261020598();
  v12 = v11;
  *(v0 + 256) = v10;
  v13 = swift_getObjectType();
  v16 = (*(v12 + 32) + **(v12 + 32));
  v14 = swift_task_alloc();
  *(v0 + 264) = v14;
  *v14 = v0;
  v14[1] = sub_261021478;

  return v16(v13, v12);
}

uint64_t sub_261021478()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_2610215BC, v3, v2);
}

uint64_t sub_2610215BC()
{
  sub_26102079C((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_2610216EC;

  return v5(v1, v2);
}

uint64_t sub_2610216EC()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_26102180C, v3, v2);
}

uint64_t sub_26102180C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = sub_2610208D0();
  v3 = v2;
  v0[35] = v1;
  ObjectType = swift_getObjectType();
  v7 = (*(v3 + 8) + **(v3 + 8));
  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_261021940;

  return v7(ObjectType, v3);
}

uint64_t sub_261021940()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_261021A84, v3, v2);
}

uint64_t sub_261021A84()
{
  v1 = v0[27];
  v2 = v0[24];
  v20 = v0[25];
  v21 = v0[26];
  v18 = v0[22];
  v19 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v17 = v0[18];
  v6 = v0[16];
  v22 = v0[17];

  sub_261020668((v0 + 7));
  v8 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v8);
  (*(v7 + 8))(v8, v7);
  sub_260FDD378(&unk_27FE65810, &qword_27FE64790, &qword_2610C7710, MEMORY[0x277CBCEC8]);
  sub_2610BC894();
  (*(v3 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_261028704();
  v9 = sub_2610BCDD4();
  v0[15] = v9;
  v10 = sub_2610BCDB4();
  (*(*(v10 - 8) + 56))(v17, 1, 1, v10);
  sub_260FDD378(&unk_27FE65820, &unk_27FE657F0, &qword_2610C7718, MEMORY[0x277CBCC18]);
  sub_2610294DC(&qword_27FE65770, sub_261028704, MEMORY[0x277D85228]);
  sub_2610BC884();
  sub_260FA9980(v17, &unk_27FE657E0, &qword_2610C7708);

  (*(v19 + 8))(v2, v18);
  swift_allocObject();
  swift_weakInit();
  sub_260FDD378(&unk_27FE65830, &qword_27FE65768, &qword_2610C7720, MEMORY[0x277CBCD60]);
  sub_2610BC8A4();

  (*(v21 + 8))(v1, v20);
  swift_beginAccess();
  sub_2610BC7D4();
  swift_endAccess();

  v11 = sub_2610BCC94();
  (*(*(v11 - 8) + 56))(v22, 1, 1, v11);

  v12 = sub_2610BCC64();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v6;
  sub_261042434(0, 0, v22, &unk_2610C7730, v13);

  v15 = v0[1];

  return v15();
}

uint64_t sub_261021EA8(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((v2 & 1) == 0 && (*(result + 32) & 1) == 0)
    {
      v4 = result;
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v5 = sub_2610BC7B4();
      __swift_project_value_buffer(v5, qword_27FE65900);
      v6 = sub_2610BC794();
      v7 = sub_2610BCD64();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_260F97000, v6, v7, "PASSourceFlowController message session is dead!", v8, 2u);
        MEMORY[0x2666F8720](v8, -1, -1);
      }

      v9 = sub_2610BC794();
      v10 = sub_2610BCD64();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v21[0] = v12;
        *v11 = 136446210;
        sub_2610BCF84();

        v21[1] = 0xD00000000000002ELL;
        v21[2] = 0x80000002610D46E0;
        MEMORY[0x2666F7380](0xD00000000000001CLL, 0x80000002610D46C0);
        v13 = sub_260FA5970(0xD00000000000002ELL, 0x80000002610D46E0, v21);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_260F97000, v9, v10, "PASSourceFlowController stepDidFinish with error\n%{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x2666F8720](v12, -1, -1);
        MEMORY[0x2666F8720](v11, -1, -1);
      }

      sub_260FC3450();
      v14 = swift_allocError();
      *v15 = 0xD00000000000001CLL;
      *(v15 + 8) = 0x80000002610D46C0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 2;
      type metadata accessor for PASFlowStepSourceError(0);
      *(swift_allocObject() + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error) = v14;

      v17 = sub_26104DC44(v16, &protocol witness table for PASSourceFlowController);

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v4 + 24);
        ObjectType = swift_getObjectType();
        v20 = sub_2610294DC(&qword_27FE657A8, type metadata accessor for PASFlowStepSourceError, &protocol conformance descriptor for PASSourceFlowStepBase);
        (*(*(v18 + 8) + 8))(v17, v20, ObjectType);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_261022228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2610BCC74();
  v4[3] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2610222C0, v6, v5);
}

uint64_t sub_2610222C0()
{
  v1 = sub_2610208D0();
  v3 = v2;
  *(v0 + 48) = v1;
  ObjectType = swift_getObjectType();
  v7 = (*(v3 + 16) + **(v3 + 16));
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2610223EC;

  return v7(ObjectType, v3);
}

uint64_t sub_2610223EC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_261022594;
  }

  else
  {
    v5 = sub_261022528;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261022528()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261022594()
{

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASSourceFlowController prepare flow failed to sendPASDeviceInfo %{public}@", v8, 0xCu);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26102274C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v3[22] = swift_task_alloc();
  v3[23] = sub_2610BCC74();
  v3[24] = sub_2610BCC64();
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 64) + **(a2 + 64));
  v6 = swift_task_alloc();
  v3[25] = v6;
  *v6 = v3;
  v6[1] = sub_2610228D4;

  return v8(ObjectType, a2);
}

uint64_t sub_2610228D4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    *(v2 + 216) = v3;
    *(v2 + 224) = v4;
    v5 = sub_261022AA8;
  }

  else
  {
    v5 = sub_261022A38;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261022A38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261022AA8()
{
  v45 = v0;
  v1 = *(v0 + 208);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 80);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  if (*(v0 + 104))
  {
    sub_26102880C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
LABEL_4:

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 208);
    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = v6;
    swift_unknownObjectRetain();
    v9 = sub_2610BC794();
    v10 = sub_2610BCD64();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 208);
      v42 = *(v0 + 152);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v44[0] = v14;
      *v12 = 136446466;
      *(v0 + 112) = v42;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
      v15 = sub_2610BCA34();
      v17 = sub_260FA5970(v15, v16, v44);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2114;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&dword_260F97000, v9, v10, "PASSourceFlowController failed to prepare step %{public}s for presentation %{public}@", v12, 0x16u);
      sub_260FA9980(v13, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x2666F8720](v14, -1, -1);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v20 = *(v0 + 208);
    *(v0 + 16) = v20;
    *(v0 + 64) = 1;
    v21 = v20;
    v22 = swift_task_alloc();
    *(v0 + 232) = v22;
    *v22 = v0;
    v22[1] = sub_261023098;

    return PASSourceFlowController.stepDidEndFlow(with:)(v0 + 16);
  }

  v43 = *(v0 + 72);
  v24 = *(v0 + 208);

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v25 = sub_2610BC7B4();
  __swift_project_value_buffer(v25, qword_27FE65900);
  swift_unknownObjectRetain();

  v26 = sub_2610BC794();
  v27 = sub_2610BCD84();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v26, v27))
  {
    v41 = *(v0 + 152);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44[0] = v29;
    *v28 = 136446466;
    *(v0 + 128) = v41;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v30 = sub_2610BCA34();
    v32 = sub_260FA5970(v30, v31, v44);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v33 = sub_260FA5970(v43, v3, v44);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_260F97000, v26, v27, "PASSourceFlowController skipping %{public}s.\n%{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v29, -1, -1);
    MEMORY[0x2666F8720](v28, -1, -1);
  }

  else
  {
  }

  v34 = *(v0 + 176);
  v35 = sub_2610BCC94();
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);

  v36 = sub_2610BCC64();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v5;
  v37[5] = v4;
  sub_261042434(0, 0, v34, &unk_2610C7760, v37);

  sub_261028960();
  swift_allocError();
  *v39 = 1;
  swift_willThrow();

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_261023098()
{
  v1 = *v0;

  sub_260FA9980(v1 + 16, &unk_27FE656D0, &unk_2610C0550);
  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_2610231D4, v3, v2);
}

uint64_t sub_2610231D4()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261023250(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_2610BCC74();
  v4[3] = sub_2610BCC64();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_261023360;

  return v8();
}

uint64_t sub_261023360()
{

  v1 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261029528, v1, v0);
}

uint64_t PASSourceFlowController.stepDidEndFlow(with:)(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  sub_2610BCC74();
  v2[39] = sub_2610BCC64();
  v4 = sub_2610BCBF4();
  v2[40] = v4;
  v2[41] = v3;

  return MEMORY[0x2822009F8](sub_261023534, v4, v3);
}

uint64_t sub_261023534()
{
  v31 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_2610BC7B4();
  v0[42] = __swift_project_value_buffer(v2, qword_27FE65900);
  sub_260FA9918(v1, (v0 + 2), &unk_27FE656D0, &unk_2610C0550);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136446210;
    sub_260FA9918((v0 + 2), (v0 + 16), &unk_27FE656D0, &unk_2610C0550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656D0, &unk_2610C0550);
    v7 = sub_2610BCA34();
    v9 = v8;
    sub_260FA9980((v0 + 2), &unk_27FE656D0, &unk_2610C0550);
    v10 = sub_260FA5970(v7, v9, &v30);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController stepDidEndFlow with result %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    sub_260FA9980((v0 + 2), &unk_27FE656D0, &unk_2610C0550);
  }

  if (*(v0[38] + 32) & 1) == 0 && (sub_261020BA4())
  {
    v11 = sub_261020598();
    v13 = v12;
    v0[43] = v11;
    swift_getObjectType();
    v29 = *(v13 + 72) + **(v13 + 72);
    v14 = swift_task_alloc();
    v0[44] = v14;
    *v14 = v0;
    v14[1] = sub_261023AAC;

    __asm { BRAA            X2, X16 }
  }

  sub_261020668((v0 + 23));
  v15 = v0[26];
  v16 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v15);
  (*(v16 + 40))(v15, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v18 = v0[38];
    v19 = *(v18 + 24);
    *(v18 + 32) = 1;
    swift_getObjectType();
    v20 = *(v19 + 16);
    swift_unknownObjectRetain();
    v28 = v20 + *v20;
    v21 = swift_task_alloc();
    v0[47] = v21;
    *v21 = v0;
    v21[1] = sub_261023F10;

    __asm { BRAA            X3, X16 }
  }

  v22 = sub_2610BC794();
  v23 = sub_2610BCD74();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_260F97000, v22, v23, "PASSourceFlowController presenter is nil in stepDidEndFlow", v24, 2u);
    MEMORY[0x2666F8720](v24, -1, -1);
  }

  v25 = v0[38];

  *(v25 + 32) = 1;
  v26 = v0[37];
  v0[48] = sub_261020C98();
  sub_260FA9918(v26, (v0 + 9), &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_2610240DC, 0, 0);
}

uint64_t sub_261023AAC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 65) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 328);
  v6 = *(v3 + 320);
  if (v1)
  {
    v7 = sub_26102436C;
  }

  else
  {
    v7 = sub_261023BF4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261023BF4()
{
  swift_unknownObjectRelease();
  v1 = sub_2610BC794();
  v2 = sub_2610BCD84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 65);
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_260F97000, v1, v2, "PASSourceFlowController stepDidEndFlow got response from flowEnded: %{BOOL,public}d", v4, 8u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_261020668(v0 + 184);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v5);
  (*(v6 + 40))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 368) = Strong;
  if (Strong)
  {
    v8 = *(v0 + 304);
    v9 = *(v8 + 24);
    *(v8 + 32) = 1;
    swift_getObjectType();
    v10 = *(v9 + 16);
    swift_unknownObjectRetain();
    v18 = v10 + *v10;
    v11 = swift_task_alloc();
    *(v0 + 376) = v11;
    *v11 = v0;
    v11[1] = sub_261023F10;

    __asm { BRAA            X3, X16 }
  }

  v12 = sub_2610BC794();
  v13 = sub_2610BCD74();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_260F97000, v12, v13, "PASSourceFlowController presenter is nil in stepDidEndFlow", v14, 2u);
    MEMORY[0x2666F8720](v14, -1, -1);
  }

  v15 = *(v0 + 304);

  *(v15 + 32) = 1;
  v16 = *(v0 + 296);
  *(v0 + 384) = sub_261020C98();
  sub_260FA9918(v16, v0 + 72, &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_2610240DC, 0, 0);
}

uint64_t sub_261023F10()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_261024054, v3, v2);
}

uint64_t sub_261024054()
{
  v1 = *(v0 + 296);
  *(v0 + 384) = sub_261020C98();
  sub_260FA9918(v1, v0 + 72, &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_2610240DC, 0, 0);
}

uint64_t sub_2610240DC()
{
  v0[31] = &type metadata for PASSourceFlowController.AnalyticsEvent;
  v0[32] = &off_287387C58;
  v1 = swift_allocObject();
  v0[28] = v1;
  sub_2610289B4((v0 + 9), v1 + 16);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_2610241B8;

  return sub_2610476AC((v0 + 28), 0, 0);
}

void sub_2610241B8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    sub_2610289EC((v2 + 9));
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 28);
    v3 = v2[40];
    v4 = v2[41];

    MEMORY[0x2822009F8](sub_261024300, v3, v4);
  }
}

uint64_t sub_261024300()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26102436C()
{
  v28 = v0;
  v1 = v0[45];
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446210;
    v0[36] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v27);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController stepDidEndFlow got error sending flowEnded:%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
    v12 = v0[45];
  }

  sub_261020668((v0 + 23));
  v13 = v0[26];
  v14 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v13);
  (*(v14 + 40))(v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v16 = v0[38];
    v17 = *(v16 + 24);
    *(v16 + 32) = 1;
    swift_getObjectType();
    v18 = *(v17 + 16);
    swift_unknownObjectRetain();
    v26 = v18 + *v18;
    v19 = swift_task_alloc();
    v0[47] = v19;
    *v19 = v0;
    v19[1] = sub_261023F10;

    __asm { BRAA            X3, X16 }
  }

  v20 = sub_2610BC794();
  v21 = sub_2610BCD74();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_260F97000, v20, v21, "PASSourceFlowController presenter is nil in stepDidEndFlow", v22, 2u);
    MEMORY[0x2666F8720](v22, -1, -1);
  }

  v23 = v0[38];

  *(v23 + 32) = 1;
  v24 = v0[37];
  v0[48] = sub_261020C98();
  sub_260FA9918(v24, (v0 + 9), &unk_27FE656D0, &unk_2610C0550);

  return MEMORY[0x2822009F8](sub_2610240DC, 0, 0);
}

uint64_t sub_261024734(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_261028440(a1, v2, ObjectType, a2);
}

uint64_t sub_261024784()
{
  type metadata accessor for PASFlowStepSourceStart(0);
  swift_allocObject();

  v1 = sub_26104DC44(v0, &protocol witness table for PASSourceFlowController);

  sub_2610294DC(&qword_27FE65778, type metadata accessor for PASFlowStepSourceStart, &protocol conformance descriptor for PASSourceFlowStepBase);
  return v1;
}

void *PASSourceFlowController.deinit()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController deinit", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  sub_260F99170(v1 + 16);

  swift_unknownObjectRelease();

  return v1;
}

uint64_t PASSourceFlowController.__deallocating_deinit()
{
  PASSourceFlowController.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t (*sub_261024984(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FBF87C;
}

uint64_t sub_261024A18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  return sub_261020FF4();
}

uint64_t sub_261024AA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return sub_26102274C(a1, a2);
}

void PASSourceFlowController.stepDidFinish(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v30[1] = v30 - v8;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v9 = sub_2610BC7B4();
  __swift_project_value_buffer(v9, qword_27FE65900);
  swift_unknownObjectRetain();
  v10 = sub_2610BC794();
  v11 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136446210;
    v32 = a1;
    v33 = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65780, &qword_2610C7DB0);
    v14 = sub_2610BCA34();
    v16 = sub_260FA5970(v14, v15, &v31);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_260F97000, v10, v11, "PASSourceFlowController stepDidFinish %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x2666F8720](v13, -1, -1);
    MEMORY[0x2666F8720](v12, -1, -1);
  }

  if ((*(v3 + 32) & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v18 = (*(a2 + 16))(ObjectType, a2);
    v20 = v19;
    swift_unknownObjectRetain();
    v21 = sub_2610BC794();
    v22 = sub_2610BCD84();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136446210;
      v32 = v18;
      v33 = v20;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
      v25 = sub_2610BCA34();
      v27 = sub_260FA5970(v25, v26, &v31);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_260F97000, v21, v22, "PASSourceFlowController presenting next step %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x2666F8720](v24, -1, -1);
      MEMORY[0x2666F8720](v23, -1, -1);
    }

    v28 = swift_getObjectType();
    v29 = swift_unknownObjectRetain();
    sub_261028440(v29, v3, v28, v20);
    swift_unknownObjectRelease_n();
  }
}

uint64_t sub_261025284(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_2610BCC74();
  v4[3] = sub_2610BCC64();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_261025394;

  return v8();
}

uint64_t sub_261025394()
{

  v1 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610254D0, v1, v0);
}

uint64_t sub_2610254D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASSourceFlowController.stepDidRequestReset(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v3[10] = swift_task_alloc();
  v3[11] = sub_2610BCC74();
  v3[12] = sub_2610BCC64();
  v5 = sub_2610BCBF4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_261025608, v5, v4);
}

uint64_t sub_261025608()
{
  v31 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  swift_unknownObjectRetain();
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v28 = *(v0 + 56);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136446210;
    *(v0 + 40) = v28;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v6 = sub_2610BCA34();
    v8 = sub_260FA5970(v6, v7, &v30);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowController stepDidRequestReset %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x2666F8720](v5, -1, -1);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v9 = *(v0 + 72);
  if ((*(v9 + 32) & 1) == 0)
  {
    v10 = *(v0 + 80);
    v11 = sub_2610BCC94();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);

    v12 = sub_2610BCC64();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v9;
    sub_261042434(0, 0, v10, &unk_2610C7790, v13);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 120) = Strong;
    if (!Strong)
    {
      v16 = sub_2610BC794();
      v17 = sub_2610BCD74();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_260F97000, v16, v17, "PASSourceFlowController presenter is nil in stepDidRequestReset", v18, 2u);
        MEMORY[0x2666F8720](v18, -1, -1);
      }
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 128) = v19;
    if (v19)
    {
      v20 = *(*(v0 + 72) + 24);
      ObjectType = swift_getObjectType();
      v22 = *(v20 + 8);
      v29 = (*(v22 + 16) + **(v22 + 16));
      v23 = swift_task_alloc();
      *(v0 + 136) = v23;
      *v23 = v0;
      v23[1] = sub_261025A54;
      v25 = *(v0 + 56);
      v24 = *(v0 + 64);

      return v29(v25, v24, ObjectType, v22);
    }

    swift_unknownObjectRelease();
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_261025A54()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_261025B98, v3, v2);
}

uint64_t sub_261025B98()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261025C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_2610BCC74();
  v4[4] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_261025CA4, v6, v5);
}

uint64_t sub_261025CA4()
{
  v1 = sub_261020598();
  v3 = v2;
  *(v0 + 56) = v1;
  ObjectType = swift_getObjectType();
  v7 = (*(v3 + 56) + **(v3 + 56));
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_261025DD0;

  return v7(ObjectType, v3);
}

uint64_t sub_261025DD0(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 72) = v1;

  v5 = *(v3 + 48);
  v6 = *(v3 + 40);
  if (v1)
  {
    v7 = sub_261026050;
  }

  else
  {
    v7 = sub_261025F18;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261025F18()
{

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowController stepDidRequestReset got response from sendReset %{BOOL,public}d", v5, 8u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_261026050()
{
  v17 = v0;

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260F97000, v4, v5, "PASSourceFlowController stepDidRequestReset got error sending flowReset.%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t PASSourceFlowController.stepDidRequestCancel(_:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_2610BCC74();
  v3[16] = sub_2610BCC64();
  v5 = sub_2610BCBF4();
  v3[17] = v5;
  v3[18] = v4;

  return MEMORY[0x2822009F8](sub_2610262D0, v5, v4);
}

uint64_t sub_2610262D0()
{
  v33 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_27FE65900);
  swift_unknownObjectRetain();
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v29 = *(v0 + 104);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v32 = v5;
    *v4 = 136446210;
    *(v0 + 80) = v29;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v6 = sub_2610BCA34();
    v8 = sub_260FA5970(v6, v7, &v32);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowController stepDidRequestCancel %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x2666F8720](v5, -1, -1);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  if (*(*(v0 + 120) + 32))
  {
    sub_261020668(v0 + 16);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    (*(v10 + 40))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 184) = Strong;
    if (!Strong)
    {
      v12 = sub_2610BC794();
      v13 = sub_2610BCD74();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_260F97000, v12, v13, "PASSourceFlowController presenter is nil in stepDidRequestCancel", v14, 2u);
        MEMORY[0x2666F8720](v14, -1, -1);
      }
    }

    *(*(v0 + 120) + 32) = 1;
    v15 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 192) = v15;
    if (v15)
    {
      v16 = *(*(v0 + 120) + 24);
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 8);
      v30 = (*(v18 + 24) + **(v18 + 24));
      v19 = swift_task_alloc();
      *(v0 + 200) = v19;
      *v19 = v0;
      v19[1] = sub_261026C0C;
      v21 = *(v0 + 104);
      v20 = *(v0 + 112);

      return v30(v21, v20, ObjectType, v18);
    }

    else
    {
      swift_unknownObjectRelease();

      v28 = *(v0 + 8);

      return v28();
    }
  }

  else
  {
    v23 = sub_261020598();
    v25 = v24;
    *(v0 + 160) = v23;
    v26 = swift_getObjectType();
    v31 = (*(v25 + 64) + **(v25 + 64));
    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    *v27 = v0;
    v27[1] = sub_2610267C0;

    return v31(v26, v25);
  }
}

uint64_t sub_2610267C0(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_261026DBC;
  }

  else
  {
    v7 = sub_261026908;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261026908()
{
  swift_unknownObjectRelease();
  v1 = sub_2610BC794();
  v2 = sub_2610BCD84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 208);
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_260F97000, v1, v2, "PASSourceFlowController stepDidRequestCancel got response from sendCancelFlow %{BOOL,public}d", v4, 8u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_261020668(v0 + 16);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  (*(v6 + 40))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (!Strong)
  {
    v8 = sub_2610BC794();
    v9 = sub_2610BCD74();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "PASSourceFlowController presenter is nil in stepDidRequestCancel", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }
  }

  *(*(v0 + 120) + 32) = 1;
  v11 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 192) = v11;
  if (v11)
  {
    v12 = *(*(v0 + 120) + 24);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 8);
    v20 = (*(v14 + 24) + **(v14 + 24));
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    *v15 = v0;
    v15[1] = sub_261026C0C;
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);

    return v20(v17, v16, ObjectType, v14);
  }

  else
  {
    swift_unknownObjectRelease();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_261026C0C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_261026D50, v3, v2);
}

uint64_t sub_261026D50()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261026DBC()
{
  v30 = v0;
  v1 = v0[22];
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136446210;
    v0[12] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v29);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceFlowController stepDidRequestCancel got error sending flowCancel.\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
    v12 = v0[22];
  }

  sub_261020668((v0 + 2));
  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  (*(v14 + 40))(v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
    v16 = sub_2610BC794();
    v17 = sub_2610BCD74();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_260F97000, v16, v17, "PASSourceFlowController presenter is nil in stepDidRequestCancel", v18, 2u);
      MEMORY[0x2666F8720](v18, -1, -1);
    }
  }

  *(v0[15] + 32) = 1;
  v19 = swift_unknownObjectWeakLoadStrong();
  v0[24] = v19;
  if (v19)
  {
    v20 = *(v0[15] + 24);
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 8);
    v28 = (*(v22 + 24) + **(v22 + 24));
    v23 = swift_task_alloc();
    v0[25] = v23;
    *v23 = v0;
    v23[1] = sub_261026C0C;
    v25 = v0[13];
    v24 = v0[14];

    return v28(v25, v24, ObjectType, v22);
  }

  else
  {
    swift_unknownObjectRelease();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_261027170(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6DB4;

  return PASSourceFlowController.stepDidEndFlow(with:)(a1);
}

uint64_t sub_261027208(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return PASSourceFlowController.stepDidRequestReset(_:)(a1, a2);
}

uint64_t sub_2610272AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return PASSourceFlowController.stepDidRequestCancel(_:)(a1, a2);
}

uint64_t PASSourceFlowController.handleReset()()
{
  v1[5] = v0;
  sub_2610BCC74();
  v1[6] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2610273E8, v3, v2);
}

uint64_t sub_2610273E8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowController handleReset", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[5];

  if (*(v5 + 32))
  {

LABEL_14:
    v16 = v0[1];

    return v16(0);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_260F97000, v13, v14, "PASSourceFlowController presenter is nil in handleReset", v15, 2u);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    goto LABEL_14;
  }

  v7 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 8);
  v10 = *(v9 + 32);
  swift_unknownObjectRetain();
  v17 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_2610276C8;

  return v17(ObjectType, v9);
}

uint64_t sub_2610276C8()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26102780C, v3, v2);
}

uint64_t sub_26102780C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t PASSourceFlowController.handleCancel()()
{
  *(v1 + 40) = v0;
  sub_2610BCC74();
  *(v1 + 48) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261027914, v3, v2);
}

uint64_t sub_261027914()
{

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowController handleCancel", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 40);

  if ((*(v5 + 32) & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(*(v0 + 40) + 24);
      *(v5 + 32) = 1;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 8);
      v9 = *(v8 + 40);
      swift_unknownObjectRetain();
      v9(ObjectType, v8);
      swift_unknownObjectRelease_n();
      v10 = 1;
      goto LABEL_12;
    }

    v11 = sub_2610BC794();
    v12 = sub_2610BCD74();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_260F97000, v11, v12, "PASSourceFlowController presenter is nil in handleCancel", v13, 2u);
      MEMORY[0x2666F8720](v13, -1, -1);
    }
  }

  v10 = 0;
LABEL_12:
  v14 = *(v0 + 8);

  return v14(v10);
}

uint64_t PASSourceFlowController.handleEndFlow()()
{
  *(v1 + 16) = v0;
  sub_2610BCC74();
  *(v1 + 24) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261027BC8, v3, v2);
}

uint64_t sub_261027BC8()
{

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceFlowController handleEndFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  *(v5 + 32) = 1;
  v6 = *(v0 + 8);

  return v6(1);
}

uint64_t sub_261027CF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF874;

  return PASSourceFlowController.handleReset()();
}

uint64_t sub_261027D80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF874;

  return PASSourceFlowController.handleCancel()();
}

uint64_t sub_261027E0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBCD00;

  return PASSourceFlowController.handleEndFlow()();
}

unint64_t sub_261027E98()
{
  sub_2610289B4(v0, v15);
  v13[0] = v15[0];
  v13[1] = v15[1];
  v13[2] = v15[2];
  v14 = v16;
  sub_260FA9918(v13, v11, &unk_27FE656D0, &unk_2610C0550);
  if (v12 == 1)
  {
    v1 = *&v11[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 32) = 0x726F727245;
    *(inited + 40) = 0xE500000000000000;
    swift_getErrorValue();
    v3 = sub_2610BD4A4();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v3;
    *(inited + 56) = v4;
    v5 = sub_260FA8F34(inited);
    swift_setDeallocating();
    sub_260FA9980(inited + 32, &qword_27FE63BA0, &qword_2610BED60);
  }

  else
  {
    v10[0] = v11[0];
    v10[1] = v11[1];
    v10[2] = v11[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_2610BF400;
    *(v6 + 32) = 0x746C75736552;
    *(v6 + 40) = 0xE600000000000000;
    v7 = PASSourceFlowResultSuccess.description.getter();
    *(v6 + 72) = MEMORY[0x277D837D0];
    *(v6 + 80) = &protocol witness table for String;
    *(v6 + 48) = v7;
    *(v6 + 56) = v8;
    v5 = sub_260FA8F34(v6);
    swift_setDeallocating();
    sub_260FA9980(v6 + 32, &qword_27FE63BA0, &qword_2610BED60);
    sub_261029488(v10);
  }

  sub_260FA9980(v13, &unk_27FE656D0, &unk_2610C0550);
  return v5;
}

unint64_t sub_26102809C()
{
  sub_2610289B4(v0, v2);
  sub_260FA9980(v2, &unk_27FE656D0, &unk_2610C0550);
  return 0xD000000000000026;
}

uint64_t sub_261028100(uint64_t a1, void *a2)
{
  v4 = sub_2610294DC(&qword_27FE657A8, type metadata accessor for PASFlowStepSourceError, &protocol conformance descriptor for PASSourceFlowStepBase);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v5 = sub_2610BC7B4();
  __swift_project_value_buffer(v5, qword_27FE65900);

  v6 = sub_2610BC794();
  v7 = sub_2610BCD84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136446210;
    v24[3] = a1;
    v24[4] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_260F97000, v6, v7, "PASSourceFlowController presentStep: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = a2[3];
  if (!Strong)
  {
    v15 = sub_2610BC794();
    v16 = sub_2610BCD74();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_260F97000, v15, v16, "PASSourceFlowController presenter is nil in stepDidFinish", v17, 2u);
      MEMORY[0x2666F8720](v17, -1, -1);
    }
  }

  result = swift_conformsToProtocol2();
  if (result)
  {
    v19 = result;
    v20 = a1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    *(v20 + 8) = v19;
    swift_unknownObjectWeakAssign();
    a2[6] = a1;
    a2[7] = v4;

    result = swift_unknownObjectRelease();
    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v22 = *(v14 + 8);
      v23 = *(v22 + 8);
      swift_unknownObjectRetain();
      v23(a1, v4, ObjectType, v22);
      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261028440(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v8 = sub_2610BC7B4();
  __swift_project_value_buffer(v8, qword_27FE65900);
  swift_unknownObjectRetain();
  v9 = sub_2610BC794();
  v10 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = a3;
    v29[0] = swift_slowAlloc();
    v12 = v29[0];
    *v11 = 136446210;
    v29[1] = a1;
    v29[2] = a4;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v13 = sub_2610BCA34();
    v15 = sub_260FA5970(v13, v14, v29);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_260F97000, v9, v10, "PASSourceFlowController presentStep: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    v16 = v12;
    a3 = v28;
    MEMORY[0x2666F8720](v16, -1, -1);
    MEMORY[0x2666F8720](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = a2[3];
  if (!Strong)
  {
    v19 = sub_2610BC794();
    v20 = sub_2610BCD74();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_260F97000, v19, v20, "PASSourceFlowController presenter is nil in stepDidFinish", v21, 2u);
      MEMORY[0x2666F8720](v21, -1, -1);
    }
  }

  v22 = *(a4 + 24);
  v23 = swift_unknownObjectRetain();
  v22(v23, &protocol witness table for PASSourceFlowController, a3, a4);
  a2[6] = a1;
  a2[7] = a4;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v26 = *(v18 + 8);
    v27 = *(v26 + 8);
    swift_unknownObjectRetain();
    v27(a1, a4, ObjectType, v26);
    return swift_unknownObjectRelease_n();
  }

  return result;
}

unint64_t sub_261028704()
{
  result = qword_27FE66E50;
  if (!qword_27FE66E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE66E50);
  }

  return result;
}

uint64_t sub_261028758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_261022228(a1, v4, v5, v6);
}

void sub_26102880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
LABEL_10:

      return;
    }

    if (a5 != 3)
    {
      return;
    }
  }

  else if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    goto LABEL_10;
  }
}

uint64_t sub_2610288A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_261023250(a1, v4, v5, v6);
}

unint64_t sub_261028960()
{
  result = qword_27FE65B60;
  if (!qword_27FE65B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65B60);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261028A5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_261025284(a1, v4, v5, v6);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261028B5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_261025C0C(a1, v4, v5, v6);
}

uint64_t dispatch thunk of PASSourceFlowControllerProtocol.prepareFlow()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASSourceFlowControllerProtocol.prepareStepForPresentation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF860;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASSourceFlowController.prepareFlow()()
{
  v4 = (*(*v0 + 368) + **(*v0 + 368));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return v4();
}

uint64_t dispatch thunk of PASSourceFlowController.prepareStepForPresentation(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 376) + **(*v2 + 376));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260FB6DB4;

  return v8(a1, a2);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_261029240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261029288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_2610292FC(void *a1)
{
  a1[1] = sub_261029334();
  a1[2] = sub_261029388();
  result = sub_2610293DC();
  a1[3] = result;
  return result;
}

unint64_t sub_261029334()
{
  result = qword_27FE65788;
  if (!qword_27FE65788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65788);
  }

  return result;
}

unint64_t sub_261029388()
{
  result = qword_27FE65790;
  if (!qword_27FE65790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65790);
  }

  return result;
}

unint64_t sub_2610293DC()
{
  result = qword_27FE65798;
  if (!qword_27FE65798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65798);
  }

  return result;
}

unint64_t sub_261029434()
{
  result = qword_27FE657A0;
  if (!qword_27FE657A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE657A0);
  }

  return result;
}

uint64_t sub_2610294DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_261029554(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a1;
  return sub_2610376A8;
}

uint64_t sub_2610295B8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF6563697665444BLL;
  v3 = *a1;
  v4 = 0xEE00746E756F6363;
  if (v3 == 1)
  {
    v4 = 0xEF6563697665444BLL;
  }

  if (*a1)
  {
    v5 = 0x41676E697373696DLL;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x80000002610D1A50;
  }

  if (*a2 != 1)
  {
    v2 = 0xEE00746E756F6363;
  }

  if (*a2)
  {
    v7 = 0x41676E697373696DLL;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*a2)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x80000002610D1A50;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2610BD384();
  }

  return v9 & 1;
}

uint64_t sub_2610296AC()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_261029758(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_2610297F0(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

unint64_t sub_261029898@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261037370(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2610298C8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6563697665444BLL;
  if (v2 != 1)
  {
    v3 = 0xEE00746E756F6363;
  }

  v4 = v2 == 0;
  if (*v1)
  {
    v5 = 0x41676E697373696DLL;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v4)
  {
    v3 = 0x80000002610D1A50;
  }

  *a1 = v5;
  a1[1] = v3;
}

unint64_t sub_261029944()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B4498(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_261029A0C(uint64_t a1)
{
  v2 = sub_2610371C8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261029A48(uint64_t a1)
{
  v2 = sub_2610371C8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t (*sub_261029A84(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FB2E8C;
}

uint64_t sub_261029B4C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_261029BDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE658C0, qword_2610C8270);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE658C0, qword_2610C8270);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA135C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE658C0, qword_2610C8270);
  swift_endAccess();
}

uint64_t sub_261029D10()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260F9FA78();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_261029DE0()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260F9D764();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_261029EB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9EB74(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63AD0, qword_2610C7BC0);
  swift_endAccess();
}

uint64_t sub_261029FE4()
{
  sub_261029DE0();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(v7, ObjectType, v1);
  swift_unknownObjectRelease();
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    strcpy(v6, "endFlowMessage");
    v6[15] = -18;
    LOBYTE(v3) = (*(v4 + 24))(v6, v3, v4);

    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    sub_260FA9980(v7, &qword_27FE63850, qword_2610CC240);
  }

  return v3 & 1;
}

uint64_t sub_26102A0D8()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    sub_261029EB0(v5);
    v2 = v6;
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v1 = (*(v3 + 8))(&type metadata for PASTargetFlowController.AnalyticsEvent, &off_287387F68, v2, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_26102A190@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E668(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE63C00, &qword_2610BEDD0);
  swift_endAccess();
}

uint64_t PASTargetFlowController.__allocating_init()()
{
  v0 = swift_allocObject();
  PASTargetFlowController.init()();
  return v0;
}

uint64_t PASTargetFlowController.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  if (v2 >> 62 && sub_2610BD0E4())
  {
    v3 = sub_26100978C(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  *(v0 + 56) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE657B0, &qword_2610C7CB0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v0 + 64) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE657B8, &qword_2610C7CB8);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v0 + 72) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v0 + 80) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  *(v0 + 88) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657D0, &qword_2610C76F0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v0 + 96) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v0 + 104) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v0 + 112) = v10;
  *(v0 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  *(v0 + 128) = v11;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);
  v13 = sub_2610BC794();
  v14 = sub_2610BCD54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260F97000, v13, v14, "PASTargetFlowController init", v15, 2u);
    MEMORY[0x2666F8720](v15, -1, -1);
  }

  return v1;
}

uint64_t sub_26102A598()
{
  v1[34] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657E0, &qword_2610C7708);
  v1[35] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657F0, &qword_2610C7718);
  v1[39] = v3;
  v1[40] = *(v3 - 8);
  v1[41] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65768, &qword_2610C7720);
  v1[42] = v4;
  v1[43] = *(v4 - 8);
  v1[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v1[45] = swift_task_alloc();
  v1[46] = sub_2610BCC74();
  v1[47] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v1[48] = v6;
  v1[49] = v5;

  return MEMORY[0x2822009F8](sub_26102A7DC, v6, v5);
}

uint64_t sub_26102A7DC()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[50] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController prepareFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_261029D10();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 16);
  v9 = swift_unknownObjectRetain();
  v8(v9, &protocol witness table for PASTargetFlowController, ObjectType, v6);
  swift_unknownObjectRelease();
  sub_261029BDC((v0 + 9));
  v10 = v0[12];
  v11 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v10);
  v14 = (*(v11 + 8) + **(v11 + 8));
  v12 = swift_task_alloc();
  v0[51] = v12;
  *v12 = v0;
  v12[1] = sub_26102AA24;

  return v14(v10, v11);
}

uint64_t sub_26102AA24()
{
  v1 = *v0;

  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102AB44, v3, v2);
}

uint64_t sub_26102AB44()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  v1 = sub_261029D10();
  v3 = v2;
  v0[52] = v1;
  ObjectType = swift_getObjectType();
  v7 = (*(v3 + 32) + **(v3 + 32));
  v5 = swift_task_alloc();
  v0[53] = v5;
  *v5 = v0;
  v5[1] = sub_26102AC78;

  return v7(ObjectType, v3);
}

uint64_t sub_26102AC78()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102ADBC, v3, v2);
}

uint64_t sub_26102ADBC()
{
  v1 = sub_2610208D0();
  v3 = v2;
  *(v0 + 432) = v1;
  ObjectType = swift_getObjectType();
  v7 = (*(v3 + 8) + **(v3 + 8));
  v5 = swift_task_alloc();
  *(v0 + 440) = v5;
  *v5 = v0;
  v5[1] = sub_26102AEE8;

  return v7(ObjectType, v3);
}

uint64_t sub_26102AEE8()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102B02C, v3, v2);
}

uint64_t sub_26102B02C()
{
  sub_261020668((v0 + 19));
  v1 = v0[22];
  v2 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[56] = v3;
  *v3 = v0;
  v3[1] = sub_26102B164;

  return v5(v0 + 14, v1, v2);
}

uint64_t sub_26102B164()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_26102BD00;
  }

  else
  {
    v5 = sub_26102B2A0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26102B2A0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  v1 = v0[17];
  v2 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v1);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = MEMORY[0x277D839B0];
  sub_260FADDAC(7, 0, &unk_2610C7D50, v3, v1, MEMORY[0x277D839B0], v2);

  v5 = v0[17];
  v6 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v5);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(0, 0, &unk_2610C7D60, v7, v5, v4, v6);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  v8 = swift_allocObject();
  v0[58] = v8;
  swift_weakInit();

  v9 = swift_task_alloc();
  v0[59] = v9;
  *v9 = v0;
  v9[1] = sub_26102B4DC;

  return sub_2610309B8(0xD000000000000012, 0x80000002610D2480, &unk_2610C7D00, 0, &unk_2610C7CF8, v8);
}

uint64_t sub_26102B4DC()
{
  v1 = *v0;

  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102B624, v3, v2);
}

uint64_t sub_26102B624()
{
  v1 = swift_allocObject();
  v0[60] = v1;
  swift_weakInit();
  v2 = swift_allocObject();
  v0[61] = v2;
  swift_weakInit();

  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_26102B780;

  return sub_2610309B8(0xD000000000000012, 0x80000002610D2440, &unk_2610C7D18, v1, &unk_2610C7D28, v2);
}

uint64_t sub_26102B780()
{
  v1 = *v0;

  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102B8E4, v3, v2);
}

uint64_t sub_26102B8E4()
{
  v1 = v0[45];
  v21 = v0[42];
  v22 = v0[43];
  v2 = v0[41];
  v19 = v0[44];
  v20 = v0[40];
  v3 = v0[38];
  v18 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[34];
  v17 = v0[35];

  v7 = sub_2610BCC94();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);

  v8 = sub_2610BCC64();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  sub_261042434(0, 0, v1, &unk_2610C7D38, v9);

  sub_261020668((v0 + 24));
  v11 = v0[27];
  v12 = v0[28];
  __swift_project_boxed_opaque_existential_1(v0 + 24, v11);
  (*(v12 + 8))(v11, v12);
  sub_260FDD378(&unk_27FE65810, &qword_27FE64790, &qword_2610C7710, MEMORY[0x277CBCEC8]);
  sub_2610BC894();
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  sub_261028704();
  v13 = sub_2610BCDD4();
  v0[32] = v13;
  v14 = sub_2610BCDB4();
  (*(*(v14 - 8) + 56))(v17, 1, 1, v14);
  sub_260FDD378(&unk_27FE65820, &unk_27FE657F0, &qword_2610C7718, MEMORY[0x277CBCC18]);
  sub_261037860(&qword_27FE65770, sub_261028704, MEMORY[0x277D85228]);
  sub_2610BC884();
  sub_260FA9980(v17, &unk_27FE657E0, &qword_2610C7708);

  (*(v20 + 8))(v2, v18);
  swift_allocObject();
  swift_weakInit();
  sub_260FDD378(&unk_27FE65830, &qword_27FE65768, &qword_2610C7720, MEMORY[0x277CBCD60]);
  sub_2610BC8A4();

  (*(v22 + 8))(v19, v21);
  swift_beginAccess();
  sub_2610BC7D4();
  swift_endAccess();

  v15 = v0[1];

  return v15();
}

uint64_t sub_26102BD00()
{
  v17 = v0;
  v1 = *(v0 + 456);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 152));
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 456);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    *(v0 + 264) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController registerForRequests failed with error:\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v12 = *(v0 + 456);
  *(v0 + 16) = v12;
  *(v0 + 64) = 1;
  v13 = v12;
  v14 = swift_task_alloc();
  *(v0 + 504) = v14;
  *v14 = v0;
  v14[1] = sub_26102BED0;

  return PASTargetFlowController.stepDidEndFlow(with:)(v0 + 16);
}

uint64_t sub_26102BED0()
{
  v1 = *v0;

  sub_260FA9980(v1 + 16, &qword_27FE65690, qword_2610C7520);
  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_26102C00C, v3, v2);
}

uint64_t sub_26102C00C()
{
  v1 = swift_allocObject();
  *(v0 + 464) = v1;
  swift_weakInit();

  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_26102B4DC;

  return sub_2610309B8(0xD000000000000012, 0x80000002610D2480, &unk_2610C7D00, 0, &unk_2610C7CF8, v1);
}

uint64_t sub_26102C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a1;
  return MEMORY[0x2822009F8](sub_26102C164, 0, 0);
}

uint64_t sub_26102C164()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController got message accountSelected", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 160) = Strong;
  if (!Strong)
  {
    **(v0 + 128) = 0;
    v8 = *(v0 + 8);
LABEL_9:

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 168) = sub_260FB1E9C(*(v0 + 136), 1u);
  if (v6)
  {
    sub_260FBE4B4();
    swift_allocError();
    *v7 = xmmword_2610C7C90;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    swift_willThrow();

    v8 = *(v0 + 8);
    goto LABEL_9;
  }

  *(v0 + 176) = sub_2610BCC74();
  *(v0 + 184) = sub_2610BCC64();
  v10 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102C398, v10, v9);
}

uint64_t sub_26102C398()
{
  v1 = v0[20];

  swift_beginAccess();
  v0[24] = swift_unknownObjectWeakLoadStrong();
  v0[25] = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_26102C42C, 0, 0);
}

uint64_t sub_26102C42C()
{
  if (v0[24])
  {
    v6 = v0[25];
    swift_getObjectType();
    v5 = *(v6 + 24) + **(v6 + 24);
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_26102C5C4;

    __asm { BRAA            X3, X16 }
  }

  v0[27] = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102C768, v3, v2);
}

uint64_t sub_26102C5C4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26102C6DC, 0, 0);
}

uint64_t sub_26102C6DC(uint64_t a1)
{
  *(v1 + 216) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102C768, v3, v2);
}

uint64_t sub_26102C768()
{

  sub_26102A190(v0 + 16);

  return MEMORY[0x2822009F8](sub_26102C7DC, 0, 0);
}

uint64_t sub_26102C7DC()
{
  v12 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v11 = 0;
  v3 = (*(v2 + 8))(&v11, v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if ((v3 & 1) == 0)
  {
    v6 = sub_2610BC794();
    v7 = sub_2610BCD44();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_260F97000, v6, v7, "Received .accountSelected message but .signInForSelf feature is not enabled, indicating it should not", v8, 2u);
      MEMORY[0x2666F8720](v8, -1, -1);
    }

    **(v0 + 128) = 0;
    v9 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 224) = sub_2610BCC64();
  v5 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102C974, v5, v4);
}

uint64_t sub_26102C974()
{
  v1 = *(v0 + 160);

  swift_beginAccess();
  *(v0 + 232) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26102C9FC, 0, 0);
}

uint64_t sub_26102C9FC(uint64_t a1)
{
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 232);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_260F97000, v2, v3, "Received .accountSelected message and responding to source device with shouldSignInForSelf: %{BOOL,public}d", v5, 8u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v6 = *(v1 + 232);

  **(v1 + 128) = v6;
  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_26102CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return MEMORY[0x2822009F8](sub_26102CB18, 0, 0);
}

uint64_t sub_26102CB18()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController got message performPasscodeAndBiometricSetup", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (!Strong)
  {
    **(v0 + 64) = 0;
    v8 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_2610BCC74();
  *(v0 + 88) = sub_2610BCC64();
  v7 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102CCD0, v7, v6);
}

uint64_t sub_26102CCD0()
{
  v1 = v0[10];

  swift_beginAccess();
  v0[12] = swift_unknownObjectWeakLoadStrong();
  v0[13] = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_26102CD68, 0, 0);
}

uint64_t sub_26102CD68()
{
  if (*(v0 + 96))
  {
    v7 = *(v0 + 104);
    ObjectType = swift_getObjectType();
    v6 = (*(v7 + 32) + **(v7 + 32));
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_26102CED0;
    v3 = *(v0 + 104);

    return v6(ObjectType, v3);
  }

  else
  {
    **(v0 + 64) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_26102CED0(char a1)
{
  *(*v1 + 120) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26102CFF0, 0, 0);
}

uint64_t PASTargetFlowController.stepDidEndFlow(with:)(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  sub_2610BCC74();
  v2[39] = sub_2610BCC64();
  v4 = sub_2610BCBF4();
  v2[40] = v4;
  v2[41] = v3;

  return MEMORY[0x2822009F8](sub_26102D0AC, v4, v3);
}

uint64_t sub_26102D0AC()
{
  v31 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_2610BC7B4();
  v0[42] = __swift_project_value_buffer(v2, qword_27FE65900);
  sub_260FA9918(v1, (v0 + 2), &qword_27FE65690, qword_2610C7520);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136446210;
    sub_260FA9918((v0 + 2), (v0 + 16), &qword_27FE65690, qword_2610C7520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65690, qword_2610C7520);
    v7 = sub_2610BCA34();
    v9 = v8;
    sub_260FA9980((v0 + 2), &qword_27FE65690, qword_2610C7520);
    v10 = sub_260FA5970(v7, v9, &v30);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController stepDidEndFlow with result\n%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {

    sub_260FA9980((v0 + 2), &qword_27FE65690, qword_2610C7520);
  }

  if (*(v0[38] + 33) & 1) == 0 && (sub_261029FE4())
  {
    v11 = sub_261029D10();
    v13 = v12;
    v0[43] = v11;
    swift_getObjectType();
    v29 = *(v13 + 64) + **(v13 + 64);
    v14 = swift_task_alloc();
    v0[44] = v14;
    *v14 = v0;
    v14[1] = sub_26102D624;

    __asm { BRAA            X2, X16 }
  }

  sub_261020668((v0 + 23));
  v15 = v0[26];
  v16 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v15);
  (*(v16 + 40))(v15, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v18 = v0[38];
    v19 = *(v18 + 24);
    *(v18 + 33) = 1;
    swift_getObjectType();
    v20 = *(v19 + 40);
    swift_unknownObjectRetain();
    v28 = v20 + *v20;
    v21 = swift_task_alloc();
    v0[47] = v21;
    *v21 = v0;
    v21[1] = sub_26102DA88;

    __asm { BRAA            X3, X16 }
  }

  v22 = sub_2610BC794();
  v23 = sub_2610BCD74();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_260F97000, v22, v23, "PASTargetFlowController presenter is nil in stepDidEndFlow", v24, 2u);
    MEMORY[0x2666F8720](v24, -1, -1);
  }

  v25 = v0[38];

  *(v25 + 33) = 1;
  v26 = v0[37];
  v0[48] = sub_26102A0D8();
  sub_260FA9918(v26, (v0 + 9), &qword_27FE65690, qword_2610C7520);

  return MEMORY[0x2822009F8](sub_26102DC54, 0, 0);
}

uint64_t sub_26102D624(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 65) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 328);
  v6 = *(v3 + 320);
  if (v1)
  {
    v7 = sub_26102DE78;
  }

  else
  {
    v7 = sub_26102D76C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26102D76C()
{
  swift_unknownObjectRelease();
  v1 = sub_2610BC794();
  v2 = sub_2610BCD84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 65);
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_260F97000, v1, v2, "PASTargetFlowController stepDidEndFlow got response from flowEnded: %{BOOL,public}d", v4, 8u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_261020668(v0 + 184);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v5);
  (*(v6 + 40))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 368) = Strong;
  if (Strong)
  {
    v8 = *(v0 + 304);
    v9 = *(v8 + 24);
    *(v8 + 33) = 1;
    swift_getObjectType();
    v10 = *(v9 + 40);
    swift_unknownObjectRetain();
    v18 = v10 + *v10;
    v11 = swift_task_alloc();
    *(v0 + 376) = v11;
    *v11 = v0;
    v11[1] = sub_26102DA88;

    __asm { BRAA            X3, X16 }
  }

  v12 = sub_2610BC794();
  v13 = sub_2610BCD74();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_260F97000, v12, v13, "PASTargetFlowController presenter is nil in stepDidEndFlow", v14, 2u);
    MEMORY[0x2666F8720](v14, -1, -1);
  }

  v15 = *(v0 + 304);

  *(v15 + 33) = 1;
  v16 = *(v0 + 296);
  *(v0 + 384) = sub_26102A0D8();
  sub_260FA9918(v16, v0 + 72, &qword_27FE65690, qword_2610C7520);

  return MEMORY[0x2822009F8](sub_26102DC54, 0, 0);
}

uint64_t sub_26102DA88()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_26102DBCC, v3, v2);
}

uint64_t sub_26102DBCC()
{
  v1 = *(v0 + 296);
  *(v0 + 384) = sub_26102A0D8();
  sub_260FA9918(v1, v0 + 72, &qword_27FE65690, qword_2610C7520);

  return MEMORY[0x2822009F8](sub_26102DC54, 0, 0);
}

uint64_t sub_26102DC54()
{
  v0[31] = &type metadata for PASTargetFlowController.AnalyticsEvent;
  v0[32] = &off_287387F68;
  v1 = swift_allocObject();
  v0[28] = v1;
  sub_2610367C4((v0 + 9), v1 + 16);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_26102DD30;

  return sub_2610481BC((v0 + 28), 0, 0);
}

void sub_26102DD30()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    sub_2610367FC((v2 + 9));
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 28);
    v3 = v2[40];
    v4 = v2[41];

    MEMORY[0x2822009F8](sub_261024300, v3, v4);
  }
}

uint64_t sub_26102DE78()
{
  v28 = v0;
  v1 = v0[45];
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446210;
    v0[36] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v27);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController stepDidEndFlow got error sending flowEnded:%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
    v12 = v0[45];
  }

  sub_261020668((v0 + 23));
  v13 = v0[26];
  v14 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v13);
  (*(v14 + 40))(v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v16 = v0[38];
    v17 = *(v16 + 24);
    *(v16 + 33) = 1;
    swift_getObjectType();
    v18 = *(v17 + 40);
    swift_unknownObjectRetain();
    v26 = v18 + *v18;
    v19 = swift_task_alloc();
    v0[47] = v19;
    *v19 = v0;
    v19[1] = sub_26102DA88;

    __asm { BRAA            X3, X16 }
  }

  v20 = sub_2610BC794();
  v21 = sub_2610BCD74();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_260F97000, v20, v21, "PASTargetFlowController presenter is nil in stepDidEndFlow", v22, 2u);
    MEMORY[0x2666F8720](v22, -1, -1);
  }

  v23 = v0[38];

  *(v23 + 33) = 1;
  v24 = v0[37];
  v0[48] = sub_26102A0D8();
  sub_260FA9918(v24, (v0 + 9), &qword_27FE65690, qword_2610C7520);

  return MEMORY[0x2822009F8](sub_26102DC54, 0, 0);
}

uint64_t sub_26102E240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x2822009F8](sub_26102E260, 0, 0);
}

uint64_t sub_26102E260()
{
  v27 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController got message proxiedAuthResults", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 40);

  sub_260FB15A0(v5, 2u, v26);
  v6 = v26[0];
  if (v26[0])
  {
    v7 = sub_260FB20C0(*(v0 + 40), 3u);
    if (v7)
    {
      v12 = v7;
      sub_260FB137C(*(v0 + 40), 4u, 4u, v26);
      v13 = v26[0];
      v14 = v26[1];
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      v16 = Strong;
      if (Strong)
      {
        v17 = &protocol witness table for PASTargetFlowController;
      }

      else
      {
        v17 = 0;
      }

      type metadata accessor for PASFamilyMember();
      v18 = swift_allocObject();
      v18[2] = v12;
      v18[3] = v13;
      v18[4] = v14;
      type metadata accessor for PASFlowStepLocalAuth(0);
      v19 = swift_allocObject();
      v20 = OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth__authenticator;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
      v21 = swift_allocObject();
      *(v21 + 16) = 0u;
      *(v21 + 32) = 0u;
      *(v21 + 48) = 0;
      *(v19 + v20) = v21;
      v22 = v19 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result;
      *v22 = 0;
      *(v22 + 8) = -1;
      *(v19 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_familyMember) = v18;
      *(v19 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_proxiedAuthResults) = v6;
      v23 = sub_26104E0E4(v16, v17);

      v24 = sub_261037860(&unk_27FE658B0, type metadata accessor for PASFlowStepLocalAuth, &protocol conformance descriptor for PASTargetFlowStepBase);
      v25 = *(v0 + 8);

      return v25(v23, v24);
    }

    sub_260FBE4B4();
    swift_allocError();
    v9 = xmmword_2610C7CA0;
  }

  else
  {

    sub_260FBE4B4();
    swift_allocError();
    v9 = xmmword_2610C0790;
  }

  *v8 = v9;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26102E600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a4;
  return MEMORY[0x2822009F8](sub_26102E620, 0, 0);
}

uint64_t sub_26102E620()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (!Strong)
  {
    **(v0 + 80) = 0;
    v4 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 104) = sub_2610BCC74();
  *(v0 + 112) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102E71C, v3, v2);
}

uint64_t sub_26102E71C()
{

  sub_26102A190(v0 + 16);

  return MEMORY[0x2822009F8](sub_26102E790, 0, 0);
}

uint64_t sub_26102E790()
{
  v13 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v12 = 0;
  v3 = (*(v2 + 8))(&v12, v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if ((v3 & 1) == 0)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v6 = sub_2610BC7B4();
    __swift_project_value_buffer(v6, qword_27FE65900);
    v7 = sub_2610BC794();
    v8 = sub_2610BCD44();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_260F97000, v7, v8, "Received .selectedOwnAccount message but .signInForSelf feature is not enabled, indicating it should not", v9, 2u);
      MEMORY[0x2666F8720](v9, -1, -1);
    }

    **(v0 + 80) = 0;
    v10 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 120) = sub_2610BCC64();
  v5 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102E96C, v5, v4);
}

uint64_t sub_26102E96C()
{
  v1 = *(v0 + 96);

  swift_beginAccess();
  *(v0 + 128) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26102E9F4, 0, 0);
}

uint64_t sub_26102E9F4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 128);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_260F97000, v2, v3, "Received .selectedOwnAccount message and responding to source device with shouldSignInForSelf: %{BOOL,public}d", v5, 8u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v6 = *(v0 + 128);

  **(v0 + 80) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26102EB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = a2;
  *(v3 + 144) = a3;
  return MEMORY[0x2822009F8](sub_26102EB54, 0, 0);
}

uint64_t sub_26102EB54()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
    sub_260FC3450();
    swift_allocError();
    *v8 = 0xD00000000000001BLL;
    *(v8 + 8) = 0x80000002610D47D0;
    *(v8 + 16) = &unk_2610C8210;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    swift_willThrow();
    v9 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  v0[20] = __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController got message selectedOwnAccount", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v0[21] = sub_2610BCC74();
  v0[22] = sub_2610BCC64();
  v7 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102ED64, v7, v6);
}

uint64_t sub_26102ED64()
{

  sub_26102A190(v0 + 16);

  return MEMORY[0x2822009F8](sub_26102EDD8, 0, 0);
}

uint64_t sub_26102EDD8()
{
  v14 = v0;
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v13 = 0;
  v3 = (*(v2 + 8))(&v13, v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if ((v3 & 1) == 0)
  {
    v6 = sub_2610BC794();
    v7 = sub_2610BCD44();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_260F97000, v6, v7, "Ending flow for Buddy setup after user selected their own account on the source device", v8, 2u);
      MEMORY[0x2666F8720](v8, -1, -1);
    }

    v9 = v0[19];

    sub_260FC3450();
    swift_allocError();
    *v10 = 0xD000000000000010;
    *(v10 + 8) = 0x80000002610D2780;
    *(v10 + 16) = &unk_2610C8220;
    *(v10 + 24) = v9;
    *(v10 + 32) = 0;
    swift_willThrow();
    v11 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[23] = sub_2610BCC64();
  v5 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26102EFB8, v5, v4);
}

uint64_t sub_26102EFB8()
{
  v1 = *(v0 + 152);

  swift_beginAccess();
  *(v0 + 192) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26102F040, 0, 0);
}

uint64_t sub_26102F040(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = sub_2610BC794();
  if (v2 == 1)
  {
    v4 = sub_2610BCD84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController will sign in for self", v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }

    sub_26109339C(v6, (v1 + 16));
    v13 = *(v1 + 40);
    v14 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v13);
    v15 = (*(v14 + 32))(v13, v14);
    if (v15)
    {
      v16 = v15;
      v17 = *(v1 + 72);
      if (v17)
      {
        v18 = v17;
        v19 = sub_2610BC794();
        v20 = sub_2610BCD84();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_260F97000, v19, v20, "PASTargetFlowController setting client anisette provider", v21, 2u);
          MEMORY[0x2666F8720](v21, -1, -1);
        }

        v22 = *(v1 + 152);

        [v16 setLinkType_];
        type metadata accessor for PASAccountWithImage();
        v23 = swift_allocObject();
        *(v23 + 16) = v18;
        *(v23 + 24) = xmmword_2610BF320;
        type metadata accessor for PASFlowStepPersonalSignIn(0);
        v24 = swift_allocObject();
        v25 = sub_26103744C(v22, v23, v16, v24);

        sub_260FC3748(v1 + 16);
        v26 = sub_261037860(&unk_27FE64FC0, type metadata accessor for PASFlowStepPersonalSignIn, &protocol conformance descriptor for PASTargetFlowStepBase);
        v27 = *(v1 + 8);

        return v27(v25, v26);
      }

      v32 = sub_2610BC794();
      v33 = sub_2610BCD84();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_260F97000, v32, v33, "PASTargetFlowController selectedOwnAccount accountData missing account", v34, 2u);
        MEMORY[0x2666F8720](v34, -1, -1);
      }

      sub_2610368EC();
      swift_allocError();
      *v35 = 2;
      swift_willThrow();
    }

    else
    {
      v28 = sub_2610BC794();
      v29 = sub_2610BCD84();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_260F97000, v28, v29, "PASTargetFlowController selectedOwnAccount accountData missing companionDevice", v30, 2u);
        MEMORY[0x2666F8720](v30, -1, -1);
      }

      sub_2610368EC();
      swift_allocError();
      *v31 = 1;
      swift_willThrow();
    }

    sub_260FC3748(v1 + 16);
  }

  else
  {
    v7 = sub_2610BCD44();
    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_260F97000, v3, v7, "Ending flow for Buddy setup after user selected their own account on the source device", v8, 2u);
      MEMORY[0x2666F8720](v8, -1, -1);
    }

    v9 = *(v1 + 152);

    sub_260FC3450();
    swift_allocError();
    *v10 = 0xD000000000000010;
    *(v10 + 8) = 0x80000002610D2780;
    *(v10 + 16) = &unk_2610C8220;
    *(v10 + 24) = v9;
    *(v10 + 32) = 0;
    swift_willThrow();
  }

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_26102F558()
{
  *(v0 + 64) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_26102F600;

  return PASTargetFlowController.stepDidEndFlow(with:)(v0 + 16);
}

uint64_t sub_26102F600()
{
  v1 = *v0;
  v4 = *v0;

  sub_260FA9980(v1 + 16, &qword_27FE65690, qword_2610C7520);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26102F70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2610BCC74();
  v4[3] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26102F7A4, v6, v5);
}

uint64_t sub_26102F7A4()
{
  v1 = sub_2610208D0();
  v3 = v2;
  *(v0 + 48) = v1;
  ObjectType = swift_getObjectType();
  v7 = (*(v3 + 16) + **(v3 + 16));
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_26102F8D0;

  return v7(ObjectType, v3);
}

uint64_t sub_26102F8D0()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_26102FA0C;
  }

  else
  {
    v5 = sub_261022528;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26102FA0C()
{

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASDEpendentFlowController prepareFlow failed to sendPASDeviceInfo %{public}@", v8, 0xCu);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26102FBC4(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((v2 & 1) == 0 && (*(result + 33) & 1) == 0)
    {
      v4 = result;
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v5 = sub_2610BC7B4();
      __swift_project_value_buffer(v5, qword_27FE65900);
      v6 = sub_2610BC794();
      v7 = sub_2610BCD64();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_260F97000, v6, v7, "PASTargetFlowController message session is dead!", v8, 2u);
        MEMORY[0x2666F8720](v8, -1, -1);
      }

      v9 = sub_2610BC794();
      v10 = sub_2610BCD64();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24[0] = v12;
        *v11 = 136446210;
        sub_2610BCF84();

        v24[3] = 0xD00000000000002ELL;
        v24[4] = 0x80000002610D46E0;
        MEMORY[0x2666F7380](0xD00000000000001CLL, 0x80000002610D46C0);
        v13 = sub_260FA5970(0xD00000000000002ELL, 0x80000002610D46E0, v24);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_260F97000, v9, v10, "PASTargetFlowController stepDidFinish with error\n%{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x2666F8720](v12, -1, -1);
        MEMORY[0x2666F8720](v11, -1, -1);
      }

      sub_260FC3450();
      v14 = swift_allocError();
      *v15 = 0xD00000000000001CLL;
      *(v15 + 8) = 0x80000002610D46C0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 2;
      type metadata accessor for PASFlowStepTargetError(0);
      v16 = swift_allocObject();
      v17 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError__targetAppleIDExchanger;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65688, &unk_2610C7510);
      v18 = swift_allocObject();
      *(v16 + v17) = v18;
      *(v16 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepTargetError_error) = v14;
      *(v18 + 16) = 0;
      v19 = v16 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
      *(v16 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate + 8) = 0;
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      *(v19 + 8) = &protocol witness table for PASTargetFlowController;
      swift_unknownObjectWeakAssign();
      v20 = PASFlowStepBase.init()();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v4 + 24);
        ObjectType = swift_getObjectType();
        v23 = sub_261037860(&unk_27FE65870, type metadata accessor for PASFlowStepTargetError, &protocol conformance descriptor for PASTargetFlowStepBase);
        (*(*(v21 + 8) + 8))(v20, v23, ObjectType);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_26102FFA4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v3[22] = swift_task_alloc();
  v3[23] = sub_2610BCC74();
  v3[24] = sub_2610BCC64();
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 64) + **(a2 + 64));
  v6 = swift_task_alloc();
  v3[25] = v6;
  *v6 = v3;
  v6[1] = sub_26103012C;

  return v8(ObjectType, a2);
}

uint64_t sub_26103012C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    *(v2 + 216) = v3;
    *(v2 + 224) = v4;
    v5 = sub_261030290;
  }

  else
  {
    v5 = sub_261022A38;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261030290()
{
  v45 = v0;
  v1 = *(v0 + 208);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 80);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  if (*(v0 + 104))
  {
    sub_26102880C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
LABEL_4:

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 208);
    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = v6;
    swift_unknownObjectRetain();
    v9 = sub_2610BC794();
    v10 = sub_2610BCD64();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 208);
      v42 = *(v0 + 152);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v44[0] = v14;
      *v12 = 136446466;
      *(v0 + 112) = v42;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
      v15 = sub_2610BCA34();
      v17 = sub_260FA5970(v15, v16, v44);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2114;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&dword_260F97000, v9, v10, "PASTargetFlowController failed to prepare step %{public}s for presentation %{public}@", v12, 0x16u);
      sub_260FA9980(v13, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x2666F8720](v14, -1, -1);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v20 = *(v0 + 208);
    *(v0 + 16) = v20;
    *(v0 + 64) = 1;
    v21 = v20;
    v22 = swift_task_alloc();
    *(v0 + 232) = v22;
    *v22 = v0;
    v22[1] = sub_26103087C;

    return PASTargetFlowController.stepDidEndFlow(with:)(v0 + 16);
  }

  v43 = *(v0 + 72);
  v24 = *(v0 + 208);

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v25 = sub_2610BC7B4();
  __swift_project_value_buffer(v25, qword_27FE65900);
  swift_unknownObjectRetain();

  v26 = sub_2610BC794();
  v27 = sub_2610BCD84();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v26, v27))
  {
    v41 = *(v0 + 152);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44[0] = v29;
    *v28 = 136446466;
    *(v0 + 128) = v41;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v30 = sub_2610BCA34();
    v32 = sub_260FA5970(v30, v31, v44);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v33 = sub_260FA5970(v43, v3, v44);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_260F97000, v26, v27, "PASTargetFlowController skipping %{public}s.\n%{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v29, -1, -1);
    MEMORY[0x2666F8720](v28, -1, -1);
  }

  else
  {
  }

  v34 = *(v0 + 176);
  v35 = sub_2610BCC94();
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);

  v36 = sub_2610BCC64();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v5;
  v37[5] = v4;
  sub_261042434(0, 0, v34, &unk_2610C7D88, v37);

  sub_2610368EC();
  swift_allocError();
  *v39 = 0;
  swift_willThrow();

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_26103087C()
{
  v1 = *v0;

  sub_260FA9980(v1 + 16, &qword_27FE65690, qword_2610C7520);
  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_2610231D4, v3, v2);
}

uint64_t sub_2610309B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[22] = a6;
  v7[23] = v6;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  sub_2610BCC74();
  v7[24] = sub_2610BCC64();
  v9 = sub_2610BCBF4();
  v7[25] = v9;
  v7[26] = v8;

  return MEMORY[0x2822009F8](sub_261030A5C, v9, v8);
}

uint64_t sub_261030A5C()
{
  sub_261020668((v0 + 7));
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_261030B94;

  return v5(v0 + 2, v1, v2);
}

uint64_t sub_261030B94()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_261030EDC;
  }

  else
  {
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_261030CB8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261030CB8()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  sub_260FA9918(v0 + 16, v0 + 96, &unk_27FE668E0, &qword_2610C8230);
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v13 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v1);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v13;
    *(v8 + 40) = v2;
    *(v8 + 48) = v7;
    *(v8 + 56) = v5;
    *(v8 + 64) = v3;
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D839B0];
    v9[2] = v1;
    v9[3] = v10;
    v9[4] = v6;
    v9[5] = v1;

    sub_260FAE028(v5, v3, 0, sub_2610376A8, v9, &unk_2610C8240, v8, v1, v10, v6);

    sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  }

  else
  {
    sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);
    sub_260FA9980(v0 + 96, &unk_27FE668E0, &qword_2610C8230);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_261030EDC()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  sub_260FA9918(v0 + 16, v0 + 96, &unk_27FE668E0, &qword_2610C8230);
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v13 = v5;
    v14 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v1);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v14;
    *(v8 + 40) = v2;
    *(v8 + 48) = v7;
    *(v8 + 56) = v5;
    *(v8 + 64) = v3;
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D839B0];
    v9[2] = v1;
    v9[3] = v10;
    v9[4] = v6;
    v9[5] = v1;

    sub_260FAE028(v13, v3, 0, sub_2610376A8, v9, &unk_2610C8240, v8, v1, v10, v6);

    sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  }

  else
  {
    sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);
    sub_260FA9980(v0 + 96, &unk_27FE668E0, &qword_2610C8230);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_261031114(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a8;
  *(v8 + 17) = v16;
  *(v8 + 14) = a6;
  *(v8 + 15) = a7;
  *(v8 + 12) = a2;
  *(v8 + 13) = a5;
  *(v8 + 11) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  *(v8 + 18) = swift_task_alloc();
  v14 = (a3 + *a3);
  v12 = swift_task_alloc();
  *(v8 + 19) = v12;
  *v12 = v8;
  v12[1] = sub_261031274;

  return v14(v8 + 49, a1, a2);
}

uint64_t sub_261031274()
{
  v2 = *v1;
  v2[20] = v0;

  if (!v0)
  {
    v5 = v2[13] + *v2[13];
    v3 = swift_task_alloc();
    v2[21] = v3;
    *v3 = v2;
    v3[1] = sub_26103144C;

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x2822009F8](sub_261031564, 0, 0);
}

uint64_t sub_26103144C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  if (v2)
  {
    v5 = sub_2610316D4;
  }

  else
  {
    v5 = sub_2610315CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261031564()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2610315CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {
    swift_unknownObjectRelease();

    v4 = v0[1];

    __asm { BRAA            X2, X16 }
  }

  sub_2610BCC74();
  v0[26] = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261031A44, v3, v2);
}

uint64_t sub_2610316D4()
{
  v24 = v0;
  v1 = *(v0 + 192);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (*(v0 + 48))
  {
    sub_26102880C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
LABEL_4:

    v6 = *(v0 + 8);
    v7 = 0;
    goto LABEL_5;
  }

  v9 = *(v0 + 16);
  v10 = *(v0 + 144);

  v11 = sub_2610BCC94();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;
  v12[5] = v4;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2610C8258;
  v13[5] = v12;

  sub_261042434(0, 0, v10, &unk_2610C8260, v13);

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v14 = sub_2610BC7B4();
  __swift_project_value_buffer(v14, qword_27FE65900);

  v15 = sub_2610BC794();
  v16 = sub_2610BCD44();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_260FA5970(v18, v17, &v23);
    *(v19 + 12) = 2082;
    v21 = sub_260FA5970(v9, v3, &v23);

    *(v19 + 14) = v21;
    _os_log_impl(&dword_260F97000, v15, v16, "Skipping next step presentation for %{public}s: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v20, -1, -1);
    MEMORY[0x2666F8720](v19, -1, -1);
  }

  else
  {
  }

  v22 = *(v0 + 49);

  v6 = *(v0 + 8);
  v7 = v22;
LABEL_5:

  return v6(v7);
}

uint64_t sub_261031A44()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  sub_261031D88(v2, v1);

  return MEMORY[0x2822009F8](sub_261031ACC, 0, 0);
}

uint64_t sub_261031ACC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 49);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261031B40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_260FBF860;

  return v6();
}

char *sub_261031C28(char a1)
{
  if (a1)
  {
    type metadata accessor for PASFlowStepTargetProtoAccountStart(0);
    v1 = swift_allocObject() + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
    *(v1 + 8) = 0;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    *(v1 + 8) = &protocol witness table for PASTargetFlowController;
    swift_unknownObjectWeakAssign();
    v2 = PASFlowStepBase.init()();
    v3 = &unk_27FE65860;
    v4 = type metadata accessor for PASFlowStepTargetProtoAccountStart;
  }

  else
  {
    type metadata accessor for PASFlowStepTargetStart(0);
    v5 = swift_allocObject() + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
    *(v5 + 8) = 0;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    *(v5 + 8) = &protocol witness table for PASTargetFlowController;
    swift_unknownObjectWeakAssign();
    v2 = PASFlowStepBase.init()();
    v3 = &unk_27FE65858;
    v4 = type metadata accessor for PASFlowStepTargetStart;
  }

  sub_261037860(v3, v4, &protocol conformance descriptor for PASTargetFlowStepBase);
  return v2;
}

uint64_t sub_261031D88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  swift_unknownObjectRetain();
  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    v26[1] = a1;
    *v9 = 136446210;
    v26[2] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, v26);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_260F97000, v7, v8, "PASTargetFlowController presentStep: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(v2 + 24);
  if (!Strong)
  {
    v16 = sub_2610BC794();
    v17 = sub_2610BCD74();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_260F97000, v16, v17, "PASTargetFlowController presenter is nil in stepDidFinish", v18, 2u);
      MEMORY[0x2666F8720](v18, -1, -1);
    }
  }

  ObjectType = swift_getObjectType();
  v20 = *(a2 + 24);
  v21 = swift_unknownObjectRetain();
  v20(v21, &protocol witness table for PASTargetFlowController, ObjectType, a2);
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (Strong)
  {
    v23 = swift_getObjectType();
    v24 = *(v15 + 8);
    v25 = *(v24 + 8);
    swift_unknownObjectRetain();
    v25(a1, a2, v23, v24);
    return swift_unknownObjectRelease_n();
  }

  return result;
}

void *PASTargetFlowController.deinit()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetFlowController deinit", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  sub_260F99170(v1 + 16);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t PASTargetFlowController.__deallocating_deinit()
{
  PASTargetFlowController.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t (*sub_2610321C4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FBF87C;
}

uint64_t sub_2610322A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  return sub_26102A598();
}

uint64_t sub_261032334(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return sub_26102FFA4(a1, a2);
}

uint64_t PASTargetFlowController.performAIDASignIn(with:)(uint64_t *a1)
{
  v3 = *a1;
  v2[6] = v1;
  v2[7] = v3;
  sub_2610BCC74();
  v2[8] = sub_2610BCC64();
  v5 = sub_2610BCBF4();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x2822009F8](sub_261032478, v5, v4);
}

uint64_t sub_261032478()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController performAIDASignIn", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v6 = v0[7];
    v7 = *(v0[6] + 24);
    ObjectType = swift_getObjectType();
    v0[5] = v6;
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v16 = (v9 + *v9);
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_26103274C;

    return (v16)(v0 + 5, ObjectType, v7);
  }

  else
  {
    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_260F97000, v12, v13, "PASTargetFlowController presenter is nil in performAIDASignIn", v14, 2u);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    v15 = v0[1];

    return v15(0);
  }
}

uint64_t sub_26103274C(char a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  swift_unknownObjectRelease();
  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_261032898, v4, v3);
}

uint64_t sub_261032898()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t PASTargetFlowController.stepDidFinish(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v4 - 8, v5);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  swift_unknownObjectRetain();
  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v9 = 136446210;
    v19[3] = a1;
    v19[4] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65780, &qword_2610C7DB0);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_260F97000, v7, v8, "PASTargetFlowController stepDidFinish %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 16))(ObjectType, a2);
  v16 = v15;
  v17 = swift_unknownObjectRetain();
  sub_261031D88(v17, v16);
  return swift_unknownObjectRelease_n();
}

uint64_t PASTargetFlowController.stepDidRequestReset(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v3[10] = swift_task_alloc();
  v3[11] = sub_2610BCC74();
  v3[12] = sub_2610BCC64();
  v5 = sub_2610BCBF4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_261033094, v5, v4);
}

uint64_t sub_261033094()
{
  v31 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  swift_unknownObjectRetain();
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v28 = *(v0 + 56);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136446210;
    *(v0 + 40) = v28;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v6 = sub_2610BCA34();
    v8 = sub_260FA5970(v6, v7, &v30);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController stepDidRequestReset %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x2666F8720](v5, -1, -1);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v9 = *(v0 + 80);
  v10 = *(v0 + 72);
  v11 = sub_2610BCC94();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);

  v12 = sub_2610BCC64();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  sub_261042434(0, 0, v9, &unk_2610C7DC8, v13);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (!Strong)
  {
    v16 = sub_2610BC794();
    v17 = sub_2610BCD74();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_260F97000, v16, v17, "PASTargetFlowController presenter is nil in stepDidRequestReset", v18, 2u);
      MEMORY[0x2666F8720](v18, -1, -1);
    }
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = v19;
  if (v19)
  {
    v20 = *(*(v0 + 72) + 24);
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 8);
    v29 = (*(v22 + 16) + **(v22 + 16));
    v23 = swift_task_alloc();
    *(v0 + 136) = v23;
    *v23 = v0;
    v23[1] = sub_261025A54;
    v25 = *(v0 + 56);
    v24 = *(v0 + 64);

    return v29(v25, v24, ObjectType, v22);
  }

  else
  {
    swift_unknownObjectRelease();

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_2610334D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_2610BCC74();
  v4[4] = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_261033568, v6, v5);
}

uint64_t sub_261033568()
{
  v1 = sub_261029D10();
  v3 = v2;
  *(v0 + 56) = v1;
  ObjectType = swift_getObjectType();
  v7 = (*(v3 + 48) + **(v3 + 48));
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_261033694;

  return v7(ObjectType, v3);
}

uint64_t sub_261033694(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 72) = v1;

  v5 = *(v3 + 48);
  v6 = *(v3 + 40);
  if (v1)
  {
    v7 = sub_261033914;
  }

  else
  {
    v7 = sub_2610337DC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2610337DC()
{

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController stepDidRequestReset got response from sendReset %{BOOL,public}d", v5, 8u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_261033914()
{
  v17 = v0;

  swift_unknownObjectRelease();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260F97000, v4, v5, "PASTargetFlowController stepDidRequestReset got error sending flowReset.%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t PASTargetFlowController.stepDidRequestCancel(_:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_2610BCC74();
  v3[16] = sub_2610BCC64();
  v5 = sub_2610BCBF4();
  v3[17] = v5;
  v3[18] = v4;

  return MEMORY[0x2822009F8](sub_261033B94, v5, v4);
}

uint64_t sub_261033B94()
{
  v33 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_27FE65900);
  swift_unknownObjectRetain();
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v29 = *(v0 + 104);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v32 = v5;
    *v4 = 136446210;
    *(v0 + 80) = v29;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65840, &unk_2610C7D70);
    v6 = sub_2610BCA34();
    v8 = sub_260FA5970(v6, v7, &v32);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetFlowController stepDidRequestCancel %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x2666F8720](v5, -1, -1);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  if (*(*(v0 + 120) + 33))
  {
    sub_261020668(v0 + 16);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    (*(v10 + 40))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 184) = Strong;
    if (!Strong)
    {
      v12 = sub_2610BC794();
      v13 = sub_2610BCD74();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_260F97000, v12, v13, "PASTargetFlowController presenter is nil in stepDidRequestCancel", v14, 2u);
        MEMORY[0x2666F8720](v14, -1, -1);
      }
    }

    *(*(v0 + 120) + 33) = 1;
    v15 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 192) = v15;
    if (v15)
    {
      v16 = *(*(v0 + 120) + 24);
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 8);
      v30 = (*(v18 + 24) + **(v18 + 24));
      v19 = swift_task_alloc();
      *(v0 + 200) = v19;
      *v19 = v0;
      v19[1] = sub_261026C0C;
      v21 = *(v0 + 104);
      v20 = *(v0 + 112);

      return v30(v21, v20, ObjectType, v18);
    }

    else
    {
      swift_unknownObjectRelease();

      v28 = *(v0 + 8);

      return v28();
    }
  }

  else
  {
    v23 = sub_261029D10();
    v25 = v24;
    *(v0 + 160) = v23;
    v26 = swift_getObjectType();
    v31 = (*(v25 + 56) + **(v25 + 56));
    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    *v27 = v0;
    v27[1] = sub_261034084;

    return v31(v26, v25);
  }
}