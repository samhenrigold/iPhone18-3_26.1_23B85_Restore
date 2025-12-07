uint64_t sub_23C0B3830(uint64_t a1, uint64_t a2)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0E9890();
  sub_23C0B51F4();
  if (!sub_23C0E9CD0())
  {
    v3 = [objc_opt_self() mainBundle];
  }

  sub_23C0E98E0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE7F0, &qword_23C0EA818);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7D0, &qword_23C0EA808);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7D8, &qword_23C0EA810);
  sub_23C0E9880();
  sub_23C0B5594(&qword_27E1EE7E0, &qword_27E1EE7D8, &qword_23C0EA810, MEMORY[0x28220FEA0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_23C0E99A0();
}

uint64_t sub_23C0B3B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  sub_23C0E9B90();
  v5 = sub_23C0E9B80();
  v6 = MEMORY[0x277D85700];
  v35 = v5;
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE7D0, &qword_23C0EA808);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE7D8, &qword_23C0EA810);
  v31 = v29;
  v30 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v29[3] = sub_23C0E9890();
  v29[2] = v14;
  v29[1] = v15;

  v16 = sub_23C0E9B80();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v6;
  v17[4] = a1;
  v17[5] = a2;

  v18 = sub_23C0E9B80();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v6;
  v19[4] = a1;
  v19[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  v20 = sub_23C0E9980();
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  MEMORY[0x28223BE20](v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE7F8, &qword_23C0EA820);
  sub_23C0B52AC();
  sub_23C0B5384();
  sub_23C0E9970();
  v21 = sub_23C0E9880();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C0E9870();
  v25 = sub_23C0B5594(&qword_27E1EE7E0, &qword_27E1EE7D8, &qword_23C0EA810, MEMORY[0x28220FEA0]);
  v26 = MEMORY[0x277CDDD98];
  sub_23C0E9920();
  (*(v22 + 8))(v24, v21);
  (*(v30 + 8))(v13, v11);
  *&v40 = v11;
  *(&v40 + 1) = v21;
  *&v41 = v25;
  *(&v41 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v32;
  sub_23C0E9930();
  (*(v33 + 8))(v10, v27);
}

uint64_t sub_23C0B4000@<X0>(uint64_t *a3@<X8>)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE818, &qword_23C0EA828);
  sub_23C0E9960();
  swift_getKeyPath();
  sub_23C0B5514(&qword_27E1EE820, type metadata accessor for MicrophoneSelectionViewModel, &protocol conformance descriptor for MicrophoneSelectionViewModel);
  sub_23C0E97B0();

  v4 = v11[3];
  v5 = v11[4];
  v6 = v11[5];
  v7 = v11[6];
  v8 = v11[7];
  v9 = v11[8];
  sub_23C0B4DE4(v4, v5, v6, v7, v8, v9);

  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = v8;
  a3[5] = v9;
  return result;
}

uint64_t sub_23C0B4184(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE818, &qword_23C0EA828);
  sub_23C0E9960();
  sub_23C0B7C14(v7);
}

uint64_t sub_23C0B426C(uint64_t a1, uint64_t a2)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE818, &qword_23C0EA828);
  sub_23C0E9960();
  swift_getKeyPath();
  sub_23C0B5514(&qword_27E1EE820, type metadata accessor for MicrophoneSelectionViewModel, &protocol conformance descriptor for MicrophoneSelectionViewModel);
  sub_23C0E97B0();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE830, &qword_23C0EA880);
  sub_23C0B5454();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE798, &qword_23C0EB080);
  sub_23C0B52AC();
  swift_getOpaqueTypeConformance2();
  sub_23C0E9990();
}

uint64_t sub_23C0B44A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0B54B8();

  *a2 = sub_23C0E98F0();
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  *(a2 + 80) = 1;

  sub_23C0B4DE4(v3, v4, v5, v6, v7, v8);
  sub_23C0B4E34(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_23C0B45F0(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23C0E98C0();
  }

  else
  {
    sub_23C0E9860();
    swift_getWitnessTable();
    sub_23C0E98B0();
    sub_23C0E9850();
    sub_23C0E9CE0();
    swift_getWitnessTable();
    sub_23C0E9860();
    swift_getWitnessTable();
    sub_23C0E98B0();
  }

  return sub_23C0E9850();
}

uint64_t sub_23C0B4718(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23C0E98C0();
    sub_23C0E9850();
  }

  else
  {
    sub_23C0E9860();
    swift_getWitnessTable();
    sub_23C0E98B0();
    sub_23C0E9850();
    sub_23C0E9CE0();
    swift_getWitnessTable();
    sub_23C0E9860();
    swift_getWitnessTable();
    sub_23C0E98B0();
    sub_23C0E9850();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23C0B4928()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE7C0, &qword_23C0EA800);
  sub_23C0B5070();
  return sub_23C0E98D0();
}

uint64_t sub_23C0B499C()
{
  v0 = sub_23C0E9A10();
  v1 = MEMORY[0x23EEC6FB0](v0);

  return v1;
}

uint64_t sub_23C0B49D8(uint64_t a1)
{
  sub_23C0E9A10();
  sub_23C0E9A60();
}

uint64_t sub_23C0B4A2C(uint64_t a1)
{
  sub_23C0E9A10();
  sub_23C0E9DC0();
  sub_23C0E9A60();
  v1 = sub_23C0E9DE0();

  return v1;
}

uint64_t sub_23C0B4AA8(uint64_t a1, id *a2)
{
  result = sub_23C0E99F0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C0B4B20(uint64_t a1, id *a2)
{
  v3 = sub_23C0E9A00();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23C0B4BA0@<X0>(uint64_t *a2@<X8>)
{
  sub_23C0E9A10();
  v3 = sub_23C0E99E0();

  *a2 = v3;
  return result;
}

uint64_t sub_23C0B4BE4(void *a1, uint64_t *a2)
{
  v2 = sub_23C0E9A10();
  v4 = v3;
  if (v2 == sub_23C0E9A10() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23C0E9D90();
  }

  return v7 & 1;
}

uint64_t sub_23C0B4C6C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23C0E99E0();

  *a2 = v3;
  return result;
}

uint64_t sub_23C0B4CB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23C0E9A10();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23C0B4CE0(uint64_t a1)
{
  v2 = sub_23C0B5514(&qword_27E1EE848, type metadata accessor for AVInputContextSetInputDeviceOptionsKey, &unk_23C0EA7BC);
  v3 = sub_23C0B5514(&qword_27E1EE850, type metadata accessor for AVInputContextSetInputDeviceOptionsKey, &unk_23C0EA6CC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_23C0B4DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_23C0B4E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23C0B4E90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23C0B4ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for AVInputContextSetInputDeviceOptionsKey()
{
  if (!qword_27E1EE7A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E1EE7A0);
    }
  }
}

unint64_t sub_23C0B5070()
{
  result = qword_27E1EE7C8;
  if (!qword_27E1EE7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7C0, &qword_23C0EA800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7D0, &qword_23C0EA808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7D8, &qword_23C0EA810);
    sub_23C0E9880();
    sub_23C0B5594(&qword_27E1EE7E0, &qword_27E1EE7D8, &qword_23C0EA810, MEMORY[0x28220FEA0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE7C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23C0B51F4()
{
  result = qword_27E1EE7E8;
  if (!qword_27E1EE7E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1EE7E8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_23C0B52AC()
{
  result = qword_27E1EE800;
  if (!qword_27E1EE800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE798, &qword_23C0EB080);
    sub_23C0B5330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE800);
  }

  return result;
}

unint64_t sub_23C0B5330()
{
  result = qword_27E1EE808;
  if (!qword_27E1EE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE808);
  }

  return result;
}

unint64_t sub_23C0B5384()
{
  result = qword_27E1EE810;
  if (!qword_27E1EE810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE7F8, &qword_23C0EA820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE798, &qword_23C0EB080);
    sub_23C0B52AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE810);
  }

  return result;
}

unint64_t sub_23C0B5454()
{
  result = qword_27E1EE838;
  if (!qword_27E1EE838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE828, &qword_23C0EA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE838);
  }

  return result;
}

unint64_t sub_23C0B54B8()
{
  result = qword_27E1EE840;
  if (!qword_27E1EE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE840);
  }

  return result;
}

uint64_t sub_23C0B5514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23C0B5594(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23C0B55E0()
{
  v2 = [*v0 inputDevice];
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_23C0B5650(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (a2)
  {
    v5 = sub_23C0E99E0();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 userPreferredInputDevice_];

  v7 = *(v3 + 8);

  return v7(v6);
}

uint64_t sub_23C0B56E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0B57A4;

  return sub_23C0B5A78(a1, a2);
}

uint64_t sub_23C0B57A4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23C0B58A0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE868, qword_23C0EA920);
  return sub_23C0E9B60();
}

uint64_t sub_23C0B5900(uint64_t a1, uint64_t a2)
{
  sub_23C0B597C(a1, a2);
  v3 = *(v2 + 8);

  return v3();
}

id sub_23C0B597C(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = sub_23C0E99E0();
  }

  else
  {
    v3 = 0;
  }

  v7[0] = 0;
  v4 = [v2 clearUserPreferredInputDevice:v3 error:v7];

  if (v4)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_23C0E9770();

  return swift_willThrow();
}

uint64_t sub_23C0B5A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE868, qword_23C0EA920);
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  v2[19] = v6;
  if (a2)
  {
    type metadata accessor for AVInputContextSetInputDeviceOptionsKey();
    sub_23C0B5F6C();
    v7 = sub_23C0E99B0();
  }

  else
  {
    v7 = 0;
  }

  v2[20] = v7;
  v2[2] = v2;
  v2[7] = v2 + 18;
  v2[3] = sub_23C0B5CCC;
  swift_continuation_init();
  v2[17] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 14);
  sub_23C0B5E60();
  sub_23C0E9B50();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v4);
  v2[10] = MEMORY[0x277D85DD0];
  v2[11] = 1107296256;
  v2[12] = sub_23C0B58A0;
  v2[13] = &block_descriptor;
  [v10 setInputDevice:a1 options:v7 completionHandler:v2 + 10];
  (*(v5 + 8))(boxed_opaque_existential_0, v4);

  return MEMORY[0x282200938](v2 + 2);
}

uint64_t sub_23C0B5CCC()
{
  v4 = *v0;
  v1 = *(*v0 + 144);

  v2 = *(v4 + 8);

  return v2(v1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_23C0B5E60()
{
  result = qword_27E1EE870;
  if (!qword_27E1EE870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1EE870);
  }

  return result;
}

uint64_t sub_23C0B5EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_23C0B5F6C()
{
  result = qword_27E1EE848;
  if (!qword_27E1EE848)
  {
    type metadata accessor for AVInputContextSetInputDeviceOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE848);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_23C0B6008()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_23C0E9790();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23C0E99D0();
  MEMORY[0x28223BE20](v4 - 8);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  sub_23C0E99C0();
  sub_23C0B51F4();
  if (!sub_23C0E9CD0())
  {
    v5 = [objc_opt_self() mainBundle];
  }

  sub_23C0E9780();
  sub_23C0E9A20();
  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v1 selector:sel_sceneDidEnterBackground name:*MEMORY[0x277D76E58] object:0];
  [v6 addObserver:v1 selector:sel_sceneWillEnterForeground name:*MEMORY[0x277D76E80] object:0];
  v23 = *&v1[OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel];
  type metadata accessor for MicrophoneSelectionViewModel(0);

  sub_23C0E9950();
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE898, &qword_23C0EA9A8));
  v8 = sub_23C0E98A0();
  v9 = [v8 view];
  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = v9;
  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v10 setFrame_];
    [v10 setAutoresizingMask_];
    v21 = [v1 view];
    if (v21)
    {
      v22 = v21;

      [v22 addSubview_];

      [v1 addChildViewController_];
      [v8 didMoveToParentViewController_];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23C0B63A0(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewIsAppearing_, a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (v5)
    {
      v6 = [v5 windowScene];

      if (v6)
      {
        if (![v6 activationState])
        {
          v7 = *&v1[OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel];
          if (*(v7 + 112) != 1)
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            sub_23C0B7060();
            sub_23C0E97A0();

            return;
          }

          *(v7 + 112) = 1;
          sub_23C0BC138();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23C0B6554(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel];
  if (*(v3 + 112))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23C0B7060();
    sub_23C0E97A0();
  }

  else
  {
    *(v3 + 112) = 0;
    return sub_23C0BC138();
  }
}

void sub_23C0B667C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

id sub_23C0B675C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel;
  v9 = type metadata accessor for MicrophoneManager(0);
  swift_allocObject();
  v21[3] = v9;
  v21[4] = &off_284EE1610;
  v21[0] = sub_23C0E317C(0, 0, 2);
  type metadata accessor for MicrophoneSelectionViewModel(0);
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v21, v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_23C0B7108(*v13, v10);
  __swift_destroy_boxed_opaque_existential_0(v21);
  *&v4[v8] = v15;
  if (a2)
  {
    v16 = sub_23C0E99E0();
  }

  else
  {
    v16 = 0;
  }

  v20.receiver = v4;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, v16, a3);

  return v17;
}

id sub_23C0B69F0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel;
  v6 = type metadata accessor for MicrophoneManager(0);
  swift_allocObject();
  v17[3] = v6;
  v17[4] = &off_284EE1610;
  v17[0] = sub_23C0E317C(0, 0, 2);
  type metadata accessor for MicrophoneSelectionViewModel(0);
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v17, v6);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_23C0B7108(*v10, v7);
  __swift_destroy_boxed_opaque_existential_0(v17);
  *&v2[v5] = v12;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);

  if (v13)
  {
  }

  return v13;
}

id sub_23C0B6C2C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C0B6C98(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel);
  if (*(v2 + 112))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23C0B7060();
    sub_23C0E97A0();
  }

  else
  {
    *(v2 + 112) = 0;
    return sub_23C0BC138();
  }
}

uint64_t sub_23C0B6D9C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13AVKitSettings23MicrophoneSelectionRoot_viewModel);
  if (*(v2 + 112) == 1)
  {
    *(v2 + 112) = 1;
    return sub_23C0BC138();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23C0B7060();
    sub_23C0E97A0();
  }
}

void sub_23C0B6EA8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_23C0B6F74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23C0B7060();
  sub_23C0E97B0();

  *a2 = *(v3 + 112);
  return result;
}

unint64_t sub_23C0B7060()
{
  result = qword_27E1EE820;
  if (!qword_27E1EE820)
  {
    type metadata accessor for MicrophoneSelectionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE820);
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

uint64_t sub_23C0B7108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE880, &unk_23C0EA980);
  v44 = *(v4 - 8);
  v45 = v4;
  v47 = *(v44 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE888, &qword_23C0EABA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - v16;
  v48 = &v40 - v16;
  v50 = type metadata accessor for MicrophoneManager(0);
  v51 = &off_284EE1610;
  v49[0] = a1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 112) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  sub_23C0E97C0();
  sub_23C0B7660(v49, a2 + 72);
  v41 = sub_23C0E9BD0();
  v18 = *(v41 - 8);
  v40 = *(v18 + 56);
  v42 = v18 + 56;
  v40(v17, 1, 1, v41);
  v19 = __swift_project_boxed_opaque_existential_0(v49, v50);
  v20 = *(v9 + 16);
  v20(v14, *v19 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesStream, v8);
  v21 = swift_allocObject();
  swift_weakInit();
  v20(v12, v14, v8);
  sub_23C0E9B90();

  v22 = sub_23C0E9B80();
  (*(v9 + 8))(v14, v8);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  (*(v9 + 32))(v24 + v23, v12, v8);
  *(v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;

  v26 = v48;
  sub_23C0DE678(0, 0, v48, &unk_23C0EA998, v24);

  v40(v26, 1, 1, v41);
  v27 = __swift_project_boxed_opaque_existential_0(v49, v50);
  v29 = v43;
  v28 = v44;
  v30 = *(v44 + 16);
  v31 = v45;
  v30(v43, *v27 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneStream, v45);
  v32 = swift_allocObject();
  swift_weakInit();

  v33 = v46;
  v34 = v31;
  v30(v46, v29, v31);

  v35 = sub_23C0E9B80();
  (*(v28 + 8))(v29, v31);
  v36 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v37 = (v47 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  *(v38 + 24) = MEMORY[0x277D85700];
  (*(v28 + 32))(v38 + v36, v33, v34);
  *(v38 + v37) = v32;

  sub_23C0DE678(0, 0, v48, &unk_23C0EA9A0, v38);

  __swift_destroy_boxed_opaque_existential_0(v49);
  return a2;
}

uint64_t sub_23C0B7660(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23C0B76C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0B7710(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE888, &qword_23C0EABA0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23C0B7B5C;

  return sub_23C0B83A8(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_3Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_23C0B7924(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE880, &unk_23C0EA980) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23C0B7A50;

  return sub_23C0BA204(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_23C0B7A50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_23C0B7B60(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_23C0B7060();
  sub_23C0E97B0();

  v3 = v1[3];
  v4 = v9[4];
  v5 = v9[5];
  v6 = v9[6];
  v8 = v9[7];
  v7 = v9[8];
  sub_23C0B4DE4(v3, v4, v5, v6, v8, v7);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
}

uint64_t sub_23C0B7C14(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  result = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-v4];
  v6 = a1[1];
  if (v6)
  {
    v7 = *a1;
    v8 = *(a1 + 2);
    v16 = *(a1 + 1);
    v17 = v8;
    v18[0] = v7;
    v18[1] = v6;
    v19 = v16;
    v20 = v8;
    sub_23C0BDA20(a1, v15);
    sub_23C0BD974(v18, v15);
    sub_23C0BD974(&v19, v15);
    sub_23C0BD974(&v20, v15);
    sub_23C0B81E4(a1);
    v9 = sub_23C0E9BD0();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    sub_23C0E9B90();

    v11 = sub_23C0E9B80();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    *(v12 + 32) = v10;
    *(v12 + 40) = v7;
    *(v12 + 48) = v6;
    v14 = v17;
    *(v12 + 56) = v16;
    *(v12 + 72) = v14;

    sub_23C0DE678(0, 0, v5, &unk_23C0EABB0, v12);
  }

  return result;
}

uint64_t sub_23C0B7DD8()
{
  swift_getKeyPath();
  sub_23C0B7060();
  sub_23C0E97B0();
}

uint64_t sub_23C0B7E4C(uint64_t a1)
{
  if (*(v1 + 112) == (a1 & 1))
  {
    *(v1 + 112) = a1 & 1;

    return sub_23C0BC138();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23C0B7060();
    sub_23C0E97A0();
  }
}

uint64_t sub_23C0B7F50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23C0B7060();
  sub_23C0E97B0();

  *a2 = *(v3 + 16);
}

uint64_t sub_23C0B7FF8(uint64_t a1)
{
  if (sub_23C0D8C90(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23C0B7060();
    sub_23C0E97A0();
  }
}

void sub_23C0B810C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23C0B7060();
  sub_23C0E97B0();

  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v9 = v3[8];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  sub_23C0B4DE4(v4, v5, v6, v7, v8, v9);
}

void sub_23C0B8198(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  sub_23C0BDA20(v3, &v2);
  sub_23C0B81E4(v3);
}

void sub_23C0B81E4(uint64_t *a1)
{
  v3 = *(v1 + 5);
  v14[0] = *(v1 + 3);
  v14[1] = v3;
  v14[2] = *(v1 + 7);
  sub_23C0BDA20(v14, &v13);
  v4 = sub_23C0BDD8C(v14, a1);
  sub_23C0BD90C(v14);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v1;
    sub_23C0B7060();
    sub_23C0E97A0();
    sub_23C0BD90C(a1);
  }

  else
  {
    v6 = v1[3];
    v7 = v1[4];
    v8 = v1[5];
    v9 = v1[6];
    v10 = v1[7];
    v11 = v1[8];
    v12 = *(a1 + 1);
    *(v1 + 3) = *a1;
    *(v1 + 5) = v12;
    *(v1 + 7) = *(a1 + 2);
    sub_23C0B4E34(v6, v7, v8, v9, v10, v11);
  }
}

void sub_23C0B8318(void *a1, _OWORD *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[1];
  *(a1 + 3) = *a2;
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  *(a1 + 5) = v4;
  *(a1 + 7) = a2[2];
  sub_23C0BDA20(a2, &v9);
  sub_23C0B4E34(v2, v3, v5, v6, v7, v8);
}

uint64_t sub_23C0B83A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1EE8C8, &qword_23C0EAB98);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = sub_23C0E9B90();
  v5[13] = sub_23C0E9B80();
  v8 = sub_23C0E9B40();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x2822009F8](sub_23C0B84AC, v8, v7);
}

