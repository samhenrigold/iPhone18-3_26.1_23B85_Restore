void sub_26110AC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = [v9 description];
    NSLog(&cfstr_UnableToCopyPa.isa);

    objc_end_catch();
    JUMPOUT(0x26110AC64);
  }

  _Unwind_Resume(exception_object);
}

void sub_26110B8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PASFlowStepManateeRepair.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE80BC0, qword_26115D0E0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = sub_26115A9B4();
  v9 = type metadata accessor for PASUIManateeRepairHelperProvider();
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  swift_allocObject();
  *(v10 + 16) = sub_26115A2E4();
  *(v10 + 24) = v8 & 1;
  v16 = v9;
  v17 = sub_26110CC54(&qword_27FE80BD0, type metadata accessor for PASUIManateeRepairHelperProvider, &protocol conformance descriptor for PASUIManateeRepairHelperProvider);
  v14 = v0;
  v15 = v10;
  v11 = sub_26110BD68();

  sub_26115B414();
  sub_26110BDBC(&v14);
  (*(v2 + 16))(v5, v7, v1);
  v14 = &type metadata for PASUIManateeRepairView;
  v15 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v12;
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

unint64_t sub_26110BD68()
{
  result = qword_27FE80BD8;
  if (!qword_27FE80BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80BD8);
  }

  return result;
}

uint64_t sub_26110BDEC@<X0>(uint64_t a2@<X8>)
{
  result = sub_26115A9B4();
  v4 = result;
  if (result)
  {
    v5 = type metadata accessor for PASUIProgressViewProxCardAdapter();
    swift_allocObject();

    result = sub_2611519E8(v6);
    *(a2 + 24) = v5;
    *(a2 + 32) = &off_28739AD30;
    *a2 = result;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 40) = (v4 & 1) == 0;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26110BEB0(uint64_t a1, int a2)
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

uint64_t sub_26110BED0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26110BF20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26110BF68(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26110BFE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C50, &qword_26115D1F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C58, &qword_26115D1F8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v21 - v9);
  v11 = *v0;
  if (sub_26115A9B4())
  {
    sub_26110C9A8(v1, &v22);
    v12 = swift_allocObject();
    v13 = v23;
    v12[1] = v22;
    v12[2] = v13;
    v12[3] = v24;
    sub_26115AF04();
    sub_26115B7B4();
    *v10 = &unk_26115D218;
    v10[1] = v12;
    sub_26110CE78(v10, v7, &qword_27FE80C58, &qword_26115D1F8);
    swift_storeEnumTagMultiPayload();
    sub_26110CC9C(&qword_27FE80C60, &qword_27FE80C58, &qword_26115D1F8, sub_26110CC00);
    sub_26110CC9C(&qword_27FE80C78, &qword_27FE80C48, &unk_261160100, sub_26110CD50);
    sub_26115B104();
    v14 = v10;
    v15 = &qword_27FE80C58;
    v16 = &qword_26115D1F8;
  }

  else
  {
    sub_26110C9A8(v1, &v22);
    v17 = swift_allocObject();
    v18 = v23;
    v17[1] = v22;
    v17[2] = v18;
    v17[3] = v24;
    v19 = &v4[*(v2 + 36)];
    sub_26115AF04();

    sub_26115B7B4();
    *v19 = &unk_26115D208;
    *(v19 + 1) = v17;
    *v4 = sub_26110C934;
    *(v4 + 1) = v11;
    v4[16] = 0;
    *(v4 + 3) = sub_26110C93C;
    *(v4 + 4) = 0;
    *(v4 + 5) = sub_26110C970;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    v4[80] = 1;
    *(v4 + 11) = MEMORY[0x277D84F90];
    sub_26110CE78(v4, v7, &qword_27FE80C48, &unk_261160100);
    swift_storeEnumTagMultiPayload();
    sub_26110CC9C(&qword_27FE80C60, &qword_27FE80C58, &qword_26115D1F8, sub_26110CC00);
    sub_26110CC9C(&qword_27FE80C78, &qword_27FE80C48, &unk_261160100, sub_26110CD50);
    sub_26115B104();
    v14 = v4;
    v15 = &qword_27FE80C48;
    v16 = &unk_261160100;
  }

  return sub_26110CEE0(v14, v15, v16);
}

uint64_t sub_26110C3D4(uint64_t a1)
{
  v1[2] = a1;
  sub_26115B7A4();
  v1[3] = sub_26115B794();
  v3 = sub_26115B774();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_26110C46C, v3, v2);
}

uint64_t sub_26110C46C()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277CF0098];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_26110C520;

  return MEMORY[0x2821A49B8](v2, v1 + 8);
}

uint64_t sub_26110C520()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26110DB34, v3, v2);
}

uint64_t sub_26110C640(uint64_t a1)
{
  v1[2] = a1;
  sub_26115B7A4();
  v1[3] = sub_26115B794();
  v3 = sub_26115B774();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_26110C6D8, v3, v2);
}

uint64_t sub_26110C6D8()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277CF0098];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_26110C78C;

  return MEMORY[0x2821A49B8](v2, v1 + 8);
}

uint64_t sub_26110C78C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26110C8AC, v3, v2);
}

uint64_t sub_26110C8AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26110C93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  sub_261110B98(v6, &v5);
  return v5;
}

uint64_t sub_26110C970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  sub_261110C40(v7, v6, &v5);
  return v5;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_26110CA30()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110CAC4;

  return sub_26110C640(v0 + 16);
}

uint64_t sub_26110CAC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

unint64_t sub_26110CC00()
{
  result = qword_27FE80C68;
  if (!qword_27FE80C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80C68);
  }

  return result;
}

uint64_t sub_26110CC54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26110CC9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26110CC54(&qword_27FE80C70, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26110CD50()
{
  result = qword_27FE80C80;
  if (!qword_27FE80C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80C80);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26110CDE4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110DB28;

  return sub_26110C3D4(v0 + 16);
}

uint64_t sub_26110CE78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26110CEE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL sub_26110CF88(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_26110CFE0(uint64_t a1, id *a2)
{
  result = sub_26115B684();
  *a2 = 0;
  return result;
}

uint64_t sub_26110D058(uint64_t a1, id *a2)
{
  v3 = sub_26115B694();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26110D0D8@<X0>(uint64_t *a1@<X8>)
{
  sub_26115B6A4();
  v2 = sub_26115B674();

  *a1 = v2;
  return result;
}

uint64_t sub_26110D130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26115B6A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26110D15C(uint64_t a1)
{
  v2 = sub_26110CC54(&qword_27FE80D28, type metadata accessor for AATermsEntry, &unk_26115D774);
  v3 = sub_26110CC54(&qword_27FE80D30, type metadata accessor for AATermsEntry, &unk_26115D570);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26110D218(uint64_t a1)
{
  v2 = sub_26110CC54(&qword_27FE80D38, type metadata accessor for AKAppleIDAuthenticationAppProvidedContext, &unk_26115D488);
  v3 = sub_26110CC54(&qword_27FE80D40, type metadata accessor for AKAppleIDAuthenticationAppProvidedContext, &unk_26115D430);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26110D2D4(uint64_t a1)
{
  v2 = sub_26110CC54(&qword_27FE80D48, type metadata accessor for AIDAServiceType, &unk_26115D7B4);
  v3 = sub_26110CC54(&unk_27FE80D50, type metadata accessor for AIDAServiceType, &unk_26115D330);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26110D390@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26115B674();

  *a2 = v3;
  return result;
}

uint64_t sub_26110D3D8(uint64_t a1)
{
  v2 = sub_26110CC54(&qword_27FE80D18, type metadata accessor for Key, &unk_26115D730);
  v3 = sub_26110CC54(&qword_27FE80D20, type metadata accessor for Key, &unk_26115D684);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26110D494()
{
  v0 = sub_26115B6A4();
  v1 = MEMORY[0x2666F9E10](v0);

  return v1;
}

uint64_t sub_26110D4D0(uint64_t a1)
{
  sub_26115B6A4();
  sub_26115B704();
}

uint64_t sub_26110D524(uint64_t a1)
{
  sub_26115B6A4();
  sub_26115BA94();
  sub_26115B704();
  v1 = sub_26115BAB4();

  return v1;
}

uint64_t sub_26110D598(void *a1, uint64_t *a2)
{
  v2 = sub_26115B6A4();
  v4 = v3;
  if (v2 == sub_26115B6A4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26115B9F4();
  }

  return v7 & 1;
}

void sub_26110D670(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_26110D6C0()
{
  result = qword_27FE80CA8;
  if (!qword_27FE80CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80CB0, &qword_26115D2C8);
    sub_26110CC9C(&qword_27FE80C60, &qword_27FE80C58, &qword_26115D1F8, sub_26110CC00);
    sub_26110CC9C(&qword_27FE80C78, &qword_27FE80C48, &unk_261160100, sub_26110CD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80CA8);
  }

  return result;
}

id sub_26110DB70(void *a1)
{
  result = [a1 aa_firstName];
  if (result)
  {
    v3 = result;
    result = [a1 aa_lastName];
    if (result)
    {
      v4 = result;
      v5 = objc_opt_self();
      v6 = [objc_opt_self() mainScreen];
      [v6 scale];
      v8 = v7;

      v9 = [v5 monogramWithFirstName:v3 lastName:v4 diameter:40.0 scale:v8];
      v10 = sub_26115A204();

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PASFlowStepSafetySettings.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DC0, &unk_26115D890);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  swift_allocObject();
  v8 = sub_26115A2E4();
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DC8, &qword_26115D8A0);
  sub_26115B514();
  v10 = v15;
  v9 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DD0, qword_26115D8A8);
  swift_allocObject();
  v11 = sub_26115A2E4();
  v15 = v0;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v19 = v11;
  v12 = sub_26110DEB8();
  sub_26115B414();

  (*(v2 + 16))(v5, v7, v1);
  v15 = &type metadata for PASUISafetySettingsView;
  v16 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v13;
}

unint64_t sub_26110DEB8()
{
  result = qword_27FE80DD8;
  if (!qword_27FE80DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80DD8);
  }

  return result;
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

uint64_t sub_26110DF44(uint64_t *a1, int a2)
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

uint64_t sub_26110DF8C(uint64_t result, int a2, int a3)
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

void *sub_26110E000@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v3;
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DE0, ":e");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  sub_26110CE78(&v10, v8, &qword_27FE80DC8, &qword_26115D8A0);
  sub_26110CE78(&v9, v8, &qword_27FE80DE8, &unk_26115D990);

  result = sub_26115B514();
  v7 = v8[1];
  *a1 = v8[0];
  a1[1] = v7;
  a1[2] = sub_26110E62C;
  a1[3] = v4;
  return result;
}

uint64_t sub_26110E138@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C58, &qword_26115D1F8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8 - 8];
  if (a1)
  {
    v10 = a2[2];
    v18 = a2[3];
    v19 = v10;
    v16 = v7;
    v11 = swift_allocObject();
    v12 = *(a2 + 1);
    *(v11 + 16) = *a2;
    *(v11 + 32) = v12;
    *(v11 + 48) = a2[4];
    *(v11 + 56) = a1;
    sub_26115AF04();
    v13 = a1;

    sub_26110CE78(&v19, v17, &qword_27FE80DC8, &qword_26115D8A0);
    sub_26110CE78(&v18, v17, &qword_27FE80DE8, &unk_26115D990);

    sub_26115B7B4();
    *v9 = &unk_26115D9A8;
    v9[1] = v11;
    sub_26110E730(v9, a3);
    return (*(v16 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v15 = *(v7 + 56);

    return v15(a3, 1, 1, v6);
  }
}

uint64_t sub_26110E340(uint64_t *a1, uint64_t a2)
{
  v2[2] = sub_26115B7A4();
  v2[3] = sub_26115B794();
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[2];
  v8 = *a1;
  v9 = swift_task_alloc();
  v2[4] = v9;
  *v9 = v2;
  v9[1] = sub_26110E430;

  return sub_26110FB6C(a2, v8, v7, v6, v5);
}

uint64_t sub_26110E430()
{

  v1 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26110C8AC, v1, v0);
}

uint64_t sub_26110E56C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_26110E5D4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26110E634()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26110E694()
{
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26110CAC4;

  return sub_26110E340((v0 + 16), v2);
}

uint64_t sub_26110E730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C58, &qword_26115D1F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26110E7C8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_26110E83C(uint64_t a1, uint64_t a2)
{
  sub_26115BA94();
  sub_26115B704();
  v4 = sub_26115BAB4();

  return sub_26110E988(a1, a2, v4);
}

unint64_t sub_26110E8B4(uint64_t a1)
{
  v2 = sub_26115B914();

  return sub_26110EA40(a1, v2);
}

unint64_t sub_26110E8F8(uint64_t a1)
{
  sub_26115B6A4();
  sub_26115BA94();
  sub_26115B704();
  v2 = sub_26115BAB4();

  return sub_26110EB08(a1, v2);
}

unint64_t sub_26110E988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26115B9F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26110EA40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_261110A7C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2666FA000](v9, a1);
      sub_261110AD8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26110EB08(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26115B6A4();
      v8 = v7;
      if (v6 == sub_26115B6A4() && v8 == v9)
      {
        break;
      }

      v11 = sub_26115B9F4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_26110EC0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E30, &qword_26115D9F8);
    v3 = sub_26115B9B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_26110CE78(v4, &v13, &qword_27FE80E20, &qword_26115D9E8);
      v5 = v13;
      v6 = v14;
      result = sub_26110E83C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_261110684(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_26110ED3C(uint64_t a1)
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E18, &qword_26115D9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115D860;
  *(inited + 32) = 0x5265674172657375;
  v8 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 40) = 0xEC00000065676E61;
  *(inited + 48) = a1;
  sub_26110EC0C(inited);
  swift_setDeallocating();
  sub_26110CEE0(v8, &qword_27FE80E20, &qword_26115D9E8);
  v9 = sub_26115B604();

  [v6 setAdditionalParameters_];

  sub_26115AD44();
  v10 = v6;
  v11 = sub_26115AD54();
  v12 = sub_26115B804();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = [v10 additionalParameters];
    if (v15)
    {
      v16 = v15;
      v17 = sub_26115B614();
    }

    else
    {
      v17 = 0;
    }

    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E28, &qword_26115D9F0);
    v18 = sub_26115B6B4();
    v20 = sub_26111C268(v18, v19, &v23);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_261107000, v11, v12, "Created circle context with parameters: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2666FA930](v14, -1, -1);
    MEMORY[0x2666FA930](v13, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_26110F050(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_26115AD64();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_26115B7A4();
  v2[25] = sub_26115B794();
  v5 = sub_26115B774();
  v2[26] = v5;
  v2[27] = v4;

  return MEMORY[0x2822009F8](sub_26110F150, v5, v4);
}

uint64_t sub_26110F150()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[20];
    v3 = v1;
    sub_26115AD44();
    v4 = v2;
    v5 = sub_26115AD54();
    v6 = sub_26115B804();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[20];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&dword_261107000, v5, v6, "Performing circle request with context: %@", v8, 0xCu);
      sub_26110CEE0(v9, &qword_27FE81EB0, &qword_26115F960);
      MEMORY[0x2666FA930](v9, -1, -1);
      MEMORY[0x2666FA930](v8, -1, -1);
    }

    v11 = v0[24];
    v12 = v0[21];
    v13 = v0[22];
    v14 = v0[20];

    v15 = *(v13 + 8);
    v0[28] = v15;
    v0[29] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v11, v12);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_26110F4EC;
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E10, qword_261161350);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26110E56C;
    v0[13] = &block_descriptor;
    v0[14] = v16;
    [v3 performWithContext:v14 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v17 = sub_26115A424();
    sub_261110570(&qword_27FE80E08, MEMORY[0x277D433D0], MEMORY[0x277D433D8]);
    v18 = swift_allocError();
    *v19 = 0xD000000000000029;
    v19[1] = 0x8000000261163330;
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D433C8], v17);
    v20 = objc_allocWithZone(MEMORY[0x277D08230]);
    v21 = sub_26115A1D4();

    v22 = [v20 initWithLoadSuccess:0 error:v21 userInfo:0];

    v23 = v0[1];

    return v23(v22);
  }
}

