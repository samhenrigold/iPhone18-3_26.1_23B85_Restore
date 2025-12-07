uint64_t sub_25F1E1864(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_25F30430C();
      swift_allocObject();
      sub_25F3042DC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25F3044FC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_25F1E1904(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25F30430C();
  swift_allocObject();
  result = sub_25F3042BC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25F3044FC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25F1E1980(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25F30430C();
  swift_allocObject();
  result = sub_25F3042BC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25F1E1A04(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53DC0, &qword_25F30A428);
  v10 = sub_25F1E1AB4();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25F1E15A8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_25F1E1AB4()
{
  result = qword_27FD53DC8;
  if (!qword_27FD53DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD53DC0, &qword_25F30A428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53DC8);
  }

  return result;
}

uint64_t sub_25F1E1B18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53DD8, &qword_25F30A438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_25F1E1B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25F1E163C(sub_25F1E1BE8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_25F1E1C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + *(a1 + 20);
  v7 = *(v5 + *(type metadata accessor for CrashReport(0) + 20));

  MEMORY[0x25F8D7130](0x6465687361726320, a3);
  return v7;
}

void sub_25F1E1C9C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t type metadata accessor for CrashReportError.GenericCrashError(uint64_t a1)
{
  result = qword_27FD53DE0;
  if (!qword_27FD53DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F1E1D24(uint64_t a1)
{
  sub_25F1E1DA8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CrashReport(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F1E1DA8()
{
  if (!qword_27FD53DF0)
  {
    v0 = sub_25F305C1C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD53DF0);
    }
  }
}

uint64_t sub_25F1E1E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53DF8, &unk_25F30A470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F1E1E6C()
{
  result = qword_27FD53E00;
  if (!qword_27FD53E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD53E00);
  }

  return result;
}

void NSTask.standardOutputPipe.setter(void *a1)
{
  [v1 setStandardOutput_];
}

void (*NSTask.standardOutputPipe.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = NSTask.standardOutputPipe.getter();
  return sub_25F1E1F48;
}

void sub_25F1E1F48(id *a1)
{
  v1 = *a1;
  [a1[1] setStandardOutput_];
}

uint64_t sub_25F1E1F9C(SEL *a1)
{
  if ([v1 *a1])
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_25F1E1E6C();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_25F1E1E04(v6);
    return 0;
  }
}

void NSTask.standardErrorPipe.setter(void *a1)
{
  [v1 setStandardError_];
}

void (*NSTask.standardErrorPipe.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = NSTask.standardErrorPipe.getter();
  return sub_25F1E20DC;
}

void sub_25F1E20DC(id *a1)
{
  v1 = *a1;
  [a1[1] setStandardError_];
}

uint64_t NSTask.makeStream(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E08, &qword_25F30B780);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  result = [v2 isRunning];
  if (result)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    *(&v9 - 2) = v2;
    *(&v9 - 1) = a1;
    (*(v5 + 104))(v7, *MEMORY[0x277D85778], v4);
    return sub_25F30553C();
  }

  return result;
}

void sub_25F1E2280(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCAC10]) init];
  v5 = a2;
  v6 = v7;
  swift_setAtReferenceWritableKeyPath();

  sub_25F1E34D0(v6, a1);
}

uint64_t NSTask.makeCombinedStream()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E08, &qword_25F30B780);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  result = [v0 isRunning];
  if (result)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    *(&v6 - 2) = v0;
    (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
    return sub_25F30553C();
  }

  return result;
}

void sub_25F1E2468(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCAC10]) init];
  [a2 setStandardOutput_];
  [a2 setStandardError_];
  sub_25F1E34D0(v4, a1);
}

uint64_t sub_25F1E2500(void *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53E30, &unk_25F30A580);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = sub_25F30455C();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 availableData];
  v13 = sub_25F30453C();
  v15 = v14;

  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2 || *(v13 + 16) == *(v13 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v16)
  {
    if (v13 == v13 >> 32)
    {
      goto LABEL_9;
    }

LABEL_7:
    v21 = v9;
    goto LABEL_12;
  }

  if ((v15 & 0xFF000000000000) != 0)
  {
    v21 = v9;
LABEL_12:
    sub_25F1B70AC(v13, v15);
    sub_25F30456C();
    for (i = sub_25F30454C(); (i & 0x100) == 0; i = sub_25F30454C())
    {
      v23 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E28, &qword_25F30A578);
      sub_25F3054BC();
      (*(v6 + 8))(v8, v5);
    }

    (*(v22 + 8))(v11, v21);
    return sub_25F1D4BB0(v13, v15);
  }

LABEL_9:
  v17 = [a3 fileHandleForReading];
  [v17 setReadabilityHandler_];
  _Block_release(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E28, &qword_25F30A578);
  sub_25F3054CC();

  return sub_25F1D4BB0(v13, v15);
}

uint64_t NSTask.run(interruptible:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  return MEMORY[0x2822009F8](sub_25F1E2830, 0, 0);
}

uint64_t sub_25F1E2830()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_25F1E2944;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v5, &unk_25F30A490, v3, sub_25F1E3224, v4, 0, 0, v6);
}

uint64_t sub_25F1E2944()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_25F1E2A80;
  }

  else
  {

    v2 = sub_25F1E2A68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F1E2A80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F1E2AEC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 48) = a3;
  *(v3 + 16) = a2;
  return MEMORY[0x2822009F8](sub_25F1E2B10, 0, 0);
}

uint64_t sub_25F1E2B10()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_25F1E2C0C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000025F317B20, sub_25F1E3440, v3, v5);
}

uint64_t sub_25F1E2C0C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_25F1E2DB4;
  }

  else
  {

    v2 = sub_25F1E2D28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F1E2D28()
{
  if (*(v0 + 48) == 1 && (v1 = *(v0 + 40), sub_25F3055AC(), v1))
  {
    v2 = *(v0 + 8);
  }

  else
  {
    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_25F1E2DB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F1E2E18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F1AFDB0;

  return sub_25F1E2AEC(a1, v4, v5);
}

uint64_t sub_25F1E2EC8(uint64_t a1, void *a2, char a3)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E20, &qword_25F30A570);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - v8;
  (*(v7 + 16))(&aBlock[-1] - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(&v11[v10], v9, v6);
  aBlock[4] = sub_25F1E344C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1E3780;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  [a2 setTerminationHandler_];
  _Block_release(v12);
  if (a3)
  {
    sub_25F3055AC();
  }

  aBlock[0] = 0;
  if ([a2 launchAndReturnError_])
  {
    v13 = aBlock[0];
    result = sub_25F30559C();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v15 = aBlock[0];
    v16 = sub_25F3043FC();

    swift_willThrow();
    [a2 setTerminationHandler_];
    aBlock[0] = v16;
    sub_25F30540C();
    result = sub_25F30559C();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  if (a3)
  {
    result = [a2 isRunning];
    if (result)
    {
      return [a2 terminate];
    }
  }

  return result;
}

void sub_25F1E315C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_25F1E31C4(uint64_t result, id a2)
{
  if (result)
  {
    result = [a2 isRunning];
    if (result)
    {

      return [a2 terminate];
    }
  }

  return result;
}

void sub_25F1E3224()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *(v0 + 24);
    if ([v1 isRunning])
    {

      [v1 terminate];
    }
  }
}

Swift::Bool __swiftcall NSTask.hasNonZeroExit()()
{
  result = [v0 isRunning];
  if (!result)
  {
    return [v0 terminationReason] != 1 || objc_msgSend(v0, sel_terminationStatus) != 0;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSTask.checkNonZeroExit()()
{
  if ([v0 isRunning])
  {
    __break(1u);
  }

  else if ([v0 terminationReason] != 1 || objc_msgSend(v0, sel_terminationStatus))
  {
    sub_25F1E3384();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_25F1E3384()
{
  result = qword_27FD53E10;
  if (!qword_27FD53E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53E10);
  }

  return result;
}

unint64_t sub_25F1E33EC()
{
  result = qword_27FD53E18;
  if (!qword_27FD53E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53E18);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F1E34D0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E28, &qword_25F30A578);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [a1 fileHandleForReading];
  (*(v5 + 16))(v8, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_25F1E36D0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1E3780;
  aBlock[3] = &block_descriptor_18;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  sub_25F1D2078(sub_25F1E36D0, v11);

  [v9 setReadabilityHandler_];

  _Block_release(v12);
}

uint64_t sub_25F1E36D0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E28, &qword_25F30A578) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25F1E2500(a1, v1 + v4, v5);
}

uint64_t MutableBox.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MutableBox.value.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t MutableBox.clone()(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 88);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  return MutableBox.__allocating_init(_:)();
}

uint64_t _s20PreviewsFoundationOS10MutableBoxCyACyxGxcfC_0(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t ImmutableBox.clone()(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v6 - v4, v1 + *(v2 + 88));
  return MutableBox.__allocating_init(_:)();
}

uint64_t _s20PreviewsFoundationOS10MutableBoxCfD_0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Lens.modify(in:_:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(a5 + 24))(a1, a4, a5);
  a2(v12);
  (*(a5 + 32))(v12, a1, a4, a5);
  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_25F1E4094(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 136) - 8) + 32))(v2 + *(*v2 + 152), a1);
  return v2;
}

uint64_t sub_25F1E4268()
{
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 152));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t AnyLens.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AnyLens.init<A>(_:)(a1, a2, a3);
  return v6;
}

uint64_t *AnyLens.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = *(v9 + 16);
  v13(&v18 - v14, a1, a2);
  if (swift_dynamicCast())
  {
    v15 = v18;
    (*(v9 + 8))(a1, a2);
    v16 = *(v15 + 16);
  }

  else
  {
    v18 = *(v8 + 80);
    v19 = a2;
    v20 = a3;
    type metadata accessor for AnyLens.Box(0, &v18);
    v13(v12, a1, a2);
    v16 = sub_25F1E4094(v12);
    (*(v9 + 8))(a1, a2);
  }

  v4[2] = v16;
  return v4;
}

uint64_t AnyLens.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t WritableKeyPath.set(_:in:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - v2);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_25F1E48CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CancelationToken<>.cancel<A>(onInvalidationOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  (*(a3 + 16))(a2, a3);
  sub_25F1E58B0(v4, v5, v6);
}

{
  v4 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v4;
  v7 = *(v3 + 32);
  (*(a3 + 16))(a2, a3);
  sub_25F1E5A34(v6);
}

double sub_25F1E49D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25F21FC78(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F21E05C();
      v9 = v11;
    }

    sub_25F1E6CBC(*(v9 + 56) + 32 * v7, a2);
    sub_25F1BB048(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_25F3081D0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

double sub_25F1E4A70@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_25F21935C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F21E334();
      v9 = v11;
    }

    sub_25F1BF670(*(v9 + 48) + 40 * v7);
    sub_25F1B707C((*(v9 + 56) + 32 * v7), a2);
    sub_25F1BB39C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_25F1E4B54(uint64_t a1, uint64_t a2)
{
  sub_25F1B7174(a1, v6, &qword_27FD54160, &qword_25F30A9A0);
  if (v6[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v6[1] == 1;
  }

  if (v4)
  {
    sub_25F1E6C54(v6);
    sub_25F1E5418(a2, v7);
    sub_25F1E6C54(a1);
    return sub_25F1E6C54(v7);
  }

  else
  {
    sub_25F1E6CBC(v6, v7);
    sub_25F1E5244(v7, a2, v6);
    sub_25F1E6C54(a1);
    sub_25F1E6C54(v6);
    return sub_25F1E6CF4(v7);
  }
}

uint64_t sub_25F1E4C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t, uint64_t, uint64_t)))
{
  if (!a1)
  {
    v15 = a6(a3, a2, a3, a4);
    goto LABEL_5;
  }

  v11 = a4(a1, a2, a3);
  if (v11)
  {
    v13 = v11;
    v14 = v12;
    a5(a1, a2);
    v15 = v13;
    v16 = v14;
LABEL_5:

    return a5(v15, v16);
  }

  v18 = *(v6 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_25F2EFED4(0, *(v18 + 2) + 1, 1, v18);
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_25F2EFED4((v19 > 1), v20 + 1, 1, v18);
  }

  result = a5(a1, a2);
  *(v18 + 2) = v20 + 1;
  *&v18[8 * v20 + 32] = a3;
  *(v6 + 8) = v18;
  return result;
}

uint64_t sub_25F1E4DAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_25F1E6B9C();
  v6 = MEMORY[0x25F8D6C60](v4, &type metadata for Identifier, &type metadata for IsolatedInvalidationObserverBox, v5);
  v7 = sub_25F2EFED4(0, v4, 0, MEMORY[0x277D84F90]);
  v8 = *(a1 + 16);
  if (!v8)
  {

LABEL_20:
    *a2 = v6;
    a2[1] = v7;
    return result;
  }

  v28 = a2;
  v9 = 0;
  v10 = a1 + 32;
  while (v9 < *(a1 + 16))
  {
    sub_25F1B7174(v10, &v30, &qword_27FD54168, &qword_25F30A9A8);
    v11 = v30;
    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = sub_25F2EFED4((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    *&v7[8 * v13 + 32] = v11;
    v14 = v30;
    sub_25F1E6CBC(&v31, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_25F21FC78(v14);
    v18 = v6[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_22;
    }

    v22 = v17;
    if (v6[3] < v21)
    {
      sub_25F21AF28(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_25F21FC78(v14);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_24;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v26 = v16;
    sub_25F21E05C();
    v16 = v26;
    if (v22)
    {
LABEL_3:
      sub_25F1E72A8(v29, v6[7] + 32 * v16);
      goto LABEL_4;
    }

LABEL_14:
    v6[(v16 >> 6) + 8] |= 1 << v16;
    *(v6[6] + 8 * v16) = v14;
    sub_25F1E6CBC(v29, v6[7] + 32 * v16);
    v24 = v6[2];
    v20 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v20)
    {
      goto LABEL_23;
    }

    v6[2] = v25;
LABEL_4:
    ++v9;
    v10 += 40;
    if (v8 == v9)
    {

      a2 = v28;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t sub_25F1E5008@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = sub_25F1E6B9C();
  v5 = MEMORY[0x25F8D6C60](v3, &type metadata for Identifier, &type metadata for ConcurrentInvalidationObserverBox, v4);
  v6 = sub_25F2EFED4(0, v3, 0, MEMORY[0x277D84F90]);
  v28 = *(a1 + 16);
  if (!v28)
  {
LABEL_18:

    *a2 = v5;
    a2[1] = v6;
    return result;
  }

  v7 = 0;
  v8 = (a1 + 40);
  while (v7 < *(a1 + 16))
  {
    v10 = *(v8 - 1);
    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    v29 = *v8;
    v13 = *(v8 + 1);

    if (v12 >= v11 >> 1)
    {
      v6 = sub_25F2EFED4((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    *&v6[8 * v12 + 32] = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_25F21FC78(v10);
    v17 = v5[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_20;
    }

    v21 = v16;
    if (v5[3] < v20)
    {
      sub_25F21A760(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_25F21FC78(v10);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      if (v21)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v25 = v15;
    sub_25F21DC04();
    v15 = v25;
    if (v21)
    {
LABEL_3:
      v9 = (v5[7] + 16 * v15);
      *v9 = v29;
      v9[1] = v13;

      goto LABEL_4;
    }

LABEL_14:
    v5[(v15 >> 6) + 8] |= 1 << v15;
    *(v5[6] + 8 * v15) = v10;
    *(v5[7] + 16 * v15) = v29;
    v23 = v5[2];
    v19 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v5[2] = v24;
LABEL_4:
    ++v7;
    v8 = (v8 + 24);
    if (v28 == v7)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

double sub_25F1E5244@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25F1E6D24(a1, v11);
  sub_25F1E6E80(v11, a2, v12);
  if (v12[0])
  {
    v6 = 0;
  }

  else
  {
    v6 = v12[1] == 1;
  }

  if (v6)
  {
    sub_25F1E6C54(v12);
    v8 = *(v3 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2EFED4(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_25F2EFED4((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    *&v8[8 * v10 + 32] = a2;
    *(v3 + 8) = v8;
    result = 0.0;
    *a3 = xmmword_25F3081D0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    sub_25F1E6CBC(v12, a3);
  }

  return result;
}

uint64_t sub_25F1E533C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F21FC78(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25F21DC04();
    v8 = v16;
  }

  v9 = v6;
  v10 = *(*(v8 + 56) + 16 * v6);
  sub_25F1BAB94(v9, v8);
  *v2 = v8;
  v11 = v2[1];
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return 0;
  }

  v13 = 0;
  v14 = v11 + 32;
  while (*(v14 + 8 * v13) != a1)
  {
    if (v12 == ++v13)
    {
      goto LABEL_8;
    }
  }

  sub_25F2C1C8C(v13, &v16);
  return v10;
}

uint64_t sub_25F1E5418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25F1E49D4(a1, v11);
  v5 = v11;
  if (v11[0])
  {
    v6 = 0;
  }

  else
  {
    v6 = v11[1] == 1;
  }

  if (v6)
  {
    goto LABEL_10;
  }

  v5 = sub_25F1E6CBC(v11, v12);
  v7 = *(v2 + 8);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    result = sub_25F1E6C54(v5);
    *a2 = xmmword_25F3081D0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    return result;
  }

  v5 = 0;
  v9 = v7 + 32;
  while (*(v9 + 8 * v5) != a1)
  {
    if (v8 == ++v5)
    {
      goto LABEL_9;
    }
  }

  sub_25F2C1C8C(v5, v11);
  return sub_25F1E6CBC(v12, a2);
}

uint64_t sub_25F1E54CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F21FC78(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25F21F6D8();
    v8 = v16;
  }

  v9 = v6;
  v10 = *(*(v8 + 56) + 16 * v6);
  sub_25F1BAB94(v9, v8);
  *v2 = v8;
  v11 = v2[1];
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return 0;
  }

  v13 = 0;
  v14 = v11 + 32;
  while (*(v14 + 8 * v13) != a1)
  {
    if (v12 == ++v13)
    {
      goto LABEL_8;
    }
  }

  sub_25F2C1C8C(v13, &v16);
  return v10;
}

uint64_t sub_25F1E55A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = sub_25F305C1C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v9 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v10 = *(v9 + 2);
  *(v9 + 2) = v10 + 1;
  os_unfair_lock_unlock(v9 + 6);
  v11 = *(v5 - 8);
  (*(v11 + 16))(v8, a1, v5);
  (*(v11 + 56))(v8, 0, 1, v5);
  v16 = v10;
  v12 = sub_25F1E6B9C();
  v13 = type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, v5, v12);
  result = OrderedDictionary.subscript.setter(v8, &v16, v13);
  *a3 = v10;
  return result;
}

uint64_t sub_25F1E5724(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_25F305C1C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = *a1;
  (*(*(v3 - 8) + 56))(&v11 - v5, 1, 1, v3);
  v12 = v7;
  v8 = sub_25F1E6B9C();
  v9 = type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, v3, v8);
  return OrderedDictionary.subscript.setter(v6, &v12, v9);
}

uint64_t sub_25F1E5808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_getTupleTypeMetadata2();
  v8 = sub_25F3052DC();
  v9 = sub_25F1E6B9C();
  OrderedDictionary.init(dictionaryLiteral:)(v8, &type metadata for Identifier, a1, v9, a4);
  type metadata accessor for CancelationToken(0, a2, a3, v10);
  result = sub_25F3052DC();
  a4[2] = result;
  return result;
}

void sub_25F1E58B0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v6 = *(*(v3 + 32) + 152);
  os_unfair_lock_lock(v6 + 21);
  sub_25F1E72E8(&v6[4], &v14);
  os_unfair_lock_unlock(v6 + 21);
  if (v15 == 1)
  {
    v8 = v14;
    v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
    v15 = 130;
    v18 = "manage(_:)";
    v19 = 10;
    v16 = 2;
    v17 = xmmword_25F30A6E0;
    v20 = 2;
    v9 = *(a3 + 152);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock(v9 + 19);
    sub_25F1D3EBC(&v9[4], v10);
    os_unfair_lock_unlock(v9 + 19);
    if ((v10[0] & 1) == 0)
    {
      a1();
    }

    sub_25F1A4678(v8, 1);
  }
}

void sub_25F1E5A34(__int128 *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  v2 = *(*(v1 + 32) + 152);
  os_unfair_lock_lock(v2 + 21);
  sub_25F1E7350(&v2[4], &v7);
  os_unfair_lock_unlock(v2 + 21);
  if (v8 == 1)
  {
    v3 = v7;
    v14 = v4;
    v15 = v5;
    v16 = v6;
    v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
    v8 = 130;
    v9 = 2;
    v10 = xmmword_25F30A6E0;
    v11 = "manage(_:)";
    v12 = 10;
    v13 = 2;
    sub_25F29FB04();
    sub_25F1A4678(v3, 1);
  }
}

uint64_t IsolatedInvalidationHandle.executor.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*IsolatedInvalidationHandle.executor.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_25F1E5C5C;
}

void sub_25F1E5C5C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *IsolatedInvalidationHandle.__allocating_init(dsoHandle:file:line:column:function:on:name:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = swift_allocObject();
  v15[6] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v15[6] = a11;
  swift_unknownObjectWeakAssign();
  v15[2] = a12;
  v15[3] = a13;
  v16 = MEMORY[0x277D84F90];
  sub_25F1E4DAC(MEMORY[0x277D84F90], v27);
  v17 = v27[0];
  v18 = v27[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540B8, &unk_25F30A6F0);
  v19 = swift_allocObject();
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C0, &qword_25F30DF50);
  v20 = swift_allocObject();
  *(v20 + 84) = 0;

  swift_unknownObjectRelease();
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v16;
  *(v20 + 81) = v28;

  *(v19 + 152) = v20;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = a8;
  *(v19 + 72) = a9;
  *(v19 + 80) = 0;
  *(v19 + 88) = 0;
  *(v19 + 96) = xmmword_25F3077E0;
  *(v19 + 112) = 2;
  *(v19 + 120) = 0xD00000000000001CLL;
  *(v19 + 128) = 0x800000025F317BC0;
  *(v19 + 136) = 0x6164696C61766E69;
  *(v19 + 144) = 0xEB00000000646574;
  v15[4] = v19;
  return v15;
}

void *IsolatedInvalidationHandle.init(dsoHandle:file:line:column:function:on:name:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13[6] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v13[6] = a11;
  swift_unknownObjectWeakAssign();
  v13[2] = a12;
  v13[3] = a13;
  v16 = MEMORY[0x277D84F90];
  sub_25F1E4DAC(MEMORY[0x277D84F90], v27);
  v17 = v27[0];
  v18 = v27[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540B8, &unk_25F30A6F0);
  v19 = swift_allocObject();
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C0, &qword_25F30DF50);
  v20 = swift_allocObject();
  *(v20 + 84) = 0;

  swift_unknownObjectRelease();
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v16;
  *(v20 + 81) = v28;

  *(v19 + 152) = v20;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = a8;
  *(v19 + 72) = a9;
  *(v19 + 80) = 0;
  *(v19 + 88) = 0;
  *(v19 + 96) = xmmword_25F3077E0;
  *(v19 + 112) = 2;
  *(v19 + 120) = 0xD00000000000001CLL;
  *(v19 + 128) = 0x800000025F317BC0;
  *(v19 + 136) = 0x6164696C61766E69;
  *(v19 + 144) = 0xEB00000000646574;
  v13[4] = v19;
  return v13;
}

uint64_t sub_25F1E609C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = MEMORY[0x28223BE20](result);
    v4 = *(v3 + 152);
    MEMORY[0x28223BE20](v2);
    os_unfair_lock_lock(v4 + 21);
    sub_25F1E6C38(&v4[4], &v5);
    os_unfair_lock_unlock(v4 + 21);

    return sub_25F1A4678(v5, v6);
  }

  return result;
}