uint64_t sub_23C0B84AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE888, &qword_23C0EABA0);
  sub_23C0E9C00();
  swift_beginAccess();
  v1 = sub_23C0E9B80();
  v0[16] = v1;
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_23C0B85A8;
  v3 = v0[9];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 5, v1, v4, v3);
}

uint64_t sub_23C0B85A8()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_23C0B86EC, v3, v2);
}

uint64_t sub_23C0B86EC()
{
  if (v0[5] && (, Strong = swift_weakLoadStrong(), (v0[18] = Strong) != 0))
  {
    v2 = Strong;
    swift_getKeyPath();
    v0[6] = v2;
    sub_23C0B7060();
    sub_23C0E97B0();

    if (*(v2 + 112) == 1)
    {
      v3 = swift_task_alloc();
      v0[19] = v3;
      *v3 = v0;
      v3[1] = sub_23C0B88F8;

      return sub_23C0B8C8C();
    }

    else
    {

      v6 = sub_23C0E9B80();
      v0[16] = v6;
      v7 = swift_task_alloc();
      v0[17] = v7;
      *v7 = v0;
      v7[1] = sub_23C0B85A8;
      v8 = v0[9];
      v9 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 5, v6, v9, v8);
    }
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_23C0B88F8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 160) = v3;
  *v3 = v2;
  v3[1] = sub_23C0B8A38;

  return sub_23C0B9460();
}

uint64_t sub_23C0B8A38()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_23C0B8B58, v3, v2);
}

uint64_t sub_23C0B8B58()
{

  v1 = sub_23C0E9B80();
  v0[16] = v1;
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_23C0B85A8;
  v3 = v0[9];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 5, v1, v4, v3);
}

uint64_t sub_23C0B8C1C()
{
  swift_getKeyPath();
  sub_23C0B7060();
  sub_23C0E97B0();

  return *(v0 + 112);
}

uint64_t sub_23C0B8C8C()
{
  v1[3] = v0;
  v1[4] = sub_23C0E9B90();
  v1[5] = sub_23C0E9B80();
  v3 = sub_23C0E9B40();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_23C0B8D28, v3, v2);
}

uint64_t sub_23C0B8D28()
{
  v0[8] = *__swift_project_boxed_opaque_existential_0((v0[3] + 72), *(v0[3] + 96));
  v0[9] = sub_23C0E9B80();
  v2 = sub_23C0E9B40();
  v0[10] = v2;
  v0[11] = v1;

  return MEMORY[0x2822009F8](sub_23C0B8DC8, v2, v1);
}

uint64_t sub_23C0B8DC8()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_23C0B8E5C;

  return sub_23C0CB0EC();
}

uint64_t sub_23C0B8E5C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_23C0B8F84, v4, v3);
}

uint64_t sub_23C0B8F84()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_23C0B9024;
  v2 = *(v0 + 104);

  return sub_23C0BA8CC(v2);
}

uint64_t sub_23C0B9024(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_23C0B914C, v4, v3);
}

uint64_t sub_23C0B914C()
{
  v1 = v0[15];
  v2 = v0[3];
  swift_getKeyPath();
  v0[2] = v2;
  sub_23C0B7060();
  sub_23C0E97B0();

  v3 = sub_23C0D8C90(v1, *(v2 + 16));

  if (v3)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_23C0B92A4;
    v7 = v0[13];

    return sub_23C0BA8CC(v7);
  }
}

uint64_t sub_23C0B92A4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_23C0B93F0, v4, v3);
}

uint64_t sub_23C0B93F0()
{
  v1 = *(v0 + 136);

  sub_23C0B7FF8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C0B9460()
{
  v1[45] = v0;
  v1[46] = sub_23C0E9B90();
  v1[47] = sub_23C0E9B80();
  v3 = sub_23C0E9B40();
  v1[48] = v3;
  v1[49] = v2;

  return MEMORY[0x2822009F8](sub_23C0B94FC, v3, v2);
}

uint64_t sub_23C0B94FC()
{
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = sub_23C0E9830();
  v0[50] = __swift_project_value_buffer(v1, qword_27E1EF4F8);
  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C0B2000, v2, v3, "[Settings] updateSelectedInput()", v4, 2u);
    MEMORY[0x23EEC78E0](v4, -1, -1);
  }

  v5 = v0[45];

  v0[51] = *__swift_project_boxed_opaque_existential_0((v5 + 72), *(v5 + 96));
  v0[52] = sub_23C0E9B80();
  v7 = sub_23C0E9B40();
  v0[53] = v7;
  v0[54] = v6;

  return MEMORY[0x2822009F8](sub_23C0B965C, v7, v6);
}

uint64_t sub_23C0B965C()
{
  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  v1[1] = sub_23C0B96F8;

  return sub_23C0CBDF4(v0 + 160);
}

uint64_t sub_23C0B96F8()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x2822009F8](sub_23C0B9818, v3, v2);
}

uint64_t sub_23C0B9818()
{

  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_23C0B98BC;

  return sub_23C0BCEA8(v0 + 112, (v0 + 160));
}

uint64_t sub_23C0B98BC()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  *(v1 + 456) = *(v1 + 112);
  *(v1 + 472) = v2;
  *(v1 + 488) = *(v1 + 144);
  sub_23C0BD90C(v1 + 160);
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_23C0B9A08, v4, v3);
}

uint64_t sub_23C0B9A08()
{
  v43 = v0;
  v1 = v0[15];
  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();
  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23C0B2000, v2, v3, "[ui][settings] Mark >", v5, 2u);
      MEMORY[0x23EEC78E0](v5, -1, -1);
    }

    sub_23C0BDA20((v0 + 14), (v0 + 26));
    v6 = sub_23C0E9820();
    v7 = sub_23C0E9C90();
    sub_23C0BD90C((v0 + 14));
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[60];
    if (v8)
    {
      v10 = v0[58];
      v11 = v0[59];
      v12 = v0[57];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v40 = v14;
      v41 = v12;
      *v13 = 136315138;
      v42 = v10;

      MEMORY[0x23EEC6F40](45, 0xE100000000000000);
      MEMORY[0x23EEC6F40](v11, v9);
      v15 = sub_23C0D8D20(v41, v10, &v40);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_23C0B2000, v6, v7, "[ui:mark][settings] preferredMicrophone: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23EEC78E0](v14, -1, -1);
      MEMORY[0x23EEC78E0](v13, -1, -1);
    }

    v20 = v0[61];
    v19 = v0[62];
    v22 = v0[59];
    v21 = v0[60];
    v24 = v0[57];
    v23 = v0[58];
    v25 = v0[45];
    v0[2] = v24;
    v0[3] = v23;
    v0[4] = v22;
    v0[5] = v21;
    v37 = v21;
    v38 = v20;
    v0[6] = v20;
    v0[7] = v19;
    v39 = v19;

    swift_getKeyPath();
    v0[44] = v25;
    sub_23C0B7060();
    sub_23C0E97B0();

    v27 = v25[3];
    v26 = v25[4];
    v29 = v25[5];
    v28 = v25[6];
    v30 = v25[7];
    v31 = v25[8];
    if (v23)
    {
      if (v26)
      {
        if (v24 == v27 && v23 == v26)
        {
          v33 = v37;
          v32 = v38;
          v34 = v39;
          sub_23C0B4E34(v24, v23, v22, v37, v38, v39);
LABEL_20:
          sub_23C0B4E34(v24, v23, v22, v33, v32, v34);
          goto LABEL_21;
        }

        v35 = sub_23C0E9D90();
        v33 = v37;
        v32 = v38;
        v34 = v39;
        sub_23C0B4E34(v24, v23, v22, v37, v38, v39);
        if (v35)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }
    }

    else if (!v26)
    {
LABEL_21:
      v36 = v0[1];

      return v36();
    }

    sub_23C0B4DE4(v27, v26, v29, v28, v30, v31);
    sub_23C0B4E34(v24, v23, v22, v37, v38, v39);
    sub_23C0B4E34(v27, v26, v29, v28, v30, v31);
LABEL_18:
    sub_23C0B81E4(v0 + 2);
    goto LABEL_21;
  }

  if (v4)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23C0B2000, v2, v3, "[ui][settings] Mark on Automatic", v16, 2u);
    MEMORY[0x23EEC78E0](v16, -1, -1);
  }

  v17 = swift_task_alloc();
  v0[63] = v17;
  *v17 = v0;
  v17[1] = sub_23C0B9E74;

  return sub_23C0BB728((v0 + 8));
}

uint64_t sub_23C0B9E74()
{
  v1 = *v0;

  *(v1 + 512) = *(v1 + 64);
  *(v1 + 528) = *(v1 + 80);
  *(v1 + 536) = *(v1 + 88);
  *(v1 + 552) = *(v1 + 104);
  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_23C0B9FDC, v3, v2);
}

uint64_t sub_23C0B9FDC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 520);

  v4 = *(v0 + 80);
  *(v0 + 256) = *(v0 + 64);
  *(v0 + 272) = v4;
  *(v0 + 288) = *(v0 + 96);
  sub_23C0BD974(v0 + 256, v0 + 304);
  sub_23C0BD974(v0 + 272, v0 + 320);
  sub_23C0BD974(v0 + 288, v0 + 336);
  v5 = *(v0 + 512);
  *(v0 + 16) = v5;
  v6 = *(v0 + 544);
  v7 = *(v0 + 528);
  v8 = *(v0 + 360);
  *(v0 + 24) = v3;
  *(v0 + 32) = v7;
  v23 = v7;
  v24 = v6;
  v25 = v2;
  v26 = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v6;
  *(v0 + 56) = v1;
  swift_getKeyPath();
  *(v0 + 352) = v8;
  sub_23C0B7060();
  sub_23C0E97B0();

  v9 = v8[3];
  v10 = v8[4];
  v11 = v8[5];
  v12 = v8[6];
  v13 = v8[7];
  v14 = v8[8];
  if (!v3)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!v10)
  {
LABEL_10:
    sub_23C0B4DE4(v9, v10, v11, v12, v13, v14);
    sub_23C0B4E34(v5, v3, v23, v25, v24, v26);
    sub_23C0B4E34(v9, v10, v11, v12, v13, v14);
    goto LABEL_11;
  }

  if (v5 != v9 || v10 != v3)
  {
    v16 = sub_23C0E9D90();
    v18 = v23;
    v17 = v24;
    v20 = v25;
    v19 = v26;
    sub_23C0B4E34(v5, v3, v23, v25, v24, v26);
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_11:
    sub_23C0B81E4((v0 + 16));
    goto LABEL_14;
  }

  v18 = v23;
  v17 = v24;
  v20 = v25;
  v19 = v26;
  sub_23C0B4E34(v5, v3, v23, v25, v24, v26);
LABEL_13:
  sub_23C0B4E34(v5, v3, v18, v20, v17, v19);
LABEL_14:
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_23C0BA204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE8C0, &unk_23C0EAB80);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = sub_23C0E9B90();
  v5[18] = sub_23C0E9B80();
  v8 = sub_23C0E9B40();
  v5[19] = v8;
  v5[20] = v7;

  return MEMORY[0x2822009F8](sub_23C0BA308, v8, v7);
}

uint64_t sub_23C0BA308()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE880, &unk_23C0EA980);
  sub_23C0E9C00();
  swift_beginAccess();
  v1 = sub_23C0E9B80();
  v0[21] = v1;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_23C0BA404;
  v3 = v0[14];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v1, v4, v3);
}

uint64_t sub_23C0BA404()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_23C0BA548, v3, v2);
}

uint64_t sub_23C0BA548()
{
  if (v0[3] && (, , , Strong = swift_weakLoadStrong(), (v0[23] = Strong) != 0))
  {
    v2 = Strong;
    swift_getKeyPath();
    v0[11] = v2;
    sub_23C0B7060();
    sub_23C0E97B0();

    if (*(v2 + 112))
    {
      v3 = swift_task_alloc();
      v0[24] = v3;
      *v3 = v0;
      v3[1] = sub_23C0BA6E8;

      return sub_23C0B9460();
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_23C0BA6E8()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_23C0BA808, v3, v2);
}

uint64_t sub_23C0BA808()
{

  v1 = sub_23C0E9B80();
  v0[21] = v1;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_23C0BA404;
  v3 = v0[14];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v1, v4, v3);
}

uint64_t sub_23C0BA8CC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_23C0E9B90();
  v2[10] = sub_23C0E9B80();
  v4 = sub_23C0E9B40();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x2822009F8](sub_23C0BA964, v4, v3);
}

uint64_t sub_23C0BA964()
{
  if (*(v0[8] + 16))
  {
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_23C0BAA48;

    return sub_23C0BB728((v0 + 2));
  }

  else
  {

    v3 = v0[1];
    v4 = MEMORY[0x277D84F90];

    return v3(v4);
  }
}

uint64_t sub_23C0BAA48()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_23C0BAB68, v3, v2);
}

uint64_t sub_23C0BAB68()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE8B8, &qword_23C0EAE50);
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v1[1] = xmmword_23C0EA9C0;
  v1[2] = v2;
  v4 = *(v0 + 48);
  v1[3] = v3;
  v1[4] = v4;
  v8 = v1;

  sub_23C0BDBB0(v5);
  v6 = *(v0 + 8);

  return v6(v8);
}

uint64_t sub_23C0BAC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[23] = sub_23C0E9B90();
  v5[24] = sub_23C0E9B80();
  v7 = sub_23C0E9B40();
  v5[25] = v7;
  v5[26] = v6;

  return MEMORY[0x2822009F8](sub_23C0BACBC, v7, v6);
}

uint64_t sub_23C0BACBC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_23C0BADB4;

    return sub_23C0BB728((v0 + 2));
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_23C0BADB4()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_23C0BAED4, v3, v2);
}

uint64_t sub_23C0BAED4()
{
  v1 = *(v0 + 176);
  v2 = *v1;
  *(v0 + 232) = *v1;
  v3 = v1[1];
  *(v0 + 240) = v3;
  *(v0 + 88) = *(v0 + 16);
  if (v2 == *(v0 + 88) && v3 == *(v0 + 96))
  {
    sub_23C0BE29C(v0 + 88);
    *(v0 + 136) = *(v0 + 32);
    sub_23C0BE29C(v0 + 136);
    *(v0 + 152) = *(v0 + 48);
    sub_23C0BE29C(v0 + 152);
  }

  else
  {
    v5 = sub_23C0E9D90();
    sub_23C0BE29C(v0 + 88);
    *(v0 + 104) = *(v0 + 32);
    sub_23C0BE29C(v0 + 104);
    *(v0 + 120) = *(v0 + 48);
    sub_23C0BE29C(v0 + 120);
    if ((v5 & 1) == 0)
    {
      *(v0 + 288) = *__swift_project_boxed_opaque_existential_0((*(v0 + 216) + 72), *(*(v0 + 216) + 96));
      *(v0 + 296) = sub_23C0E9B80();
      v6 = sub_23C0E9B40();
      v8 = v7;
      *(v0 + 304) = v6;
      *(v0 + 312) = v7;
      v9 = sub_23C0BB278;
      goto LABEL_9;
    }
  }

  *(v0 + 248) = *__swift_project_boxed_opaque_existential_0((*(v0 + 216) + 72), *(*(v0 + 216) + 96));
  *(v0 + 256) = sub_23C0E9B80();
  v6 = sub_23C0E9B40();
  v8 = v10;
  *(v0 + 264) = v6;
  *(v0 + 272) = v10;
  v9 = sub_23C0BB05C;
LABEL_9:

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_23C0BB05C()
{
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_23C0BB0F4;

  return sub_23C0CC8A4(0);
}

uint64_t sub_23C0BB0F4()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return MEMORY[0x2822009F8](sub_23C0BB214, v3, v2);
}

uint64_t sub_23C0BB214()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_23C0BE2FC, v1, v2);
}

uint64_t sub_23C0BB278()
{
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = sub_23C0BB328;
  v3 = v0[29];
  v2 = v0[30];

  return sub_23C0D96F0(v3, v2);
}

uint64_t sub_23C0BB328(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 328) = a1;

  v3 = *(v2 + 312);
  v4 = *(v2 + 304);

  return MEMORY[0x2822009F8](sub_23C0BB450, v4, v3);
}

uint64_t sub_23C0BB450()
{
  v1 = v0[41];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[42] = v2;
    *v2 = v0;
    v2[1] = sub_23C0BB530;

    return sub_23C0C7564(v1, 0);
  }

  else
  {

    v4 = v0[25];
    v5 = v0[26];

    return MEMORY[0x2822009F8](sub_23C0BB6BC, v4, v5);
  }
}

uint64_t sub_23C0BB530()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_23C0BB650, v3, v2);
}

uint64_t sub_23C0BB650()
{
  v1 = v0[41];

  v2 = v0[25];
  v3 = v0[26];

  return MEMORY[0x2822009F8](sub_23C0BB6BC, v2, v3);
}

uint64_t sub_23C0BB6BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0BB728(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_23C0E9790();
  v2[10] = swift_task_alloc();
  sub_23C0E99D0();
  v2[11] = swift_task_alloc();
  v3 = sub_23C0E9BD0();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = sub_23C0E9B90();
  v2[16] = sub_23C0E9B80();
  v5 = sub_23C0E9B40();
  v2[17] = v5;
  v2[18] = v4;

  return MEMORY[0x2822009F8](sub_23C0BB878, v5, v4);
}

uint64_t sub_23C0BB878()
{
  v0[19] = *__swift_project_boxed_opaque_existential_0((v0[9] + 72), *(v0[9] + 96));
  v0[20] = sub_23C0E9B80();
  v2 = sub_23C0E9B40();
  v0[21] = v2;
  v0[22] = v1;

  return MEMORY[0x2822009F8](sub_23C0BB91C, v2, v1);
}

uint64_t sub_23C0BB944()
{
  v1 = *(*(v0 + 184) + 104);
  *(v0 + 192) = v1;
  return MEMORY[0x2822009F8](sub_23C0BB968, v1, 0);
}

uint64_t sub_23C0BB968()
{
  v1 = v0[24];
  v2 = v1[14];
  v0[25] = v2;
  v3 = v1[15];
  v0[26] = v3;
  v4 = v1[16];
  v0[27] = v4;
  v5 = v1[17];
  v0[28] = v5;
  v6 = v1[18];
  v0[29] = v6;
  v7 = v1[19];
  v0[30] = v7;
  sub_23C0B4DE4(v2, v3, v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_23C0BBA00, 0, 0);
}

uint64_t sub_23C0BBA00()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 216);
    v4 = *(v0 + 200);
    *(v0 + 296) = *(v0 + 232);
    *(v0 + 304) = v2;
    *(v0 + 280) = v3;
    *(v0 + 264) = v4;
    *(v0 + 272) = v1;
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);

    return MEMORY[0x2822009F8](sub_23C0BBD70, v5, v6);
  }

  else
  {
    v7 = swift_allocObject();
    *(v0 + 248) = v7;
    swift_weakInit();
    sub_23C0E9BB0();
    v8 = swift_task_alloc();
    *(v0 + 256) = v8;
    *v8 = v0;
    v8[1] = sub_23C0BBB8C;
    v9 = *(v0 + 112);

    return sub_23C0E0914(v0 + 16, 0x6B6361626C6C6166, 0xEF29286574756F52, v9, &unk_23C0EAB30, v7);
  }
}

uint64_t sub_23C0BBB8C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 56);
  v7 = *(v1 + 16);
  v6 = *(v1 + 32);
  *(v1 + 296) = *(v1 + 48);
  *(v1 + 304) = v5;
  *(v1 + 280) = v6;
  *(v1 + 264) = v7;
  v8 = *(v1 + 176);
  v9 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_23C0BBD70, v9, v8);
}