uint64_t sub_26110F4EC()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_26110F5F4, v2, v1);
}

uint64_t sub_26110F5F4()
{

  v1 = v0[18];
  sub_26115AD44();
  v2 = v1;
  v3 = sub_26115AD54();
  v4 = sub_26115B804();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_261107000, v3, v4, "Finished performing circle request with response: %@", v5, 0xCu);
    sub_26110CEE0(v6, &qword_27FE81EB0, &qword_26115F960);
    MEMORY[0x2666FA930](v6, -1, -1);
    MEMORY[0x2666FA930](v5, -1, -1);
  }

  v8 = v0[28];
  v9 = v0[23];
  v10 = v0[21];
  v11 = v0[19];

  v8(v9, v10);

  v12 = v0[1];

  return v12(v2);
}

uint64_t sub_26110F774(uint64_t *a1)
{
  v1 = sub_26115AD64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v5 = sub_26115AD54();
  v6 = sub_26115B804();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_261107000, v5, v6, "Successfully configured safety settings", v7, 2u);
    MEMORY[0x2666FA930](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  sub_261110570(&qword_27FE80DF0, MEMORY[0x277D434D8], MEMORY[0x277D434D0]);
  return sub_26115A7F4();
}

uint64_t sub_26110F920(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v8 = a1;
  v9 = sub_26115AD54();
  v10 = sub_26115B814();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19[1] = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19[2] = a1;
    v20 = v13;
    *v12 = 136315138;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E00, &unk_26115D9D0);
    v15 = sub_26115B6B4();
    v17 = sub_26111C268(v15, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_261107000, v9, v10, "Failed to configure safety settings with error: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2666FA930](v13, -1, -1);
    MEMORY[0x2666FA930](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_261110570(&qword_27FE80DF0, MEMORY[0x277D434D8], MEMORY[0x277D434D0]);
  return sub_26115A7F4();
}

uint64_t sub_26110FB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_26115AD64();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v7 = sub_26115A3D4();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  sub_26115B7A4();
  v5[28] = sub_26115B794();
  v9 = sub_26115B774();
  v5[29] = v9;
  v5[30] = v8;

  return MEMORY[0x2822009F8](sub_26110FCF4, v9, v8);
}

uint64_t sub_26110FCF4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  sub_26115AA64();
  v4 = sub_26115A3B4();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    sub_26115A2D4();
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v7);
    v9 = MEMORY[0x2666F8FF0](v4, v6, v7, v8);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v9 - 1) <= 1)
    {
      sub_26115AD44();
      v10 = sub_26115AD54();
      v11 = sub_26115B834();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_261107000, v10, v11, "PASUISafetySettingsView showSafetySettings", v12, 2u);
        MEMORY[0x2666FA930](v12, -1, -1);
      }

      v13 = v0[24];
      v14 = v0[18];
      v15 = v0[19];
      v17 = v0[15];
      v16 = v0[16];
      v18 = v0[13];

      v19 = *(v15 + 8);
      v0[31] = v19;
      v19(v13, v14);
      v20 = sub_26110ED3C(v9);
      v0[32] = v20;
      [v18 setNavigationBarHidden:0 animated:1];
      v21 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
      [v21 setPresentationType_];
      v0[7] = v17;
      v0[8] = v16;
      v0[11] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DF8, &qword_26115D9B8);
      sub_26115B534();
      v0[9] = v17;
      v0[10] = v16;
      sub_26115B524();
      v22 = v0[12];
      v0[33] = v22;
      v23 = swift_task_alloc();
      v0[34] = v23;
      *v23 = v0;
      v23[1] = sub_261110158;

      return sub_26110F050(v22, v20);
    }

    v25 = v0 + 21;

    sub_26115AD44();
    v26 = sub_26115AD54();
    LOBYTE(v27) = sub_26115B834();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "PASUISafetySettingsView Account is adult. Not showing Safety Settings";
      goto LABEL_12;
    }
  }

  else
  {
    v25 = v0 + 20;

    sub_26115AD44();
    v26 = sub_26115AD54();
    v27 = sub_26115B834();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "PASUISafetySettingsView altDSID missing. Not showing Safety Settings";
LABEL_12:
      _os_log_impl(&dword_261107000, v26, v27, v29, v28, 2u);
      MEMORY[0x2666FA930](v28, -1, -1);
    }
  }

  v30 = *v25;
  v31 = v0[18];
  v32 = v0[19];

  (*(v32 + 8))(v30, v31);
  sub_26115AA74();
  sub_261110570(&qword_27FE80DF0, MEMORY[0x277D434D8], MEMORY[0x277D434D0]);
  sub_26115A7F4();

  v33 = v0[1];

  return v33();
}

uint64_t sub_261110158(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  *(*v1 + 280) = a1;

  v4 = *(v2 + 240);
  v5 = *(v2 + 232);

  return MEMORY[0x2822009F8](sub_2611102A0, v5, v4);
}

uint64_t sub_2611102A0()
{
  v1 = *(v0 + 280);

  sub_26115AD44();
  v2 = v1;
  v3 = sub_26115AD54();
  v4 = sub_26115B834();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 141558274;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_261107000, v3, v4, "PASUISafetySettingsView showSafetySettings got response %{mask.hash}@", v6, 0x16u);
    sub_26110CEE0(v7, &qword_27FE81EB0, &qword_26115F960);
    MEMORY[0x2666FA930](v7, -1, -1);
    MEMORY[0x2666FA930](v6, -1, -1);
  }

  v9 = *(v0 + 280);
  v10 = *(v0 + 248);
  v11 = *(v0 + 184);
  v12 = *(v0 + 144);

  v10(v11, v12);
  if (([v9 loadSuccess] & 1) == 0)
  {
    sub_26115AD44();
    v13 = sub_26115AD54();
    v14 = sub_26115B814();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_261107000, v13, v14, "PASUISafetySettingsView showSafetySettings response: load fail", v15, 2u);
      MEMORY[0x2666FA930](v15, -1, -1);
    }

    v16 = *(v0 + 248);
    v17 = *(v0 + 176);
    v18 = *(v0 + 144);

    v16(v17, v18);
  }

  v19 = [*(v0 + 280) success];
  v20 = *(v0 + 280);
  v21 = *(v0 + 256);
  v22 = *(v0 + 112);
  if (v19)
  {
    sub_26110F774(*(v0 + 112));
  }

  else
  {
    v23 = [*(v0 + 280) error];
    sub_26110F920(v23, v22);

    v21 = v20;
    v20 = v23;
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_261110570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2611105C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_261110684(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_261110694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E60, &qword_26115DA30);
    v3 = sub_26115B9B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_26110CE78(v4, v13, &qword_27FE80E68, &qword_26115DA38);
      result = sub_26110E8B4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_261110684(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2611107D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E48, &unk_26115DA10);
    v3 = sub_26115B9B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_26110CE78(v4, &v13, &qword_27FE80E50, &qword_26115E190);
      v5 = v13;
      v6 = v14;
      result = sub_26110E83C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_261110928(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_261110928(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_261110964(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_26115B9B4();
    v10 = a1 + 32;

    while (1)
    {
      sub_26110CE78(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_26110E8F8(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_261110684(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_261110B30()
{
  result = qword_27FE80E70;
  if (!qword_27FE80E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80E78, &unk_26115DA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80E70);
  }

  return result;
}

void sub_261110B98(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    sub_26115B954();

    MEMORY[0x2666F9DF0](v3, v4);
    v3 = sub_26115B6F4();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v3;
  a2[1] = v6;
}

uint64_t *sub_261110C40@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result[1];
  v5 = a2[1];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = 0;
    v11 = 0;
  }

  else
  {
    v7 = *a2;
    v8 = *result;
    sub_26115B954();

    MEMORY[0x2666F9DF0](v8, v4);
    MEMORY[0x2666F9DF0](95, 0xE100000000000000);
    MEMORY[0x2666F9DF0](v7, v5);
    v9 = sub_26115B6F4();
    v11 = v10;
  }

  *a3 = v9;
  a3[1] = v11;
  return result;
}

uint64_t get_enum_tag_for_layout_string_SSSgA2AIegggo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_261110D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261110DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261110E34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E80, &qword_26115DBB8);
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v18 - v3;
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v2[6];
  v39 = v2[7];
  v38 = *(v2 + 4);
  v37 = v2[11];
  v8 = *(v2 + 80);
  *(v35 + 8) = *(v2 + 4);
  *&v33 = v4;
  *(&v33 + 1) = v5;
  *&v34 = v6;
  *(&v34 + 1) = v7;
  *&v35[0] = v39;
  *(&v35[1] + 1) = v37;
  v36 = v8;
  sub_2611122C8(v4, v5);
  sub_2611122C8(v6, v7);
  sub_26110CE78(&v39, v40, &qword_27FE80E88, &qword_26115DBC0);
  sub_26110CE78(&v38, v40, &qword_27FE80E90, &qword_26115DBC8);
  sub_26110CE78(&v37, v40, &qword_27FE80E98, &qword_26115DBD0);
  v31 = sub_26115B6F4();
  v32 = v9;
  v10 = *v2;
  v23 = v2[1];
  v24 = v10;
  v22 = *(v2 + 16);
  v21 = sub_26115A664();
  sub_2611122D8();
  sub_26115AE64();
  swift_getKeyPath();
  sub_26115AF54();

  v30 = v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80EA8, &qword_26115DC08);
  v12 = sub_261112390();
  v19 = sub_2611123E4();
  v20 = sub_261112438();
  sub_26115B434();

  v40[2] = v35[0];
  v40[3] = v35[1];
  v41 = v36;
  v40[0] = v33;
  v40[1] = v34;
  sub_26111249C(v40);
  v13 = sub_26115B6F4();
  v18[1] = v14;
  v31 = v13;
  v32 = v14;
  sub_26115AE64();
  swift_getKeyPath();
  sub_26115AF54();

  v29 = v2;
  *&v33 = &type metadata for PASUIWelcomeControllerWrapper;
  *(&v33 + 1) = MEMORY[0x277D837D0];
  *&v34 = v11;
  *(&v34 + 1) = MEMORY[0x277CE0BD8];
  *&v35[0] = v12;
  *(&v35[0] + 1) = v19;
  *&v35[1] = v20;
  *(&v35[1] + 1) = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v15 = v25;
  v16 = v28;
  sub_26115B434();

  return (*(v27 + 8))(v16, v15);
}

uint64_t sub_2611112B8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80EC8, &qword_26115DC40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED0, &qword_26115DC48);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v36 = &v32 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v35 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v34 = &v32 - v14;
  v39[0] = sub_26115B6F4();
  v39[1] = v15;
  sub_26115AE04();
  v16 = sub_26115AE14();
  v33 = *(*(v16 - 8) + 56);
  v33(v5, 0, 1, v16);
  sub_26115A664();
  sub_2611122D8();
  sub_26115AE54();
  sub_2611123E4();
  v17 = v34;
  sub_26115B564();
  v39[12] = sub_26115B6F4();
  v39[13] = v18;
  sub_26115ADF4();
  v33(v5, 0, 1, v16);
  v19 = swift_allocObject();
  v20 = *(a1 + 3);
  v19[3] = *(a1 + 2);
  v19[4] = v20;
  v21 = *(a1 + 5);
  v19[5] = *(a1 + 4);
  v19[6] = v21;
  v22 = *(a1 + 1);
  v19[1] = *a1;
  v19[2] = v22;
  sub_261112598(a1, v39);
  v23 = v35;
  sub_26115B564();
  v24 = *(v7 + 16);
  v25 = v36;
  v24(v36, v17, v6);
  v26 = v37;
  v27 = v23;
  v24(v37, v23, v6);
  v28 = v38;
  v24(v38, v25, v6);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED8, &unk_26115DC50);
  v24(&v28[*(v29 + 48)], v26, v6);
  v30 = *(v7 + 8);
  v30(v27, v6);
  v30(v17, v6);
  v30(v26, v6);
  return (v30)(v25, v6);
}

uint64_t sub_2611116CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26115B7A4();
  v4[3] = sub_26115B794();
  v6 = sub_26115B774();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_261111764, v6, v5);
}

uint64_t sub_261111764()
{
  sub_26115A664();
  sub_2611122D8();
  *(v0 + 48) = sub_26115AE54();
  v3 = (*MEMORY[0x277D43420] + MEMORY[0x277D43420]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_26111184C;

  return v3();
}

uint64_t sub_26111184C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26110DB34, v3, v2);
}

uint64_t sub_261111990@<X0>(uint64_t a1@<X8>)
{
  sub_26115B6F4();
  sub_2611123E4();
  result = sub_26115B314();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_261111A00@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80EC8, &qword_26115DC40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED0, &qword_26115DC48);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v36 = &v32 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v35 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v34 = &v32 - v14;
  v39[0] = sub_26115B6F4();
  v39[1] = v15;
  sub_26115AE04();
  v16 = sub_26115AE14();
  v33 = *(*(v16 - 8) + 56);
  v33(v5, 0, 1, v16);
  sub_26115A664();
  sub_2611122D8();
  sub_26115AE54();
  sub_2611123E4();
  v17 = v34;
  sub_26115B564();
  v39[12] = sub_26115B6F4();
  v39[13] = v18;
  sub_26115ADF4();
  v33(v5, 0, 1, v16);
  v19 = swift_allocObject();
  v20 = *(a1 + 3);
  v19[3] = *(a1 + 2);
  v19[4] = v20;
  v21 = *(a1 + 5);
  v19[5] = *(a1 + 4);
  v19[6] = v21;
  v22 = *(a1 + 1);
  v19[1] = *a1;
  v19[2] = v22;
  sub_261112598(a1, v39);
  v23 = v35;
  sub_26115B564();
  v24 = *(v7 + 16);
  v25 = v36;
  v24(v36, v17, v6);
  v26 = v37;
  v27 = v23;
  v24(v37, v23, v6);
  v28 = v38;
  v24(v38, v25, v6);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED8, &unk_26115DC50);
  v24(&v28[*(v29 + 48)], v26, v6);
  v30 = *(v7 + 8);
  v30(v27, v6);
  v30(v17, v6);
  v30(v26, v6);
  return (v30)(v25, v6);
}

uint64_t sub_261111E14(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6];
  v8 = sub_26115B7D4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_26115B7A4();
  sub_261112598(a1, v16);
  v9 = sub_26115B794();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = a1[3];
  *(v10 + 64) = a1[2];
  *(v10 + 80) = v12;
  v13 = a1[5];
  *(v10 + 96) = a1[4];
  *(v10 + 112) = v13;
  v14 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v14;
  sub_261112D1C(0, 0, v7, a3, v10);
}

uint64_t sub_261111F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26115B7A4();
  v4[3] = sub_26115B794();
  v6 = sub_26115B774();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_261111FE8, v6, v5);
}

uint64_t sub_261111FE8()
{
  sub_26115A664();
  sub_2611122D8();
  *(v0 + 48) = sub_26115AE54();
  v3 = (*MEMORY[0x277D43428] + MEMORY[0x277D43428]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2611120D0;

  return v3();
}

uint64_t sub_2611120D0()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26110C8AC, v3, v2);
}

uint64_t sub_261112214@<X0>(uint64_t a1@<X8>)
{
  sub_26115B6F4();
  sub_2611123E4();
  result = sub_26115B314();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2611122C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2611122D8()
{
  result = qword_27FE80EA0;
  if (!qword_27FE80EA0)
  {
    sub_26115A664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80EA0);
  }

  return result;
}

uint64_t sub_261112330@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26115A614();
  *a1 = result & 1;
  return result;
}