uint64_t IsolatedInvalidationHandle.deinit()
{

  sub_25F1E61D0(v0 + 40);
  return v0;
}

uint64_t IsolatedInvalidationHandle.__deallocating_deinit()
{

  sub_25F1E61D0(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void *ConcurrentInvalidationHandle.__allocating_init(dsoHandle:file:line:column:function:name:failureMode:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v15 = swift_allocObject();
  v16 = *a12;
  v17 = a12[1];
  v18 = *(a12 + 16);
  v15[2] = a10;
  v15[3] = a11;
  v19 = MEMORY[0x277D84F90];
  sub_25F1E5008(MEMORY[0x277D84F90], &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C8, &qword_25F30A700);
  v20 = swift_allocObject();
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD540D0, &qword_25F30A708);
  v21 = swift_allocObject();
  *(v21 + 84) = 0;
  *(v21 + 16) = v27;
  *(v21 + 32) = v19;
  *(v21 + 81) = v28;
  *(v20 + 152) = v21;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  *(v20 + 64) = a8;
  *(v20 + 72) = a9;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0;
  *(v20 + 96) = v16;
  *(v20 + 104) = v17;
  *(v20 + 112) = v18;
  *(v20 + 120) = 0xD00000000000001ELL;
  *(v20 + 128) = 0x800000025F317BE0;
  *(v20 + 136) = 0x6164696C61766E69;
  *(v20 + 144) = 0xEB00000000646574;
  v15[4] = v20;
  return v15;
}

void *ConcurrentInvalidationHandle.init(dsoHandle:file:line:column:function:name:failureMode:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v17 = *a12;
  v18 = a12[1];
  v19 = *(a12 + 16);
  v12[2] = a10;
  v12[3] = a11;
  sub_25F1E5008(MEMORY[0x277D84F90], &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C8, &qword_25F30A700);
  v20 = swift_allocObject();
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD540D0, &qword_25F30A708);
  v21 = swift_allocObject();
  *(v21 + 84) = 0;
  *(v21 + 16) = v26;
  *(v21 + 32) = MEMORY[0x277D84F90];
  *(v21 + 81) = v27;
  *(v20 + 152) = v21;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  *(v20 + 64) = a8;
  *(v20 + 72) = a9;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0;
  *(v20 + 96) = v17;
  *(v20 + 104) = v18;
  *(v20 + 112) = v19;
  *(v20 + 120) = 0xD00000000000001ELL;
  *(v20 + 128) = 0x800000025F317BE0;
  *(v20 + 136) = 0x6164696C61766E69;
  *(v20 + 144) = 0xEB00000000646574;
  v12[4] = v20;
  return v12;
}

uint64_t ConcurrentInvalidationHandle.__allocating_init(name:failureMode:callsite:)(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v8 = swift_allocObject();
  ConcurrentInvalidationHandle.init(name:failureMode:callsite:)(a1, a2, a3, a4);
  return v8;
}

void *ConcurrentInvalidationHandle.init(name:failureMode:callsite:)(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v4[2] = a1;
  v4[3] = a2;
  v9 = MEMORY[0x277D84F90];
  sub_25F1E5008(MEMORY[0x277D84F90], &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C8, &qword_25F30A700);
  v10 = swift_allocObject();
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD540D0, &qword_25F30A708);
  v11 = swift_allocObject();
  *(v11 + 84) = 0;
  *(v11 + 16) = v14;
  *(v11 + 32) = v9;
  *(v11 + 81) = v15;
  *(v10 + 152) = v11;
  v12 = a4[1];
  *(v10 + 16) = *a4;
  *(v10 + 32) = v12;
  *(v10 + 48) = a4[2];
  *(v10 + 57) = *(a4 + 41);
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = v6;
  *(v10 + 104) = v7;
  *(v10 + 112) = v8;
  *(v10 + 120) = 0xD00000000000001ELL;
  *(v10 + 128) = 0x800000025F317BE0;
  *(v10 + 136) = 0x6164696C61766E69;
  *(v10 + 144) = 0xEB00000000646574;
  v4[4] = v10;
  return v4;
}

uint64_t sub_25F1E6724(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = MEMORY[0x28223BE20](result);
    v4 = *(v3 + 152);
    MEMORY[0x28223BE20](v2);
    os_unfair_lock_lock(v4 + 21);
    sub_25F1E7368(&v4[4], &v5);
    os_unfair_lock_unlock(v4 + 21);

    return sub_25F1A4678(v5, v6);
  }

  return result;
}

uint64_t ConcurrentInvalidationHandle.deinit()
{

  return v0;
}

uint64_t ConcurrentInvalidationHandle.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_25F1E6A0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F1E6A58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F1E6AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F1E6AFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25F1E6B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F1E6B9C()
{
  result = qword_27FD54158;
  if (!qword_27FD54158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54158);
  }

  return result;
}

uint64_t sub_25F1E6BF0()
{
  v1 = *(v0 + 16);
  v3 = xmmword_25F3081D0;
  v4 = 0;
  v5 = 0;
  return sub_25F1E4B54(&v3, v1);
}