uint64_t sub_23C0BBD70()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_23C0BBDD4, v1, v2);
}

uint64_t sub_23C0BBDD4()
{
  v25 = v0;

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = sub_23C0E9830();
  __swift_project_value_buffer(v1, qword_27E1EF4F8);

  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[35];
    v4 = v0[36];
    v7 = v0[33];
    v6 = v0[34];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    v23 = v7;
    *v8 = 136315138;
    v24 = v6;

    MEMORY[0x23EEC6F40](45, 0xE100000000000000);
    MEMORY[0x23EEC6F40](v5, v4);

    v10 = sub_23C0D8D20(v23, v6, &v22);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_23C0B2000, v2, v3, "[ui:mark] fallbackMicrophone: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEC78E0](v9, -1, -1);
    MEMORY[0x23EEC78E0](v8, -1, -1);
  }

  sub_23C0E99C0();
  sub_23C0B51F4();
  if (!sub_23C0E9CD0())
  {
    v11 = [objc_opt_self() mainBundle];
  }

  v12 = v0[37];
  v21 = v0[38];
  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[8];
  sub_23C0E9780();
  v23 = sub_23C0E9A20();
  v24 = v16;
  MEMORY[0x23EEC6F40](8250, 0xE200000000000000);

  MEMORY[0x23EEC6F40](v14, v13);

  v17 = v23;
  v18 = v24;

  *v15 = 0x6974616D6F747561;
  v15[1] = 0xE900000000000063;
  v15[2] = v17;
  v15[3] = v18;
  v15[4] = v12;
  v15[5] = v21;
  v19 = v0[1];

  return v19();
}

uint64_t sub_23C0BC138()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  swift_getKeyPath();
  v25 = v0;
  sub_23C0B7060();
  sub_23C0E97B0();

  if (*(v0 + 112) == 1)
  {
    v5 = __swift_project_boxed_opaque_existential_0((v0 + 72), *(v0 + 96));
    v6 = *v5;
    v7 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_isDiscovering;
    if ((*(*v5 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_isDiscovering) & 1) == 0)
    {
      v8 = sub_23C0E9BD0();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      sub_23C0E9B90();

      v9 = sub_23C0E9B80();
      v10 = swift_allocObject();
      v11 = MEMORY[0x277D85700];
      v10[2] = v9;
      v10[3] = v11;
      v10[4] = v6;
      sub_23C0DE678(0, 0, v4, &unk_23C0EAAC8, v10);

      *(v6 + v7) = 1;
    }

    v12 = sub_23C0E9BD0();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    v13 = swift_allocObject();
    swift_weakInit();
    sub_23C0E9B90();

    v14 = sub_23C0E9B80();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;

    v17 = &unk_23C0EAAD8;
    v18 = v4;
    v19 = v15;
  }

  else
  {
    v20 = sub_23C0E9BD0();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    sub_23C0E9B90();

    v21 = sub_23C0E9B80();
    v19 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v19[2] = v21;
    v19[3] = v22;
    v19[4] = v1;
    v17 = &unk_23C0EAAC0;
    v18 = v4;
  }

  sub_23C0DE678(0, 0, v18, v17, v19);
}

uint64_t sub_23C0BC45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_23C0E9B90();
  v4[6] = sub_23C0E9B80();
  v6 = sub_23C0E9B40();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_23C0BC4F4, v6, v5);
}

uint64_t sub_23C0BC4F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_23C0BC5E4;

    return sub_23C0B8C8C();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_23C0BC5E4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_23C0BC724;

  return sub_23C0B9460();
}

uint64_t sub_23C0BC724()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_23C0BC844, v3, v2);
}

uint64_t sub_23C0BC844()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0BC8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23C0E9BD0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = sub_23C0E9B90();
  v4[7] = sub_23C0E9B80();
  v7 = sub_23C0E9B40();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x2822009F8](sub_23C0BC9A8, v7, v6);
}

uint64_t sub_23C0BC9A8()
{
  v0[10] = *__swift_project_boxed_opaque_existential_0((v0[2] + 72), *(v0[2] + 96));
  v0[11] = sub_23C0E9B80();
  v2 = sub_23C0E9B40();
  v0[12] = v2;
  v0[13] = v1;

  return MEMORY[0x2822009F8](sub_23C0BCA4C, v2, v1);
}

uint64_t sub_23C0BCA4C()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_isDiscovering;
  v0[14] = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_isDiscovering;
  if (*(v1 + v2) == 1)
  {
    v0[15] = *(v1 + 16);
    v3 = sub_23C0BCAF0;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = v0[8];
    v5 = v0[9];
    v3 = sub_23C0BCE0C;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23C0BCAF0()
{
  *(v0 + 128) = swift_allocObject();
  swift_weakInit();
  sub_23C0E9BB0();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_23C0BCC14;

  return (sub_23C0E199C)();
}

uint64_t sub_23C0BCC14()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0BCD88, 0, 0);
}

uint64_t sub_23C0BCDA0()
{
  v1 = v0[14];
  v2 = v0[10];

  *(v2 + v1) = 0;
  v3 = v0[8];
  v4 = v0[9];

  return MEMORY[0x2822009F8](sub_23C0BCE0C, v3, v4);
}

uint64_t sub_23C0BCE0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0BCEA8(uint64_t a1, _OWORD *a2)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = v2;
  *(v3 + 64) = a1;
  v4 = a2[1];
  *(v3 + 88) = *a2;
  *(v3 + 104) = v4;
  *(v3 + 120) = a2[2];
  *(v3 + 136) = sub_23C0E9B90();
  *(v3 + 144) = sub_23C0E9B80();
  v6 = sub_23C0E9B40();
  *(v3 + 152) = v6;
  *(v3 + 160) = v5;

  return MEMORY[0x2822009F8](sub_23C0BCF5C, v6, v5);
}

uint64_t sub_23C0BCF5C()
{
  v1 = *(v0 + 72);
  *(v0 + 168) = *v1;
  v2 = v1[1];
  *(v0 + 176) = v2;
  *(v0 + 184) = v1[2];
  *(v0 + 192) = v1[3];
  *(v0 + 200) = v1[4];
  *(v0 + 208) = v1[5];
  if (v2)
  {
    *(v0 + 216) = *__swift_project_boxed_opaque_existential_0((*(v0 + 80) + 72), *(*(v0 + 80) + 96));

    *(v0 + 224) = sub_23C0E9B80();
    v4 = sub_23C0E9B40();
    *(v0 + 232) = v4;
    *(v0 + 240) = v3;

    return MEMORY[0x2822009F8](sub_23C0BD0B4, v4, v3);
  }

  else
  {

    v5 = *(v0 + 64);
    v6 = *(v0 + 104);
    v7 = *(v0 + 120);
    *v5 = *(v0 + 88);
    v5[1] = v6;
    v5[2] = v7;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_23C0BD0B4()
{
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_23C0BD148;

  return sub_23C0CB0EC();
}

uint64_t sub_23C0BD148(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return MEMORY[0x2822009F8](sub_23C0BD270, v4, v3);
}

uint64_t sub_23C0BD270()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_23C0BD2D4, v1, v2);
}

uint64_t sub_23C0BD2D4()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v13 = *(v0 + 168);
  v14 = *(v0 + 184);

  *(v0 + 16) = v13;
  *(v0 + 32) = v14;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 16;
  LOBYTE(v3) = sub_23C0BDCA8(sub_23C0BDFE8, v4, v1);

  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  if (v3)
  {
    v7 = *(v0 + 200);
    v8 = *(v0 + 184);
    v9 = *(v0 + 168);
  }

  else
  {

    v8 = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    v9 = 0uLL;
  }

  v10 = *(v0 + 64);
  *v10 = v9;
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v5;
  v11 = *(v0 + 8);

  return v11();
}

char *MicrophoneSelectionViewModel.deinit()
{

  sub_23C0B4E34(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v1 = OBJC_IVAR____TtC13AVKitSettings28MicrophoneSelectionViewModel___observationRegistrar;
  v2 = sub_23C0E97D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MicrophoneSelectionViewModel.__deallocating_deinit()
{

  sub_23C0B4E34(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v1 = OBJC_IVAR____TtC13AVKitSettings28MicrophoneSelectionViewModel___observationRegistrar;
  v2 = sub_23C0E97D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for MicrophoneSelectionViewModel(uint64_t a1)
{
  result = qword_27E1EE8A8;
  if (!qword_27E1EE8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C0BD598(uint64_t a1)
{
  result = sub_23C0E97D0();
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

uint64_t sub_23C0BD678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0BC8B0(a1, v4, v5, v6);
}

uint64_t sub_23C0BD72C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7A50;

  return sub_23C0E4734(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23C0BD820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0BC45C(a1, v4, v5, v6);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23C0BD90C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23C0BD9D4(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  sub_23C0BDA20(v3, &v2);
  sub_23C0B81E4(v3);
}

uint64_t sub_23C0BDA20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_23C0BDA90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE8B8, &qword_23C0EAE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23C0BDBB0(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_23C0BDA90(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
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
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23C0BDCA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 72);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *(v7 - 4);
      v16[0] = *(v7 - 5);
      v16[1] = v12;
      v16[2] = v10;
      v16[3] = v11;
      v16[4] = v8;
      v16[5] = v9;

      v13 = a1(v16);

      if (v3)
      {
        break;
      }

      v7 += 6;
      v14 = v6-- == 0;
    }

    while (((v13 | v14) & 1) == 0);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t sub_23C0BDD8C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a2[2];
  v19 = a2[3];
  v11 = a2[4];
  v17 = a1[3];
  v18 = a2[5];
  if (!v5)
  {
    if (!v3)
    {
      v12 = 0;
      return v12 & 1;
    }

LABEL_9:
    sub_23C0BDA20(a2, v20);
    sub_23C0B4E34(v6, v5, v7, v17, v8, v9);
    sub_23C0B4E34(v4, v3, v10, v19, v11, v18);
    v12 = 1;
    return v12 & 1;
  }

  if (!v3)
  {
    sub_23C0BDA20(a1, v20);
    goto LABEL_9;
  }

  if (v6 == v4 && v3 == v5)
  {
    v12 = 0;
  }

  else
  {
    v13 = a1;
    v14 = sub_23C0E9D90();
    a1 = v13;
    v12 = v14 ^ 1;
  }

  v15 = a1;
  sub_23C0BDA20(a1, v20);
  sub_23C0BDA20(v15, v20);
  sub_23C0BDA20(a2, v20);

  sub_23C0BD90C(v15);
  return v12 & 1;
}

uint64_t sub_23C0BDF14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0BDF4C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0CA504(a1, v1);
}

uint64_t sub_23C0BDFE8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23C0E9D90() & 1;
  }
}

uint64_t sub_23C0BE070()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_23C0BE0B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0C4FE8(a1, v1);
}

uint64_t sub_23C0BE184()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_23C0BE1DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0BAC20(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_23C0BE34C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23C0BE3DC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_23C0BE400, 0, 0);
}

uint64_t sub_23C0BE400()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_23C0BE5E0();
  *(v2 + 24) = v3;
  *(v2 + 32) = &off_284EE0B08;
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_23C0BE4C8;

  return MEMORY[0x282200460](v0 + 2, v4, v3);
}

uint64_t sub_23C0BE4C8()
{

  return MEMORY[0x2822009F8](sub_23C0BE5C4, 0, 0);
}

unint64_t sub_23C0BE5E0()
{
  result = qword_27E1EE950;
  if (!qword_27E1EE950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1EE950);
  }

  return result;
}

uint64_t sub_23C0BE62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_23C0BE64C, 0, 0);
}

uint64_t sub_23C0BE64C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_23C0BE740;

    return sub_23C0BE880();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_23C0BE740()
{

  return MEMORY[0x2822009F8](sub_23C0BE858, 0, 0);
}

uint64_t sub_23C0BE8A0()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 144), *(*(v0 + 56) + 168));
  v3 = off_284EE0DC0 + *off_284EE0DC0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_23C0BE9D8;

  return (v3)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
}

uint64_t sub_23C0BE9D8()
{

  return MEMORY[0x2822009F8](sub_23C0BEAD4, 0, 0);
}

uint64_t sub_23C0BEAD4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
  *(v0 + 104) = (*(v1 + 48))(v2, v1) & 1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    *(v0 + 80) = off_284EE1608;
    *(v0 + 88) = &off_284EE1608 & 0xFFFFFFFFFFFFLL | 0xAFDC000000000000;
    sub_23C0E9B90();
    *(v0 + 96) = sub_23C0E9B80();
    v5 = sub_23C0E9B40();

    return MEMORY[0x2822009F8](sub_23C0BEC0C, v5, v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_23C0BEC0C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);

  v4 = type metadata accessor for MicrophoneManager(0);
  v1(v3, v2, v4, &off_284EE15E8);
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

void sub_23C0BECB0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[19];
  *(v0 + 7) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 9) = 0u;
  sub_23C0B4E34(v1, v2, v3, v4, v5, v6);
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[25];
  *(v0 + 10) = 0u;
  *(v0 + 11) = 0u;
  *(v0 + 12) = 0u;
  sub_23C0B4E34(v7, v8, v9, v10, v11, v12);
  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[28];
  v16 = v0[29];
  v17 = v0[30];
  v18 = v0[31];
  *(v0 + 13) = 0u;
  *(v0 + 14) = 0u;
  *(v0 + 15) = 0u;
  sub_23C0B4E34(v13, v14, v15, v16, v17, v18);
  v0[32] = 0;

  v19 = v0[33];
  v20 = v0[34];
  v21 = v0[35];
  v22 = v0[36];
  v23 = v0[37];
  v24 = v0[38];
  *(v0 + 33) = 0u;
  *(v0 + 35) = 0u;
  *(v0 + 37) = 0u;

  sub_23C0B4E34(v19, v20, v21, v22, v23, v24);
}

uint64_t sub_23C0BED50()
{
  sub_23C0B4E34(v0[14], v0[15], v0[16], v0[17], v0[18], v0[19]);
  sub_23C0B4E34(v0[20], v0[21], v0[22], v0[23], v0[24], v0[25]);
  sub_23C0B4E34(v0[26], v0[27], v0[28], v0[29], v0[30], v0[31]);

  sub_23C0B4E34(v0[33], v0[34], v0[35], v0[36], v0[37], v0[38]);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23C0BEDD4()
{
  v1[2] = v0;
  v2 = sub_23C0E9BD0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0BEE94, 0, 0);
}

uint64_t sub_23C0BEE94()
{
  v1 = swift_allocObject();
  v0[6] = v1;
  swift_weakInit();
  sub_23C0E9BB0();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_23C0BEFB4;
  v3 = v0[5];

  return sub_23C0E199C(sub_23C0E199C, 0xD000000000000010, 0x800000023C0ED580, v3, &unk_23C0EAE80, v1);
}

uint64_t sub_23C0BEFB4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0BF128, 0, 0);
}

uint64_t sub_23C0BF128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0BF1A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_23C0BF320;

    return sub_23C0BF630();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[11] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[12] = v5;
      *v5 = v0;
      v5[1] = sub_23C0BF520;

      return sub_23C0C0358();
    }

    else
    {
      v6 = v0[1];

      return v6();
    }
  }
}

uint64_t sub_23C0BF320()
{

  return MEMORY[0x2822009F8](sub_23C0BF438, 0, 0);
}

uint64_t sub_23C0BF438()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_23C0BF520;

    return sub_23C0C0358();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_23C0BF520()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23C0BF630()
{
  *(v1 + 64) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0BF6F8, 0, 0);
}

uint64_t sub_23C0BF6F8(uint64_t a1)
{
  v2 = *(v1 + 72);
  sub_23C0E9BB0();
  v3 = sub_23C0E9BD0();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_23C0DFB8C(0, 0, v2, &unk_23C0EB078, v5);

  sub_23C0DAAD8(v2, &qword_27E1EE890, &qword_23C0EA990);
  v6 = swift_task_alloc();
  *(v1 + 80) = v6;
  *v6 = v1;
  v6[1] = sub_23C0BF88C;

  return sub_23C0C1D80();
}

uint64_t sub_23C0BF88C()
{

  return MEMORY[0x2822009F8](sub_23C0BF9B4, 0, 0);
}

uint64_t sub_23C0BF9B4()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = sub_23C0E9830();
  v0[11] = __swift_project_value_buffer(v1, qword_27E1EF4F8);
  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C0B2000, v2, v3, "... prefetch ", v4, 2u);
    MEMORY[0x23EEC78E0](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = [objc_opt_self() auxiliarySession];
  v0[12] = v6;
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;
  v8 = v6;

  if (v8)
  {
    v9 = *MEMORY[0x277CB8038];
    v0[5] = 0;
    v10 = [v8 setCategory:v9 withOptions:5 error:v0 + 5];
    v11 = v0[5];
    if (v10)
    {
      v12 = *(v0[8] + 136);
      v0[13] = v12;
      v13 = v11;
      v14 = *(v12 + 16);

      v15 = swift_task_alloc();
      v0[14] = v15;
      v16 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
      *v15 = v0;
      v15[1] = sub_23C0BFDEC;

      return MEMORY[0x282200460](v0 + 7, v14, v16);
    }

    v17 = v11;
    v18 = sub_23C0E9770();

    swift_willThrow();
    v19 = v18;
    v20 = sub_23C0E9820();
    v21 = sub_23C0E9C90();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29[0] = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_23C0D8D20(0xD00000000000002CLL, 0x800000023C0ED530, v29);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_23C0D8D20(0x6863746566657270, 0xEA00000000002928, v29);
      *(v22 + 22) = 2080;
      swift_getErrorValue();
      v24 = sub_23C0E9DB0();
      v26 = sub_23C0D8D20(v24, v25, v29);

      *(v22 + 24) = v26;
      _os_log_impl(&dword_23C0B2000, v20, v21, "%s->%s  error=%s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEC78E0](v23, -1, -1);
      MEMORY[0x23EEC78E0](v22, -1, -1);
    }

    else
    {
    }
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_23C0BFDEC()
{

  return MEMORY[0x2822009F8](sub_23C0BFF14, 0, 0);
}

uint64_t sub_23C0BFF14()
{
  v20 = v0;
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = v0[12];

  v2 = v0[7];
  v0[15] = v2;
  [v1 opaqueSessionID];
  v3 = sub_23C0E9E00();
  [v2 setAudioSessionID_];

  v4 = sub_23C0E9B10();
  [v2 setDiscoveryMode:2 forClientIdentifiers:v4];

  v5 = v2;
  v6 = sub_23C0E9820();
  v7 = sub_23C0E9C90();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    v10 = [v5 availableInputDevices];
    v11 = sub_23C0D9D08(0, &qword_27E1EE980, 0x277CB8688);
    v12 = sub_23C0E9B20();

    v13 = MEMORY[0x23EEC7000](v12, v11);
    v15 = v14;

    v16 = sub_23C0D8D20(v13, v15, v19);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_23C0B2000, v6, v7, "... early devices %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEC78E0](v9, -1, -1);
    MEMORY[0x23EEC78E0](v8, -1, -1);
  }

  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v17[1] = sub_23C0C0194;

  return sub_23C0CBC14();
}

uint64_t sub_23C0C0194()
{

  return MEMORY[0x2822009F8](sub_23C0C02BC, 0, 0);
}

uint64_t sub_23C0C02BC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C0C0358()
{
  v1[27] = v0;
  v2 = sub_23C0E9BD0();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0C0418, 0, 0);
}

uint64_t sub_23C0C0418()
{
  v1 = *(*(v0 + 216) + 104);
  *(v0 + 248) = v1;
  return MEMORY[0x2822009F8](sub_23C0C043C, v1, 0);
}

uint64_t sub_23C0C043C()
{
  v1 = v0[31];
  v2 = v1[20];
  v0[32] = v2;
  v3 = v1[21];
  v0[33] = v3;
  v4 = v1[22];
  v5 = v1[23];
  v0[34] = v5;
  v6 = v1[24];
  v7 = v1[25];
  v0[35] = v7;
  sub_23C0B4DE4(v2, v3, v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_23C0C04C4, 0, 0);
}