unint64_t sub_261112390()
{
  result = qword_27FE80EB0;
  if (!qword_27FE80EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80EB0);
  }

  return result;
}

unint64_t sub_2611123E4()
{
  result = qword_27FE80EB8;
  if (!qword_27FE80EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80EB8);
  }

  return result;
}

unint64_t sub_261112438()
{
  result = qword_27FE80EC0;
  if (!qword_27FE80EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80EA8, &qword_26115DC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80EC0);
  }

  return result;
}

uint64_t sub_2611124F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26115A644();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2611125D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26110CAC4;

  return sub_261111F50(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroyTm_0()
{
  sub_261112558(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();
  sub_261112558(*(v0 + 32), *(v0 + 40));
  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2611127B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26110DB28;

  return sub_2611116CC(a1, v4, v5, v1 + 32);
}

uint64_t sub_261112860()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80E80, &qword_26115DBB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80EA8, &qword_26115DC08);
  sub_261112390();
  sub_2611123E4();
  sub_261112438();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PASUIExtensionParameters.init(nonUIInfoProvider:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PASUIExtensionMain(_:)(void (*a1)(__int128 *__return_ptr))
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PASUIExtensionHostProxy();
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  a1(&v14);
  v7 = xmmword_27FE858D8;
  v8 = qword_27FE858E8;
  v9 = qword_27FE858F0;
  xmmword_27FE858D8 = v14;
  qword_27FE858E8 = v15;
  qword_27FE858F0 = v6;
  swift_unknownObjectRetain();

  sub_261112B80(v7, *(&v7 + 1), v8, v9);
  sub_26115AD44();
  v10 = sub_26115AD54();
  v11 = sub_26115B7F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_261107000, v10, v11, "PASUIExtensionMain extension is starting", v12, 2u);
    MEMORY[0x2666FA930](v12, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for PASUIAppExtension();
  sub_261112BCC();
  sub_26115A2B4();

  return swift_unknownObjectRelease();
}

uint64_t sub_261112B80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_261112BCC()
{
  result = qword_27FE80EE0;
  if (!qword_27FE80EE0)
  {
    type metadata accessor for PASUIAppExtension();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80EE0);
  }

  return result;
}

uint64_t sub_261112C24(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_261112C84(uint64_t *a1, int a2)
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

uint64_t sub_261112CCC(uint64_t result, int a2, int a3)
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

uint64_t sub_261112D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26110CE78(a3, v25 - v10, &qword_27FE818E0, &qword_26115E4A0);
  v12 = sub_26115B7D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26110CEE0(v11, &qword_27FE818E0, &qword_26115E4A0);
  }

  else
  {
    sub_26115B7C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26115B774();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26115B6C4() + 32;
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

      sub_26110CEE0(a3, &qword_27FE818E0, &qword_26115E4A0);

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

  sub_26110CEE0(a3, &qword_27FE818E0, &qword_26115E4A0);
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

ProximityAppleIDSetupUI::PASUITargetViewPresenterError_optional __swiftcall PASUITargetViewPresenterError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26115B9D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PASUITargetViewPresenterError.rawValue.getter()
{
  v1 = 0x4179646165726C61;
  v2 = 0x7669746341746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x636E614372657375;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_261113120()
{
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

uint64_t sub_261113204(uint64_t a1)
{
  sub_26115B704();
}

uint64_t sub_2611132D4(uint64_t a1)
{
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

void sub_2611133C0(unint64_t *a1@<X8>)
{
  v2 = 0xED00006576697463;
  v3 = 0x4179646165726C61;
  v4 = 0xE900000000000065;
  v5 = 0x7669746341746F6ELL;
  if (*v1 != 2)
  {
    v5 = 0x636E614372657375;
    v4 = 0xED000064656C6C65;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x8000000261162890;
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

uint64_t sub_26111346C(uint64_t a1)
{
  v2 = sub_26111D858();

  return MEMORY[0x2821A4B70](a1, v2);
}

uint64_t sub_2611134A8(uint64_t a1)
{
  v2 = sub_26111D858();

  return MEMORY[0x2821A4B88](a1, v2);
}

uint64_t sub_2611134E4(uint64_t a1)
{
  v2 = sub_26111D858();

  return MEMORY[0x2821A4B78](a1, v2);
}

uint64_t sub_261113520(uint64_t a1)
{
  v2 = sub_26111D858();

  return MEMORY[0x2821A4B80](a1, v2);
}

uint64_t sub_261113568(uint64_t a1)
{
  v2 = sub_26111D858();
  v3 = sub_26111D8AC();

  return MEMORY[0x2821A4B90](a1, v2, v3);
}

uint64_t sub_2611135B8(uint64_t a1)
{
  v2 = sub_26111CE84();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2611135F4(uint64_t a1)
{
  v2 = sub_26111CE84();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASUITargetViewPresenter.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PASUITargetViewPresenter.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___PASUIDependentViewPresenter_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_261113830;
}

void sub_261113830(void **a1, char a2)
{
  v3 = *a1;
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

uint64_t (*PASUITargetViewPresenter.shouldSignInForSelf.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  *a1 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  *(a1 + 8) = v3;
  *(a1 + 16) = swift_getObjectType();
  *(a1 + 24) = sub_26115AC14() & 1;
  return sub_261113AA0;
}

uint64_t sub_261113ACC()
{
  v1 = OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics;
  if (*(v0 + OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics))
  {
    v2 = *(v0 + OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics);
  }

  else
  {
    v2 = sub_261113B34(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_261113B34(uint64_t a1)
{
  v1 = sub_26115A254();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_26115A2D4();

  __swift_project_boxed_opaque_existential_1Tm(&v13, v15);
  sub_26111DA1C();
  v5 = sub_26115AA94();
  __swift_destroy_boxed_opaque_existential_1(&v13);
  sub_26115A244();
  v6 = sub_26115A234();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D435B0];
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D435B0];
  v13 = v6;
  v14 = v8;
  sub_26115A364();
  __swift_destroy_boxed_opaque_existential_1(&v13);
  v15 = v9;
  v16 = v10;
  v13 = 0x746567726174;
  v14 = 0xE600000000000000;
  sub_26115A364();
  __swift_destroy_boxed_opaque_existential_1(&v13);
  sub_26115A354();
  return v5;
}

id PASUITargetViewPresenter.init(navigationController:flowController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v36 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_26115AD64();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &ObjectType - v10;
  swift_unknownObjectWeakInit();
  v12 = &v3[OBJC_IVAR___PASUIDependentViewPresenter_navigationController];
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  *&v3[OBJC_IVAR___PASUIDependentViewPresenter_flowTimer] = 0;
  v3[OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount] = 0;
  v13 = OBJC_IVAR___PASUIDependentViewPresenter__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  swift_allocObject();
  *&v3[v13] = sub_26115A2E4();
  v14 = OBJC_IVAR___PASUIDependentViewPresenter__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  swift_allocObject();
  *&v3[v14] = sub_26115A2E4();
  v15 = OBJC_IVAR___PASUIDependentViewPresenter__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();
  *&v3[v15] = sub_26115A2E4();
  v16 = OBJC_IVAR___PASUIDependentViewPresenter__targetAppleIDExchanger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F48, &qword_26115DD38);
  swift_allocObject();
  *&v3[v16] = sub_26115A2E4();
  v17 = OBJC_IVAR___PASUIDependentViewPresenter__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F58, &qword_26115DD40);
  swift_allocObject();
  *&v3[v17] = sub_26115A2E4();
  v18 = OBJC_IVAR___PASUIDependentViewPresenter__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  swift_allocObject();
  *&v3[v18] = sub_26115A2E4();
  *&v3[OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics] = 0;
  v19 = OBJC_IVAR___PASUIDependentViewPresenter__featureFlagsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F80, &unk_26115DD50);
  swift_allocObject();
  *&v3[v19] = sub_26115A2E4();
  sub_26115AD44();
  v20 = sub_26115AD54();
  v21 = sub_26115B834();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_261107000, v20, v21, "PAS=== Welcome to ProximityAppleIDSetup - Target ===PAS", v22, 2u);
    MEMORY[0x2666FA930](v22, -1, -1);
  }

  v23 = *(v6 + 8);
  v23(v11, v5);
  sub_26115AD44();
  v24 = sub_26115AD54();
  v25 = sub_26115B834();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_261107000, v24, v25, "PASUITargetViewPresenter init with nav and flow controller", v26, 2u);
    MEMORY[0x2666FA930](v26, -1, -1);
  }

  v23(v9, v5);
  sub_26115A344();
  sub_26115A324();
  sub_26115A314();

  sub_26115A324();
  type metadata accessor for PASUIViewControllerProvider();
  *(swift_allocObject() + 16) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F88, &unk_261160410);
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F90, &unk_26115DD60);
  v38[0] = v27;
  sub_26115A334();

  sub_26110CEE0(v38, &qword_27FE80F98, &qword_261160420);
  swift_beginAccess();
  v28 = v36;
  sub_261114250(v36, v12);
  swift_endAccess();
  v29 = &v4[OBJC_IVAR___PASUIDependentViewPresenter_flowController];
  v30 = v35;
  *v29 = v34;
  v29[1] = v30;
  v37.receiver = v4;
  v37.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v37, sel_init);
  sub_26110CEE0(v28, &qword_27FE80FA0, &qword_26115DD70);
  return v31;
}

uint64_t sub_261114250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FA0, &qword_26115DD70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *PASUITargetViewPresenter.init(navigationController:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  swift_unknownObjectWeakInit();
  v11 = &v1[OBJC_IVAR___PASUIDependentViewPresenter_navigationController];
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *&v1[OBJC_IVAR___PASUIDependentViewPresenter_flowTimer] = 0;
  v1[OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount] = 0;
  v12 = OBJC_IVAR___PASUIDependentViewPresenter__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  swift_allocObject();
  *&v1[v12] = sub_26115A2E4();
  v13 = OBJC_IVAR___PASUIDependentViewPresenter__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  swift_allocObject();
  *&v1[v13] = sub_26115A2E4();
  v14 = OBJC_IVAR___PASUIDependentViewPresenter__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();
  *&v1[v14] = sub_26115A2E4();
  v15 = OBJC_IVAR___PASUIDependentViewPresenter__targetAppleIDExchanger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F48, &qword_26115DD38);
  swift_allocObject();
  *&v1[v15] = sub_26115A2E4();
  v16 = OBJC_IVAR___PASUIDependentViewPresenter__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F58, &qword_26115DD40);
  swift_allocObject();
  *&v1[v16] = sub_26115A2E4();
  v17 = OBJC_IVAR___PASUIDependentViewPresenter__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  swift_allocObject();
  *&v1[v17] = sub_26115A2E4();
  *&v1[OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics] = 0;
  v18 = OBJC_IVAR___PASUIDependentViewPresenter__featureFlagsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F80, &unk_26115DD50);
  swift_allocObject();
  *&v1[v18] = sub_26115A2E4();
  sub_26115AD44();
  v19 = sub_26115AD54();
  v20 = sub_26115B834();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_261107000, v19, v20, "PAS=== Welcome to ProximityAppleIDSetup - Target ===PAS", v21, 2u);
    MEMORY[0x2666FA930](v21, -1, -1);
  }

  v22 = *(v5 + 8);
  v22(v10, v4);
  sub_26115AD44();
  v23 = sub_26115AD54();
  v24 = sub_26115B834();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_261107000, v23, v24, "PASUITargetViewPresenter init with nav controller", v25, 2u);
    MEMORY[0x2666FA930](v25, -1, -1);
  }

  v22(v8, v4);
  sub_26115A344();
  sub_26115A324();
  sub_26115A314();

  sub_26115A324();
  type metadata accessor for PASUIViewControllerProvider();
  *(swift_allocObject() + 16) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F88, &unk_261160410);
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F90, &unk_26115DD60);
  v35[0] = v26;
  sub_26115A334();

  sub_26110CEE0(v35, &qword_27FE80F98, &qword_261160420);
  sub_26111BED4(a1, v35);
  swift_beginAccess();
  sub_26111BF38(v35, v11);
  swift_endAccess();
  sub_26115A8C4();
  swift_allocObject();
  v27 = sub_26115A8B4();
  v28 = &v2[OBJC_IVAR___PASUIDependentViewPresenter_flowController];
  v29 = MEMORY[0x277D434A8];
  *v28 = v27;
  v28[1] = v29;
  v34.receiver = v2;
  v34.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v34, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v30;
}

id PASUITargetViewPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASUITargetViewPresenter.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_26115AD64();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  swift_unknownObjectWeakInit();
  v10 = &v0[OBJC_IVAR___PASUIDependentViewPresenter_navigationController];
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *&v0[OBJC_IVAR___PASUIDependentViewPresenter_flowTimer] = 0;
  v0[OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount] = 0;
  v11 = OBJC_IVAR___PASUIDependentViewPresenter__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  swift_allocObject();
  *&v0[v11] = sub_26115A2E4();
  v12 = OBJC_IVAR___PASUIDependentViewPresenter__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  swift_allocObject();
  *&v0[v12] = sub_26115A2E4();
  v13 = OBJC_IVAR___PASUIDependentViewPresenter__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();
  *&v0[v13] = sub_26115A2E4();
  v14 = OBJC_IVAR___PASUIDependentViewPresenter__targetAppleIDExchanger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F48, &qword_26115DD38);
  swift_allocObject();
  *&v0[v14] = sub_26115A2E4();
  v15 = OBJC_IVAR___PASUIDependentViewPresenter__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F58, &qword_26115DD40);
  swift_allocObject();
  *&v0[v15] = sub_26115A2E4();
  v16 = OBJC_IVAR___PASUIDependentViewPresenter__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  swift_allocObject();
  *&v0[v16] = sub_26115A2E4();
  *&v0[OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics] = 0;
  v17 = OBJC_IVAR___PASUIDependentViewPresenter__featureFlagsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F80, &unk_26115DD50);
  swift_allocObject();
  *&v0[v17] = sub_26115A2E4();
  sub_26115AD44();
  v18 = sub_26115AD54();
  v19 = sub_26115B834();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_261107000, v18, v19, "PAS=== Welcome to ProximityAppleIDSetup - Target ===PAS", v20, 2u);
    MEMORY[0x2666FA930](v20, -1, -1);
  }

  v21 = *(v4 + 8);
  v21(v9, v3);
  sub_26115AD44();
  v22 = sub_26115AD54();
  v23 = sub_26115B834();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_261107000, v22, v23, "PASUITargetViewPresenter init", v24, 2u);
    MEMORY[0x2666FA930](v24, -1, -1);
  }

  v21(v7, v3);
  sub_26115A344();
  sub_26115A324();
  sub_26115A314();

  sub_26115A324();
  type metadata accessor for PASUIViewControllerProvider();
  *(swift_allocObject() + 16) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F88, &unk_261160410);
  *(&v33 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F90, &unk_26115DD60);
  *&v32 = v25;
  sub_26115A334();

  sub_26110CEE0(&v32, &qword_27FE80F98, &qword_261160420);
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  swift_beginAccess();
  sub_26111BF38(&v32, v10);
  swift_endAccess();
  sub_26115A8C4();
  swift_allocObject();
  v26 = sub_26115A8B4();
  v27 = &v1[OBJC_IVAR___PASUIDependentViewPresenter_flowController];
  v28 = MEMORY[0x277D434A8];
  *v27 = v26;
  v27[1] = v28;
  v31.receiver = v1;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel_init);
}

id PASUITargetViewPresenter.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_26115AD64();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  sub_26115AD44();
  v10 = sub_26115AD54();
  v11 = sub_26115B834();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_261107000, v10, v11, "PASUITargetViewPresenter deinit", v12, 2u);
    MEMORY[0x2666FA930](v12, -1, -1);
  }

  v13 = *(v4 + 8);
  v13(v9, v3);
  sub_26115A344();
  sub_26115A324();
  sub_26115A2F4();

  sub_26115AD44();
  v14 = sub_26115AD54();
  v15 = sub_26115B834();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_261107000, v14, v15, "PAS=== Goodbye ===PAS", v16, 2u);
    MEMORY[0x2666FA930](v16, -1, -1);
  }

  v13(v7, v3);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

