uint64_t sub_22601D020(void *a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v7 = *a1;
  MEMORY[0x277D82BE0](*a1);
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a2);
  v12 = v7;
  v13 = a2;
  if (v7)
  {
    sub_226023224(&v12, &v11);
    if (v13)
    {
      v10 = v11;
      v9 = v13;
      type metadata accessor for CoreEmbeddedSpeechAnalyzer();
      v4 = sub_22609A118();
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      sub_225EFE834(&v12);
      v5 = v4;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v11);
    goto LABEL_9;
  }

  if (v13)
  {
LABEL_9:
    sub_2260231DC(&v12);
    v5 = 0;
    goto LABEL_7;
  }

  sub_225EFE834(&v12);
  v5 = 1;
LABEL_7:
  MEMORY[0x277D82BD8](a2);
  result = MEMORY[0x277D82BD8](v7);
  if (v5)
  {
    v3 = *a1;
    *a1 = 0;
    return MEMORY[0x277D82BD8](v3);
  }

  return result;
}

id sub_22601D2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v13 = sub_2260999F8();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v11 = sub_2260999F8();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    v10 = sub_2260999F8();

    v6 = [v17 initWithModelVersion:v14 modelType:v12 modelRoot:v10];
  }

  else
  {
    v6 = [v17 initWithModelVersion:v14 modelType:v12 modelRoot:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v14);
  return v9;
}

uint64_t sub_22601D504@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
  }

  else
  {
    result = sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "os/arm64e-apple-ios.private.swiftinterface", 42, 2, 2393, 0);
    __break(1u);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22601D748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6[7] = v5;
  v6[6] = a4;
  v6[5] = a3;
  v6[4] = a2;
  v6[3] = a1;
  v6[2] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22601D874, 0, 0);
}

uint64_t sub_22601D874()
{
  v9 = v0[10];
  v8 = v0[9];
  v10 = v0[8];
  v0[2] = v0;
  sub_22609A548();
  swift_getAssociatedConformanceWitness();
  sub_22609A368();
  v1 = *(v8 + 8);
  v0[12] = v1;
  v0[13] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v9, v10);
  v2 = swift_task_alloc();
  v11[14] = v2;
  *v2 = v11[2];
  v2[1] = sub_225EF3E94;
  v3 = v11[11];
  v4 = v11[6];
  v5 = v11[5];
  v6 = v11[4];

  return MEMORY[0x2822008C8](v3, v6, v5, v4);
}

uint64_t sub_22601D9DC()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_22601DA84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_22609A2B8();
  v5 = sub_22609A2A8();
  (*(*(a2 - 8) + 8))(a1);
  return v5;
}

uint64_t sub_22601DB4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a1 + ((*(*a1 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)) = 0;
  return (*(*(*(v3 + *MEMORY[0x277D841D0]) - 8) + 16))(a2);
}

void sub_22601DC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  sub_2260258A8(a3 + *(*a3 + *MEMORY[0x277D841D0] + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

void sub_22601DD10(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

uint64_t sub_22601DDCC@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 2, 3939, 0);
    __break(1u);
  }

  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_22601DF94(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
    v1 = sub_226099CB8();
    sub_2260998E8();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void sub_22601E04C(uint64_t a1)
{
  if (sub_225F30FDC(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C68, &unk_2260A0DE0);
    v12 = sub_22609A438();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];

    v12 = v11;
  }

  v10 = sub_225F31698(a1);
  if (v10)
  {
    if (v10 <= 0)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; ; ++i)
      {
        has_malloc_size = _swift_stdlib_has_malloc_size();
        sub_22601E248(i, has_malloc_size & 1, a1, &v14);
        v8 = sub_22601E2DC(v14, v15);
        if (v2)
        {
          break;
        }

        v12[v8 / 0x40 + 8] |= 1 << ((v8 % 0x40) & 0x3F);
        v3 = (v12[6] + 16 * v8);
        v4 = v15;
        *v3 = v14;
        v3[1] = v4;
        sub_225EF9790(&v16, v12[7] + 32 * v8);
        v5 = v12[2];
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }

        v12[2] = v7;
        if (i + 1 == v10)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
  }
}

void *sub_22601E248@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    return sub_22602311C((a3 + 32 + 48 * a1), a4);
  }

  result = sub_22601E360(a1, a3);
  __break(1u);
  return result;
}

unint64_t sub_22601E2DC(uint64_t a1, uint64_t a2)
{
  sub_22609A5E8();
  memcpy(__dst, v7, sizeof(__dst));
  sub_226099AC8();
  v2 = sub_22609A608();
  return sub_22601E55C(a1, a2, v2);
}

uint64_t sub_22601E360(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22602DB4C(82);
    v2 = sub_226099AA8();
    MEMORY[0x22AA72C20](v2);

    v3 = sub_226099AA8();
    MEMORY[0x22AA72C20](v3);

    v4 = sub_226099AA8();
    MEMORY[0x22AA72C20](v4);

    swift_getObjectType();
    v5 = sub_22609A638();
    MEMORY[0x22AA72C20](v5);

    sub_2260998E8();
    sub_226099A88();
    sub_22609A3D8();
    __break(1u);
  }

  sub_2260231A4(v7);
  return v6;
}