uint64_t sub_23C0C04C4()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = *(v0 + 256);
    *(v0 + 312) = *(v0 + 272);
    *(v0 + 304) = v1;
    v3 = swift_task_alloc();
    *(v0 + 328) = v3;
    *v3 = v0;
    v3[1] = sub_23C0C08D4;

    return sub_23C0D96F0(v2, v1);
  }

  else
  {
    v5 = swift_allocObject();
    *(v0 + 288) = v5;
    swift_weakInit();
    sub_23C0E9BB0();
    v6 = swift_task_alloc();
    *(v0 + 296) = v6;
    *v6 = v0;
    v6[1] = sub_23C0C0694;
    v7 = *(v0 + 240);

    return sub_23C0E1148(v0 + 128, 0xD000000000000019, 0x800000023C0ED600, v7, &unk_23C0EB048, v5);
  }
}

uint64_t sub_23C0C0694()
{
  v2 = *v0;
  v1 = *v0;
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 232);
  v5 = *(*v0 + 224);
  v6 = *v0;

  (*(v4 + 8))(v3, v5);
  v7 = v1[17];
  if (v7)
  {
    v8 = v2[21];
    v9 = v2[16];
    v2[39] = v2[19];
    v2[40] = v8;
    v2[38] = v7;
    v10 = swift_task_alloc();
    v2[41] = v10;
    *v10 = v6;
    v10[1] = sub_23C0C08D4;

    return sub_23C0D96F0(v9, v7);
  }

  else
  {

    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_23C0C08D4(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return MEMORY[0x2822009F8](sub_23C0C0A34, 0, 0);
}

uint64_t sub_23C0C0A34()
{
  v30 = v0;
  v1 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9D8, &qword_23C0EB058);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_23C0EAC90;
  v4 = *MEMORY[0x277CB8618];
  *(inited + 32) = *MEMORY[0x277CB8618];
  v5 = *(v1 + 24);
  *(v0 + 384) = v5;
  v6 = 0xD000000000000015;
  if (v5)
  {
    v6 = 0xD000000000000023;
    v7 = "userPreferredInputRoute()";
  }

  else
  {
    v7 = "AVKitRoutingService";
  }

  v8 = v7 | 0x8000000000000000;
  v9 = MEMORY[0x277D837D0];
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v10 = *MEMORY[0x277CB8610];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 104) = v9;
  *(inited + 80) = v6;
  *(inited + 88) = v8;
  v11 = v4;
  v12 = v10;
  *(v0 + 344) = sub_23C0E8E3C(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9E0, &qword_23C0EB060);
  swift_arrayDestroy();
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 336);
  v14 = sub_23C0E9830();
  *(v0 + 352) = __swift_project_value_buffer(v14, qword_27E1EF4F8);
  v15 = v13;

  v16 = sub_23C0E9820();
  v17 = sub_23C0E9C90();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v18 = 136315394;
    if (v5)
    {
      if (v5 == 1)
      {
        v21 = 0xE600000000000000;
        v22 = 0x7070412D6E49;
      }

      else
      {
        v21 = 0xE800000000000000;
        v22 = 0x73676E6974746553;
      }
    }

    else
    {
      v21 = 0xE200000000000000;
      v22 = 17219;
    }

    v23 = *(v0 + 336);
    v24 = sub_23C0D8D20(v22, v21, &v29);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v15;
    *v19 = v23;
    v25 = v15;
    _os_log_impl(&dword_23C0B2000, v16, v17, "[%s] Initializing preferred input device for metering placeholder with id %@", v18, 0x16u);
    sub_23C0DAAD8(v19, &qword_27E1EE9E8, &qword_23C0EB068);
    MEMORY[0x23EEC78E0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23EEC78E0](v20, -1, -1);
    MEMORY[0x23EEC78E0](v18, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0((*(v0 + 216) + 144), *(*(v0 + 216) + 168));
  v28 = off_284EE0DC0 + *off_284EE0DC0;
  v26 = swift_task_alloc();
  *(v0 + 360) = v26;
  *v26 = v0;
  v26[1] = sub_23C0C0E24;

  return (v28)(v0 + 176, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
}

uint64_t sub_23C0C0E24()
{

  return MEMORY[0x2822009F8](sub_23C0C0F20, 0, 0);
}

uint64_t sub_23C0C0F20()
{
  v1 = v0[43];
  v2 = v0[25];
  v3 = v0[26];
  __swift_project_boxed_opaque_existential_0(v0 + 22, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_23C0C1060;
  v5 = v0[42];

  return v7(v5, v1, v2, v3);
}

uint64_t sub_23C0C1060(uint64_t a1)
{
  *(*v1 + 376) = a1;

  return MEMORY[0x2822009F8](sub_23C0C1180, 0, 0);
}

uint64_t sub_23C0C1180()
{
  v22 = v0;
  v1 = *(v0 + 376);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v2 = v1;

  v3 = v2;
  v4 = sub_23C0E9820();
  v5 = sub_23C0E9C90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 384);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    v9 = 0xE600000000000000;
    v10 = 0x7070412D6E49;
    if (v6 != 1)
    {
      v10 = 0x73676E6974746553;
      v9 = 0xE800000000000000;
    }

    if (v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = 17219;
    }

    if (v6)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE200000000000000;
    }

    v13 = *(v0 + 376);
    v14 = *(v0 + 336);
    v15 = sub_23C0D8D20(v11, v12, &v21);

    *(v7 + 4) = v15;
    *(v7 + 12) = 2048;
    v16 = [v13 status];

    *(v7 + 14) = v16;
    _os_log_impl(&dword_23C0B2000, v4, v5, "[%s] set new input on metering placeholder session completed with status %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EEC78E0](v8, -1, -1);
    MEMORY[0x23EEC78E0](v7, -1, -1);
  }

  else
  {
    v17 = *(v0 + 376);
    v18 = *(v0 + 336);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23C0C13AC()
{
  v18 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v3 = sub_23C0E9830();
    __swift_project_value_buffer(v3, qword_27E1EF4F8);

    v4 = sub_23C0E9820();
    v5 = sub_23C0E9C90();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      if (v2[15])
      {
        v8 = v2[14];
        v9 = v2[15];
      }

      else
      {
        v9 = 0xE300000000000000;
        v8 = 7104878;
      }

      v12 = sub_23C0D8D20(v8, v9, &v17);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_23C0B2000, v4, v5, "start discovery for %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23EEC78E0](v7, -1, -1);
      MEMORY[0x23EEC78E0](v6, -1, -1);
    }

    v13 = v2[15];
    if (v13)
    {
      v14 = v2[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE960, &qword_23C0EADE0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_23C0EA9C0;
      *(v15 + 32) = v14;
      *(v15 + 40) = v13;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v0[9] = v15;
    v16 = v2[13];
    v0[10] = v16;

    return MEMORY[0x2822009F8](sub_23C0C1628, v16, 0);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_23C0C1628()
{
  sub_23C0BECB0();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_23C0C16C0;

  return sub_23C0C1D80();
}

uint64_t sub_23C0C16C0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_23C0C1800;

  return sub_23C0C44D0();
}

uint64_t sub_23C0C1800()
{

  return MEMORY[0x2822009F8](sub_23C0C18FC, 0, 0);
}

uint64_t sub_23C0C18FC()
{
  v1 = *(v0[8] + 128);
  v0[13] = v1;
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  v0[15] = v4;
  *v3 = v0;
  v3[1] = sub_23C0C19D0;

  return MEMORY[0x282200460](v0 + 5, v2, v4);
}

uint64_t sub_23C0C19D0()
{

  return MEMORY[0x2822009F8](sub_23C0C1ACC, 0, 0);
}

uint64_t sub_23C0C1ACC()
{
  v1 = v0[8];

  v2 = v0[5];
  v3 = sub_23C0E9B10();

  [v2 setDiscoveryMode:2 forClientIdentifiers:v3];

  v4 = *(v1 + 136);
  v0[16] = v4;
  v5 = *(v4 + 16);

  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_23C0C1BD4;
  v7 = v0[15];

  return MEMORY[0x282200460](v0 + 6, v5, v7);
}

uint64_t sub_23C0C1BD4()
{

  return MEMORY[0x2822009F8](sub_23C0C1CD0, 0, 0);
}

uint64_t sub_23C0C1CD0()
{

  v1 = *(v0 + 48);
  v2 = sub_23C0E9B10();
  [v1 setDiscoveryMode:2 forClientIdentifiers:v2];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23C0C1D80()
{
  *(v1 + 32) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0C1E1C, 0, 0);
}

uint64_t sub_23C0C1E1C()
{
  v1 = v0[4];
  if (*(v1 + 56))
  {

    v2 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v3 = *(v1 + 56);
    v0[6] = v3;
    if (v3)
    {

      v4 = swift_task_alloc();
      v0[7] = v4;
      *v4 = v0;
      v4[1] = sub_23C0C1FD8;
      v5 = MEMORY[0x277D84A98];
      v6 = MEMORY[0x277D84AC0];

      return MEMORY[0x282200440](v0 + 28, v3, v2 + 8, v5, v6);
    }

    v1 = v0[4];
  }

  v7 = *(v1 + 128);
  v0[8] = v7;
  v8 = *(v7 + 16);

  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  v0[10] = v10;
  *v9 = v0;
  v9[1] = sub_23C0C21C4;

  return MEMORY[0x282200460](v0 + 2, v8, v10);
}

uint64_t sub_23C0C1FD8()
{

  return MEMORY[0x2822009F8](sub_23C0C20F0, 0, 0);
}

uint64_t sub_23C0C20F0()
{
  v1 = *(v0[4] + 128);
  v0[8] = v1;
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  v0[10] = v4;
  *v3 = v0;
  v3[1] = sub_23C0C21C4;

  return MEMORY[0x282200460](v0 + 2, v2, v4);
}

uint64_t sub_23C0C21C4()
{

  return MEMORY[0x2822009F8](sub_23C0C22C0, 0, 0);
}

uint64_t sub_23C0C22C0()
{
  v1 = v0[4];

  v0[11] = v0[2];
  v2 = *(v1 + 136);
  v0[12] = v2;
  v3 = *(v2 + 16);

  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_23C0C2388;
  v5 = v0[10];

  return MEMORY[0x282200460](v0 + 3, v3, v5);
}

uint64_t sub_23C0C2388()
{

  return MEMORY[0x2822009F8](sub_23C0C2484, 0, 0);
}

uint64_t sub_23C0C2484()
{
  v1 = *(v0 + 11);
  v3 = *(v0 + 4);
  v2 = *(v0 + 5);

  *(v0 + 14) = *(v0 + 3);
  v4 = sub_23C0E9BD0();
  *(v0 + 15) = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  *(v0 + 16) = v6;
  *(v0 + 17) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v2, 1, 1, v4);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v7;
  v9 = v1;
  *(v3 + 56) = sub_23C0DE678(0, 0, v2, &unk_23C0EAEA8, v8);

  v10 = MEMORY[0x277D84F78];
  if (*(v3 + 64))
  {

    sub_23C0E9C30();

    v11 = *(v3 + 64);
    *(v0 + 18) = v11;
    if (v11)
    {

      v12 = swift_task_alloc();
      *(v0 + 19) = v12;
      *v12 = v0;
      v12[1] = sub_23C0C2C68;
      v13 = MEMORY[0x277D84A98];
      v14 = MEMORY[0x277D84AC0];
      v15 = v0 + 225;
LABEL_20:

      return MEMORY[0x282200440](v15, v11, v10 + 8, v13, v14);
    }
  }

  v16 = *(v0 + 14);
  v18 = *(v0 + 4);
  v17 = *(v0 + 5);
  (*(v0 + 16))(v17, 1, 1, *(v0 + 15));
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v16;
  v20[5] = v19;
  v21 = v16;
  *(v18 + 64) = sub_23C0DE678(0, 0, v17, &unk_23C0EAEB8, v20);

  if (*(v18 + 72))
  {

    sub_23C0E9C30();

    v11 = *(v18 + 72);
    *(v0 + 20) = v11;
    if (v11)
    {

      v22 = swift_task_alloc();
      *(v0 + 21) = v22;
      *v22 = v0;
      v22[1] = sub_23C0C33F0;
      v13 = MEMORY[0x277D84A98];
      v14 = MEMORY[0x277D84AC0];
      v15 = v0 + 226;
      goto LABEL_20;
    }
  }

  v23 = *(v0 + 4);
  v24 = *(v0 + 5);
  (*(v0 + 16))(v24, 1, 1, *(v0 + 15));
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  *(v23 + 72) = sub_23C0DE678(0, 0, v24, &unk_23C0EAEC8, v26);

  if (*(v23 + 48))
  {
    v27 = *(v0 + 4);
    if (*(v27 + 80))
    {

      sub_23C0E9C30();

      v11 = *(v27 + 80);
      *(v0 + 22) = v11;
      if (v11)
      {

        v28 = swift_task_alloc();
        *(v0 + 23) = v28;
        *v28 = v0;
        v28[1] = sub_23C0C3A2C;
        v13 = MEMORY[0x277D84A98];
        v14 = MEMORY[0x277D84AC0];
        v15 = v0 + 229;
        goto LABEL_20;
      }

      v27 = *(v0 + 4);
    }

    v29 = *(v0 + 5);
    (*(v0 + 16))(v29, 1, 1, *(v0 + 15));
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v30;
    *(v27 + 80) = sub_23C0DE678(0, 0, v29, &unk_23C0EAEF8, v31);
  }

  v32 = *(v0 + 4);
  if (*(v32 + 88))
  {

    sub_23C0E9C30();

    v11 = *(v32 + 88);
    *(v0 + 24) = v11;
    if (v11)
    {

      v33 = swift_task_alloc();
      *(v0 + 25) = v33;
      *v33 = v0;
      v33[1] = sub_23C0C3F0C;
      v13 = MEMORY[0x277D84A98];
      v14 = MEMORY[0x277D84AC0];
      v15 = v0 + 227;
      goto LABEL_20;
    }

    v32 = *(v0 + 4);
  }

  v34 = *(v0 + 5);
  (*(v0 + 16))(v34, 1, 1, *(v0 + 15));
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v35;
  *(v32 + 88) = sub_23C0DE678(0, 0, v34, &unk_23C0EAED8, v36);

  if (*(v32 + 96))
  {

    sub_23C0E9C30();

    v11 = *(v32 + 96);
    *(v0 + 26) = v11;
    if (v11)
    {

      v37 = swift_task_alloc();
      *(v0 + 27) = v37;
      *v37 = v0;
      v37[1] = sub_23C0C42A8;
      v13 = MEMORY[0x277D84A98];
      v14 = MEMORY[0x277D84AC0];
      v15 = v0 + 228;
      goto LABEL_20;
    }
  }

  v38 = *(v0 + 14);
  v39 = *(v0 + 11);
  v40 = *(v0 + 4);
  v41 = *(v0 + 5);
  (*(v0 + 16))(v41, 1, 1, *(v0 + 15));
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v42;
  v44 = sub_23C0DE678(0, 0, v41, &unk_23C0EAEE8, v43);

  *(v40 + 96) = v44;

  v45 = *(v0 + 1);

  return v45();
}

uint64_t sub_23C0C2C68()
{

  return MEMORY[0x2822009F8](sub_23C0C2D80, 0, 0);
}

uint64_t sub_23C0C2D80()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 128))(v2, 1, 1, *(v0 + 120));
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v4;
  v6 = v1;
  *(v3 + 64) = sub_23C0DE678(0, 0, v2, &unk_23C0EAEB8, v5);

  if (*(v3 + 72))
  {

    v7 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v8 = *(v3 + 72);
    *(v0 + 160) = v8;
    if (v8)
    {

      v9 = swift_task_alloc();
      *(v0 + 168) = v9;
      *v9 = v0;
      v9[1] = sub_23C0C33F0;
      v10 = MEMORY[0x277D84A98];
      v11 = MEMORY[0x277D84AC0];
      v12 = v0 + 226;
LABEL_17:

      return MEMORY[0x282200440](v12, v8, v7 + 8, v10, v11);
    }
  }

  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  (*(v0 + 128))(v14, 1, 1, *(v0 + 120));
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  *(v13 + 72) = sub_23C0DE678(0, 0, v14, &unk_23C0EAEC8, v16);

  if (*(v13 + 48))
  {
    v17 = *(v0 + 32);
    if (*(v17 + 80))
    {

      v7 = MEMORY[0x277D84F78];
      sub_23C0E9C30();

      v8 = *(v17 + 80);
      *(v0 + 176) = v8;
      if (v8)
      {

        v18 = swift_task_alloc();
        *(v0 + 184) = v18;
        *v18 = v0;
        v18[1] = sub_23C0C3A2C;
        v10 = MEMORY[0x277D84A98];
        v11 = MEMORY[0x277D84AC0];
        v12 = v0 + 229;
        goto LABEL_17;
      }

      v17 = *(v0 + 32);
    }

    v19 = *(v0 + 40);
    (*(v0 + 128))(v19, 1, 1, *(v0 + 120));
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v20;
    *(v17 + 80) = sub_23C0DE678(0, 0, v19, &unk_23C0EAEF8, v21);
  }

  v22 = *(v0 + 32);
  if (*(v22 + 88))
  {

    v7 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v8 = *(v22 + 88);
    *(v0 + 192) = v8;
    if (v8)
    {

      v23 = swift_task_alloc();
      *(v0 + 200) = v23;
      *v23 = v0;
      v23[1] = sub_23C0C3F0C;
      v10 = MEMORY[0x277D84A98];
      v11 = MEMORY[0x277D84AC0];
      v12 = v0 + 227;
      goto LABEL_17;
    }

    v22 = *(v0 + 32);
  }

  v24 = *(v0 + 40);
  (*(v0 + 128))(v24, 1, 1, *(v0 + 120));
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  *(v22 + 88) = sub_23C0DE678(0, 0, v24, &unk_23C0EAED8, v26);

  if (*(v22 + 96))
  {

    v7 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v8 = *(v22 + 96);
    *(v0 + 208) = v8;
    if (v8)
    {

      v27 = swift_task_alloc();
      *(v0 + 216) = v27;
      *v27 = v0;
      v27[1] = sub_23C0C42A8;
      v10 = MEMORY[0x277D84A98];
      v11 = MEMORY[0x277D84AC0];
      v12 = v0 + 228;
      goto LABEL_17;
    }
  }

  v28 = *(v0 + 112);
  v29 = *(v0 + 88);
  v30 = *(v0 + 32);
  v31 = *(v0 + 40);
  (*(v0 + 128))(v31, 1, 1, *(v0 + 120));
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v32;
  v34 = sub_23C0DE678(0, 0, v31, &unk_23C0EAEE8, v33);

  *(v30 + 96) = v34;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_23C0C33F0()
{

  return MEMORY[0x2822009F8](sub_23C0C3508, 0, 0);
}

uint64_t sub_23C0C3508()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 128))(v2, 1, 1, *(v0 + 120));
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  *(v1 + 72) = sub_23C0DE678(0, 0, v2, &unk_23C0EAEC8, v4);

  if (*(v1 + 48))
  {
    v5 = *(v0 + 32);
    if (*(v5 + 80))
    {

      v6 = MEMORY[0x277D84F78];
      sub_23C0E9C30();

      v7 = *(v5 + 80);
      *(v0 + 176) = v7;
      if (v7)
      {

        v8 = swift_task_alloc();
        *(v0 + 184) = v8;
        *v8 = v0;
        v8[1] = sub_23C0C3A2C;
        v9 = MEMORY[0x277D84A98];
        v10 = MEMORY[0x277D84AC0];
        v11 = v0 + 229;
LABEL_14:

        return MEMORY[0x282200440](v11, v7, v6 + 8, v9, v10);
      }

      v5 = *(v0 + 32);
    }

    v12 = *(v0 + 40);
    (*(v0 + 128))(v12, 1, 1, *(v0 + 120));
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v13;
    *(v5 + 80) = sub_23C0DE678(0, 0, v12, &unk_23C0EAEF8, v14);
  }

  v15 = *(v0 + 32);
  if (*(v15 + 88))
  {

    v6 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v7 = *(v15 + 88);
    *(v0 + 192) = v7;
    if (v7)
    {

      v16 = swift_task_alloc();
      *(v0 + 200) = v16;
      *v16 = v0;
      v16[1] = sub_23C0C3F0C;
      v9 = MEMORY[0x277D84A98];
      v10 = MEMORY[0x277D84AC0];
      v11 = v0 + 227;
      goto LABEL_14;
    }

    v15 = *(v0 + 32);
  }

  v17 = *(v0 + 40);
  (*(v0 + 128))(v17, 1, 1, *(v0 + 120));
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v18;
  *(v15 + 88) = sub_23C0DE678(0, 0, v17, &unk_23C0EAED8, v19);

  if (*(v15 + 96))
  {

    v6 = MEMORY[0x277D84F78];
    sub_23C0E9C30();

    v7 = *(v15 + 96);
    *(v0 + 208) = v7;
    if (v7)
    {

      v20 = swift_task_alloc();
      *(v0 + 216) = v20;
      *v20 = v0;
      v20[1] = sub_23C0C42A8;
      v9 = MEMORY[0x277D84A98];
      v10 = MEMORY[0x277D84AC0];
      v11 = v0 + 228;
      goto LABEL_14;
    }
  }

  v21 = *(v0 + 112);
  v22 = *(v0 + 88);
  v23 = *(v0 + 32);
  v24 = *(v0 + 40);
  (*(v0 + 128))(v24, 1, 1, *(v0 + 120));
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  v27 = sub_23C0DE678(0, 0, v24, &unk_23C0EAEE8, v26);

  *(v23 + 96) = v27;

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_23C0C3A2C()
{

  return MEMORY[0x2822009F8](sub_23C0C3B44, 0, 0);
}