uint64_t sub_25F1E6C54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54160, &qword_25F30A9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1E6D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_25F21FC78(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_25F21A760(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_25F21FC78(a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_25F30665C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_25F21DC04();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_25F211774(v11, a3, a1, a2, v10);
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = (v10[7] + 16 * v11);
  result = *v18;
  *v18 = a1;
  v18[1] = a2;
LABEL_11:
  *v5 = v10;
  return result;
}

uint64_t sub_25F1E6E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_25F21FC78(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_25F21AF28(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_25F21FC78(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_25F30665C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_25F21E05C();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    result = sub_25F211824(v11, a2, a1, v10);
    *a3 = xmmword_25F3081D0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = 32 * v11;
  sub_25F1E6CBC(v10[7] + 32 * v11, a3);
  result = sub_25F1E6CBC(a1, v10[7] + v18);
LABEL_11:
  *v5 = v10;
  return result;
}

uint64_t sub_25F1E6FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_25F21FC78(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_25F21D638(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_25F21FC78(a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_25F30665C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_25F21F6D8();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_25F211774(v11, a3, a1, a2, v10);
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = (v10[7] + 16 * v11);
  result = *v18;
  *v18 = a1;
  v18[1] = a2;
LABEL_11:
  *v5 = v10;
  return result;
}

uint64_t sub_25F1E70E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_25F2EFFD8(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_25F2EFFD8((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v9 = &v6[3 * v8];
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v5;
  *(a1 + 16) = v6;
}

uint64_t sub_25F1E71B4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_25F2F05C4(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_25F2F05C4((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v11 = &v8[5 * v10];
  v11[4] = v3;
  v11[5] = v4;
  v11[6] = v6;
  v11[7] = v5;
  v11[8] = v7;
  *(a1 + 16) = v8;
  swift_unknownObjectRetain();
}

uint64_t sub_25F1E7304()
{
  v1 = sub_25F1E533C(*(v0 + 16));

  return sub_25F1AC3AC(v1, v2);
}

void *Set.map<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v47 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = v39 - v14;
  v15 = sub_25F305C1C();
  MEMORY[0x28223BE20](v15 - 8);
  v52 = v39 - v16;
  v45 = a5;
  v46 = a7;
  v59 = sub_25F304A3C();
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_25F305E7C();
    result = sub_25F3056AC();
    a3 = v54;
    v40 = v55;
    v18 = v56;
    v19 = v57;
    v20 = v58;
  }

  else
  {
    v21 = -1 << *(a3 + 32);
    v22 = *(a3 + 56);
    v40 = a3 + 56;
    v18 = ~v21;
    v23 = -v21;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v20 = v24 & v22;

    v19 = 0;
  }

  v50 = a3;
  v51 = a4 - 8;
  v39[1] = v18;
  v25 = (v18 + 64) >> 6;
  v43 = (v11 + 8);
  if (a3 < 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v26 = v52;
  if (v20)
  {
    v42 = v20;
    v27 = v20;
    v28 = v19;
LABEL_17:
    v41 = v19;
    v20 = (v27 - 1) & v27;
    v33 = *(a3 + 48);
    v30 = *(a4 - 8);
    v31 = v30;
    (*(v30 + 16))(v52, v33 + *(v30 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), a4);
    while (1)
    {
      (*(v31 + 56))(v26, 0, 1, a4);
      v34 = v53;
      v48(v26);
      (*(v30 + 8))(v26, a4);
      v53 = v34;
      if (v34)
      {
        break;
      }

      v35 = v45;
      sub_25F3056FC();
      v36 = a4;
      v37 = v44;
      sub_25F30568C();
      v38 = v37;
      a4 = v36;
      result = (*v43)(v38, v35);
      v19 = v28;
      a3 = v50;
      if ((v50 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_10:
      v29 = sub_25F305E8C();
      v26 = v52;
      if (!v29)
      {
        goto LABEL_21;
      }

      sub_25F30655C();
      swift_unknownObjectRelease();
      v30 = *(a4 - 8);
      v31 = v30;
      v41 = v19;
      v42 = v20;
      v28 = v19;
    }

    sub_25F1BF034(v50);
  }

  else
  {
    v32 = v19;
    while (1)
    {
      v28 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v28 >= v25)
      {
LABEL_21:
        (*(*(a4 - 8) + 56))(v26, 1, 1, a4);
        sub_25F1BF034(a3);
        return v59;
      }

      v27 = *(v40 + 8 * v28);
      ++v32;
      if (v27)
      {
        v42 = 0;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Set.inserting(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F30539C();

  swift_getWitnessTable();
  return sub_25F30567C();
}

uint64_t static StandardErrorCapture.captureStdErr(toFileName:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v21 = a2;
  v22 = a3;
  v6 = sub_25F30441C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F3044DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = [objc_opt_self() defaultManager];
  v18 = [v17 temporaryDirectory];

  sub_25F30449C();
  v25 = a1;
  v26 = v21;
  (*(v7 + 104))(v9, *MEMORY[0x277CC91D0], v6);
  sub_25F1BF118();
  sub_25F3044CC();
  (*(v7 + 8))(v9, v6);
  v19 = *(v11 + 8);
  v19(v14, v10);
  _s20PreviewsFoundationOS20StandardErrorCaptureO010captureStdE05toURL4file4liney0B00J0V_SSSitFZ_0(v16, v22, v23, v24);
  return (v19)(v16, v10);
}

void sub_25F1E7AF4(uint64_t *a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = a1[1];
  if (v6)
  {
    v7 = *a1;
    if (*a1 != v4 || v6 != v5)
    {
      v9 = a1[3];
      v10 = a1[4];
      v11 = a1[2];
      if ((sub_25F30659C() & 1) == 0)
      {
        if (qword_27FD528B8 != -1)
        {
          swift_once();
        }

        v12 = sub_25F30479C();
        __swift_project_value_buffer(v12, qword_27FD57088);

        v13 = sub_25F30477C();
        v14 = sub_25F305A0C();
        if (os_log_type_enabled(v13, v14))
        {
          v20 = v11;
          v15 = swift_slowAlloc();
          v24 = v10;
          v16 = swift_slowAlloc();
          *&v23 = v16;
          *v15 = 136446722;
          *(v15 + 4) = sub_25F1C53AC(v7, v6, &v23);
          *(v15 + 12) = 2082;
          *(v15 + 14) = sub_25F1C53AC(v20, v9, &v23);
          *(v15 + 22) = 2048;
          *(v15 + 24) = v24;

          _os_log_impl(&dword_25F1A2000, v13, v14, "Already captured stderror to %{public}s from %{public}s:%ld", v15, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25F8D9510](v16, -1, -1);
          MEMORY[0x25F8D9510](v15, -1, -1);
        }

        else
        {
        }
      }
    }

    *a3 = 1;
  }

  else
  {
    v17 = *(a2 + 4);
    v19 = *a2;
    v22 = a2[1];
    v18 = v22;
    v23 = v19;
    *a1 = v4;
    a1[1] = v5;
    *(a1 + 1) = v18;
    a1[4] = v17;
    *a3 = 0;
    sub_25F1E8C70(&v23, v21);
    sub_25F1E8C70(&v22, v21);
  }
}

id sub_25F1E7D34(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25F30446C();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_25F3044DC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_25F3043FC();

    swift_willThrow();
    v9 = sub_25F3044DC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t static StandardErrorCapture.print(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F30462C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD52750 != -1)
  {
    swift_once();
  }

  v8 = qword_27FD54170;
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  v9 = sub_25F3045BC();
  (*(v5 + 8))(v7, v4);
  v10 = [v8 stringFromDate_];

  v11 = sub_25F304E0C();
  v13 = v12;

  v17[0] = v11;
  v17[1] = v13;
  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  MEMORY[0x25F8D7130](a1, a2);
  MEMORY[0x25F8D7130](10, 0xE100000000000000);
  v14 = sub_25F3047CC();
  v15 = sub_25F304EAC();

  fputs((v15 + 32), v14);
}

id sub_25F1E8044()
{
  v0 = sub_25F3046EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_25F3046DC();
  v5 = sub_25F3046CC();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  result = [v4 setFormatOptions_];
  qword_27FD54170 = v4;
  return result;
}

double sub_25F1E8164()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54188, &qword_25F30AA10);
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *(v0 + 44) = 0u;
  qword_27FD54178 = v0;
  return result;
}

BOOL sub_25F1E81AC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_25F30659C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_25F30659C()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

void _s20PreviewsFoundationOS20StandardErrorCaptureO010captureStdE05toURL4file4liney0B00J0V_SSSitFZ_0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_25F30462C();
  v64 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F3044DC();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F304E6C();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v15 = sub_25F3044AC();
  v17 = v16;
  v70 = v15;
  v75[0] = v15;
  v75[1] = v16;
  v75[2] = a2;
  v75[3] = a3;
  v75[4] = a4;
  v18 = qword_27FD52758;

  if (v18 != -1)
  {
    v19 = swift_once();
  }

  v20 = qword_27FD54178;
  MEMORY[0x28223BE20](v19);
  *(&v60 - 2) = v75;
  os_unfair_lock_lock((v20 + 56));
  sub_25F1E8C08((v20 + 16), &v73);
  os_unfair_lock_unlock((v20 + 56));

  if (v73)
  {
  }

  else
  {
    v62 = v8;
    if (qword_27FD528B8 != -1)
    {
      swift_once();
    }

    v21 = sub_25F30479C();
    v22 = __swift_project_value_buffer(v21, qword_27FD57088);

    v23 = sub_25F30477C();
    v24 = sub_25F305A0C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v61 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v73 = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_25F1C53AC(v70, v17, &v73);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_25F1C53AC(a2, a3, &v73);
      *(v26 + 22) = 2048;
      *(v26 + 24) = a4;
      _os_log_impl(&dword_25F1A2000, v23, v24, "Redirecting stderr to %s, from %s:%ld", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v27, -1, -1);
      MEMORY[0x25F8D9510](v26, -1, -1);
    }

    v28 = objc_opt_self();
    v29 = [v28 processInfo];
    v30 = [v29 processName];

    v31 = sub_25F304E0C();
    v33 = v32;

    v34 = [v28 processInfo];
    LODWORD(v61) = [v34 processIdentifier];

    v35 = [objc_opt_self() defaultManager];
    v36 = v71;
    sub_25F3044BC();
    v37 = sub_25F304DDC();

    LOBYTE(v34) = [v35 fileExistsAtPath_];

    v38 = v62;
    if ((v34 & 1) == 0)
    {
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_25F304E4C();
      sub_25F1BF118();
      sub_25F305D4C();
      (*(v65 + 8))(v14, v66);
    }

    sub_25F1E8C24();
    v39 = v67;
    (*(v68 + 16))(v67, v36, v69);
    v40 = sub_25F1E7D34(v39);

    [v40 seekToEndOfFile];
    v41 = [v40 fileDescriptor];
    v42 = [objc_opt_self() fileHandleWithStandardError];
    v43 = [v42 fileDescriptor];

    if (dup2(v41, v43) == -1)
    {

      v56 = MEMORY[0x25F8D6970](v55);
      v57 = sub_25F30477C();
      v58 = sub_25F305A0C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 67109120;
        *(v59 + 4) = v56;
        _os_log_impl(&dword_25F1A2000, v57, v58, "Failed to dup stderr to logHandle: %d", v59, 8u);
        MEMORY[0x25F8D9510](v59, -1, -1);
      }
    }

    else
    {
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_25F305FAC();
      MEMORY[0x25F8D7130](0x202F2F0A0ALL, 0xE500000000000000);
      if (qword_27FD52750 != -1)
      {
        swift_once();
      }

      v44 = qword_27FD54170;
      v45 = v63;
      _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
      v46 = sub_25F3045BC();
      (*(v64 + 8))(v45, v38);
      v47 = [v44 stringFromDate_];

      v48 = sub_25F304E0C();
      v50 = v49;

      MEMORY[0x25F8D7130](v48, v50);

      MEMORY[0x25F8D7130](0xD00000000000001FLL, 0x800000025F317D20);
      MEMORY[0x25F8D7130](v31, v33);

      MEMORY[0x25F8D7130](0x203A646970202CLL, 0xE700000000000000);
      v72 = v61;
      v51 = sub_25F3064DC();
      MEMORY[0x25F8D7130](v51);

      MEMORY[0x25F8D7130](657952, 0xE300000000000000);
      v52 = sub_25F3047CC();
      v53 = sub_25F304EAC();

      fputs((v53 + 32), v52);

      v54 = sub_25F3047CC();
      fflush(v54);
    }
  }
}

unint64_t sub_25F1E8C24()
{
  result = qword_27FD54180;
  if (!qword_27FD54180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD54180);
  }

  return result;
}

uint64_t Future.publisher()()
{
  sub_25F1E8DA8();
  sub_25F30484C();

  sub_25F30485C();
  swift_getWitnessTable();
  v0 = sub_25F30486C();

  return v0;
}

unint64_t sub_25F1E8DA8()
{
  result = qword_27FD54190;
  if (!qword_27FD54190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54190);
  }

  return result;
}

uint64_t sub_25F1E8DFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = a1;
  v6[4] = a2;

  Future.observeFinish(_:)(sub_25F1E9298, v6);
}

uint64_t sub_25F1E8EAC(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t a4)
{
  v25 = a2;
  sub_25F1E8DA8();
  v6 = sub_25F30678C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v24 - v9);
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FutureTermination(0, a4, v14, v15);
  MEMORY[0x28223BE20](v16);
  v18 = (&v24 - v17);
  (*(v19 + 16))(&v24 - v17, a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = *v18;
      *v10 = *v18;
      swift_storeEnumTagMultiPayload();
      v22 = v21;
      v25(v10);
    }

    else
    {
      *v10 = 0;
      swift_storeEnumTagMultiPayload();
      v25(v10);
    }

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v11 + 32))(v13, v18, a4);
    (*(v11 + 16))(v10, v13, a4);
    swift_storeEnumTagMultiPayload();
    v25(v10);
    (*(v7 + 8))(v10, v6);
    return (*(v11 + 8))(v13, a4);
  }
}

uint64_t sub_25F1E91AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F1E91FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25F1E9250(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25F1E9268(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_25F1E92C4()
{
  result = sub_25F1E92F8(0x5054585F5444, 0xE600000000000000);
  byte_27FD54198 = result & 1;
  return result;
}

uint64_t sub_25F1E92F8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 environment];

  v6 = sub_25F304A6C();
  if (*(v6 + 16) && (v7 = sub_25F219234(a1, a2), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];

    v14[0] = v11;
    v14[1] = v10;
    sub_25F1E9530(v14, &v13);

    return v13;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_25F1E9438()
{
  result = sub_25F1E92F8(18755, 0xE200000000000000);
  byte_27FD54199 = result & 1;
  return result;
}

uint64_t sub_25F1E9488()
{
  result = sub_25F1E92F8(0xD00000000000001FLL, 0x800000025F317D40);
  byte_27FD5419A = result & 1;
  return result;
}

uint64_t sub_25F1E94E8(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_25F1E9530@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (sub_25F304BFC() == 1702195828 && v5 == 0xE400000000000000)
  {
    goto LABEL_14;
  }

  v7 = sub_25F30659C();

  if (v7)
  {
LABEL_15:
    result = 1;
    goto LABEL_16;
  }

  if (sub_25F304BFC() == 7562617 && v8 == 0xE300000000000000)
  {
LABEL_14:

    goto LABEL_15;
  }

  v10 = sub_25F30659C();

  if ((v10 & 1) != 0 || v3 == 49 && v4 == 0xE100000000000000)
  {
    goto LABEL_15;
  }

  result = sub_25F30659C();
LABEL_16:
  *a2 = result & 1;
  return result;
}

uint64_t isAutomation.getter()
{
  if (qword_281561A58 != -1)
  {
    swift_once();
  }

  if (byte_27FD54198)
  {
    return 1;
  }

  if (qword_281561A60 != -1)
  {
    swift_once();
  }

  return byte_27FD54199;
}

void catchAndRethrow<A>(_:errorHandler:)(void (*a1)(void), uint64_t a2, void (*a3)(void *))
{
  a1();
  if (v3)
  {
    v5 = v3;
    a3(v3);
  }
}

uint64_t Error.future<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v8, a1);
  v9 = sub_25F30650C();
  if (v9)
  {
    v10 = v9;
    (*(v5 + 8))(v7, a1);
  }

  else
  {
    v10 = swift_allocError();
    (*(v5 + 32))(v13, v7, a1);
  }

  type metadata accessor for Future(0, a2, v11, v12);
  v14 = sub_25F1C15B0("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Error+UVAdditions.swift", 129, 2, 31, 16, "future()", 8, 2, v10);

  return v14;
}

uint64_t DiagnosticsReporter.__allocating_init(storeArchiveAt:)(uint64_t a1)
{
  v2 = sub_25F3044DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DiagnosticsReporter.DiagnosticsURL(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = swift_allocObject();
  sub_25F1E9D64(a1, v8);
  v10 = 0;
  v11 = 0;
  if ((*(v3 + 48))(v8, 1, v2) != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v10 = sub_25F3044BC();
    v11 = v12;
    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  v17 = qword_27FD57C28;
  v16 = 0;
  type metadata accessor for DiagnosticsCollector(0);
  swift_allocObject();
  v13 = DiagnosticsCollector.init(options:simulatorDiagnosticsDeviceSet:outputDirectory:prefix:suffix:)(&v17, &v16, v10, v11, 0, 0, 0, 0);
  sub_25F1E9FCC(a1);
  *(v9 + 16) = v13;
  return v9;
}

uint64_t DiagnosticsReporter.init(storeArchiveAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F3044DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DiagnosticsReporter.DiagnosticsURL(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F1E9D64(a1, v10);
  v11 = 0;
  v12 = 0;
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v11 = sub_25F3044BC();
    v12 = v13;
    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  v18 = qword_27FD57C28;
  v17 = 0;
  type metadata accessor for DiagnosticsCollector(0);
  swift_allocObject();
  v14 = DiagnosticsCollector.init(options:simulatorDiagnosticsDeviceSet:outputDirectory:prefix:suffix:)(&v18, &v17, v11, v12, 0, 0, 0, 0);
  sub_25F1E9FCC(a1);
  *(v2 + 16) = v14;
  return v2;
}

uint64_t type metadata accessor for DiagnosticsReporter.DiagnosticsURL(uint64_t a1)
{
  result = qword_27FD541A0;
  if (!qword_27FD541A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F1E9D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiagnosticsReporter.DiagnosticsURL(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1E9DC8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock(v1 + 8);
  sub_25F2B23E4(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 8);
  return v3;
}

void sub_25F1E9E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = *(*(v5 + 16) + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock((v11 + 32));
  if (v10)
  {
    v12 = *(v11 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 24) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v12 + 2);

      *(v11 + 24) = sub_25F2F14F4(0, v17 + 1, 1, v12);

      v12 = *(v11 + 24);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_25F2F14F4((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[32 * v15];
    *(v16 + 4) = a1;
    *(v16 + 5) = a2;
    *(v16 + 6) = a3;
    *(v16 + 7) = a4;
    *(v11 + 24) = v12;
  }

  else
  {

    sub_25F1EA028(0, 0, a1, a2, a3, a4);
  }

  os_unfair_lock_unlock((v11 + 32));
}

uint64_t DiagnosticsReporter.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F1E9FCC(uint64_t a1)
{
  v2 = type metadata accessor for DiagnosticsReporter.DiagnosticsURL(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1EA028(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 3) >> 1)
  {
    if (v9 <= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v9;
    }

    v8 = sub_25F2F14F4(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = sub_25F1EA234(v10, a2, 1, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

uint64_t sub_25F1EA1DC(uint64_t a1)
{
  v1 = sub_25F3044DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

char *sub_25F1EA234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *v7;
  v16 = (v15 + 32 + 32 * a1);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v8);
  v19 = a3 - v8;
  if (v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);
  v18 = __OFSUB__(v20, a2);
  v21 = v20 - a2;
  if (v18)
  {
    goto LABEL_21;
  }

  result = &v16[4 * a3];
  v22 = (v15 + 32 + 32 * a2);
  if (result != v22 || result >= &v22[32 * v21])
  {
    result = memmove(result, v22, 32 * v21);
  }

  v24 = *(v15 + 16);
  v18 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v15 + 16) = v25;
LABEL_13:
  if (a3 > 0)
  {
    *v16 = a4;
    v16[1] = a5;
    v16[2] = a6;
    v16[3] = a7;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:

    __break(1u);
    return result;
  }
}

unint64_t sub_25F1EA36C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_25F1EA444(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_25F2F084C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_25F1EA36C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t StaticBuiltProductPathProvider.paths.getter()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_25F1EA574()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t dispatch thunk of BuiltProductPathProvider.paths.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F1EA6F4;

  return v7(a1, a2);
}

uint64_t sub_25F1EA6F4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_25F1EA800()
{
  v0 = sub_25F30475C();
  __swift_allocate_value_buffer(v0, qword_27FD541B0);
  __swift_project_value_buffer(v0, qword_27FD541B0);
  return sub_25F1EA84C();
}

uint64_t sub_25F1EA84C()
{
  v0 = sub_25F30479C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_25F304DDC();
  v3 = [v1 BOOLForKey_];

  if (v3)
  {
    sub_25F30478C();
    return sub_25F30473C();
  }

  else
  {

    return MEMORY[0x282200CF8]();
  }
}

uint64_t static OSSignposter.ultraviolet.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52768 != -1)
  {
    swift_once();
  }

  v2 = sub_25F30475C();
  v3 = __swift_project_value_buffer(v2, qword_27FD541B0);
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

PreviewsFoundationOS::VersionNumber __swiftcall VersionNumber.init(major:minor:update:)(Swift::Int major, Swift::Int minor, Swift::Int update)
{
  *v3 = major;
  v3[1] = minor;
  v3[2] = update;
  result.update = update;
  result.minor = minor;
  result.major = major;
  return result;
}

PreviewsFoundationOS::VersionNumber_optional __swiftcall VersionNumber.init(_:)(Swift::String a1)
{
  v43 = v1;
  v44 = a1;
  sub_25F1BF118();
  v2 = sub_25F305CEC();

  v7 = *(v2 + 16);
  if (!v7)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_76:
    v38 = *(v2 + 16);

    if (v38 != *(v9 + 16) || (v38 - 1) >= 3)
    {

      *v43 = 0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      *(v43 + 24) = 1;
      goto LABEL_93;
    }

    v40 = *(v9 + 32);
    if (v38 == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(v9 + 40);
      if (v38 == 3)
      {
        v42 = *(v9 + 48);
LABEL_87:

        *v43 = v40;
        *(v43 + 8) = v41;
        *(v43 + 16) = v42;
        *(v43 + 24) = 0;
        goto LABEL_93;
      }
    }

    v42 = 0;
    goto LABEL_87;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v8 < *(v2 + 16))
  {
    v10 = (v2 + 32 + 16 * v8);
    v11 = *v10;
    v12 = v10[1];
    ++v8;
    v13 = HIBYTE(v12) & 0xF;
    v4 = v11 & 0xFFFFFFFFFFFFLL;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {
      goto LABEL_66;
    }

    if ((v12 & 0x1000000000000000) == 0)
    {
      if ((v12 & 0x2000000000000000) != 0)
      {
        v44._countAndFlagsBits = v11;
        v44._object = (v12 & 0xFFFFFFFFFFFFFFLL);
        if (v11 == 43)
        {
          if (!v13)
          {
            goto LABEL_89;
          }

          if (--v13)
          {
            v16 = 0;
            v26 = &v44._countAndFlagsBits + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v13)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v11 == 45)
        {
          if (!v13)
          {
            goto LABEL_91;
          }

          if (--v13)
          {
            v16 = 0;
            v20 = &v44._countAndFlagsBits + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v13)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v13)
        {
          v16 = 0;
          v31 = &v44;
          while (1)
          {
            v32 = LOBYTE(v31->_countAndFlagsBits) - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            v31 = (v31 + 1);
            if (!--v13)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else
      {
        if ((v11 & 0x1000000000000000) != 0)
        {
          isUniquelyReferenced_nonNull_native = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = sub_25F30605C();
        }

        v15 = *isUniquelyReferenced_nonNull_native;
        if (v15 == 43)
        {
          if (v4 < 1)
          {
            goto LABEL_92;
          }

          v13 = v4 - 1;
          if (v4 != 1)
          {
            v16 = 0;
            if (!isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_56;
            }

            v23 = (isUniquelyReferenced_nonNull_native + 1);
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              ++v23;
              if (!--v13)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v15 == 45)
        {
          if (v4 < 1)
          {
            goto LABEL_90;
          }

          v13 = v4 - 1;
          if (v4 != 1)
          {
            v16 = 0;
            if (isUniquelyReferenced_nonNull_native)
            {
              v17 = (isUniquelyReferenced_nonNull_native + 1);
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  goto LABEL_64;
                }

                v19 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_64;
                }

                v16 = v19 - v18;
                if (__OFSUB__(v19, v18))
                {
                  goto LABEL_64;
                }

                ++v17;
                if (!--v13)
                {
                  goto LABEL_65;
                }
              }
            }

LABEL_56:
            LOBYTE(v13) = 0;
LABEL_65:
            if ((v13 & 1) == 0)
            {
              goto LABEL_69;
            }

            goto LABEL_66;
          }
        }

        else
        {
          if (!v4)
          {
            goto LABEL_64;
          }

          v16 = 0;
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_56;
          }

          while (1)
          {
            v29 = *isUniquelyReferenced_nonNull_native - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++isUniquelyReferenced_nonNull_native;
            if (!--v4)
            {
              goto LABEL_56;
            }
          }
        }
      }

LABEL_64:
      v16 = 0;
      LOBYTE(v13) = 1;
      goto LABEL_65;
    }

    v16 = sub_25F2F1970(v11, v12, 10);
    v35 = v34;

    if ((v35 & 1) == 0)
    {
LABEL_69:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_25F2F070C(0, *(v9 + 16) + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v37 = *(v9 + 16);
      v36 = *(v9 + 24);
      if (v37 >= v36 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_25F2F070C((v36 > 1), v37 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      *(v9 + 16) = v37 + 1;
      *(v9 + 8 * v37 + 32) = v16;
    }

LABEL_66:
    if (v8 == v7)
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  result.value.update = v5;
  result.value.minor = v4;
  result.value.major = isUniquelyReferenced_nonNull_native;
  result.is_nil = v6;
  return result;
}

__n128 static VersionNumber.current.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  [v2 operatingSystemVersion];
  v3 = v7;
  v5 = v6;

  result = v5;
  *a1 = v5;
  a1[1].n128_u64[0] = v3;
  return result;
}

uint64_t VersionNumber.description.getter()
{
  v1 = *(v0 + 16);
  v5 = sub_25F3064DC();
  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  v2 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v2);

  result = v5;
  if (v1)
  {
    MEMORY[0x25F8D7130](46, 0xE100000000000000);
    v4 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v4);

    return v5;
  }

  return result;
}

uint64_t VersionNumber.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x25F8D88E0](*v0);
  MEMORY[0x25F8D88E0](v1);
  return MEMORY[0x25F8D88E0](v2);
}

uint64_t VersionNumber.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  MEMORY[0x25F8D88E0](v2);
  MEMORY[0x25F8D88E0](v3);
  return sub_25F30676C();
}

uint64_t sub_25F1EB190()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  MEMORY[0x25F8D88E0](v2);
  MEMORY[0x25F8D88E0](v3);
  return sub_25F30676C();
}

uint64_t sub_25F1EB1FC()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x25F8D88E0](*v0);
  MEMORY[0x25F8D88E0](v1);
  return MEMORY[0x25F8D88E0](v2);
}

uint64_t sub_25F1EB244(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v2);
  MEMORY[0x25F8D88E0](v3);
  MEMORY[0x25F8D88E0](v4);
  return sub_25F30676C();
}

BOOL sub_25F1EB2B0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_25F1EB2EC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_25F1EB328(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s20PreviewsFoundationOS13VersionNumberV1loiySbAC_ACtFZ_0(&v5, &v7);
}

BOOL _s20PreviewsFoundationOS13VersionNumberV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

unint64_t sub_25F1EB3E0()
{
  result = qword_27FD541C8;
  if (!qword_27FD541C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD541C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VersionNumber(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VersionNumber(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_25F1EB50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a3(0);
  a5[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v10 = *(*(a2 - 8) + 32);

  return v10(boxed_opaque_existential_1, a1, a2);
}

uint64_t sub_25F1EB5C8@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v8 = a2(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = v4[3];
  v12 = __swift_project_boxed_opaque_existential_1(v4, v11);
  sub_25F1EB6AC(v12, v11, a3, v10);
  return (*(*(a1 - 8) + 32))(a4, v10, a1);
}

uint64_t sub_25F1EB6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  result = a3(0);
  if (result == a2)
  {
    v8 = *(*(result - 8) + 16);

    return v8(a4, a1, result);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SendableHashableErasingBox.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  a4[3] = type metadata accessor for SendableHashableErasingBox.ValueWrapper(0, a2, a3, v10);
  a4[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v12 = *(v8 + 32);
  v12(boxed_opaque_existential_1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_25F30677C();
  MEMORY[0x25F8D88E0](a2);
  sub_25F304BDC();
  a4[5] = sub_25F30675C();
  v12((&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0)), a1, a2);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  result = (v12)(v14 + v13, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[6] = sub_25F1EBB74;
  a4[7] = v14;
  return result;
}

uint64_t sub_25F1EB920(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20[-1] - v8;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 16))(v20, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54358, &unk_25F30B040);
  v15 = swift_dynamicCast();
  v16 = *(v10 + 56);
  if (v15)
  {
    v16(v9, 0, 1, a3);
    (*(v10 + 32))(v12, v9, a3);
    v17 = sub_25F304DCC();
    (*(v10 + 8))(v12, a3);
  }

  else
  {
    v16(v9, 1, 1, a3);
    (*(v6 + 8))(v9, v5);
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t static SendableHashableErasingBox.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    return (*(a1 + 48))(a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t SendableHashableErasingBox.forceUnwrap<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SendableHashableErasingBox.ValueWrapper(0, a1, a2, a3);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = v4[3];
  v12 = __swift_project_boxed_opaque_existential_1(v4, v11);
  sub_25F1EBD04(v12, a1, v11, a2, v10);
  return (*(*(a1 - 8) + 32))(a4, v10, a1);
}

uint64_t sub_25F1EBD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = type metadata accessor for SendableHashableErasingBox.ValueWrapper(0, a2, a4, a4);
  if (result == a3)
  {
    v9 = *(*(result - 8) + 16);

    return v9(a5, a1, result);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F1EBD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  *(a2 + 24) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v4 = *(*(v6 - 8) + 16);

  return v4(boxed_opaque_existential_1, v2);
}

uint64_t sub_25F1EBE34(uint64_t a1)
{
  sub_25F30671C();
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t sub_25F1EBE88(uint64_t a1, uint64_t a2)
{
  sub_25F30671C();
  sub_25F1EBE28(v4, a2);
  return sub_25F30676C();
}

uint64_t SendableHashableErasingBox.hashValue.getter()
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](*(v0 + 40));
  return sub_25F30676C();
}

uint64_t sub_25F1EBF1C()
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](*(v0 + 40));
  return sub_25F30676C();
}

uint64_t sub_25F1EBF8C(uint64_t a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](*(v1 + 40));
  return sub_25F30676C();
}

unint64_t sub_25F1EBFD0()
{
  result = qword_27FD541D0[0];
  if (!qword_27FD541D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD541D0);
  }

  return result;
}

uint64_t sub_25F1EC024(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    return (*(a1 + 48))(a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F1EC07C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25F1EC0C4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_25F1EC12C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F1EC1B8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t SubscriberCollection.init()@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_25F1E6B9C();

  return OrderedDictionary.init()(&type metadata for Identifier, a1, v4, a2);
}

double static SubscriberCollection.add(callsite:_:modify:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t (*)())@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v12 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v13 = *(v12 + 2);
  *(v12 + 2) = v13 + 1;
  os_unfair_lock_unlock(v12 + 6);
  MEMORY[0x28223BE20](v14);
  v18 = a5;
  v19 = v13;
  v20 = a2;
  a3(sub_25F1ED1E4);
  v15 = a1[1];
  v21[0] = *a1;
  v21[1] = v15;
  v22[0] = a1[2];
  *(v22 + 9) = *(a1 + 41);
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = v13;

  return CancellationToken.init(callsite:didCancel:)(v21, sub_25F1ED1F0, v16, a6);
}

uint64_t sub_25F1EC3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25F305C1C();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = *(a4 - 8);
  (*(v10 + 16))(&v14 - v8, a3, a4);
  (*(v10 + 56))(v9, 0, 1, a4);
  v15 = a2;
  v11 = sub_25F1E6B9C();
  v12 = type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, a4, v11);
  return OrderedDictionary.subscript.setter(v9, &v15, v12);
}

uint64_t sub_25F1EC4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v13 = a2;
  v9 = sub_25F1E6B9C();
  v10 = type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, a3, v9);
  OrderedDictionary.removeValue(forKey:)(&v13, v10, v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t static SubscriberCollection.add<A>(callsite:_:at:of:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = (*a3 + *MEMORY[0x277D84568]);
  v11 = *v10;
  v12 = v10[1];
  v13 = MEMORY[0x277D84F78];
  v14 = default argument 1 of captureWeak<A, B, C>(_:deinitialized:toInvoke:)(*v10, v12, MEMORY[0x277D84F78] + 8);
  v16 = v15;

  v17 = captureWeak<A, B, C>(_:deinitialized:toInvoke:)(a4, v14, v16, sub_25F1ED244, a3, v11, v12, v13 + 8);
  v19 = v18;

  v20 = swift_allocObject();
  v21 = *(v12 + 16);
  v20[2] = v21;
  v20[3] = v11;
  v20[4] = v17;
  v20[5] = v19;
  static SubscriberCollection.add(callsite:_:modify:)(a1, a2, sub_25F1ED24C, v20, v21, a5);
}

uint64_t sub_25F1EC730(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = swift_allocObject();
  v9 = (v7 + *MEMORY[0x277D84568]);
  v8[2] = *(v9[1] + 16);
  v8[3] = *v9;
  v8[4] = a2;
  v8[5] = a3;
  v14 = a1;
  swift_unknownObjectRetain();
  v10 = swift_modifyAtReferenceWritableKeyPath();
  a2(v11);
  v10(v13, 0);

  return swift_unknownObjectRelease();
}

uint64_t SubscriberCollection.all.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_25F1E6B9C();
  v3 = type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, v1, v2);
  return OrderedDictionary.lazyValues.getter(v3);
}