uint64_t PASUITargetViewPresenter.activateAndPresentInitialStep(withTemplate:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_26115AD64();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = sub_26115B7A4();
  v2[19] = sub_26115B794();
  v5 = sub_26115B774();
  v2[20] = v5;
  v2[21] = v4;

  return MEMORY[0x2822009F8](sub_2611151A8, v5, v4);
}

uint64_t sub_2611151A8()
{
  v1 = v0[13];

  sub_26115A2D4();

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
  v4 = sub_26111BFA8();
  v5 = MEMORY[0x277D435B8];
  v0[10] = v4;
  v0[11] = v5;
  v0[7] = v1;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_2611152B4;

  return MEMORY[0x2821A4B28](v0 + 7, v2, v3);
}

uint64_t sub_2611152B4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = v2[20];
    v4 = v2[21];
    v5 = sub_2611156F8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v3 = v2[20];
    v4 = v2[21];
    v5 = sub_2611153D0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2611153D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[24] = sub_26115B794();
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_261115474;

  return sub_2611164E4();
}

uint64_t sub_261115474()
{

  v1 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_2611155B0, v1, v0);
}

uint64_t sub_2611155B0()
{

  swift_getObjectType();
  sub_26115ABF4();
  sub_26115AC04();
  swift_unknownObjectRelease();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_26111566C, v1, v2);
}

uint64_t sub_26111566C()
{

  v1 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2611156F8()
{
  v21 = v0;
  v1 = *(v0 + 184);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26115AD44();
  v2 = v1;
  v3 = sub_26115AD54();
  v4 = sub_26115B814();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 128);
    v19 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v0 + 96) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v11 = sub_26115B6B4();
    v13 = sub_26111C268(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261107000, v3, v4, "Failed to activate PASUITargetViewPresenter with message session: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2666FA930](v9, -1, -1);
    MEMORY[0x2666FA930](v8, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);

    (*(v15 + 8))(v14, v16);
  }

  *(v0 + 192) = sub_26115B794();
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  *v17 = v0;
  v17[1] = sub_261115474;

  return sub_2611164E4();
}

uint64_t sub_261115AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_26115B7A4();
  v3[5] = sub_26115B794();
  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_261115B54, v5, v4);
}

uint64_t sub_261115B54()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_261115C18;
  v7 = v0[2];

  return PASUITargetViewPresenter.activateAndPresentInitialStep(withTemplate:)(v7);
}

uint64_t sub_261115C18(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t PASUITargetViewPresenter.activate(withTemplate:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_26115AD64();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  sub_26115B7A4();
  v2[18] = sub_26115B794();
  v5 = sub_26115B774();
  v2[19] = v5;
  v2[20] = v4;

  return MEMORY[0x2822009F8](sub_261115E70, v5, v4);
}

uint64_t sub_261115E70()
{
  v1 = v0[13];

  sub_26115A2D4();

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
  v4 = sub_26111BFA8();
  v5 = MEMORY[0x277D435B8];
  v0[10] = v4;
  v0[11] = v5;
  v0[7] = v1;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_261115F7C;

  return MEMORY[0x2821A4B28](v0 + 7, v2, v3);
}

uint64_t sub_261115F7C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_2611162B8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_261116098;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261116098()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_261116130;

  return sub_2611164E4();
}

uint64_t sub_261116130()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_261116250, v3, v2);
}

uint64_t sub_261116250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2611162B8()
{
  v21 = v0;
  v1 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26115AD44();
  v2 = v1;
  v3 = sub_26115AD54();
  v4 = sub_26115B814();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 128);
    v19 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v0 + 96) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v11 = sub_26115B6B4();
    v13 = sub_26111C268(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261107000, v3, v4, "Failed to activate PASUITargetViewPresenter with message session: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2666FA930](v9, -1, -1);
    MEMORY[0x2666FA930](v8, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);

    (*(v15 + 8))(v14, v16);
  }

  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_261116130;

  return sub_2611164E4();
}

uint64_t sub_2611164E4()
{
  v1[9] = v0;
  v2 = sub_26115AD64();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_26115B7A4();
  v1[14] = sub_26115B794();
  v4 = sub_26115B774();
  v1[15] = v4;
  v1[16] = v3;

  return MEMORY[0x2822009F8](sub_2611165E4, v4, v3);
}

uint64_t sub_2611165E4()
{
  *(v0 + 136) = sub_261113ACC();
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  v3 = (*MEMORY[0x277D433B0] + MEMORY[0x277D433B0]);
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_2611166AC;

  return v3(v0 + 40);
}

uint64_t sub_2611166AC()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_2611167F0, v3, v2);
}

uint64_t sub_2611167F0()
{
  v1 = *(v0 + 72);
  *(v0 + 56) = 1;
  *(v0 + 64) = 1;

  v2 = sub_26115A374();

  *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_flowTimer) = v2;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26115AD44();
    v3 = sub_26115AD54();
    v4 = sub_26115B824();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261107000, v3, v4, "PASUITargetViewPresenter delegate is nil in activate", v9, 2u);
      MEMORY[0x2666FA930](v9, -1, -1);
    }

    (*(v8 + 8))(v6, v7);
  }

  v10 = (*(v0 + 72) + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  *(v0 + 152) = *v10;
  *(v0 + 160) = v10[1];
  *(v0 + 168) = swift_getObjectType();
  sub_26111DA74(&qword_27FE81048, &protocol conformance descriptor for PASUITargetViewPresenter);
  swift_unknownObjectRetain();
  sub_26115AC44();
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  *v11 = v0;
  v11[1] = sub_261116A1C;

  return sub_2611170AC();
}

uint64_t sub_261116A1C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v2;
  v3[1] = sub_261116B8C;
  v4 = v1[21];
  v5 = v1[20];

  return MEMORY[0x2821A4AF0](v4, v5);
}

uint64_t sub_261116B8C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_261116CAC, v3, v2);
}

uint64_t sub_261116CAC()
{

  sub_26115AD44();
  v1 = sub_26115AD54();
  v2 = sub_26115B834();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_261107000, v1, v2, "PASUITargetViewPresenter activated", v3, 2u);
    MEMORY[0x2666FA930](v3, -1, -1);
  }

  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[11];

  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_261116F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_26115B7A4();
  v3[5] = sub_26115B794();
  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_261116FE8, v5, v4);
}

uint64_t sub_261116FE8()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_26111DABC;
  v7 = v0[2];

  return PASUITargetViewPresenter.activate(withTemplate:)(v7);
}

uint64_t sub_2611170AC()
{
  v1[8] = v0;
  v2 = sub_26115AD64();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_26115B7A4();
  v1[12] = sub_26115B794();
  v4 = sub_26115B774();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x2822009F8](sub_2611171A0, v4, v3);
}

uint64_t sub_2611171A0()
{

  sub_26115A2D4();

  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_26111727C;

  return MEMORY[0x2821A4878](v1, v2);
}

uint64_t sub_26111727C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);
  if (v1)
  {
    v7 = sub_261117460;
  }

  else
  {
    v7 = sub_2611173C0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2611173C0()
{
  v1 = *(v0 + 128);

  if (v1)
  {
    v2 = *(v0 + 64);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    *(v2 + OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount) = 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261117460()
{
  v21 = v0;
  v1 = *(v0 + 136);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26115AD44();
  v2 = v1;
  v3 = sub_26115AD54();
  v4 = sub_26115B814();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 80);
    v19 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v0 + 56) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v11 = sub_26115B6B4();
    v13 = sub_26111C268(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261107000, v3, v4, "Failed to fetch proto account in PASUITargetViewPresenter with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2666FA930](v9, -1, -1);
    MEMORY[0x2666FA930](v8, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = *(v0 + 72);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t PASUITargetViewPresenter.startFlow(withNavigationController:)(uint64_t a1)
{
  type metadata accessor for PASViewControllerPresentationHandler();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  swift_unknownObjectRetain();
  sub_26111C840(v3, v1);
}

uint64_t PASUITargetViewPresenter.startFlow(withFlowStepsHandler:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, v2);

  return sub_26111CA2C(v4, v1, v2, v3);
}

Swift::Void __swiftcall PASUITargetViewPresenter.startFlow(withContainerViewController:)(UIViewController *withContainerViewController)
{
  v3 = type metadata accessor for PASDefaultFlowStepsPresentationHandler();
  v4 = swift_allocObject();
  *(v4 + 16) = withContainerViewController;
  v7[3] = v3;
  v7[4] = &protocol witness table for PASDefaultFlowStepsPresentationHandler;
  v7[0] = v4;
  v5 = OBJC_IVAR___PASUIDependentViewPresenter_navigationController;
  swift_beginAccess();
  v6 = withContainerViewController;

  sub_26111BF38(v7, v1 + v5);
  swift_endAccess();
  swift_getObjectType();
  sub_26115ABF4();
  sub_26115AC04();

  swift_unknownObjectRelease();
}

uint64_t _s23ProximityAppleIDSetupUI24PASUITargetViewPresenterC19stepDidRequestResetyy0abC011PASFlowStep_pF_0()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  sub_26115AD44();
  v7 = sub_26115AD54();
  v8 = sub_26115B834();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261107000, v7, v8, "PASUITargetViewPresenter reset", v9, 2u);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  v10 = *(v1 + 8);
  v10(v6, v0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26115AD44();
    v11 = sub_26115AD54();
    v12 = sub_26115B824();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261107000, v11, v12, "PASUITargetViewPresenter delegate is nil in reset", v13, 2u);
      MEMORY[0x2666FA930](v13, -1, -1);
    }

    v10(v4, v0);
  }

  swift_getObjectType();
  sub_26115ABF4();
  sub_26115AC04();
  return swift_unknownObjectRelease();
}

uint64_t _s23ProximityAppleIDSetupUI24PASUITargetViewPresenterC12handleCancelyyF_0()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FD0, &qword_26115DDF0);
  v0 = MEMORY[0x28223BE20](v27);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v3 = (&v25 - v2);
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  sub_26115AD44();
  v11 = sub_26115AD54();
  v12 = sub_26115B834();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_261107000, v11, v12, "PASUITargetViewPresenter flowDidCancel", v13, 2u);
    MEMORY[0x2666FA930](v13, -1, -1);
  }

  v14 = *(v5 + 8);
  v14(v10, v4);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26115AD44();
    v15 = sub_26115AD54();
    v16 = sub_26115B824();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261107000, v15, v16, "PASUITargetViewPresenter delegate is nil in reset", v17, 2u);
      MEMORY[0x2666FA930](v17, -1, -1);
    }

    v14(v8, v4);
  }

  sub_26111CF88();
  v18 = swift_allocError();
  *v19 = 3;
  *v3 = v18;
  swift_storeEnumTagMultiPayload();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_26110CE78(v3, v26, &qword_27FE80FD0, &qword_26115DDF0);
    v22 = objc_allocWithZone(sub_26115A904());
    v23 = sub_26115A8F4();
    [v21 proximitySetupCompletedWithResult_];
    swift_unknownObjectRelease();
  }

  return sub_26110CEE0(v3, &qword_27FE80FD0, &qword_26115DDF0);
}

uint64_t PASUITargetViewPresenter.setTemplate(_:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_26115AD64();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  sub_26115B7A4();
  v2[18] = sub_26115B794();
  v5 = sub_26115B774();
  v2[19] = v5;
  v2[20] = v4;

  return MEMORY[0x2822009F8](sub_261117FC8, v5, v4);
}

uint64_t sub_261117FC8()
{
  v1 = v0[13];

  sub_26115A2D4();

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
  v4 = sub_26111BFA8();
  v5 = MEMORY[0x277D435B8];
  v0[10] = v4;
  v0[11] = v5;
  v0[7] = v1;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_2611180D4;

  return MEMORY[0x2821A4B28](v0 + 7, v2, v3);
}

uint64_t sub_2611180D4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_261118260;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_2611181F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2611181F0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261118260()
{
  v21 = v0;
  v1 = *(v0 + 176);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26115AD44();
  v2 = v1;
  v3 = sub_26115AD54();
  v4 = sub_26115B814();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 128);
    v19 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v0 + 96) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v11 = sub_26115B6B4();
    v13 = sub_26111C268(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261107000, v3, v4, "Failed to set template message session in PASUITargetViewPresenter: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2666FA930](v9, -1, -1);
    MEMORY[0x2666FA930](v8, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2611185E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_26115B7A4();
  v3[5] = sub_26115B794();
  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_261118684, v5, v4);
}

uint64_t sub_261118684()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_261118748;
  v7 = v0[2];

  return PASUITargetViewPresenter.setTemplate(_:)(v7);
}

uint64_t sub_261118748()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t PASUITargetViewPresenter.proximitySetupSelectedAccountType(_:)(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = sub_26115AD64();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  v4 = sub_26115A4B4();
  v2[35] = v4;
  v2[36] = *(v4 - 8);
  v2[37] = swift_task_alloc();
  sub_26115B7A4();
  v2[38] = sub_26115B794();
  v6 = sub_26115B774();
  v2[39] = v6;
  v2[40] = v5;

  return MEMORY[0x2822009F8](sub_2611189F0, v6, v5);
}

uint64_t sub_2611189F0()
{
  v1 = *(v0 + 240);
  *(v0 + 328) = sub_261113ACC();
  *(v0 + 224) = v1;
  *(v0 + 232) = 0;
  v4 = (*MEMORY[0x277D433B0] + MEMORY[0x277D433B0]);
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *v2 = v0;
  v2[1] = sub_261118AB8;

  return v4(v0 + 224);
}

uint64_t sub_261118AB8()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return MEMORY[0x2822009F8](sub_261118BFC, v3, v2);
}

uint64_t sub_261118BFC()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];

  sub_26115A2D4();

  __swift_project_boxed_opaque_existential_1Tm(v0 + 18, v0[21]);
  (*(v2 + 104))(v1, *MEMORY[0x277D433E0], v3);
  v4 = sub_26115A734();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  if (v4 & 1) != 0 && (swift_getObjectType(), (sub_26115AC14()))
  {
    sub_26115AD44();
    v5 = sub_26115AD54();
    v6 = sub_26115B834();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261107000, v5, v6, "PASUITargetViewPresenter proximitySetupSelectedAccountType and signInForSelf is enabled. We'll take it from here", v7, 2u);
      MEMORY[0x2666FA930](v7, -1, -1);
    }

    v9 = v0[33];
    v8 = v0[34];
    v10 = v0[32];

    (*(v9 + 8))(v8, v10);
    v11 = 0;
  }

  else
  {
    v11 = v0[30];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[43] = Strong;
  if (Strong)
  {
    v0[26] = &unk_2873A1538;
    v0[27] = &unk_2873BC7E0;
    v13 = swift_dynamicCastObjCProtocolConditional();
    if (v13)
    {
      v14 = v13;
      v0[2] = v0;
      v0[7] = v0 + 233;
      v0[3] = sub_261118F54;
      v15 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB8, &qword_26115DDA8);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2611190E4;
      v0[13] = &block_descriptor_0;
      v0[14] = v15;
      [v14 proximitySetupSelectedAccount:v11 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }

    swift_unknownObjectRelease();
  }

  v16 = v0[1];

  return v16(1);
}

uint64_t sub_261118F54()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);

  return MEMORY[0x2822009F8](sub_26111905C, v2, v1);
}