uint64_t sub_23C0C3B44()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 128))(v2, 1, 1, *(v0 + 120));
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  *(v1 + 80) = sub_23C0DE678(0, 0, v2, &unk_23C0EAEF8, v4);

  v5 = *(v0 + 32);
  v6 = MEMORY[0x277D84F78];
  if (*(v5 + 88))
  {

    sub_23C0E9C30();

    v7 = *(v5 + 88);
    *(v0 + 192) = v7;
    if (v7)
    {

      v8 = swift_task_alloc();
      *(v0 + 200) = v8;
      *v8 = v0;
      v8[1] = sub_23C0C3F0C;
      v9 = MEMORY[0x277D84A98];
      v10 = MEMORY[0x277D84AC0];
      v11 = v0 + 227;
LABEL_8:

      return MEMORY[0x282200440](v11, v7, v6 + 8, v9, v10);
    }

    v5 = *(v0 + 32);
  }

  v12 = *(v0 + 40);
  (*(v0 + 128))(v12, 1, 1, *(v0 + 120));
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  *(v5 + 88) = sub_23C0DE678(0, 0, v12, &unk_23C0EAED8, v14);

  if (*(v5 + 96))
  {

    sub_23C0E9C30();

    v7 = *(v5 + 96);
    *(v0 + 208) = v7;
    if (v7)
    {

      v15 = swift_task_alloc();
      *(v0 + 216) = v15;
      *v15 = v0;
      v15[1] = sub_23C0C42A8;
      v9 = MEMORY[0x277D84A98];
      v10 = MEMORY[0x277D84AC0];
      v11 = v0 + 228;
      goto LABEL_8;
    }
  }

  v16 = *(v0 + 112);
  v17 = *(v0 + 88);
  v18 = *(v0 + 32);
  v19 = *(v0 + 40);
  (*(v0 + 128))(v19, 1, 1, *(v0 + 120));
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;
  v22 = sub_23C0DE678(0, 0, v19, &unk_23C0EAEE8, v21);

  *(v18 + 96) = v22;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_23C0C3F0C()
{

  return MEMORY[0x2822009F8](sub_23C0C4024, 0, 0);
}

uint64_t sub_23C0C4024()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  (*(v0 + 128))(v1, 1, 1, *(v0 + 120));
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  *(v2 + 88) = sub_23C0DE678(0, 0, v1, &unk_23C0EAED8, v4);

  if (*(v2 + 96) && (, v5 = MEMORY[0x277D84F78], sub_23C0E9C30(), , v6 = *(v2 + 96), (*(v0 + 208) = v6) != 0))
  {

    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = sub_23C0C42A8;
    v8 = MEMORY[0x277D84A98];
    v9 = MEMORY[0x277D84AC0];

    return MEMORY[0x282200440](v0 + 228, v6, v5 + 8, v8, v9);
  }

  else
  {
    v10 = *(v0 + 112);
    v11 = *(v0 + 88);
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
    (*(v0 + 128))(v13, 1, 1, *(v0 + 120));
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v14;
    v16 = sub_23C0DE678(0, 0, v13, &unk_23C0EAEE8, v15);

    *(v12 + 96) = v16;

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_23C0C42A8()
{

  return MEMORY[0x2822009F8](sub_23C0C43C0, 0, 0);
}

uint64_t sub_23C0C43C0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v0 + 128))(v4, 1, 1, *(v0 + 120));
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v7 = sub_23C0DE678(0, 0, v4, &unk_23C0EAEE8, v6);

  *(v3 + 96) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23C0C44D0()
{
  *(v1 + 64) = v0;

  return MEMORY[0x2822009F8](sub_23C0C4560, 0, 0);
}

uint64_t sub_23C0C4560()
{
  v47 = v0;
  v46[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  if (!*(v1 + 48))
  {
    v2 = [objc_opt_self() auxiliarySession];
    v3 = *(v1 + 48);
    *(v1 + 48) = v2;

    v4 = *(v1 + 48);
    if (v4)
    {
      v5 = *MEMORY[0x277CB8038];
      *(v0 + 40) = 0;
      v6 = [v4 setCategory:v5 withOptions:5 error:v0 + 40];
      v7 = *(v0 + 40);
      if (!v6)
      {
        v27 = v7;
        v28 = sub_23C0E9770();

        swift_willThrow();
        if (qword_27E1EE790 != -1)
        {
          swift_once();
        }

        v29 = sub_23C0E9830();
        __swift_project_value_buffer(v29, qword_27E1EF4F8);
        v30 = v28;
        v31 = sub_23C0E9820();
        v32 = sub_23C0E9C80();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v46[0] = v34;
          *v33 = 136315650;
          *(v33 + 4) = sub_23C0D8D20(0xD00000000000002CLL, 0x800000023C0ED530, v46);
          *(v33 + 12) = 2080;
          *(v33 + 14) = sub_23C0D8D20(0xD000000000000022, 0x800000023C0ED5A0, v46);
          *(v33 + 22) = 2080;
          swift_getErrorValue();
          v35 = sub_23C0E9DB0();
          v37 = sub_23C0D8D20(v35, v36, v46);

          *(v33 + 24) = v37;
          _os_log_impl(&dword_23C0B2000, v31, v32, "%s->%s error=%s", v33, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23EEC78E0](v34, -1, -1);
          MEMORY[0x23EEC78E0](v33, -1, -1);
        }

        else
        {
        }

        goto LABEL_26;
      }

      v8 = *(v1 + 48);
      v9 = v7;
      if (v8)
      {
        v10 = [v8 opaqueSessionID];
        *(v0 + 104) = v10;
        if (qword_27E1EE790 != -1)
        {
          swift_once();
        }

        v11 = sub_23C0E9830();
        __swift_project_value_buffer(v11, qword_27E1EF4F8);

        v12 = sub_23C0E9820();
        v13 = sub_23C0E9C90();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = *(v0 + 64);
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v46[0] = v16;
          *v15 = 136315394;
          if (*(v14 + 24))
          {
            if (*(v14 + 24) == 1)
            {
              v17 = 0xE600000000000000;
              v18 = 0x7070412D6E49;
            }

            else
            {
              v17 = 0xE800000000000000;
              v18 = 0x73676E6974746553;
            }
          }

          else
          {
            v17 = 0xE200000000000000;
            v18 = 17219;
          }

          v41 = sub_23C0D8D20(v18, v17, v46);

          *(v15 + 4) = v41;
          *(v15 + 12) = 1024;
          *(v15 + 14) = v10;
          _os_log_impl(&dword_23C0B2000, v12, v13, "[%s] set fakeDiscoverySession: %u", v15, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x23EEC78E0](v16, -1, -1);
          MEMORY[0x23EEC78E0](v15, -1, -1);
        }

        v42 = *(*(v0 + 64) + 136);
        *(v0 + 72) = v42;
        v43 = *(v42 + 16);

        v44 = swift_task_alloc();
        *(v0 + 80) = v44;
        v45 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
        *v44 = v0;
        v44[1] = sub_23C0C4BF8;

        return MEMORY[0x282200460](v0 + 56, v43, v45);
      }
    }

    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v19 = sub_23C0E9830();
    __swift_project_value_buffer(v19, qword_27E1EF4F8);

    v20 = sub_23C0E9820();
    v21 = sub_23C0E9C90();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 64);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46[0] = v24;
      *v23 = 136315138;
      if (*(v22 + 24))
      {
        if (*(v22 + 24) == 1)
        {
          v25 = 0xE600000000000000;
          v26 = 0x7070412D6E49;
        }

        else
        {
          v25 = 0xE800000000000000;
          v26 = 0x73676E6974746553;
        }
      }

      else
      {
        v25 = 0xE200000000000000;
        v26 = 17219;
      }

      v38 = sub_23C0D8D20(v26, v25, v46);

      *(v23 + 4) = v38;
      _os_log_impl(&dword_23C0B2000, v20, v21, "[%s] Unable to set fakeDiscoverySession!", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23EEC78E0](v24, -1, -1);
      MEMORY[0x23EEC78E0](v23, -1, -1);
    }
  }

LABEL_26:
  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_23C0C4BF8()
{

  return MEMORY[0x2822009F8](sub_23C0C4D20, 0, 0);
}

uint64_t sub_23C0C4D20()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  v3 = *(v0 + 56);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  [v3 setAudioSessionID_];

  v5 = *(v2 + 104);
  *(v0 + 88) = v5;

  return MEMORY[0x2822009F8](sub_23C0C4E04, v5, 0);
}

uint64_t sub_23C0C4E04()
{
  sub_23C0BECB0();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_23C0C4EC8;

  return sub_23C0CBC14();
}

uint64_t sub_23C0C4EC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23C0C5008()
{
  v22 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 120);
    if (v3)
    {
      v4 = v2[14];
      v5 = v3;
    }

    else
    {
      v5 = 0xE300000000000000;
      v4 = 7104878;
    }

    v8 = qword_27E1EE790;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_23C0E9830();
    __swift_project_value_buffer(v9, qword_27E1EF4F8);

    v10 = sub_23C0E9820();
    v11 = sub_23C0E9C90();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_23C0D8D20(v4, v5, &v21);

      _os_log_impl(&dword_23C0B2000, v10, v11, "stop discovery for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23EEC78E0](v13, -1, -1);
      MEMORY[0x23EEC78E0](v12, -1, -1);

      v14 = v2[15];
      if (v14)
      {
LABEL_12:
        v15 = v2[14];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE960, &qword_23C0EADE0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_23C0EA9C0;
        *(v16 + 32) = v15;
        *(v16 + 40) = v14;
LABEL_15:
        v0[9] = v16;
        v17 = v2[16];
        v0[10] = v17;

        v18 = *(v17 + 16);

        v19 = swift_task_alloc();
        v0[11] = v19;
        v20 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
        v0[12] = v20;
        *v19 = v0;
        v19[1] = sub_23C0C52FC;

        return MEMORY[0x282200460](v0 + 5, v18, v20);
      }
    }

    else
    {

      v14 = v2[15];
      if (v14)
      {
        goto LABEL_12;
      }
    }

    v16 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_23C0C52FC()
{

  return MEMORY[0x2822009F8](sub_23C0C53F8, 0, 0);
}

uint64_t sub_23C0C53F8()
{
  v1 = v0[8];

  v2 = v0[5];
  v3 = sub_23C0E9B10();

  [v2 setDiscoveryMode:0 forClientIdentifiers:v3];

  v4 = *(v1 + 136);
  v0[13] = v4;
  v5 = *(v4 + 16);

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_23C0C5500;
  v7 = v0[12];

  return MEMORY[0x282200460](v0 + 6, v5, v7);
}

uint64_t sub_23C0C5500()
{

  return MEMORY[0x2822009F8](sub_23C0C55FC, 0, 0);
}

uint64_t sub_23C0C55FC()
{

  v1 = *(v0 + 48);
  v2 = sub_23C0E9B10();
  [v1 setDiscoveryMode:0 forClientIdentifiers:v2];

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_23C0C56D0;

  return sub_23C0C582C();
}

uint64_t sub_23C0C56D0()
{

  return MEMORY[0x2822009F8](sub_23C0C57CC, 0, 0);
}

uint64_t sub_23C0C57CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0C584C()
{
  v29 = v0;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = sub_23C0E9830();
  __swift_project_value_buffer(v1, qword_27E1EF4F8);

  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315394;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v7 = 0xE600000000000000;
        v8 = 0x7070412D6E49;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x73676E6974746553;
      }
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 17219;
    }

    v9 = sub_23C0D8D20(v8, v7, &v28);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_23C0D8D20(0xD00000000000001CLL, 0x800000023C0ED4D0, &v28);
    _os_log_impl(&dword_23C0B2000, v2, v3, "[%s] %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v6, -1, -1);
    MEMORY[0x23EEC78E0](v5, -1, -1);
  }

  v10 = v0[2];
  v11 = *(v10 + 56);
  v0[3] = v11;
  if (v11)
  {

    v12 = MEMORY[0x277D84F78];
    v13 = MEMORY[0x277D84A98];
    v14 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v15 = swift_task_alloc();
    v0[4] = v15;
    *v15 = v0;
    v15[1] = sub_23C0C5E0C;
    v16 = v0 + 125;
LABEL_22:

    return MEMORY[0x282200440](v16, v11, v12 + 8, v13, v14);
  }

  *(v10 + 56) = 0;
  v11 = *(v10 + 64);
  v0[5] = v11;
  if (v11)
  {

    v12 = MEMORY[0x277D84F78];
    v13 = MEMORY[0x277D84A98];
    v14 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v17 = swift_task_alloc();
    v0[6] = v17;
    *v17 = v0;
    v17[1] = sub_23C0C6298;
    v16 = v0 + 124;
    goto LABEL_22;
  }

  v18 = v0[2];
  *(v18 + 64) = 0;
  v11 = *(v18 + 72);
  v0[7] = v11;
  if (v11)
  {

    v12 = MEMORY[0x277D84F78];
    v13 = MEMORY[0x277D84A98];
    v14 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v19 = swift_task_alloc();
    v0[8] = v19;
    *v19 = v0;
    v19[1] = sub_23C0C6694;
    v16 = v0 + 123;
    goto LABEL_22;
  }

  v20 = v0[2];
  *(v20 + 72) = 0;
  v11 = *(v20 + 80);
  v0[9] = v11;
  if (v11)
  {

    v12 = MEMORY[0x277D84F78];
    v13 = MEMORY[0x277D84A98];
    v14 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v21 = swift_task_alloc();
    v0[10] = v21;
    *v21 = v0;
    v21[1] = sub_23C0C69FC;
    v16 = v0 + 122;
    goto LABEL_22;
  }

  v22 = v0[2];
  *(v22 + 80) = 0;
  v11 = *(v22 + 88);
  v0[11] = v11;
  if (v11)
  {

    v12 = MEMORY[0x277D84F78];
    v13 = MEMORY[0x277D84A98];
    v14 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v23 = swift_task_alloc();
    v0[12] = v23;
    *v23 = v0;
    v23[1] = sub_23C0C6CD0;
    v16 = v0 + 121;
    goto LABEL_22;
  }

  v24 = v0[2];
  *(v24 + 88) = 0;
  v11 = *(v24 + 96);
  v0[13] = v11;
  if (v11)
  {

    v12 = MEMORY[0x277D84F78];
    v13 = MEMORY[0x277D84A98];
    v14 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v25 = swift_task_alloc();
    v0[14] = v25;
    *v25 = v0;
    v25[1] = sub_23C0C6F10;
    v16 = (v0 + 15);
    goto LABEL_22;
  }

  *(v0[2] + 96) = 0;
  v26 = v0[1];

  return v26();
}

uint64_t sub_23C0C5E0C()
{

  return MEMORY[0x2822009F8](sub_23C0C5F08, 0, 0);
}

uint64_t sub_23C0C5F08()
{

  v1 = *(v0 + 2);
  *(v1 + 56) = 0;

  v2 = *(v1 + 64);
  *(v0 + 5) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v6 = swift_task_alloc();
    *(v0 + 6) = v6;
    *v6 = v0;
    v6[1] = sub_23C0C6298;
    v7 = v0 + 124;
LABEL_11:

    return MEMORY[0x282200440](v7, v2, v3 + 8, v4, v5);
  }

  v8 = *(v0 + 2);
  *(v8 + 64) = 0;
  v2 = *(v8 + 72);
  *(v0 + 7) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v9 = swift_task_alloc();
    *(v0 + 8) = v9;
    *v9 = v0;
    v9[1] = sub_23C0C6694;
    v7 = v0 + 123;
    goto LABEL_11;
  }

  v10 = *(v0 + 2);
  *(v10 + 72) = 0;
  v2 = *(v10 + 80);
  *(v0 + 9) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v11 = swift_task_alloc();
    *(v0 + 10) = v11;
    *v11 = v0;
    v11[1] = sub_23C0C69FC;
    v7 = v0 + 122;
    goto LABEL_11;
  }

  v12 = *(v0 + 2);
  *(v12 + 80) = 0;
  v2 = *(v12 + 88);
  *(v0 + 11) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v13 = swift_task_alloc();
    *(v0 + 12) = v13;
    *v13 = v0;
    v13[1] = sub_23C0C6CD0;
    v7 = v0 + 121;
    goto LABEL_11;
  }

  v14 = *(v0 + 2);
  *(v14 + 88) = 0;
  v2 = *(v14 + 96);
  *(v0 + 13) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v15 = swift_task_alloc();
    *(v0 + 14) = v15;
    *v15 = v0;
    v15[1] = sub_23C0C6F10;
    v7 = v0 + 120;
    goto LABEL_11;
  }

  *(*(v0 + 2) + 96) = 0;
  v16 = *(v0 + 1);

  return v16();
}

uint64_t sub_23C0C6298()
{

  return MEMORY[0x2822009F8](sub_23C0C6394, 0, 0);
}

uint64_t sub_23C0C6394()
{

  v1 = *(v0 + 2);
  *(v1 + 64) = 0;

  v2 = *(v1 + 72);
  *(v0 + 7) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v6 = swift_task_alloc();
    *(v0 + 8) = v6;
    *v6 = v0;
    v6[1] = sub_23C0C6694;
    v7 = v0 + 123;
LABEL_9:

    return MEMORY[0x282200440](v7, v2, v3 + 8, v4, v5);
  }

  v8 = *(v0 + 2);
  *(v8 + 72) = 0;
  v2 = *(v8 + 80);
  *(v0 + 9) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v9 = swift_task_alloc();
    *(v0 + 10) = v9;
    *v9 = v0;
    v9[1] = sub_23C0C69FC;
    v7 = v0 + 122;
    goto LABEL_9;
  }

  v10 = *(v0 + 2);
  *(v10 + 80) = 0;
  v2 = *(v10 + 88);
  *(v0 + 11) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v11 = swift_task_alloc();
    *(v0 + 12) = v11;
    *v11 = v0;
    v11[1] = sub_23C0C6CD0;
    v7 = v0 + 121;
    goto LABEL_9;
  }

  v12 = *(v0 + 2);
  *(v12 + 88) = 0;
  v2 = *(v12 + 96);
  *(v0 + 13) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v13 = swift_task_alloc();
    *(v0 + 14) = v13;
    *v13 = v0;
    v13[1] = sub_23C0C6F10;
    v7 = v0 + 120;
    goto LABEL_9;
  }

  *(*(v0 + 2) + 96) = 0;
  v14 = *(v0 + 1);

  return v14();
}

uint64_t sub_23C0C6694()
{

  return MEMORY[0x2822009F8](sub_23C0C6790, 0, 0);
}