uint64_t SubscriberCollection.notifyAll(closure:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v45 = a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = (&v37 - v11);
  v46 = sub_25F305C1C();
  v42 = *(v46 - 8);
  v12 = MEMORY[0x28223BE20](v46);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = v3[1];
  v18 = v4;
  *&v50 = *v3;
  *(&v50 + 1) = v17;
  v51 = 0;
  v19 = sub_25F1E6B9C();
  v20 = type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, v4, v19);
  v47 = (v5 + 32);
  v48 = v20;
  v38 = (v8 + 32);
  v21 = (v8 + 56);
  v22 = (v42 + 4);
  v23 = (v8 + 48);
  v42 = (v5 + 8);

  v24 = 0;
  v39 = v14;
  while (1)
  {
    if (v24 == OrderedDictionary.endIndex.getter(v48))
    {
      v25 = 1;
      goto LABEL_6;
    }

    v26 = v23;
    v27 = v22;
    v28 = v21;
    v49 = v50;
    v29 = v18;
    v30 = *(TupleTypeMetadata2 + 48);
    v31 = v40;
    OrderedDictionary.subscript.getter(v40, v40 + v30, v24, v48);
    v32 = v41;
    *v41 = *v31;
    v33 = v31 + v30;
    v18 = v29;
    v14 = v39;
    (*v47)(&v32[*(TupleTypeMetadata2 + 48)], v33, v29);
    result = (*v38)(v14, v32, TupleTypeMetadata2);
    if (__OFADD__(v24++, 1))
    {
      break;
    }

    v25 = 0;
    v51 = v24;
    v21 = v28;
    v22 = v27;
    v23 = v26;
LABEL_6:
    (*v21)(v14, v25, 1, TupleTypeMetadata2);
    (*v22)(v16, v14, v46);
    if ((*v23)(v16, 1, TupleTypeMetadata2) == 1)
    {
    }

    v36 = v43;
    (*v47)(v43, &v16[*(TupleTypeMetadata2 + 48)], v18);
    v44(v36);
    (*v42)(v36, v18);
  }

  __break(1u);
  return result;
}

uint64_t SubscriberCollection.isEmpty.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_25F1E6B9C();
  v3 = type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, v1, v2);
  return OrderedDictionary.isEmpty.getter(v3) & 1;
}

uint64_t SubscriberCollection.count.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_25F1E6B9C();
  v3 = type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, v1, v2);
  return OrderedDictionary.count.getter(v3);
}

Swift::Void __swiftcall SubscriberCollection.removeAll()()
{
  v2 = *(v0 + 16);
  v3 = sub_25F1E6B9C();
  OrderedDictionary.init()(&type metadata for Identifier, v2, v3, &v4);

  *v1 = v4;
}

uint64_t SubscriberCollection.sort(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v10 = *(a3 + 16);
  v11 = v4;
  v12 = v5;
  v13 = a1;
  v14 = a2;
  v6 = sub_25F1E6B9C();
  v7 = type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, v10, v6);

  OrderedDictionary.sort(using:)(sub_25F1ED2A4, &v9, v7);
}

uint64_t sub_25F1ECE4C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7)
{
  v33[1] = a6;
  v34 = a5;
  v12 = sub_25F305C1C();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v38 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v33 - v16;
  v18 = *(a7 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v33[0] = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v33 - v21;
  v23 = *a1;
  v35 = *a2;
  v36 = a3;
  v40 = a3;
  v41 = a4;
  v37 = a4;
  v39 = v23;
  v24 = sub_25F1E6B9C();
  v25 = type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, a7, v24);
  OrderedDictionary.subscript.getter(&v39, v25);
  v26 = v18[6];
  result = v26(v17, 1, a7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v28 = v18[4];
    v28(v22, v17, a7);
    v40 = v36;
    v41 = v37;
    v39 = v35;
    v29 = v38;
    OrderedDictionary.subscript.getter(&v39, v25);
    result = v26(v29, 1, a7);
    if (result != 1)
    {
      v30 = v33[0];
      v28(v33[0], v29, a7);
      v31 = v34(v22, v30);
      v32 = v18[1];
      v32(v30, a7);
      v32(v22, a7);
      return v31 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t SubscriberCollection<A>.notify()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    while (v5 < *(v2 + 16))
    {
      if (!*(v1 + 16))
      {
        goto LABEL_11;
      }

      result = sub_25F21FC78(*(v2 + 32 + 8 * v5));
      if ((v6 & 1) == 0)
      {
        goto LABEL_12;
      }

      v7 = *(*(v1 + 56) + 16 * result);
      ++v5;

      v7(v8);

      if (v3 == v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_7:
  }

  return result;
}

uint64_t sub_25F1ED1F0()
{
  v1 = v0[3];
  v2 = v0[5];
  v4[2] = v0[2];
  v4[3] = v2;
  return v1(sub_25F1ED308, v4);
}

uint64_t sub_25F1ED24C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v5[1] = *(v2 + 16);
  v6 = a1;
  v7 = a2;
  return v3(sub_25F1CDB58, v5);
}

uint64_t sub_25F1ED2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Callsite.init(_:_:_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t *static Callsite.== infix(_:_:)(uint64_t **a1, uint64_t a2)
{
  if (a1[3] != *(a2 + 24) || a1[4] != *(a2 + 32))
  {
    return 0;
  }

  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1 + 56);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  if ((sub_25F1ED400(*a2, *(a2 + 8), *(a2 + 16), *a1, a1[1], *(a1 + 16)) & 1) == 0)
  {
    return 0;
  }

  return sub_25F1ED400(v6, v7, v8, v3, v4, v5);
}

uint64_t *sub_25F1ED400(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t *a4, size_t __n, uint64_t *a6)
{
  v6 = a6;
  v8 = a3;
  v9 = a6 | a3;
  if ((a6 | a3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__n != a2)
  {
    return 0;
  }

  a6 = a4;
  a3 = result;
  if ((v6 & 1) == 0)
  {
    if (a4)
    {
      sub_25F1ED600(&var1, __n, a4, result, v8, v6);
      return var1;
    }

    goto LABEL_15;
  }

  v9 = a4 >> 32;
  if (a4 >> 32)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a4 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  v9 = a4 >> 16;
  if (a4 >> 16 > 0x10)
  {
    goto LABEL_17;
  }

  if (a4 > 0x7F)
  {
LABEL_18:
    v11 = (a6 & 0x3F) << 8;
    v12 = (a6 >> 6) + v11 + 33217;
    v13 = (v11 | (a6 >> 6) & 0x3F) << 8;
    v14 = (a6 >> 18) + ((v13 | (a6 >> 12) & 0x3F) << 8) - 2122219023;
    v15 = (a6 >> 12) + v13 + 8487393;
    if (v9)
    {
      v10 = v14;
    }

    else
    {
      v10 = v15;
    }

    if (a6 < 0x800)
    {
      v10 = v12;
    }

    goto LABEL_12;
  }

  v10 = a4 + 1;
LABEL_12:
  v17 = (v10 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v10) >> 3))));
  sub_25F1ED600(&v16, __n, &v17, a3, v8, v6);
  return v16;
}

uint64_t *sub_25F1ED550(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  if ((sub_25F1ED400(*a2, *(a2 + 8), *(a2 + 16), *a1, *(a1 + 8), *(a1 + 16)) & 1) == 0)
  {
    return 0;
  }

  return sub_25F1ED400(v6, v7, v8, v3, v4, v5);
}

uint64_t *sub_25F1ED600@<X0>(uint64_t *__return_ptr a1@<X8>, size_t __n@<X6>, uint64_t *result@<X0>, uint64_t *a4@<X2>, char a5@<W4>, char a6@<W7>)
{
  if ((a5 & 1) == 0)
  {
    if (a4)
    {
      if (!result)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if ((a6 & 1) == 0)
      {
        p_s2 = a4;
LABEL_14:
        result = memcmp(result, p_s2, __n);
        *a1 = result == 0;
        return result;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = a4 >> 32;
  if (a4 >> 32)
  {
    goto LABEL_16;
  }

  if ((a4 & 0xFFFFF800) == 0xD800)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = a4 >> 16;
  if (a4 >> 16 > 0x10)
  {
    goto LABEL_18;
  }

  if (a4 <= 0x7F)
  {
    v9 = a4 + 1;
    goto LABEL_11;
  }

LABEL_19:
  v10 = (a4 & 0x3F) << 8;
  v11 = (a4 >> 6) + v10 + 33217;
  v12 = (v10 | (a4 >> 6) & 0x3F) << 8;
  v13 = (a4 >> 18) + ((v12 | (a4 >> 12) & 0x3F) << 8) - 2122219023;
  v14 = (a4 >> 12) + v12 + 8487393;
  if (v6)
  {
    v9 = v13;
  }

  else
  {
    v9 = v14;
  }

  if (a4 < 0x800)
  {
    v9 = v11;
  }

LABEL_11:
  __s2 = (v9 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v9) & 0x18)));
  if (result)
  {
    if ((a6 & 1) == 0)
    {
      p_s2 = &__s2;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t Callsite.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_25F305FAC();
  sub_25F1ED8D0();
  v4 = sub_25F305B8C(v1, v2, v3);
  v5 = [v4 lastPathComponent];

  v6 = sub_25F304E0C();

  MEMORY[0x25F8D7130](58, 0xE100000000000000);
  v7 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v7);

  MEMORY[0x25F8D7130](58, 0xE100000000000000);
  v8 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v8);

  MEMORY[0x25F8D7130](0x206E696874697720, 0xE800000000000000);
  v9 = sub_25F305FFC();
  MEMORY[0x25F8D7130](v9);

  return v6;
}

unint64_t sub_25F1ED8D0()
{
  result = qword_27FD543E0[0];
  if (!qword_27FD543E0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD543E0);
  }

  return result;
}

__n128 CallsiteError.callsite.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 32);
  result = *(v1 + 41);
  *(a1 + 41) = result;
  return result;
}

uint64_t CallsiteError.init(underlying:callsite:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = a2[1];
  *a5 = *a2;
  a5[1] = v8;
  a5[2] = a2[2];
  *(a5 + 41) = *(a2 + 41);
  v9 = type metadata accessor for CallsiteError(0, a3, a4, a4);
  v10 = *(*(a3 - 8) + 32);
  v11 = a5 + *(v9 + 36);

  return v10(v11, a1, a3);
}

uint64_t CallsiteError.isPotentialCrash.getter(uint64_t a1)
{
  Error.humanReadable.getter(*(a1 + 16), v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 96))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_25F1EDAD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.errorDescription.getter(a1, WitnessTable);
}

uint64_t sub_25F1EDB24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.description.getter(a1, WitnessTable);
}

uint64_t Error.trackingCallsite(callsite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v9[1];
  v24 = *v9;
  v25 = v12;
  v26[0] = v9[2];
  *(v26 + 9) = *(v9 + 41);
  Error.humanReadable.getter(v13, v27);
  v15 = v28;
  v14 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v8 + 16))(v11, v4, a2);
  v17 = type metadata accessor for CallsiteError(0, a2, a3, v16);
  swift_getWitnessTable();
  v18 = swift_allocError();
  v20 = v25;
  v19 = v26[0];
  v21 = v24;
  *(v22 + 41) = *(v26 + 9);
  v22[1] = v20;
  v22[2] = v19;
  *v22 = v21;
  (*(v8 + 32))(v22 + *(v17 + 36), v11, a2);
  HumanReadableError.withUnderlying(_:)(v18, v15, v14, a4);

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t Error.isCancelationError.getter(uint64_t a1)
{
  v3 = sub_25F30543C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = *(v8 + 16);
  v12(&v16 - v13, v1, a1);
  if (swift_dynamicCast())
  {
    (*(v4 + 8))(v7, v3);
    return 1;
  }

  else
  {
    v12(v11, v1, a1);
    result = swift_dynamicCast();
    if (result)
    {
      v15 = result;

      return v15;
    }
  }

  return result;
}