uint64_t sub_26111905C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 233);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2611190E4(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t PASUITargetViewPresenter.setupPasscodeAndBiometric()()
{
  v1[23] = v0;
  sub_26115B7A4();
  v1[24] = sub_26115B794();
  v3 = sub_26115B774();
  v1[25] = v3;
  v1[26] = v2;

  return MEMORY[0x2822009F8](sub_2611191D8, v3, v2);
}

uint64_t sub_2611191D8()
{
  *(v0 + 216) = sub_261113ACC();
  *(v0 + 168) = 2;
  *(v0 + 176) = 1;
  v3 = (*MEMORY[0x277D433B0] + MEMORY[0x277D433B0]);
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_2611192A4;

  return v3(v0 + 168);
}

uint64_t sub_2611192A4()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_2611193E8, v3, v2);
}

uint64_t sub_2611193E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v0[2] = v0;
    v0[7] = v0 + 177;
    v0[3] = sub_261119570;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB8, &qword_26115DDA8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2611190E4;
    v0[13] = &block_descriptor_9;
    v0[14] = v3;
    [v2 setupPasscodeAndBiometricWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_261119570()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x2822009F8](sub_261119678, v2, v1);
}

uint64_t sub_261119678()
{

  v1 = *(v0 + 177);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t PASUITargetViewPresenter.performAIDASignIn(with:)(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_26115AD64();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_26115B7A4();
  v2[28] = sub_26115B794();
  v5 = sub_26115B774();
  v2[29] = v5;
  v2[30] = v4;

  return MEMORY[0x2822009F8](sub_2611197F8, v5, v4);
}

uint64_t sub_2611197F8(uint64_t a1)
{
  v34 = v1;
  sub_26115AD44();
  v2 = sub_26115AD54();
  v3 = sub_26115B804();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261107000, v2, v3, "PASUITargetViewPresenter performAIDASignIn", v4, 2u);
    MEMORY[0x2666FA930](v4, -1, -1);
  }

  v5 = *(v1 + 216);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);

  v8 = *(v7 + 8);
  *(v1 + 248) = v8;
  v8(v5, v6);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26115AD44();
    v9 = sub_26115AD54();
    v10 = sub_26115B824();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v1 + 208);
    v13 = *(v1 + 184);
    if (v11)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261107000, v9, v10, "PASUITargetViewPresenter delegate is nil in performAIDASignIn", v14, 2u);
      MEMORY[0x2666FA930](v14, -1, -1);
    }

    v8(v12, v13);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v1 + 256) = Strong;
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_26115A394();
    *(v1 + 264) = v17;
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 272;
    *(v1 + 24) = sub_261119C58;
    v18 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB8, &qword_26115DDA8);
    *(v1 + 80) = MEMORY[0x277D85DD0];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_2611190E4;
    *(v1 + 104) = &block_descriptor_13;
    *(v1 + 112) = v18;
    [v16 setupPerformAIDASignInWith:v17 completion:v1 + 80];

    return MEMORY[0x282200938](v1 + 16);
  }

  else
  {

    sub_26115AD44();
    v19 = sub_26115AD54();
    v20 = sub_26115B804();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v1 + 248);
    v23 = *(v1 + 200);
    v24 = *(v1 + 184);
    if (v21)
    {
      v32 = *(v1 + 248);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136446210;
      *(v1 + 273) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC0, &unk_26115DDC0);
      v27 = sub_26115B6B4();
      v29 = sub_26111C268(v27, v28, &v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_261107000, v19, v20, "PASUITargetViewPresenter performAIDASignIn result: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x2666FA930](v26, -1, -1);
      MEMORY[0x2666FA930](v25, -1, -1);

      v32(v23, v24);
    }

    else
    {

      v22(v23, v24);
    }

    v30 = *(v1 + 8);

    return v30(0);
  }
}

uint64_t sub_261119C58()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_261119D60, v2, v1);
}

uint64_t sub_261119D60()
{
  v19 = v0;
  v1 = *(v0 + 264);

  v2 = *(v0 + 272);
  swift_unknownObjectRelease();

  sub_26115AD44();
  v3 = sub_26115AD54();
  v4 = sub_26115B804();
  if (os_log_type_enabled(v3, v4))
  {
    v16 = *(v0 + 200);
    v17 = *(v0 + 248);
    v5 = *(v0 + 184);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    *(v0 + 273) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC0, &unk_26115DDC0);
    v8 = sub_26115B6B4();
    v10 = sub_26111C268(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_261107000, v3, v4, "PASUITargetViewPresenter performAIDASignIn result: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2666FA930](v7, -1, -1);
    MEMORY[0x2666FA930](v6, -1, -1);

    v17(v16, v5);
  }

  else
  {
    v11 = *(v0 + 248);
    v12 = *(v0 + 200);
    v13 = *(v0 + 184);

    v11(v12, v13);
  }

  v14 = *(v0 + 8);

  return v14(v2);
}

uint64_t PASUITargetViewPresenter.present(step:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_26115AD64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  swift_unknownObjectRetain();
  v13 = sub_26115AD54();
  v14 = sub_26115B834();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v10;
    v16 = v15;
    v28 = swift_slowAlloc();
    v31 = a2;
    v32 = v28;
    *v16 = 136446210;
    v30 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
    v17 = sub_26115B6B4();
    v27 = v9;
    v19 = sub_26111C268(v17, v18, &v32);

    *(v16 + 4) = v19;
    _os_log_impl(&dword_261107000, v13, v14, "PASUITargetViewPresenter present step %{public}s", v16, 0xCu);
    v20 = v28;
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x2666FA930](v20, -1, -1);
    MEMORY[0x2666FA930](v16, -1, -1);

    (*(v29 + 8))(v12, v27);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v21 = sub_26115B7D4();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_26115B7A4();
  swift_unknownObjectRetain();
  v22 = v3;
  v23 = sub_26115B794();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v22;
  v24[5] = a1;
  v24[6] = a2;
  sub_261112D1C(0, 0, v8, &unk_26115DDD8, v24);
}

uint64_t sub_26111A280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = sub_26115AD64();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  sub_26115B7A4();
  v6[19] = sub_26115B794();
  v9 = sub_26115B774();
  v6[20] = v9;
  v6[21] = v8;

  return MEMORY[0x2822009F8](sub_26111A378, v9, v8);
}

uint64_t sub_26111A378()
{
  v1 = *(v0[13] + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_26111A440;
  v5 = v0[14];
  v4 = v0[15];

  return MEMORY[0x2821A4B18](v5, v4, ObjectType, v1);
}

uint64_t sub_26111A440()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_26111A670;
  }

  else
  {
    v5 = sub_26111A57C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26111A57C()
{
  v1 = v0[13];

  v2 = v1 + OBJC_IVAR___PASUIDependentViewPresenter_navigationController;
  swift_beginAccess();
  if (*(v2 + 24))
  {
    v4 = v0[14];
    v3 = v0[15];
    sub_26111BED4(v2, (v0 + 2));
    v5 = v0[5];
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v5);
    (*(v6 + 8))(v4, v3, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_26111A670()
{
  v25 = v0;
  v1 = *(v0 + 184);

  sub_26115AD44();
  swift_unknownObjectRetain();
  v2 = v1;
  v3 = sub_26115AD54();
  v4 = sub_26115B814();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 136);
    v23 = *(v0 + 144);
    v7 = *(v0 + 128);
    v22 = *(v0 + 112);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446466;
    *(v0 + 80) = v22;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
    v10 = sub_26115B6B4();
    v12 = sub_26111C268(v10, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 96) = v5;
    v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v14 = sub_26115B6B4();
    v16 = sub_26111C268(v14, v15, &v24);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_261107000, v3, v4, "PASUITargetViewPresenter did not present step %{public}s.\n%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666FA930](v9, -1, -1);
    MEMORY[0x2666FA930](v8, -1, -1);

    (*(v6 + 8))(v23, v7);
  }

  else
  {
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v19 = *(v0 + 128);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t PASUITargetViewPresenter.flowDidComplete(with:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_26115A224();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FD0, &qword_26115DDF0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = sub_26115AD64();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_26115B7A4();
  v2[19] = sub_26115B794();
  v6 = sub_26115B774();
  v2[20] = v6;
  v2[21] = v5;

  return MEMORY[0x2822009F8](sub_26111AA88, v6, v5);
}

uint64_t sub_26111AA88(uint64_t a1)
{
  v42 = v1;
  v2 = *(v1 + 112);
  v3 = *(v1 + 56);
  sub_26115AD44();
  sub_26110CE78(v3, v2, &qword_27FE80FD0, &qword_26115DDF0);
  v4 = sub_26115AD54();
  v5 = sub_26115B834();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 144);
  v9 = *(v1 + 120);
  v8 = *(v1 + 128);
  v10 = *(v1 + 112);
  if (v6)
  {
    v11 = *(v1 + 104);
    v40 = *(v1 + 144);
    v12 = swift_slowAlloc();
    v39 = v9;
    v13 = swift_slowAlloc();
    v41 = v13;
    *v12 = 141558274;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    sub_26110CE78(v10, v11, &qword_27FE80FD0, &qword_26115DDF0);
    v14 = sub_26115B6B4();
    v16 = v15;
    sub_26110CEE0(v10, &qword_27FE80FD0, &qword_26115DDF0);
    v17 = sub_26111C268(v14, v16, &v41);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_261107000, v4, v5, "PASUITargetViewPresenter flowDidComplete with %{mask.hash}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2666FA930](v13, -1, -1);
    MEMORY[0x2666FA930](v12, -1, -1);

    v18 = *(v8 + 8);
    v18(v40, v39);
  }

  else
  {

    sub_26110CEE0(v10, &qword_27FE80FD0, &qword_26115DDF0);
    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  *(v1 + 176) = v18;
  v19 = *(v1 + 64);
  sub_26110CE78(*(v1 + 56), *(v1 + 104), &qword_27FE80FD0, &qword_26115DDF0);
  v20 = objc_allocWithZone(sub_26115A904());
  v21 = sub_26115A8F4();
  *(v1 + 184) = v21;
  v22 = *(v19 + OBJC_IVAR___PASUIDependentViewPresenter_flowTimer);
  *(v1 + 192) = v22;
  if (v22)
  {
    v23 = v21;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = swift_allocObject();
    *(v1 + 200) = v25;
    *(v25 + 16) = &unk_26115DE00;
    *(v25 + 24) = v24;
    *(v1 + 40) = &unk_26115DE10;
    *(v1 + 48) = v25;

    v26 = v23;
    sub_26115A214();
    v27 = swift_task_alloc();
    *(v1 + 208) = v27;
    *v27 = v1;
    v27[1] = sub_26111AF38;
    v28 = *(v1 + 88);

    return MEMORY[0x2821A4B98](v1 + 40, v28);
  }

  else
  {

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_26115AD44();
      v29 = sub_26115AD54();
      v30 = sub_26115B824();
      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v1 + 176);
      v33 = *(v1 + 136);
      v34 = *(v1 + 120);
      if (v31)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_261107000, v29, v30, "PASUITargetViewPresenter delegate is nil in flowDidComplete", v35, 2u);
        MEMORY[0x2666FA930](v35, -1, -1);
      }

      v32(v33, v34);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong proximitySetupCompletedWithResult_];
      swift_unknownObjectRelease();
    }

    v37 = *(v1 + 8);

    return v37();
  }
}

uint64_t sub_26111AF38()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);

  (*(v3 + 8))(v2, v4);

  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_26111B0FC, v6, v5);
}

uint64_t sub_26111B0FC()
{

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26115AD44();
    v1 = sub_26115AD54();
    v2 = sub_26115B824();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 176);
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261107000, v1, v2, "PASUITargetViewPresenter delegate is nil in flowDidComplete", v7, 2u);
      MEMORY[0x2666FA930](v7, -1, -1);
    }

    v4(v5, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong proximitySetupCompletedWithResult_];
    swift_unknownObjectRelease();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26111B2D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81008, &unk_261160930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115D860;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000261163730;
  sub_26115A8D4();
  v2 = sub_26115AAA4();
  v3 = MEMORY[0x277D837D0];
  v4 = MEMORY[0x277D435B0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v4;
  *(inited + 48) = v2;
  *(inited + 56) = v5;
  sub_2611107D0(inited);
  swift_setDeallocating();
  sub_26110CEE0(inited + 32, &qword_27FE80E50, &qword_26115E190);
  v6 = sub_26115A8E4();
  if (v6)
  {
    v7 = v6;
    swift_getErrorValue();
    v8 = sub_26115BA34();
    v10 = v9;
    v0[16] = v3;
    v0[17] = v4;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v0[15] = 0;
    v0[16] = 0;
    v0[17] = 0;
  }

  v0[13] = v8;
  v0[14] = v10;
  v0[26] = 0xD00000000000001ALL;
  v0[27] = 0x8000000261163820;
  v0[21] = v3;
  v0[22] = v4;
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81028, &qword_26115E200);
  v11 = sub_26115B634();

  sub_26110CEE0((v0 + 18), &qword_27FE81030, &qword_26115E208);
  sub_26110CEE0((v0 + 13), &qword_27FE81030, &qword_26115E208);
  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_26111B4D8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26111B5C4;

  return v5();
}

uint64_t sub_26111B5C4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t PASUITargetViewPresenter.stepDidRequestCancel(_:)()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26111B774, v3, v2);
}

uint64_t sub_26111B774()
{

  _s23ProximityAppleIDSetupUI24PASUITargetViewPresenterC12handleCancelyyF_0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26111B7E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26111B874;

  return PASUITargetViewPresenter.performAIDASignIn(with:)(a1);
}

uint64_t sub_26111B874(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_26111B970(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26111DAF0;

  return PASUITargetViewPresenter.proximitySetupSelectedAccountType(_:)(a1);
}

uint64_t sub_26111BA04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26111DAF0;

  return PASUITargetViewPresenter.setupPasscodeAndBiometric()();
}

uint64_t sub_26111BA90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26110CAC4;

  return PASUITargetViewPresenter.flowDidComplete(with:)(a1);
}

uint64_t sub_26111BB28()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26111DAD0, v3, v2);
}

uint64_t sub_26111BBC0()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26111B774, v3, v2);
}

uint64_t sub_26111BC58()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26111BCF0, v3, v2);
}

uint64_t sub_26111BCF0()
{

  _s23ProximityAppleIDSetupUI24PASUITargetViewPresenterC19stepDidRequestResetyy0abC011PASFlowStep_pF_0();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_26111BD58()
{
  if (*(v0 + 8) != 1)
  {
    return 0xD00000000000002ALL;
  }

  v1 = 0xD000000000000033;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000024;
  }
}

unint64_t sub_26111BDD0()
{
  if (*(v0 + 8))
  {
    v1 = MEMORY[0x277D84F90];

    return sub_2611107D0(v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81008, &unk_261160930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26115D860;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000261163730;
    v4 = sub_26115AAA4();
    v5 = MEMORY[0x277D435B0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v5;
    *(inited + 48) = v4;
    *(inited + 56) = v6;
    v7 = sub_2611107D0(inited);
    swift_setDeallocating();
    sub_26110CEE0(inited + 32, &qword_27FE80E50, &qword_26115E190);
    return v7;
  }
}

uint64_t sub_26111BED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26111BF38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FA0, &qword_26115DD70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26111BFA8()
{
  result = qword_27FE80FA8;
  if (!qword_27FE80FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE80FA8);
  }

  return result;
}

uint64_t sub_26111BFF4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26111C0EC;

  return v6(a1);
}