uint64_t sub_23C0C6790()
{

  v1 = *(v0 + 2);
  *(v1 + 72) = 0;

  v2 = *(v1 + 80);
  *(v0 + 9) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v6 = swift_task_alloc();
    *(v0 + 10) = v6;
    *v6 = v0;
    v6[1] = sub_23C0C69FC;
    v7 = v0 + 122;
LABEL_7:

    return MEMORY[0x282200440](v7, v2, v3 + 8, v4, v5);
  }

  v8 = *(v0 + 2);
  *(v8 + 80) = 0;
  v2 = *(v8 + 88);
  *(v0 + 11) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v9 = swift_task_alloc();
    *(v0 + 12) = v9;
    *v9 = v0;
    v9[1] = sub_23C0C6CD0;
    v7 = v0 + 121;
    goto LABEL_7;
  }

  v10 = *(v0 + 2);
  *(v10 + 88) = 0;
  v2 = *(v10 + 96);
  *(v0 + 13) = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v11 = swift_task_alloc();
    *(v0 + 14) = v11;
    *v11 = v0;
    v11[1] = sub_23C0C6F10;
    v7 = v0 + 120;
    goto LABEL_7;
  }

  *(*(v0 + 2) + 96) = 0;
  v12 = *(v0 + 1);

  return v12();
}

uint64_t sub_23C0C69FC()
{

  return MEMORY[0x2822009F8](sub_23C0C6AF8, 0, 0);
}

uint64_t sub_23C0C6AF8()
{

  v1 = v0[2];
  *(v1 + 80) = 0;

  v2 = *(v1 + 88);
  v0[11] = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_23C0C6CD0;
    v7 = (v0 + 121);
LABEL_5:

    return MEMORY[0x282200440](v7, v2, v3 + 8, v4, v5);
  }

  v8 = v0[2];
  *(v8 + 88) = 0;
  v2 = *(v8 + 96);
  v0[13] = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_23C0C6F10;
    v7 = v0 + 15;
    goto LABEL_5;
  }

  *(v0[2] + 96) = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_23C0C6CD0()
{

  return MEMORY[0x2822009F8](sub_23C0C6DCC, 0, 0);
}

uint64_t sub_23C0C6DCC()
{

  v1 = v0[2];
  *(v1 + 88) = 0;

  v2 = *(v1 + 96);
  v0[13] = v2;
  if (v2)
  {

    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    sub_23C0E9C30();
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_23C0C6F10;

    return MEMORY[0x282200440](v0 + 15, v2, v3 + 8, v4, v5);
  }

  else
  {
    *(v0[2] + 96) = 0;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23C0C6F10()
{

  return MEMORY[0x2822009F8](sub_23C0C700C, 0, 0);
}

uint64_t sub_23C0C700C()
{

  *(*(v0 + 16) + 96) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0C7080(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_23C0E9BD0();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0C7140, 0, 0);
}

uint64_t sub_23C0C7140()
{
  v1 = *(*(v0 + 72) + 104);
  *(v0 + 104) = v1;
  return MEMORY[0x2822009F8](sub_23C0C7164, v1, 0);
}

uint64_t sub_23C0C7164()
{
  v1 = v0[13];
  v2 = v1[20];
  v0[14] = v2;
  v3 = v1[21];
  v0[15] = v3;
  v4 = v1[22];
  v0[16] = v4;
  v5 = v1[23];
  v0[17] = v5;
  v6 = v1[24];
  v0[18] = v6;
  v7 = v1[25];
  v0[19] = v7;
  sub_23C0B4DE4(v2, v3, v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_23C0C71FC, 0, 0);
}

uint64_t sub_23C0C71FC()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 64);
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);

    *v3 = v2;
    *(v3 + 8) = v1;
    *(v3 + 16) = v10;
    *(v3 + 32) = v9;
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_allocObject();
    *(v0 + 160) = v6;
    swift_weakInit();
    sub_23C0E9BB0();
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_23C0C7388;
    v8 = *(v0 + 96);

    return sub_23C0E1148(v0 + 16, 0xD000000000000019, 0x800000023C0ED600, v8, &unk_23C0EAFB8, v6);
  }
}

uint64_t sub_23C0C7388()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *v0;

  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v11 = *(v1 + 32);
  v12 = *(v1 + 16);

  (*(v3 + 8))(v2, v4);
  v8 = *(v1 + 64);

  *v8 = v12;
  *(v8 + 16) = v11;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v9 = *(v5 + 8);

  return v9();
}

uint64_t sub_23C0C7564(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_23C0E9BD0();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0C7628, 0, 0);
}

uint64_t sub_23C0C7628()
{
  v42 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v38 = v2;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v40 = v0;
  *(v0 + 64) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9F0, &qword_23C0EB0B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23C0EAC90;
  if (v1)
  {
    v8 = &unk_23C0EB110;
  }

  else
  {
    v8 = &unk_23C0EB100;
  }

  if (v1)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  if (v1)
  {
    v10 = &unk_23C0EB138;
  }

  else
  {
    v10 = &unk_23C0EB118;
  }

  if (v1)
  {
    v11 = &unk_23C0EB100;
  }

  else
  {
    v11 = &unk_23C0EB110;
  }

  if (v1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (v1)
  {
    v13 = &unk_23C0EB140;
  }

  else
  {
    v13 = &unk_23C0EB120;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  *(v7 + 32) = v10;
  *(v7 + 40) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v12;
  *(v7 + 48) = v13;
  *(v7 + 56) = v15;
  v16 = qword_27E1EE790;
  v17 = v38;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_23C0E9830();
  __swift_project_value_buffer(v18, qword_27E1EF4F8);

  v19 = sub_23C0E9820();
  v20 = sub_23C0E9C90();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v40 + 24);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 136315650;
    v37 = v7;
    v39 = v23;
    if (*(v21 + 24))
    {
      if (*(v21 + 24) == 1)
      {
        v24 = 0xE600000000000000;
        v25 = 0x7070412D6E49;
      }

      else
      {
        v24 = 0xE800000000000000;
        v25 = 0x73676E6974746553;
      }
    }

    else
    {
      v24 = 0xE200000000000000;
      v25 = 17219;
    }

    v26 = *(v40 + 88);
    v27 = sub_23C0D8D20(v25, v24, &v41);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    if (v26)
    {
      v28 = 0x6C6F686563616C70;
    }

    else
    {
      v28 = 0x746E65696C63;
    }

    if (v26)
    {
      v29 = 0xEB00000000726564;
    }

    else
    {
      v29 = 0xE600000000000000;
    }

    if (v26)
    {
      v30 = 0x746E65696C63;
    }

    else
    {
      v30 = 0x6C6F686563616C70;
    }

    if (v26)
    {
      v31 = 0xE600000000000000;
    }

    else
    {
      v31 = 0xEB00000000726564;
    }

    v32 = sub_23C0D8D20(v28, v29, &v41);

    *(v22 + 14) = v32;
    *(v22 + 22) = 2080;
    v33 = sub_23C0D8D20(v30, v31, &v41);

    *(v22 + 24) = v33;
    _os_log_impl(&dword_23C0B2000, v19, v20, "[%s] Sending set preferred input notification to %s first, then %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v39, -1, -1);
    MEMORY[0x23EEC78E0](v22, -1, -1);

    v7 = v37;
  }

  else
  {
  }

  v34 = *(*(v40 + 24) + 16);
  *(v40 + 72) = v34;
  sub_23C0E9BB0();
  v35 = swift_allocObject();
  *(v40 + 80) = v35;
  *(v35 + 16) = v7;

  return MEMORY[0x2822009F8](sub_23C0C7AAC, v34, 0);
}

uint64_t sub_23C0C7AAC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_23C0DD498(0xD000000000000014, 0x800000023C0ED6A0, v1, &unk_23C0EB130, v0[10]);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0C7B80, 0, 0);
}

uint64_t sub_23C0C7B80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0C7BF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return MEMORY[0x2822009F8](sub_23C0C7C14, 0, 0);
}

uint64_t sub_23C0C7C14()
{
  v30 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 120);
    if (v3)
    {
      v4 = *(Strong + 112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9D8, &qword_23C0EB058);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23C0EAC90;
      v6 = *MEMORY[0x277CB8618];
      *(inited + 32) = *MEMORY[0x277CB8618];
      v7 = MEMORY[0x277D837D0];
      *(inited + 40) = v4;
      *(inited + 48) = v3;
      v8 = *MEMORY[0x277CB8610];
      *(inited + 64) = v7;
      *(inited + 72) = v8;
      *(inited + 104) = v7;
      *(inited + 80) = v4;
      *(inited + 88) = v3;
      swift_bridgeObjectRetain_n();
      v9 = v6;
      v10 = v8;
      v11 = sub_23C0E8E3C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9E0, &qword_23C0EB060);
      swift_arrayDestroy();
    }

    else
    {
      v11 = sub_23C0E8E3C(MEMORY[0x277D84F90]);
    }

    v0[27] = v11;
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v14 = v0[25];
    v15 = sub_23C0E9830();
    v0[28] = __swift_project_value_buffer(v15, qword_27E1EF4F8);

    v16 = v14;
    v17 = sub_23C0E9820();
    v18 = sub_23C0E9C90();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v19 = 136315394;
      if (*(v2 + 24))
      {
        if (*(v2 + 24) == 1)
        {
          v22 = 0xE600000000000000;
          v23 = 0x7070412D6E49;
        }

        else
        {
          v22 = 0xE800000000000000;
          v23 = 0x73676E6974746553;
        }
      }

      else
      {
        v22 = 0xE200000000000000;
        v23 = 17219;
      }

      v24 = v0[25];
      v25 = sub_23C0D8D20(v23, v22, &v29);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v24;
      *v20 = v24;
      v26 = v24;
      _os_log_impl(&dword_23C0B2000, v17, v18, "[%s] Trying to set new input device for client with id: %@", v19, 0x16u);
      sub_23C0DAAD8(v20, &qword_27E1EE9E8, &qword_23C0EB068);
      MEMORY[0x23EEC78E0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23EEC78E0](v21, -1, -1);
      MEMORY[0x23EEC78E0](v19, -1, -1);
    }

    else
    {
      v24 = v0[25];
    }

    v0[29] = v24;
    __swift_project_boxed_opaque_existential_0((v2 + 144), *(v2 + 168));
    v28 = off_284EE0DC0 + *off_284EE0DC0;
    v27 = swift_task_alloc();
    v0[30] = v27;
    *v27 = v0;
    v27[1] = sub_23C0C8068;

    return (v28)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_23C0C8068()
{

  return MEMORY[0x2822009F8](sub_23C0C8164, 0, 0);
}

uint64_t sub_23C0C8164()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_0(v0 + 16, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_23C0C82A4;
  v5 = v0[29];

  return v7(v5, v1, v2, v3);
}

uint64_t sub_23C0C82A4(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_23C0C83C4, 0, 0);
}

uint64_t sub_23C0C83C4()
{
  v18 = v0;
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v2 = v1;

  v3 = v2;
  v4 = sub_23C0E9820();
  v5 = sub_23C0E9C90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) == 1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x7070412D6E49;
      }

      else
      {
        v9 = 0xE800000000000000;
        v10 = 0x73676E6974746553;
      }
    }

    else
    {
      v9 = 0xE200000000000000;
      v10 = 17219;
    }

    v12 = v0[32];
    v13 = sub_23C0D8D20(v10, v9, &v17);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    v14 = [v12 status];

    *(v7 + 14) = v14;
    _os_log_impl(&dword_23C0B2000, v4, v5, "[%s] Set new input completes with status %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EEC78E0](v8, -1, -1);
    MEMORY[0x23EEC78E0](v7, -1, -1);
  }

  else
  {
    v11 = v0[32];
  }

  v15 = *(v0[26] + 104);
  v0[33] = v15;

  return MEMORY[0x2822009F8](sub_23C0C85B4, v15, 0);
}

uint64_t sub_23C0C85B4()
{
  sub_23C0BECB0();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_23C0C8650;

  return sub_23C0C87B4(0);
}

uint64_t sub_23C0C8650()
{

  return MEMORY[0x2822009F8](sub_23C0C874C, 0, 0);
}

uint64_t sub_23C0C874C()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C0C87B4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = sub_23C0E9BD0();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0C8878, 0, 0);
}

uint64_t sub_23C0C8878()
{
  v1 = *(v0 + 64);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_23C0E9BB0();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_23C0C89C0;

  return (sub_23C0E199C)();
}

uint64_t sub_23C0C89C0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0DB074, 0, 0);
}

uint64_t sub_23C0C8B34(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return MEMORY[0x2822009F8](sub_23C0C8B54, 0, 0);
}

uint64_t sub_23C0C8B54()
{
  v32 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v2 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9D8, &qword_23C0EB058);
    inited = swift_initStackObject();
    v4 = inited;
    v5 = MEMORY[0x277CB8618];
    *(inited + 16) = xmmword_23C0EAC90;
    v6 = *v5;
    *(inited + 32) = v6;
    if (*(v2 + 24))
    {
      v7 = 0xD000000000000023;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (*(v2 + 24))
    {
      v8 = "userPreferredInputRoute()";
    }

    else
    {
      v8 = "AVKitRoutingService";
    }

    v9 = v8 | 0x8000000000000000;
    v10 = MEMORY[0x277D837D0];
    *(inited + 40) = v7;
    *(inited + 48) = v9;
    v11 = *MEMORY[0x277CB8610];
    *(inited + 64) = v10;
    *(inited + 72) = v11;
    *(inited + 104) = v10;
    *(inited + 80) = v7;
    *(inited + 88) = v9;
    v12 = v6;
    v13 = v11;
    v0[27] = sub_23C0E8E3C(v4);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9E0, &qword_23C0EB060);
    swift_arrayDestroy();
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v14 = v0[25];
    v15 = sub_23C0E9830();
    v0[28] = __swift_project_value_buffer(v15, qword_27E1EF4F8);

    v16 = v14;
    v17 = sub_23C0E9820();
    v18 = sub_23C0E9C90();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v19 = 136315394;
      if (*(v2 + 24))
      {
        if (*(v2 + 24) == 1)
        {
          v22 = 0xE600000000000000;
          v23 = 0x7070412D6E49;
        }

        else
        {
          v22 = 0xE800000000000000;
          v23 = 0x73676E6974746553;
        }
      }

      else
      {
        v22 = 0xE200000000000000;
        v23 = 17219;
      }

      v26 = v0[25];
      v27 = sub_23C0D8D20(v23, v22, &v31);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v26;
      *v20 = v26;
      v28 = v26;
      _os_log_impl(&dword_23C0B2000, v17, v18, "[%s] Trying to set new input device for metering placeholder with id %@", v19, 0x16u);
      sub_23C0DAAD8(v20, &qword_27E1EE9E8, &qword_23C0EB068);
      MEMORY[0x23EEC78E0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23EEC78E0](v21, -1, -1);
      MEMORY[0x23EEC78E0](v19, -1, -1);
    }

    else
    {
      v26 = v0[25];
    }

    v0[29] = v26;
    __swift_project_boxed_opaque_existential_0((v2 + 144), *(v2 + 168));
    v30 = off_284EE0DC0 + *off_284EE0DC0;
    v29 = swift_task_alloc();
    v0[30] = v29;
    *v29 = v0;
    v29[1] = sub_23C0C8FB0;

    return (v30)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_23C0C8FB0()
{

  return MEMORY[0x2822009F8](sub_23C0C90AC, 0, 0);
}

uint64_t sub_23C0C90AC()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_0(v0 + 16, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_23C0C91EC;
  v5 = v0[29];

  return v7(v5, v1, v2, v3);
}

uint64_t sub_23C0C91EC(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_23C0C930C, 0, 0);
}

uint64_t sub_23C0C930C()
{
  v18 = v0;
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v2 = v1;

  v3 = v2;
  v4 = sub_23C0E9820();
  v5 = sub_23C0E9C90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) == 1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x7070412D6E49;
      }

      else
      {
        v9 = 0xE800000000000000;
        v10 = 0x73676E6974746553;
      }
    }

    else
    {
      v9 = 0xE200000000000000;
      v10 = 17219;
    }

    v12 = v0[32];
    v13 = sub_23C0D8D20(v10, v9, &v17);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    v14 = [v12 status];

    *(v7 + 14) = v14;
    _os_log_impl(&dword_23C0B2000, v4, v5, "[%s] set new input on metering placeholder session completed with status %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EEC78E0](v8, -1, -1);
    MEMORY[0x23EEC78E0](v7, -1, -1);
  }

  else
  {
    v11 = v0[32];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_23C0C9514(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_23C0B7A50;

  return v5();
}

void sub_23C0C961C()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v3 = v1[4];
    v0[4] = v1[5];

    v5 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_23C0C972C;

    v5();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23C0C972C()
{

  return MEMORY[0x2822009F8](sub_23C0C9844, 0, 0);
}

void sub_23C0C9844()
{
  if (v0[3] == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[2];
    v3 = *(v2 + 48);
    v0[6] = *(v2 + 56);

    v5 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_23C0DAFE4;

    v5();
  }
}

uint64_t sub_23C0C9954(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return MEMORY[0x2822009F8](sub_23C0C9974, 0, 0);
}

uint64_t sub_23C0C9974()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_0((Strong + 144), *(Strong + 168));
    v6 = off_284EE0DC0 + *off_284EE0DC0;
    v2 = swift_task_alloc();
    v0[37] = v2;
    *v2 = v0;
    v2[1] = sub_23C0C9B14;

    return (v6)(v0 + 14, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v4 = v0[34];
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_23C0C9B14()
{

  return MEMORY[0x2822009F8](sub_23C0C9C10, 0, 0);
}

uint64_t sub_23C0C9C10()
{
  v1 = v0[36];
  v2 = v0[17];
  v3 = v0[18];
  __swift_project_boxed_opaque_existential_0(v0 + 14, v2);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v0[38] = v5;
  v6 = *(v3 + 16);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_23C0C9D64;

  return v9(v4, v5, v2, v3);
}

uint64_t sub_23C0C9D64(uint64_t a1)
{
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_23C0C9E84, 0, 0);
}

uint64_t sub_23C0C9E84()
{
  v24 = v0;
  v1 = *(v0 + 320);
  if (v1)
  {
    v2 = *(v0 + 288);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    v3 = *(v2 + 104);
    *(v0 + 328) = v3;

    v4 = v1;
    sub_23C0DCD84(v4, (v0 + 64));
    *(v0 + 336) = *(v0 + 64);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 360) = *(v0 + 88);
    *(v0 + 376) = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_23C0CA178, v3, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v5 = sub_23C0E9830();
    __swift_project_value_buffer(v5, qword_27E1EF4F8);

    v6 = sub_23C0E9820();
    v7 = sub_23C0E9C90();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 288);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315394;
      if (*(v9 + 24))
      {
        if (*(v9 + 24) == 1)
        {
          v12 = 0xE600000000000000;
          v13 = 0x7070412D6E49;
        }

        else
        {
          v12 = 0xE800000000000000;
          v13 = 0x73676E6974746553;
        }
      }

      else
      {
        v12 = 0xE200000000000000;
        v13 = 17219;
      }

      v14 = *(v0 + 288);
      v15 = sub_23C0D8D20(v13, v12, &v23);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v16 = *(v14 + 120);
      if (v16)
      {
        v17 = *(*(v0 + 288) + 112);
        v18 = v16;
      }

      else
      {
        v18 = 0xE300000000000000;
        v17 = 7104878;
      }

      v19 = sub_23C0D8D20(v17, v18, &v23);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_23C0B2000, v6, v7, "[%s] requesting userPreferredInputDevice for %s is nil", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC78E0](v11, -1, -1);
      MEMORY[0x23EEC78E0](v10, -1, -1);
    }

    v20 = *(v0 + 272);
    v20[1] = 0u;
    v20[2] = 0u;
    *v20 = 0u;
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_23C0CA178()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(v0 + 328);
  v6 = *(v0 + 80);
  *(v0 + 176) = *(v0 + 64);
  *(v0 + 192) = v6;
  *(v0 + 208) = *(v0 + 96);
  v7 = v5[20];
  v8 = v5[21];
  v9 = v5[22];
  v10 = v5[23];
  v11 = v5[24];
  v12 = v5[25];
  *(v5 + 10) = v4;
  v5[22] = v3;
  *(v5 + 23) = v2;
  v5[25] = v1;
  sub_23C0BD974(v0 + 176, v0 + 224);
  sub_23C0BD974(v0 + 192, v0 + 240);
  sub_23C0BD974(v0 + 208, v0 + 256);
  sub_23C0B4E34(v7, v8, v9, v10, v11, v12);
  sub_23C0BE29C(v0 + 176);
  sub_23C0BE29C(v0 + 192);
  sub_23C0BE29C(v0 + 208);

  return MEMORY[0x2822009F8](sub_23C0CA294, 0, 0);
}