uint64_t sub_25F1EDF28(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
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

uint64_t sub_25F1EDFC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F1EDFE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
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

  *(result + 57) = v3;
  return result;
}

uint64_t sub_25F1EE02C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F1EE0AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 57) & ~v6);
  }

  v8 = ((v6 + 57) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 57) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_25F1EE20C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 57) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 57] & ~v8;

  v18(v19);
}

uint64_t sub_25F1EE430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F1EE478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::String __swiftcall lengthPrefixedNameSuitableForMangledSymbolName(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = _s20PreviewsFoundationOS8PunycodeO6encode6stringSSSgSS_tFZ_0(a1._countAndFlagsBits, a1._object);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
  }

  else
  {

    v5 = countAndFlagsBits;
    v6 = object;
  }

  v7 = sub_25F30505C();
  if (v7)
  {
    v8 = 95;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = 0xE100000000000000;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = sub_25F304F2C();
  v11 = sub_25F304F2C();
  v12 = v11 < v10;
  if (v11 >= v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = 12336;
  }

  if (v12)
  {
    v14 = 0xE200000000000000;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  MEMORY[0x25F8D7130](v13, v14);

  sub_25F304F2C();
  v15 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v15);

  MEMORY[0x25F8D7130](v8, v9);

  MEMORY[0x25F8D7130](v5, v6);

  v16 = 0;
  v17 = 0xE000000000000000;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

Swift::tuple_module_String_name_String_optional __swiftcall demangleSimpleType(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_25F305BCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v8 = sub_25F304DDC();
  v9 = [v7 initWithString_];

  v10 = *(v4 + 104);
  v41 = *MEMORY[0x277CC9E90];
  v40 = v10;
  v10(v6);
  sub_25F305BDC();
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v6, v3);
  if (v12)
  {

LABEL_15:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_26;
  }

  sub_25F305BAC();
  v38 = countAndFlagsBits;
  v39 = object;
  if (sub_25F30509C() == 95 && v14 == 0xE100000000000000)
  {

    goto LABEL_10;
  }

  v16 = sub_25F30659C();

  if (v16)
  {
LABEL_10:
    sub_25F305BBC();
  }

  sub_25F305BAC();
  v17 = sub_25F304F5C();
  v18 = sub_25F305BAC();
  if (v17 >> 14 < v18 >> 14)
  {
    __break(1u);
    goto LABEL_25;
  }

  v22 = sub_25F3050CC();
  v23 = MEMORY[0x25F8D7070](v22);
  v25 = v24;

  v37 = v23;
  sub_25F305B9C();
  if (!v26 || (, v40(v6, v41, v3), sub_25F305BDC(), v28 = v27, v13(v6, v3), (v28 & 1) != 0))
  {

    goto LABEL_15;
  }

  sub_25F305BAC();
  if (sub_25F30509C() == 95 && v29 == 0xE100000000000000)
  {
  }

  else
  {
    v30 = sub_25F30659C();

    if ((v30 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_25F305BBC();

LABEL_22:
  sub_25F305BAC();
  v31 = sub_25F304F5C();
  v18 = sub_25F305BAC();
  if (v31 >> 14 < v18 >> 14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = sub_25F3050CC();
  v33 = MEMORY[0x25F8D7070](v32);
  v35 = v34;

  v21 = v35;
  v20 = v33;
  v19 = v25;
  v18 = v37;
LABEL_26:
  result.value.name._object = v21;
  result.value.name._countAndFlagsBits = v20;
  result.value.module._object = v19;
  result.value.module._countAndFlagsBits = v18;
  return result;
}

uint64_t OrderedDictionary.subscript.setter(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v8 + 16);
  v23 = a1;
  v18(v14, a1, v7);
  if ((*(v15 + 48))(v14, 1, v6) == 1)
  {
    v19 = *(v8 + 8);
    v19(v14, v7);
    OrderedDictionary.removeValue(forKey:)(a2, a3, v11);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v19(v23, v7);
    return (v19)(v11, v7);
  }

  else
  {
    (*(v15 + 32))(v17, v14, v6);
    OrderedDictionary.updateValue(_:forKey:)(v17, a2, a3, v11);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v21 = *(v8 + 8);
    v21(v23, v7);
    v21(v11, v7);
    return (*(v15 + 8))(v17, v6);
  }
}

uint64_t OrderedDictionary.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = sub_25F305C1C();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v42 = &v32 - v12;
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v41 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v32 = *(v16 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v32 - v17;
  sub_25F30531C();
  v44 = a4;
  *&v46 = MEMORY[0x25F8D6C60]();
  *(&v46 + 1) = sub_25F3052DC();
  v43 = a2;
  v40 = sub_25F30539C();
  sub_25F30529C();
  if (sub_25F30531C())
  {
    v19 = 0;
    v20 = *(TupleTypeMetadata2 + 48);
    v38 = v18;
    v39 = (v16 + 16);
    v36 = (v13 + 16);
    v37 = v20;
    v35 = (v13 + 32);
    v33 = a5;
    v34 = a3 - 8;
    v21 = v41;
    while (1)
    {
      v22 = sub_25F3052FC();
      sub_25F30528C();
      if (v22)
      {
        (*(v16 + 16))(v18, a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v19, TupleTypeMetadata2);
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_25F30601C();
        if (v32 != 8)
        {
          __break(1u);
          return result;
        }

        v45 = result;
        (*v39)(v18, &v45, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          a5 = v33;
          goto LABEL_13;
        }
      }

      v24 = v43;
      (*v36)(v21, v18, v43);
      sub_25F30533C();
      (*v35)(v21, v18, v24);
      v25 = *(a3 - 8);
      v26 = &v18[v37];
      v27 = TupleTypeMetadata2;
      v28 = a1;
      v29 = v16;
      v30 = v42;
      (*(v25 + 32))(v42, v26, a3);
      (*(v25 + 56))(v30, 0, 1, a3);
      sub_25F304B4C();
      v16 = v29;
      a1 = v28;
      TupleTypeMetadata2 = v27;
      v18 = v38;
      sub_25F304B9C();
      ++v19;
      if (v23 == sub_25F30531C())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a5 = v46;
  return result;
}

uint64_t OrderedDictionary.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v25 = a4;
  v5 = *(a3 + 16);
  v23 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v6);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F305C1C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  (*(v11 + 16))(v13, a1, v10);
  sub_25F304B4C();
  v18 = v24;
  sub_25F304A9C();
  if ((*(v11 + 48))(v17, 1, v10) == 1)
  {
    (*(v15 + 8))(v17, v14);
    (*(v23 + 16))(v8, v18, v5);
    sub_25F30539C();
    sub_25F30533C();
    v19 = 1;
    v20 = v25;
  }

  else
  {
    v21 = v25;
    (*(v11 + 32))(v25, v17, v10);
    v19 = 0;
    v20 = v21;
  }

  return (*(v11 + 56))(v20, v19, 1, v10);
}

void *OrderedDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v26 = a3;
  v4 = *(a2 + 16);
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F304B4C();
  v25 = a1;
  v16 = v27;
  sub_25F304A8C();
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v17 = 1;
    v18 = v26;
    return (*(v13 + 56))(v18, v17, 1, v7);
  }

  v19 = v12;
  v20 = *(v13 + 32);
  v20(v15, v19, v7);
  v28 = *(v16 + 8);
  sub_25F30539C();
  swift_getWitnessTable();
  result = sub_25F3058CC();
  if ((v29 & 1) == 0)
  {
    v22 = v23;
    sub_25F30535C();
    (*(v24 + 8))(v22, v4);
    v18 = v26;
    v20(v26, v15, v7);
    v17 = 0;
    return (*(v13 + 56))(v18, v17, 1, v7);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall OrderedDictionary.removeAll()()
{
  sub_25F304B4C();
  sub_25F304B3C();
  sub_25F30539C();
  sub_25F30538C();
}

uint64_t OrderedDictionary.filter(_:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v54 = a1;
  v55 = a2;
  v43 = a4;
  v6 = a3[3];
  v7 = sub_25F305C1C();
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v42 - v8;
  v9 = a3[2];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v42 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v60 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v21 = *v4;
  v20 = v4[1];
  v61 = a3;
  OrderedDictionary.init()(v9, v6, a3[4], &v68);
  v56 = v21;

  if (sub_25F30531C())
  {
    v22 = 0;
    v59 = v6;
    v52 = v6 - 8;
    v53 = v9 - 8;
    v49 = (v11 + 8);
    v44 = (v11 + 16);
    v48 = v9;
    v50 = v20;
    v51 = TupleTypeMetadata2;
    v45 = v19;
    while (1)
    {
      v69 = v22;
      v66 = v56;
      v67 = v20;
      v63 = *(TupleTypeMetadata2 + 48);
      v23 = v60;
      OrderedDictionary.subscript.getter(v60, v60 + v63, v22, v61);
      v58 = *(v9 - 8);
      v62 = *(v58 + 32);
      v62(v19, v23, v9);
      v24 = *(TupleTypeMetadata2 + 48);
      v25 = v9;
      v26 = v59;
      v57 = *(v59 - 8);
      v27 = *(v57 + 32);
      result = v27(&v19[v24], v23 + v63, v59);
      if (__OFADD__(v69, 1))
      {
        break;
      }

      v63 = v69 + 1;
      v29 = *(TupleTypeMetadata2 + 48);
      v30 = v64;
      v62(v64, v19, v25);
      v27(&v30[v29], &v19[v24], v26);
      v31 = v65;
      v32 = v54(v30, &v30[v29]);
      v65 = v31;
      if (v31)
      {
        (*v49)(v64, v51);
      }

      if (v32)
      {
        v33 = v27;
        v34 = *v44;
        v35 = v60;
        v36 = v64;
        TupleTypeMetadata2 = v51;
        (*v44)(v60, v64, v51);
        v62 = *(TupleTypeMetadata2 + 48);
        v37 = v46;
        v34(v46, v36, TupleTypeMetadata2);
        v38 = v47;
        v39 = v59;
        v33(v47, &v37[*(TupleTypeMetadata2 + 48)], v59);
        v40 = v57;
        (*(v57 + 56))(v38, 0, 1, v39);
        OrderedDictionary.subscript.setter(v38, v35, v61);
        (*v49)(v36, TupleTypeMetadata2);
        v9 = v48;
        (*(v58 + 8))(v37, v48);
        v41 = v62 + v35;
        v19 = v45;
        (*(v40 + 8))(v41, v39);
      }

      else
      {
        TupleTypeMetadata2 = v51;
        (*v49)(v64, v51);
        v9 = v48;
      }

      v20 = v50;
      v22 = v69 + 1;
      if (v63 == sub_25F30531C())
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    *v43 = v68;
  }

  return result;
}

uint64_t OrderedDictionary.append(contentsOf:)(void *a1, void *a2)
{
  v58 = a1;
  v4 = a2[3];
  v51 = sub_25F305C1C();
  v57 = *(v51 - 8);
  v5 = MEMORY[0x28223BE20](v51);
  v7 = &v42 - v6;
  v49 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a2;
  v10 = a2[2];
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v46 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v44 = &v42 - v18;
  v19 = sub_25F305C1C();
  v20 = MEMORY[0x28223BE20](v19);
  v62 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v56 = &v42 - v22;
  v59 = (v49 + 4);
  v60 = (v11 + 32);
  v43 = (v15 + 32);
  v23 = *v58;
  v24 = v58[1];
  v54 = (v25 + 32);
  v55 = (v15 + 56);
  v53 = (v15 + 48);
  ++v49;
  v50 = (v57 + 8);
  v47 = v23;
  v48 = (v11 + 8);

  v26 = 0;
  v57 = v24;
  v58 = v10;
  v45 = v4;
  while (1)
  {
    if (v26 == sub_25F30531C())
    {
      v27 = 1;
      goto LABEL_6;
    }

    v28 = v24;
    v29 = v19;
    v30 = v2;
    v63 = v47;
    v64 = v28;
    v31 = v10;
    v32 = *(TupleTypeMetadata2 + 48);
    v33 = v44;
    OrderedDictionary.subscript.getter(v44, v44 + v32, v26, v61);
    v34 = v46;
    (*v60)(v46, v33, v31);
    v35 = (v33 + v32);
    v4 = v45;
    (*v59)(&v34[*(TupleTypeMetadata2 + 48)], v35, v45);
    result = (*v43)(v62, v34, TupleTypeMetadata2);
    if (__OFADD__(v26++, 1))
    {
      break;
    }

    v27 = 0;
    v2 = v30;
    v10 = v58;
    v19 = v29;
LABEL_6:
    (*v55)(v62, v27, 1, TupleTypeMetadata2);
    v38 = v56;
    (*v54)();
    if ((*v53)(v38, 1, TupleTypeMetadata2) == 1)
    {
    }

    v39 = *(TupleTypeMetadata2 + 48);
    (*v60)(v13, v38, v10);
    v40 = &v38[v39];
    v41 = v52;
    (*v59)(v52, v40, v4);
    OrderedDictionary.updateValue(_:forKey:)(v41, v13, v61, v7);
    (*v50)(v7, v51);
    v10 = v58;
    (*v49)(v41, v4);
    (*v48)(v13, v10);
    v24 = v57;
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.values.getter(void *a1)
{
  v12 = *v1;
  v3 = a1[3];
  v9 = a1[2];
  v10 = v3;
  v11 = a1[4];
  v8[2] = v9;
  v8[3] = v11;
  v8[4] = swift_getKeyPath();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_25F1C1AC4(sub_25F1F32FC, v8, a1, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  return v6;
}

uint64_t OrderedDictionary.keys.getter(uint64_t a1)
{
  sub_25F1F3320();
}

Swift::Int __swiftcall OrderedDictionary.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a2;
  v6 = a4[3];
  v7 = sub_25F305C1C();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = a4[2];
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3053DC();
  (*(v12 + 16))(a1, v14, v11);
  sub_25F304B8C();
  v15 = *(v6 - 8);
  result = (*(v15 + 48))(v10, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    return (*(v15 + 32))(v18, v10, v6);
  }

  return result;
}

uint64_t static OrderedDictionary<>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = a2[1];
  if ((sub_25F304B6C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a5 + 8);

  return MEMORY[0x2821FC390](v8, v9, a3, v10);
}

uint64_t OrderedDictionary.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  swift_getTupleTypeMetadata2();
  v8 = sub_25F3052DC();
  v9 = sub_25F1CCBBC(v8, a1, a2, a3);

  *a4 = v9;
  result = sub_25F3052DC();
  a4[1] = result;
  return result;
}

uint64_t OrderedDictionary.lazyValues.getter(void *a1)
{
  v9[1] = *v1;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F8D7310](v9, a1, WitnessTable);
  v4 = a1[2];
  v5 = a1[4];
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = KeyPath;
  sub_25F305FEC();
  swift_getWitnessTable();
  sub_25F30638C();
}

uint64_t OrderedDictionary.isEmpty.getter(uint64_t a1)
{
  sub_25F30539C();
  swift_getWitnessTable();
  return sub_25F30588C() & 1;
}

uint64_t OrderedDictionary.sort(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F30539C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_25F304D6C();
}

double OrderedDictionary.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v59 = a6;
  v53 = a7;
  v54 = a1;
  v11 = sub_25F305C1C();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v61 = &v48 - v13;
  v63 = *(a2 - 8);
  MEMORY[0x28223BE20](v12);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_25F305C1C();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v48 - v18;
  v20 = *(a4 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v25 = &v48 - v24;
  v62 = a3;
  OrderedDictionary.init()(a2, a3, a5, &v64);
  v51 = v20;
  v26 = v20;
  v27 = v25;
  (*(v26 + 16))(v22, v54, a4);
  sub_25F3050DC();
  v52 = a4;
  v28 = a2;
  v29 = v49;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v31 = *(TupleTypeMetadata2 - 8);
  v32 = *(v31 + 48);
  v33 = v31 + 48;
  if (v32(v19, 1, TupleTypeMetadata2) != 1)
  {
    v34 = *(v63 + 32);
    v63 += 32;
    v55 = v62 - 8;
    v56 = v34;
    v59 = AssociatedConformanceWitness;
    v60 = v27;
    v57 = v33;
    v58 = v32;
    do
    {
      v35 = *(TupleTypeMetadata2 + 48);
      v56(v29, v19, v28);
      v36 = v19;
      v38 = v61;
      v37 = v62;
      v39 = AssociatedTypeWitness;
      v40 = TupleTypeMetadata2;
      v41 = v29;
      v42 = v28;
      v43 = a5;
      v44 = *(v62 - 8);
      (*(v44 + 32))(v61, &v36[v35], v62);
      (*(v44 + 56))(v38, 0, 1, v37);
      a5 = v43;
      v28 = v42;
      v29 = v41;
      TupleTypeMetadata2 = v40;
      AssociatedTypeWitness = v39;
      v27 = v60;
      v45 = v37;
      v19 = v36;
      v46 = type metadata accessor for OrderedDictionary(0, v28, v45, a5);
      OrderedDictionary.subscript.setter(v38, v29, v46);
      sub_25F305CDC();
    }

    while (v58(v36, 1, TupleTypeMetadata2) != 1);
  }

  (*(v51 + 8))(v54, v52);
  (*(v50 + 8))(v27, AssociatedTypeWitness);
  result = *&v64;
  *v53 = v64;
  return result;
}

double OrderedDictionary.init<A>(_:uniquingKeysWith:)@<D0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a9@<X8>)
{
  v87 = a7;
  v71 = a3;
  v70 = a2;
  v64 = a1;
  v63 = a9;
  v69 = sub_25F305C1C();
  v77 = *(v69 - 8);
  v12 = MEMORY[0x28223BE20](v69);
  v84 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v83 = &v59 - v15;
  v65 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v68 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v59 = &v59 - v19;
  v88 = a4;
  v86 = *(a4 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v82 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = sub_25F305C1C();
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v59 - v27;
  v29 = *(a6 - 8);
  MEMORY[0x28223BE20](v26);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = &v59 - v33;
  OrderedDictionary.init()(v88, a5, v87, &v89);
  v61 = v29;
  (*(v29 + 16))(v31, v64, a6);
  sub_25F3050DC();
  v62 = a6;
  v35 = v59;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v85 = v34;
  v81 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v37 = *(TupleTypeMetadata2 - 8);
  v38 = *(v37 + 48);
  v79 = v37 + 48;
  v80 = v38;
  if (v38(v28, 1, TupleTypeMetadata2) != 1)
  {
    v78 = *(v86 + 32);
    v40 = v65 + 4;
    v75 = (v86 + 16);
    v76 = (v65 + 6);
    v73 = (v65 + 1);
    v74 = (v65 + 7);
    v86 += 32;
    v72 = (v86 - 24);
    v66 = (v77 + 1);
    v65 += 2;
    v77 = v40;
    v67 = v28;
    do
    {
      v52 = *(TupleTypeMetadata2 + 48);
      v53 = v88;
      v78(v23, v28, v88);
      v54 = *v40;
      (*v40)(v35, &v28[v52], a5);
      v55 = type metadata accessor for OrderedDictionary(0, v53, a5, v87);
      v56 = v83;
      sub_25F304B8C();
      if ((*v76)(v56, 1, a5) == 1)
      {
        (*v66)(v56, v69);
        v57 = v82;
        (*v75)(v82, v23, v88);
        v58 = v84;
        (*v65)(v84, v35, a5);
        (*v74)(v58, 0, 1, a5);
        OrderedDictionary.subscript.setter(v58, v57, v55);
        (*v73)(v35, a5);
      }

      else
      {
        v41 = v35;
        v42 = v68;
        v54(v68, v56, a5);
        v43 = AssociatedTypeWitness;
        v44 = TupleTypeMetadata2;
        v45 = v23;
        v46 = v82;
        (*v75)(v82, v45, v88);
        v47 = v84;
        v70(v42, v41);
        (*v74)(v47, 0, 1, a5);
        v48 = v46;
        v23 = v45;
        TupleTypeMetadata2 = v44;
        AssociatedTypeWitness = v43;
        v28 = v67;
        OrderedDictionary.subscript.setter(v47, v48, v55);
        v49 = *v73;
        v50 = v42;
        v35 = v41;
        (*v73)(v50, a5);
        v49(v41, a5);
      }

      (*v72)(v23, v88);
      sub_25F305CDC();
      v51 = v80(v28, 1, TupleTypeMetadata2);
      v40 = v77;
    }

    while (v51 != 1);
  }

  (*(v61 + 8))(v64, v62);
  (*(v60 + 8))(v85, AssociatedTypeWitness);
  result = *&v89;
  *v63 = v89;
  return result;
}

uint64_t sub_25F1F1524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;

  v6 = sub_25F304ADC();

  v7 = sub_25F30531C();

  if (v6 != v7)
  {
    v9[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/OrderedDictionary.swift";
    v9[1] = 129;
    v10 = 2;
    v11 = xmmword_25F30B300;
    v12 = "init(dictionary:orderedKeys:)";
    v13 = 29;
    v14 = 2;
    return sub_25F213F98(v9);
  }

  return result;
}

uint64_t sub_25F1F15FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(*a2 + *MEMORY[0x277D84DE8]);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  (*(v6 + 16))(&v14 - v10);
  v12 = *(v5 + 48);
  (*(*(a3 - 8) + 32))(v9, v11, a3);
  (*(*(*(v4 + *MEMORY[0x277D84DE8] + 8) - 8) + 32))(&v9[v12], &v11[v12]);
  swift_getAtKeyPath();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25F1F17D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = MEMORY[0x277D84DE8];
  v6 = *(*a2 + *MEMORY[0x277D84DE8]);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  (*(v7 + 16))(&v15 - v11);
  v13 = *(v6 + 48);
  (*(*(a3 - 8) + 32))(v10, v12, a3);
  (*(*(*(v4 + *v5 + 8) - 8) + 32))(&v10[v13], &v12[v13]);
  swift_getAtKeyPath();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_25F1F1A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a3, v6);
  (*(v10 + 16))(v13, a1, v9);
  v17 = type metadata accessor for OrderedDictionary(0, v6, v7, v8);
  return OrderedDictionary.subscript.setter(v13, v15, v17);
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = sub_25F305C1C();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  v12 = v6;
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v13 = malloc(v11);
  }

  v8[5] = v13;
  v14 = a3[2];
  v8[6] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v8[7] = v15;
  v17 = *(v15 + 64);
  if (v12)
  {
    v8[8] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[8] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v8[9] = v18;
  (*(v16 + 16))();
  sub_25F304B8C();
  return sub_25F1F1D8C;
}

void sub_25F1F1D8C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v11 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v10 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v11);
    OrderedDictionary.subscript.setter(v7, v3, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    OrderedDictionary.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_25F1F1EA0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 24);
  v5 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = *a1;
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = type metadata accessor for OrderedDictionary(0, v4, v5, v6);
  return OrderedDictionary.subscript.getter(a3, a3 + v8, v7, v9);
}