uint64_t sub_26111C0EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26111C20C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26111C268(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_26111C268(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26111C334(v11, 0, 0, 1, a1, a2);
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
    sub_2611105C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26111C334(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26111C440(a5, a6);
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
    result = sub_26115B984();
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

void *sub_26111C440(uint64_t a1, unint64_t a2)
{
  v3 = sub_26111C48C(a1, a2);
  sub_26111C5BC(&unk_287397A00);
  return v3;
}

void *sub_26111C48C(uint64_t a1, unint64_t a2)
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

  v6 = sub_26111C6A8(v5, 0);
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

  result = sub_26115B984();
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
        v10 = sub_26115B724();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26111C6A8(v10, 0);
        result = sub_26115B944();
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

uint64_t sub_26111C5BC(uint64_t result)
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

  result = sub_26111C71C(result, v11, 1, v3);
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

void *sub_26111C6A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81040, &qword_26115E228);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26111C71C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81040, &qword_26115E228);
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

_BYTE **sub_26111C810(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_26111C820(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_26111C840(uint64_t a1, uint64_t a2)
{
  v7[3] = type metadata accessor for PASViewControllerPresentationHandler();
  v7[4] = &off_287398688;
  v7[0] = a1;
  sub_26111BED4(v7, v6);
  v4 = OBJC_IVAR___PASUIDependentViewPresenter_navigationController;
  swift_beginAccess();

  sub_26111BF38(v6, a2 + v4);
  swift_endAccess();
  swift_getObjectType();
  sub_26115ABF4();
  sub_26115AC04();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_26111C924(uint64_t a1, uint64_t a2)
{
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81020, &qword_26115EC40);
  v8[4] = &protocol witness table for <A> Binding<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  sub_26110CE78(a1, boxed_opaque_existential_1, &qword_27FE81020, &qword_26115EC40);
  sub_26111BED4(v8, v7);
  v5 = OBJC_IVAR___PASUIDependentViewPresenter_navigationController;
  swift_beginAccess();
  sub_26111BF38(v7, a2 + v5);
  swift_endAccess();
  swift_getObjectType();
  sub_26115ABF4();
  sub_26115AC04();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_26111CA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_26111BED4(v11, v10);
  v8 = OBJC_IVAR___PASUIDependentViewPresenter_navigationController;
  swift_beginAccess();
  sub_26111BF38(v10, a2 + v8);
  swift_endAccess();
  swift_getObjectType();
  sub_26115ABF4();
  sub_26115AC04();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_26111CB5C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26111CBA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26110DB28;

  return sub_26111A280(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26111CC6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26111CCA4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26111B874;

  return sub_26111B2B0(v2);
}

uint64_t sub_26111CD38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26111CD70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26110CAC4;

  return sub_26111B4D8(a1, v4);
}

unint64_t sub_26111CE2C()
{
  result = qword_27FE80FD8;
  if (!qword_27FE80FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80FD8);
  }

  return result;
}

unint64_t sub_26111CE84()
{
  result = qword_27FE80FE0;
  if (!qword_27FE80FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80FE0);
  }

  return result;
}

unint64_t sub_26111CEDC()
{
  result = qword_27FE80FE8;
  if (!qword_27FE80FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80FE8);
  }

  return result;
}

unint64_t sub_26111CF34()
{
  result = qword_27FE80FF0;
  if (!qword_27FE80FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80FF0);
  }

  return result;
}

unint64_t sub_26111CF88()
{
  result = qword_27FE80FF8;
  if (!qword_27FE80FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80FF8);
  }

  return result;
}

uint64_t sub_26111D038@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_26111D0F0@<X0>(_BYTE *a2@<X8>)
{
  swift_getObjectType();
  result = sub_26115AC14();
  *a2 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for PASUITargetViewPresenterError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PASUITargetViewPresenterError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PASUITargetViewPresenter.AnalyticsEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PASUITargetViewPresenter.AnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26111D3AC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26111D3C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_26111D3FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110CAC4;

  return sub_2611185E8(v2, v3, v4);
}

uint64_t sub_26111D4B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110DB28;

  return sub_26113F41C(v2, v3, v4);
}

uint64_t sub_26111D574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110DB28;

  return sub_26113F504(a1, v4, v5, v6);
}

uint64_t sub_26111D640()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110DB28;

  return sub_261116F4C(v2, v3, v4);
}

uint64_t objectdestroy_38Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26111D73C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110DB28;

  return sub_261115AB8(v2, v3, v4);
}

uint64_t objectdestroy_42Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_26111D858()
{
  result = qword_27FE81010;
  if (!qword_27FE81010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81010);
  }

  return result;
}

unint64_t sub_26111D8AC()
{
  result = qword_27FE81018;
  if (!qword_27FE81018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81018);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26111D964(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26110DB28;

  return sub_26111BFF4(a1, v4);
}

unint64_t sub_26111DA1C()
{
  result = qword_27FE81038;
  if (!qword_27FE81038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81038);
  }

  return result;
}

uint64_t sub_26111DA74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PASUITargetViewPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26111DAF8(void *a1, void *a2)
{
  [v2 addChildViewController_];
  v5 = [a1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [a2 addSubview_];

  [a1 didMoveToParentViewController_];
  v7 = [a1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26115E240;
  v10 = [a1 view];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [a2 safeAreaLayoutGuide];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v9 + 32) = v15;
  v16 = [a1 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v16 bottomAnchor];

  v19 = [a2 safeAreaLayoutGuide];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v9 + 40) = v21;
  v22 = [a1 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [a2 safeAreaLayoutGuide];
  v26 = [v25 leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v9 + 48) = v27;
  v28 = [a1 view];
  if (!v28)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = [v29 trailingAnchor];

  v32 = [a2 safeAreaLayoutGuide];
  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v9 + 56) = v34;
  sub_26111DEC0();
  v35 = sub_26115B744();

  [v30 activateConstraints_];
}

unint64_t sub_26111DEC0()
{
  result = qword_27FE81050;
  if (!qword_27FE81050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE81050);
  }

  return result;
}

uint64_t sub_26111DF84(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v2[2])
  {
    v3 = v2[3];
    ObjectType = swift_getObjectType();
    v5 = v2[5];
    v6 = v2[6];
    v7 = *(v3 + 16);

    swift_unknownObjectRetain();
    v7(v5, v6, ObjectType, v3);
    swift_unknownObjectRelease();
    if (v2[2])
    {
      v8 = v2[3];
      v9 = swift_getObjectType();
      v11 = v2[7];
      v10 = v2[8];
      v12 = *(v8 + 40);

      swift_unknownObjectRetain();
      v12(v11, v10, v9, v8);
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_26111E0A0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;

  if (v2[2])
  {
    v4 = v2[3];
    ObjectType = swift_getObjectType();
    v7 = v2[5];
    v6 = v2[6];
    v8 = *(v4 + 16);

    swift_unknownObjectRetain();
    v8(v7, v6, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26111E164(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;

  if (v2[2])
  {
    v4 = v2[3];
    ObjectType = swift_getObjectType();
    v7 = v2[7];
    v6 = v2[8];
    v8 = *(v4 + 40);

    swift_unknownObjectRetain();
    v8(v7, v6, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26111E228(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v34 = a7;
      sub_26111EE24(v10, v37);
      v13 = v38;
      if (v38)
      {
        __swift_project_boxed_opaque_existential_1Tm(v37, v38);

        sub_26115A434();
        __swift_project_boxed_opaque_existential_1Tm(v35, v36);
        v13 = sub_26115A694();
        v15 = v14;
        __swift_destroy_boxed_opaque_existential_1(v35);
        __swift_destroy_boxed_opaque_existential_1(v37);
      }

      else
      {

        sub_26110CEE0(v37, &qword_27FE81098, &qword_26115E5F0);
        v15 = 0;
      }

      v33 = a2;
      sub_26111EE24(a2, v37);
      v16 = v38;
      if (v38)
      {
        __swift_project_boxed_opaque_existential_1Tm(v37, v38);
        sub_26115A434();
        __swift_project_boxed_opaque_existential_1Tm(v35, v36);
        v17 = sub_26115A694();
        v16 = v18;
        __swift_destroy_boxed_opaque_existential_1(v35);
        __swift_destroy_boxed_opaque_existential_1(v37);
      }

      else
      {
        sub_26110CEE0(v37, &qword_27FE81098, &qword_26115E5F0);
        v17 = 0;
      }

      v19 = a3(v13, v15, v17, v16);
      v21 = v20;

      if (v21)
      {
        v22 = v19;
      }

      else
      {
        v22 = 0;
      }

      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0xE000000000000000;
      }

      sub_26111E0A0(v22, v23);
      sub_26111EE94(a3, a4);

      a2 = v33;
      a7 = v34;
    }
  }

  if (a6)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_26111EE24(v10, v37);
      v24 = v38;
      if (v38)
      {
        __swift_project_boxed_opaque_existential_1Tm(v37, v38);

        sub_26115A434();
        __swift_project_boxed_opaque_existential_1Tm(v35, v36);
        v24 = sub_26115A694();
        v26 = v25;
        __swift_destroy_boxed_opaque_existential_1(v35);
        __swift_destroy_boxed_opaque_existential_1(v37);
      }

      else
      {

        sub_26110CEE0(v37, &qword_27FE81098, &qword_26115E5F0);
        v26 = 0;
      }

      sub_26111EE24(a2, v37);
      v27 = v38;
      if (v38)
      {
        __swift_project_boxed_opaque_existential_1Tm(v37, v38);
        sub_26115A434();
        __swift_project_boxed_opaque_existential_1Tm(v35, v36);
        v28 = sub_26115A694();
        v27 = v29;
        __swift_destroy_boxed_opaque_existential_1(v35);
        __swift_destroy_boxed_opaque_existential_1(v37);
      }

      else
      {
        sub_26110CEE0(v37, &qword_27FE81098, &qword_26115E5F0);
        v28 = 0;
      }

      v30 = a6(v24, v26, v28, v27);
      v32 = v31;

      sub_26111E164(v30, v32);
      sub_26111EE94(a6, a7);
    }
  }

  return result;
}

uint64_t sub_26111E628()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_26111E6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v10 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81068, &unk_26115E300);
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81070, &unk_261161BB0);
  v34 = *(v14 - 8);
  v35 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v17 = MEMORY[0x277D84F90];
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  if (v17 >> 62 && sub_26115B9A4())
  {
    v18 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  *(v4 + 32) = v18;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();
  *(v4 + 72) = sub_26115A2E4();

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA04();
  swift_unknownObjectRelease();

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0, MEMORY[0x277CBCEC8]);
  sub_26115AD74();
  sub_26111EC34();
  v19 = sub_26115B874();
  v40 = v19;
  v20 = sub_26115B854();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  sub_26111EDDC(&qword_27FE81080, &qword_27FE81068, &unk_26115E300, MEMORY[0x277CBCAF0]);
  sub_26111EC80();
  v21 = v33;
  sub_26115ADC4();
  sub_26110CEE0(v8, &qword_27FE81058, &unk_26115E2F0);

  (*(v32 + 8))(v13, v21);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v25 = v36;
  v24 = v37;
  v23[2] = v36;
  v23[3] = v24;
  v26 = v38;
  v23[4] = v22;
  v23[5] = v26;
  v27 = v39;
  v23[6] = v39;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26111ED68;
  *(v28 + 24) = v23;
  sub_2611122C8(v25, v24);
  sub_2611122C8(v26, v27);
  sub_26111EDDC(&qword_27FE81090, &qword_27FE81070, &unk_261161BB0, MEMORY[0x277CBCD60]);
  v29 = v35;
  sub_26115ADD4();

  (*(v34 + 8))(v16, v29);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  return v5;
}

unint64_t sub_26111EC34()
{
  result = qword_27FE81E90;
  if (!qword_27FE81E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE81E90);
  }

  return result;
}

unint64_t sub_26111EC80()
{
  result = qword_27FE81088;
  if (!qword_27FE81088)
  {
    sub_26111EC34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81088);
  }

  return result;
}

uint64_t sub_26111ECD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26111ED10()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26111ED78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26111EDDC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26111EE24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81098, &qword_26115E5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26111EE94(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_26111EEF4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_proxiedDevice] = 0;
  v5 = &v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_proxiedTermsRemoteUI];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptedTermsInfo;
  *&v2[v8] = sub_261110694(MEMORY[0x277D84F90]);
  v2[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_didAccept] = 0;
  v9 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler__viewControllerProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  swift_allocObject();
  *&v2[v9] = sub_26115A2E4();
  v10 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_authResults;
  v11 = sub_26115A3D4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v2[v10], a1, v11);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v12 + 8))(a1, v11);
  return v13;
}

uint64_t sub_26111F060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[21] = a7;
  v8[22] = v7;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  v9 = sub_26115AD64();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26111F12C, 0, 0);
}

uint64_t sub_26111F12C()
{
  v1 = v0[16];
  v41 = v0[17];
  v2 = v0[15];
  sub_26115A3C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81158, qword_26115E478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115E310;
  v4 = *MEMORY[0x277CEC738];
  *(inited + 32) = *MEMORY[0x277CEC738];
  v5 = *MEMORY[0x277CEC720];
  v6 = *MEMORY[0x277CEC730];
  *(inited + 40) = *MEMORY[0x277CEC720];
  *(inited + 48) = v6;
  v7 = *MEMORY[0x277CEC728];
  *(inited + 56) = *MEMORY[0x277CEC728];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  sub_261120B04(inited);
  swift_setDeallocating();
  type metadata accessor for AATermsEntry(0);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MEMORY[0x277CECAA0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE811C0, &qword_26115E490);
  v13 = sub_26115B604();

  sub_261120F08(&qword_27FE80D28, type metadata accessor for AATermsEntry, &unk_26115D774);
  v14 = sub_26115B7E4();

  v15 = [v12 initWithAuthResults:v13 proxiedDevice:v2 anisetteDataProvider:v1 appProvidedContext:v41 termsEntries:v14];
  v0[26] = v15;

  v42 = v15;
  sub_26115AD44();
  v16 = sub_26115AD54();
  v17 = sub_26115B834();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_261107000, v16, v17, "PASUIProxiedTermsHandler loadProxiedTerms", v18, 2u);
    MEMORY[0x2666FA930](v18, -1, -1);
  }

  v20 = v0[24];
  v19 = v0[25];
  v21 = v0[22];
  v22 = v0[23];
  v23 = v0[21];
  v40 = v0[20];
  v24 = v0[18];
  v25 = v0[19];
  v26 = v0[15];

  (*(v20 + 8))(v19, v22);
  [v42 setDelegate_];
  v27 = *(v21 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_proxiedDevice);
  *(v21 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_proxiedDevice) = v26;

  v28 = (v21 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction);
  v29 = *(v21 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction);
  v30 = *(v21 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction + 8);
  *v28 = v24;
  v28[1] = v25;
  v31 = v26;
  sub_26111EE94(v29, v30);
  v32 = (v21 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction);
  v33 = *(v21 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction);
  v34 = *(v21 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction + 8);
  *v32 = v40;
  v32[1] = v23;

  sub_26111EE94(v33, v34);
  v35 = (v21 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_proxiedTermsRemoteUI);
  *v35 = v42;
  v35[1] = &off_287398508;

  swift_unknownObjectRelease();
  sub_26115B7A4();
  v36 = v42;
  v0[27] = sub_26115B794();
  v38 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26111F4E0, v38, v37);
}

uint64_t sub_26111F4E0()
{
  v1 = v0[26];

  sub_26115A2D4();

  v2 = v0[13];
  v3 = v0[14];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 10, v2);
  v4 = (*(v3 + 8))(v2, v3);
  [v1 presentFromViewController:v4 modal:1];

  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  return MEMORY[0x2822009F8](sub_26111F5D4, 0, 0);
}

uint64_t sub_26111F5D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26111F63C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptedTermsInfo;
  if (*(*(v2 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptedTermsInfo) + 16))
  {
    sub_26115AD44();
    v9 = sub_26115AD54();
    v10 = sub_26115B814();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261107000, v9, v10, "PASUIProxiedTermsHandler setAcceptedTermsInfo is not empty", v11, 2u);
      MEMORY[0x2666FA930](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  *(v2 + v8) = a1;

  if (*(v2 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_didAccept) == 1)
  {
    return sub_26111F7D0();
  }

  return result;
}