uint64_t sub_23C0CA294()
{
  v23 = v0;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = sub_23C0E9830();
  __swift_project_value_buffer(v1, qword_27E1EF4F8);

  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v7 = 0xE600000000000000;
        v8 = 0x7070412D6E49;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x73676E6974746553;
      }
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 17219;
    }

    v9 = *(v0 + 288);
    v10 = sub_23C0D8D20(v8, v7, &v22);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    if (*(v9 + 120))
    {
      v11 = *(*(v0 + 288) + 112);
      v12 = *(v9 + 120);
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7104878;
    }

    v13 = sub_23C0D8D20(v11, v12, &v22);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_23C0B2000, v2, v3, "[%s] requesting userPreferredInputDevice for %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v6, -1, -1);
    MEMORY[0x23EEC78E0](v5, -1, -1);
  }

  v14 = *(v0 + 320);
  v15 = *(v0 + 272);
  sub_23C0DCD84(v14, (v0 + 16));
  v20 = *(v0 + 32);
  v21 = *(v0 + 16);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  *v15 = v21;
  *(v15 + 16) = v20;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_23C0CA504(uint64_t a1, uint64_t a2)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return MEMORY[0x2822009F8](sub_23C0CA524, 0, 0);
}

uint64_t sub_23C0CA524()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[33] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 128);
    v0[34] = v2;
    v3 = *(v2 + 16);

    v4 = swift_task_alloc();
    v0[35] = v4;
    v5 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
    v0[36] = v5;
    *v4 = v0;
    v4[1] = sub_23C0CA660;

    return MEMORY[0x282200460](v0 + 29, v3, v5);
  }

  else
  {
    v6 = v0[31];
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    v6[2] = 0;
    v6[3] = 0xE000000000000000;
    v6[4] = 0;
    v6[5] = 0xE000000000000000;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23C0CA660()
{

  return MEMORY[0x2822009F8](sub_23C0CA75C, 0, 0);
}

uint64_t sub_23C0CA75C()
{
  v34 = v0;

  v1 = *(v0 + 232);
  v2 = [v1 fallbackInputDevice];
  *(v0 + 296) = v2;

  v3 = [v2 deviceName];
  if (v3)
  {

    v4 = [v2 deviceName];
    if (!v4)
    {
LABEL_8:
      *(v0 + 320) = v2;
      if (qword_27E1EE790 != -1)
      {
        swift_once();
      }

      v11 = sub_23C0E9830();
      __swift_project_value_buffer(v11, qword_27E1EF4F8);

      v12 = sub_23C0E9820();
      v13 = sub_23C0E9C90();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 264);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v33 = v16;
        *v15 = 136315394;
        if (*(v14 + 24))
        {
          if (*(v14 + 24) == 1)
          {
            v17 = 0xE600000000000000;
            v18 = 0x7070412D6E49;
          }

          else
          {
            v17 = 0xE800000000000000;
            v18 = 0x73676E6974746553;
          }
        }

        else
        {
          v17 = 0xE200000000000000;
          v18 = 17219;
        }

        v23 = sub_23C0D8D20(v18, v17, &v33);

        *(v15 + 4) = v23;
        *(v15 + 12) = 2080;
        v24 = [v2 deviceName];
        if (v24)
        {
          v25 = v24;
          v26 = sub_23C0E9A10();
          v28 = v27;
        }

        else
        {
          v28 = 0xE300000000000000;
          v26 = 7104878;
        }

        v29 = sub_23C0D8D20(v26, v28, &v33);

        *(v15 + 14) = v29;
        _os_log_impl(&dword_23C0B2000, v12, v13, "[%s] requesting fallbackInputDevice %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEC78E0](v16, -1, -1);
        MEMORY[0x23EEC78E0](v15, -1, -1);
      }

      v30 = *(*(v0 + 264) + 104);
      *(v0 + 328) = v30;

      v31 = v2;
      sub_23C0DCD84(v31, (v0 + 64));
      *(v0 + 336) = *(v0 + 64);
      *(v0 + 352) = *(v0 + 80);
      *(v0 + 360) = *(v0 + 88);
      *(v0 + 376) = *(v0 + 104);

      return MEMORY[0x2822009F8](sub_23C0CAF30, v30, 0);
    }

    v5 = v4;
    v6 = sub_23C0E9A10();
    v8 = v7;

    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 == 0xE000000000000000;
    }

    if (v9)
    {
    }

    else
    {
      v10 = sub_23C0E9D90();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v19 = *(*(v0 + 264) + 136);
  *(v0 + 304) = v19;
  v20 = *(v19 + 16);

  v21 = swift_task_alloc();
  *(v0 + 312) = v21;
  *v21 = v0;
  v21[1] = sub_23C0CAB5C;
  v22 = *(v0 + 288);

  return MEMORY[0x282200460](v0 + 240, v20, v22);
}

uint64_t sub_23C0CAB5C()
{

  return MEMORY[0x2822009F8](sub_23C0CAC58, 0, 0);
}

uint64_t sub_23C0CAC58()
{
  v23 = v0;
  v1 = *(v0 + 296);

  v2 = *(v0 + 240);
  v3 = [v2 fallbackInputDevice];

  *(v0 + 320) = v3;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v4 = sub_23C0E9830();
  __swift_project_value_buffer(v4, qword_27E1EF4F8);

  v5 = sub_23C0E9820();
  v6 = sub_23C0E9C90();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 264);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315394;
    if (*(v7 + 24))
    {
      if (*(v7 + 24) == 1)
      {
        v10 = 0xE600000000000000;
        v11 = 0x7070412D6E49;
      }

      else
      {
        v10 = 0xE800000000000000;
        v11 = 0x73676E6974746553;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      v11 = 17219;
    }

    v12 = sub_23C0D8D20(v11, v10, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = [v3 deviceName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_23C0E9A10();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_23C0D8D20(v15, v17, &v22);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_23C0B2000, v5, v6, "[%s] requesting fallbackInputDevice %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v9, -1, -1);
    MEMORY[0x23EEC78E0](v8, -1, -1);
  }

  v19 = *(*(v0 + 264) + 104);
  *(v0 + 328) = v19;

  v20 = v3;
  sub_23C0DCD84(v20, (v0 + 64));
  *(v0 + 336) = *(v0 + 64);
  *(v0 + 352) = *(v0 + 80);
  *(v0 + 360) = *(v0 + 88);
  *(v0 + 376) = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_23C0CAF30, v19, 0);
}

uint64_t sub_23C0CAF30()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v4 = *(v0 + 80);
  *(v0 + 136) = *(v0 + 64);
  v5 = *(v0 + 336);
  v6 = *(v0 + 328);
  *(v0 + 152) = v4;
  *(v0 + 168) = *(v0 + 96);
  v7 = v6[14];
  v8 = v6[15];
  v9 = v6[16];
  v10 = v6[17];
  v11 = v6[18];
  v12 = v6[19];
  *(v6 + 7) = v5;
  v6[16] = v3;
  *(v6 + 17) = v2;
  v6[19] = v1;
  sub_23C0BD974(v0 + 136, v0 + 184);
  sub_23C0BD974(v0 + 152, v0 + 200);
  sub_23C0BD974(v0 + 168, v0 + 216);
  sub_23C0B4E34(v7, v8, v9, v10, v11, v12);
  sub_23C0BE29C(v0 + 136);
  sub_23C0BE29C(v0 + 152);
  sub_23C0BE29C(v0 + 168);

  return MEMORY[0x2822009F8](sub_23C0CB050, 0, 0);
}

uint64_t sub_23C0CB050()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 320);
  sub_23C0DCD84(v2, (v0 + 16));

  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v1[1] = *(v0 + 32);
  v1[2] = v4;
  *v1 = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23C0CB0EC()
{
  v1[2] = v0;
  v2 = sub_23C0E9BD0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0CB1AC, 0, 0);
}

uint64_t sub_23C0CB1AC()
{
  v1 = *(*(v0 + 16) + 104);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_23C0CB1D0, v1, 0);
}

uint64_t sub_23C0CB1D0()
{
  *(v0 + 56) = *(*(v0 + 48) + 256);

  return MEMORY[0x2822009F8](sub_23C0CB244, 0, 0);
}

uint64_t sub_23C0CB244()
{
  v21 = v0;
  if (v0[7])
  {
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v1 = sub_23C0E9830();
    __swift_project_value_buffer(v1, qword_27E1EF4F8);

    v2 = sub_23C0E9820();
    v3 = sub_23C0E9C90();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[2];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v20 = v6;
      *v5 = 136315394;
      if (*(v4 + 24))
      {
        if (*(v4 + 24) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x7070412D6E49;
        }

        else
        {
          v7 = 0xE800000000000000;
          v8 = 0x73676E6974746553;
        }
      }

      else
      {
        v7 = 0xE200000000000000;
        v8 = 17219;
      }

      v13 = v0[7];
      v14 = sub_23C0D8D20(v8, v7, &v20);

      *(v5 + 4) = v14;
      *(v5 + 12) = 2080;
      v15 = MEMORY[0x23EEC7000](v13, &type metadata for InputPickerMicrophone);
      v17 = sub_23C0D8D20(v15, v16, &v20);

      *(v5 + 14) = v17;
      _os_log_impl(&dword_23C0B2000, v2, v3, "[%s] hit cache for availableRoutes %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC78E0](v6, -1, -1);
      MEMORY[0x23EEC78E0](v5, -1, -1);
    }

    v18 = v0[7];

    v19 = v0[1];

    return v19(v18);
  }

  else
  {
    v9 = swift_allocObject();
    v0[8] = v9;
    swift_weakInit();
    sub_23C0E9BB0();
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_23C0CB57C;
    v11 = v0[5];

    return sub_23C0E00FC(0xD000000000000011, 0x800000023C0ED4F0, v11, &unk_23C0EAE18, v9);
  }
}

uint64_t sub_23C0CB57C(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;

  (*(v4 + 8))(v3, v5);

  v6 = *(v8 + 8);

  return v6(a1);
}

uint64_t sub_23C0CB700(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_23C0CB720, 0, 0);
}

uint64_t sub_23C0CB720()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_23C0CB818;

    return sub_23C0CBC14();
  }

  else
  {
    **(v0 + 40) = MEMORY[0x277D84F90];
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_23C0CB818()
{

  return MEMORY[0x2822009F8](sub_23C0CB914, 0, 0);
}

uint64_t sub_23C0CB914()
{
  v1 = *(*(v0 + 56) + 104);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](sub_23C0CB938, v1, 0);
}

uint64_t sub_23C0CB938()
{
  *(v0 + 80) = *(*(v0 + 72) + 256);

  return MEMORY[0x2822009F8](sub_23C0CB9AC, 0, 0);
}

uint64_t sub_23C0CB9AC()
{
  v20 = v0;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = sub_23C0E9830();
  __swift_project_value_buffer(v1, qword_27E1EF4F8);

  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315394;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v7 = 0xE600000000000000;
        v8 = 0x7070412D6E49;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x73676E6974746553;
      }
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 17219;
    }

    v9 = *(v0 + 80);
    v10 = sub_23C0D8D20(v8, v7, &v19);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    if (v9)
    {
      v11 = MEMORY[0x23EEC7000](*(v0 + 80), &type metadata for InputPickerMicrophone);
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_23C0D8D20(v11, v13, &v19);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_23C0B2000, v2, v3, "[%s] requesting routes %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v6, -1, -1);
    MEMORY[0x23EEC78E0](v5, -1, -1);
  }

  v15 = *(v0 + 80);

  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v16 = v15;
  }

  **(v0 + 40) = v16;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_23C0CBC14()
{
  v1[2] = v0;
  v2 = sub_23C0E9BD0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0CBCD4, 0, 0);
}

uint64_t sub_23C0CBCD4()
{
  v1 = swift_allocObject();
  v0[6] = v1;
  swift_weakInit();
  sub_23C0E9BB0();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_23C0C89C0;
  v3 = v0[5];

  return sub_23C0E199C(sub_23C0E199C, 0xD00000000000001FLL, 0x800000023C0ED510, v3, &unk_23C0EAE30, v1);
}

uint64_t sub_23C0CBDF4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_23C0E9BD0();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0CBEB4, 0, 0);
}

uint64_t sub_23C0CBEB4()
{
  v1 = *(*(v0 + 72) + 104);
  *(v0 + 104) = v1;
  return MEMORY[0x2822009F8](sub_23C0CBED8, v1, 0);
}

uint64_t sub_23C0CBED8()
{
  v1 = v0[13];
  v2 = v1[26];
  v0[14] = v2;
  v3 = v1[27];
  v0[15] = v3;
  v4 = v1[28];
  v0[16] = v4;
  v5 = v1[29];
  v0[17] = v5;
  v6 = v1[30];
  v0[18] = v6;
  v7 = v1[31];
  v0[19] = v7;
  sub_23C0B4DE4(v2, v3, v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_23C0CBF70, 0, 0);
}

uint64_t sub_23C0CBF70()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 64);
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);

    *v3 = v2;
    *(v3 + 8) = v1;
    *(v3 + 16) = v10;
    *(v3 + 32) = v9;
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_allocObject();
    *(v0 + 160) = v6;
    swift_weakInit();
    sub_23C0E9BB0();
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_23C0DB064;
    v8 = *(v0 + 96);

    return sub_23C0E1148(v0 + 16, 0xD00000000000001BLL, 0x800000023C0ED560, v8, &unk_23C0EAE68, v6);
  }
}

uint64_t sub_23C0CC0FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return MEMORY[0x2822009F8](sub_23C0CC11C, 0, 0);
}

uint64_t sub_23C0CC11C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_0((Strong + 144), *(Strong + 168));
    v6 = off_284EE0DC0 + *off_284EE0DC0;
    v2 = swift_task_alloc();
    v0[37] = v2;
    *v2 = v0;
    v2[1] = sub_23C0CC2BC;

    return (v6)(v0 + 14, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v4 = v0[34];
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_23C0CC2BC()
{

  return MEMORY[0x2822009F8](sub_23C0CC3B8, 0, 0);
}

uint64_t sub_23C0CC3B8()
{
  v1 = v0[17];
  v2 = v0[18];
  __swift_project_boxed_opaque_existential_0(v0 + 14, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_23C0CC4E4;

  return v5(0, 0, v1, v2);
}

uint64_t sub_23C0CC4E4(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_23C0CC5E4, 0, 0);
}

uint64_t sub_23C0CC5E4()
{
  v1 = *(v0 + 312);
  if (v1)
  {
    v2 = *(v0 + 288);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    v3 = *(v2 + 104);
    *(v0 + 320) = v3;

    v4 = v1;
    sub_23C0DCD84(v4, (v0 + 64));
    *(v0 + 328) = *(v0 + 64);
    *(v0 + 344) = *(v0 + 80);
    *(v0 + 352) = *(v0 + 88);
    *(v0 + 368) = *(v0 + 104);

    return MEMORY[0x2822009F8](sub_23C0CC6F0, v3, 0);
  }

  else
  {
    v5 = *(v0 + 272);

    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    v5[1] = 0u;
    v5[2] = 0u;
    *v5 = 0u;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_23C0CC6F0()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = v6[26];
  v8 = v6[27];
  v9 = v6[28];
  v10 = v6[29];
  v11 = v6[30];
  v12 = v6[31];
  v6[26] = *(v0 + 328);
  v6[27] = v5;
  v6[28] = v4;
  v6[29] = v3;
  v6[30] = v2;
  v6[31] = v1;
  v13 = *(v0 + 80);
  *(v0 + 176) = *(v0 + 64);
  *(v0 + 192) = v13;
  *(v0 + 208) = *(v0 + 96);
  sub_23C0BD974(v0 + 176, v0 + 224);
  sub_23C0BD974(v0 + 192, v0 + 240);
  sub_23C0BD974(v0 + 208, v0 + 256);
  sub_23C0B4E34(v7, v8, v9, v10, v11, v12);
  sub_23C0BE29C(v0 + 176);
  sub_23C0BE29C(v0 + 192);
  sub_23C0BE29C(v0 + 208);

  return MEMORY[0x2822009F8](sub_23C0CC800, 0, 0);
}

uint64_t sub_23C0CC800()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  sub_23C0DCD84(v1, (v0 + 16));
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);

  *v2 = v8;
  *(v2 + 16) = v7;
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23C0CC8A4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  v3 = sub_23C0E9BD0();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0CC968, 0, 0);
}

uint64_t sub_23C0CC968()
{
  v36 = v0;
  v1 = *(v0 + 80);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  swift_weakInit();
  v3 = swift_allocObject();
  v34 = v0;
  *(v0 + 56) = v3;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9F0, &qword_23C0EB0B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C0EAC90;
  if (v1)
  {
    v5 = &unk_23C0EB0A8;
  }

  else
  {
    v5 = &unk_23C0EB098;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  if (v1)
  {
    v7 = &unk_23C0EB0E0;
  }

  else
  {
    v7 = &unk_23C0EB0C0;
  }

  if (v1)
  {
    v8 = &unk_23C0EB098;
  }

  else
  {
    v8 = &unk_23C0EB0A8;
  }

  if (v1)
  {
    v9 = v2;
  }

  else
  {
    v9 = v3;
  }

  if (v1)
  {
    v10 = &unk_23C0EB0E8;
  }

  else
  {
    v10 = &unk_23C0EB0C8;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v4 + 32) = v7;
  *(v4 + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v4 + 48) = v10;
  *(v4 + 56) = v12;
  v13 = qword_27E1EE790;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_23C0E9830();
  __swift_project_value_buffer(v14, qword_27E1EF4F8);

  v15 = sub_23C0E9820();
  v16 = sub_23C0E9C90();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v34 + 16);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315650;
    v33 = v19;
    if (*(v17 + 24))
    {
      if (*(v17 + 24) == 1)
      {
        v20 = 0xE600000000000000;
        v21 = 0x7070412D6E49;
      }

      else
      {
        v20 = 0xE800000000000000;
        v21 = 0x73676E6974746553;
      }
    }

    else
    {
      v20 = 0xE200000000000000;
      v21 = 17219;
    }

    v22 = *(v34 + 80);
    v23 = sub_23C0D8D20(v21, v20, &v35);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    if (v22)
    {
      v24 = 0x6C6F686563616C70;
    }

    else
    {
      v24 = 0x746E65696C63;
    }

    if (v22)
    {
      v25 = 0xEB00000000726564;
    }

    else
    {
      v25 = 0xE600000000000000;
    }

    if (v22)
    {
      v26 = 0x746E65696C63;
    }

    else
    {
      v26 = 0x6C6F686563616C70;
    }

    if (v22)
    {
      v27 = 0xE600000000000000;
    }

    else
    {
      v27 = 0xEB00000000726564;
    }

    v28 = sub_23C0D8D20(v24, v25, &v35);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    v29 = sub_23C0D8D20(v26, v27, &v35);

    *(v18 + 24) = v29;
    _os_log_impl(&dword_23C0B2000, v15, v16, "[%s] Sending clear preferred input notification to %s first, then %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v33, -1, -1);
    MEMORY[0x23EEC78E0](v18, -1, -1);
  }

  else
  {
  }

  v30 = *(*(v34 + 16) + 16);
  *(v34 + 64) = v30;
  v31 = swift_allocObject();
  *(v34 + 72) = v31;
  *(v31 + 16) = v4;
  sub_23C0E9BA0();

  return MEMORY[0x2822009F8](sub_23C0CCDA8, v30, 0);
}

uint64_t sub_23C0CCDA8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_23C0DD498(0xD000000000000021, 0x800000023C0ED670, v1, &unk_23C0EB0D8, v0[9]);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23C0CCE7C, 0, 0);
}