uint64_t sub_25F1F1F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, a1, TupleTypeMetadata2);
  v12 = *(TupleTypeMetadata2 + 48);
  v13 = type metadata accessor for OrderedDictionary(0, v5, v6, v7);
  return sub_25F1F334C(v10, &v10[v12], v13);
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t *a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[2] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[5] = v13;
  v14 = *(TupleTypeMetadata2 + 48);
  *(v9 + 12) = v14;
  OrderedDictionary.subscript.getter(v13, v13 + v14, a2, a3);
  return sub_25F1F21B0;
}

void sub_25F1F21B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  if (a2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = *v2;
    (*(v6 + 16))(*(v2 + 32), *(v2 + 40), v5);
    sub_25F1F334C(v4, v4 + *(v5 + 48), v7);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_25F1F334C(*(v2 + 40), v3 + *(v2 + 48), *v2);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t OrderedDictionary.appending(contentsOf:)@<X0>(__int128 *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  *a3 = v6;
  a3[1] = v7;
  v9 = *a1;

  return OrderedDictionary.append(contentsOf:)(&v9, a2);
}

uint64_t OrderedDictionary.subtract(_:)(uint64_t *a1, void *a2)
{
  v4 = a2[3];
  v44 = sub_25F305C1C();
  v49 = *(v44 - 8);
  v5 = MEMORY[0x28223BE20](v44);
  v43 = &v35 - v6;
  v52 = a2;
  v7 = a2[2];
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v38 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v37 = &v35 - v14;
  v48 = sub_25F305C1C();
  v15 = MEMORY[0x28223BE20](v48);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v20 = (v8 + 32);
  v50 = v4 - 8;
  v51 = v4;
  v36 = (v11 + 32);
  v21 = *a1;
  v22 = a1[1];
  v46 = (v23 + 32);
  v47 = (v11 + 56);
  v45 = (v11 + 48);
  v40 = (v8 + 8);
  v41 = (v49 + 8);
  v39 = v21;

  v24 = 0;
  v49 = v22;
  while (1)
  {
    if (v24 == sub_25F30531C())
    {
      v25 = 1;
      goto LABEL_6;
    }

    v53 = v39;
    v54 = v22;
    v26 = *(TupleTypeMetadata2 + 48);
    v27 = v37;
    OrderedDictionary.subscript.getter(v37, v37 + v26, v24, v52);
    v28 = v38;
    (*v20)(v38, v27, v7);
    (*(*(v51 - 8) + 32))(&v28[*(TupleTypeMetadata2 + 48)], v27 + v26);
    result = (*v36)(v17, v28, TupleTypeMetadata2);
    if (__OFADD__(v24++, 1))
    {
      break;
    }

    v25 = 0;
LABEL_6:
    (*v47)(v17, v25, 1, TupleTypeMetadata2);
    (*v46)(v19, v17, v48);
    if ((*v45)(v19, 1, TupleTypeMetadata2) == 1)
    {
    }

    v31 = *(TupleTypeMetadata2 + 48);
    v32 = v42;
    (*v20)(v42, v19, v7);
    v33 = v43;
    OrderedDictionary.removeValue(forKey:)(v32, v52, v43);
    (*v41)(v33, v44);
    v34 = v32;
    v22 = v49;
    (*v40)(v34, v7);
    (*(*(v51 - 8) + 8))(&v19[v31]);
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.union<A>(groupsIn:)@<X0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v45 = a3;
  v7 = a2[2];
  v60 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  v14 = *(v13 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v50 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v44 - v18;
  v19 = sub_25F305C1C();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v51 = &v44 - v23;
  v24 = a1;
  v25 = *a1;
  v26 = v24[1];
  v27 = *v4;
  v28 = v4[1];
  v58 = (v60 + 32);
  v59 = v26;
  v47 = (v55 + 4);
  *&v64 = v27;
  *(&v64 + 1) = v28;
  v56 = (v29 + 32);
  v57 = (v55 + 7);
  v54 = (v60 + 16);
  v55 += 6;
  v53 = (v60 + 8);

  v30 = v51;

  v52 = v25;
  v31 = v59;

  v60 = 0;
  v46 = v19;
  v48 = v22;
  while (1)
  {
    if (v60 == sub_25F30531C())
    {
      v32 = 1;
      goto LABEL_7;
    }

    v33 = v14;
    v34 = v12;
    v35 = v10;
    v62 = v52;
    v63 = v31;
    v36 = *(TupleTypeMetadata2 + 48);
    v37 = TupleTypeMetadata2;
    v38 = v49;
    OrderedDictionary.subscript.getter(v49, v49 + v36, v60, a2);
    v39 = v50;
    (*v58)(v50, v38, v7);
    v40 = *(v38 + v36);
    TupleTypeMetadata2 = v37;
    *&v39[*(v37 + 48)] = v40;
    v22 = v48;
    result = (*v47)(v48, v39, TupleTypeMetadata2);
    if (__OFADD__(v60, 1))
    {
      break;
    }

    ++v60;
    v32 = 0;
    v10 = v35;
    v12 = v34;
    v14 = v33;
    v19 = v46;
    v30 = v51;
LABEL_7:
    (*v57)(v22, v32, 1, TupleTypeMetadata2);
    (*v56)(v30, v22, v19);
    if ((*v55)(v30, 1, TupleTypeMetadata2) == 1)
    {

      *v45 = v64;
      return result;
    }

    v42 = *&v30[*(TupleTypeMetadata2 + 48)];
    (*v58)(v12, v30, v7);
    sub_25F304B8C();
    v43 = v61;
    if (!v61)
    {
      v43 = sub_25F3052DC();
    }

    v61 = v42;
    v62 = v43;
    swift_getWitnessTable();
    sub_25F30532C();
    (*v54)(v10, v12, v7);
    v61 = v62;
    OrderedDictionary.subscript.setter(&v61, v10, a2);
    (*v53)(v12, v7);
    v31 = v59;
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.mapValues<A>(_:)@<X0>(void *a5@<X8>)
{
  v8 = *(v5 + 8);
  result = sub_25F304B2C();
  if (!v6)
  {
    v10 = result;

    return sub_25F1F1524(v10, v8, a5);
  }

  return result;
}

void (*sub_25F1F2D74(void *a1, uint64_t a2, void *a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = OrderedDictionary.subscript.modify(v6, a2, a3);
  return sub_25F1DC004;
}

uint64_t sub_25F1F2DFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedDictionary.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_25F1F2E24(uint64_t *a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = a3[2];
  v9 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_25F1F2FB8(v8, *a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_25F1DC364;
}

void (*sub_25F1F2FB8(uint64_t *a1, uint64_t a2, void *a3))(uint64_t a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v9 + 16) = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  *(v9 + 24) = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 32) = v12;
  *v9 = *v3;
  OrderedDictionary.subscript.getter(v12, v12 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_25F1CC970;
}

uint64_t sub_25F1F30F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F1F314C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_25F2B6F1C(v1, a1, WitnessTable);

  return v4;
}

uint64_t OrderedDictionary<>.hash(into:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = a2[2];
  v7 = a2[4];
  sub_25F304B5C();

  return MEMORY[0x2821FC380](a1, v5, v6, v7);
}

uint64_t OrderedDictionary<>.hashValue.getter(void *a1, uint64_t a2)
{
  v7 = *v2;
  sub_25F30671C();
  OrderedDictionary<>.hash(into:)(v6, a1, a2);
  return sub_25F30676C();
}

uint64_t sub_25F1F32A8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_25F30671C();
  OrderedDictionary<>.hash(into:)(v6, a2, v4);
  return sub_25F30676C();
}

uint64_t sub_25F1F334C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v5 = *(a3 + 24);
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v17 - v13;
  (*(*(v10 - 8) + 32))(&v17 - v13, a1, v10);
  v15 = *(TupleTypeMetadata2 + 48);
  (*(*(v5 - 8) + 32))(&v14[v15], v17, v5);
  OrderedDictionary.updateValue(_:forKey:)(&v14[v15], v14, a3, v9);
  (*(v7 + 8))(v9, v6);
  return (*(v12 + 8))(v14, TupleTypeMetadata2);
}

uint64_t sub_25F1F3558(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F1F361C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_25F1F3658(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v10 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v11 = *(v10 + 2);
  *(v10 + 2) = v11 + 1;
  os_unfair_lock_unlock(v10 + 6);
  *a5 = v11;
  a5[1] = a1;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = a4;
}

uint64_t ManagedResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ManagedResource.init(_:)(a1, v3, v4, v5);
  return v2;
}

uint64_t ManagedResource.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 + *(*v4 + 96);
  v7 = *(*v4 + 80);
  type metadata accessor for ManagedResource.Request(0, v7, a3, a4);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  *(v6 + 40) = sub_25F3052DC();
  (*(*(v7 - 8) + 32))(v4 + *(*v4 + 88), a1, v7);
  return v4;
}

double ManagedResource.requestUnderlying(receive:revoke:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = *(*v6 + 80);

  sub_25F1F3658(a1, a2, a3, a4, v26);
  if (sub_25F1F3990(v6, v26))
  {
    (*(&v26[0] + 1))(v6 + *(*v6 + 88));
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v15 = v26[1];
  *(v14 + 32) = v26[0];
  *(v14 + 48) = v15;
  *(v14 + 64) = v27;
  *&v18 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ManagedResource.swift";
  *(&v18 + 1) = 127;
  v19 = 2;
  v20 = xmmword_25F30B5D0;
  v21 = "requestUnderlying(receive:revoke:)";
  v22 = 34;
  v23 = 2;
  CancellationToken.init(callsite:didCancel:)(&v18, sub_25F1F3BBC, v14, &v24);
  v16 = v25;
  result = *&v24;
  *a5 = v24;
  *(a5 + 16) = v16;
  return result;
}

BOOL sub_25F1F3990(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v19 = *(a2 + 3);
  v20 = *(a2 + 1);
  v4 = *a1;
  v5 = (a1 + *(*a1 + 96));
  swift_beginAccess();
  v8 = v5[1];
  if (v8)
  {
    v9 = *(a2 + 1);
    v22[0] = *a2;
    v22[1] = v9;
    v23 = a2[4];
    swift_beginAccess();
    v12 = type metadata accessor for ManagedResource.Request(0, *(v4 + 80), v10, v11);
    (*(*(v12 - 8) + 16))(v21, a2, v12);
    sub_25F30539C();
    sub_25F30533C();
    swift_endAccess();
  }

  else
  {
    v13 = *v5;
    v14 = v5[2];
    v15 = v5[3];
    v16 = v5[4];
    *v5 = v3;
    *(v5 + 1) = v20;
    *(v5 + 3) = v19;
    v17 = type metadata accessor for ManagedResource.Request(0, *(v4 + 80), v6, v7);
    (*(*(v17 - 8) + 16))(v22, a2, v17);
    sub_25F1F406C(v13, 0, v14, v15, v16);
  }

  return v8 == 0;
}

uint64_t sub_25F1F3B54(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *a2;
    sub_25F1F3BC8(&v4);
  }

  return result;
}

void sub_25F1F3BC8(uint64_t *a1)
{
  v2 = v1;
  sub_25F1F3D14(&v16, v15, v1, *a1);
  v4 = v16;
  v3 = v17;
  v6 = v18;
  v5 = v19;
  v7 = v20;
  v8 = v15[1];
  v9 = v15[2];
  v10 = v15[3];
  v13 = v15[4];
  v14 = v15[0];
  if (v17)
  {

    v5(v11);
  }

  if (v8)
  {
    v12 = *(*v1 + 88);

    v8(v2 + v12);
    sub_25F1F406C(v4, v3, v6, v5, v7);
    sub_25F1F406C(v14, v8, v9, v10, v13);
  }

  else
  {

    sub_25F1F406C(v4, v3, v6, v5, v7);
  }
}

void sub_25F1F3D14(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = (a3 + *(*a3 + 96));
  v9 = swift_beginAccess();
  v10 = v8[1];
  if (v10)
  {
    v11 = *v8 == a4;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v33 = v8[3];
    v31 = v8[4];
    v32 = v8[2];
    swift_beginAccess();
    type metadata accessor for ManagedResource.Request(255, *(v7 + 80), v19, v20);
    v21 = sub_25F30539C();

    WitnessTable = swift_getWitnessTable();
    v23 = swift_getWitnessTable();
    MEMORY[0x25F8D7B40](v34, v21, WitnessTable, v23);
    v24 = v35;
    v25 = *v8;
    v26 = v8[1];
    v27 = v8[2];
    v28 = v8[3];
    v29 = v8[4];
    v30 = v34[1];
    *v8 = v34[0];
    *(v8 + 1) = v30;
    v8[4] = v24;
    swift_endAccess();
    sub_25F1F406C(v25, v26, v27, v28, v29);
    *a1 = a4;
    a1[1] = v10;
    a1[2] = v32;
    a1[3] = v33;
    a1[4] = v31;
    v14 = *v8;
    v15 = v8[1];
    v16 = v8[2];
    v17 = v8[3];
    v18 = v8[4];
    sub_25F1F4314(v14, v15, v16, v17, v18);
  }

  else
  {
    *&v34[0] = v8[5];
    MEMORY[0x28223BE20](v9);
    type metadata accessor for ManagedResource.Request(255, *(v7 + 80), v12, v13);
    sub_25F30539C();

    swift_getWitnessTable();
    v8[5] = sub_25F30609C();

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v18;
}

uint64_t ManagedResource.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = (v0 + *(*v0 + 96));
  sub_25F1F406C(*v1, v1[1], v1[2], v1[3], v1[4]);

  return v0;
}

void sub_25F1F406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t ManagedResource.__deallocating_deinit()
{
  ManagedResource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F1F4108(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F1F41E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS15ManagedResourceC7Request33_71DF8D27CF556E3FD5D35DA4A5A793FALLVyx_GSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F1F423C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F1F4284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25F1F4314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_25F1F4358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PredicatedWrapper.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a1;
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = a3;
  v37 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v13 = type metadata accessor for Predicated(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = sub_25F305C1C();
  v32 = *(v14 - 8);
  v33 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v18 = *(v13 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  v24 = *(v9 + 16);
  v35 = v8;
  v24(v11, v38, v8);
  Predicated.init(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  if ((*(v18 + 48))(v17, 1, v13) == 1)
  {
    (*(v9 + 8))(v38, v35);
    (*(v32 + 8))(v17, v33);
    v25 = 1;
    v26 = v36;
    v27 = v37;
  }

  else
  {
    (*(v18 + 32))(v23, v17, v13);
    (*(v18 + 16))(v21, v23, v13);
    v28 = v36;
    v29 = v21;
    v30 = v37;
    (*(v34 + 24))(v29, v37);
    (*(v9 + 8))(v38, v35);
    (*(v18 + 8))(v23, v13);
    v25 = 0;
    v27 = v30;
    v26 = v28;
  }

  return (*(*(v27 - 8) + 56))(v26, v25, 1);
}

uint64_t PredicatedWrapper.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Predicated(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  (*(a2 + 32))(a1, a2);
  v13 = swift_getAssociatedTypeWitness();
  (*(*(v13 - 8) + 16))(a3, v12, v13);
  return (*(v10 + 8))(v12, v9);
}

uint64_t PredicatedWrapper.proof.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Predicated(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(a2 + 32))(a1, a2);
  v13 = *(v9 + 36);
  v14 = swift_getAssociatedTypeWitness();
  (*(*(v14 - 8) + 16))(a3, &v12[v13], v14);
  return (*(v10 + 8))(v12, v9);
}

uint64_t OS_dispatch_queue.runAsync<A>(work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F1F4AB8, 0, 0);
}

uint64_t sub_25F1F4AB8()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_25F1F4BB0;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x636E7973416E7572, 0xEF293A6B726F7728, sub_25F1F50C0, v1, v4);
}

uint64_t sub_25F1F4BB0()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F1F4CEC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F1F4CEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F1F4D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v23 = a4;
  v26 = a2;
  v7 = sub_25F30490C();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25F30494C();
  v10 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v13 = sub_25F30542C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  (*(v14 + 16))(&v22 - v15, a1, v13);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = swift_allocObject();
  v19 = v22;
  *(v18 + 2) = a5;
  *(v18 + 3) = v19;
  *(v18 + 4) = v23;
  (*(v14 + 32))(&v18[v17], v16, v13);
  aBlock[4] = sub_25F1F5540;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1D8C38;
  aBlock[3] = &block_descriptor_2;
  v20 = _Block_copy(aBlock);

  sub_25F30492C();
  v27 = MEMORY[0x277D84F90];
  sub_25F1D9034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
  sub_25F1D908C();
  sub_25F305E5C();
  MEMORY[0x25F8D7C70](0, v12, v9, v20);
  _Block_release(v20);
  (*(v25 + 8))(v9, v7);
  (*(v10 + 8))(v12, v24);
}

uint64_t sub_25F1F50CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v13 - v10;
  v9();
  (*(v5 + 16))(v8, v11, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30542C();
  sub_25F30541C();
  return (*(v5 + 8))(v11, a4);
}

uint64_t static OS_dispatch_queue.runAsync<A>(qos:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F1F5294, 0, 0);
}