uint64_t sub_26111F7D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v37 - v3;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v37 = &v37 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  sub_26115AD44();
  v16 = sub_26115AD54();
  v17 = sub_26115B804();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_261107000, v16, v17, "PASUIProxiedTermsHandler handleAccept", v18, 2u);
    MEMORY[0x2666FA930](v18, -1, -1);
  }

  v19 = *(v5 + 8);
  v19(v15, v4);
  v20 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_didAccept;
  if (v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_didAccept] == 1)
  {
    sub_26115AD44();
    v21 = sub_26115AD54();
    v22 = sub_26115B814();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_261107000, v21, v22, "PASUIProxiedTermsHandler handleAccept entered multiple times", v23, 2u);
      MEMORY[0x2666FA930](v23, -1, -1);
    }

    v19(v13, v4);
  }

  v1[v20] = 1;
  if (*(*&v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptedTermsInfo] + 16))
  {
    v24 = *&v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction];
    if (v24)
    {
      v25 = *&v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction + 8];
      v26 = sub_26115B7D4();
      v27 = v38;
      (*(*(v26 - 8) + 56))(v38, 1, 1, v26);
      sub_26115B7A4();
      sub_2611122C8(v24, v25);
      sub_2611122C8(v24, v25);
      v28 = v1;
      v29 = sub_26115B794();
      v30 = swift_allocObject();
      v31 = MEMORY[0x277D85700];
      v30[2] = v29;
      v30[3] = v31;
      v30[4] = v24;
      v30[5] = v25;
      v30[6] = v28;
      sub_261112D1C(0, 0, v27, &unk_26115E4B0, v30);
      sub_26111EE94(v24, v25);
    }

    v8 = v37;
    sub_26115AD44();
    v33 = sub_26115AD54();
    v34 = sub_26115B814();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "PASUIProxiedTermsHandler handleAccept acceptAction is nil";
      goto LABEL_14;
    }
  }

  else
  {
    sub_26115AD44();
    v33 = sub_26115AD54();
    v34 = sub_26115B814();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "PASUIProxiedTermsHandler handleAccept acceptedTermsInfo isEmpty";
LABEL_14:
      _os_log_impl(&dword_261107000, v33, v34, v36, v35, 2u);
      MEMORY[0x2666FA930](v35, -1, -1);
    }
  }

  return (v19)(v8, v4);
}

uint64_t sub_26111FC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_26115B7A4();
  v6[5] = sub_26115B794();
  v8 = sub_26115B774();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_26111FD08, v8, v7);
}

uint64_t sub_26111FD08()
{
  v1 = v0[2];
  v2 = *(v0[4] + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptedTermsInfo);
  v0[8] = v2;

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_26111FE18;

  return v5(v2);
}

uint64_t sub_26111FE18()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_26111FF5C, v3, v2);
}

uint64_t sub_26111FF5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26111FFBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_26115AD64();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  sub_26115AD44();
  v12 = sub_26115AD54();
  v13 = sub_26115B804();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_261107000, v12, v13, "PASUIProxiedTermsHandler handleDecline", v14, 2u);
    MEMORY[0x2666FA930](v14, -1, -1);
  }

  v15 = *(v6 + 8);
  v15(v11, v5);
  v16 = v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction;
  v17 = *(v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction);
  if (v17)
  {
    v18 = *(v16 + 8);
    v19 = sub_26115B7D4();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    sub_26115B7A4();
    sub_2611122C8(v17, v18);

    v20 = sub_26115B794();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v17;
    v21[5] = v18;
    sub_261112D1C(0, 0, v4, &unk_26115E4C0, v21);
    sub_26111EE94(v17, v18);
  }

  else
  {
    sub_26115AD44();
    v24 = sub_26115AD54();
    v25 = sub_26115B814();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_261107000, v24, v25, "PASUIProxiedTermsHandler handleDecline declineAction is nil", v26, 2u);
      MEMORY[0x2666FA930](v26, -1, -1);
    }

    return (v15)(v9, v5);
  }
}

uint64_t sub_2611202E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_26115B7A4();
  v4[3] = sub_26115B794();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_26110E430;

  return v8();
}

id sub_261120424()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PASUIProxiedTermsHandler(uint64_t a1)
{
  result = qword_27FE810E8;
  if (!qword_27FE810E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261120584(uint64_t a1)
{
  result = sub_26115A3D4();
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

uint64_t sub_261120650@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_26115ADA4();
  *a2 = result;
  return result;
}

uint64_t sub_261120690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_26110CAC4;

  return sub_26111F060(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_261120870(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26115B9A4();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE811E0, &qword_26115E4C8);
      result = sub_26115B934();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_26115B9A4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x2666FA050](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_26115AD94();
    sub_261120F08(&qword_27FE811E8, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_26115B644();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_261120F08(&qword_27FE811F0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_26115B664();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_261120B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE811D0, &qword_26115E498);
    v3 = sub_26115B934();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_26115B6A4();
      sub_26115BA94();
      v27 = v7;
      sub_26115B704();
      v8 = sub_26115BAB4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_26115B6A4();
        v18 = v17;
        if (v16 == sub_26115B6A4() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_26115B9F4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_261120CF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261120D40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26110CAC4;

  return sub_26111FC6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_261120E08()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261120E48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110DB28;

  return sub_2611202E4(a1, v4, v5, v6);
}

uint64_t sub_261120F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PASFlowStepPasscodeBiometricsRequest.buildView()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE811F8, qword_26115E4E0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  sub_261121FF4(&qword_27FE81200, MEMORY[0x277D435A0], MEMORY[0x277D433C0]);

  v7 = sub_26115AF34();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();
  v10 = sub_26115A2E4();
  v15 = v7;
  v16 = v9;
  v17 = v10;
  v11 = sub_26112119C();
  sub_26115B414();

  (*(v1 + 16))(v4, v6, v0);
  v15 = &type metadata for PASUIPasscodeBiometricsRequestView;
  v16 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = sub_26115B574();
  (*(v1 + 8))(v6, v0);
  return v12;
}

unint64_t sub_26112119C()
{
  result = qword_27FE81208;
  if (!qword_27FE81208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81208);
  }

  return result;
}

uint64_t sub_261121200(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE811F8, qword_26115E4E0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  sub_261121FF4(&qword_27FE81200, MEMORY[0x277D435A0], MEMORY[0x277D433C0]);

  v8 = sub_26115AF34();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();
  v11 = sub_26115A2E4();
  v16 = v8;
  v17 = v10;
  v18 = v11;
  v12 = sub_26112119C();
  sub_26115B414();

  (*(v2 + 16))(v5, v7, v1);
  v16 = &type metadata for PASUIPasscodeBiometricsRequestView;
  v17 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v13;
}

uint64_t sub_261121424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26112146C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2611214D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  swift_retain_n();
  v10 = swift_retain_n();
  v11 = sub_261121744(v10);
  v13 = v12;
  v14 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100) + 36));
  sub_26115AF04();
  result = sub_26115B7B4();
  *v14 = &unk_26115E5E0;
  v14[1] = a2;
  *a4 = sub_26110C934;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = sub_2611216E8;
  *(a4 + 32) = v8;
  *(a4 + 40) = sub_261121730;
  *(a4 + 48) = v9;
  *(a4 + 56) = 0;
  *(a4 + 64) = v11;
  *(a4 + 72) = v13;
  *(a4 + 80) = 1;
  *(a4 + 88) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_261121628()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26110E430;

  return MEMORY[0x2821A4B58]();
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261121744(uint64_t a1)
{
  sub_26115A2D4();
  swift_getObjectType();
  sub_26115A9F4(&v6);
  swift_unknownObjectRelease();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v6, v7);
    v1 = sub_26115A454();
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_1(&v6);
    if (v3)
    {
      return v1;
    }
  }

  else
  {
    sub_26112192C(&v6);
  }

  sub_26115A2D4();
  swift_getObjectType();
  sub_26115A9F4(&v6);
  swift_unknownObjectRelease();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v6, v7);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
    v1 = sub_26115A6A4();
    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  else
  {
    sub_26112192C(&v6);
    v1 = 0;
  }

  return v1;
}

uint64_t sub_26112189C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110CAC4;

  return sub_261121628();
}

uint64_t sub_26112192C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81098, &qword_26115E5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261121994()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115A2D4();
  swift_getObjectType();
  sub_26115A9F4(&v12);
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_261110928(&v12, v14);
    *&v12 = 0;
    *(&v12 + 1) = 0xE000000000000000;
    sub_26115B954();

    v11[0] = 0x45444F4353534150;
    v11[1] = 0xE90000000000005FLL;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v4 = sub_26115A444();
    MEMORY[0x2666F9DF0](v4);

    MEMORY[0x2666F9DF0](0x545345555145525FLL, 0xEF5F454C5449545FLL);
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(&v12, v13);
    v5 = sub_26115A694();
    MEMORY[0x2666F9DF0](v5);

    __swift_destroy_boxed_opaque_existential_1(&v12);
    v6 = sub_26115B6F4();

    __swift_destroy_boxed_opaque_existential_1(v14);
    return v6;
  }

  else
  {
    sub_26112192C(&v12);
    sub_26115AD44();
    v8 = sub_26115AD54();
    v9 = sub_26115B814();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261107000, v8, v9, "PASUIPasscodeBiometricsRequestView title targetDevice is nil", v10, 2u);
      MEMORY[0x2666FA930](v10, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return sub_26115B6F4();
  }
}

uint64_t sub_261121C54(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0x4E574F4E4B4E55;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_26115A2D4();
  swift_getObjectType();
  sub_26115A9F4(&v14);
  swift_unknownObjectRelease();
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v14, v16);
    v4 = sub_26115A444();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    sub_26112192C(&v14);
    v6 = 0xED00005343495254;
    v4 = 0x454D4F49425F4F4ELL;
  }

  v7 = sub_26115ACC4();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_26115B954();

    v14 = 0xD00000000000001BLL;
    v15 = 0x8000000261163A30;
    MEMORY[0x2666F9DF0](v2, v3);

    MEMORY[0x2666F9DF0](95, 0xE100000000000000);
    MEMORY[0x2666F9DF0](v4, v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B30, &qword_261160B70);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26115D860;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_261121EE0();
    *(v11 + 32) = v9;
    *(v11 + 40) = v10;
    v12 = sub_26115B6D4();
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_26115B954();

    v14 = 0xD00000000000001ELL;
    v15 = 0x8000000261163A10;
    MEMORY[0x2666F9DF0](v2, v3);

    MEMORY[0x2666F9DF0](95, 0xE100000000000000);
    MEMORY[0x2666F9DF0](v4, v6);

    v12 = sub_26115B6F4();
  }

  return v12;
}

unint64_t sub_261121EE0()
{
  result = qword_27FE81210;
  if (!qword_27FE81210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81210);
  }

  return result;
}

unint64_t sub_261121F38()
{
  result = qword_27FE80C78;
  if (!qword_27FE80C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80C48, &unk_261160100);
    sub_26110CD50();
    sub_261121FF4(&qword_27FE80C70, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80C78);
  }

  return result;
}

uint64_t sub_261121FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261122040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11 = a1;
  v12 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81218, &qword_26115E608);
  if (swift_dynamicCast())
  {
    sub_261110928(v9, v13);
    v4 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    *&v9[0] = (*(v5 + 8))(v4, v5);
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81228, &qword_26115E618));
    v7 = sub_26115B0D4();
    [*(v3 + 16) pushViewController:v7 animated:0];

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    return sub_26110CEE0(v9, &qword_27FE81220, &qword_26115E610);
  }
}

uint64_t sub_261122174()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2611221D0(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81218, &qword_26115E608);
  if (swift_dynamicCast())
  {
    sub_261110928(v7, v11);
    v2 = v12;
    v3 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    *&v7[0] = (*(v3 + 8))(v2, v3);
    v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81228, &qword_26115E618));
    v5 = sub_26115B0D4();
    sub_261122374(v5);

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    return sub_26110CEE0(v7, &qword_27FE81220, &qword_26115E610);
  }
}

uint64_t PASDefaultFlowStepsPresentationHandler.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_261122374(void *a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  v9 = [v8 view];
  if (!v9)
  {
    sub_26115AD44();

    v19 = sub_26115AD54();
    v20 = sub_26115B814();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      *(v21 + 4) = v8;
      *v22 = v8;
      v23 = v8;
      _os_log_impl(&dword_261107000, v19, v20, "PASUITargetViewPresenter addHostingController failed - no view on %{public}@", v21, 0xCu);
      sub_26110CEE0(v22, &qword_27FE81EB0, &qword_26115F960);
      MEMORY[0x2666FA930](v22, -1, -1);
      MEMORY[0x2666FA930](v21, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return;
  }

  v28 = v9;
  v10 = [v8 childViewControllers];
  sub_261122758();
  v11 = sub_26115B754();

  v26 = a1;
  v27 = v8;
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_19:

    sub_26111DAF8(v26, v28);
    v24 = v28;

    return;
  }

LABEL_18:
  v12 = sub_26115B9A4();
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_4:
  v13 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2666FA050](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v17 = [v14 view];
    if (!v17)
    {
      break;
    }

    v18 = v17;
    [v17 removeFromSuperview];

    [v15 removeFromParentViewController];
    ++v13;
    if (v16 == v12)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

unint64_t sub_261122758()
{
  result = qword_27FE818F0;
  if (!qword_27FE818F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE818F0);
  }

  return result;
}

uint64_t sub_2611227A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_261122874(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

id sub_2611227D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *v10 = *(v1 + 40);
  *(a1 + 32) = *v10;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v6;
  sub_2611122C8(v2, v3);
  sub_2611122C8(v4, v5);

  return v10[0];
}

uint64_t sub_261122874(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D433B8], v4);
  v8 = sub_26115A3E4();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_26115B954();

  v13 = 0xD00000000000001BLL;
  v14 = 0x8000000261163B70;
  if (a2)
  {

    v10 = a2;
  }

  else
  {
    a1 = v8;
  }

  MEMORY[0x2666F9DF0](a1, v10);

  v11 = sub_26115B6F4();

  return v11;
}

uint64_t sub_261122A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26115A3F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277D433B8], v8);
  v12 = sub_26115A3E4();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_26115B954();

  v18 = 0xD000000000000014;
  v19 = 0x8000000261163B50;
  v15 = a4;
  if (!a4)
  {

    a3 = v12;
    v15 = v14;
  }

  MEMORY[0x2666F9DF0](a3, v15);

  MEMORY[0x2666F9DF0](95, 0xE100000000000000);
  if (a2)
  {

    v14 = a2;
  }

  else
  {
    a1 = v12;
  }

  MEMORY[0x2666F9DF0](a1, v14);

  v16 = sub_26115B6F4();

  return v16;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_261122C18(uint64_t a1, int a2)
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

uint64_t sub_261122C60(uint64_t result, int a2, int a3)
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

uint64_t PASFlowStepCheckInternet.buildView()()
{
  sub_261124B68(&qword_27FE81230, MEMORY[0x277D434B8], MEMORY[0x277D433C0]);

  sub_26115AF34();
  sub_261122D9C();
  return sub_26115B574();
}

unint64_t sub_261122D9C()
{
  result = qword_27FE81238;
  if (!qword_27FE81238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81238);
  }

  return result;
}

void *sub_261122DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PASUICheckInternetViewProxCardAdapter();
  v3 = swift_allocObject();

  result = sub_261122EF4(v4);
  *(a1 + 24) = v2;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v3;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_261122E58(uint64_t a1)
{
  sub_261124B68(&qword_27FE81230, MEMORY[0x277D434B8], MEMORY[0x277D433C0]);

  sub_26115AF34();
  sub_261122D9C();
  return sub_26115B574();
}