unint64_t sub_22601E55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = (1 << (*(v3 + 32) & 0x3F)) - 1;
  for (i = a3 & v13; (*(v12 + 64 + 8 * (i / 0x40)) & (1 << ((i % 0x40) & 0x3F))) != 0; i = (i + 1) & v13)
  {
    v4 = (*(v12 + 48) + 16 * i);
    v7 = *v4;
    v8 = v4[1];
    sub_2260998E8();
    v9 = MEMORY[0x22AA72BD0](v7, v8, a1, a2);

    if (v9)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_22601E698(_OWORD *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(a2);
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  return a2;
}

unint64_t sub_22601E76C()
{
  v2 = qword_280D76560;
  if (!qword_280D76560)
  {
    type metadata accessor for qos_class_t(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76560);
    return WitnessTable;
  }

  return v2;
}

void *sub_22601E7EC(const void *a1, void *a2)
{
  v6 = sub_226099DA8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_22601E914(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786838, &qword_2260A0858) - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_225F81A7C(a1, v7, v8, v1 + v9);
}

uint64_t sub_22601EA3C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_22601EA84(const void *a1, void *a2)
{
  v6 = sub_226098948();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_22601EBAC(const void *a1, void *a2)
{
  v6 = sub_226098948();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_22601ECD4(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8);
  v11 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F847F4(a1, v7, v8, v9, v10, v1 + v11);
}

uint64_t sub_22601EE44(uint64_t a1)
{
  v8 = v2;
  *(v2 + 16) = v2;
  v5 = *(sub_226099808() - 8);
  v14 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v6 = v14 + *(v5 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8);
  v15 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  sub_226098DD8();
  sub_226099DA8();
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1[6];
  v3 = swift_task_alloc();
  *(v8 + 24) = v3;
  *v3 = *(v8 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F8A12C(a1, v9, v10, v11, v12, v13, v1 + v14, v1 + v15);
}

uint64_t sub_22601F250(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F9D3E8(a1, v6, v7, v8, v9);
}

uint64_t sub_22601F334(uint64_t a1)
{
  v3 = sub_226098948();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_22601F410()
{
  v2 = qword_280D76498;
  if (!qword_280D76498)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76498);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22601F474()
{
  v2 = qword_280D76C10;
  if (!qword_280D76C10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76C10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22601F4EC(double a1)
{
  v3 = qword_280D76768;
  if (!qword_280D76768)
  {
    sub_226098FC8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76768);
    return WitnessTable;
  }

  return v3;
}

void *sub_22601F56C(const void *a1, void *a2)
{
  v6 = sub_226099248();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B0, &unk_2260A0FF0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_22601F6A0()
{
  v2 = qword_280D76580;
  if (!qword_280D76580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D785E58, &unk_2260A0950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22601F728(uint64_t a1)
{
  v3 = sub_226099248();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_22601F7D0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FA1544(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_22601F8C0()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_225F3E5DC;

  return sub_225FD8AB8();
}

unint64_t type metadata accessor for CoreEmbeddedSpeechAnalyzer()
{
  v2 = qword_280D76418;
  if (!qword_280D76418)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76418);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22601F9F0()
{
  v2 = qword_27D7869F0;
  if (!qword_27D7869F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869E8, &qword_2260A09A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7869F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22601FA78()
{
  v2 = qword_27D7869F8;
  if (!qword_27D7869F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7869F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22601FAFC()
{
  v2 = qword_280D76780;
  if (!qword_280D76780)
  {
    sub_226098D78();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22601FB7C()
{
  v2 = qword_280D76598;
  if (!qword_280D76598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786A28, &qword_2260A1000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22601FC04()
{
  v2 = qword_280D76678;
  if (!qword_280D76678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786A30, &qword_2260A0A28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76678);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22601FC8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_226098948();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_225FFF104(v3, a1);
}

uint64_t sub_22601FD00()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_226098948();
  v1 = sub_22601FD5C();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_22601FD5C()
{
  v2 = qword_280D76F40;
  if (!qword_280D76F40)
  {
    sub_226098948();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22601FDE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_22601FE20(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

unint64_t sub_22601FEB4()
{
  v2 = qword_280D76F50;
  if (!qword_280D76F50)
  {
    sub_2260987A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22601FF2C()
{
  v2 = qword_280D76F58;
  if (!qword_280D76F58)
  {
    sub_226098798();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22601FFAC(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(sub_226098A78() - 8);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v11 = *(v1 + ((v10 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FD1D04(a1, v7, v8, v9, v1 + v10, v11);
}

uint64_t sub_22602011C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FD4758(a1, v6, v7, v8);
}

void *sub_226020208(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_22602033C(double a1)
{
  v3 = qword_280D76728;
  if (!qword_280D76728)
  {
    sub_2260996F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76728);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_2260203BC(double a1)
{
  v3 = qword_280D76770;
  if (!qword_280D76770)
  {
    sub_226098E98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76770);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_22602043C()
{
  v2 = qword_280D76650;
  if (!qword_280D76650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D786A58, &qword_2260A0A98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260204C4()
{
  v2 = qword_280D765A8;
  if (!qword_280D765A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D786A70, &qword_2260A0AA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602054C()
{
  v2 = qword_280D76668;
  if (!qword_280D76668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D786A80, &qword_2260A0AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260205D4()
{
  v2 = qword_27D786AB0;
  if (!qword_27D786AB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786AB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602064C()
{
  v2 = qword_27D786B10;
  if (!qword_27D786B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AC8, &qword_2260A0AE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260206D4()
{
  v2 = qword_27D786B20;
  if (!qword_27D786B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786B18, &qword_2260A0B48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602075C()
{
  v2 = qword_27D786B28;
  if (!qword_27D786B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AB8, &qword_2260A0AD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260207E4()
{
  v2 = qword_280D76340;
  if (!qword_280D76340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AD8, &qword_2260A0AF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602086C()
{
  v2 = qword_280D76350;
  if (!qword_280D76350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786B38, &qword_2260A0B68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260208F4()
{
  v2 = qword_280D76F18;
  if (!qword_280D76F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AD0, &qword_2260A0AF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602097C()
{
  v2 = qword_27D786B48;
  if (!qword_27D786B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AF8, &qword_2260A0B18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226020A04()
{
  v2 = qword_27D786B50;
  if (!qword_27D786B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786B00, &qword_2260A0B20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226020A8C()
{
  v2 = qword_27D786B60;
  if (!qword_27D786B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786B58, &qword_2260A0B90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226020B14()
{
  v2 = qword_27D786B68;
  if (!qword_27D786B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AE0, &qword_2260A0B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B68);
    return WitnessTable;
  }

  return v2;
}

void *sub_226020B9C(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_226020CAC(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v11 = v1[4];
  v3 = *(sub_22609A198() - 8);
  v10 = (*(v3 + 80) + 136) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[11];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_226007898(a1, v7, v8, (v1 + 6), v9, (v1 + 12), v1 + v10, v11);
}

uint64_t sub_226020DF4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FDFD38(a1, v6);
}

uint64_t sub_226020EB4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FE2F2C(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_226020FBC(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FE6F48(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_226021118(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FEADC4(a1, v6);
}

uint64_t sub_2260211D8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FF0FE8(a1, v6);
}

uint64_t sub_226021298(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FF3930(a1, v6);
}

uint64_t sub_226021358()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_225F3E5DC;

  return sub_225FF5CF0();
}

uint64_t sub_226021424()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_225F3E5DC;

  return sub_225FF5CF0();
}

uint64_t sub_2260214F0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FF6DC8(a1, v6);
}

uint64_t sub_2260215BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2260215F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_226021624()
{
  v2 = qword_27D786B98;
  if (!qword_27D786B98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786B98);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_226021688(const void *a1, void *a2)
{
  v6 = sub_226098A08();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_2260217B0(const void *a1, void *a2)
{
  v7 = sub_226098A08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_2260219D8(uint64_t a1)
{
  v3 = sub_226098A08();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_226021A80(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_226001320(a1, v5);
}

void *sub_226021B80(void *a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  (a4)(a1, a2, a3);
  v5 = *a1;
  sub_22609A1B8();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_226021BF8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_22600188C(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_226021CF4(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = sub_226098A78();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_226021DC0(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BE0, &qword_2260A0CD0);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = sub_226098A78();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_226021E8C()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *(sub_226098A78() - 8);
  v8 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v9 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_2260046AC(v9, v6, v7, v0 + v8);
}

uint64_t sub_226021FA4(uint64_t a1, uint64_t a2)
{
  v8 = sub_226098FA8();
  v9 = *(*(v8 - 8) + 16);
  v9(a2, a1);
  v10 = type metadata accessor for CombinedTranscriberOutput(0);
  v11 = v10[5];
  v13 = sub_226099458();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a1 + v11, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a2 + v11), (a1 + v11), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))();
    (*(v14 + 56))(a2 + v11, 0, 1, v13);
  }

  (v9)(a2 + v10[6], a1 + v10[6], v8);
  __dst = (a2 + v10[7]);
  __src = (a1 + v10[7]);
  if (v15())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_226022294(uint64_t a1, uint64_t a2)
{
  v8 = sub_226098FA8();
  v9 = *(*(v8 - 8) + 32);
  v9(a2, a1);
  v10 = type metadata accessor for CombinedTranscriberOutput(0);
  v11 = v10[5];
  v13 = sub_226099458();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a1 + v11, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a2 + v11), (a1 + v11), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))();
    (*(v14 + 56))(a2 + v11, 0, 1, v13);
  }

  (v9)(a2 + v10[6], a1 + v10[6], v8);
  __dst = (a2 + v10[7]);
  __src = (a1 + v10[7]);
  if (v15())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_226022584(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for CombinedTranscriberOutput(0) - 8);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = *(v1 + 16);
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_226012060(v5, a1, v8, v1 + v9);
}

uint64_t sub_22602268C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_22600E73C(a1, v6, v7, v8);
}

uint64_t sub_226022764(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(sub_226099328() - 8);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_2260161B8(a1, v7, v1 + v8);
}

uint64_t sub_22602286C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_226016B18(a1, v6, v7);
}

uint64_t sub_226022950(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_2260998E8();
  result = a1;
  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t *sub_2260229B4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_2260998E8();
  *a1 = v3;

  result = a1;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t *sub_226022A1C(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  result = a1;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_226022A64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 9))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_226022BAC(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result + 9;
  if (a2 < 0)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

void *sub_226022D70(void *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_226022DFC(uint64_t a1)
{
  v3 = sub_226099258();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_226022EA4(const void *a1, void *a2)
{
  v6 = sub_226099258();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C60, &qword_2260A0DD8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_226022FCC(uint64_t a1)
{
  v3 = sub_226098E68();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_226023074(uint64_t a1)
{
  v3 = sub_226099288();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_22602311C(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_2260998E8();
  a2[1] = v4;
  v2 = a1[5];
  a2[5] = v2;
  (**(v2 - 8))(a2 + 2, a1 + 2);
  return a2;
}

uint64_t sub_2260231A4(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_0((a1 + 16));
  return a1;
}

void *sub_2260231DC(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  return a1;
}

void *sub_226023224(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_226023264()
{
  v2 = qword_280D765D0;
  if (!qword_280D765D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786478, &unk_2260A0DF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226023348()
{
  v2 = qword_27D786C88;
  if (!qword_27D786C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786B08, &qword_2260A0B30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786C88);
    return WitnessTable;
  }

  return v2;
}

void *sub_2260233D0(void *a1, void *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C90, &qword_2260A0E10);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C80, &qword_2260A0E08);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v5 = a1[1];
    sub_2260998E8();
    a2[1] = v5;
    v7 = a2 + *(v10 + 48);
    v6 = a1 + *(v10 + 48);
    v2 = sub_226098FA8();
    (*(*(v2 - 8) + 16))(v7, v6);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_226023554(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C90, &qword_2260A0E10);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 48);
    v1 = sub_226098FA8();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

unint64_t sub_22602363C()
{
  v2 = qword_27D786CA8;
  if (!qword_27D786CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786CA0, &unk_2260A0E20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786CA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226023770(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_226006178(a1, v6, v7, v8, v9);
}

void *sub_226023860(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_2260238C0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FEC990(a1, v6, v7, v8, v9);
}

unint64_t sub_2260239A4()
{
  v2 = qword_27D786CE8;
  if (!qword_27D786CE8)
  {
    sub_226099158();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786CE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226023A24(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v12 = v2[2];
  v13 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_226007DEC(a1, a2, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_226023B28(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_226023BCC()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[4];
  v9 = v0[5];
  v6 = (*(*(v8 - 8) + 80) + 48) & ~*(*(v8 - 8) + 80);
  v10 = v0[2];
  v5 = v0[3];
  v7 = *(v0 + ((v6 + *(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_22600C890(v10, v5, v0 + v6, v7, v8, v9);
}

uint64_t sub_226023D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_226023DC8()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[9];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_22600ADC0(v7, v5, (v0 + 4), v6);
}

uint64_t sub_226023E9C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[9];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_226008DE4(v7, v5, (v0 + 4), v6);
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

uint64_t sub_226023FF0(uint64_t a1)
{
  v10 = type metadata accessor for CombinedTranscriberOutput(0);
  if (!(*(*(v10 - 1) + 48))(a1, 1))
  {
    v3 = sub_226098FA8();
    v4 = *(*(v3 - 8) + 8);
    v4(a1);
    v5 = a1 + v10[5];
    v6 = sub_226099458();
    v7 = *(v6 - 8);
    v8 = *(v7 + 48);
    if (!(v8)(v5, 1))
    {
      (*(v7 + 8))(v5, v6);
    }

    (v4)(a1 + v10[6], v3);
    v2 = a1 + v10[7];
    if (!v8())
    {
      (*(v7 + 8))(v2, v6);
    }
  }

  return a1;
}

uint64_t sub_2260241DC(uint64_t a1)
{
  v3 = sub_226098FA8();
  v4 = *(*(v3 - 8) + 8);
  v4(a1);
  v5 = type metadata accessor for CombinedTranscriberOutput(0);
  v6 = v5[5];
  v8 = sub_226099458();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!(v10)(a1 + v6, 1))
  {
    (*(v9 + 8))(a1 + v6, v8);
  }

  (v4)(a1 + v5[6], v3);
  v2 = a1 + v5[7];
  if (!v10())
  {
    (*(v9 + 8))(v2, v8);
  }

  return a1;
}

uint64_t sub_226024390(uint64_t a1)
{
  v3 = sub_226099328();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_226024438(uint64_t a1, uint64_t a2)
{
  v6 = *(*(sub_226098FA8() - 8) + 16);
  (v6)(a2, a1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B40, &qword_2260A0B78);
  v4 = *(v11 + 48);
  v9 = sub_226099458();
  v10 = *(*(v9 - 8) + 16);
  v10(a2 + v4, a1 + v4);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D08, &qword_2260A0ED8);
  v7 = a2 + *(v2 + 48);
  v8 = a1 + *(v2 + 48);
  v6();
  (v10)(v7 + *(v11 + 48), v8 + *(v11 + 48), v9);
  return a2;
}

uint64_t sub_2260245B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_226098FA8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B40, &qword_2260A0B78) + 48);
  v3 = sub_226099458();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

uint64_t sub_22602468C(uint64_t a1, uint64_t a2)
{
  v5 = sub_226098FA8();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D10, &qword_2260A0EE0);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t sub_226024748(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FFB84C(a1, v6, v7);
}

unint64_t sub_226024834()
{
  v2 = qword_280D764E8;
  if (!qword_280D764E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D764E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_2260248A0()
{
  v2 = qword_27D786D18;
  if (!qword_27D786D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D785E58, &unk_2260A0950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786D18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226024928()
{
  v2 = qword_27D786D28;
  if (!qword_27D786D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786D20, &qword_2260A0F00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786D28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260249B0()
{
  v2 = qword_27D786D40;
  if (!qword_27D786D40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786D40);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226024A14()
{
  v2 = qword_27D786D48;
  if (!qword_27D786D48)
  {
    sub_2260249B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786D48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226024A94(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FF9788(a1, v6, v7);
}

void *sub_226024B60(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    sub_226024BB4(result, a2 & 1);
    return sub_2260998E8();
  }

  return result;
}

id sub_226024BB4(void *a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void *sub_226024BF4(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    sub_226024C48(result, a2 & 1);
  }

  return result;
}

void sub_226024C48(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *sub_226024CB8(const void *a1, void *a2)
{
  v6 = sub_226098D98();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786988, &qword_2260A08E8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_226024DE0(const void *a1, void *a2)
{
  v6 = sub_226098D98();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786988, &qword_2260A08E8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_226024F08(uint64_t a1)
{
  v3 = sub_226098D98();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_226024FB0()
{
  v2 = qword_280D763A0;
  if (!qword_280D763A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_226025014(uint64_t a1)
{
  v8 = v2;
  *(v2 + 16) = v2;
  v6 = *(sub_2260997E8() - 8);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v7 = v10 + *(v6 + 64);
  v3 = sub_226098A78();
  v11 = (v7 + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v9 = *(v1 + 16);
  v12 = *(v1 + ((v11 + *(*(v3 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v8 + 24) = v4;
  *v4 = *(v8 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_225FC0298(a1, v9, v1 + v10, v1 + v11, v12);
}

uint64_t sub_2260251D0(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v6 = *(sub_2260997E8() - 8);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v3 = (v11 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v12 = *(v1 + v3);
  v13 = *(v1 + v3 + 8);
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_225FC2CBC(a1, v8, v9, v10, v1 + v11, v12, v13);
}

unint64_t sub_226025354()
{
  v2 = qword_280D76758;
  if (!qword_280D76758)
  {
    sub_226099078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76758);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2260253D4(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    if (*(a1 + 8) != 255)
    {
      sub_226024C48(*a1, *(a1 + 8) & 1);
    }
  }

  return a1;
}

id sub_226025444(id result, unsigned __int8 a2)
{
  if (a2 != 255)
  {
    return sub_226024BB4(result, a2 & 1);
  }

  return result;
}

void sub_22602548C(void *a1, unsigned __int8 a2)
{
  if (a2 != 255)
  {
    sub_226024C48(a1, a2 & 1);
  }
}

uint64_t sub_2260254D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_226024C48(*a1, *(a1 + 8) & 1);
  }

  return a1;
}

uint64_t sub_226025528(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_226025568()
{
  v2 = qword_280D76528;
  if (!qword_280D76528)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76528);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226025608()
{
  v2 = qword_280D76500;
  if (!qword_280D76500)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76500);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22602566C()
{
  v2 = qword_280D76738;
  if (!qword_280D76738)
  {
    sub_2260994D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260256EC()
{
  v2 = qword_280D76750;
  if (!qword_280D76750)
  {
    sub_226099378();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76750);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22602576C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F9EC40(a1, v6);
}

void *sub_226025838(void *a1, void *a2)
{
  v4 = *a1;
  sub_2260998E8();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_2260258F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_2260998E8();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 8);
  return result;
}

void *CESRAsrReplayWorkerConfig.init(audio:language:taskHint:useBaseProfile:profileData:requestEntityStrings:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, uint64_t a11)
{
  v36 = a9;
  v31 = a1;
  v32 = a2;
  v23 = a3;
  v30 = a4;
  v24 = a5;
  v29 = a6;
  v25 = a7;
  v27 = a8;
  v28 = a10;
  v26 = a11;
  v33 = __b;
  v35 = 96;
  memset(__b, 0, sizeof(__b));
  v43 = v31;
  v44 = v32;
  v41 = v23;
  v42 = v30;
  v39 = v24;
  v40 = v29;
  v38 = v25 & 1;
  v37[13] = v27;
  v37[14] = a10;
  v37[12] = a11;
  v20 = sub_226098A78();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v16 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v19 = &v15 - v16;
  sub_226098A68();
  v21 = sub_226098A28();
  v22 = v11;
  (*(v17 + 8))(v19, v20);
  __b[0] = v21;
  __b[1] = v22;
  __b[9] = 0;
  __b[10] = 0xF000000000000000;
  sub_226025C4C(v31, v32);
  __b[2] = v31;
  __b[3] = v32;
  sub_2260998E8();
  __b[4] = v23;
  __b[5] = v30;
  sub_2260998E8();
  __b[6] = v24;
  __b[7] = v29;
  LOBYTE(__b[8]) = v25;
  sub_226025C4C(v27, v28);
  v12 = __b[9];
  v13 = __b[10];
  __b[9] = v27;
  __b[10] = v28;
  sub_225F4C1F8(v12, v13);
  sub_2260998E8();
  __b[11] = v26;
  v34 = __dst;
  memcpy(__dst, v33, v35);
  sub_225F4C240(v34, v37);

  sub_225F4C1F8(v27, v28);

  sub_225F4C1F8(v31, v32);
  sub_225F4C4A4(v33);
  return memcpy(v36, v34, v35);
}

uint64_t sub_226025C4C(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_225EF5A38(result, a2);
  }

  return result;
}

uint64_t sub_226025D3C()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786D90);
  __swift_project_value_buffer(v1, qword_27D786D90);
  return sub_226025D88();
}

uint64_t sub_226025D88()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRAsrReplayWorker.swift", 55, 2, 18, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_226025E84()
{
  if (qword_27D785DA8 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786D90);
}

CoreEmbeddedSpeechRecognition::CESRAsrReplayWorkerError_optional __swiftcall CESRAsrReplayWorkerError.init(rawValue:)(Swift::String rawValue)
{
  sub_22609A4F8();
  *v1 = "The audio file could not be found.";
  *(v1 + 8) = 34;
  *(v1 + 16) = 2;
  *(v1 + 24) = "The specified locale is not valid.";
  *(v1 + 32) = 34;
  *(v1 + 40) = 2;
  *(v1 + 48) = "The asset is not available on device.";
  *(v1 + 56) = 37;
  *(v1 + 64) = 2;
  sub_225EF5418();
  v5 = sub_22609A478();

  switch(v5)
  {
    case 0:
      v4.value = CoreEmbeddedSpeechRecognition_CESRAsrReplayWorkerError_noAudio;
LABEL_8:

      return v4;
    case 1:
      v4.value = CoreEmbeddedSpeechRecognition_CESRAsrReplayWorkerError_noValidLocale;
      goto LABEL_8;
    case 2:
      v4.value = CoreEmbeddedSpeechRecognition_CESRAsrReplayWorkerError_noAsset;
      goto LABEL_8;
  }

  return 3;
}

CoreEmbeddedSpeechRecognition::CESRAsrReplayWorkerError_optional sub_226026280@<W0>(Swift::String *a1@<X0>, CoreEmbeddedSpeechRecognition::CESRAsrReplayWorkerError_optional *a2@<X8>)
{
  result.value = CESRAsrReplayWorkerError.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_2260262B8@<X0>(uint64_t *a1@<X8>)
{
  result = CESRAsrReplayWorkerError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CESRAsrReplayWorkerConfig.replayId.getter()
{
  v2 = *v0;
  sub_2260998E8();
  return v2;
}

uint64_t sub_226026388()
{
  v2 = *(v0 + 16);
  sub_226025C4C(v2, *(v0 + 24));
  return v2;
}

uint64_t CESRAsrReplayWorkerConfig.taskHint.getter()
{
  v2 = *(v0 + 48);
  sub_2260998E8();
  return v2;
}

uint64_t sub_22602640C()
{
  v2 = *(v0 + 72);
  sub_226025C4C(v2, *(v0 + 80));
  return v2;
}

uint64_t sub_226026444(uint64_t a1, unint64_t a2)
{
  sub_226025C4C(a1, a2);
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  sub_225F4C1F8(v3, v4);
  return sub_225F4C1F8(a1, a2);
}

uint64_t sub_226026494()
{
  v2 = *(v0 + 88);
  sub_2260998E8();
  return v2;
}

uint64_t sub_2260264C0(uint64_t a1)
{
  sub_2260998E8();
  *(v1 + 88) = a1;
}

void *sub_2260264FC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  sub_225F4C240(__dst, v4);
  swift_endAccess();
  return memcpy(a1, __dst, 0x60uLL);
}

void *sub_226026584(void *a1)
{
  sub_225F4C240(a1, v4);
  swift_beginAccess();
  sub_2260266A4(a1, v1 + 16);
  swift_endAccess();
  return sub_225F4C4A4(a1);
}

uint64_t CESRAsrReplayWorker.init(config:)(void *a1)
{
  v6 = 0;
  v7 = a1;
  sub_225F4C240(a1, v5);
  memcpy((v1 + 16), a1, 0x60uLL);
  sub_225F4C4A4(a1);
  return v4;
}

uint64_t sub_2260266A4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);

  if ((*(a2 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 16) = *(a1 + 16);
  }

  else if ((*(a1 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a2 + 16);
    *(a2 + 16) = *(a1 + 16);
  }

  else
  {
    v2 = *(a1 + 24);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    *(a2 + 16) = *(a1 + 16);
    *(a2 + 24) = v2;
    sub_225EF5990(v3, v4);
  }

  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);

  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);

  *(a2 + 64) = *(a1 + 64);
  if ((*(a2 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 72) = *(a1 + 72);
  }

  else if ((*(a1 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a2 + 72);
    *(a2 + 72) = *(a1 + 72);
  }

  else
  {
    v5 = *(a1 + 80);
    v6 = *(a2 + 72);
    v7 = *(a2 + 80);
    *(a2 + 72) = *(a1 + 72);
    *(a2 + 80) = v5;
    sub_225EF5990(v6, v7);
  }

  *(a2 + 88) = *(a1 + 88);

  return a2;
}

uint64_t CESRAsrReplayWorker.runTranscription()()
{
  v1[13] = v0;
  v1[4] = v1;
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = 0;
  v1[8] = 0;
  v1[2] = 0;
  v1[3] = 0;
  v2 = sub_226098C58();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[5] = v0;

  return MEMORY[0x2822009F8](sub_226026A30, 0, 0);
}

uint64_t sub_226026A30(uint64_t a1)
{
  v31 = v1;
  *(v1 + 32) = v1;
  if (sub_226099E58())
  {
    v2 = v25[20];
    v16 = v25[14];
    v17 = v25[13];
    v15 = v25[15];
    v3 = sub_226025E84();
    (*(v15 + 16))(v2, v3, v16);

    v23 = sub_226098C48();
    v24 = sub_22609A078();
    v19 = swift_allocObject();
    *(v19 + 16) = 32;
    v20 = swift_allocObject();
    *(v20 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_22602EE94;
    *(v18 + 24) = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_225EF7B84;
    *(v21 + 24) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v22 = v4;

    *v22 = sub_225EF7434;
    v22[1] = v19;

    v22[2] = sub_225EF7434;
    v22[3] = v20;

    v22[4] = sub_225EF7B90;
    v22[5] = v21;
    sub_225EF5418();

    if (os_log_type_enabled(v23, v24))
    {
      buf = sub_22609A188();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v13 = sub_225EF5468(0, v11, v11);
      v14 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v26 = buf;
      v27 = v13;
      v28 = v14;
      sub_225EF54BC(2, &v26);
      sub_225EF54BC(1, &v26);
      v29 = sub_225EF7434;
      v30 = v19;
      sub_225EF73E8(&v29, &v26, &v27, &v28);
      v29 = sub_225EF7434;
      v30 = v20;
      sub_225EF73E8(&v29, &v26, &v27, &v28);
      v29 = sub_225EF7B90;
      v30 = v21;
      sub_225EF73E8(&v29, &v26, &v27, &v28);
      _os_log_impl(&dword_225EEB000, v23, v24, "ReplayId: %s asked to stop.", buf, 0xCu);
      sub_225EF7AF4(v13, 0, v11);
      sub_225EF7AF4(v14, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v9 = v25[20];
    v10 = v25[14];
    v8 = v25[15];
    MEMORY[0x277D82BD8](v23);
    (*(v8 + 8))(v9, v10);
    sub_226099D58();
    sub_225F7D2F0();
    swift_allocError();
    sub_226099858();
    swift_willThrow();

    v5 = *(v25[4] + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v25[21] = v7;
    *v7 = v25[4];
    v7[1] = sub_2260270F0;

    return sub_22602920C();
  }
}

uint64_t sub_2260270F0(uint64_t a1)
{
  v6 = *v2;
  v6[4] = *v2;
  v6[22] = a1;
  v6[23] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_226028340, 0, 0);
  }

  else
  {
    v6[7] = a1;
    v3 = swift_task_alloc();
    v6[24] = v3;
    *v3 = v6[4];
    v3[1] = sub_2260272C8;

    return sub_22602AA08(a1);
  }
}

uint64_t sub_2260272C8(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[25] = a1;
  v5[26] = v1;

  if (v1)
  {
    v3 = sub_2260289A8;
  }

  else
  {
    v3 = sub_226027438;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226027438(double a1)
{
  v73 = v1;
  v2 = v1[25];
  v49 = v1[19];
  v52 = v1[15];
  v53 = v1[14];
  v55 = v1[13];
  v1[4] = v1;
  v1[8] = v2;
  v50 = sub_22602D2B4(v2, a1);
  v51 = v3;
  v1[2] = v50;
  v1[3] = v3;
  v4 = sub_226025E84();
  v54 = *(v52 + 16);
  v54(v49, v4, v53);

  v61 = sub_226098C48();
  v62 = sub_22609A078();
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_22602EE94;
  *(v56 + 24) = v55;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_225EF7B84;
  *(v59 + 24) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v60 = v5;

  *v60 = sub_225EF7434;
  v60[1] = v57;

  v60[2] = sub_225EF7434;
  v60[3] = v58;

  v60[4] = sub_225EF7B90;
  v60[5] = v59;
  sub_225EF5418();

  if (os_log_type_enabled(v61, v62))
  {
    v6 = *(v48 + 208);
    buf = sub_22609A188();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v46 = sub_225EF5468(0, v44, v44);
    v47 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v68 = buf;
    v69 = v46;
    v70 = v47;
    sub_225EF54BC(2, &v68);
    sub_225EF54BC(1, &v68);
    v71 = sub_225EF7434;
    v72 = v57;
    sub_225EF73E8(&v71, &v68, &v69, &v70);
    if (v6)
    {
    }

    v71 = sub_225EF7434;
    v72 = v58;
    sub_225EF73E8(&v71, &v68, &v69, &v70);
    v71 = sub_225EF7B90;
    v72 = v59;
    sub_225EF73E8(&v71, &v68, &v69, &v70);
    _os_log_impl(&dword_225EEB000, v61, v62, "ReplayId: %s", buf, 0xCu);
    sub_225EF7AF4(v46, 0, v44);
    sub_225EF7AF4(v47, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    v43 = 0;
  }

  else
  {

    v43 = *(v48 + 208);
  }

  v32 = *(v48 + 152);
  v8 = *(v48 + 144);
  v34 = *(v48 + 112);
  v31 = *(v48 + 120);
  MEMORY[0x277D82BD8](v61);
  v33 = *(v31 + 8);
  v33(v32, v34);
  v9 = sub_226025E84();
  v54(v8, v9, v34);
  sub_2260998E8();
  v35 = swift_allocObject();
  *(v35 + 16) = v50;
  *(v35 + 24) = v51;
  oslog = sub_226098C48();
  v42 = sub_22609A078();
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_22602EE9C;
  *(v36 + 24) = v35;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_225EF7B84;
  *(v39 + 24) = v36;
  sub_22609A4F8();
  v40 = v10;

  *v40 = sub_225EF7434;
  v40[1] = v37;

  v40[2] = sub_225EF7434;
  v40[3] = v38;

  v40[4] = sub_225EF7B90;
  v40[5] = v39;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v42))
  {
    v28 = sub_22609A188();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v29 = sub_225EF5468(0, v27, v27);
    v30 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v63 = v28;
    v64 = v29;
    v65 = v30;
    sub_225EF54BC(2, &v63);
    sub_225EF54BC(1, &v63);
    v66 = sub_225EF7434;
    v67 = v37;
    sub_225EF73E8(&v66, &v63, &v64, &v65);
    if (v43)
    {
    }

    v66 = sub_225EF7434;
    v67 = v38;
    sub_225EF73E8(&v66, &v63, &v64, &v65);
    v66 = sub_225EF7B90;
    v67 = v39;
    sub_225EF73E8(&v66, &v63, &v64, &v65);
    _os_log_impl(&dword_225EEB000, oslog, v42, "Transcript: %s", v28, 0xCu);
    sub_225EF7AF4(v29, 0, v27);
    sub_225EF7AF4(v30, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    v26 = 0;
  }

  else
  {

    v26 = v43;
  }

  v21 = *(v48 + 144);
  v11 = *(v48 + 136);
  v22 = *(v48 + 112);
  MEMORY[0x277D82BD8](oslog);
  v33(v21, v22);
  v12 = sub_226025E84();
  v54(v11, v12, v22);
  log = sub_226098C48();
  v23 = sub_22609A0A8();
  v25 = sub_22609A4F8();
  if (os_log_type_enabled(log, v23))
  {
    v17 = sub_22609A188();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v18 = sub_225EF5468(0, v16, v16);
    v19 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v48 + 72) = v17;
    *(v48 + 80) = v18;
    *(v48 + 88) = v19;
    sub_225EF54BC(0, (v48 + 72));
    sub_225EF54BC(0, (v48 + 72));
    *(v48 + 96) = v25;
    v20 = swift_task_alloc();
    v20[2] = v48 + 72;
    v20[3] = v48 + 80;
    v20[4] = v48 + 88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v26)
    {
    }

    _os_log_impl(&dword_225EEB000, log, v23, "Finished running ASR Replay transcription.", v17, 2u);
    sub_225EF7AF4(v18, 0, v16);
    sub_225EF7AF4(v19, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v15 = *(v48 + 136);
  v14 = *(v48 + 112);
  MEMORY[0x277D82BD8](log);
  v33(v15, v14);

  v13 = *(*(v48 + 32) + 8);

  return v13(v50, v51);
}

uint64_t sub_226028340()
{
  v32 = v0;
  v0[4] = v0;
  v18 = v0[23];
  v1 = v0[16];
  v16 = v0[15];
  v17 = v0[14];
  v2 = v18;
  v0[6] = v18;
  v3 = sub_226025E84();
  (*(v16 + 16))(v1, v3, v17);
  v4 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v25 = sub_226098C48();
  v26 = sub_22609A098();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22602A774;
  *(v20 + 24) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225EF7B84;
  *(v23 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v24 = v5;

  *v24 = sub_225EF7434;
  v24[1] = v21;

  v24[2] = sub_225EF7434;
  v24[3] = v22;

  v24[4] = sub_225EF7B90;
  v24[5] = v23;
  sub_225EF5418();

  if (os_log_type_enabled(v25, v26))
  {
    buf = sub_22609A188();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v13 = sub_225EF5468(0, v11, v11);
    v14 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v27 = buf;
    v28 = v13;
    v29 = v14;
    sub_225EF54BC(2, &v27);
    sub_225EF54BC(1, &v27);
    v30 = sub_225EF7434;
    v31 = v21;
    sub_225EF73E8(&v30, &v27, &v28, &v29);
    v30 = sub_225EF7434;
    v31 = v22;
    sub_225EF73E8(&v30, &v27, &v28, &v29);
    v30 = sub_225EF7B90;
    v31 = v23;
    sub_225EF73E8(&v30, &v27, &v28, &v29);
    _os_log_impl(&dword_225EEB000, v25, v26, "Task interrupted: %s", buf, 0xCu);
    sub_225EF7AF4(v13, 0, v11);
    sub_225EF7AF4(v14, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v9 = v15[16];
  v10 = v15[14];
  v8 = v15[15];
  MEMORY[0x277D82BD8](v25);
  (*(v8 + 8))(v9, v10);
  swift_willThrow();

  v6 = *(v15[4] + 8);

  return v6();
}

uint64_t sub_2260289A8()
{
  v32 = v0;
  v0[4] = v0;

  v18 = v0[26];
  v1 = v0[16];
  v16 = v0[15];
  v17 = v0[14];
  v2 = v18;
  v0[6] = v18;
  v3 = sub_226025E84();
  (*(v16 + 16))(v1, v3, v17);
  v4 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v25 = sub_226098C48();
  v26 = sub_22609A098();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22602A774;
  *(v20 + 24) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225EF7B84;
  *(v23 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v24 = v5;

  *v24 = sub_225EF7434;
  v24[1] = v21;

  v24[2] = sub_225EF7434;
  v24[3] = v22;

  v24[4] = sub_225EF7B90;
  v24[5] = v23;
  sub_225EF5418();

  if (os_log_type_enabled(v25, v26))
  {
    buf = sub_22609A188();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v13 = sub_225EF5468(0, v11, v11);
    v14 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v27 = buf;
    v28 = v13;
    v29 = v14;
    sub_225EF54BC(2, &v27);
    sub_225EF54BC(1, &v27);
    v30 = sub_225EF7434;
    v31 = v21;
    sub_225EF73E8(&v30, &v27, &v28, &v29);
    v30 = sub_225EF7434;
    v31 = v22;
    sub_225EF73E8(&v30, &v27, &v28, &v29);
    v30 = sub_225EF7B90;
    v31 = v23;
    sub_225EF73E8(&v30, &v27, &v28, &v29);
    _os_log_impl(&dword_225EEB000, v25, v26, "Task interrupted: %s", buf, 0xCu);
    sub_225EF7AF4(v13, 0, v11);
    sub_225EF7AF4(v14, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v9 = v15[16];
  v10 = v15[14];
  v8 = v15[15];
  MEMORY[0x277D82BD8](v25);
  (*(v8 + 8))(v9, v10);
  swift_willThrow();

  v6 = *(v15[4] + 8);

  return v6();
}

uint64_t sub_22602901C(void *a1)
{
  swift_beginAccess();
  v7 = a1[2];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[11];
  v6 = a1[12];
  sub_2260998E8();
  sub_226025C4C(v3, v4);
  sub_2260998E8();
  sub_2260998E8();
  sub_226025C4C(v5, v6);
  sub_2260998E8();
  swift_endAccess();
  sub_2260998E8();

  sub_225F4C1F8(v3, v4);

  sub_225F4C1F8(v5, v6);

  return v7;
}

uint64_t sub_226029128(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v6 = a1;
  v7 = a2;
  if (a2)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_226099AA8();
    v9 = v2;
  }

  return v8;
}

uint64_t sub_22602920C()
{
  v1[122] = v0;
  v1[116] = v1;
  v1[117] = 0;
  v1[119] = 0;
  v1[121] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0);
  v1[123] = swift_task_alloc();
  v2 = sub_2260992A8();
  v1[124] = v2;
  v1[125] = *(v2 - 8);
  v1[126] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90);
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[117] = v0;

  return MEMORY[0x2822009F8](sub_226029398, 0, 0);
}

uint64_t sub_226029398()
{
  v26 = *(v0 + 1024);
  v29 = *(v0 + 976);
  *(v0 + 928) = v0;
  v27 = sub_226098E68();
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 1);
  swift_beginAccess();
  memcpy((v0 + 16), (v29 + 16), 0x60uLL);
  sub_225F4C240(v0 + 16, v0 + 112);
  swift_endAccess();
  v30 = *(v0 + 80);
  sub_225F4C4A4((v0 + 16));
  if (v30)
  {
    v21 = v25[122];
    v22 = objc_opt_self();
    swift_beginAccess();
    memcpy(v25 + 74, (v21 + 16), 0x60uLL);
    sub_225F4C240((v25 + 74), (v25 + 86));
    swift_endAccess();
    sub_2260998E8();
    sub_225F4C4A4(v25 + 74);
    v23 = sub_2260999F8();

    v24 = [v22 speechProfilePathsWithLanguage_];
    MEMORY[0x277D82BD8](v23);
    if (v24)
    {
      v19 = sub_226099C88();
      MEMORY[0x277D82BD8](v24);
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRAsrReplayWorker.swift", 55, 2, 79, 0);
    }

    v25[119] = v20;
    v25[120] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    v17 = sub_226098948();
    sub_225F3006C();
    v18 = sub_226099BF8();
    v16 = v25[128];
    v15 = v25[127];
    v25[121] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
    v14 = swift_task_alloc();
    v12 = *(*(v17 - 8) + 56);
    v12(v14, 1);
    v13 = swift_task_alloc();
    (v12)(v13, 1, 1, v17);
    sub_225F49850();
    sub_225F49850();
    sub_225F49850();
    sub_225F49850();
    sub_226098DF8();

    (v28)(v15, 0, 1, v27);
    sub_22602F1F4(v15, v16);
  }

  v7 = v25[122];
  v2 = sub_226098AB8();
  v25[129] = v2;
  v6 = *(v2 - 8);
  v25[130] = v6;
  v25[131] = *(v6 + 64);
  v10 = swift_task_alloc();
  v25[132] = v10;
  swift_beginAccess();
  memcpy(v25 + 26, (v7 + 16), 0x60uLL);
  sub_225F4C240((v25 + 26), (v25 + 38));
  swift_endAccess();
  v8 = v25[30];
  v9 = v25[31];
  sub_2260998E8();
  sub_225F4C4A4(v25 + 26);
  v25[110] = v8;
  v25[111] = v9;
  v25[112] = sub_226099AA8();
  v25[113] = v3;
  v25[114] = sub_226099AA8();
  v25[115] = v4;
  sub_225F2CF00();
  sub_225F381C4();
  sub_22609A208();
  sub_225EFE6BC((v25 + 114));
  sub_225EFE6BC((v25 + 112));
  sub_225EFE6BC((v25 + 110));
  sub_226098A88();
  v25[133] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DA8, &qword_2260A0FD0);
  v11 = swift_task_alloc();
  v25[134] = v11;
  v25[135] = sub_226099078();
  v5 = swift_task_alloc();
  v25[136] = v5;
  *v5 = v25[116];
  v5[1] = sub_226029C20;

  return MEMORY[0x28212BD30](v11, v10);
}

uint64_t sub_226029C20()
{
  *(*v0 + 928) = *v0;

  return MEMORY[0x2822009F8](sub_226029D38, 0, 0);
}

uint64_t sub_226029D38()
{
  v1 = v0[134];
  v2 = v0[130];
  v3 = v0[129];
  v0[116] = v0;
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v11 = v18[132];
    v10 = v18[129];
    v12 = v18[128];
    v9 = v18[130];
    sub_22602EEA8(v18[134]);

    sub_22602EF50();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    (*(v9 + 8))(v11, v10);

    sub_226022FCC(v12);

    v6 = v13;
    v5 = *(v18[116] + 8);
  }

  else
  {
    v16 = v18[126];
    v15 = v18[124];
    v14 = v18[125];
    (*(v18[130] + 32))(v18[133]);

    sub_2260992B8();
    v18[137] = sub_226099298();
    (*(v14 + 104))(v16, *MEMORY[0x277CDCC60], v15);
    v17 = (MEMORY[0x277CDCC48] + *MEMORY[0x277CDCC48]);
    v4 = swift_task_alloc();
    v5 = v17;
    v18[138] = v4;
    *v4 = v18[116];
    v4[1] = sub_22602A028;
    v6 = v18[126];
  }

  return v5(v6);
}

uint64_t sub_22602A028(uint64_t a1)
{
  v6 = *v1;
  v4 = *(*v1 + 1008);
  v3 = *(*v1 + 1000);
  v5 = *(*v1 + 992);
  *(v6 + 928) = *v1;
  *(v6 + 1112) = a1;

  (*(v3 + 8))(v4, v5);

  return MEMORY[0x2822009F8](sub_22602A1C8, 0, 0);
}

uint64_t sub_22602A1C8()
{
  v1 = v0[139];
  v0[116] = v0;
  v0[118] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DB8, &qword_2260A0FD8);
  sub_22602EFCC();
  sub_22602F054();
  v35 = sub_226099C38();
  sub_225EFE6E8(v0 + 118);
  if (v35)
  {
    v21 = v34[133];
    v22 = v34[132];
    v19 = v34[129];
    v23 = v34[128];
    v24 = v34[127];
    v25 = v34[123];
    v11 = v34[122];
    v10 = v34[130];
    v18 = swift_task_alloc();
    (*(v10 + 16))(v18, v22, v19);
    type metadata accessor for CoreEmbeddedSpeechAnalyzer();
    swift_beginAccess();
    memcpy(v34 + 50, (v11 + 16), 0x60uLL);
    sub_225F4C240((v34 + 50), (v34 + 62));
    swift_endAccess();
    v12 = v34[56];
    v13 = v34[57];
    sub_2260998E8();
    sub_225F4C4A4(v34 + 50);
    has_malloc_size = _swift_stdlib_has_malloc_size();
    static CoreEmbeddedSpeechAnalyzer.taskHint(fromTaskString:detectUtterances:)(v12, v13, has_malloc_size & 1, v25);

    v6 = sub_226099808();
    (*(*(v6 - 8) + 56))(v25, 0, 1);
    sub_22602F0CC(v23, v24);
    v17 = sub_226098E98();
    sub_22609A4F8();
    v15 = v7;
    v14 = *(v17 - 8);
    v16 = *(v14 + 104);
    v16();
    (v16)(v15 + *(v14 + 72), *MEMORY[0x277CDCAB8], v17);
    sub_225EF5418();
    sub_2260203BC(v8);
    sub_226099F08();
    sub_22602A7C0();
    sub_22602A99C();
    v26 = sub_226099058();

    v20 = *(v10 + 8);
    v20(v21, v19);
    v20(v22, v19);
    sub_226022FCC(v23);

    v3 = v26;
    v4 = *(v34[116] + 8);
  }

  else
  {
    v28 = v34[133];
    v31 = v34[132];
    v29 = v34[129];
    v32 = v34[128];
    v27 = v34[130];
    sub_22602EF50();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
    v30 = *(v27 + 8);
    v30(v28, v29);

    v30(v31, v29);

    sub_226022FCC(v32);

    v3 = v33;
    v4 = *(v34[116] + 8);
  }

  return v4(v3);
}

uint64_t sub_22602A7C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E58, &qword_2260A11E0);
  v10 = sub_226098FC8();
  v7 = *(v10 - 8);
  v8 = *(v7 + 72);
  v0 = swift_allocObject();
  sub_22602DBC4(v0, 3);
  v9 = v1;
  v11 = *(v7 + 104);
  v11();
  (v11)(v9 + v8, *MEMORY[0x277CDCB10], v10);
  (v11)(v9 + 2 * v8, *MEMORY[0x277CDCB28], v10);
  sub_225F30C00();
  v12 = v2;
  if (sub_225F31698(v2))
  {
    return sub_22602DC5C(v12, v3);
  }

  v5 = MEMORY[0x277D84FA0];

  return v5;
}

uint64_t sub_22602A99C()
{
  v4 = sub_22602E104(0);
  if (sub_225F31698(v4))
  {
    return sub_22602E1F4(v4, v0);
  }

  v2 = MEMORY[0x277D84FA0];

  return v2;
}

uint64_t sub_22602AA08(uint64_t a1)
{
  *(v2 + 1128) = v1;
  *(v2 + 1120) = a1;
  *(v2 + 1040) = v2;
  *(v2 + 1048) = 0;
  *(v2 + 1056) = 0;
  *(v2 + 1064) = 0;
  *(v2 + 976) = 0;
  *(v2 + 984) = 0;
  *(v2 + 1072) = 0;
  *(v2 + 1520) = 0;
  *(v2 + 1080) = 0;
  *(v2 + 992) = 0;
  *(v2 + 1000) = 0;
  *(v2 + 1024) = 0;
  *(v2 + 1032) = 0;
  *(v2 + 1096) = 0;
  *(v2 + 1104) = 0;
  v3 = sub_226098FA8();
  *(v2 + 1136) = v3;
  *(v2 + 1144) = *(v3 - 8);
  *(v2 + 1152) = swift_task_alloc();
  *(v2 + 1160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00);
  *(v2 + 1168) = swift_task_alloc();
  *(v2 + 1176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AF0, &qword_2260A0B10);
  *(v2 + 1184) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DD0, &unk_2260A0FE0);
  *(v2 + 1192) = v4;
  *(v2 + 1200) = *(v4 - 8);
  *(v2 + 1208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A8, &unk_2260A0930);
  *(v2 + 1216) = swift_task_alloc();
  sub_226098DD8();
  *(v2 + 1224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B0, &unk_2260A0FF0);
  *(v2 + 1232) = swift_task_alloc();
  v5 = sub_226099258();
  *(v2 + 1240) = v5;
  *(v2 + 1248) = *(v5 - 8);
  *(v2 + 1256) = swift_task_alloc();
  sub_226099DA8();
  *(v2 + 1264) = swift_task_alloc();
  v6 = sub_226099288();
  *(v2 + 1272) = v6;
  *(v2 + 1280) = *(v6 - 8);
  *(v2 + 1288) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B90, &qword_2260A0C30);
  *(v2 + 1296) = v7;
  *(v2 + 1304) = *(v7 - 8);
  *(v2 + 1312) = swift_task_alloc();
  v8 = sub_2260990A8();
  *(v2 + 1320) = v8;
  *(v2 + 1328) = *(v8 - 8);
  *(v2 + 1336) = swift_task_alloc();
  *(v2 + 1344) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A20, &unk_2260A0A10);
  *(v2 + 1352) = v9;
  *(v2 + 1360) = *(v9 - 8);
  *(v2 + 1368) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  *(v2 + 1376) = v10;
  *(v2 + 1384) = *(v10 - 8);
  *(v2 + 1392) = swift_task_alloc();
  *(v2 + 1400) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A28, &qword_2260A1000);
  *(v2 + 1408) = v11;
  *(v2 + 1416) = *(v11 - 8);
  *(v2 + 1424) = swift_task_alloc();
  *(v2 + 1432) = swift_task_alloc();
  *(v2 + 1048) = a1;
  *(v2 + 1056) = v1;

  return MEMORY[0x2822009F8](sub_22602B098, 0, 0);
}

uint64_t sub_22602B098()
{
  v67 = v0[141];
  v0[130] = v0;
  sub_226099238();
  v62 = sub_226099228();
  v0[180] = v62;
  v0[133] = v62;
  swift_beginAccess();
  memcpy(v0 + 26, (v67 + 16), 0x60uLL);
  sub_225F4C240((v0 + 26), (v0 + 50));
  swift_endAccess();
  memcpy(v0 + 38, v0 + 26, 0x60uLL);
  sub_226025C4C(v0[47], v0[48]);
  sub_225F4C4A4(v0 + 38);
  sub_226099168();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DD8, &unk_2260A1008);
  sub_22609A4F8();
  v64 = v1;
  v63 = *(v66 + 48);
  sub_2260991C8();
  swift_beginAccess();
  memcpy(v0 + 14, (v67 + 16), 0x60uLL);
  sub_225F4C240((v0 + 14), (v0 + 62));
  swift_endAccess();
  v65 = v0[25];
  sub_2260998E8();
  sub_225F4C4A4(v0 + 14);
  *(v64 + v63) = v65;
  sub_225EF5418();
  sub_2260991E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_22602F41C();
  sub_2260998A8();
  sub_226099198();
  swift_beginAccess();
  memcpy(v0 + 2, (v67 + 16), 0x60uLL);
  sub_225F4C240((v0 + 2), (v0 + 74));
  swift_endAccess();
  v68 = v0[4];
  v0[181] = v68;
  v69 = v0[5];
  v0[182] = v69;
  sub_226025C4C(v68, v69);
  sub_225F4C4A4(v0 + 2);
  if ((v69 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_22602EF50();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    v14 = v17;
    v15 = *(*(v61 + 1040) + 8);

    return v15(v14);
  }

  v53 = *(v61 + 1432);
  v54 = *(v61 + 1424);
  v55 = *(v61 + 1408);
  v59 = *(v61 + 1400);
  v57 = *(v61 + 1392);
  v58 = *(v61 + 1376);
  v2 = *(v61 + 1368);
  v50 = v2;
  v51 = *(v61 + 1352);
  v52 = *(v61 + 1416);
  v56 = *(v61 + 1384);
  v49 = *(v61 + 1360);
  *(v61 + 976) = v68;
  *(v61 + 984) = v69;
  sub_225F81A04(v2);
  sub_226099DB8();
  (*(v49 + 8))(v50, v51);
  (*(v52 + 32))(v53, v54, v55);
  (*(v56 + 32))(v59, v57, v58);
  sub_226025568();
  v3 = sub_226025CE0(3, 1u, 0, 16000.0);
  v60 = v3;
  *(v61 + 1464) = v3;
  if (!v3)
  {
    v22 = *(v61 + 1432);
    v23 = *(v61 + 1408);
    v20 = *(v61 + 1400);
    v19 = *(v61 + 1376);
    v21 = *(v61 + 1416);
    v18 = *(v61 + 1384);
    v24 = sub_22609A4F8();
    (*(v18 + 8))(v20, v19);
    (*(v21 + 8))(v22, v23);
    sub_225EF5990(v68, v69);

    v14 = v24;
    v15 = *(*(v61 + 1040) + 8);

    return v15(v14);
  }

  *(v61 + 1072) = v3;
  v48 = MEMORY[0x22AA71AA0](v68, v69) / 2;
  if (v48 < 0)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
  }

  if (v48 > 0xFFFFFFFFLL)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
  }

  *(v61 + 1520) = v48;
  sub_225EF9338();
  MEMORY[0x277D82BE0](v60);
  v5 = sub_225EF939C(v60, v48);
  v47 = v5;
  *(v61 + 1472) = v5;
  if (!v5)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CESRAsrReplayWorker.swift", 55, 2, 110, 0);
  }

  v38 = *(v61 + 1432);
  v45 = *(v61 + 1424);
  v44 = *(v61 + 1408);
  v26 = *(v61 + 1344);
  v28 = *(v61 + 1336);
  v27 = *(v61 + 1320);
  v30 = *(v61 + 1312);
  v31 = *(v61 + 1296);
  v42 = *(v61 + 1288);
  v43 = *(v61 + 1272);
  v34 = *(v61 + 1256);
  v33 = *(v61 + 1240);
  v35 = *(v61 + 1232);
  v46 = *(v61 + 1216);
  v36 = *(v61 + 1128);
  v39 = *(v61 + 1120);
  v37 = *(v61 + 1416);
  v25 = *(v61 + 1328);
  v29 = *(v61 + 1304);
  v41 = *(v61 + 1280);
  v32 = *(v61 + 1248);
  *(v61 + 1080) = v5;
  [v5 int16ChannelData];
  [v60 channelCount];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B78, &qword_2260A0C20);
  v6 = sub_2260999E8();
  *(v61 + 992) = v6;
  *(v61 + 1000) = v7;
  *(v61 + 1008) = v6;
  *(v61 + 1016) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786B80, &qword_2260A0C28);
  sub_225EF9528();
  sub_226099FE8();
  [v47 0x1FC17A2F0];
  *(v61 + 1024) = sub_22609A1A8();
  *(v61 + 1032) = v8;
  [v47 setFrameLength_];
  sub_2260989A8();
  MEMORY[0x277D82BE0](v47);
  sub_226099098();
  (*(v25 + 16))(v28, v26, v27);
  sub_226099DD8();
  (*(v29 + 8))(v30, v31);
  sub_226099DE8();
  sub_226099D78();
  (*(v32 + 104))(v34, *MEMORY[0x277CDCC10], v33);
  v9 = sub_226099248();
  (*(*(v9 - 8) + 56))(v35, 1);
  sub_226099278();
  sub_226098D78();
  swift_beginAccess();
  memcpy((v61 + 688), (v36 + 16), 0x60uLL);
  sub_225F4C240(v61 + 688, v61 + 784);
  swift_endAccess();
  sub_2260998E8();
  sub_225F4C4A4((v61 + 688));
  sub_226098DB8();
  (*(v37 + 16))(v45, v38, v44);
  MEMORY[0x277D82BE0](v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B8, &qword_2260A0940);
  sub_22609A4F8();
  v40 = v10;

  v11 = sub_22602F49C();
  *v40 = v39;
  v40[1] = v11;
  sub_225EF5418();
  (*(v41 + 16))(v46, v42, v43);
  (*(v41 + 56))(v46, 0, 1, v43);

  sub_22601FB7C();
  sub_22602D29C();
  v12 = sub_226098D48();
  *(v61 + 1480) = v12;
  *(v61 + 1096) = v12;
  v13 = swift_task_alloc();
  *(v61 + 1488) = v13;
  *v13 = *(v61 + 1040);
  v13[1] = sub_22602C1B8;

  return MEMORY[0x28212BBF0]();
}

uint64_t sub_22602C1B8()
{
  v4 = *v1;
  *(v4 + 1040) = *v1;
  *(v4 + 1496) = v0;

  if (v0)
  {
    v2 = sub_22602CBF4;
  }

  else
  {
    v2 = sub_22602C324;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22602C324()
{
  v0[130] = v0;
  v0[138] = sub_22609A4F8();
  sub_226098FD8();
  v0[188] = swift_getOpaqueTypeConformance2();
  sub_226099E98();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = swift_task_alloc();
  v5[189] = v1;
  *v1 = v5[130];
  v1[1] = sub_22602C4D8;
  v2 = v5[149];
  v3 = v5[146];

  return MEMORY[0x282200310](v3, 0, 0, v5 + 139, v2, AssociatedConformanceWitness);
}

uint64_t sub_22602C4D8()
{
  *(*v1 + 1040) = *v1;

  if (v0)
  {
    v2 = sub_22602CF30;
  }

  else
  {
    v2 = sub_22602C640;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22602C640()
{
  v1 = v0[146];
  v2 = v0[143];
  v3 = v0[142];
  v0[130] = v0;
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v24 = v31[182];
    v23 = v31[181];
    v21 = v31[179];
    v22 = v31[176];
    v18 = v31[175];
    v19 = v31[172];
    v13 = v31[168];
    v14 = v31[165];
    v10 = v31[161];
    v11 = v31[159];
    v15 = v31[184];
    v16 = v31[183];
    v20 = v31[177];
    v17 = v31[173];
    v12 = v31[166];
    v9 = v31[160];
    (*(v31[150] + 8))(v31[151], v31[149]);
    v25 = v31[138];
    sub_2260998E8();
    sub_225EFE6E8(v31 + 138);

    (*(v9 + 8))(v10, v11);
    (*(v12 + 8))(v13, v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    (*(v17 + 8))(v18, v19);
    (*(v20 + 8))(v21, v22);
    sub_225EF5990(v23, v24);

    v7 = *(v31[130] + 8);

    return v7(v25);
  }

  else
  {
    v28 = v31[145];
    v26 = v31[144];
    v29 = v31[142];
    v27 = v31[143];
    (*(v27 + 32))();
    (*(v27 + 16))(v26, v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DF0, &qword_2260A1018);
    sub_226099CE8();
    (*(v27 + 8))(v28, v29);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v4 = swift_task_alloc();
    v31[189] = v4;
    *v4 = v31[130];
    v4[1] = sub_22602C4D8;
    v5 = v31[149];
    v6 = v31[146];

    return MEMORY[0x282200310](v6, 0, 0, v31 + 139, v5, AssociatedConformanceWitness);
  }
}

uint64_t sub_22602CBF4()
{
  v9 = v0[184];
  v10 = v0[183];
  v18 = v0[182];
  v17 = v0[181];
  v15 = v0[179];
  v14 = v0[177];
  v16 = v0[176];
  v12 = v0[175];
  v11 = v0[173];
  v13 = v0[172];
  v7 = v0[168];
  v6 = v0[166];
  v8 = v0[165];
  v4 = v0[161];
  v3 = v0[160];
  v5 = v0[159];
  v0[130] = v0;

  (*(v3 + 8))(v4, v5);
  (*(v6 + 8))(v7, v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  (*(v11 + 8))(v12, v13);
  (*(v14 + 8))(v15, v16);
  sub_225EF5990(v17, v18);

  v1 = *(v0[130] + 8);

  return v1();
}

uint64_t sub_22602CF30()
{
  v12 = v0[184];
  v13 = v0[183];
  v21 = v0[182];
  v20 = v0[181];
  v18 = v0[179];
  v17 = v0[177];
  v19 = v0[176];
  v15 = v0[175];
  v14 = v0[173];
  v16 = v0[172];
  v10 = v0[168];
  v9 = v0[166];
  v11 = v0[165];
  v7 = v0[161];
  v6 = v0[160];
  v8 = v0[159];
  v1 = v0[151];
  v2 = v0[150];
  v3 = v0[149];
  v0[130] = v0;
  (*(v2 + 8))(v1, v3);
  sub_225EFE6E8(v0 + 138);

  (*(v6 + 8))(v7, v8);
  (*(v9 + 8))(v10, v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  (*(v14 + 8))(v15, v16);
  (*(v17 + 8))(v18, v19);
  sub_225EF5990(v20, v21);

  v4 = *(v0[130] + 8);

  return v4();
}

uint64_t sub_22602D2B4(uint64_t a1, double a2)
{
  v64 = a1;
  v53 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69[1] = 0;
  v69[0] = 0;
  v67 = 0;
  v54 = sub_2260990C8();
  v55 = *(v54 - 8);
  v56 = v55;
  MEMORY[0x28223BE20](0);
  v57 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_226098FA8();
  v59 = *(v58 - 8);
  v60 = v59;
  MEMORY[0x28223BE20](v58 - 8);
  v61 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v61;
  v62 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v63 = v16 - v62;
  v71 = v5;
  v70 = v2;
  sub_2260998E8();
  v68[1] = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DF0, &qword_2260A1018);
  sub_22602F51C();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E00, &qword_2260A1020);
    sub_22609A388();
    if ((*(v60 + 48))(v63, 1, v58) == 1)
    {
      break;
    }

    (*(v60 + 32))(v61, v63, v58);
    v48 = sub_22609A4F8();
    v45 = v6;
    v47 = *(v56 + 104);
    v46 = v56 + 104;
    v47();
    (v47)(v45 + *(v56 + 72), *MEMORY[0x277CDCBA0], v54);
    sub_225EF5418();
    v68[0] = v7;
    sub_226098EE8();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E08, &qword_2260A1028);
    v50 = sub_22602F5A4();
    sub_22602F62C(v8);
    v51 = v68;
    v52 = sub_226099C38();
    (*(v56 + 8))(v57, v54);
    sub_225EFE6E8(v51);
    if (v52)
    {
      v30 = sub_226098828();
      v31 = v30;
      v25 = *(v30 - 8);
      v28 = v25;
      v32 = v25;
      v33 = v16;
      v9 = MEMORY[0x28223BE20](v16);
      v34 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v67 = v34;
      v35 = MEMORY[0x22AA72040](v9);
      v66 = v35;
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E20, &qword_2260A1030) - 8) + 64);
      v36 = v16;
      v26 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v16);
      v29 = v16 - v26;
      v37 = v16 - v26;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E28, &qword_2260A1038);
      sub_22602F6AC();
      sub_226099FE8();
      v12 = (*(v28 + 48))(v29, 1, v30);
      v38 = v31;
      v39 = v32;
      v40 = v33;
      v41 = v34;
      v42 = v35;
      v43 = v36;
      v44 = v37;
      if (v12 != 1)
      {
        v16[2] = v43;
        v16[1] = v42;
        v18 = v41;
        v20 = v40;
        v17 = v39;
        v19 = v38;
        (*(v39 + 32))(v41, v44);

        v16[3] = sub_226098818();
        v16[5] = v16;
        MEMORY[0x28223BE20](v16);
        v16[4] = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_226098808();
        sub_225F2DD4C();
        v21 = sub_226099BC8();
        v22 = v14;
        (*(v17 + 8))(v18, v19);
        (*(v60 + 8))(v61, v58);
        sub_225EFE6E8(v69);
        v23 = v21;
        v24 = v22;
        return v23;
      }

      sub_22602F734(v37);
    }

    (*(v60 + 8))(v61, v58);
  }

  sub_225EFE6E8(v69);
  v23 = 0;
  v24 = 0;
  return v23;
}

uint64_t sub_22602DB4C(uint64_t a1)
{
  sub_2260998E8();
  if (a1 > 15)
  {
    sub_22609A278();
  }

  return 0;
}

uint64_t sub_22602DBC4(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  sub_226098FC8();

  return a1;
}

uint64_t sub_22602DC5C(uint64_t a1, double a2)
{
  v47 = a1;
  v48 = sub_226098FC8();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v52 = &v22 - v51;
  v53 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v54 = &v22 - v53;
  v55 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v56 = &v22 - v55;
  if (sub_225F30FDC(v6))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E60, &qword_2260A11E8);
    v46 = sub_22609A258();
  }

  else
  {
    v45 = MEMORY[0x277D84FA0];

    v46 = v45;
  }

  v43 = v46;
  v44 = sub_225F31698(v47);
  if (v44)
  {
    for (i = 0; ; i = v41)
    {
      v40 = i;
      has_malloc_size = _swift_stdlib_has_malloc_size();
      sub_22602E69C(v40, has_malloc_size & 1, v47);
      result = sub_22602EAC0(v40, has_malloc_size & 1, v47, v56, v7);
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v33 = *(v49 + 32);
      v34 = v49 + 32;
      v10 = v33(v54, v56, v48);
      v35 = *(v43 + 40);
      sub_22601F4EC(v10);
      v11 = sub_226099958();
      v36 = v43 + 56;
      v37 = (1 << (*(v43 + 32) & 0x3F)) - 1;
      for (j = v11 & v37; ; j = (v29 + 1) & v37)
      {
        v29 = j;
        v12 = *(v36 + 8 * (j / 0x40)) & (1 << ((j % 0x40) & 0x3F));
        v30 = j;
        v31 = j / 0x40;
        v32 = 1 << ((j % 0x40) & 0x3F);
        if (!v12)
        {
          break;
        }

        v13 = (*(v49 + 16))(v52, *(v43 + 48) + v29 * *(v49 + 72), v48);
        sub_226030790(v13);
        v26 = sub_2260999D8();
        v24 = *(v49 + 8);
        v25 = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v24(v52, v48);
        v27 = v24;
        v28 = v25;
        if (v26)
        {
          v27(v54, v48);
          goto LABEL_20;
        }
      }

      v14 = v43;
      v15 = v33;
      v16 = v48;
      v17 = v54;
      v18 = v49;
      v19 = v30;
      *(v43 + 56 + 8 * v31) |= v32;
      result = v15(*(v14 + 48) + v19 * *(v18 + 72), v17, v16);
      v20 = *(v43 + 16);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_24;
      }

      *(v43 + 16) = v23;
LABEL_20:
      if (v41 == v44)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    return v43;
  }

  return result;
}

uint64_t sub_22602E104(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_2260996F8();
      v1 = sub_226099CB8();
      sub_2260998E8();
      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    sub_2260996F8();
    return v2;
  }

  return result;
}

uint64_t sub_22602E1F4(uint64_t a1, double a2)
{
  v47 = a1;
  v48 = sub_2260996F8();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v52 = &v22 - v51;
  v53 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v54 = &v22 - v53;
  v55 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v56 = &v22 - v55;
  if (sub_225F30FDC(v6))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E48, &qword_2260A11D8);
    v46 = sub_22609A258();
  }

  else
  {
    v45 = MEMORY[0x277D84FA0];

    v46 = v45;
  }

  v43 = v46;
  v44 = sub_225F31698(v47);
  if (v44)
  {
    for (i = 0; ; i = v41)
    {
      v40 = i;
      has_malloc_size = _swift_stdlib_has_malloc_size();
      sub_22602E69C(v40, has_malloc_size & 1, v47);
      result = sub_22602E6EC(v40, has_malloc_size & 1, v47, v56, v7);
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v33 = *(v49 + 32);
      v34 = v49 + 32;
      v10 = v33(v54, v56, v48);
      v35 = *(v43 + 40);
      sub_22602033C(v10);
      v11 = sub_226099958();
      v36 = v43 + 56;
      v37 = (1 << (*(v43 + 32) & 0x3F)) - 1;
      for (j = v11 & v37; ; j = (v29 + 1) & v37)
      {
        v29 = j;
        v12 = *(v36 + 8 * (j / 0x40)) & (1 << ((j % 0x40) & 0x3F));
        v30 = j;
        v31 = j / 0x40;
        v32 = 1 << ((j % 0x40) & 0x3F);
        if (!v12)
        {
          break;
        }

        v13 = (*(v49 + 16))(v52, *(v43 + 48) + v29 * *(v49 + 72), v48);
        sub_226030710(v13);
        v26 = sub_2260999D8();
        v24 = *(v49 + 8);
        v25 = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v24(v52, v48);
        v27 = v24;
        v28 = v25;
        if (v26)
        {
          v27(v54, v48);
          goto LABEL_20;
        }
      }

      v14 = v43;
      v15 = v33;
      v16 = v48;
      v17 = v54;
      v18 = v49;
      v19 = v30;
      *(v43 + 56 + 8 * v31) |= v32;
      result = v15(*(v14 + 48) + v19 * *(v18 + 72), v17, v16);
      v20 = *(v43 + 16);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_24;
      }

      *(v43 + 16) = v23;
LABEL_20:
      if (v41 == v44)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    return v43;
  }

  return result;
}

uint64_t sub_22602E69C(uint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (result < *(a3 + 16))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22602E6EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (a2)
  {
    v7 = sub_2260996F8();
    return (*(*(v7 - 8) + 16))(a4, a3 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + a1 * *(*(v7 - 8) + 72));
  }

  else
  {
    sub_22602E850(a1, a3, a5);
    v8 = v5;
    result = sub_2260996F8();
    v9 = *(result - 8);
    if (*(v9 + 64) == 8)
    {
      v13 = v8;
      (*(v9 + 16))(a4, &v13, result);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_22602E850(uint64_t a1, uint64_t a2, double a3)
{
  v26 = a1;
  v24 = a2;
  v25 = "Fatal error";
  v27 = sub_2260996F8();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v31 = v14 - v30;
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v26 >= *(v24 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * v26);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = v23;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v4 = sub_22602DB4C(82);
    v16 = &v32;
    v32 = v4;
    v33 = v5;
    v15 = 1;
    v6 = sub_226099AA8();
    v14[0] = v7;
    MEMORY[0x22AA72C20](v6);

    v8 = sub_226099AA8();
    v14[1] = v9;
    MEMORY[0x22AA72C20](v8);

    v22 = 11;
    v10 = sub_226099AA8();
    v17 = v11;
    MEMORY[0x22AA72C20](v10);

    swift_getObjectType();
    v21 = 0;
    v12 = sub_22609A638();
    v18 = v13;
    MEMORY[0x22AA72C20](v12);

    v19 = v32;
    v20 = v33;
    sub_2260998E8();
    sub_226099A88();
    sub_22609A3D8();
    __break(1u);
  }

  (*(v28 + 8))(v31, v27);
}

uint64_t sub_22602EAC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (a2)
  {
    v7 = sub_226098FC8();
    return (*(*(v7 - 8) + 16))(a4, a3 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + a1 * *(*(v7 - 8) + 72));
  }

  else
  {
    sub_22602EC24(a1, a3, a5);
    v8 = v5;
    result = sub_226098FC8();
    v9 = *(result - 8);
    if (*(v9 + 64) == 8)
    {
      v13 = v8;
      (*(v9 + 16))(a4, &v13, result);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_22602EC24(uint64_t a1, uint64_t a2, double a3)
{
  v26 = a1;
  v24 = a2;
  v25 = "Fatal error";
  v27 = sub_226098FC8();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v31 = v14 - v30;
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v26 >= *(v24 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * v26);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = v23;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v4 = sub_22602DB4C(82);
    v16 = &v32;
    v32 = v4;
    v33 = v5;
    v15 = 1;
    v6 = sub_226099AA8();
    v14[0] = v7;
    MEMORY[0x22AA72C20](v6);

    v8 = sub_226099AA8();
    v14[1] = v9;
    MEMORY[0x22AA72C20](v8);

    v22 = 11;
    v10 = sub_226099AA8();
    v17 = v11;
    MEMORY[0x22AA72C20](v10);

    swift_getObjectType();
    v21 = 0;
    v12 = sub_22609A638();
    v18 = v13;
    MEMORY[0x22AA72C20](v12);

    v19 = v32;
    v20 = v33;
    sub_2260998E8();
    sub_226099A88();
    sub_22609A3D8();
    __break(1u);
  }

  (*(v28 + 8))(v31, v27);
}

uint64_t sub_22602EEA8(uint64_t a1)
{
  v3 = sub_226098AB8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_22602EF50()
{
  v2 = qword_27D786DB0;
  if (!qword_27D786DB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602EFCC()
{
  v2 = qword_27D786DC0;
  if (!qword_27D786DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786DB8, &qword_2260A0FD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602F054()
{
  v2 = qword_27D786DC8;
  if (!qword_27D786DC8)
  {
    sub_226098AB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DC8);
    return WitnessTable;
  }

  return v2;
}

void *sub_22602F0CC(const void *a1, void *a2)
{
  v6 = sub_226098E68();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_22602F1F4(const void *a1, void *a2)
{
  v7 = sub_226098E68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t sub_22602F41C()
{
  v2 = qword_27D786DE0;
  if (!qword_27D786DE0)
  {
    sub_2260991E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602F49C()
{
  v2 = qword_27D786DE8;
  if (!qword_27D786DE8)
  {
    sub_226099078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602F51C()
{
  v2 = qword_27D786DF8;
  if (!qword_27D786DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786DF0, &qword_2260A1018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602F5A4()
{
  v2 = qword_27D786E10;
  if (!qword_27D786E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786E08, &qword_2260A1028);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602F62C(double a1)
{
  v3 = qword_27D786E18;
  if (!qword_27D786E18)
  {
    sub_2260990C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E18);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_22602F6AC()
{
  v2 = qword_27D786E30;
  if (!qword_27D786E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786E28, &qword_2260A1038);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22602F734(uint64_t a1)
{
  v3 = sub_226098828();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_22602F7F4()
{
  v2 = qword_27D786E38;
  if (!qword_27D786E38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E38);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for CESRAsrReplayWorkerError(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CESRAsrReplayWorkerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t destroy for CESRAsrReplayWorkerConfig(void *a1)
{

  if ((a1[3] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_225EF5990(a1[2], a1[3]);
  }

  if ((a1[10] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_225EF5990(a1[9], a1[10]);
  }
}

uint64_t initializeWithCopy for CESRAsrReplayWorkerConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v11 = *(a2 + 8);
  sub_2260998E8();
  *(a1 + 8) = v11;
  if ((*(a2 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    sub_225EF5A38(v8, v9);
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
  }

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 40);
  sub_2260998E8();
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 56);
  sub_2260998E8();
  *(a1 + 56) = v7;
  *(a1 + 64) = *(a2 + 64);
  if ((*(a2 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v4 = *(a2 + 72);
    v5 = *(a2 + 80);
    sub_225EF5A38(v4, v5);
    *(a1 + 72) = v4;
    *(a1 + 80) = v5;
  }

  v3 = *(a2 + 88);
  sub_2260998E8();
  result = a1;
  *(a1 + 88) = v3;
  return result;
}

uint64_t assignWithCopy for CESRAsrReplayWorkerConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v19 = *(a2 + 8);
  sub_2260998E8();
  *(a1 + 8) = v19;

  if ((*(a1 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    if ((*(a2 + 24) & 0xF000000000000000) == 0xF000000000000000)
    {
      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      v14 = *(a2 + 16);
      v15 = *(a2 + 24);
      sub_225EF5A38(v14, v15);
      *(a1 + 16) = v14;
      *(a1 + 24) = v15;
    }
  }

  else if ((*(a2 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    sub_225EF5A38(v16, v17);
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    sub_225EF5990(v2, v3);
  }

  *(a1 + 32) = *(a2 + 32);
  v12 = *(a2 + 40);
  sub_2260998E8();
  *(a1 + 40) = v12;

  *(a1 + 48) = *(a2 + 48);
  v13 = *(a2 + 56);
  sub_2260998E8();
  *(a1 + 56) = v13;

  *(a1 + 64) = *(a2 + 64);
  if ((*(a1 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    if ((*(a2 + 80) & 0xF000000000000000) == 0xF000000000000000)
    {
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v8 = *(a2 + 72);
      v9 = *(a2 + 80);
      sub_225EF5A38(v8, v9);
      *(a1 + 72) = v8;
      *(a1 + 80) = v9;
    }
  }

  else if ((*(a2 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a1 + 72);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v10 = *(a2 + 72);
    v11 = *(a2 + 80);
    sub_225EF5A38(v10, v11);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    sub_225EF5990(v4, v5);
  }

  v7 = *(a2 + 88);
  sub_2260998E8();
  *(a1 + 88) = v7;

  return a1;
}

uint64_t assignWithTake for CESRAsrReplayWorkerConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  if ((*(a1 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a1 + 16) = *(a2 + 16);
  }

  else if ((*(a2 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v2 = *(a2 + 24);
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v2;
    sub_225EF5990(v3, v4);
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  if ((*(a1 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a1 + 72) = *(a2 + 72);
  }

  else if ((*(a2 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a1 + 72);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v5 = *(a2 + 80);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = v5;
    sub_225EF5990(v6, v7);
  }

  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for CESRAsrReplayWorkerConfig(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CESRAsrReplayWorkerConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_226030694()
{
  v2 = qword_27D786E40;
  if (!qword_27D786E40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226030710(double a1)
{
  v3 = qword_27D786E50;
  if (!qword_27D786E50)
  {
    sub_2260996F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E50);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_226030790(double a1)
{
  v3 = qword_27D786E68;
  if (!qword_27D786E68)
  {
    sub_226098FC8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E68);
    return WitnessTable;
  }

  return v3;
}

uint64_t sub_2260309F4()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D76838);
  __swift_project_value_buffer(v1, qword_280D76838);
  return sub_226030A40();
}

uint64_t sub_226030A40()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESABiomeRecord.swift", 51, 2, 22, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_226030B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime;
  v7 = sub_226098A08();
  (*(*(v7 - 8) + 56))(&v6[v9], 1);
  v6[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_hasRecognizedAnything] = 0;
  sub_2260998E8();
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  sub_2260998E8();
  *(v6 + 4) = a3;
  *(v6 + 5) = a4;
  sub_2260998E8();
  *(v6 + 6) = a5;
  *(v6 + 7) = a6;

  return v16;
}

uint64_t sub_226030C7C()
{
  v2 = *(v0 + 48);
  sub_2260998E8();
  return v2;
}

uint64_t sub_226030CB4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime);
  swift_beginAccess();
  sub_226021688(v3, a1);
  return swift_endAccess();
}

uint64_t sub_226030D10(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  sub_226021688(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime);
  v7 = &v9;
  swift_beginAccess();
  sub_2260217B0(v5, v6);
  swift_endAccess();
  return sub_2260219D8(v8);
}

uint64_t sub_226030E44()
{
  v2 = (v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_hasRecognizedAnything);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_226030EA4(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_hasRecognizedAnything);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_226030F64()
{
  v2 = (v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_hasRecognizedAnything);
  swift_beginAccess();
  *v2 = 1;
  return swift_endAccess();
}

uint64_t sub_226030FC4()
{
  v60 = 0;
  v77 = 0;
  v75 = 0;
  v73 = 0;
  v72 = 0;
  v59 = 0;
  v61 = sub_226098C58();
  v62 = *(v61 - 8);
  v63 = v62;
  MEMORY[0x28223BE20](v61 - 8);
  v64 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v0;
  v65 = (v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_hasRecognizedAnything);
  v66 = &v76;
  swift_beginAccess();
  v67 = *v65;
  swift_endAccess();
  if (v67 != 1)
  {
    return v59;
  }

  v49 = 0;
  v58 = sub_226098A08();
  v44 = v58;
  v45 = *(v58 - 8);
  v56 = v45;
  v46 = v45;
  v47 = &v12;
  MEMORY[0x28223BE20](&v12);
  v48 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v48;
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640) - 8) + 64);
  v51 = &v12;
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12);
  v57 = &v12 - v52;
  v53 = &v12 - v52;
  v54 = (v3 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime);
  v55 = &v74;
  swift_beginAccess();
  sub_226021688(v54, v57);
  swift_endAccess();
  if ((*(v56 + 48))(v57, 1, v58) == 1)
  {
    sub_2260219D8(v53);
    return v59;
  }

  (*(v46 + 32))(v48, v53, v44);
  v31 = BiomeLibrary();
  swift_getObjectType();
  v29 = [v31 Siri];
  swift_getObjectType();
  v34 = [v29 Dictation];
  v30 = v34;
  v73 = v34;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v40 = 0;
  sub_2260369EC();
  v33 = &v12;
  v4 = MEMORY[0x28223BE20](&v12);
  v32 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v4);
  (*(v46 + 56))(v32, 0, 1, v44);
  v6 = sub_2260318A4(v32, v40, v40, v40, v40);
  v7 = v64;
  v36 = v6;
  v35 = v6;
  v72 = v6;
  v37 = [v34 source];
  [v37 sendEvent_];

  v8 = sub_225EFE52C();
  (*(v63 + 16))(v7, v8, v61);
  v42 = sub_226098C48();
  v38 = v42;
  v41 = sub_22609A0A8();
  v39 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v43 = sub_22609A4F8();
  if (os_log_type_enabled(v42, v41))
  {
    v9 = v59;
    v20 = sub_22609A188();
    v16 = v20;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v18 = 0;
    v21 = sub_225EF5468(0, v17, v17);
    v19 = v21;
    v22 = sub_225EF5468(v18, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v71 = v20;
    v70 = v21;
    v69 = v22;
    v23 = 0;
    v24 = &v71;
    sub_225EF54BC(0, &v71);
    sub_225EF54BC(v23, v24);
    v68 = v43;
    v25 = &v12;
    MEMORY[0x28223BE20](&v12);
    v26 = &v12 - 6;
    *(&v12 - 4) = v10;
    *(&v12 - 3) = &v70;
    *(&v12 - 2) = &v69;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v28 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v38, v39, "Biome Dictation: event is sent to Biome", v16, 2u);
      v14 = 0;
      sub_225EF7AF4(v19, 0, v17);
      sub_225EF7AF4(v22, v14, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v15 = v28;
    }
  }

  else
  {

    v15 = v59;
  }

  v12 = v15;

  (*(v63 + 8))(v64, v61);
  (*(v46 + 8))(v48, v44);
  return v12;
}

uint64_t sub_226031904()
{
  sub_225EFE6BC(v0 + 16);
  sub_225EFE6BC(v0 + 32);
  sub_225EFE6BC(v0 + 48);
  sub_2260219D8(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime);
  return v2;
}

uint64_t sub_2260319C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 88) = sub_22609A4F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  *(v9 + 96) = sub_22609A4F8();
  *(v9 + 104) = 0;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  *(v9 + 128) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
  *(v9 + 136) = sub_22609A4F8();
  *(v9 + 144) = 0;
  sub_2260998E8();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_2260998E8();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  sub_2260998E8();
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  sub_2260998E8();
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 80) = a9;

  return v19;
}

uint64_t sub_226031B68()
{
  v2 = *(v0 + 64);
  sub_2260998E8();
  return v2;
}

uint64_t sub_226031BA8()
{
  swift_beginAccess();
  v2 = *(v0 + 88);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226031BF8(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  *(v1 + 88) = a1;

  swift_endAccess();
}

uint64_t sub_226031CB4()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226031D04(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  *(v1 + 96) = a1;

  swift_endAccess();
}

uint64_t sub_226031DC0()
{
  swift_beginAccess();
  v2 = *(v0 + 104);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226031E1C(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;

  swift_endAccess();
}

uint64_t sub_226031EE8()
{
  swift_beginAccess();
  v2 = *(v0 + 120);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226031F44(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;

  swift_endAccess();
}

uint64_t sub_226032010()
{
  swift_beginAccess();
  v2 = *(v0 + 136);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226032060(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  *(v1 + 136) = a1;

  swift_endAccess();
}

uint64_t sub_22603211C()
{
  swift_beginAccess();
  v2 = *(v0 + 144);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_22603216C(char a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
  return swift_endAccess();
}

uint64_t sub_2260321B8()
{
  swift_beginAccess();
  *(v0 + 144) = 1;
  return swift_endAccess();
}

uint64_t sub_22603220C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v38 = a5;
  v39 = a4;
  v40 = a3;
  v43 = a2;
  v44 = a1;
  v41 = 0;
  v58[1] = 0;
  v57 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v58[6] = a1;
  v58[7] = a2;
  v58[4] = a3;
  v58[5] = a4;
  v58[2] = a5;
  v58[3] = a6;
  v42 = MEMORY[0x277D837D0];
  sub_22609A4F8();
  v58[0] = sub_226099F08();
  if (sub_226099B18())
  {
    v11 = v58[0];
    sub_2260998E8();
    sub_225EFE6E8(v58);
    return v11;
  }

  else
  {
    v36 = sub_226099B18();
    sub_2260998E8();
    if (v36)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_226099B18() ^ 1;
    }

    v34 = v35;

    if (v35)
    {
      v57 = sub_226099A58();
      for (i = v57; ; i = v19)
      {
        v31 = i;
        v55 = v44;
        v56 = v43;
        v53 = v40;
        v54 = v39;
        v32 = MEMORY[0x22AA72C80]();
        if (v32 >> 14 < v31 >> 14)
        {
          sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
          __break(1u);
        }

        v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DA8, &qword_2260A0FD0) - 8) + 64);
        v30 = &v11;
        v22 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](&v11);
        v25 = &v11 - v22;
        v7 = sub_226098AB8();
        (*(*(v7 - 8) + 56))(v25, 1);
        v24 = sub_225F2CF00();
        v23 = MEMORY[0x277D837D0];
        sub_2260327B4();
        v26 = sub_22609A218();
        v29 = v8;
        v27 = v26;
        v28 = v9;
        sub_22602EEA8(v25);
        if (v29)
        {
          break;
        }

        v20 = v27;
        v21 = v28;
        v19 = v28;
        v15 = v27;
        v51 = v27;
        v52 = v28;
        sub_2260998E8();
        v49 = v44;
        v50 = v43;
        v47 = v38;
        v48 = v37;
        sub_225F2D16C();
        v18 = &v49;
        sub_226099A78();
        v16 = v49;
        v17 = v50;
        sub_2260998E8();
        v45 = v16;
        v46 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
        sub_226099F48();

        v57 = v19;
        sub_225EFE6BC(v18);
      }

      v13 = v58[0];
      sub_2260998E8();
      sub_225EFE6E8(v58);
      return v13;
    }

    else
    {
      v12 = v58[0];
      sub_2260998E8();
      sub_225EFE6E8(v58);
      return v12;
    }
  }
}

uint64_t sub_2260327B4()
{
  sub_226039094(0);

  return 0;
}

uint64_t sub_2260327EC()
{
  v307 = &v378;
  v309 = 0;
  v377 = 0;
  v376 = 0;
  v375 = 0;
  v310 = 0;
  v372 = 0;
  v369 = 0;
  v366 = 0;
  v362 = 0;
  v356 = 0;
  v355 = 0;
  v353 = 0;
  v352 = 0;
  v351 = 0;
  v350[1] = 0;
  v350[0] = 0;
  v342 = 0;
  v341 = 0;
  v340 = 0;
  v339 = 0;
  v338 = 0;
  v337 = 0;
  v336 = 0;
  v335 = 0;
  v329 = 0u;
  v328 = 0u;
  v327 = 0;
  v326 = 0;
  v325 = 0u;
  v324 = 0u;
  v321 = 0;
  v320 = 0;
  v319 = 0;
  v311 = sub_226098C58();
  v312 = *(v311 - 8);
  v313 = v312;
  v314 = *(v312 + 64);
  MEMORY[0x28223BE20](v311 - 8);
  v316 = (v314 + 15) & 0xFFFFFFFFFFFFFFF0;
  v315 = &v73 - v316;
  MEMORY[0x28223BE20](&v73 - v316);
  v317 = &v73 - v316;
  v377 = v0;
  if ((sub_226035830() & 1) == 0)
  {
    return v310;
  }

  v1 = v310;
  v293 = BiomeLibrary();
  swift_getObjectType();
  v291 = [v293 Dictation];
  swift_getObjectType();
  v292 = [v291 UserEdit];
  v376 = v292;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v302 = 0;
  v294 = sub_226038DD0();
  v298 = v308[8];
  v295 = v308[9];
  sub_2260998E8();
  v296 = v308[6];
  v297 = v308[7];
  sub_2260998E8();
  sub_225F27014();
  v2 = sub_225F27F74(v308[10]);
  v299 = sub_226034774(v298, v295, v296, v297, v2);
  v375 = v299;
  v300 = &v374;
  swift_beginAccess();
  v301 = v308[17];
  sub_2260998E8();
  swift_endAccess();
  v373 = v301;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E80, &qword_2260A11F0);
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E88, &qword_2260A11F8);
  sub_226038E34();
  v3 = sub_226099BF8();
  v305 = v1;
  v306 = v3;
  if (v1)
  {
    __break(1u);
    goto LABEL_54;
  }

  v286 = v306;
  sub_225EFE6E8(&v373);
  v372 = v286;
  v289 = &v371;
  swift_beginAccess();
  v287 = v308[13];
  v290 = v308[14];
  v288 = v290;
  sub_2260998E8();
  swift_endAccess();
  if (!v290)
  {
    v283 = v305;
    goto LABEL_44;
  }

  v284 = v287;
  v285 = v288;
  v277 = v288;
  v278 = v287;
  v355 = v287;
  v356 = v288;
  v281 = &v354;
  swift_beginAccess();
  v279 = v308[15];
  v282 = v308[16];
  v280 = v282;
  sub_2260998E8();
  swift_endAccess();
  if (!v282)
  {

    v283 = v305;
    goto LABEL_44;
  }

  v275 = v279;
  v276 = v280;
  v273 = v280;
  v272 = v279;
  v352 = v279;
  v353 = v280;
  v274 = sub_226099B18();
  sub_2260998E8();
  if (v274)
  {
    v271 = 0;
  }

  else
  {
    v271 = sub_226099B18() ^ 1;
  }

  v270 = v271;

  if (v270)
  {
    v267 = swift_allocObject();
    v262 = v267;
    v263 = (v267 + 16);
    v351 = v267 + 16;
    v266 = MEMORY[0x277D837D0];
    v264 = sub_22609A4F8();
    v265 = v4;
    sub_2260998E8();
    v5 = v265;
    v6 = v277;
    *v265 = v278;
    v5[1] = v6;
    sub_225EF5418();
    *(v267 + 16) = sub_226099F08();
    sub_2260998E8();
    v349 = v286;
    v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E98, &qword_2260A1200);
    sub_226038F20();
    sub_22609A028();
    for (i = v305; ; i = v239)
    {
      v259 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786EC8, &unk_2260A1210);
      sub_22609A388();
      v260 = v347;
      v261 = v348;
      if (!*(&v347 + 1))
      {
        break;
      }

      v257 = v260;
      v258 = v261;
      v249 = *(&v261 + 1);
      v250 = v261;
      v251 = *(&v260 + 1);
      v252 = v260;
      v328 = v260;
      v329 = v261;
      v254 = MEMORY[0x277D837D0];
      sub_22609A4F8();
      v255 = MEMORY[0x277D837E0];
      v327 = sub_226099F08();
      v253 = *v263;
      sub_2260998E8();
      sub_226099F18();
      v7 = *v307;
      v8 = v307[1];
      v326 = v379;
      v325 = v8;
      v324 = v7;
      for (j = v259; ; j = v240)
      {
        v246 = j;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E68, &qword_22609F988);
        sub_226099F68();
        v247 = v322;
        v248 = v323;
        if (!v323)
        {
          break;
        }

        v244 = v247;
        v245 = v248;
        v242 = v248;
        v320 = v247;
        v321 = v248;
        v243 = sub_22603220C(v247, v248, v252, v251, v250, v249);
        v319 = v243;
        if ((sub_226099F58() & 1) == 0)
        {
          sub_2260998E8();
          v318 = v243;
          v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
          sub_22601F6A0();
          sub_226099F88();
        }

        v240 = v246;
      }

      v239 = v246;
      sub_225F15874(&v324);
      v238 = v327;
      sub_2260998E8();
      *v263 = v238;

      sub_225EFE6E8(&v327);
    }

    sub_225EFE6E8(v350);
    v236 = *v263;
    sub_2260998E8();
    v345 = v272;
    v346 = v273;
    v237 = sub_226099F78();

    if ((v237 & 1) == 0)
    {
      v140 = v259;
      goto LABEL_42;
    }

    v233 = [objc_opt_self() sharedPreferences];
    v234 = [v233 siriDataSharingOptInStatus];

    v344 = v234;
    v343 = 1;
    v235 = type metadata accessor for AFSiriDataSharingOptInStatus(0);
    sub_225EFE4AC();
    v342 = sub_22609A508() & 1;
    if (!v342)
    {
      v141 = v259;
      goto LABEL_40;
    }

    v9 = v317;
    v10 = sub_225EFE52C();
    (*(v313 + 16))(v9, v10, v311);
    sub_2260998E8();
    v212 = 32;
    v217 = 32;
    v218 = 7;
    v11 = swift_allocObject();
    v12 = v273;
    v209 = v11;
    *(v11 + 16) = v272;
    *(v11 + 24) = v12;

    v13 = swift_allocObject();
    v14 = v262;
    v219 = v13;
    *(v13 + 16) = sub_226039140;
    *(v13 + 24) = v14;

    v232 = sub_226098C48();
    v205 = v232;
    v231 = sub_22609A088();
    v206 = v231;
    v213 = 17;
    v222 = swift_allocObject();
    v207 = v222;
    *(v222 + 16) = v212;
    v223 = swift_allocObject();
    v208 = v223;
    v215 = 8;
    *(v223 + 16) = 8;
    v15 = swift_allocObject();
    v16 = v209;
    v210 = v15;
    *(v15 + 16) = sub_225EF7450;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v210;
    v224 = v17;
    v211 = v17;
    *(v17 + 16) = sub_225EF7B84;
    *(v17 + 24) = v18;
    v225 = swift_allocObject();
    v214 = v225;
    *(v225 + 16) = v212;
    v226 = swift_allocObject();
    v216 = v226;
    *(v226 + 16) = v215;
    v19 = swift_allocObject();
    v20 = v219;
    v220 = v19;
    *(v19 + 16) = sub_226039148;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v220;
    v229 = v21;
    v221 = v21;
    *(v21 + 16) = sub_225EF7B84;
    *(v21 + 24) = v22;
    v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v227 = sub_22609A4F8();
    v228 = v23;

    v24 = v222;
    v25 = v228;
    *v228 = sub_225EF7434;
    v25[1] = v24;

    v26 = v223;
    v27 = v228;
    v228[2] = sub_225EF7434;
    v27[3] = v26;

    v28 = v224;
    v29 = v228;
    v228[4] = sub_225EF7B90;
    v29[5] = v28;

    v30 = v225;
    v31 = v228;
    v228[6] = sub_225EF7434;
    v31[7] = v30;

    v32 = v226;
    v33 = v228;
    v228[8] = sub_225EF7434;
    v33[9] = v32;

    v34 = v228;
    v35 = v229;
    v228[10] = sub_225EF7B90;
    v34[11] = v35;
    sub_225EF5418();

    if (os_log_type_enabled(v232, v231))
    {
      v36 = v259;
      v198 = sub_22609A188();
      v195 = v198;
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v199 = sub_225EF5468(0, v196, v196);
      v197 = v199;
      v201 = 2;
      v200 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v334 = v198;
      v333 = v199;
      v332 = v200;
      v202 = &v334;
      sub_225EF54BC(v201, &v334);
      sub_225EF54BC(v201, v202);
      v330 = sub_225EF7434;
      v331 = v207;
      sub_225EF73E8(&v330, v202, &v333, &v332);
      v203 = v36;
      v204 = v36;
      if (v36)
      {
        v193 = 0;

        __break(1u);
      }

      else
      {
        v330 = sub_225EF7434;
        v331 = v208;
        sub_225EF73E8(&v330, &v334, &v333, &v332);
        v191 = 0;
        v192 = 0;
        v330 = sub_225EF7B90;
        v331 = v211;
        sub_225EF73E8(&v330, &v334, &v333, &v332);
        v189 = 0;
        v190 = 0;
        v330 = sub_225EF7434;
        v331 = v214;
        sub_225EF73E8(&v330, &v334, &v333, &v332);
        v187 = 0;
        v188 = 0;
        v330 = sub_225EF7434;
        v331 = v216;
        sub_225EF73E8(&v330, &v334, &v333, &v332);
        v185 = 0;
        v186 = 0;
        v330 = sub_225EF7B90;
        v331 = v221;
        sub_225EF73E8(&v330, &v334, &v333, &v332);
        v183 = 0;
        v184 = 0;
        _os_log_impl(&dword_225EEB000, v205, v206, "Variants contain correctedText: %s, variants: %s", v195, 0x16u);
        sub_225EF7AF4(v197, 0, v196);
        sub_225EF7AF4(v200, 2, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v194 = v183;
      }
    }

    else
    {
      v37 = v259;

      v194 = v37;
    }

    v181 = v194;

    (*(v313 + 8))(v317, v311);
    sub_226039238();
    v182 = sub_225F26174();
    if (v182)
    {
      v180 = v182;
      v176 = v182;
      v341 = v182;
      sub_225F4C57C();
      v177 = v308[2];
      v178 = v308[3];
      sub_2260998E8();
      v179 = sub_225F49880(v177, v178);
      if (!v179)
      {
        goto LABEL_37;
      }

      v175 = v179;
      v164 = v179;
      v340 = v179;
      v173 = 0;
      v158 = sub_225F7BD5C();
      v38 = v164;
      v159 = sub_226098A78();
      v160 = *(v159 - 8);
      v161 = v160;
      v169 = *(v160 + 64);
      v162 = v169;
      v165 = &v73;
      MEMORY[0x28223BE20](v164);
      v171 = (v169 + 15) & 0xFFFFFFFFFFFFFFF0;
      v163 = &v73 - v171;
      sub_226098A48();
      v167 = sub_22603E5E0(v163);
      v166 = v167;

      v339 = v167;
      v39 = v167;
      [v176 setOriginalAsrId_];

      sub_2260998E8();
      v168 = sub_2260999F8();

      [v176 setFullCorrectedText_];

      v170 = &v73;
      MEMORY[0x28223BE20](&v73);
      v172 = &v73 - v171;
      v338 = &v73 - v171;
      sub_226098A68();
      sub_22603929C();
      v40 = sub_225F26174();
      v174 = v40;
      if (v40)
      {
        v157 = v174;
        v154 = v174;
        v337 = v174;
        v153 = &v73;
        v41 = MEMORY[0x28223BE20](&v73);
        v152 = &v73 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v161 + 16))(v41);
        v155 = sub_22603E5E0(v152);
        [v154 setAsrId_];

        sub_226039300();
        v156 = sub_225F26174();
        if (v156)
        {
          v151 = v156;
          v148 = v156;
          v336 = v156;
          v43 = v154;
          [v148 setEventMetadata_];

          v44 = v176;
          [v148 setAlternativeSelectionTextCategorized_];

          v143 = [objc_opt_self() sharedAnalytics];
          v147 = [v143 defaultMessageStream];
          v335 = v147;

          v145 = &v73;
          MEMORY[0x28223BE20](&v73);
          v144 = &v73 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_226098A68();
          v146 = sub_226098A38();
          v150 = *(v161 + 8);
          v149 = v161 + 8;
          v150(v144, v159);
          [v147 emitMessage:v148 isolatedStreamUUID:v146];

          v150(v172, v159);
LABEL_37:

          v141 = v181;
LABEL_40:
          v140 = v141;
LABEL_42:
          v139 = v140;

          v283 = v139;
          goto LABEL_44;
        }

        (*(v161 + 8))(v172, v159);

        return v181;
      }

      else
      {
        (*(v161 + 8))(v172, v159);

        return v181;
      }
    }

    else
    {

      return v181;
    }
  }

  v283 = v305;
LABEL_44:
  v46 = v283;
  v370 = v286;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E98, &qword_2260A1200);
  v134 = 0;
  v136 = sub_226038EBC();
  v47 = sub_226038F20();
  v49 = sub_225F15970(sub_2260354FC, v134, v135, v136, MEMORY[0x277D84A98], v47, MEMORY[0x277D84AC0], v48);
  v137 = v46;
  v138 = v49;
  if (!v46)
  {
    v125 = v138;
    v369 = v138;
    v126 = &v368;
    v129 = 0;
    swift_beginAccess();
    v127 = v308[12];
    sub_2260998E8();
    swift_endAccess();
    v367 = v127;
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786EB0, &qword_2260A1208);
    v131 = sub_226038FA8();
    v128 = v131;
    v50 = sub_22603900C();
    v52 = sub_225F15970(sub_2260356A0, v129, v130, v131, MEMORY[0x277D84A98], v50, MEMORY[0x277D84AC0], v51);
    v132 = 0;
    v133 = v52;
    v94 = v52;
    sub_225EFE6E8(&v367);
    v366 = v94;
    v101 = 0;
    sub_225F7DBE8();
    v103 = v308[2];
    v104 = v308[3];
    sub_2260998E8();
    v99 = v308[4];
    v100 = v308[5];
    sub_2260998E8();
    v53 = v299;
    v112 = 32;
    v91 = &v365;
    swift_beginAccess();
    v102 = v308[15];
    v98 = v308[16];
    sub_2260998E8();
    swift_endAccess();
    v92 = &v364;
    swift_beginAccess();
    v97 = v308[13];
    v96 = v308[14];
    sub_2260998E8();
    swift_endAccess();
    v93 = &v363;
    swift_beginAccess();
    v95 = v308[11];
    sub_2260998E8();
    swift_endAccess();
    sub_2260998E8();
    sub_2260998E8();
    v54 = sub_22609A4F8();
    v55 = sub_226035744(v103, v104, v99, v100, v299, v101, v101, v102, v98, v97, v96, v95, v125, v94, v54);
    v56 = v315;
    v106 = v55;
    v105 = v55;
    v362 = v55;
    v57 = sub_225EFE52C();
    (*(v313 + 16))(v56, v57, v311);
    v58 = v106;
    v113 = 7;
    v114 = swift_allocObject();
    *(v114 + 16) = v106;
    v124 = sub_226098C48();
    v107 = v124;
    v123 = sub_22609A078();
    v108 = v123;
    v109 = 17;
    v117 = swift_allocObject();
    v110 = v117;
    *(v117 + 16) = 64;
    v118 = swift_allocObject();
    v111 = v118;
    *(v118 + 16) = 8;
    v59 = swift_allocObject();
    v60 = v114;
    v115 = v59;
    *(v59 + 16) = sub_225F3E198;
    *(v59 + 24) = v60;
    v61 = swift_allocObject();
    v62 = v115;
    v121 = v61;
    v116 = v61;
    *(v61 + 16) = sub_225F3E1C8;
    *(v61 + 24) = v62;
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v119 = sub_22609A4F8();
    v120 = v63;

    v64 = v117;
    v65 = v120;
    *v120 = sub_225EF7434;
    v65[1] = v64;

    v66 = v118;
    v67 = v120;
    v120[2] = sub_225EF7434;
    v67[3] = v66;

    v68 = v120;
    v69 = v121;
    v120[4] = sub_225F3E358;
    v68[5] = v69;
    sub_225EF5418();

    if (os_log_type_enabled(v124, v123))
    {
      v70 = v132;
      v84 = sub_22609A188();
      v81 = v84;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v87 = 1;
      v85 = sub_225EF5468(1, v82, v82);
      v83 = v85;
      v86 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v361 = v84;
      v360 = v85;
      v359 = v86;
      v88 = &v361;
      sub_225EF54BC(2, &v361);
      sub_225EF54BC(v87, v88);
      v357 = sub_225EF7434;
      v358 = v110;
      sub_225EF73E8(&v357, v88, &v360, &v359);
      v89 = v70;
      v90 = v70;
      if (v70)
      {
        v79 = 0;

        __break(1u);
      }

      else
      {
        v357 = sub_225EF7434;
        v358 = v111;
        sub_225EF73E8(&v357, &v361, &v360, &v359);
        v77 = 0;
        v78 = 0;
        v357 = sub_225F3E358;
        v358 = v116;
        sub_225EF73E8(&v357, &v361, &v360, &v359);
        v75 = 0;
        v76 = 0;
        _os_log_impl(&dword_225EEB000, v107, v108, "Donating edit record to Biome: %@", v81, 0xCu);
        sub_225EF7AF4(v83, 1, v82);
        sub_225EF7AF4(v86, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v80 = v75;
      }
    }

    else
    {
      v71 = v132;

      v80 = v71;
    }

    v74 = v80;

    (*(v313 + 8))(v315, v311);
    v73 = [v292 source];
    [v73 sendEvent_];

    return v74;
  }

LABEL_54:
  __break(1u);
  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_2260347D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v86 = a2;
  v94 = a1;
  v88 = sub_225F2CE08;
  v89 = sub_226039728;
  v90 = sub_225EF7B84;
  v91 = sub_225EF7434;
  v92 = sub_225EF7434;
  v93 = sub_225EF7B90;
  v126 = 0;
  v122 = 0;
  v123 = 0;
  v118 = 0;
  v119 = 0;
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v110 = 0;
  v95 = sub_226098C58();
  v96 = *(v95 - 8);
  v97 = v95 - 8;
  v98 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v94);
  v99 = &v31 - v98;
  v100 = *v2;
  v126 = v100;
  v3 = sub_226099AA8();
  v101 = v124;
  v124[0] = v3;
  v124[1] = v4;
  sub_226099938();
  sub_225EFE6BC(v101);
  v102 = v125;
  if (v125)
  {
    v85 = v102;
    v105 = v102;
    v5 = swift_dynamicCast();
    if (v5)
    {
      v81 = v103;
      v82 = v104;
    }

    else
    {
      v81 = 0;
      v82 = 0;
    }

    v83 = v81;
    v84 = v82;
  }

  else
  {
    v83 = 0;
    v84 = 0;
  }

  v77 = v84;
  v78 = v83;
  v122 = v83;
  v123 = v84;
  v6 = sub_226099AA8();
  v79 = v120;
  v120[0] = v6;
  v120[1] = v7;
  sub_226099938();
  sub_225EFE6BC(v79);
  v80 = v121;
  if (v121)
  {
    v76 = v80;
    v108 = v80;
    v8 = swift_dynamicCast();
    if (v8)
    {
      v72 = v106;
      v73 = v107;
    }

    else
    {
      v72 = 0;
      v73 = 0;
    }

    v74 = v72;
    v75 = v73;
  }

  else
  {
    v74 = 0;
    v75 = 0;
  }

  v70 = v75;
  v71 = v74;
  v118 = v74;
  v119 = v75;
  sub_2260998E8();
  if (v77)
  {
    v68 = v78;
    v69 = v77;
    v66 = v77;
    v67 = v78;
    v111 = v78;
    v112 = v77;
    sub_2260998E8();
    if (v70)
    {
      v64 = v71;
      v65 = v70;
      v61 = v70;
      v62 = v71;
      v109 = v71;
      v110 = v70;
      v63 = sub_226099B18();
      sub_2260998E8();
      if (v63)
      {
        v60 = 0;
      }

      else
      {
        v60 = sub_226099B18() ^ 1;
      }

      v59 = v60;

      if (v59)
      {
        sub_2260998E8();
        sub_2260998E8();
        v9 = v61;
        v10 = v67;
        v11 = v86;
        v12 = v66;
        *v86 = v62;
        v11[1] = v9;
        v11[2] = v10;
        v11[3] = v12;

        result = v87;
        v58 = v87;
        return result;
      }
    }

    else
    {
    }
  }

  v14 = v99;
  v15 = sub_225EFE52C();
  (*(v96 + 16))(v14, v15, v95);
  sub_2260998E8();
  v47 = 7;
  v44 = swift_allocObject();
  *(v44 + 16) = v100;

  v46 = 32;
  v16 = swift_allocObject();
  v17 = v44;
  v48 = v16;
  *(v16 + 16) = v88;
  *(v16 + 24) = v17;

  v56 = sub_226098C48();
  v57 = sub_22609A088();
  v45 = 17;
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v18 = swift_allocObject();
  v19 = v48;
  v49 = v18;
  *(v18 + 16) = v89;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v49;
  v53 = v20;
  *(v20 + 16) = v90;
  *(v20 + 24) = v21;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v52 = sub_22609A4F8();
  v54 = v22;

  v23 = v50;
  v24 = v54;
  *v54 = v91;
  v24[1] = v23;

  v25 = v51;
  v26 = v54;
  v54[2] = v92;
  v26[3] = v25;

  v27 = v53;
  v28 = v54;
  v54[4] = v93;
  v28[5] = v27;
  sub_225EF5418();

  if (os_log_type_enabled(v56, v57))
  {
    v37 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v38 = sub_225EF5468(0, v36, v36);
    v39 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v40 = &v117;
    v117 = v37;
    v41 = &v116;
    v116 = v38;
    v42 = &v115;
    v115 = v39;
    sub_225EF54BC(2, &v117);
    sub_225EF54BC(1, v40);
    v29 = v87;
    v113 = v91;
    v114 = v50;
    sub_225EF73E8(&v113, v40, v41, v42);
    v43 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v113 = v92;
      v114 = v51;
      sub_225EF73E8(&v113, &v117, &v116, &v115);
      v34 = 0;
      v113 = v93;
      v114 = v53;
      sub_225EF73E8(&v113, &v117, &v116, &v115);
      v33 = 0;
      _os_log_impl(&dword_225EEB000, v56, v57, "CESABiomeDictationUserEditRecord.selectedAlternativesInfo element %s does not contain expected data", v37, 0xCu);
      sub_225EF7AF4(v38, 0, v36);
      sub_225EF7AF4(v39, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v35 = v33;
    }
  }

  else
  {

    v35 = v87;
  }

  v32 = v35;
  MEMORY[0x277D82BD8](v56);
  (*(v96 + 8))(v99, v95);
  v30 = v86;
  *v86 = 0;
  v30[1] = 0;
  v30[2] = 0;
  v30[3] = 0;

  return v32;
}

uint64_t sub_2260354A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  sub_226025838(v3, a2);
  return swift_endAccess();
}

id sub_2260354FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *a1;
  v12 = a1[1];
  v9 = a1[2];
  v11 = a1[3];
  sub_226038EBC();
  sub_22609A4F8();
  v8 = v2;
  sub_2260998E8();
  sub_2260998E8();
  *v8 = v7;
  v8[1] = v12;
  sub_225EF5418();
  v13 = v3;

  sub_22609A4F8();
  v10 = v4;
  sub_2260998E8();
  sub_2260998E8();
  *v10 = v9;
  v10[1] = v11;
  sub_225EF5418();
  v14 = v5;

  result = sub_226035650(0, v13, v14);
  *a2 = result;
  return result;
}

id sub_2260356A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_226038FA8();
  sub_2260998E8();
  result = sub_226035704(v3);
  *a2 = result;
  return result;
}

uint64_t sub_226035830()
{
  v32 = 0;
  v28 = 0;
  v36 = v0;
  swift_beginAccess();
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  sub_2260998E8();
  swift_endAccess();
  v35[0] = v22;
  v35[1] = v23;
  if (v23)
  {
    sub_2260998E8();
    sub_225EFE6BC(v35);
    v19 = sub_226099B18();

    v20 = v19 & 1;
  }

  else
  {
    sub_225EFE6BC(v35);
    v20 = 2;
  }

  v33 = v20;
  v34 = 0;
  if (v20 != 2)
  {
    if (v34 != 2)
    {
      v18 = (v20 & 1) == (v34 & 1);
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v34 != 2)
  {
LABEL_11:
    v18 = 0;
    goto LABEL_9;
  }

  v18 = 1;
LABEL_9:

  if (v18)
  {
    swift_beginAccess();
    sub_2260998E8();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    sub_225F156F8();
    v16 = sub_22609A008();

    v17 = (v16 & 1) == 0;
  }

  else
  {
    v17 = 0;
  }

  v32 = v17;
  swift_beginAccess();
  v14 = *(v21 + 120);
  v15 = *(v21 + 128);
  sub_2260998E8();
  swift_endAccess();
  v31[0] = v14;
  v31[1] = v15;
  if (v15)
  {
    sub_2260998E8();
    sub_225EFE6BC(v31);
    v12 = sub_226099B18();

    v13 = v12 & 1;
  }

  else
  {
    sub_225EFE6BC(v31);
    v13 = 2;
  }

  v29 = v13;
  v30 = 0;
  if (v13 != 2)
  {
    if (v30 != 2)
    {
      v11 = (v13 & 1) == (v30 & 1);
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (v30 != 2)
  {
LABEL_24:
    v11 = 0;
    goto LABEL_22;
  }

  v11 = 1;
LABEL_22:
  v28 = v11;
  swift_beginAccess();
  v10 = *(v21 + 144);
  swift_endAccess();
  v9 = (v10 & 1) != 0 && v17;
  v8 = v9 && v11;

  if (!v8)
  {
    v2 = 0;
    goto LABEL_41;
  }

  swift_beginAccess();
  v5 = *(v21 + 104);
  v6 = *(v21 + 112);
  sub_2260998E8();
  swift_endAccess();
  sub_2260998E8();
  swift_beginAccess();
  v7 = *(v21 + 120);
  sub_2260998E8();
  swift_endAccess();
  sub_2260998E8();
  v26[0] = v5;
  v26[1] = v6;
  v27 = v7;
  if (!v6)
  {
    if (!*(&v27 + 1))
    {
      sub_225EFE6BC(v26);
      v4 = 1;
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  sub_225F4C5E0(v26, v25);
  if (!*(&v27 + 1))
  {
    sub_225EFE6BC(v25);
LABEL_38:
    sub_225F4C1C0(v26);
    v4 = 0;
    goto LABEL_37;
  }

  v24 = v27;
  v3 = MEMORY[0x22AA72BD0](v25[0], v25[1], v27, *(&v27 + 1));
  sub_225EFE6BC(&v24);
  sub_225EFE6BC(v25);
  sub_225EFE6BC(v26);
  v4 = v3;
LABEL_37:

  v2 = v4 ^ 1;
LABEL_41:

  return v2 & 1;
}

uint64_t sub_226035E5C()
{
  sub_225EFE6BC((v0 + 2));
  sub_225EFE6BC((v0 + 4));
  sub_225EFE6BC((v0 + 6));
  sub_225EFE6BC((v0 + 8));
  sub_225EFE6E8(v0 + 11);
  sub_225EFE6E8(v0 + 12);
  sub_225EFE6BC((v0 + 13));
  sub_225EFE6BC((v0 + 15));
  sub_225EFE6E8(v0 + 17);
  return v2;
}

uint64_t sub_226035F30()
{
  v2 = *(v0 + 80);
  sub_2260998E8();
  return v2;
}

uint64_t sub_226035F70()
{
  swift_beginAccess();
  v2 = *(v0 + 104);
  sub_225EF5A38(v2, *(v0 + 112));
  swift_endAccess();
  return v2;
}

uint64_t sub_226035FCC(uint64_t a1, unint64_t a2)
{
  sub_225EF5A38(a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  sub_225EF5990(v3, v4);
  swift_endAccess();
  return sub_225EF5990(a1, a2);
}

uint64_t sub_226036040()
{
  swift_beginAccess();
  v2 = *(v0 + 120);
  sub_225EF5A38(v2, *(v0 + 128));
  swift_endAccess();
  return v2;
}

uint64_t sub_22603609C(uint64_t a1, unint64_t a2)
{
  sub_225EF5A38(a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 120);
  v4 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  sub_225EF5990(v3, v4);
  swift_endAccess();
  return sub_225EF5990(a1, a2);
}

uint64_t sub_226036110()
{
  swift_beginAccess();
  v2 = *(v0 + 136);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_22603616C(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;

  swift_endAccess();
}

uint64_t sub_2260361DC()
{
  swift_beginAccess();
  v2 = *(v0 + 152);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226036238(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;

  swift_endAccess();
}

uint64_t sub_226036304()
{
  swift_beginAccess();
  v2 = *(v0 + 168);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226036354(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  *(v1 + 168) = a1;

  swift_endAccess();
}

uint64_t sub_226036410()
{
  swift_beginAccess();
  v2 = *(v0 + 176);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_22603646C(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;

  swift_endAccess();
}

uint64_t sub_226036538()
{
  swift_beginAccess();
  v2 = *(v0 + 192);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_226036588(char a1)
{
  swift_beginAccess();
  *(v1 + 192) = a1;
  return swift_endAccess();
}

uint64_t sub_226036630()
{
  swift_beginAccess();
  v2 = *(v0 + 193);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_226036680(char a1)
{
  swift_beginAccess();
  *(v1 + 193) = a1;
  return swift_endAccess();
}

uint64_t sub_226036728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13)
{
  *(v13 + 104) = sub_2260989B8();
  *(v13 + 112) = v14;
  *(v13 + 120) = sub_2260989B8();
  *(v13 + 128) = v15;
  *(v13 + 136) = sub_226099AA8();
  *(v13 + 144) = v16;
  *(v13 + 152) = sub_226099AA8();
  *(v13 + 160) = v17;
  *(v13 + 168) = sub_22609A4F8();
  *(v13 + 176) = 0;
  *(v13 + 184) = 0;
  *(v13 + 192) = 0;
  *(v13 + 193) = 0;
  sub_2260998E8();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_2260998E8();
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  sub_2260998E8();
  *(v13 + 48) = a5;
  *(v13 + 56) = a6;
  sub_2260998E8();
  *(v13 + 64) = a7;
  *(v13 + 72) = a8;
  sub_2260998E8();
  *(v13 + 80) = a9;
  *(v13 + 88) = a10;
  *(v13 + 96) = a11;
  swift_beginAccess();
  *(v13 + 176) = 0;
  *(v13 + 184) = 0;

  swift_endAccess();
  swift_beginAccess();
  *(v13 + 192) = a12;
  swift_endAccess();
  swift_beginAccess();
  *(v13 + 193) = a13;
  swift_endAccess();

  return v27;
}

unint64_t sub_2260369EC()
{
  v2 = qword_27D786E70;
  if (!qword_27D786E70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786E70);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_226036A50()
{
  v62 = sub_226039364;
  v63 = sub_225EF70FC;
  v65 = sub_225EF7108;
  v67 = sub_225EF7150;
  v71 = sub_22603936C;
  v72 = sub_225EF70FC;
  v74 = sub_225EF7108;
  v78 = sub_225EF7150;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v84 = sub_225EF715C;
  v86 = sub_225EF7434;
  v88 = sub_225EF7434;
  v91 = sub_225EF715C;
  v104 = 0;
  v55 = 0;
  v60 = sub_226098C58();
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v56 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v0 = &v34[-v56];
  v57 = &v34[-v56];
  v104 = v1;
  v2 = sub_225EFE52C();
  (*(v58 + 16))(v0, v2, v60);

  v3 = sub_226098C48();
  v4 = v61;
  v95 = v3;
  v96 = sub_22609A088();
  v69 = 17;
  v76 = 7;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  v70 = 4;
  *(v83 + 16) = 4;
  v75 = 32;
  v5 = swift_allocObject();
  v64 = v5;
  *(v5 + 16) = v62;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v7 = v64;
  v66 = v6;
  *(v6 + 16) = v63;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v66;
  v68 = v8;
  *(v8 + 16) = v65;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v68;
  v85 = v10;
  *(v10 + 16) = v67;
  *(v10 + 24) = v11;
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v70;
  v12 = swift_allocObject();
  v73 = v12;
  *(v12 + 16) = v71;
  *(v12 + 24) = v4;
  v13 = swift_allocObject();
  v14 = v73;
  v77 = v13;
  *(v13 + 16) = v72;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v77;
  v79 = v15;
  *(v15 + 16) = v74;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v79;
  v92 = v17;
  *(v17 + 16) = v78;
  *(v17 + 24) = v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v90 = sub_22609A4F8();
  v93 = v19;

  v20 = v81;
  v21 = v93;
  *v93 = v80;
  v21[1] = v20;

  v22 = v83;
  v23 = v93;
  v93[2] = v82;
  v23[3] = v22;

  v24 = v85;
  v25 = v93;
  v93[4] = v84;
  v25[5] = v24;

  v26 = v87;
  v27 = v93;
  v93[6] = v86;
  v27[7] = v26;

  v28 = v89;
  v29 = v93;
  v93[8] = v88;
  v29[9] = v28;

  v30 = v92;
  v31 = v93;
  v93[10] = v91;
  v31[11] = v30;
  sub_225EF5418();

  if (os_log_type_enabled(v95, v96))
  {
    v32 = v55;
    v48 = sub_22609A188();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v47 = 0;
    v49 = sub_225EF5468(0, v46, v46);
    v50 = sub_225EF5468(v47, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v51 = &v101;
    v101 = v48;
    v52 = &v100;
    v100 = v49;
    v53 = &v99;
    v99 = v50;
    sub_225EF54BC(0, &v101);
    sub_225EF54BC(2, v51);
    v97 = v80;
    v98 = v81;
    sub_225EF73E8(&v97, v51, v52, v53);
    v54 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v97 = v82;
      v98 = v83;
      sub_225EF73E8(&v97, &v101, &v100, &v99);
      v45 = 0;
      v97 = v84;
      v98 = v85;
      sub_225EF73E8(&v97, &v101, &v100, &v99);
      v44 = 0;
      v97 = v86;
      v98 = v87;
      sub_225EF73E8(&v97, &v101, &v100, &v99);
      v43 = 0;
      v97 = v88;
      v98 = v89;
      sub_225EF73E8(&v97, &v101, &v100, &v99);
      v42 = 0;
      v97 = v91;
      v98 = v92;
      sub_225EF73E8(&v97, &v101, &v100, &v99);
      _os_log_impl(&dword_225EEB000, v95, v96, "CESABiomeContextualReplayRecord: audioSelectedForSampling: %{BOOL}d, hasVisualContext: %{BOOL}d", v48, 0xEu);
      v41 = 0;
      sub_225EF7AF4(v49, 0, v46);
      sub_225EF7AF4(v50, v41, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v95);
  (*(v58 + 8))(v57, v60);
  v39 = &v103;
  swift_beginAccess();
  v40 = *(v61 + 192);
  swift_endAccess();

  if (v40)
  {
    v36 = &v102;
    swift_beginAccess();
    v37 = *(v61 + 193);
    swift_endAccess();
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v35 = v38;

  return v35 & 1;
}

uint64_t sub_226037594(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 192);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_2260375EC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 193);
  swift_endAccess();
  return v3 & 1;
}

BOOL sub_226037644()
{
  v38 = sub_226039374;
  v41 = sub_225F2D374;
  v43 = sub_225EF7434;
  v45 = sub_225EF7434;
  v48 = sub_225EF71D0;
  v60 = 0;
  v30 = 0;
  v35 = sub_226098C58();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v31 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v0 = v17 - v31;
  v32 = v17 - v31;
  v60 = v1;
  v2 = sub_225EFE52C();
  (*(v33 + 16))(v0, v2, v35);

  v3 = sub_226098C48();
  v4 = v36;
  v52 = v3;
  v53 = sub_22609A088();
  v37 = 17;
  v40 = 7;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v39 = 32;
  v5 = swift_allocObject();
  v42 = v5;
  *(v5 + 16) = v38;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v7 = v42;
  v49 = v6;
  *(v6 + 16) = v41;
  *(v6 + 24) = v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v47 = sub_22609A4F8();
  v50 = v8;

  v9 = v44;
  v10 = v50;
  *v50 = v43;
  v10[1] = v9;

  v11 = v46;
  v12 = v50;
  v50[2] = v45;
  v12[3] = v11;

  v13 = v49;
  v14 = v50;
  v50[4] = v48;
  v14[5] = v13;
  sub_225EF5418();

  if (os_log_type_enabled(v52, v53))
  {
    v15 = v30;
    v23 = sub_22609A188();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v22 = 0;
    v24 = sub_225EF5468(0, v21, v21);
    v25 = sub_225EF5468(v22, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v26 = &v58;
    v58 = v23;
    v27 = &v57;
    v57 = v24;
    v28 = &v56;
    v56 = v25;
    sub_225EF54BC(0, &v58);
    sub_225EF54BC(1, v26);
    v54 = v43;
    v55 = v44;
    sub_225EF73E8(&v54, v26, v27, v28);
    v29 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v54 = v45;
      v55 = v46;
      sub_225EF73E8(&v54, &v58, &v57, &v56);
      v20 = 0;
      v54 = v48;
      v55 = v49;
      sub_225EF73E8(&v54, &v58, &v57, &v56);
      _os_log_impl(&dword_225EEB000, v52, v53, "CESABiomeContextualReplayRecord: contextualEntities: %ld", v23, 0xCu);
      v19 = 0;
      sub_225EF7AF4(v24, 0, v21);
      sub_225EF7AF4(v25, v19, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v52);
  (*(v33 + 8))(v32, v35);
  v17[0] = &v59;
  swift_beginAccess();
  v17[1] = *(v36 + 168);
  sub_2260998E8();
  swift_endAccess();
  v18 = sub_226099CD8();

  return v18 > 0;
}

uint64_t sub_226037C7C(uint64_t a1)
{
  swift_beginAccess();
  sub_2260998E8();
  swift_endAccess();
  v2 = sub_226099CD8();

  return v2;
}

uint64_t sub_226037CF4(uint64_t a1)
{
  v2 = *(a1 + 80);
  sub_2260998E8();
  return v2;
}

id sub_226037EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = sub_226098A08();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(a1, 1) == 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = sub_2260989D8();
    (*(v18 + 8))(a1, v17);
    v12 = v11;
  }

  if (a3)
  {
    v9 = sub_2260999F8();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a5)
  {
    v7 = sub_2260999F8();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [v15 initWithAbsoluteTimestamp:v12 recognizedText:v10 correctedText:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v12);
  return v6;
}

id sub_2260380C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = sub_2260999F8();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v7 = sub_2260999F8();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [v13 initWithTask:v10 language:? sampling:? rate:?];
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v10);
  return v6;
}

id sub_226038208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226099C78();
  v5 = sub_226099C78();
  v8 = [v4 initWithIndex:a1 recognizedTokens:v6 correctedTokens:?];
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);

  MEMORY[0x277D82BD8](a1);
  return v8;
}

id sub_2260382C8(uint64_t a1)
{
  v3 = sub_226099C78();
  v4 = [v2 initWithTokens_];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

id sub_226038334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    v27 = sub_2260999F8();

    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (a4)
  {
    v25 = sub_2260999F8();

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (a9)
  {
    v23 = sub_2260999F8();

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a11)
  {
    v21 = sub_2260999F8();

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v19 = sub_226099C78();
  sub_226038EBC();
  v18 = sub_226099C78();
  sub_226038FA8();
  v17 = sub_226099C78();
  v16 = sub_226099C78();
  v20 = [v33 initWithAsrID:v28 interactionID:v26 metadata:a5 startIndex:a6 endIndex:a7 correctedText:v24 recognizedText:v22 recognizedTokens:v19 alternativeSelections:v18 preItnNbest:v17 postItnNbest:v16];
  MEMORY[0x277D82BD8](v16);

  MEMORY[0x277D82BD8](v17);

  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v19);

  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](a7);
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v28);
  return v20;
}

id sub_2260386C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v13 = sub_2260999F8();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v11 = sub_2260999F8();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    v10 = sub_2260999F8();

    v6 = [v17 initWithRequestId:v14 asrId:v12 dictationInteractionID:v10];
  }

  else
  {
    v6 = [v17 initWithRequestId:v14 asrId:v12 dictationInteractionID:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v14);
  return v9;
}

id sub_22603886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v15 = sub_2260999F8();

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a4)
  {
    v13 = sub_2260999F8();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v11 = sub_226098A08();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a6, 1) == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = sub_2260989D8();
    (*(v12 + 8))(a6, v11);
    v10 = v9;
  }

  v8 = [v21 initWithTask:v16 language:v14 samplingRate:a5 requestTimestamp:? ids:?];
  MEMORY[0x277D82BD8](a7);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v16);
  return v8;
}

id sub_226038A9C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a3 & 0xF000000000000000) == 0xF000000000000000)
  {
    v24 = 0;
  }

  else
  {
    v23 = sub_226098968();
    sub_225EF5990(a2, a3);
    v24 = v23;
  }

  if (a5)
  {
    v21 = sub_2260999F8();

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (a7)
  {
    v19 = sub_2260999F8();

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if ((a9 & 0xF000000000000000) == 0xF000000000000000)
  {
    v18 = 0;
  }

  else
  {
    v17 = sub_226098968();
    sub_225EF5990(a8, a9);
    v18 = v17;
  }

  v16 = sub_226099C78();
  if (a12)
  {
    v14 = sub_2260999F8();

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v13 = [v31 initWithMetadata:a1 audio:v24 preITNTranscript:v22 postITNTranscript:v20 profile:v18 contextualEntities:v16 userEditedText:v15];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);

  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](a1);
  return v13;
}

unint64_t sub_226038DD0()
{
  v2 = qword_27D786E78;
  if (!qword_27D786E78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786E78);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226038E34()
{
  v2 = qword_27D786E90;
  if (!qword_27D786E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786E80, &qword_2260A11F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226038EBC()
{
  v2 = qword_27D786EA0;
  if (!qword_27D786EA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786EA0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226038F20()
{
  v2 = qword_27D786EA8;
  if (!qword_27D786EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786E98, &qword_2260A1200);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786EA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226038FA8()
{
  v2 = qword_27D786EB8;
  if (!qword_27D786EB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786EB8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22603900C()
{
  v2 = qword_27D786EC0;
  if (!qword_27D786EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786EB0, &qword_2260A1208);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786EC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226039094(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for CompareOptions(0);
    v1 = sub_226099CB8();
    sub_2260998E8();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_226039148()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
  v1 = sub_2260391B0();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_2260391B0()
{
  v2 = qword_27D786ED0;
  if (!qword_27D786ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D785E58, &unk_2260A0950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786ED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226039238()
{
  v2 = qword_27D786ED8;
  if (!qword_27D786ED8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786ED8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22603929C()
{
  v2 = qword_280D763E0;
  if (!qword_280D763E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226039300()
{
  v2 = qword_280D76478;
  if (!qword_280D76478)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76478);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226039384()
{
  v2 = qword_27D786EE0;
  if (!qword_27D786EE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786EE0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_2260393E8()
{
  v2 = qword_27D786EE8;
  if (!qword_27D786EE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786EE8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22603944C()
{
  v2 = qword_27D786EF0;
  if (!qword_27D786EF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786EF0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for CESABiomeSiriDictationRecord(uint64_t a1)
{
  v2 = qword_27D786EF8;
  if (!qword_27D786EF8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_226039540(uint64_t a1)
{
  updated = sub_22603963C(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_22603963C(uint64_t a1)
{
  v5 = qword_27D786F08;
  if (!qword_27D786F08)
  {
    sub_226098A08();
    v4 = sub_22609A198();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_27D786F08);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_226039728()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
  v1 = sub_226039790();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_226039790()
{
  v2 = qword_27D786F10;
  if (!qword_27D786F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7862C0, &qword_2260A0318);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786F10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226039818()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786F18);
  __swift_project_value_buffer(v1, qword_27D786F18);
  return sub_226039864();
}

uint64_t sub_226039864()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRPhoneticEmbedder.swift", 56, 2, 15, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_226039960()
{
  if (qword_27D785DB8 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786F18);
}

uint64_t sub_2260399CC()
{
  v2 = (v0 + OBJC_IVAR___CESRPhoneticEmbedder_phoneticEmbedder);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_226039A34(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___CESRPhoneticEmbedder_phoneticEmbedder);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_226039AB8()
{
  v2 = (v0 + OBJC_IVAR___CESRPhoneticEmbedder_localeString);
  swift_beginAccess();
  v3 = *v2;
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_226039B2C(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v5 = (v2 + OBJC_IVAR___CESRPhoneticEmbedder_localeString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

void __swiftcall CESRPhoneticEmbedder.init(localeIdentifier:clientID:)(CESRPhoneticEmbedder *__return_ptr retstr, Swift::String localeIdentifier, Swift::String clientID)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2260999F8();
  v4 = sub_2260999F8();
  [v3 initWithLocaleIdentifier:v5 clientID:?];
  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v5);
}

char *CESRPhoneticEmbedder.init(localeIdentifier:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v67 = a3;
  v78 = a2;
  v77 = a1;
  v62 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v60 = 0;
  sub_226099398();
  MEMORY[0x28223BE20](0);
  v61 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_226099388();
  v64 = *(v63 - 8);
  v65 = v64;
  MEMORY[0x28223BE20](v62);
  v66 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_226098C58();
  v69 = v76;
  v70 = *(v76 - 8);
  v75 = v70;
  v71 = v70;
  v72 = *(v70 + 64);
  MEMORY[0x28223BE20](v77);
  v6 = &v36 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v6;
  v107 = v7;
  v108 = v8;
  v105 = v9;
  v106 = v10;
  v109 = v11;
  v74 = &v11[OBJC_IVAR___CESRPhoneticEmbedder_localeString];
  v12 = sub_226099838();
  v13 = v74;
  *v74 = v12;
  v13[1] = v14;
  v15 = sub_226039960();
  (*(v75 + 16))(v6, v15, v76);
  sub_2260998E8();
  v81 = 32;
  v85 = 32;
  v86 = 7;
  v16 = swift_allocObject();
  v17 = v78;
  v87 = v16;
  *(v16 + 16) = v77;
  *(v16 + 24) = v17;
  v97 = sub_226098C48();
  v79 = v97;
  v96 = sub_22609A0A8();
  v80 = v96;
  v82 = 17;
  v90 = swift_allocObject();
  v83 = v90;
  *(v90 + 16) = v81;
  v91 = swift_allocObject();
  v84 = v91;
  *(v91 + 16) = 8;
  v18 = swift_allocObject();
  v19 = v87;
  v88 = v18;
  *(v18 + 16) = sub_225EF7450;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v88;
  v94 = v20;
  v89 = v20;
  *(v20 + 16) = sub_225EF7B84;
  *(v20 + 24) = v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v92 = sub_22609A4F8();
  v93 = v22;

  v23 = v90;
  v24 = v93;
  *v93 = sub_225EF7434;
  v24[1] = v23;

  v25 = v91;
  v26 = v93;
  v93[2] = sub_225EF7434;
  v26[3] = v25;

  v27 = v93;
  v28 = v94;
  v93[4] = sub_225EF7B90;
  v27[5] = v28;
  sub_225EF5418();

  if (os_log_type_enabled(v97, v96))
  {
    v29 = v60;
    v53 = sub_22609A188();
    v50 = v53;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v54 = sub_225EF5468(0, v51, v51);
    v52 = v54;
    v56 = 1;
    v55 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v102 = v53;
    v101 = v54;
    v100 = v55;
    v57 = &v102;
    sub_225EF54BC(2, &v102);
    sub_225EF54BC(v56, v57);
    v98 = sub_225EF7434;
    v99 = v83;
    sub_225EF73E8(&v98, v57, &v101, &v100);
    v58 = v29;
    v59 = v29;
    if (v29)
    {
      v48 = 0;

      __break(1u);
    }

    else
    {
      v98 = sub_225EF7434;
      v99 = v84;
      sub_225EF73E8(&v98, &v102, &v101, &v100);
      v46 = 0;
      v47 = 0;
      v98 = sub_225EF7B90;
      v99 = v89;
      sub_225EF73E8(&v98, &v102, &v101, &v100);
      v44 = 0;
      v45 = 0;
      _os_log_impl(&dword_225EEB000, v79, v80, "CESRPhoneticEmbedder init with language %s", v50, 0xCu);
      sub_225EF7AF4(v52, 0, v51);
      sub_225EF7AF4(v55, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v49 = v44;
    }
  }

  else
  {
    v30 = v60;

    v49 = v30;
  }

  (*(v71 + 8))(v73, v69);
  v36 = v109;
  sub_2260998E8();
  v37 = &v36[OBJC_IVAR___CESRPhoneticEmbedder_localeString];
  v38 = &v104;
  v39 = 0;
  swift_beginAccess();
  v31 = v37;
  v32 = v78;
  *v37 = v77;
  v31[1] = v32;

  swift_endAccess();
  v42 = v109;
  sub_2260993E8();
  sub_226098AB8();
  v41 = &v36;
  MEMORY[0x28223BE20](v77);
  v40 = &v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226098A88();
  sub_2260998E8();
  (*(v65 + 104))(v66, *MEMORY[0x277CDCC88], v63);
  sub_225F56EB4(v61);
  *&v42[OBJC_IVAR___CESRPhoneticEmbedder_phoneticEmbedder] = sub_2260993B8();
  v103.receiver = v109;
  v103.super_class = CESRPhoneticEmbedder;
  v43 = objc_msgSendSuper2(&v103, sel_init);
  v34 = v43;
  v109 = v43;

  return v43;
}

uint64_t CESRPhoneticEmbedder.findAlternatives(for:maxResults:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = v3;
  v4[22] = a3;
  v4[21] = a2;
  v4[20] = a1;
  v4[11] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[19] = 0;
  v4[5] = a1;
  v4[6] = a2;
  v4[12] = a3;
  v4[13] = v3;
  return MEMORY[0x2822009F8](sub_22603A830, 0, 0);
}

{
  swift_beginAccess();

  swift_endAccess();
  sub_2260993C8();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786120, &qword_2260A01B8);
  v3 = sub_225F2CF78();
  v7 = sub_225F15970(sub_225F28A40, 0, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v6);

  return v7;
}

uint64_t sub_22603A830()
{
  v6 = v0[23];
  v0[11] = v0;
  v0[14] = sub_22609A4F8();
  v7 = (v6 + OBJC_IVAR___CESRPhoneticEmbedder_phoneticEmbedder);
  swift_beginAccess();
  v0[24] = *v7;

  swift_endAccess();
  v1 = swift_task_alloc();
  v8[25] = v1;
  *v1 = v8[11];
  v1[1] = sub_22603A954;
  v2 = v8[22];
  v3 = v8[21];
  v4 = v8[20];

  return MEMORY[0x28212C020](v2, v4, v3);
}

uint64_t sub_22603A954(uint64_t a1)
{
  v5 = *v2;
  v5[11] = *v2;
  v5[26] = a1;
  v5[27] = v1;

  if (v1)
  {
    v3 = sub_22603ACF0;
  }

  else
  {

    v3 = sub_22603AAD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22603AAD8()
{
  v7 = v0[26];
  v0[11] = v0;
  v0[16] = v7;
  sub_2260998E8();
  v0[17] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786120, &qword_2260A01B8);
  sub_225F2CF78();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786F40, &qword_2260A13B8);
    sub_22609A388();
    v5 = v6[18];
    if (!v5)
    {
      break;
    }

    v6[19] = v5;
    v6[9] = sub_2260993F8();
    v6[10] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    sub_226099CE8();
  }

  sub_225EFE6E8(v6 + 7);
  v4 = v6[14];
  sub_2260998E8();

  sub_225EFE6E8(v6 + 14);
  v2 = *(v6[11] + 8);

  return v2(v4, 0);
}

uint64_t sub_22603ACF0()
{
  v4 = v0[27];
  v0[11] = v0;

  v1 = v4;
  v0[15] = v4;

  sub_225EFE6E8(v0 + 14);
  v2 = *(v0[11] + 8);

  return v2(0, v4);
}

uint64_t sub_22603AE8C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[4] = a4;
  v4[3] = a1;
  v4[2] = v4;
  MEMORY[0x277D82BE0](a1);
  v4[5] = _Block_copy(a3);
  MEMORY[0x277D82BE0](a4);
  v13 = sub_226099A08();
  v11 = v6;
  v4[6] = v6;
  v7 = swift_task_alloc();
  *(v10 + 56) = v7;
  *v7 = *(v10 + 16);
  v7[1] = sub_22603AF98;

  return CESRPhoneticEmbedder.findAlternatives(for:maxResults:)(v13, v11, a2);
}

uint64_t sub_22603AF98(uint64_t a1, void *a2)
{
  v4 = *v3;
  *(v4 + 16) = *v3;
  v18 = v4 + 16;
  v19 = v4 + 16;

  if (v2)
  {
    if (*(v18 + 24))
    {
      v10 = *(v18 + 24);
      v11 = sub_2260988D8();
      (*(v10 + 16))(v10, 0);
    }

    _Block_release(*(v18 + 24));
  }

  else
  {
    if (*(v18 + 24))
    {
      v15 = *(v18 + 24);
      sub_2260998E8();
      v16 = 0;
      if (a1)
      {
        v14 = sub_226099C78();

        v16 = v14;
      }

      v5 = a2;
      v13 = 0;
      if (a2)
      {
        v12 = sub_2260988D8();

        v13 = v12;
      }

      (*(v15 + 16))(v15, v16);
    }

    _Block_release(*(v18 + 24));
  }

  v9 = *(v18 + 16);
  v8 = *(v18 + 8);

  v6 = *(*v19 + 8);

  return v6();
}

uint64_t sub_22603B274(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v24 = &unk_2260A13D8;
  v27 = &unk_2260A13E8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v26 = &v17 - v17;
  v25 = 0;
  v3 = sub_226099DA8();
  (*(*(v3 - 8) + 56))(v26, 1);
  v20 = 48;
  v21 = 7;
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v4;
  v7 = v19;
  v28 = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v7;
  v6[5] = v5;
  v22 = v6[2];
  v23 = v6[3];
  swift_unknownObjectRetain();
  v8 = swift_allocObject();
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v8;
  v15 = v28;
  v14[2] = v22;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v15;
  sub_22603B998(v11, v11, v12, v13, v14);
}

uint64_t sub_22603B780(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v7 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_225F3E5DC;

  return v7();
}

uint64_t sub_22603B88C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v8 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_225F3E5DC;

  return v8();
}

uint64_t sub_22603B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v47 = a4;
  v48 = a5;
  v49 = &unk_2260A1400;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &unk_2260A13F8;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v56 = v16 - v55;
  sub_225EF7BD0(v5, v16 - v55);
  v57 = sub_226099DA8();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_225EF7CF8(v56);
    v44 = 0;
  }

  else
  {
    v43 = sub_226099D98();
    (*(v58 + 8))(v56, v57);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v48 + 16);
  v41 = *(v48 + 24);
  swift_unknownObjectRetain();
  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_226099D48();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  sub_2260998E8();
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v22 = v46;
    v23 = sub_226099A68();

    v24 = v23 + 32;

    v7 = swift_allocObject();
    v8 = v48;
    v9 = v31;
    v10 = v30;
    v25 = v7;
    *(v7 + 16) = v47;
    *(v7 + 24) = v8;
    v26 = 0;
    if (v9 != 0 || v10 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v31;
      v63[3] = v30;
      v26 = v63;
    }

    v60 = 7;
    v61 = v26;
    v62 = v24;
    v21 = swift_task_create();

    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  v20 = v27;
  if (v27)
  {
    v16[1] = v20;
    v16[0] = v20;
    sub_225EF7CF8(v54);

    return v16[0];
  }

  else
  {

    sub_225EF7CF8(v54);
    v11 = swift_allocObject();
    v12 = v48;
    v13 = v31;
    v14 = v30;
    v18 = v11;
    *(v11 + 16) = v47;
    *(v11 + 24) = v12;
    v19 = 0;
    if (v13 != 0 || v14 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v31;
      v64[3] = v30;
      v19 = v64;
    }

    return swift_task_create();
  }
}

uint64_t sub_22603BFB8()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_22603AE8C(v8, v5, v6, v7);
}

unint64_t type metadata accessor for CESRPhoneticEmbedder()
{
  v2 = qword_27D786F48;
  if (!qword_27D786F48)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F48);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_22603C114()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_22603B780(v7, v5, v6);
}

uint64_t sub_22603C20C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_22603B88C(a1, v6, v7, v8);
}

uint64_t sub_22603C30C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225EFB2FC(a1, v6);
}

void sub_22603C3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v17 = 0;
  v23 = 0;
  v25 = a1;
  v26 = a2;
  v24 = a3;
  sub_22603C624();
  v18 = sub_225F26174();
  v22 = v18;
  sub_226045530();
  v20 = sub_225F26174();
  v19 = v20;
  v21 = v20;
  v3 = v20;
  if (v20)
  {
    v15 = v19;
    v14 = v19;
    [v19 setStartedOrChanged_];
  }

  v4 = v19;
  if (v19)
  {
    v13 = v19;
    v12 = v19;
  }

  else
  {
    v12 = 0;
  }

  v10 = v12;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v11 = &v6;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6);
  v9 = &v6 - v6;
  v8 = sub_226098A78();
  v7 = *(v8 - 8);
  (*(v7 + 16))(v9, v16);
  (*(v7 + 56))(v9, 0, 1, v8);
  sub_2260430A0(v10, v9);
  sub_225F7C078(v9);
}

unint64_t sub_22603C624()
{
  v2 = qword_27D786F68;
  if (!qword_27D786F68)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F68);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_22603C688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v281 = &v318;
  v285 = a4;
  v284 = a3;
  v298 = a2;
  v283 = a1;
  v286 = 0;
  v348 = 0;
  v347 = 0;
  v346 = 0;
  v345 = 0;
  v344 = 0;
  v343 = 0;
  v282 = 0;
  v338 = 0;
  v337 = 0;
  v336 = 0;
  v335 = 0;
  v330 = 0;
  v325 = 0;
  v324 = 0;
  memset(v323, 0, sizeof(v323));
  v320 = 0;
  v319 = 0u;
  v318 = 0u;
  v317 = 0uLL;
  v316 = 0uLL;
  v311 = 0;
  v305 = 0;
  v287 = sub_226098C58();
  v288 = *(v287 - 8);
  v289 = v288;
  v293 = *(v288 + 64);
  MEMORY[0x28223BE20](0);
  v295 = (v293 + 15) & 0xFFFFFFFFFFFFFFF0;
  v290 = &v49 - v295;
  MEMORY[0x28223BE20](v5);
  v291 = &v49 - v295;
  MEMORY[0x28223BE20](v6);
  v292 = &v49 - v295;
  MEMORY[0x28223BE20](v7);
  v294 = &v49 - v295;
  MEMORY[0x28223BE20](v8);
  v296 = &v49 - v295;
  v347 = v9;
  v348 = v10;
  v346 = v11;
  v345 = v12;
  v344 = v4;
  sub_226045594();
  v297 = sub_225F26174();
  v343 = v297;
  sub_2260998E8();
  if (!v298)
  {
LABEL_90:
    v46 = v290;
    v47 = sub_226040700();
    (*(v289 + 16))(v46, v47, v287);
    v68 = sub_226098C48();
    v65 = v68;
    v67 = sub_22609A078();
    v66 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v69 = sub_22609A4F8();
    if (os_log_type_enabled(v68, v67))
    {
      v48 = v282;
      v56 = sub_22609A188();
      v52 = v56;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v54 = 0;
      v57 = sub_225EF5468(0, v53, v53);
      v55 = v57;
      v58 = sub_225EF5468(v54, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v342 = v56;
      v341 = v57;
      v340 = v58;
      v59 = 0;
      v60 = &v342;
      sub_225EF54BC(0, &v342);
      sub_225EF54BC(v59, v60);
      v339 = v69;
      v61 = &v49;
      MEMORY[0x28223BE20](&v49);
      v62 = &v49 - 6;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v64 = v48;
      if (v48)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v65, v66, "asrId is nil", v52, 2u);
        v50 = 0;
        sub_225EF7AF4(v55, 0, v53);
        sub_225EF7AF4(v58, v50, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v51 = v64;
      }
    }

    else
    {

      v51 = v282;
    }

    v49 = v51;

    (*(v289 + 8))(v290, v287);
    v122 = v49;
    return;
  }

  v279 = v283;
  v280 = v298;
  v270 = v298;
  v271 = v283;
  v337 = v283;
  v338 = v298;
  v278 = sub_226098A78();
  v264 = v278;
  v265 = *(v278 - 8);
  v276 = v265;
  v266 = v265;
  v267 = *(v265 + 64);
  v268 = &v49;
  MEMORY[0x28223BE20](&v49);
  v269 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = v269;
  v272 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v273 = &v49;
  v274 = (v272 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v271);
  v277 = &v49 - v274;
  v275 = &v49 - v274;
  sub_226098A18();
  if ((*(v276 + 48))(v277, 1, v278) == 1)
  {
    sub_225F7C078(v275);

    goto LABEL_90;
  }

  (*(v266 + 32))(v269, v275, v264);
  v261 = 0;
  v258 = sub_225F7BD5C();
  v260 = &v49;
  MEMORY[0x28223BE20](&v49);
  v259 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226098A68();
  v262 = sub_22603E5E0(v259);
  v335 = v262;
  sub_226045FF4();
  v263 = sub_225F26174();
  if (!v263)
  {
    v43 = v291;
    v44 = sub_226040700();
    (*(v289 + 16))(v43, v44, v287);
    v89 = sub_226098C48();
    v86 = v89;
    v88 = sub_22609A078();
    v87 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v90 = sub_22609A4F8();
    if (os_log_type_enabled(v89, v88))
    {
      v45 = v282;
      v77 = sub_22609A188();
      v73 = v77;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v75 = 0;
      v78 = sub_225EF5468(0, v74, v74);
      v76 = v78;
      v79 = sub_225EF5468(v75, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v334 = v77;
      v333 = v78;
      v332 = v79;
      v80 = 0;
      v81 = &v334;
      sub_225EF54BC(0, &v334);
      sub_225EF54BC(v80, v81);
      v331 = v90;
      v82 = &v49;
      MEMORY[0x28223BE20](&v49);
      v83 = &v49 - 6;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v85 = v45;
      if (v45)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v86, v87, "Failed to create DODMLASRAudioFileResult", v73, 2u);
        v71 = 0;
        sub_225EF7AF4(v76, 0, v74);
        sub_225EF7AF4(v79, v71, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v72 = v85;
      }
    }

    else
    {

      v72 = v282;
    }

    v70 = v72;

    (*(v289 + 8))(v291, v287);
    (*(v266 + 8))(v269, v264);

    v122 = v70;
    return;
  }

  v257 = v263;
  v253 = v263;
  v330 = v263;
  v248 = &v49;
  v15 = MEMORY[0x28223BE20](&v49);
  v247 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = *(v266 + 16);
  v246 = (v266 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v245(v15);
  v249 = sub_22603E5E0(v247);
  [v253 setAsrId_];

  v17 = v262;
  [v253 setLinkId_];

  v255 = 0;
  v251 = sub_226046058();
  v250 = v251;
  v252 = sub_22609A4F8();
  v254 = sub_226099C78();

  [v253 setDecodingResults_];

  sub_2260460BC();
  v256 = sub_225F26174();
  if (!v256)
  {
    v40 = v292;
    v41 = sub_226040700();
    (*(v289 + 16))(v40, v41, v287);
    v110 = sub_226098C48();
    v107 = v110;
    v109 = sub_22609A078();
    v108 = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v111 = sub_22609A4F8();
    if (os_log_type_enabled(v110, v109))
    {
      v42 = v282;
      v98 = sub_22609A188();
      v94 = v98;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v96 = 0;
      v99 = sub_225EF5468(0, v95, v95);
      v97 = v99;
      v100 = sub_225EF5468(v96, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v329 = v98;
      v328 = v99;
      v327 = v100;
      v101 = 0;
      v102 = &v329;
      sub_225EF54BC(0, &v329);
      sub_225EF54BC(v101, v102);
      v326 = v111;
      v103 = &v49;
      MEMORY[0x28223BE20](&v49);
      v104 = &v49 - 6;
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v106 = v42;
      if (v42)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v107, v108, "Failed to create DODMLASRAudioFileResultTier1", v94, 2u);
        v92 = 0;
        sub_225EF7AF4(v97, 0, v95);
        sub_225EF7AF4(v100, v92, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v93 = v106;
      }
    }

    else
    {

      v93 = v282;
    }

    v91 = v93;

    (*(v289 + 8))(v292, v287);
    (*(v266 + 8))(v269, v264);

    v122 = v91;
    return;
  }

  v244 = v256;
  v241 = v256;
  v325 = v256;
  v18 = v262;
  [v241 setLinkId_];

  v237 = 0;
  v239 = sub_226046120();
  v238 = v239;
  v240 = sub_22609A4F8();
  v242 = sub_226099C78();

  [v241 setOneBestTranscripts_];

  sub_2260998E8();
  sub_226099898();
  v19 = v281;
  v20 = v282;
  v21 = v349;
  v324 = v351;
  v281[6] = v350;
  v19[5] = v21;
  for (i = v20; ; i = v177)
  {
    v234 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FA0, &qword_2260A1410);
    sub_226099908();
    v235 = v321;
    v236 = v322;
    if (!*(&v321 + 1))
    {
      break;
    }

    v232 = v235;
    v233 = v236;
    v230 = v236;
    v229 = v235;
    v318 = v235;
    v319 = v236;
    sub_2260998E8();
    sub_2260998E8();
    v317 = v230;

    sub_2260998E8();
    sub_2260998E8();
    v316 = v229;

    v231 = sub_22604578C(v230, *(&v230 + 1));
    if (!v231)
    {
      v28 = v294;
      v29 = sub_226040700();
      (*(v289 + 16))(v28, v29, v287);
      v151 = sub_226098C48();
      v148 = v151;
      v150 = sub_22609A078();
      v149 = v150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v152 = sub_22609A4F8();
      if (os_log_type_enabled(v151, v150))
      {
        v30 = v234;
        v138 = sub_22609A188();
        v134 = v138;
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v136 = 0;
        v139 = sub_225EF5468(0, v135, v135);
        v137 = v139;
        v140 = sub_225EF5468(v136, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v315 = v138;
        v314 = v139;
        v313 = v140;
        v141 = 0;
        v142 = &v315;
        sub_225EF54BC(0, &v315);
        sub_225EF54BC(v141, v142);
        v312 = v152;
        v145 = &v49;
        MEMORY[0x28223BE20](&v49);
        v143 = &v49 - 6;
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v146 = v30;
        v147 = v145;
        if (v30)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v148, v149, "Failed to create ASROneBestTranscriptTier1", v134, 2u);
          v132 = 0;
          sub_225EF7AF4(v137, 0, v135);
          sub_225EF7AF4(v140, v132, MEMORY[0x277D84F70] + 8);
          sub_22609A168();

          v133 = v146;
        }
      }

      else
      {

        v133 = v234;
      }

      v131 = v133;

      (*(v289 + 8))(v294, v287);

      v177 = v131;
      continue;
    }

    v228 = v231;
    v226 = v231;
    v311 = v231;
    v227 = [v241 oneBestTranscripts];
    if (v227)
    {
      v225 = v227;
      v222 = v227;
      v223 = sub_226099C88();

      v224 = v223;
    }

    else
    {
      v224 = 0;
    }

    v310 = v224;
    if (v224)
    {
      v22 = v226;
      v299 = v226;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FB0, &qword_2260A1420);
      sub_226099CE8();
      v215 = v310;
      if (v310)
      {
        v214 = v215;
        v211 = v215;
        v212 = sub_226099C78();

        v213 = v212;
      }

      else
      {
        v213 = 0;
      }

      v210 = v213;
      [v241 setOneBestTranscripts_];
    }

    else
    {
      v221 = 0;
      v220 = 0;
      sub_2260998E8();
      if (v221)
      {
        v219 = v220;
        v216 = v220;
        v217 = sub_226099C78();

        v218 = v217;
      }

      else
      {
        v218 = 0;
      }

      v153 = v218;
      [v241 setOneBestTranscripts_];

      sub_225EFE6E8(&v310);
    }

    v209 = sub_225F26174();
    if (!v209)
    {
      v25 = v296;
      v26 = sub_226040700();
      (*(v289 + 16))(v25, v26, v287);
      v174 = sub_226098C48();
      v171 = v174;
      v173 = sub_22609A078();
      v172 = v173;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v175 = sub_22609A4F8();
      if (os_log_type_enabled(v174, v173))
      {
        v27 = v234;
        v161 = sub_22609A188();
        v157 = v161;
        v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v159 = 0;
        v162 = sub_225EF5468(0, v158, v158);
        v160 = v162;
        v163 = sub_225EF5468(v159, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v309 = v161;
        v308 = v162;
        v307 = v163;
        v164 = 0;
        v165 = &v309;
        sub_225EF54BC(0, &v309);
        sub_225EF54BC(v164, v165);
        v306 = v175;
        v168 = &v49;
        MEMORY[0x28223BE20](&v49);
        v166 = &v49 - 6;
        v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v169 = v27;
        v170 = v168;
        if (v27)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v171, v172, "Failed to create DODMLASRDecodingResult", v157, 2u);
          v155 = 0;
          sub_225EF7AF4(v160, 0, v158);
          sub_225EF7AF4(v163, v155, MEMORY[0x277D84F70] + 8);
          sub_22609A168();

          v156 = v169;
        }
      }

      else
      {

        v156 = v234;
      }

      v154 = v156;

      (*(v289 + 8))(v296, v287);

      v177 = v154;
      continue;
    }

    v208 = v209;
    v205 = v209;
    v305 = v209;
    sub_2260998E8();
    v206 = sub_2260999F8();

    [v205 setConfigName_];

    v207 = [v241 oneBestTranscripts];
    if (v207)
    {
      v204 = v207;
      v201 = v207;
      v202 = sub_226099C88();

      v203 = v202;
    }

    else
    {
      v203 = 0;
    }

    v304 = v203;
    if (v203)
    {
      v197 = v304;
      sub_2260998E8();
      sub_225EFE6E8(&v304);
      v198 = sub_226099CD8();

      v199 = v198;
      v200 = 0;
    }

    else
    {
      sub_225EFE6E8(&v304);
      v199 = 0;
      v200 = 1;
    }

    v302 = v199;
    v303 = v200 & 1;
    if (v200)
    {
      v196 = 1;
    }

    else
    {
      v196 = v302;
    }

    v23 = __OFSUB__(v196, 1);
    v195 = v196 - 1;
    if (v23)
    {
      __break(1u);
      return;
    }

    if (v195 < 0)
    {
      sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
      __break(1u);
    }

    if (v195 <= 0xFFFFFFFFLL)
    {
      [v205 setOneBestTranscriptLinkIndex_];
      v194 = [v253 decodingResults];
      if (!v194)
      {
        v192 = 0;
        goto LABEL_43;
      }

      v193 = v194;
    }

    else
    {
      sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
      __break(1u);
    }

    v190 = v193;
    v191 = sub_226099C88();

    v192 = v191;
LABEL_43:
    v301 = v192;
    if (v192)
    {
      v24 = v205;
      v300 = v205;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FA8, &qword_2260A1418);
      sub_226099CE8();
      v183 = v301;
      if (v301)
      {
        v182 = v183;
        v179 = v183;
        v180 = sub_226099C78();

        v181 = v180;
      }

      else
      {
        v181 = 0;
      }

      v178 = v181;
      [v253 setDecodingResults_];
    }

    else
    {
      v189 = 0;
      v188 = 0;
      sub_2260998E8();
      if (v189)
      {
        v187 = v188;
        v184 = v188;
        v185 = sub_226099C78();

        v186 = v185;
      }

      else
      {
        v186 = 0;
      }

      v176 = v186;
      [v253 setDecodingResults_];

      sub_225EFE6E8(&v301);
    }

    v177 = v234;
  }

  sub_225F15874(v323);
  v31 = v297;
  if (v297)
  {
    v130 = v297;
    v129 = v297;
    v32 = v253;
    [v129 setAudioFileResult_];
  }

  sub_226045530();
  v128 = sub_225F26174();
  v127 = v128;
  v320 = v128;
  v33 = v128;
  if (v128)
  {
    v126 = v127;
    v125 = v127;
    [v127 setEnded_];
  }

  v34 = v127;
  if (v127)
  {
    v124 = v127;
    v123 = v127;
  }

  else
  {
    v123 = 0;
  }

  v113 = v123;
  v114 = &v49;
  v35 = MEMORY[0x28223BE20](&v49);
  v115 = (v272 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = &v49 - v115;
  v36(v35);
  v119 = *(v266 + 56);
  v118 = v266 + 56;
  v116 = 0;
  v117 = 1;
  v119(v112);
  sub_2260430A0(v113, v112);
  sub_225F7C078(v112);

  v37 = v241;
  v121 = &v49;
  v38 = MEMORY[0x28223BE20](&v49);
  v120 = &v49 - v115;
  v39(v38);
  (v119)(v120, v116, v117, v264);
  sub_2260430A0(v241, v120);
  sub_225F7C078(v120);

  (*(v266 + 8))(v269, v264);

  v122 = v234;
}