uint64_t sub_25F1F5294()
{
  sub_25F1F54F4();
  v0[7] = sub_25F305ADC();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_25F1F5354;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[2];

  return OS_dispatch_queue.runAsync<A>(work:)(v5, v4, v2, v3);
}

uint64_t sub_25F1F5354()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F1F5490, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F1F5490()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_25F1F54F4()
{
  result = qword_27FD54668;
  if (!qword_27FD54668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD54668);
  }

  return result;
}

uint64_t sub_25F1F5540()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = *(sub_25F30542C() - 8);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_25F1F50CC(v3, v4, v5, v1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CommandLineToolInvocation.launchPath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CommandLineToolInvocation.workingPath.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CommandLineToolInvocation.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *CommandLineToolInvocation.log.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t CommandLineToolInvocation.failedWhenRunningHandler.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t CommandLineToolInvocation.failedToLaunchError.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

__n128 CommandLineToolInvocation.init(launchPath:launchArguments:environment:workingPath:name:log:printToStandardOutput:failedWhenRunningHandler:failedToLaunchError:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, unsigned __int8 a11, __n128 a12, __n128 a13)
{
  result = a12;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4].n128_u64[0] = a10;
  a9[4].n128_u8[8] = a11;
  a9[5] = a12;
  a9[6] = a13;
  return result;
}

uint64_t CommandLineToolInvocation.commandLineDescription.getter()
{
  v1 = v0[2];
  v15 = *v0;

  MEMORY[0x25F8D7130](32, 0xE100000000000000);
  v2 = v15;
  v3 = *(v1 + 16);
  if (v3)
  {
    v14 = MEMORY[0x277D84F90];
    sub_25F1BD008(0, v3, 0);
    sub_25F1BF118();
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      if (sub_25F305D5C())
      {
        MEMORY[0x25F8D7130](v6, v5);
        MEMORY[0x25F8D7130](34, 0xE100000000000000);

        v6 = 34;
        v5 = 0xE100000000000000;
      }

      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25F1BD008((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v3;
    }

    while (v3);
    v2 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1F72CC(qword_27FD52F88, &qword_27FD52F80, &qword_25F309110, MEMORY[0x277D83958]);
  v10 = sub_25F304CAC();
  v12 = v11;

  MEMORY[0x25F8D7130](v10, v12);

  return v2;
}

uint64_t CommandLineToolInvocation.toolName.getter()
{
  v0 = sub_25F304DDC();
  v1 = [v0 lastPathComponent];

  v2 = sub_25F304E0C();
  return v2;
}

uint64_t CommandLineToolInvocation.run()()
{
  sub_25F304E6C();
  *(v1 + 296) = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E08, &qword_25F30B780);
  *(v1 + 304) = v2;
  *(v1 + 312) = *(v2 - 8);
  *(v1 + 320) = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54670, &unk_25F30B788);
  *(v1 + 328) = v3;
  *(v1 + 336) = *(v3 - 8);
  *(v1 + 344) = swift_task_alloc();
  v4 = sub_25F3044DC();
  *(v1 + 352) = v4;
  *(v1 + 360) = *(v4 - 8);
  *(v1 + 368) = swift_task_alloc();
  v5 = v0[5];
  *(v1 + 80) = v0[4];
  *(v1 + 96) = v5;
  *(v1 + 112) = v0[6];
  v6 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v6;
  v7 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v7;

  return MEMORY[0x2822009F8](sub_25F1F5BAC, 0, 0);
}

uint64_t sub_25F1F5BAC()
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v1 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v2 = *(v1 + 2);
  *(v0 + 376) = v2;
  *(v1 + 2) = v2 + 1;
  os_unfair_lock_unlock(v1 + 6);
  v3 = *(v0 + 80);
  *(v0 + 240) = v3;
  if (v3)
  {
    sub_25F1F71E4(v0 + 16, v0 + 128);
    sub_25F1F721C(v0 + 240, v0 + 272);
    sub_25F305FAC();

    *(v0 + 280) = v2;
    v4 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v4);

    MEMORY[0x25F8D7130](8285, 0xE200000000000000);
    v5 = sub_25F304DDC();
    v6 = [v5 lastPathComponent];

    v7 = sub_25F304E0C();
    v9 = v8;

    MEMORY[0x25F8D7130](v7, v9);

    MEMORY[0x25F8D7130](0x7461636F766E6920, 0xEB000000006E6F69);
    *(v0 + 288) = v2;
    v10 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v10);

    MEMORY[0x25F8D7130](93, 0xE100000000000000);
    v11 = sub_25F3059EC();
    sub_25F2926C0(0x2064695BuLL, 0xE400000000000000, 543451483, 0xE400000000000000, v11, v3, (v0 + 16));
    sub_25F1F728C(v0 + 16);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CCACB0]) init];
  *(v0 + 384) = v12;
  if (*(v0 + 56))
  {
    v14 = *(v0 + 360);
    v13 = *(v0 + 368);
    v15 = *(v0 + 352);
    sub_25F30444C();
    v16 = sub_25F30446C();
    (*(v14 + 8))(v13, v15);
    [v12 setCurrentDirectoryURL_];
  }

  v18 = *(v0 + 360);
  v17 = *(v0 + 368);
  v19 = *(v0 + 352);
  v20 = *(v0 + 24);
  *(v0 + 392) = *(v0 + 16);
  *(v0 + 400) = v20;
  sub_25F30444C();
  v21 = sub_25F30446C();
  (*(v18 + 8))(v17, v19);
  [v12 setExecutableURL_];

  v22 = sub_25F30524C();
  [v12 setArguments_];

  v23 = sub_25F304A5C();
  [v12 setEnvironment_];

  v24 = [v12 isRunning];
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v33 = *(v0 + 312);
    v32 = *(v0 + 320);
    v34 = *(v0 + 304);
    *(swift_task_alloc() + 16) = v12;
    (*(v33 + 104))(v32, *MEMORY[0x277D85778], v34);
    sub_25F30553C();

    v35 = swift_task_alloc();
    *(v0 + 408) = v35;
    *(v35 + 16) = v12;
    *(v35 + 24) = 1;
    v36 = swift_task_alloc();
    *(v0 + 416) = v36;
    *(v36 + 16) = 1;
    *(v36 + 24) = v12;
    v24 = swift_task_alloc();
    *(v0 + 424) = v24;
    *v24 = v0;
    *(v24 + 8) = sub_25F1F607C;
    v25 = &unk_25F30A490;
    v27 = sub_25F1F711C;
    v31 = MEMORY[0x277D84F78] + 8;
    v26 = v35;
    v28 = v36;
    v29 = 0;
    v30 = 0;
  }

  return MEMORY[0x282200830](v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_25F1F607C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    sub_25F1F7128(v2 + 240);

    v3 = sub_25F1F63A4;
  }

  else
  {

    v3 = sub_25F1F61C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F1F61C4()
{
  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  v1[1] = sub_25F1F6268;

  return sub_25F1F6B30();
}

void sub_25F1F6268(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 448) = a1;

    MEMORY[0x2822009F8](sub_25F1F64A4, 0, 0);
  }
}

uint64_t sub_25F1F63A4()
{
  v10 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v9[4] = *(v0 + 80);
  v9[5] = v4;
  v9[6] = *(v0 + 112);
  v5 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v9[1] = v5;
  v6 = *(v0 + 64);
  v9[2] = *(v0 + 48);
  v9[3] = v6;
  v3(v9, v1);
  swift_willThrow();

  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25F1F64A4()
{
  v59 = v0;
  v1 = sub_25F1E1A04(*(v0 + 448));
  v3 = v2;

  sub_25F304E4C();
  v4 = sub_25F304E2C();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = MEMORY[0x277D837D0];
  if (*(v0 + 88))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54690, &qword_25F30B7B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25F3077D0;
    *(v9 + 56) = v8;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;

    sub_25F3066EC();
  }

  v10 = *(v0 + 240);
  if (v10)
  {
    v56 = v1;
    v11 = *(v0 + 376);
    v12 = *(v0 + 384);
    LODWORD(v51) = sub_25F3059EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
    v53 = v7;
    v13 = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25F30B760;
    *(v0 + 264) = v11;
    v15 = sub_25F3064DC();
    v17 = v16;
    *(v14 + 56) = v8;
    v18 = sub_25F1F7190();
    *(v14 + 64) = v18;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v19 = [v12 processIdentifier];
    v20 = MEMORY[0x277D849A8];
    v21 = MEMORY[0x277D84A20];
    *(v14 + 96) = MEMORY[0x277D849A8];
    *(v14 + 104) = v21;
    *(v14 + 72) = v19;
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);
    *(v14 + 136) = v8;
    *(v14 + 144) = v18;
    *(v14 + 112) = v23;
    *(v14 + 120) = v22;

    v24 = v12;
    v1 = v56;
    v25 = [v24 &selRef_processInfo + 1];
    *(v14 + 176) = v20;
    *(v14 + 184) = v21;
    *(v14 + 152) = v25;
    sub_25F3046FC("[id %{public}@] (pid %{public}d) %@ completed with status: %d", 61, 2, &dword_25F1A2000, v10, v51, v14);
    v6 = v13;
    v7 = v53;

    sub_25F1F7128(v0 + 240);
  }

  result = [*(v0 + 384) isRunning];
  if (result)
  {
    __break(1u);
  }

  else if ([*(v0 + 384) terminationReason] == 1 && !objc_msgSend(*(v0 + 384), sel_terminationStatus))
  {
    v57 = v1;
    v39 = *(v0 + 240);
    if (v39)
    {
      v40 = *(v0 + 376);
      v41 = *(v0 + 336);
      v55 = *(v0 + 344);
      v52 = *(v0 + 384);
      v54 = *(v0 + 328);

      sub_25F305FAC();

      *&v58[0] = 543451483;
      *(&v58[0] + 1) = 0xE400000000000000;
      *(v0 + 256) = v40;
      v42 = sub_25F3064DC();
      MEMORY[0x25F8D7130](v42);

      MEMORY[0x25F8D7130](8285, 0xE200000000000000);
      v43 = sub_25F304DDC();
      v44 = [v43 lastPathComponent];

      v45 = sub_25F304E0C();
      v47 = v46;

      MEMORY[0x25F8D7130](v45, v47);

      MEMORY[0x25F8D7130](0x74757074756F20, 0xE700000000000000);
      v48 = sub_25F3059FC();
      sub_25F293480(v58[0], SDWORD2(v58[0]), 0, 0, v48, v39);

      sub_25F1D4BB0(v57, v3);
      (*(v41 + 8))(v55, v54);
    }

    else
    {
      v49 = *(v0 + 384);
      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
      sub_25F1D4BB0(v57, v3);
    }

    v50 = *(v0 + 8);

    return v50(v6, v7);
  }

  else
  {
    if ((sub_25F30559C() & 1) == 0)
    {
      v27 = *(v0 + 240);
      if (v27)
      {
        v28 = *(v0 + 376);
        v29 = *(v0 + 384);

        sub_25F305FAC();

        *&v58[0] = 543451483;
        *(&v58[0] + 1) = 0xE400000000000000;
        *(v0 + 248) = v28;
        v30 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v30);

        MEMORY[0x25F8D7130](8285, 0xE200000000000000);
        MEMORY[0x25F8D7130](*(v0 + 64), *(v0 + 72));
        MEMORY[0x25F8D7130](0x2064657469786520, 0xED00002068746977);
        *(v0 + 456) = [v29 terminationStatus];
        v31 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v31);

        v32 = sub_25F3059EC();
        sub_25F293480(v58[0], SDWORD2(v58[0]), 0, 0, v32, v27);
      }
    }

    v33 = *(v0 + 384);
    v34 = *(v0 + 96);
    v35 = *(v0 + 96);
    v58[4] = *(v0 + 80);
    v58[5] = v35;
    v58[6] = *(v0 + 112);
    v36 = *(v0 + 32);
    v58[0] = *(v0 + 16);
    v58[1] = v36;
    v37 = *(v0 + 64);
    v58[2] = *(v0 + 48);
    v58[3] = v37;
    v34(v58, v6, v7);

    swift_willThrow();

    sub_25F1D4BB0(v1, v3);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

    v38 = *(v0 + 8);

    return v38();
  }

  return result;
}

uint64_t sub_25F1F6B30()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54670, &unk_25F30B788);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54698, &unk_25F30B870);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F1F6C64, 0, 0);
}

uint64_t sub_25F1F6C64()
{
  (*(v0[4] + 16))(v0[5], v0[2], v0[3]);
  sub_25F1F72CC(&qword_27FD546A0, &qword_27FD54670, &unk_25F30B788, MEMORY[0x277D857C0]);
  sub_25F3055EC();
  v0[9] = MEMORY[0x277D84F90];
  v1 = sub_25F1F72CC(&qword_27FD546A8, &qword_27FD54698, &unk_25F30B870, MEMORY[0x277D857B0]);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_25F1F6DB8;
  v3 = v0[6];

  return MEMORY[0x282200308](v0 + 12, v3, v1);
}

uint64_t sub_25F1F6DB8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {

    v2 = sub_25F1F7094;
  }

  else
  {
    v2 = sub_25F1F6ED4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F1F6ED4()
{
  v1 = *(v0 + 96);
  if (*(v0 + 97))
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v2 = *(v0 + 8);
    v3 = *(v0 + 72);

    return v2(v3);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 72);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_25F1C57EC(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_25F1C57EC((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v6[v8 + 32] = v1;
    *(v0 + 72) = v6;
    v9 = sub_25F1F72CC(&qword_27FD546A8, &qword_27FD54698, &unk_25F30B870, MEMORY[0x277D857B0]);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_25F1F6DB8;
    v11 = *(v0 + 48);

    return MEMORY[0x282200308](v0 + 96, v11, v9);
  }
}

uint64_t sub_25F1F7094()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F1F7128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54678, &qword_25F30B798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F1F7190()
{
  result = qword_27FD54688;
  if (!qword_27FD54688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54688);
  }

  return result;
}

uint64_t sub_25F1F721C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54678, &qword_25F30B798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1F72CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t CommandLineOptions.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for CommandLineOption(0, a1, a2, a3);
  *a4 = sub_25F3052DC();
  type metadata accessor for CommandLineArgumentConsumer(0, a1, v6, v7);
  result = sub_25F3052DC();
  a4[1] = result;
  return result;
}

void CommandLineOptions.init(consumer:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v15 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 24);
  type metadata accessor for CommandLineOption(0, a2, a3, a4);
  v14 = a1[2];
  *a5 = sub_25F3052DC();
  type metadata accessor for CommandLineArgumentConsumer(255, a2, v10, v11);
  sub_25F3064EC();
  swift_allocObject();
  v12 = sub_25F30527C();
  *v13 = v15;
  *(v13 + 16) = v8;
  *(v13 + 24) = v9;
  *(v13 + 32) = v14;
  v16 = v12;
  sub_25F30539C();
  nullsub_2();
  a5[1] = v16;
}

uint64_t CommandLineOptions.init(option:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for CommandLineOption(255, a2, a3, a4);
  sub_25F3064EC();
  swift_allocObject();
  v8 = sub_25F30527C();
  *v9 = *a1;
  v11 = *(a1 + 32);
  v10 = *(a1 + 48);
  v12 = *(a1 + 16);
  *(v9 + 64) = *(a1 + 64);
  *(v9 + 32) = v11;
  *(v9 + 48) = v10;
  *(v9 + 16) = v12;
  v16 = v8;
  sub_25F30539C();
  nullsub_2();
  *a5 = v16;
  type metadata accessor for CommandLineArgumentConsumer(0, a2, v13, v14);
  result = sub_25F3052DC();
  a5[1] = result;
  return result;
}

uint64_t CommandLineOptions.init(options:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a1();
  type metadata accessor for CommandLineArgumentConsumer(0, a2, v5, v6);
  result = sub_25F3052DC();
  a3[1] = result;
  return result;
}

uint64_t CommandLineOptions.init(consumers:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for CommandLineOption(0, a2, a2, a3);
  *a4 = sub_25F3052DC();
  result = a1();
  a4[1] = result;
  return result;
}