uint64_t sub_23C0CCE7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0CCF10()
{
  v19 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v3 = sub_23C0E9830();
    v0[16] = __swift_project_value_buffer(v3, qword_27E1EF4F8);

    v4 = sub_23C0E9820();
    v5 = sub_23C0E9C90();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136315394;
      if (*(v2 + 24))
      {
        if (*(v2 + 24) == 1)
        {
          v8 = 0xE600000000000000;
          v9 = 0x7070412D6E49;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x73676E6974746553;
        }
      }

      else
      {
        v8 = 0xE200000000000000;
        v9 = 17219;
      }

      v12 = sub_23C0D8D20(v9, v8, &v18);

      *(v6 + 4) = v12;
      *(v6 + 12) = 2080;
      if (*(v2 + 120))
      {
        v13 = *(v2 + 112);
        v14 = *(v2 + 120);
      }

      else
      {
        v14 = 0xE300000000000000;
        v13 = 7104878;
      }

      v15 = sub_23C0D8D20(v13, v14, &v18);

      *(v6 + 14) = v15;
      _os_log_impl(&dword_23C0B2000, v4, v5, "[%s] clearing Preferred for %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC78E0](v7, -1, -1);
      MEMORY[0x23EEC78E0](v6, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0((v2 + 144), *(v2 + 168));
    v17 = off_284EE0DC0 + *off_284EE0DC0;
    v16 = swift_task_alloc();
    v0[17] = v16;
    *v16 = v0;
    v16[1] = sub_23C0CD274;

    return (v17)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_23C0CD274()
{

  return MEMORY[0x2822009F8](sub_23C0CD370, 0, 0);
}

uint64_t sub_23C0CD370()
{
  v1 = v0[15];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v0[18] = v5;
  v6 = *(v3 + 32);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_23C0CD4C4;

  return v9(v4, v5, v2, v3);
}

uint64_t sub_23C0CD4C4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_23C0CD848;
  }

  else
  {

    v2 = sub_23C0CD5E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C0CD5E0()
{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = *(v1 + 104);
  v0[21] = v2;

  return MEMORY[0x2822009F8](sub_23C0CD650, v2, 0);
}

uint64_t sub_23C0CD650()
{
  sub_23C0BECB0();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_23C0CD6EC;

  return sub_23C0C87B4(0);
}

uint64_t sub_23C0CD6EC()
{

  return MEMORY[0x2822009F8](sub_23C0CD7E8, 0, 0);
}

uint64_t sub_23C0CD7E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0CD848()
{
  v19 = v0;
  v1 = v0[20];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v1;
  v3 = sub_23C0E9820();
  v4 = sub_23C0E9C70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x7070412D6E49;
      }

      else
      {
        v8 = 0xE800000000000000;
        v9 = 0x73676E6974746553;
      }
    }

    else
    {
      v8 = 0xE200000000000000;
      v9 = 17219;
    }

    v11 = v0[20];
    v12 = sub_23C0D8D20(v9, v8, &v18);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_23C0E9DB0();
    v15 = sub_23C0D8D20(v13, v14, &v18);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_23C0B2000, v3, v4, "[%s] clearing client preferred input error=%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v7, -1, -1);
    MEMORY[0x23EEC78E0](v6, -1, -1);
  }

  else
  {
    v10 = v0[20];
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_23C0CDAA4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_0((Strong + 144), *(Strong + 168));
    v5 = off_284EE0DC0 + *off_284EE0DC0;
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_23C0CDC34;

    return (v5)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_23C0CDC34()
{

  return MEMORY[0x2822009F8](sub_23C0CDD30, 0, 0);
}

uint64_t sub_23C0CDD30()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
  v4 = *(v1 + 24);
  *(v0 + 152) = v4;
  if (v4)
  {
    v5 = 0xD000000000000023;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v4)
  {
    v6 = "userPreferredInputRoute()";
  }

  else
  {
    v6 = "AVKitRoutingService";
  }

  v9 = (*(v3 + 32) + **(v3 + 32));
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_23C0CDEA0;

  return v9(v5, v6 | 0x8000000000000000, v2, v3);
}

uint64_t sub_23C0CDEA0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_23C0CE048;
  }

  else
  {

    v2 = sub_23C0CDFE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C0CDFE0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C0CE048()
{
  v20 = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_23C0E9830();
  __swift_project_value_buffer(v2, qword_27E1EF4F8);

  v3 = v1;
  v4 = sub_23C0E9820();
  v5 = sub_23C0E9C70();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) == 1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x7070412D6E49;
      }

      else
      {
        v9 = 0xE800000000000000;
        v10 = 0x73676E6974746553;
      }
    }

    else
    {
      v9 = 0xE200000000000000;
      v10 = 17219;
    }

    v12 = v0[18];
    v13 = sub_23C0D8D20(v10, v9, &v19);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v14 = sub_23C0E9DB0();
    v16 = sub_23C0D8D20(v14, v15, &v19);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_23C0B2000, v4, v5, "[%s] clearing metering placeholder preferred input error=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v8, -1, -1);
    MEMORY[0x23EEC78E0](v7, -1, -1);
  }

  else
  {
    v11 = v0[18];
  }

  v17 = v0[1];

  return v17();
}

void sub_23C0CE310()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v3 = v1[4];
    v0[4] = v1[5];

    v5 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_23C0CE420;

    v5();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23C0CE420()
{

  return MEMORY[0x2822009F8](sub_23C0CE538, 0, 0);
}

void sub_23C0CE538()
{
  if (v0[3] == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[2];
    v3 = *(v2 + 48);
    v0[6] = *(v2 + 56);

    v5 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_23C0CE648;

    v5();
  }
}

uint64_t sub_23C0CE648()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23C0CE778()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_23C0CE868;

    return sub_23C0CBDF4((v0 + 2));
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_23C0CE868()
{
  v1 = *v0;
  v4 = *v0;

  sub_23C0DAAD8(v1 + 16, &qword_27E1EE798, &qword_23C0EB080);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23C0CE990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[56] = a4;
  v5[57] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v5[58] = swift_task_alloc();
  v6 = sub_23C0E9BD0();
  v5[59] = v6;
  v5[60] = *(v6 - 8);
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00);
  v5[63] = swift_task_alloc();
  v7 = sub_23C0E9CB0();
  v5[64] = v7;
  v5[65] = *(v7 - 8);
  v5[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0CEB28, 0, 0);
}

uint64_t sub_23C0CEB28()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v2 = sub_23C0DA34C();
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_23C0CEC40;
  v4 = v0[63];
  v5 = v0[64];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_23C0CEC40()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_23C0DB068;
  }

  else
  {
    v2 = sub_23C0CED54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C0CED70()
{
  v1 = v0[63];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[69] = Strong;
  if (!Strong)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[65] + 8))(v0[66], v0[64]);

LABEL_7:
    sub_23C0DAAD8(v0[63], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v7 = sub_23C0E9830();
  __swift_project_value_buffer(v7, qword_27E1EF4F8);
  v8 = sub_23C0E9820();
  v9 = sub_23C0E9C90();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23C0B2000, v8, v9, " .AvailableInputDevicesDidChange received", v10, 2u);
    MEMORY[0x23EEC78E0](v10, -1, -1);
  }

  v11 = *(v4 + 16);
  v0[70] = v11;
  v0[71] = swift_allocObject();
  swift_weakInit();
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0CF010, v11, 0);
}

uint64_t sub_23C0CF010()
{
  v22 = v0;
  v1 = v0[70];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {

    v3 = sub_23C0E6074(0xD00000000000001FLL, 0x800000023C0ED510);
    if (v4)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v3, (v0 + 2));

      sub_23C0B7660((v0 + 2), (v0 + 27));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v5 = v0[55];
        v0[78] = v5;

        v6 = swift_task_alloc();
        v0[79] = v6;
        *v6 = v0;
        v6[1] = sub_23C0CFA98;
        v7 = MEMORY[0x277D84F78] + 8;
        v8 = v5;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  v9 = v0[71];
  v10 = v0[62];
  v11 = v0[59];
  v12 = v0[60];
  v13 = v0[58];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_beginAccess();
  sub_23C0E2190(v20, 0xD00000000000001FLL, 0x800000023C0ED510);
  swift_endAccess();
  (*(v12 + 16))(v13, v10, v11);
  v14 = *(v12 + 56);
  v14(v13, 0, 1, v11);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23C0EB000;
  v15[5] = v9;

  v16 = sub_23C0DE678(0, 0, v13, &unk_23C0EB008, v15);
  v0[72] = v16;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v0[11] = &off_284EE15C0;
  v0[7] = v16;
  swift_beginAccess();
  swift_retain_n();
  sub_23C0E2190((v0 + 7), 0xD00000000000001FLL, 0x800000023C0ED510);
  swift_endAccess();
  v14(v13, 1, 1, v11);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = 0xD00000000000001FLL;
  v18[7] = 0x800000023C0ED510;

  sub_23C0DE678(0, 0, v13, &unk_23C0EB010, v18);

  v6 = swift_task_alloc();
  v0[73] = v6;
  *v6 = v0;
  v6[1] = sub_23C0CF41C;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = v16;
LABEL_8:

  return MEMORY[0x282200460](v6, v8, v7);
}

uint64_t sub_23C0CF41C()
{
  v1 = *(*v0 + 560);

  return MEMORY[0x2822009F8](sub_23C0CF52C, v1, 0);
}

uint64_t sub_23C0CF52C()
{

  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  v4 = *(v3 + 8);
  v0[74] = v4;
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);

  return MEMORY[0x2822009F8](sub_23C0CF5CC, 0, 0);
}

uint64_t sub_23C0CF5CC()
{
  v1 = *(v0[69] + 16);
  v0[76] = v1;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v0[77] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0CF690, v1, 0);
}

uint64_t sub_23C0CF690()
{
  v22 = v0;
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {

    v3 = sub_23C0E6074(0xD000000000000027, 0x800000023C0ED5D0);
    if (v4)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v3, (v0 + 12));

      sub_23C0B7660((v0 + 12), (v0 + 22));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v5 = v0[54];
        v0[82] = v5;

        v6 = swift_task_alloc();
        v0[83] = v6;
        *v6 = v0;
        v6[1] = sub_23C0CFED0;
        v7 = MEMORY[0x277D84F78] + 8;
        v8 = v5;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    }

    else
    {
    }
  }

  v9 = v0[77];
  v11 = v0[60];
  v10 = v0[61];
  v12 = v0[58];
  v13 = v0[59];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_beginAccess();
  sub_23C0E2190(v20, 0xD000000000000027, 0x800000023C0ED5D0);
  swift_endAccess();
  (*(v11 + 16))(v12, v10, v13);
  v14 = *(v11 + 56);
  v14(v12, 0, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23C0EB018;
  v15[5] = v9;

  v16 = sub_23C0DE678(0, 0, v12, &unk_23C0EB020, v15);
  v0[80] = v16;
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v0[21] = &off_284EE15C0;
  v0[17] = v16;
  swift_beginAccess();
  swift_retain_n();
  sub_23C0E2190((v0 + 17), 0xD000000000000027, 0x800000023C0ED5D0);
  swift_endAccess();
  v14(v12, 1, 1, v13);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = 0xD000000000000027;
  v18[7] = 0x800000023C0ED5D0;

  sub_23C0DE678(0, 0, v12, &unk_23C0EB028, v18);

  v6 = swift_task_alloc();
  v0[81] = v6;
  *v6 = v0;
  v6[1] = sub_23C0CFC68;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = v16;
LABEL_8:

  return MEMORY[0x282200460](v6, v8, v7);
}

uint64_t sub_23C0CFA98()
{
  v1 = *(*v0 + 560);

  return MEMORY[0x2822009F8](sub_23C0CFBC4, v1, 0);
}

uint64_t sub_23C0CFBC4()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  v4 = *(v3 + 8);
  v0[74] = v4;
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);

  return MEMORY[0x2822009F8](sub_23C0CF5CC, 0, 0);
}

uint64_t sub_23C0CFC68()
{
  v1 = *(*v0 + 608);

  return MEMORY[0x2822009F8](sub_23C0CFD78, v1, 0);
}

uint64_t sub_23C0CFD78()
{

  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x2822009F8](sub_23C0CFE04, 0, 0);
}

uint64_t sub_23C0CFE04()
{
  v1 = v0[63];

  sub_23C0DAAD8(v1, &qword_27E1EE988, &qword_23C0EAF00);
  v2 = sub_23C0DA34C();
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_23C0CEC40;
  v4 = v0[63];
  v5 = v0[64];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_23C0CFED0()
{
  v1 = *(*v0 + 608);

  return MEMORY[0x2822009F8](sub_23C0CFFFC, v1, 0);
}

uint64_t sub_23C0CFFFC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x2822009F8](sub_23C0CFE04, 0, 0);
}

uint64_t sub_23C0D008C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[56] = a4;
  v5[57] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v5[58] = swift_task_alloc();
  v6 = sub_23C0E9BD0();
  v5[59] = v6;
  v5[60] = *(v6 - 8);
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00);
  v5[63] = swift_task_alloc();
  v7 = sub_23C0E9CB0();
  v5[64] = v7;
  v5[65] = *(v7 - 8);
  v5[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D0224, 0, 0);
}

uint64_t sub_23C0D0224()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v2 = sub_23C0DA34C();
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_23C0D033C;
  v4 = v0[63];
  v5 = v0[64];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_23C0D033C()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_23C0D070C;
  }

  else
  {
    v2 = sub_23C0D0450;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C0D046C()
{
  v1 = v0[63];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[69] = Strong;
  if (!Strong)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[65] + 8))(v0[66], v0[64]);

LABEL_7:
    sub_23C0DAAD8(v0[63], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v7 = sub_23C0E9830();
  __swift_project_value_buffer(v7, qword_27E1EF4F8);
  v8 = sub_23C0E9820();
  v9 = sub_23C0E9C90();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23C0B2000, v8, v9, " .AvailableInputDevicesDidChange received", v10, 2u);
    MEMORY[0x23EEC78E0](v10, -1, -1);
  }

  v11 = *(v4 + 16);
  v0[70] = v11;
  v0[71] = swift_allocObject();
  swift_weakInit();
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0D0798, v11, 0);
}

uint64_t sub_23C0D070C()
{
  *(v0 + 424) = *(v0 + 544);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE998, &qword_23C0EAF08);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_23C0D0798()
{
  v22 = v0;
  v1 = v0[70];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {

    v3 = sub_23C0E6074(0xD00000000000001FLL, 0x800000023C0ED510);
    if (v4)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v3, (v0 + 2));

      sub_23C0B7660((v0 + 2), (v0 + 27));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v5 = v0[55];
        v0[78] = v5;

        v6 = swift_task_alloc();
        v0[79] = v6;
        *v6 = v0;
        v6[1] = sub_23C0D1220;
        v7 = MEMORY[0x277D84F78] + 8;
        v8 = v5;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  v9 = v0[71];
  v10 = v0[62];
  v11 = v0[59];
  v12 = v0[60];
  v13 = v0[58];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_beginAccess();
  sub_23C0E2190(v20, 0xD00000000000001FLL, 0x800000023C0ED510);
  swift_endAccess();
  (*(v12 + 16))(v13, v10, v11);
  v14 = *(v12 + 56);
  v14(v13, 0, 1, v11);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23C0EAFD0;
  v15[5] = v9;

  v16 = sub_23C0DE678(0, 0, v13, &unk_23C0EAFD8, v15);
  v0[72] = v16;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v0[11] = &off_284EE15C0;
  v0[7] = v16;
  swift_beginAccess();
  swift_retain_n();
  sub_23C0E2190((v0 + 7), 0xD00000000000001FLL, 0x800000023C0ED510);
  swift_endAccess();
  v14(v13, 1, 1, v11);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = 0xD00000000000001FLL;
  v18[7] = 0x800000023C0ED510;

  sub_23C0DE678(0, 0, v13, &unk_23C0EAFE0, v18);

  v6 = swift_task_alloc();
  v0[73] = v6;
  *v6 = v0;
  v6[1] = sub_23C0D0BA4;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = v16;
LABEL_8:

  return MEMORY[0x282200460](v6, v8, v7);
}

uint64_t sub_23C0D0BA4()
{
  v1 = *(*v0 + 560);

  return MEMORY[0x2822009F8](sub_23C0D0CB4, v1, 0);
}

uint64_t sub_23C0D0CB4()
{

  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  v4 = *(v3 + 8);
  v0[74] = v4;
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);

  return MEMORY[0x2822009F8](sub_23C0D0D54, 0, 0);
}

uint64_t sub_23C0D0D54()
{
  v1 = *(v0[69] + 16);
  v0[76] = v1;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v0[77] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0D0E18, v1, 0);
}

uint64_t sub_23C0D0E18()
{
  v22 = v0;
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {

    v3 = sub_23C0E6074(0xD000000000000027, 0x800000023C0ED5D0);
    if (v4)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v3, (v0 + 12));

      sub_23C0B7660((v0 + 12), (v0 + 22));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v5 = v0[54];
        v0[82] = v5;

        v6 = swift_task_alloc();
        v0[83] = v6;
        *v6 = v0;
        v6[1] = sub_23C0D1658;
        v7 = MEMORY[0x277D84F78] + 8;
        v8 = v5;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    }

    else
    {
    }
  }

  v9 = v0[77];
  v11 = v0[60];
  v10 = v0[61];
  v12 = v0[58];
  v13 = v0[59];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_beginAccess();
  sub_23C0E2190(v20, 0xD000000000000027, 0x800000023C0ED5D0);
  swift_endAccess();
  (*(v11 + 16))(v12, v10, v13);
  v14 = *(v11 + 56);
  v14(v12, 0, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23C0EAFE8;
  v15[5] = v9;

  v16 = sub_23C0DE678(0, 0, v12, &unk_23C0EAFF0, v15);
  v0[80] = v16;
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v0[21] = &off_284EE15C0;
  v0[17] = v16;
  swift_beginAccess();
  swift_retain_n();
  sub_23C0E2190((v0 + 17), 0xD000000000000027, 0x800000023C0ED5D0);
  swift_endAccess();
  v14(v12, 1, 1, v13);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = 0xD000000000000027;
  v18[7] = 0x800000023C0ED5D0;

  sub_23C0DE678(0, 0, v12, &unk_23C0EAFF8, v18);

  v6 = swift_task_alloc();
  v0[81] = v6;
  *v6 = v0;
  v6[1] = sub_23C0D13F0;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = v16;
LABEL_8:

  return MEMORY[0x282200460](v6, v8, v7);
}

uint64_t sub_23C0D1220()
{
  v1 = *(*v0 + 560);

  return MEMORY[0x2822009F8](sub_23C0D134C, v1, 0);
}

uint64_t sub_23C0D134C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  v4 = *(v3 + 8);
  v0[74] = v4;
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);

  return MEMORY[0x2822009F8](sub_23C0D0D54, 0, 0);
}

uint64_t sub_23C0D13F0()
{
  v1 = *(*v0 + 608);

  return MEMORY[0x2822009F8](sub_23C0D1500, v1, 0);
}

uint64_t sub_23C0D1500()
{

  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x2822009F8](sub_23C0D158C, 0, 0);
}

uint64_t sub_23C0D158C()
{
  v1 = v0[63];

  sub_23C0DAAD8(v1, &qword_27E1EE988, &qword_23C0EAF00);
  v2 = sub_23C0DA34C();
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_23C0D033C;
  v4 = v0[63];
  v5 = v0[64];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_23C0D1658()
{
  v1 = *(*v0 + 608);

  return MEMORY[0x2822009F8](sub_23C0D1784, v1, 0);
}

uint64_t sub_23C0D1784()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x2822009F8](sub_23C0D158C, 0, 0);
}

uint64_t sub_23C0D1814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v5 = sub_23C0E9BD0();
  v4[55] = v5;
  v4[56] = *(v5 - 8);
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00);
  v4[58] = swift_task_alloc();
  v6 = sub_23C0E9CB0();
  v4[59] = v6;
  v4[60] = *(v6 - 8);
  v4[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D19C4, 0, 0);
}

uint64_t sub_23C0D19C4()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v2 = sub_23C0DA34C();
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_23C0D1ADC;
  v4 = v0[58];
  v5 = v0[59];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_23C0D1ADC()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_23C0D1F38;
  }

  else
  {
    v2 = sub_23C0D1BF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}