void *sub_261122EF4(uint64_t a1)
{
  v2 = v1;
  v1[4] = a1;

  sub_26115B6F4();

  v4 = sub_26115B674();

  v9[4] = sub_261124A6C;
  v9[5] = a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26114D6D0;
  v9[3] = &block_descriptor_41;
  v5 = _Block_copy(v9);
  v6 = [objc_opt_self() actionWithTitle:v4 style:1 handler:v5];

  _Block_release(v5);

  v2[5] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();
  v2[2] = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    v7 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v2[3] = v7;
  return v2;
}

uint64_t sub_2611230A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_26115B7D4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_26115B7A4();

  v7 = sub_26115B794();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_261112D1C(0, 0, v5, &unk_26115EA10, v8);
}

uint64_t sub_2611231C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_26115B7A4();
  v4[8] = sub_26115B794();
  v6 = sub_26115B774();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_26112325C, v6, v5);
}

uint64_t sub_26112325C()
{
  v1 = type metadata accessor for PASUIMonogramMaker();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = sub_261124B68(&qword_27FE812A8, type metadata accessor for PASUIMonogramMaker, &unk_26115D834);
  v0[2] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_26112335C;

  return MEMORY[0x2821A49A0](v0 + 2);
}

uint64_t sub_26112335C()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v2 = v1[10];
  v3 = v1[9];

  return MEMORY[0x2822009F8](sub_261123488, v3, v2);
}

uint64_t sub_261123488()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2611234E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81298, &unk_26115E9C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  sub_26114CA50(a1);
  [*(v1 + 40) setEnabled_];
  sub_26115A994();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  sub_26111EDDC(&qword_27FE812A0, &qword_27FE81298, &unk_26115E9C0, MEMORY[0x277CBCEC8]);
  swift_unknownObjectRetain();
  sub_26115ADD4();

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2611247C8;
  *(v12 + 24) = v11;

  v13 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);
  v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];

  _Block_release(v14);

  [a1 setDismissButtonAction_];
}

uint64_t sub_261123864(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if ((v8 & 1) == 0)
    {
      v11 = sub_26115B7D4();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      sub_26115B7A4();
      swift_unknownObjectRetain();

      v12 = sub_26115B794();
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D85700];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = a3;
      v13[5] = v10;
      sub_261112D1C(0, 0, v7, &unk_26115E9F8, v13);
    }
  }

  return result;
}

uint64_t sub_2611239D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_26115B7A4();
  v5[4] = sub_26115B794();
  v7 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_261123A70, v7, v6);
}

uint64_t sub_261123A70()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_26115B6F4();
  v3 = sub_26115B674();

  [v2 setTitle_];

  sub_26115B6F4();
  v4 = sub_26115B674();

  [v2 setSubtitle_];

  v5 = *(v1 + 40);
  [v5 setEnabled_];
  v6 = v0[1];

  return v6();
}

uint64_t sub_261123BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong viewController];
      v7 = *(v4 + 32);
      v8 = swift_allocObject();
      *(v8 + 16) = sub_261112550;
      *(v8 + 24) = v7;
      swift_retain_n();
      sub_26114D9D4(v6, &unk_26115E9D8, v7, &unk_26115E9E0, v8);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_261123CEC()
{
  v3 = (*MEMORY[0x277D43428] + MEMORY[0x277D43428]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110CAC4;

  return v3();
}

void sub_261123D90()
{

  v1 = *(v0 + 40);
}

uint64_t sub_261123DC0()
{

  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_261123E50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_261123E98(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_261123F00@<X0>(uint64_t a1@<X8>)
{
  v28[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81240, &qword_26115E928);
  MEMORY[0x28223BE20](v1);
  v3 = v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81248, &qword_26115E930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  v7 = sub_26115AF74();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81250, &qword_26115E938);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81258, &qword_26115E940);
  MEMORY[0x28223BE20](v14);
  v16 = v28 - v15;
  if (sub_26115A984())
  {
    swift_storeEnumTagMultiPayload();
    sub_2611244C8();
    sub_26110CC00();
    return sub_26115B104();
  }

  else
  {
    sub_26115B4D4();
    sub_26115B084();
    v18 = sub_26115B094();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    v19 = sub_26115B4F4();
    v28[1] = v1;
    v20 = v19;

    sub_26110CEE0(v13, &qword_27FE81250, &qword_26115E938);
    v28[3] = v20;
    sub_26115AF64();
    sub_26115B374();
    (*(v8 + 8))(v10, v7);

    v21 = sub_26115B274();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v22 = sub_26115B294();
    sub_26110CEE0(v6, &qword_27FE81248, &qword_26115E930);
    KeyPath = swift_getKeyPath();
    v24 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81260, &qword_26115E978) + 36)];
    *v24 = KeyPath;
    v24[1] = v22;
    v25 = sub_26115B474();
    v26 = swift_getKeyPath();
    v27 = &v16[*(v14 + 36)];
    *v27 = v26;
    v27[1] = v25;
    sub_261124458(v16, v3);
    swift_storeEnumTagMultiPayload();
    sub_2611244C8();
    sub_26110CC00();
    sub_26115B104();
    return sub_261124668(v16);
  }
}

uint64_t sub_261124350@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26115B004();
  *a1 = result;
  return result;
}

uint64_t sub_26112437C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26115B004();
  *a1 = result;
  return result;
}

uint64_t sub_261124400@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26115AFE4();
  *a1 = result;
  return result;
}

uint64_t sub_261124458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81258, &qword_26115E940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2611244C8()
{
  result = qword_27FE81268;
  if (!qword_27FE81268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81258, &qword_26115E940);
    sub_261124580();
    sub_26111EDDC(&qword_27FE81288, &qword_27FE81290, &qword_26115E9B8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81268);
  }

  return result;
}

unint64_t sub_261124580()
{
  result = qword_27FE81270;
  if (!qword_27FE81270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81260, &qword_26115E978);
    swift_getOpaqueTypeConformance2();
    sub_26111EDDC(&qword_27FE81278, &qword_27FE81280, &qword_26115E9B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81270);
  }

  return result;
}

uint64_t sub_261124668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81258, &qword_26115E940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2611246D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261124728()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_17Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2611247D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261124828()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110DB28;

  return sub_261123CEC();
}

uint64_t sub_2611248B8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26110DB28;

  return sub_261157C74(v2);
}

uint64_t sub_261124964()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2611249AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26110DB28;

  return sub_2611239D8(a1, v4, v5, v7, v6);
}

uint64_t sub_261124A74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261124AB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110CAC4;

  return sub_2611231C4(a1, v4, v5, v6);
}

uint64_t sub_261124B68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261124BB4()
{
  result = qword_27FE812B0;
  if (!qword_27FE812B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE812B8, &qword_26115EA18);
    sub_2611244C8();
    sub_26110CC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE812B0);
  }

  return result;
}

uint64_t sub_261124C54()
{
  sub_26115BA94();
  sub_26115B704();
  return sub_26115BAB4();
}

uint64_t sub_261124CC8(uint64_t a1)
{
  sub_26115BA94();
  sub_26115B704();
  return sub_26115BAB4();
}

uint64_t sub_261124D1C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26115B9D4();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_261124DBC(void *a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v8 = sub_26115AD54();
  v9 = sub_26115B7F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_261107000, v8, v9, "PASUINonUIExtensionConfiguration accept extension is accepting a new non-UI connection", v10, 2u);
    MEMORY[0x2666FA930](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = sub_26115ACA4();
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 activate];
  return 1;
}

void sub_261125084(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_261125234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26115A1D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2611252A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE811C0, &qword_26115E490);
    v4 = sub_26115B614();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_261125494(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE811C0, &qword_26115E490);
    v5 = sub_26115B604();
  }

  if (a2)
  {
    v6 = sub_26115A1D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_261125670(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_2611257F8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26115A1D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_26112599C(uint64_t a1, id a2, void (*a3)(void, id), uint64_t a4, id a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v10 = a2;
    a3(0, a2);
  }

  else
  {
    [a5 setAnisetteDataProvider_];
    v14 = *(a6 + 16);
    v16[4] = a3;
    v16[5] = a4;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_2611252A4;
    v16[3] = &block_descriptor_33;
    v15 = _Block_copy(v16);

    [v14 authenticateWithAccount:a7 with:a5 completion:v15];
    _Block_release(v15);
  }
}

uint64_t sub_261125AD4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_261125C10(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26115ACD4();
  [a1 setRemoteObjectInterface_];

  [a1 activate];
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261130250;
  aBlock[3] = &block_descriptor_36;
  v7 = _Block_copy(aBlock);

  v8 = [a1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_26115B8F4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE812D8, &qword_26115EB28);
  swift_dynamicCast();
  return v10;
}

uint64_t sub_261125D54(void *a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = objc_opt_self();
  _Block_copy(a4);
  v10 = [v9 currentConnection];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_261125FE4;
    *(v12 + 24) = v8;

    v13 = sub_261125C10(v11, sub_261126078, v12);

    v14 = swift_allocObject();
    v14[2] = sub_261125FE4;
    v14[3] = v8;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a1;
    v21[4] = sub_2611260F8;
    v21[5] = v14;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_261125AD4;
    v21[3] = &block_descriptor_2;
    v15 = _Block_copy(v21);

    v16 = a2;

    v17 = a1;

    [v13 fetchExtrasWithCompletion_];
    _Block_release(v15);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_261125FEC();
    v19 = swift_allocError();
    v20 = sub_26115A1D4();
    (a4)[2](a4, 0, v20);
  }
}

uint64_t sub_261125FAC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_261125FEC()
{
  result = qword_27FE812C8;
  if (!qword_27FE812C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE812C8);
  }

  return result;
}

uint64_t sub_261126040()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2611260A8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for PASUINonUIExtensionConfigurationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PASUINonUIExtensionConfigurationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_261126238()
{
  result = qword_27FE812E0;
  if (!qword_27FE812E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE812E0);
  }

  return result;
}

uint64_t sub_2611262F8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81218, &qword_26115E608);
  if (swift_dynamicCast())
  {
    sub_261110928(v8, &v11);
    v3 = v13;
    v4 = v14;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v13);
    *&v10 = (*(v4 + 8))(v3, v4);
    BYTE8(v10) = 0;
    sub_26115B104();
    v5 = *&v8[0];
    v6 = BYTE8(v8[0]);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_26110CEE0(v8, &qword_27FE81220, &qword_26115E610);
    *&v8[0] = 0;
    BYTE8(v8[0]) = 1;
    result = sub_26115B104();
    v5 = v11;
    v6 = v12;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_261126494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81308, &qword_26115EDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81310, &unk_26115EDE8);
  sub_261126DBC();
  sub_261126B90();
  sub_261126E20();
  return sub_26115B3F4();
}

uint64_t View.targetDeviceSetupPresenter(with:presenterDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81020, &qword_26115EC40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v15 - v9;
  sub_26112664C(a1, v15 - v9);
  swift_unknownObjectRetain();
  v11 = sub_2611269D4(v10, a2);
  v13 = v12;
  swift_unknownObjectRelease();
  v15[0] = v11;
  v15[1] = v13;
  MEMORY[0x2666F9B40](v15, a3, &type metadata for PASTargetDeviceSetupPresenterModifier, a4);
}

uint64_t sub_26112664C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81020, &qword_26115EC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Binding<A>.present(step:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26115AF24();
  MEMORY[0x28223BE20](v2 - 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81020, &qword_26115EC40);
  MEMORY[0x2666F9C60]();
  sub_261126B90();
  sub_26115AF14();
  swift_unknownObjectRelease();
  return sub_26115B594();
}

uint64_t sub_2611267A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  swift_unknownObjectRetain();
  MEMORY[0x2666F9C60](a3);
  sub_261126B90();
  sub_26115AF14();
  swift_unknownObjectRelease();
  return sub_26115B594();
}

uint64_t sub_26112686C(uint64_t a1, uint64_t a2)
{
  sub_26115BA94();
  sub_26115B654();
  return sub_26115BAB4();
}

uint64_t sub_2611268D0()
{
  swift_getObjectType();
  v0 = sub_26115B964();
  return MEMORY[0x2666FA180](v0);
}

uint64_t sub_261126918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26115BA94();
  sub_26115B654();
  return sub_26115BAB4();
}

BOOL sub_261126978(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v2 = sub_26115B964();
  swift_getObjectType();
  return v2 == sub_26115B964();
}

id sub_2611269D4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81020, &qword_26115EC40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v13 = [objc_allocWithZone(type metadata accessor for PASUITargetViewPresenter()) init];
  sub_26115B514();
  v6 = v15;
  v7 = v16;
  swift_retain_n();
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81328, &qword_26115EDF8);
  sub_26115B524();
  v9 = v13;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v13 = v8;
  v14 = v7;
  sub_26115B524();

  v10 = v12;
  sub_26112664C(a1, v5);
  sub_26111C924(v5, v10);

  sub_26110CEE0(a1, &qword_27FE81020, &qword_26115EC40);
  sub_26110CEE0(v5, &qword_27FE81020, &qword_26115EC40);
  return v8;
}

unint64_t sub_261126B90()
{
  result = qword_27FE812F0;
  if (!qword_27FE812F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE812F0);
  }

  return result;
}

uint64_t sub_261126BE4(void *a1)
{
  sub_26115AF84();
  sub_261126C48();
  return swift_getWitnessTable();
}

unint64_t sub_261126C48()
{
  result = qword_27FE812F8;
  if (!qword_27FE812F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE812F8);
  }

  return result;
}

uint64_t sub_261126CB4(uint64_t *a1, int a2)
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

uint64_t sub_261126CFC(uint64_t result, int a2, int a3)
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

unint64_t sub_261126D68()
{
  result = qword_27FE81300;
  if (!qword_27FE81300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81300);
  }

  return result;
}

unint64_t sub_261126DBC()
{
  result = qword_27FE81318;
  if (!qword_27FE81318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81308, &qword_26115EDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81318);
  }

  return result;
}

unint64_t sub_261126E20()
{
  result = qword_27FE81320;
  if (!qword_27FE81320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81310, &unk_26115EDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81320);
  }

  return result;
}

uint64_t sub_261126EA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81308, &qword_26115EDE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81310, &unk_26115EDE8);
  sub_261126DBC();
  sub_261126B90();
  sub_261126E20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PASFlowStepProxiedTerms.buildView()()
{
  v0 = sub_26115A3D4();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81330, qword_26115EE00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  sub_2611277B8(&qword_27FE81338, MEMORY[0x277D43490], MEMORY[0x277D433C0]);

  v10 = sub_26115AF34();
  v12 = v11;
  sub_26115A814();
  v13 = objc_allocWithZone(type metadata accessor for PASUIProxiedTermsHandler(0));
  v14 = sub_26111EEF4(v2);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v20 = v10;
  v21 = v12;
  v22 = sub_26112725C;
  v23 = v15;
  v24 = 0;
  v16 = sub_261127264();
  sub_26115B414();

  (*(v4 + 16))(v7, v9, v3);
  v20 = &type metadata for PASUIProxiedTermsView;
  v21 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_26115B574();
  (*(v4 + 8))(v9, v3);
  return v17;
}

uint64_t sub_261127224()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_261127264()
{
  result = qword_27FE81340;
  if (!qword_27FE81340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81340);
  }

  return result;
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

uint64_t sub_2611272D8(uint64_t a1, int a2)
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

uint64_t sub_261127320(uint64_t result, int a2, int a3)
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

double sub_261127390@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v12 = *v1;
  v4 = *(&v12 + 1);
  v10 = v3;
  v11 = *(v1 + 32);
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100) + 36));
  sub_26115AF04();

  sub_26110CE78(&v12, v9, &qword_27FE81348, &qword_26115EF40);
  sub_26110CE78(&v10, v9, &qword_27FE81350, &qword_26115EF48);
  sub_26115B7B4();
  *v7 = &unk_26115EF30;
  v7[1] = v5;
  *a1 = sub_26110C934;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_26110C93C;
  *(a1 + 32) = 0;
  *(a1 + 40) = sub_26110C970;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  *(a1 + 88) = MEMORY[0x277D84F90];
  return result;
}