void CommandLineOptions.init(option:consumer:)(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v21 = *a2;
  v9 = *(a2 + 2);
  v10 = *(a2 + 24);
  type metadata accessor for CommandLineOption(255, a3, a3, a4);
  sub_25F3064EC();
  swift_allocObject();
  v11 = sub_25F30527C();
  *v12 = *a1;
  v14 = *(a1 + 32);
  v13 = *(a1 + 48);
  v15 = *(a1 + 16);
  *(v12 + 64) = *(a1 + 64);
  *(v12 + 32) = v14;
  *(v12 + 48) = v13;
  *(v12 + 16) = v15;
  v22 = v11;
  sub_25F30539C();
  v20 = a2[2];
  nullsub_2();
  *a5 = v22;
  type metadata accessor for CommandLineArgumentConsumer(255, a3, v16, v17);
  sub_25F3064EC();
  swift_allocObject();
  v18 = sub_25F30527C();
  *v19 = v21;
  *(v19 + 16) = v9;
  *(v19 + 24) = v10;
  *(v19 + 32) = v20;
  v23 = v18;
  sub_25F30539C();
  nullsub_2();
  a5[1] = v23;
}

void CommandLineOptions.init(options:consumer:)(uint64_t (*a1)(void)@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v13 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 24);
  *a4 = a1();
  type metadata accessor for CommandLineArgumentConsumer(255, a3, v9, v10);
  sub_25F3064EC();
  swift_allocObject();
  v11 = sub_25F30527C();
  *v12 = v13;
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 32) = a2[2];
  v14 = v11;
  sub_25F30539C();
  nullsub_2();
  a4[1] = v14;
}

uint64_t CommandLineOptions.init(options:consumers:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  *a3 = a1();
  result = a2();
  a3[1] = result;
  return result;
}

uint64_t CommandLineOptions.shortUsage.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  v6 = *(a1 + 16);
  type metadata accessor for CommandLineOption(255, v6, a3, a4);
  sub_25F30539C();
  swift_getWitnessTable();
  v7 = sub_25F30588C();
  v10 = 0x534E4F4954504FLL;
  if (v7)
  {
    v10 = 0;
  }

  v11 = 0xE700000000000000;
  if (v7)
  {
    v11 = 0xE000000000000000;
  }

  v19 = v10;
  v20 = v11;
  v12 = type metadata accessor for CommandLineArgumentConsumer(0, v6, v8, v9);

  if (sub_25F30531C())
  {
    v13 = 0;
    v14 = v5 + 72;
    while (1)
    {
      v16 = sub_25F3052FC();
      result = sub_25F30528C();
      if ((v16 & 1) == 0)
      {
        break;
      }

      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_14;
      }

      if ((v20 & 0xF00000000000000) != 0)
      {
        MEMORY[0x25F8D7130](32, 0xE100000000000000);
      }

      v15 = CommandLineArgumentConsumer.shortUsage.getter(v12);
      MEMORY[0x25F8D7130](v15);

      ++v13;
      v14 += 48;
      if (v18 == sub_25F30531C())
      {
        goto LABEL_12;
      }
    }

    result = sub_25F30601C();
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    return v19;
  }

  return result;
}

uint64_t CommandLineOptions.parse<A>(_:into:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = v6;
  v120 = a1;
  v104 = a5;
  v110 = sub_25F30427C();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a4;
  v113 = *(*(a4 + 8) + 8);
  v121 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v115 = &v101 - v14;
  v15 = *(a2 + 16);
  MEMORY[0x28223BE20](v13);
  v17 = *v5;
  v103 = v5[1];
  v107 = v18;
  v19 = *(v18 + 16);
  v112 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v17;
  v19();
  v122 = v15;
  v23 = type metadata accessor for CommandLineOption(255, v15, v21, v22);
  v24 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v25 = sub_25F3052DC();
  v26 = sub_25F1CCBBC(v25, v24, v23, MEMORY[0x277D837E0]);

  v142 = v26;

  v27 = sub_25F30531C();
  v111 = AssociatedTypeWitness;
  v118 = v23;
  if (v27)
  {
    v28 = sub_25F3052FC();
    sub_25F30528C();
    AssociatedTypeWitness = v23;
    if (v28)
    {
      v125 = v6;
      v29 = 0;
      v116 = (v23 - 8);
      v117 = v20 + 32;
      v114 = v20;
      while (1)
      {
        v30 = (v117 + 72 * v29);
        v137 = *v30;
        v31 = v30[1];
        v32 = v30[2];
        v33 = v30[3];
        v141 = *(v30 + 8);
        v139 = v32;
        v140 = v33;
        v138 = v31;
        v34 = __OFADD__(v29, 1);
        v35 = v29 + 1;
        if (v34)
        {
          break;
        }

        v147 = v35;
        v133 = v30[1];
        v134 = v30[2];
        v135 = v30[3];
        v136 = *(v30 + 8);
        v132 = *v30;
        v36 = *(AssociatedTypeWitness - 8);
        v37 = *(v36 + 16);
        v37(v130, &v137, AssociatedTypeWitness);
        v38 = CommandLineOption.names.getter();
        v39 = *(v38 + 16);
        if (v39)
        {
          AssociatedConformanceWitness = v38;
          v124 = v36;
          v134 = v139;
          v135 = v140;
          v136 = v141;
          v132 = v137;
          v133 = v138;
          v40 = (v38 + 40);
          do
          {
            v41 = *(v40 - 1);
            v42 = *v40;
            v130[3] = v135;
            v131 = v136;
            v130[1] = v133;
            v130[2] = v134;
            v130[0] = v132;
            v128 = v41;
            v129 = v42;
            v37(&v126, &v137, AssociatedTypeWitness);
            sub_25F304B4C();

            sub_25F304B9C();
            v40 += 2;
            --v39;
          }

          while (v39);

          (*(v124 + 8))(&v137, AssociatedTypeWitness);
        }

        else
        {

          (*(v36 + 8))(&v137, AssociatedTypeWitness);
        }

        v43 = sub_25F30531C();
        v29 = v147;
        if (v147 == v43)
        {

          v7 = v125;
          AssociatedTypeWitness = v111;
          goto LABEL_15;
        }

        v44 = sub_25F3052FC();
        sub_25F30528C();
        if ((v44 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_52:
      sub_25F30601C();
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

LABEL_51:

    (*(v107 + 8))(v112, v122);
    v97 = v115;
LABEL_47:
    (*(v106 + 8))(v97, AssociatedTypeWitness);
LABEL_48:
  }

  else
  {

LABEL_15:
    v147 = swift_allocBox();
    v46 = v45;
    sub_25F3057AC();
    sub_25F3057FC();
    v117 = v46;
    swift_beginAccess();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v47 = 0;
    v102 = 0;
    v116 = (v108 + 8);
    while (1)
    {
      v48 = v7;
      while (1)
      {
        if ((sub_25F304CCC() & 1) == 0)
        {
LABEL_43:
          (*(v107 + 32))(v104, v112, v122);
          (*(v106 + 8))(v115, AssociatedTypeWitness);
          goto LABEL_48;
        }

        v105 = v47;
        while (1)
        {
          v125 = v48;
          v49 = v120;
          v50 = v121;
          v51 = sub_25F3058FC();
          v53 = *v52;
          AssociatedTypeWitness = v52[1];

          v51(&v137, 0);
          sub_25F1F86BC(v147, v49, v122, v50, v119);
          v54 = sub_25F30505C();
          v124 = AssociatedTypeWitness;
          if ((v54 & 1) == 0)
          {
            break;
          }

          v126 = 0;
          v127 = 0;
          *&v137 = v53;
          *(&v137 + 1) = AssociatedTypeWitness;
          *&v132 = 61;
          *(&v132 + 1) = 0xE100000000000000;
          sub_25F1BF118();
          v57 = sub_25F305D5C();
          v114 = v53;
          if (v57)
          {
            *&v137 = 61;
            *(&v137 + 1) = 0xE100000000000000;
            MEMORY[0x28223BE20](v57);
            *(&v101 - 2) = &v137;

            v58 = v125;
            v60 = sub_25F1BA664(0x7FFFFFFFFFFFFFFFLL, 1, sub_25F1F8CB8, (&v101 - 4), v53, AssociatedTypeWitness, v59);
            if (!v60[2])
            {
              goto LABEL_53;
            }

            v61 = v60;
            AssociatedTypeWitness = v58;
            v63 = v60[4];
            v62 = v60[5];
            v64 = v60[6];
            v65 = v60[7];

            v66 = MEMORY[0x25F8D7070](v63, v62, v64, v65);
            v68 = v67;

            if (v61[2] < 2uLL)
            {
              goto LABEL_54;
            }

            v69 = v61[8];
            v108 = v61[9];
            v125 = AssociatedTypeWitness;
            v70 = v61[10];
            v71 = v61[11];

            v72 = MEMORY[0x25F8D7070](v69, v108, v70, v71);
            v74 = v73;
            v75 = v125;

            v126 = v72;
            v127 = v74;
            v108 = v74;
          }

          else
          {
            v75 = v125;

            v108 = 0;
            v66 = v53;
            v68 = v76;
          }

          *&v132 = v66;
          *(&v132 + 1) = v68;
          v77 = v109;
          sub_25F30422C();
          v78 = sub_25F305D1C();
          v80 = v79;
          (*v116)(v77, v110);

          v128 = v78;
          v129 = v80;
          sub_25F304B8C();

          v137 = v132;
          v138 = v133;
          v139 = v134;
          v140 = v135;
          v141 = v136;
          if (!*(&v132 + 1))
          {
            sub_25F1F8C2C();
            swift_allocError();
            v95 = v124;
            *v96 = v114;
            v96[1] = v95;
            swift_willThrow();
            (*(v107 + 8))(v112, v122);

LABEL_45:
            v97 = v115;
            AssociatedTypeWitness = v111;
            goto LABEL_47;
          }

          v81 = *(&v140 + 1);
          v143[0] = v137;
          v143[1] = v133;
          v143[2] = v134;
          v144 = v135;
          v145 = *(&v140 + 1);
          v146 = v141;

          LOBYTE(v132) = 0;
          MEMORY[0x28223BE20](v82);
          v83 = v121;
          *(&v101 - 10) = v122;
          *(&v101 - 9) = v83;
          *(&v101 - 8) = v119;
          *(&v101 - 7) = &v126;
          v84 = v147;
          *(&v101 - 6) = &v132;
          *(&v101 - 5) = v84;
          v85 = v115;
          *(&v101 - 4) = v115;
          *(&v101 - 3) = v143;
          *(&v101 - 2) = v120;
          v81(v112, sub_25F1F8C80);
          v48 = v75;
          AssociatedTypeWitness = v111;
          if (v75)
          {
            v98 = sub_25F305C1C();
            (*(*(v98 - 8) + 8))(&v137, v98);
            (*(v107 + 8))(v112, v122);

            v97 = v85;
            goto LABEL_47;
          }

          v86 = sub_25F305C1C();
          (*(*(v86 - 8) + 8))(&v137, v86);

          if ((sub_25F304CCC() & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        v87 = v53;
        type metadata accessor for CommandLineArgumentConsumer(0, v122, v55, v56);
        if (v102 >= sub_25F30531C())
        {
          sub_25F1F8C2C();
          swift_allocError();
          v99 = v124;
          *v100 = v53;
          v100[1] = v99;
          swift_willThrow();
          (*(v107 + 8))(v112, v122);
          goto LABEL_45;
        }

        sub_25F3053DC();
        v88 = v138;
        v89 = BYTE8(v138);
        v90 = v125;
        (v139)(v112, v87, v124);
        AssociatedTypeWitness = v111;
        if ((v89 & 1) == 0)
        {
          break;
        }

        v48 = v90;
        if (v90)
        {
          goto LABEL_51;
        }

        v47 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
          __break(1u);
          goto LABEL_56;
        }
      }

      v7 = v90;
      if (v90)
      {
        goto LABEL_51;
      }

      v92 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        break;
      }

      v93 = v92 < v88;
      if (v92 < v88)
      {
        v47 = v105 + 1;
      }

      else
      {
        v47 = 0;
      }

      v94 = v102;
      if (!v93)
      {
        v94 = v102 + 1;
      }

      v102 = v94;
    }

LABEL_56:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F1F86BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-v10];
  v12 = swift_projectBox();
  swift_beginAccess();
  (*(v6 + 16))(v9, v12, AssociatedTypeWitness);
  sub_25F3057CC();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  swift_beginAccess();
  return (*(v6 + 40))(v12, v11, AssociatedTypeWitness);
}

uint64_t sub_25F1F8858(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v31 = a5;
  v37 = a4;
  v33 = a9;
  v34 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v29 - v15;
  v32 = a3;
  v17 = swift_projectBox();
  if (a1[1] && (*a2 & 1) == 0)
  {
    v25 = *a1;
    *a2 = 1;
  }

  else
  {
    swift_beginAccess();
    v18 = *(v14 + 16);
    v18(v16, v17, AssociatedTypeWitness);
    v30 = a8;
    swift_getAssociatedConformanceWitness();
    v19 = sub_25F304CCC();
    v20 = *(v14 + 8);
    v20(v16, AssociatedTypeWitness);
    if (v19)
    {
      swift_beginAccess();
      v18(v16, v17, AssociatedTypeWitness);
      v21 = v34;
      v22 = v30;
      v23 = sub_25F3058FC();
      v25 = *v24;

      v23(v36, 0);
      v20(v16, AssociatedTypeWitness);
      sub_25F1F86BC(v32, v21, v35, v22, v33);
    }

    else
    {
      v26 = *v31;
      v25 = v31[1];
      sub_25F1F8D6C();
      swift_allocError();
      *v27 = v26;
      v27[1] = v25;
      swift_willThrow();
    }
  }

  return v25;
}

unint64_t sub_25F1F8B08()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F305FAC();

  MEMORY[0x25F8D7130](v1, v2);
  MEMORY[0x25F8D7130](34, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t sub_25F1F8B94()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F305FAC();

  MEMORY[0x25F8D7130](v1, v2);
  MEMORY[0x25F8D7130](0xD000000000000012, 0x800000025F318070);
  return 0x22206E6F6974704FLL;
}

unint64_t sub_25F1F8C2C()
{
  result = qword_27FD546B0[0];
  if (!qword_27FD546B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD546B0);
  }

  return result;
}

uint64_t sub_25F1F8CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_25F1F8D6C()
{
  result = qword_27FD54838;
  if (!qword_27FD54838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54838);
  }

  return result;
}

uint64_t IteratorProtocol.map<A>(withBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocBox();
  (*(*(a3 - 8) + 16))(v12, v5, a3);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = v11;
  v13[6] = a1;
  v13[7] = a2;

  return MEMORY[0x2821FCFD8](sub_25F1F9138, v13, a4);
}

uint64_t sub_25F1F8ED0@<X0>(void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v21 = a3;
  v22 = a2;
  v23 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v21 - v15;
  swift_projectBox();
  swift_beginAccess();
  sub_25F305CDC();
  swift_endAccess();
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v17 = 1;
    v18 = v23;
  }

  else
  {
    (*(v14 + 32))(v16, v13, AssociatedTypeWitness);
    v19 = v23;
    v22(v16);
    (*(v14 + 8))(v16, AssociatedTypeWitness);
    v17 = 0;
    v18 = v19;
  }

  return (*(*(a5 - 8) + 56))(v18, v17, 1, a5);
}

uint64_t AnyIterator.map<A>(withBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;

  return MEMORY[0x2821FCFD8](sub_25F1F9404, v10, a5);
}

uint64_t sub_25F1F91E8@<X0>(void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19 = a2;
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F305ECC();
  if ((*(v13 + 48))(v12, 1, a3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v16 = 1;
  }

  else
  {
    (*(v13 + 32))(v15, v12, a3);
    v19(v15);
    (*(v13 + 8))(v15, a3);
    v16 = 0;
  }

  return (*(*(a4 - 8) + 56))(a5, v16, 1, a4);
}

uint64_t sub_25F1F9438(uint64_t a1)
{
  v6 = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_25F2025A0(v1, boxed_opaque_existential_1);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  swift_getDynamicType();
  v3 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t HumanReadableError.errorTypeDescription.getter(uint64_t a1)
{
  v7 = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v1, a1);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  swift_getDynamicType();
  v4 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_25F1F955C(uint64_t a1)
{
  v11[4] = a1;
  v11[3] = &type metadata for JITError;
  v11[0] = a1;
  __swift_project_boxed_opaque_existential_1(v11, &type metadata for JITError);
  swift_getDynamicType();

  v2 = sub_25F30685C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v11);
  v11[0] = v2;
  v11[1] = v4;
  if (*(a1 + 16))
  {
    MEMORY[0x25F8D7130](0xD000000000000019, 0x800000025F318120);
  }

  v5 = JITError.additionalDiagnostics.getter();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v7, v8);
  }

  sub_25F1BF118();
  v9 = sub_25F305D2C();

  return v9;
}

uint64_t sub_25F1F96B4(uint64_t a1)
{
  v8[3] = &type metadata for InvalidAuditTokenDeserialization;
  v8[0] = a1;
  __swift_project_boxed_opaque_existential_1(v8, &type metadata for InvalidAuditTokenDeserialization);
  swift_getDynamicType();

  v2 = sub_25F30685C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v8);
  v8[0] = v2;
  v8[1] = v4;
  sub_25F305FAC();

  v5 = MEMORY[0x25F8D7420](a1, MEMORY[0x277D84CC0]);
  MEMORY[0x25F8D7130](v5);

  MEMORY[0x25F8D7130](0xD000000000000027, 0x800000025F3181D0);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);

  sub_25F1BF118();
  v6 = sub_25F305D2C();

  return v6;
}

uint64_t sub_25F1F9864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[3] = a5;
  v11 = swift_allocObject();
  v17[0] = v11;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  __swift_project_boxed_opaque_existential_1(v17, a5);
  swift_getDynamicType();

  v12 = sub_25F30685C();
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(v17);
  v17[0] = v12;
  v17[1] = v14;
  if (a2)
  {
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](a1, a2);
  }

  if (a4)
  {
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](a3, a4);
  }

  sub_25F1BF118();
  v15 = sub_25F305D2C();

  return v15;
}

uint64_t sub_25F1F99D0()
{
  v1 = v0;
  v13 = *v0;
  v14 = v13;
  v2 = v0[3];
  if (v2)
  {
    v3 = v1[2];
    v4 = v2;
    goto LABEL_5;
  }

  v4 = v1[5];
  if (v4)
  {
    v3 = v1[4];

LABEL_5:
    *&v12 = 8250;
    *(&v12 + 1) = 0xE200000000000000;
    sub_25F1E8C70(&v14, v11);

    MEMORY[0x25F8D7130](v3, v4);

    MEMORY[0x25F8D7130](v12, *(&v12 + 1));

    v5 = v1[7];
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = v1[7];
  if (v5)
  {
LABEL_6:
    v6 = v1[6];
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v6, v5);
  }

LABEL_7:
  v7 = v1[9];
  if (v7)
  {
    v8 = v1[8];
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v8, v7);
  }

  v12 = v13;
  v11[0] = 28252;
  v11[1] = 0xE200000000000000;
  sub_25F1BF118();
  v9 = sub_25F305D2C();

  return v9;
}