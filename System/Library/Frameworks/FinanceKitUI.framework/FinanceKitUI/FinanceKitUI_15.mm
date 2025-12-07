double sub_2385B2E6C()
{
  sub_23875C650();

  return sub_2385B17A4();
}

unint64_t sub_2385B2ED0()
{
  result = qword_27DF0F810;
  if (!qword_27DF0F810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0F810);
  }

  return result;
}

unint64_t sub_2385B2F1C()
{
  result = qword_27DF0F818;
  if (!qword_27DF0F818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F7D0, &unk_238773318);
    sub_2385B2FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F818);
  }

  return result;
}

unint64_t sub_2385B2FA8()
{
  result = qword_27DF0F820;
  if (!qword_27DF0F820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F7B0, &unk_238773300);
    sub_2385B3060();
    sub_23843A3E8(&qword_27DF0F830, &qword_27DF0F838, qword_2387733A8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F820);
  }

  return result;
}

unint64_t sub_2385B3060()
{
  result = qword_27DF0F828;
  if (!qword_27DF0F828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F7A8, &qword_2387732F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F798, &qword_2387732E8);
    sub_23875D2E0();
    sub_2385B2BB4();
    sub_2385B2738(&qword_27DF0F7C0, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F828);
  }

  return result;
}

double sub_2385B3180@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  v7 = *(type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS(0) + 24);
  *(a1 + v7) = swift_getKeyPath(aX_9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_2385B3214@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_23875CE00();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F858, &qword_238773538);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F860, &qword_238773540);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F868, &qword_238773548);
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  MEMORY[0x28223BE20](v11);
  v30 = v1;
  v31 = &v29 - v13;
  v40 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BAE8, &unk_23876A630);
  sub_2384BF528();
  sub_23875C410();
  v41 = sub_2385B3810();
  v42 = v14;
  v15 = sub_23843A3E8(&qword_27DF0F870, &qword_27DF0F858, &qword_238773538, MEMORY[0x277CDD6E0]);
  v18 = sub_2384397A8(v15, v16, v17);
  v19 = MEMORY[0x277D837D0];
  sub_23875DC70();

  (*(v5 + 8))(v7, v4);
  v20 = v33;
  v21 = v34;
  v22 = v35;
  (*(v34 + 104))(v33, *MEMORY[0x277CDDDC0], v35);
  v41 = v4;
  v42 = v19;
  v43 = v15;
  v44 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v31;
  sub_23875DE50();
  (*(v21 + 8))(v20, v22);
  (*(v32 + 8))(v10, v8);
  v39 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA20, &unk_238771150);
  v41 = v8;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA28, &qword_238770B20);
  v26 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20, MEMORY[0x277CDD7A8]);
  v41 = v25;
  v42 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v36;
  sub_23875DEF0();
  return (*(v37 + 8))(v24, v27);
}

double sub_2385B36F8@<D0>(uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_2384397A8(isCurrentExecutor, v4, v5);

  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_23875D780();

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  return result;
}

uint64_t sub_2385B3810()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v3 = *v0;
  v2 = v0[1];
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58(v1, v4, v5);
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  v6 = qword_2814F0880;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  sub_23875EA80();
  v12 = sub_23875EAA0();

  return v12;
}

double sub_2385B3994(uint64_t a1)
{
  v2 = sub_23875D2A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA28, &qword_238770B20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D250();
  MEMORY[0x28223BE20](v7);
  *(&v13 - 2) = a1;
  sub_23857F5E0(v8, v9, v10);
  sub_23875C4D0();
  v11 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EE61E80](v6, v3, v11);
  (*(v4 + 8))(v6, v3);

  return result;
}

void sub_2385B3BC4(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385B41D4(a1, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2385B4238(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  *a2 = sub_2385B429C;
  a2[1] = v8;
}

uint64_t sub_2385B3D24(uint64_t a1)
{
  v2 = sub_23875CDB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_23875C600();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS(0);
  sub_23857F760(a1 + *(v13 + 24), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_23875EFF0();
    v14 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_23875C5F0();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2385B3F9C@<X0>(uint64_t *a2@<X8>)
{
  sub_23875F770();
  sub_23875EB30();
  sub_23875EB30();
  sub_23875F750();
  result = sub_23875F600();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS(uint64_t a1)
{
  result = qword_27DF0F840;
  if (!qword_27DF0F840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385B40CC(uint64_t a1)
{
  sub_23857F390(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2385B4148()
{
  result = qword_27DF0F850;
  if (!qword_27DF0F850)
  {
    type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F850);
  }

  return result;
}

uint64_t sub_2385B41D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385B4238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385B429C()
{
  v1 = *(type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2385B3D24(v2);
}

uint64_t static SaveOrderProvider.saveOrder(data:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238580A3C;

  return sub_2385B4B28(a1, a2);
}

uint64_t sub_2385B4534(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23875ED50();
  v2[4] = sub_23875ED40();
  v4 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2385B45CC, v4, v3);
}

uint64_t sub_2385B45CC()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v1);
  v3 = v2;
  v4 = sub_23875B990();
  v6 = v5;

  v0[6] = v4;
  v0[7] = v6;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_2385B46B4;

  return sub_2385B4B28(v4, v6);
}

uint64_t sub_2385B46B4(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = v5[7];
  v9 = v5[6];
  v10 = v5[5];
  sub_23844C954(v9, v8);
  if (v3)
  {
    v11 = sub_23875B720();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1, 0);
  }

  _Block_release(v6[5]);
  v12 = v7[1];

  return v12();
}

id SaveOrderProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SaveOrderProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SaveOrderProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2385B493C(uint64_t a1)
{
  v2 = sub_2387577B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 == *MEMORY[0x277CC6658])
  {
    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x277CC6660])
  {
    v8 = 1;
LABEL_6:
    (*(v3 + 8))(a1, v2);
    return v8;
  }

  if (v7 == *MEMORY[0x277CC6650])
  {
    v8 = 2;
    goto LABEL_6;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_23875F470();

  v11 = 0xD000000000000026;
  v12 = 0x800000023878C1A0;
  sub_2385B5254();
  v10 = sub_23875F600();
  MEMORY[0x23EE63650](v10);

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385B4B28(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2387577B0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_2387579B0();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_23875ED50();
  v2[11] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v2[12] = v6;
  v2[13] = v5;

  return MEMORY[0x2822009F8](sub_2385B4C84, v6, v5);
}

uint64_t sub_2385B4C84()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_2387579D0();
  sub_2387579A0();
  (*(v2 + 104))(v1, *MEMORY[0x277CC6A50], v3);
  sub_238757830();
  (*(v2 + 8))(v1, v3);

  v0[14] = sub_2387579A0();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_2385B4E30;
  v5 = v0[7];
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x282116F28](v5, v6, v7);
}

uint64_t sub_2385B4E30()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_2385B5028;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_2385B4F4C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2385B4F4C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  (*(v4 + 16))(v2, v1, v3);
  v5 = sub_2385B493C(v2);
  (*(v4 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_2385B5028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2385B50E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2384494A4;

  return sub_2385B4534(v2, v3);
}

uint64_t sub_2385B5194()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_238449A7C;

  return sub_2386E6408(v2, v3, v4);
}

unint64_t sub_2385B5254()
{
  result = qword_27DF0F878;
  if (!qword_27DF0F878)
  {
    sub_2387577B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F878);
  }

  return result;
}

uint64_t type metadata accessor for OrderDetailsStatusLabel(uint64_t a1)
{
  result = qword_27DF0F888;
  if (!qword_27DF0F888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385B5320(uint64_t a1)
{
  sub_2385B5538(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2385B5538(319, &qword_27DF0F898, &type metadata for OrderDetailsStatusLabel.IconType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2385B54E0(319);
      if (v3 <= 0x3F)
      {
        sub_2385B5538(319, &qword_27DF0F8A0, &type metadata for OrderDetailsFulfillmentIndex.ViewModel, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2385B5538(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_2385B5538(319, &qword_2814F09A0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_2385B5588(319, v6, v7);
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2385B54E0(uint64_t a1)
{
  if (!qword_27DF0EDC8)
  {
    type metadata accessor for OrderDetailsNote(255);
    v1 = sub_23875F1F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0EDC8);
    }
  }
}

void sub_2385B5538(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2385B5588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27DF0F8A8)
  {
    sub_23857414C(0, a2, a3);
    v3 = sub_23875C560();
    if (!v4)
    {
      atomic_store(v3, &qword_27DF0F8A8);
    }
  }
}

unint64_t sub_2385B55F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0F8B0;
  if (!qword_27DF0F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F8B0);
  }

  return result;
}

void *sub_2385B5668@<X0>(void *a1@<X8>)
{
  v21 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8B8, &qword_2387736C0);
  MEMORY[0x28223BE20](v19);
  v3 = &v18 - v2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8C0, &qword_2387736C8);
  MEMORY[0x28223BE20](v20);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for OrderDetailsNote(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OrderDetailsStatusLabel(0);
  sub_23843981C(v1 + *(v13 + 28), v8, &qword_27DF0D5F8, &unk_23876D640);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_238439884(v8, &qword_27DF0D5F8, &unk_23876D640);
  }

  else
  {
    sub_2385B8050(v8, v12, type metadata accessor for OrderDetailsNote);
    if (*(v1 + 32) == 3)
    {
      *v5 = sub_23875D030();
      *(v5 + 1) = 0x4010000000000000;
      v5[16] = 0;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8E8, &qword_2387736E0);
      sub_2385B5C04(v1, v12, &v5[*(v14 + 44)]);
      sub_23843981C(v5, v3, &qword_27DF0F8C0, &qword_2387736C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8D0, &qword_2387736D8);
      sub_23843A3E8(&qword_27DF0F8D8, &qword_27DF0F8C0, &qword_2387736C8, MEMORY[0x277CE1198]);
      sub_23843A3E8(&qword_27DF0F8E0, &qword_27DF0F8D0, &qword_2387736D8, MEMORY[0x277CE1138]);
      sub_23875D1B0();
      sub_238439884(v5, &qword_27DF0F8C0, &qword_2387736C8);
      return sub_23857F198(v12);
    }

    sub_23857F198(v12);
  }

  v16 = sub_23875CE60();
  v39 = 1;
  sub_2385B69CC(v1, &v23);
  v52 = v35;
  v53 = v36;
  v54[0] = v37[0];
  *(v54 + 11) = *(v37 + 11);
  v48 = v31;
  v49 = v32;
  v50 = v33;
  v51 = v34;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v55[12] = v35;
  v55[13] = v36;
  v56[0] = v37[0];
  *(v56 + 11) = *(v37 + 11);
  v55[8] = v31;
  v55[9] = v32;
  v55[10] = v33;
  v55[11] = v34;
  v55[4] = v27;
  v55[5] = v28;
  v55[6] = v29;
  v55[7] = v30;
  v55[0] = v23;
  v55[1] = v24;
  v55[2] = v25;
  v55[3] = v26;
  sub_23843981C(&v40, &v22, &qword_27DF0F8C8, &qword_2387736D0);
  sub_238439884(v55, &qword_27DF0F8C8, &qword_2387736D0);
  *(&v38[99] + 1) = v52;
  *(&v38[107] + 1) = v53;
  *(&v38[115] + 1) = v54[0];
  *&v38[121] = *(v54 + 11);
  *(&v38[67] + 1) = v48;
  *(&v38[75] + 1) = v49;
  *(&v38[83] + 1) = v50;
  *(&v38[91] + 1) = v51;
  *(&v38[35] + 1) = v44;
  *(&v38[43] + 1) = v45;
  *(&v38[51] + 1) = v46;
  *(&v38[59] + 1) = v47;
  *(&v38[3] + 1) = v40;
  *(&v38[11] + 1) = v41;
  *(&v38[19] + 1) = v42;
  *(&v38[27] + 1) = v43;
  v17 = v39;
  *v3 = v16;
  *(v3 + 1) = 0;
  v3[16] = v17;
  memcpy(v3 + 17, v38, 0x102uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8D0, &qword_2387736D8);
  sub_23843A3E8(&qword_27DF0F8D8, &qword_27DF0F8C0, &qword_2387736C8, MEMORY[0x277CE1198]);
  sub_23843A3E8(&qword_27DF0F8E0, &qword_27DF0F8D0, &qword_2387736D8, MEMORY[0x277CE1138]);
  return sub_23875D1B0();
}

double sub_2385B5C04@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8F0, &qword_2387736E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  sub_23875ED50();
  v46 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1 + *(type metadata accessor for OrderDetailsStatusLabel(0) + 32);
  v13 = *v12;
  v14 = *(v12 + 2);
  if (v13 == 2 || v14 < 2)
  {
    v45 = 0;
    v14 = 0;
    v44 = 0;
    v43 = 2;
  }

  else
  {
    v45 = *(v12 + 1);
    v16 = v12[24];
    v43 = v13 & 1;
    v44 = v16 & 1;
  }

  *v11 = sub_23875CE60();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8F8, &qword_2387736F0);
  sub_2385B5F30(a1, a2, &v11[*(v17 + 44)]);
  v21 = a1[3];
  if (v21)
  {
    v47 = a1[2];
    v48 = v21;
    sub_2384397A8(v18, v19, v20);

    v22 = sub_23875DAA0();
    v41 = a3;
    v42 = v8;
    v24 = v23;
    v26 = v25;
    sub_23875D820();
    v27 = sub_23875DA60();
    v21 = v28;
    v40 = v14;
    v30 = v29;
    v32 = v31;

    v33 = v26 & 1;
    v34 = v24;
    a3 = v41;
    v8 = v42;
    sub_2384397FC(v22, v34, v33);

    v35 = v30 & 1;
    v14 = v40;
  }

  else
  {
    v27 = 0;
    v35 = 0;
    v32 = 0;
  }

  sub_23843981C(v11, v8, &qword_27DF0F8F0, &qword_2387736E8);
  v36 = v45;
  *a3 = v43;
  *(a3 + 8) = v36;
  *(a3 + 16) = v14;
  *(a3 + 24) = v44;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F900, &qword_2387736F8);
  sub_23843981C(v8, a3 + *(v37 + 48), &qword_27DF0F8F0, &qword_2387736E8);
  v38 = (a3 + *(v37 + 64));
  *v38 = v27;
  v38[1] = v21;
  v38[2] = v35;
  v38[3] = v32;
  sub_238476F5C(v27, v21, v35, v32);
  sub_238439884(v11, &qword_27DF0F8F0, &qword_2387736E8);
  sub_238476FA0(v27, v21, v35, v32);
  sub_238439884(v8, &qword_27DF0F8F0, &qword_2387736E8);

  return result;
}

double sub_2385B5F30@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F908, &qword_238773700);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = v34 - v8;
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v12 = a1[1];
  v39 = *a1;
  v40 = v12;
  sub_2384397A8(isCurrentExecutor, v10, v11);

  v13 = sub_23875DAA0();
  v15 = v14;
  v17 = v16;
  sub_23875D8E0();
  v18 = sub_23875DA60();
  v20 = v19;
  v34[1] = a1;
  v22 = v21;

  sub_2384397FC(v13, v15, v17 & 1);

  sub_23875D890();
  v23 = sub_23875D9E0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_2384397FC(v18, v20, v22 & 1);

  v30 = v36;
  sub_2385B61FC(v35, v36);
  v31 = v38;
  sub_23843981C(v30, v38, &qword_27DF0F908, &qword_238773700);
  *a3 = v23;
  *(a3 + 8) = v25;
  *(a3 + 16) = v27 & 1;
  *(a3 + 24) = v29;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F910, &qword_238773708);
  sub_23843981C(v31, a3 + *(v32 + 64), &qword_27DF0F908, &qword_238773700);
  sub_23843980C(v23, v25, v27 & 1);

  sub_238439884(v30, &qword_27DF0F908, &qword_238773700);
  sub_238439884(v31, &qword_27DF0F908, &qword_238773700);
  sub_2384397FC(v23, v25, v27 & 1);

  return result;
}

uint64_t sub_2385B61FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a1;
  v58 = a2;
  v44 = sub_23875CDB0();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OrderDetailsNote(0);
  v55 = *(v5 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_23875D2E0();
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OrderDetailsStatusLabel(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F918, &qword_238773710);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F920, &qword_238773718);
  v17 = *(v16 - 8);
  v52 = v16;
  v53 = v17;
  MEMORY[0x28223BE20](v16);
  v46 = &v42 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F928, &unk_238773720);
  MEMORY[0x28223BE20](v57);
  v49 = &v42 - v19;
  v47 = v3;
  sub_2385B81FC(v3, &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsStatusLabel);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = swift_allocObject();
  sub_2385B8050(&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for OrderDetailsStatusLabel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A410, &unk_238773730);
  sub_23846E74C();
  sub_23875E200();
  v45 = v13;
  v15[*(v13 + 36)] = 0;
  sub_23875D2D0();
  v22 = sub_2385B8118();
  v23 = sub_2385B84BC(&qword_27DF0F7C0, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v24 = v48;
  sub_23875DB30();
  (*(v50 + 8))(v8, v24);
  sub_238439884(v15, &qword_27DF0F918, &qword_238773710);
  v25 = v3 + *(v10 + 44);
  v26 = *v25;
  v27 = *(v25 + 8);
  v63 = v26;
  v64 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  LODWORD(v50) = v61;
  v28 = v51;
  sub_2385B81FC(v56, v51, type metadata accessor for OrderDetailsNote);
  v29 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v30 = swift_allocObject();
  sub_2385B8050(v28, v30 + v29, type metadata accessor for OrderDetailsNote);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F948, &qword_238773748);
  v59 = v45;
  v60 = v24;
  v61 = v22;
  v62 = v23;
  swift_getOpaqueTypeConformance2();
  v31 = v49;
  sub_23843A3E8(&qword_27DF0F950, &qword_27DF0F948, &qword_238773748, MEMORY[0x277CDDA18]);
  v32 = v52;
  v33 = v46;
  sub_23875DED0();

  (*(v53 + 8))(v33, v32);
  v34 = v47 + *(v10 + 48);
  v35 = *v34;
  if (*(v34 + 8) != 1)
  {

    sub_23875EFF0();
    v36 = sub_23875D730();
    sub_23875C110();

    v37 = v42;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v35, 0);
    (*(v43 + 8))(v37, v44);
    LOBYTE(v35) = v59;
  }

  KeyPath = swift_getKeyPath(byte_238773750);
  v39 = swift_allocObject();
  *(v39 + 16) = v35 & 1;
  v40 = (v31 + *(v57 + 36));
  *v40 = KeyPath;
  v40[1] = sub_238477BAC;
  v40[2] = v39;
  sub_2385B82D4();
  sub_23875DE00();
  return sub_238439884(v31, &qword_27DF0F928, &unk_238773720);
}

double sub_2385B69CC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875D030();
  LOBYTE(v36[0]) = 0;
  sub_2385B6D74(a1, &v38);
  v27 = *&v39[16];
  v28 = *&v39[32];
  v29 = *&v39[48];
  v30 = *&v39[64];
  v25 = v38;
  v26 = *v39;
  v31[2] = *&v39[16];
  v31[3] = *&v39[32];
  v31[4] = *&v39[48];
  v31[5] = *&v39[64];
  v31[0] = v38;
  v31[1] = *v39;
  sub_23843981C(&v25, &v32, &qword_27DF0F968, &qword_2387737B8);
  sub_238439884(v31, &qword_27DF0F968, &qword_2387737B8);
  *&v24[39] = v27;
  *&v24[55] = v28;
  *&v24[71] = v29;
  *&v24[87] = v30;
  *&v24[7] = v25;
  *&v24[23] = v26;
  v5 = v36[0];
  sub_2385B70A4(a1, &v17);
  *&v32 = v4;
  *(&v32 + 1) = 0x4010000000000000;
  v33[0] = v5;
  *&v33[49] = *&v24[48];
  *&v33[65] = *&v24[64];
  *&v33[81] = *&v24[80];
  *&v33[1] = *v24;
  *&v33[17] = *&v24[16];
  *&v33[33] = *&v24[32];
  v6 = v20;
  v34[4] = v21;
  v7 = v21;
  v34[5] = v22;
  v34[0] = v17;
  v8 = v17;
  v9 = v18;
  v34[1] = v18;
  *&v16[7] = v17;
  v34[2] = v19;
  *&v16[23] = v18;
  *&v16[39] = v19;
  v10 = v19;
  v34[3] = v20;
  *&v16[55] = v20;
  *&v16[71] = v21;
  v11 = v22;
  v35[0] = *v23;
  *&v16[87] = v22;
  *&v16[103] = *v23;
  *&v16[118] = *&v23[15];
  v12 = *&v33[32];
  *(a2 + 32) = *&v33[16];
  *(a2 + 48) = v12;
  v13 = *v33;
  *a2 = v32;
  *(a2 + 16) = v13;
  *(a2 + 96) = *&v33[80];
  v14 = *&v33[64];
  *(a2 + 64) = *&v33[48];
  *(a2 + 80) = v14;
  *(a2 + 177) = *&v16[48];
  *(a2 + 161) = *&v16[32];
  *(a2 + 145) = *&v16[16];
  *(a2 + 129) = *v16;
  *(a2 + 235) = *&v16[106];
  *(a2 + 225) = *&v16[96];
  *(a2 + 209) = *&v16[80];
  *&v33[96] = *&v24[95];
  *(v35 + 15) = *&v16[118];
  *(a2 + 112) = *&v24[95];
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  *(a2 + 193) = *&v16[64];
  v36[2] = v10;
  v36[3] = v6;
  v36[0] = v8;
  v36[1] = v9;
  *&v37[15] = *&v23[15];
  v36[5] = v11;
  *v37 = *v23;
  v36[4] = v7;
  sub_23843981C(&v32, &v38, &qword_27DF0F970, &qword_2387737C0);
  sub_23843981C(v34, &v38, &qword_27DF0F978, &qword_2387737C8);
  sub_238439884(v36, &qword_27DF0F978, &qword_2387737C8);
  *&v39[49] = *&v24[48];
  *&v39[65] = *&v24[64];
  *v40 = *&v24[80];
  *&v39[1] = *v24;
  *&v39[17] = *&v24[16];
  *&v38 = v4;
  *(&v38 + 1) = 0x4010000000000000;
  v39[0] = v5;
  *&v40[15] = *&v24[95];
  *&v39[33] = *&v24[32];
  sub_238439884(&v38, &qword_27DF0F970, &qword_2387737C0);

  return result;
}

double sub_2385B6D74@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for OrderDetailsStatusLabel(0);
  v7 = a1 + *(v4 + 32);
  v8 = *v7;
  if (v8 == 2 || *(v7 + 2) < 2)
  {
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v43 = 2;
  }

  else
  {
    v46 = *(v7 + 2);
    v45 = *(v7 + 1);
    v43 = v8 & 1;
    v44 = v7[24] & 1;
  }

  sub_2384397A8(v4, v5, v6);

  v10 = sub_23875DAA0();
  v12 = v11;
  v14 = v13;
  sub_23875D8E0();
  v15 = sub_23875DA60();
  v17 = v16;
  v19 = v18;

  sub_2384397FC(v10, v12, v14 & 1);

  sub_23875D890();
  v20 = sub_23875D9E0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_2384397FC(v15, v17, v19 & 1);

  if (a1[3])
  {

    v27 = sub_23875DAA0();
    v29 = v28;
    v42 = v24;
    v31 = v30;
    sub_23875D820();
    v32 = sub_23875DA60();
    v34 = v33;
    v41 = v35;
    v37 = v36;

    v38 = v31 & 1;
    v24 = v42;
    sub_2384397FC(v27, v29, v38);

    v39 = v41 & 1;
  }

  else
  {
    v32 = 0;
    v34 = 0;
    v39 = 0;
    v37 = 0;
  }

  *a2 = v43;
  *(a2 + 8) = v45;
  *(a2 + 16) = v46;
  *(a2 + 24) = v44;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  *(a2 + 64) = v32;
  *(a2 + 72) = v34;
  *(a2 + 80) = v39;
  *(a2 + 88) = v37;
  sub_23843980C(v20, v22, v24 & 1);

  sub_238476F5C(v32, v34, v39, v37);
  sub_238476FA0(v32, v34, v39, v37);
  sub_2384397FC(v20, v22, v24 & 1);

  return result;
}

double sub_2385B70A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_23875E0E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875DFD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v45 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 32) > 1u)
  {
    if (*(a1 + 32) != 2)
    {
      LOBYTE(v76) = 1;
      HIBYTE(v74) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F980, &qword_2387737D0);
      sub_2385B8504();
      sub_23875D1B0();
      v71 = v61;
      v72 = v62;
      v73 = v63;
      v74 = v64;
      v67 = v57;
      v68 = v58;
      v69 = v59;
      v70 = v60;
      LOBYTE(v47) = 1;
      v75 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B0, &qword_2387737F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B8, &qword_2387737F8);
      sub_2385B8648();
      sub_2385B88FC();
      sub_23875D1B0();
      goto LABEL_11;
    }

    sub_23875E0D0();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v44 = sub_23875E150();

    (*(v4 + 8))(v6, v3);
    type metadata accessor for OrderDetailsStatusLabel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F880, &qword_2387735D8);
    sub_23875C550();
    sub_23875C550();
    sub_23875E4A0();
    sub_23875C5C0();
    v20 = v77;
    v42 = *(&v77 + 1);
    v43 = v76;
    v21 = v78;
    v40 = v79;
    v41 = *(&v78 + 1);
    v22 = sub_23875E010();
    v23 = sub_23875E050();
    LOBYTE(v57) = v20;
    LOBYTE(v47) = v21;
    v24 = sub_23875D7D0();
    sub_23875C550();
    sub_23875C3D0();
    LOBYTE(v65[0]) = 0;
    *&v47 = v44;
    *(&v47 + 1) = v43;
    LOBYTE(v48) = v20;
    *(&v48 + 1) = v42;
    LOBYTE(v49) = v21;
    *(&v49 + 1) = v41;
    *&v50 = v40;
    *(&v50 + 1) = v22;
    *&v51 = v23;
    BYTE8(v51) = v24;
    HIDWORD(v51) = *(&v67 + 3);
    *(&v51 + 9) = v67;
    *&v52 = v25;
    *(&v52 + 1) = v26;
    *&v53 = v27;
    *(&v53 + 1) = v28;
    v54 = 0;
    v71 = v51;
    v72 = v52;
    v73 = v53;
    v74 = 0;
    v67 = v47;
    v68 = v48;
    v69 = v49;
    v70 = v50;
    v55 = 0;
    v18 = &qword_27DF0F980;
    v19 = &qword_2387737D0;
    sub_23843981C(&v47, v65, &qword_27DF0F980, &qword_2387737D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F980, &qword_2387737D0);
    sub_2385B8504();
    sub_23875D1B0();
    v71 = v61;
    v72 = v62;
    v73 = v63;
    v74 = v64;
    v67 = v57;
    v68 = v58;
    v69 = v59;
    v70 = v60;
    v56 = 1;
    v75 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B0, &qword_2387737F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B8, &qword_2387737F8);
    sub_2385B8648();
    sub_2385B88FC();
  }

  else
  {
    if (*(a1 + 32))
    {
      v29 = sub_23875E0D0();
      v30 = sub_23875DFF0();
      v31 = sub_23875D7E0();
      KeyPath = swift_getKeyPath(byte_238773788);
      LOBYTE(v76) = 1;
      *&v67 = v29;
      *(&v67 + 1) = v30;
      *&v68 = KeyPath;
      *(&v68 + 1) = v31;
      LOBYTE(v71) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F8, &qword_238773800);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9F8, &qword_238773818);
      sub_2385B86D4();
      sub_2385B8844();
      sub_23875D1B0();
      v69 = v59;
      v70 = v60;
      LOBYTE(v71) = v61;
      v67 = v57;
      v68 = v58;
      LOBYTE(v47) = 0;
      v75 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B0, &qword_2387737F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B8, &qword_2387737F8);
      sub_2385B8648();
      sub_2385B88FC();
      sub_23875D1B0();

      goto LABEL_11;
    }

    v11 = sub_23875E0D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_238763B60;
    v13 = *MEMORY[0x277CE0EE0];
    v14 = *(v8 + 104);
    v14(v10, v13, v7);
    *(v12 + 32) = sub_23875E090();
    v14(v10, v13, v7);
    *(v12 + 40) = sub_23875E090();
    sub_23875E590();
    sub_23875E570();
    MEMORY[0x23EE62F40](v12);
    sub_23875C740();
    v15 = v76;
    v16 = sub_23875D7E0();
    v17 = swift_getKeyPath(byte_238773788);
    *&v47 = v11;
    *(&v47 + 1) = v15;
    v48 = v77;
    v49 = v78;
    *&v50 = v17;
    *(&v50 + 1) = v16;
    v67 = v47;
    v68 = v77;
    v69 = v78;
    v70 = v50;
    v55 = 0;
    LOBYTE(v71) = 0;
    v18 = &qword_27DF0C7F8;
    v19 = &qword_238773800;
    sub_23843981C(&v47, v65, &qword_27DF0C7F8, &qword_238773800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F8, &qword_238773800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9F8, &qword_238773818);
    sub_2385B86D4();
    sub_2385B8844();
    sub_23875D1B0();
    v69 = v59;
    v70 = v60;
    LOBYTE(v71) = v61;
    v67 = v57;
    v68 = v58;
    v56 = 0;
    v75 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B0, &qword_2387737F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B8, &qword_2387737F8);
    sub_2385B8648();
    sub_2385B88FC();
  }

  sub_23875D1B0();
  sub_238439884(&v47, v18, v19);
LABEL_11:

  v73 = *v66;
  v33 = *&v66[15];
  HIBYTE(v73) = v66[15];
  v67 = v65[0];
  v68 = v65[1];
  v69 = v65[2];
  v70 = v65[3];
  v34 = v65[5];
  v35 = v46;
  *(v46 + 64) = v65[4];
  *(v35 + 80) = v34;
  *(v35 + 96) = v73;
  *(v35 + 111) = v33;
  v36 = v68;
  *v35 = v67;
  *(v35 + 16) = v36;
  result = *&v69;
  v38 = v70;
  *(v35 + 32) = v69;
  *(v35 + 48) = v38;
  return result;
}

void sub_2385B7A34(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderDetailsStatusLabel(0) + 36));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v22[0]) = v3;
  v22[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  v9 = sub_23875EA80();
  v10 = MEMORY[0x277D38390];
  *(v7 + 40) = v9;
  *(v7 + 48) = v11;
  v12 = *v10;
  *(v7 + 56) = *v10;
  *(v7 + 64) = 0xD000000000000010;
  v13 = *MEMORY[0x277D384B8];
  *(v7 + 72) = 0x8000000238785CB0;
  *(v7 + 80) = v13;
  strcpy((v7 + 88), "orderDetails");
  *(v7 + 101) = 0;
  *(v7 + 102) = -5120;
  v14 = v8;
  v15 = v12;
  v16 = v13;
  v17 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = v17;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v22);

  v19 = *MEMORY[0x277D38548];
  v20 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385B84BC(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v21 = sub_23875E910();

  [v20 subject:v19 sendEvent:v21];
}

void sub_2385B7D94(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875E0D0();
  v3 = sub_23875D8E0();
  KeyPath = swift_getKeyPath(byte_238773788);

  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
}

double sub_2385B7E68(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  type metadata accessor for OrderDetailsNotes(0);
  sub_2385B84BC(&qword_27DF0F960, type metadata accessor for OrderDetailsNotes, &unk_2387709F4);
  sub_23875C8F0();

  return result;
}

double sub_2385B7F8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385B81FC(a1, a2, type metadata accessor for OrderDetailsNote);

  return result;
}

uint64_t sub_2385B8050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2385B80B8()
{
  v1 = *(type metadata accessor for OrderDetailsStatusLabel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2385B7A34(v2);
}

unint64_t sub_2385B8118()
{
  result = qword_27DF0F930;
  if (!qword_27DF0F930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F918, &qword_238773710);
    sub_23843A3E8(&qword_27DF0F938, &qword_27DF0F940, &qword_238773740, MEMORY[0x277CDF028]);
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F930);
  }

  return result;
}

uint64_t sub_2385B81FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_2385B8264()
{
  v1 = *(type metadata accessor for OrderDetailsNote(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2385B7E68(v2);
}

unint64_t sub_2385B82D4()
{
  result = qword_27DF0F958;
  if (!qword_27DF0F958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F928, &unk_238773720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F920, &qword_238773718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F948, &qword_238773748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F918, &qword_238773710);
    sub_23875D2E0();
    sub_2385B8118();
    sub_2385B84BC(&qword_27DF0F7C0, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0F950, &qword_27DF0F948, &qword_238773748, MEMORY[0x277CDDA18]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F958);
  }

  return result;
}

uint64_t sub_2385B84BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2385B8504()
{
  result = qword_27DF0F988;
  if (!qword_27DF0F988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F980, &qword_2387737D0);
    sub_2385B8590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F988);
  }

  return result;
}

unint64_t sub_2385B8590()
{
  result = qword_27DF0F990;
  if (!qword_27DF0F990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F998, &unk_2387737D8);
    sub_238449688();
    sub_23843A3E8(&qword_27DF0F9A0, &qword_27DF0F9A8, &qword_2387737E8, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F990);
  }

  return result;
}

unint64_t sub_2385B8648()
{
  result = qword_27DF0F9C0;
  if (!qword_27DF0F9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F9B0, &qword_2387737F0);
    sub_2385B86D4();
    sub_2385B8844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F9C0);
  }

  return result;
}

unint64_t sub_2385B86D4()
{
  result = qword_27DF0F9C8;
  if (!qword_27DF0F9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C7F8, &qword_238773800);
    sub_2385B878C();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F9C8);
  }

  return result;
}

unint64_t sub_2385B878C()
{
  result = qword_27DF0F9D0;
  if (!qword_27DF0F9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F9D8, &qword_238773808);
    sub_23843A3E8(&qword_27DF0F9E0, &qword_27DF0F9E8, &qword_238773810, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F9D0);
  }

  return result;
}

unint64_t sub_2385B8844()
{
  result = qword_27DF0F9F0;
  if (!qword_27DF0F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F9F8, &qword_238773818);
    sub_2384B9DE8();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F9F0);
  }

  return result;
}

unint64_t sub_2385B88FC()
{
  result = qword_27DF0FA00;
  if (!qword_27DF0FA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F9B8, &qword_2387737F8);
    sub_2385B8504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FA00);
  }

  return result;
}

unint64_t sub_2385B8988()
{
  result = qword_27DF0FA08;
  if (!qword_27DF0FA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FA10, &qword_238773828);
    sub_23843A3E8(&qword_27DF0F8D8, &qword_27DF0F8C0, &qword_2387736C8, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF0F8E0, &qword_27DF0F8D0, &qword_2387736D8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FA08);
  }

  return result;
}

char *sub_2385B8A6C(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for BankConnectInstitutionConsentManagementViewController(0));

  return sub_2385B8D10(a1, a2);
}

uint64_t type metadata accessor for BankConnectInstitutionConsentManagementViewController(uint64_t a1)
{
  result = qword_27DF0FA38;
  if (!qword_27DF0FA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id BankConnectInstitutionConsentManagementViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectInstitutionConsentManagementViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectInstitutionConsentManagementViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *sub_2385B8D10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = qword_27DF0FA18;
  sub_238758890();
  *(v2 + v6) = sub_238758880();
  v7 = type metadata accessor for BankConnectConsentDeletionListener();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController] = 0;
  v9 = &v8[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v8[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_context] = 0;
  v10 = &v8[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v25.receiver = v8;
  v25.super_class = v7;

  *(v3 + qword_27DF0FA20) = objc_msgSendSuper2(&v25, sel_init);

  v11 = sub_23875D080();
  v12 = qword_27DF0FA20;
  v13 = *&v11[qword_27DF0FA20];
  v14 = v11;
  v15 = v13;
  v16 = sub_238758A30();
  v17 = *&v15[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_context];
  *&v15[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_context] = v16;
  v18 = v16;

  sub_2385BBD94();
  v19 = *&v11[v12];

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = &v19[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent];
  v22 = *&v19[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent];
  v23 = *&v19[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent + 8];
  *v21 = sub_2385B9560;
  v21[1] = v20;

  sub_2384348A8(v22, v23);

  return v14;
}

void sub_2385B8FA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      v4 = [v3 popViewControllerAnimated_];
    }
  }
}

uint64_t sub_2385B903C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = qword_27DF0FA18;
  sub_238758890();
  *(a1 + v2) = sub_238758880();
  result = sub_23875F520();
  __break(1u);
  return result;
}

void sub_2385B9118()
{

  v1 = *(v0 + qword_27DF0FA20);
}

id sub_2385B9174(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2385B91AC(uint64_t a1)
{

  v2 = *(a1 + qword_27DF0FA20);
}

uint64_t sub_2385B9260()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

uint64_t sub_2385B92E8(uint64_t *a1, int a2)
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

uint64_t sub_2385B9330(uint64_t result, int a2, int a3)
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

uint64_t sub_2385B939C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for InstitutionConsentManagementView(0) + 20);
  *(a4 + v8) = swift_getKeyPath(asc_238773978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  sub_2386ED8A0(a2, a3);
  sub_2387582B0();
  sub_23875C4F0();
  KeyPath = swift_getKeyPath(byte_2387739A8);
  v17[3] = sub_238758890();
  v17[4] = MEMORY[0x277CC70D0];
  v17[0] = a1;
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAB0, &qword_2387739D0) + 36));
  sub_23845C998(v17, (v10 + 1));
  *v10 = KeyPath;

  __swift_destroy_boxed_opaque_existential_1(v17);
  v11 = swift_getKeyPath(byte_2387739D8);
  v17[0] = a1;
  v12 = sub_238758A30();
  v13 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAB8, &qword_238773A08) + 36));
  *v13 = v11;
  v13[1] = v12;
  v14 = swift_getKeyPath(asc_238773978);
  v15 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0FAC0, &qword_238773A10) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD0, qword_238764B90);
  result = sub_23875C120();
  *v15 = v14;
  return result;
}

unint64_t sub_2385B9568()
{
  result = qword_27DF0FAD0;
  if (!qword_27DF0FAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0FAC0, &qword_238773A10);
    sub_2385B960C();
    sub_2384DE298(&qword_27DF09E70, &qword_27DF09DD0, qword_238764B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FAD0);
  }

  return result;
}

unint64_t sub_2385B960C()
{
  result = qword_27DF0FAD8;
  if (!qword_27DF0FAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FAB8, &qword_238773A08);
    sub_2385B96B0();
    sub_2384DE298(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FAD8);
  }

  return result;
}

unint64_t sub_2385B96B0()
{
  result = qword_27DF0FAE0;
  if (!qword_27DF0FAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FAB0, &qword_2387739D0);
    sub_2385B9754();
    sub_2384DE298(&qword_27DF09E50, &unk_27DF09E58, &unk_238764C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FAE0);
  }

  return result;
}

unint64_t sub_2385B9754()
{
  result = qword_27DF0FAE8;
  if (!qword_27DF0FAE8)
  {
    type metadata accessor for InstitutionConsentManagementView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FAE8);
  }

  return result;
}

uint64_t sub_2385B97AC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_2385B9818()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF0, &unk_238773A70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_238763320;
  *(v1 + 32) = &type metadata for CurrencyCodeTokenProvider;
  *(v1 + 40) = &off_284B261A8;
  *(v1 + 48) = type metadata accessor for TransactionTypeTokenProvider(0);
  *(v1 + 56) = &off_284B2E950;
  *(v1 + 64) = &type metadata for InstitutionNameTokenProvider;
  *(v1 + 72) = &off_284B279D8;
  *(v1 + 80) = type metadata accessor for AccountNameTokenProvider(0);
  *(v1 + 88) = &off_284B2ABE0;
  *(v1 + 96) = &type metadata for LocationTokenProvider;
  *(v1 + 104) = &off_284B2DBC0;
  v0[15] = 0;
  v0[16] = 0;
  v0[14] = v1;
  return v0;
}

uint64_t sub_2385B98E8()
{
  v0 = sub_2387580D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A5B0();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277CC6DF0])
  {
    return 0x6E776F6E6B6E75;
  }

  if (v4 == *MEMORY[0x277CC6DE0])
  {
    return 1852141679;
  }

  if (v4 == *MEMORY[0x277CC6DD8])
  {
    return 0x69737365636F7270;
  }

  if (v4 == *MEMORY[0x277CC6DF8])
  {
    return 0x656C6C65636E6163;
  }

  if (v4 == *MEMORY[0x277CC6DE8])
  {
    return 0x6575737369;
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_2385B9AA4()
{
  v1 = v0;
  v2 = sub_23875BB30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = sub_23875BC40();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [v1 orderUpdateDate];
  sub_23875BBE0();

  MEMORY[0x23EE5FF10]();
  sub_23875BB00();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_23875BB20();
  v21(v8, v2);
  sub_23875BB10();
  v21(v11, v2);
  sub_23843AD1C();
  sub_23875BC20();
  v21(v14, v2);
  (*(v16 + 8))(v19, v15);
  return v23;
}

uint64_t sub_2385B9D18()
{
  v0 = sub_23875ABE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ABF0();
  v4 = (*(v1 + 88))(v3, v0);
  result = 0;
  if (v4 != *MEMORY[0x277CC8320])
  {
    if (v4 == *MEMORY[0x277CC8318])
    {
      return 0x64657070696873;
    }

    else if (v4 == *MEMORY[0x277CC8328])
    {
      return 0x7961576568546E6FLL;
    }

    else if (v4 == *MEMORY[0x277CC8300])
    {
      return 0x6544726F4674756FLL;
    }

    else if (v4 == *MEMORY[0x277CC8340])
    {
      return 0x65726576696C6564;
    }

    else if (v4 == *MEMORY[0x277CC8338])
    {
      return 0x656C6C65636E6163;
    }

    else if (v4 == *MEMORY[0x277CC8310])
    {
      return 0x6575737369;
    }

    else if (v4 == *MEMORY[0x277CC8308])
    {
      return 0x726F467964616572;
    }

    else if (v4 == *MEMORY[0x277CC8330])
    {
      return 0x705564656B636970;
    }

    else if (v4 == *MEMORY[0x277CC82F8])
    {
      return 0x69737365636F7270;
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2385B9FC0()
{
  v0 = sub_23875BB30();
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x28223BE20](v0);
  v36 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - v3;
  MEMORY[0x28223BE20](v4);
  v38 = &v32 - v5;
  MEMORY[0x28223BE20](v6);
  v39 = &v32 - v7;
  v8 = sub_23875BE40();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875BE20();
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238757F90();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v32 - v19;
  v21 = sub_23875BC40();
  v32 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ABC0();
  if ((*(v15 + 48))(v20, 1, v14))
  {
    sub_2385BA4B4(v20);
    return 0;
  }

  else
  {
    (*(v15 + 16))(v17, v20, v14);
    sub_2385BA4B4(v20);
    sub_23875BDB0();
    sub_23875BE30();
    MEMORY[0x23EE5CA60](v13, v10);
    (*(v34 + 8))(v10, v35);
    (*(v33 + 8))(v13, v11);
    v25 = (*(v15 + 8))(v17, v14);
    v26 = v36;
    MEMORY[0x23EE5FF10](v25);
    v27 = v37;
    sub_23875BB00();
    v28 = v41;
    v29 = *(v40 + 8);
    v29(v26, v41);
    v30 = v38;
    sub_23875BB20();
    v29(v27, v28);
    v31 = v39;
    sub_23875BB10();
    v29(v30, v28);
    sub_23843AD1C();
    sub_23875BC20();
    v29(v31, v28);
    (*(v32 + 8))(v23, v21);
    return v42;
  }
}

uint64_t sub_2385BA4B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2385BA528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2385BA564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2385BA5B0(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_2385BA5E8@<X0>(uint64_t a1@<X8>)
{
  sub_2385BA73C(v1, &v15);
  if (v17 >= 4u)
  {
    v6 = v15;
    v7 = v16;

    v8 = sub_238650240(v7);
    v10 = v9;
    v11 = sub_23875E030();
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 32) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 0xD000000000000012;
    *(a1 + 56) = 0x6E6F697461636F4CLL;
    *(a1 + 64) = 0xE800000000000000;
    *(a1 + 48) = 0x800000023878C470;
    *a1 = v6;
    *(a1 + 72) = &unk_238782BD0;
    *(a1 + 80) = result;
  }

  else
  {
    sub_2384347C0(&v15, v12);
    v3 = v13;
    v4 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v4 + 8))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

uint64_t sub_2385BA774()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_2385BA5E8(v12);
  sub_2385BA5E8(v13);
  v7 = v12[0] == v13[0] && v12[1] == v13[1];
  if (v7 || (sub_23875F630()) && (v12[2] == v13[2] && v12[3] == v13[3] || (sub_23875F630()) && (sub_23875DFE0() & 1) != 0 && (v12[5] == v13[5] && v12[6] == v13[6] || (sub_23875F630()))
  {
    if (v12[7] == v13[7] && v12[8] == v13[8])
    {
      sub_2384B5DE4(v13);
      sub_2384B5DE4(v12);
LABEL_19:
      sub_23875BCA0();
      sub_23875BCA0();
      v8 = sub_23875BC80();
      v11 = *(v1 + 8);
      v11(v3, v0);
      v11(v6, v0);
      return v8 & 1;
    }

    v10 = sub_23875F630();
    sub_2384B5DE4(v13);
    sub_2384B5DE4(v12);
    v8 = 0;
    if (v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_2384B5DE4(v13);
    sub_2384B5DE4(v12);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2385BA98C()
{
  v1 = sub_238758D20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A570();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277CC7480])
  {
    v6 = *(sub_23875A4F0() + 16);

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v9 = sub_23875A580();
      if (v9 >> 62)
      {
        v10 = sub_23875F3A0();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = v10 == 0;
    }

    if ([v0 hasActiveFulfillment] & 1) != 0 || (v11 = sub_23875A510(), ((v7 | v11)))
    {
      v8 = 1;
    }

    else
    {
      sub_2385BAB40(v11);
    }
  }

  else if (v5 == *MEMORY[0x277CC7490])
  {
    v8 = sub_23875A510();
  }

  else
  {
    if (v5 != *MEMORY[0x277CC7488])
    {
      (*(v2 + 8))(v4, v1);
    }

    v8 = 0;
  }

  return v8 & 1;
}

void sub_2385BAB40(uint64_t a1)
{
  v1 = sub_23875A4F0();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v1 + 32 + 8 * v3);
      if ((v4 & 0x8000000000000000) != 0 || (v5 = v4, sub_23875AA30(), v6 = sub_23875A240(), v7 = sub_23875A240(), v5, v6 != v7))
      {
        if (v2 != ++v3)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

double sub_2385BAC24@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

unint64_t sub_2385BAC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0FB00;
  if (!qword_27DF0FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FB00);
  }

  return result;
}

__n128 sub_2385BACE8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB08, &qword_238773D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v18 - v11;
  *v12 = sub_23875D030();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB10, &qword_238773D08);
  sub_2385BAE54(a1, a2, a3, a4, &v12[*(v13 + 44)]);
  sub_23875E4B0();
  sub_23875C9C0();
  sub_238416B60(v12, a5);
  v14 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB18, &qword_238773D10) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

double sub_2385BAE54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a3;
  v62 = a4;
  v67 = a5;
  v7 = sub_23875D550();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB20, &qword_238773D18);
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v58 - v13;
  sub_23875ED50();
  v63 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v69 = a1;
  v70 = a2;
  v58 = sub_2384397A8(isCurrentExecutor, v15, v16);

  v17 = sub_23875DAA0();
  v19 = v18;
  v21 = v20;
  sub_23875D7F0();
  v22 = sub_23875DA60();
  v24 = v23;
  v26 = v25;

  sub_2384397FC(v17, v19, v21 & 1);

  LODWORD(v69) = sub_23875D440();
  v27 = sub_23875DA20();
  v29 = v28;
  LOBYTE(v17) = v30;
  v32 = v31;
  sub_2384397FC(v22, v24, v26 & 1);

  v69 = v27;
  v70 = v29;
  v71 = v17 & 1;
  v72 = v32;
  sub_23875D540();
  v33 = v60;
  sub_23875DC10();
  (*(v59 + 8))(v9, v33);
  sub_2384397FC(v27, v29, v17 & 1);

  v69 = v61;
  v70 = v62;

  v34 = sub_23875DAA0();
  v36 = v35;
  v38 = v37;
  sub_23875D820();
  v39 = sub_23875DA60();
  v41 = v40;
  LOBYTE(v24) = v42;

  sub_2384397FC(v34, v36, v38 & 1);

  LODWORD(v69) = sub_23875D420();
  v43 = sub_23875DA20();
  v45 = v44;
  v47 = v46;
  v62 = v48;
  sub_2384397FC(v39, v41, v24 & 1);

  v50 = v64;
  v49 = v65;
  v51 = *(v65 + 16);
  v52 = v68;
  v53 = v66;
  v51(v64, v68, v66);
  v54 = v67;
  v51(v67, v50, v53);
  v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB28, &unk_238773D20) + 48);
  *v55 = v43;
  *(v55 + 8) = v45;
  v47 &= 1u;
  *(v55 + 16) = v47;
  *(v55 + 24) = v62;
  sub_23843980C(v43, v45, v47);
  v56 = *(v49 + 8);

  v56(v52, v53);
  sub_2384397FC(v43, v45, v47);

  v56(v50, v53);

  return result;
}

unint64_t sub_2385BB338()
{
  result = qword_27DF0FB30;
  if (!qword_27DF0FB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FB18, &qword_238773D10);
    sub_2385BB3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FB30);
  }

  return result;
}

unint64_t sub_2385BB3C4()
{
  result = qword_27DF0FB38;
  if (!qword_27DF0FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FB08, &qword_238773D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FB38);
  }

  return result;
}

void sub_2385BB448(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v45[0] = *v1;
  v5 = v45[0];
  aBlock = v45[0];
  v39 = v4;
  LOBYTE(v40) = v6;
  sub_2385B2CA0(v45, &v44);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  MEMORY[0x23EE62DC0](&v44);
  if (v44 != 1)
  {
    sub_2385BBC90(v45);
    goto LABEL_5;
  }

  v8 = [a1 presentedViewController];
  if (v8)
  {
    v9 = v8;
    sub_2385BBC90(v45);

LABEL_5:

    aBlock = v5;
    v39 = v4;
    LOBYTE(v40) = v6;
    MEMORY[0x23EE62DC0](&v44, v7);
    if ((v44 & 1) == 0)
    {
      v10 = [a1 presentedViewController];
      if (v10)
      {
        v11 = v10;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();

        if (v12)
        {
          v13 = [a1 presentedViewController];
          if (v13)
          {
            v14 = v13;
            [v13 dismissViewControllerAnimated:1 completion:0];
          }
        }
      }
    }

    return;
  }

  v33 = v6;
  v34 = v5;
  v35 = v4;
  v15 = sub_23875EA50();
  v16 = [objc_opt_self() alertControllerWithTitle:0 message:v15 preferredStyle:1];

  v37 = v16;
  [v16 _setAttributedTitle_];
  v17 = *(v2 + 48);
  v18 = *(v17 + 16);
  if (v18)
  {
    v36 = objc_opt_self();
    v19 = (v17 + 72);
    do
    {
      v20 = *(v19 - 5);
      v21 = *(v19 - 4);
      v22 = *(v19 - 3);
      v23 = *(v19 - 16);
      v24 = *(v19 - 1);
      v25 = *v19;
      v26 = swift_allocObject();
      *(v26 + 16) = v20;
      *(v26 + 24) = v21;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      *(v26 + 41) = v44;
      *(v26 + 44) = *(&v44 + 3);
      *(v26 + 48) = v24;
      *(v26 + 56) = v25;
      v27 = *(v2 + 16);
      *(v26 + 64) = *v2;
      *(v26 + 80) = v27;
      *(v26 + 96) = *(v2 + 32);
      *(v26 + 112) = *(v2 + 48);
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_2385BBCF0(v2, &aBlock);
      v28 = sub_23875EA50();
      v42 = sub_2385BBCE4;
      v43 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_238461390;
      v41 = &block_descriptor_10;
      v29 = _Block_copy(&aBlock);

      v30 = [v36 actionWithTitle:v28 style:v22 handler:v29];
      _Block_release(v29);

      [v37 addAction_];
      if (v23 == 1)
      {
        [v37 setPreferredAction_];
      }

      else
      {
      }

      v19 += 6;
      --v18;
    }

    while (v18);
  }

  v31 = sub_2385BB970();
  if (v31)
  {
    v32 = v31;
    sub_2385BBC90(v45);

    [v32 presentViewController:v37 animated:1 completion:0];
  }

  else
  {
    aBlock = v34;
    v39 = v35;
    LOBYTE(v40) = v33;
    sub_23875E2F0();

    sub_2385BBC90(v45);
  }
}

double sub_2385BB88C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a2 + 32))(isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  sub_23875E2F0();

  return result;
}

id sub_2385BB970()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {

    return [v0 presentedViewController];
  }

  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (!v5)
    {
      return 0;
    }

    v6 = [v5 rootViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v7 presentedViewController];
      v2 = v7;
      if (v8)
      {
        v9 = v7;
        do
        {
          v2 = v8;

          v8 = [v2 presentedViewController];
          v9 = v2;
        }

        while (v8);
      }
    }

    else
    {

      return 0;
    }

    return v2;
  }

  __break(1u);
  return result;
}

id sub_2385BBA98()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v0 init];
}

uint64_t sub_2385BBB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385BBD40(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2385BBBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385BBD40(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2385BBC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2385BBD40(a1, a2, a3);
  sub_23875D6B0();
  __break(1u);
}

unint64_t sub_2385BBC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0FB40;
  if (!qword_27DF0FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FB40);
  }

  return result;
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_destroy_helper_10(uint64_t a1)
{

  return result;
}

{

  return result;
}

unint64_t sub_2385BBD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0FB48;
  if (!qword_27DF0FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FB48);
  }

  return result;
}

void sub_2385BBD94()
{
  v1 = *&v0[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_context];
  if (v1)
  {
    v2 = v0;
    sub_2387582B0();
    v3 = v1;
    v4 = sub_238758290();
    v5 = sub_238758280();
    [v4 setPredicate_];

    sub_23845CA1C();
    v6 = sub_23875EC60();
    [v4 setSortDescriptors_];

    v7 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v4 managedObjectContext:v3 sectionNameKeyPath:0 cacheName:0];
    v8 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController;
    v9 = *&v2[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController];
    *&v2[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController] = v7;

    v10 = *&v2[v8];
    if (v10)
    {
      [v10 setDelegate_];
    }

    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    v14[4] = sub_2385BCA7C;
    v14[5] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_238461548;
    v14[3] = &block_descriptor_11;
    v12 = _Block_copy(v14);
    v13 = v2;

    [v3 performBlock_];
    _Block_release(v12);
  }
}

id sub_2385BBF60(void *a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  sub_23875C120();
  v9 = a1;
  v10 = sub_23875C1B0();
  v11 = sub_23875EFC0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2384615AC(*&v9[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID], *&v9[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID + 8], v30);
    _os_log_impl(&dword_2383F8000, v10, v11, "Listening for deletion of consent with institutionID: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v12, -1, -1);
  }

  v14 = *(v3 + 8);
  v14(v8, v2);
  result = *&v9[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController];
  if (result)
  {
    v30[0] = 0;
    v16 = [result performFetch_];
    v17 = v30[0];
    if (v16)
    {

      return v17;
    }

    else
    {
      v29[1] = v3;
      v29[2] = v30[0];
      v18 = v30[0];
      v19 = sub_23875B730();

      swift_willThrow();
      sub_23875C120();
      v20 = v9;
      v21 = v19;
      v22 = sub_23875C1B0();
      v23 = sub_23875EFE0();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30[0] = v26;
        *v24 = 136315394;
        *(v24 + 4) = sub_2384615AC(*&v20[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID], *&v20[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID + 8], v30);
        *(v24 + 12) = 2112;
        v27 = v19;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v28;
        *v25 = v28;
        _os_log_impl(&dword_2383F8000, v22, v23, "Failed to fetch updates for institutionId: %s with: %@", v24, 0x16u);
        sub_238439884(v25, &qword_27DF09930, &unk_2387638C0);
        MEMORY[0x23EE64DF0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x23EE64DF0](v26, -1, -1);
        MEMORY[0x23EE64DF0](v24, -1, -1);
      }

      else
      {
      }

      return (v14)(v5, v2);
    }
  }

  return result;
}

void sub_2385BC42C(BOOL *a3@<X8>)
{
  sub_2387582B0();
  v5 = sub_2387582A0();
  if (!v3)
  {
    if (v5 >> 62)
    {
      v6 = sub_23875F3A0();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a3 = v6 == 0;
  }
}

void sub_2385BC720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875C1E0();
  MEMORY[0x28223BE20](v6);
  v7 = (v3 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent);
  v8 = *(v3 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent);
  if (v8)
  {
    v9 = a3 == 2;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v7[1];
    sub_238453DB4(a1, v21);
    sub_2387582B0();

    if (swift_dynamicCast())
    {

      if (*(v3 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_context))
      {
        MEMORY[0x28223BE20](v11);
        v19 = v3;
        *(&v18 - 2) = v3;
        *(&v18 - 1) = v12;
        v13 = v12;
        v14 = sub_23875F120();
        if (v21[0] == 1)
        {
          v8(v14);

          sub_2384348A8(v8, v10);
          v15 = *v7;
          v16 = v7[1];
          *v7 = 0;
          v7[1] = 0;
          sub_2384348A8(v15, v16);
          v17 = *(v19 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController);
          *(v19 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController) = 0;

          return;
        }
      }
    }

    sub_2384348A8(v8, v10);
  }
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2385BCA9C(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v46 = a1;
  v43 = sub_238759120();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2387595E0();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v38 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875AEA0();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE20();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238757AC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875AEB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23875BC40();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v31 - v22;
  (*(v13 + 16))(v15, v46, v12, v21);
  v24 = (*(v13 + 88))(v15, v12);
  if (v24 == *MEMORY[0x277CC84C8])
  {
    (*(v13 + 96))(v15, v12);
    (*(v17 + 16))(v19, v15, v16);
    if (sub_23875BB50() & 1) == 0 || (v25 = v32, sub_2387595C0(), v26 = sub_23875BD70(), (*(v33 + 8))(v25, v34), (v26))
    {
      v27 = *(v17 + 8);
      v27(v19, v16);
      v27(v15, v16);
      return 0;
    }

    (*(v17 + 32))(v23, v19, v16);
    (*(v17 + 8))(v15, v16);
LABEL_7:
    (*(v35 + 16))(v38, v44, v37);
    (*(v41 + 104))(v42, *MEMORY[0x277CC7750], v43);
    sub_23875BB50();
    v29 = v36;
    sub_23875AE80();
    v28 = sub_23875AE90();
    (*(v39 + 8))(v29, v40);
    (*(v17 + 8))(v23, v16);
    return v28;
  }

  if (v24 == *MEMORY[0x277CC84C0])
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 32))(v11, v15, v8);
    sub_238757AB0();
    (*(v9 + 8))(v11, v8);
    goto LABEL_7;
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000014, 0x800000023878C600);
  sub_23875F510();
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for OrderDetailsStatusSubtitleFormatter(uint64_t a1)
{
  result = qword_27DF0FB70;
  if (!qword_27DF0FB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2385BD1E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_2387595E0();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FBB0, &qword_238774038);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = sub_23875BE40();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23875BE20();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_23875BD20();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for OrderDetailsStatusSubtitleFormatter(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385BDB10(v15, v16, v17);
  v18 = v25;
  sub_23875F780();
  if (!v18)
  {
    v19 = v23;
    sub_2385BDC24(&qword_27DF09CE0, MEMORY[0x277CC7968], MEMORY[0x277CC7980]);
    sub_23875F5B0();
    (*(v24 + 8))(v8, v6);
    (*(v19 + 40))(v14, v5, v3);
    sub_2385BDBC0(v14, v22);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2385BDB64(v14);
}

uint64_t sub_2385BD564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2385BDB10(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2385BD5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2385BDB10(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2385BD5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2385BCA9C(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_2385BD604()
{
  sub_2385BDC24(&qword_27DF0FBA8, type metadata accessor for OrderDetailsStatusSubtitleFormatter, &unk_238774004);

  return sub_238759950();
}

uint64_t sub_2385BD6A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FBC0, &qword_238774040);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385BDB10(v6, v7, v8);
  sub_23875F790();
  sub_2387595E0();
  sub_2385BDC24(&qword_27DF09CF0, MEMORY[0x277CC7968], MEMORY[0x277CC7970]);
  sub_23875F5C0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2385BD818()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385BDC24(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385BD8A0(uint64_t a1)
{
  sub_2387595E0();
  sub_2385BDC24(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);

  return sub_23875E960();
}

uint64_t sub_2385BD924()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385BDC24(&qword_27DF09CF8, MEMORY[0x277CC7968], MEMORY[0x277CC7978]);
  sub_23875E960();
  return sub_23875F760();
}

unint64_t sub_2385BDB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0FBB8;
  if (!qword_27DF0FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FBB8);
  }

  return result;
}

uint64_t sub_2385BDB64(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsStatusSubtitleFormatter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2385BDBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsStatusSubtitleFormatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385BDC24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2385BDC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0FBC8;
  if (!qword_27DF0FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FBC8);
  }

  return result;
}

unint64_t sub_2385BDCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0FBD0;
  if (!qword_27DF0FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FBD0);
  }

  return result;
}

unint64_t sub_2385BDD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0FBD8;
  if (!qword_27DF0FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FBD8);
  }

  return result;
}

char *sub_2385BDD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(type metadata accessor for OrderDetailsViewController(0));
  v13 = &v12[qword_27DF0FBE0];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v12[qword_27DF0FBE8];
  *v14 = a3;
  *(v14 + 1) = a4;
  v15 = &v12[qword_27DF0FBF0];
  *v15 = a5;
  *(v15 + 1) = a6;

  return sub_238669FD0();
}

uint64_t type metadata accessor for OrderDetailsViewController(uint64_t a1)
{
  result = qword_27DF0FC00;
  if (!qword_27DF0FC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id OrderDetailsViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OrderDetailsViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrderDetailsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2385BE190(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for OrderDetailsViewController(0);
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1 & 1);
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  if (*&v1[qword_27DF0FBF0 + 8])
  {
    v5 = sub_23875EA50();
  }

  else
  {
    v5 = 0;
  }

  [v1 showDetailsForOrderTypeIdentifier:v3 orderIdentifier:v4 fulfillmentIdentifier:v5 sourceApplication:0];
}

void sub_2385BE264(void *a1, uint64_t a2, char a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  sub_2385BE190(a3);
}

double sub_2385BE330()
{

  return result;
}

id sub_2385BE3A8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_2385BE3E0(uint64_t a1)
{

  return result;
}

uint64_t sub_2385BE450()
{
  v14[0] = *(v0 + 24);
  if (*(v0 + 64))
  {

    v1 = sub_23875F010();
  }

  else
  {

    v1 = 0;
    v2 = 0;
  }

  v3 = 0;
  v14[1] = v1;
  v14[2] = v2;
  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v5 = &v14[2 * v3];
  while (++v3 != 3)
  {
    v6 = v5 + 2;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_238497C2C(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_238497C2C((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEB8, &unk_2387673D0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
  sub_23843A3E8(&qword_27DF0AEC0, &qword_27DF09550, &qword_2387638E0, MEMORY[0x277D83958]);
  v12 = sub_23875E980();

  return v12;
}

double sub_2385BE60C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v85 = sub_23875BD20();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v81 - v5;
  v93 = sub_238758090();
  v96 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OrderDetailsShippingAddress(0);
  MEMORY[0x28223BE20](v9);
  v102 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v81 - v12);
  sub_23875ED50();
  v97 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_2385BE450();
  v16 = v15;
  v17 = *(type metadata accessor for OrderDetailsShippingAddress.ViewModel(0) + 20);
  v18 = *MEMORY[0x277CC8440];
  v19 = sub_23875AD80();
  (*(*(v19 - 8) + 104))(v13 + v17, v18, v19);
  *v13 = v14;
  v13[1] = v16;
  v20 = v13 + *(v9 + 20);
  v107 = 1;
  sub_23875E1A0();
  v21 = v109;
  *v20 = v108;
  *(v20 + 1) = v21;
  v22 = a1[1];
  if (v22)
  {
    v106 = *a1;
    KeyPath = swift_getKeyPath(byte_238774300);
  }

  else
  {
    KeyPath = 0;
    v106 = 0;
  }

  v23 = v93;
  v100 = a1[5];
  v101 = v13;
  v82 = v8;
  if (v100)
  {
    v99 = a1[4];
    v24 = qword_2814F0880;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = v22;
    v26 = qword_2814F1B90;
    v27 = sub_23875EA50();
    v28 = sub_23875EA50();
    v29 = sub_23875EA50();
    v30 = [v26 localizedStringForKey:v27 value:v28 table:v29];

    v31 = sub_23875EA80();
    v103 = v32;
    v104 = v31;
  }

  else
  {
    v25 = v22;

    v103 = 0;
    v104 = 0;
    v99 = 0;
  }

  v95 = a1[7];
  if (v95)
  {
    v94 = a1[6];
    v33 = qword_2814F0880;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = qword_2814F1B90;
    v35 = sub_23875EA50();
    v36 = sub_23875EA50();
    v37 = sub_23875EA50();
    v38 = [v34 &selRef:v35 hostViewController:v36 didBeginHosting:v37 + 4];

    v39 = sub_23875EA80();
    v91 = v40;
    v92 = v39;
  }

  else
  {
    v91 = 0;
    v92 = 0;
    v94 = 0;
  }

  v41 = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0);
  sub_23843981C(a1 + *(v41 + 36), v6, &unk_27DF0B080, &unk_2387662A0);
  v42 = v96;
  if ((*(v96 + 48))(v6, 1, v23) == 1)
  {
    sub_238439884(v6, &unk_27DF0B080, &unk_2387662A0);
    v89 = 0;
    v90 = 0;
    v88 = 0;
    v87 = 0;
  }

  else
  {
    v43 = v82;
    (*(v42 + 32))(v82, v6, v23);
    v44 = v23;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v45 = qword_2814F1B90;
    v46 = sub_23875EA50();
    v47 = sub_23875EA50();
    v48 = sub_23875EA50();
    v49 = [v45 &selRef:v46 hostViewController:v47 didBeginHosting:v48 + 4];

    v50 = sub_23875EA80();
    v89 = v51;
    v90 = v50;

    v52 = v83;
    sub_23875BCC0();
    v88 = sub_238758080();
    v87 = v53;
    (*(v84 + 8))(v52, v85);
    (*(v42 + 8))(v43, v44);
  }

  v54 = v102;
  sub_2385A5360(v101, v102);
  v55 = v98;
  sub_2385A5360(v54, v98);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCC0, &qword_2387742F8);
  v57 = v55 + v56[12];
  v58 = v106;
  *v57 = v106;
  *(v57 + 8) = v25;
  v106 = v58;
  v59 = v25;
  v86 = v25;
  v61 = v104;
  v60 = KeyPath;
  *(v57 + 16) = KeyPath;
  v62 = v60;
  v104 = v61;
  KeyPath = v60;
  *(v57 + 24) = 0;
  v63 = (v55 + v56[16]);
  v64 = v103;
  *v63 = v61;
  v63[1] = v64;
  v103 = v64;
  v65 = v100;
  v63[2] = v99;
  v63[3] = v65;
  v66 = (v55 + v56[20]);
  v68 = v91;
  v67 = v92;
  *v66 = v92;
  v66[1] = v68;
  v70 = v94;
  v69 = v95;
  v66[2] = v94;
  v66[3] = v69;
  v71 = (v55 + v56[24]);
  v73 = v89;
  v72 = v90;
  *v71 = v90;
  v71[1] = v73;
  v74 = v88;
  v75 = v87;
  v71[2] = v88;
  v71[3] = v75;
  sub_2385C0814(v58, v59, v62, 0);
  v76 = v61;
  v77 = v64;
  v78 = v99;
  v79 = v100;
  sub_2385570E8(v76, v77, v99, v100);
  sub_2385570E8(v67, v68, v70, v69);
  sub_2385570E8(v72, v73, v74, v75);
  sub_2385C0860(v101);
  sub_23855712C(v72, v73, v74, v75);
  sub_23855712C(v67, v68, v70, v69);
  sub_23855712C(v104, v103, v78, v79);
  sub_2385C08BC(v106, v86, KeyPath, 0);
  sub_2385C0860(v102);

  return result;
}

uint64_t sub_2385BEE98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCB0, &qword_2387742F0);
  sub_23843A3E8(&qword_27DF0FCB8, &qword_27DF0FCB0, &qword_2387742F0, MEMORY[0x277CE14C0]);
  return sub_23875E3D0();
}

uint64_t sub_2385BEF3C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = *(type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0) + 36);
  v10 = sub_238758090();
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  v11 = [a1 orderContent];
  v12 = [v11 orderNumber];
  v13 = sub_23875EA80();
  v15 = v14;

  *a3 = v13;
  a3[1] = v15;
  if (a2 && (v16 = [a2 recipientFullName]) != 0)
  {
    v17 = v16;
    v18 = sub_23875EA80();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  a3[2] = v18;
  a3[3] = v20;
  v21 = [a1 recipientEmailAddress];
  if (v21)
  {
    v22 = v21;
    v23 = sub_23875EA80();
    v25 = v24;

    a3[4] = v23;
    a3[5] = v25;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    a3[4] = 0;
    a3[5] = 0;
    if (!a2)
    {
LABEL_11:
      v28 = 0;
      v30 = 0;
      goto LABEL_12;
    }
  }

  v26 = [a2 recipientPhoneNumber];
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = v26;
  v28 = sub_23875EA80();
  v30 = v29;

LABEL_12:
  a3[6] = v28;
  a3[7] = v30;
  a3[8] = [a2 recipientAddress];
  sub_23875A5C0();

  return sub_2385BF194(v8, a3 + v9);
}

uint64_t sub_2385BF194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2385BF22C(uint64_t a1)
{
  sub_2384561E8();
  if (v1 <= 0x3F)
  {
    sub_2385862B4(319);
    if (v2 <= 0x3F)
    {
      sub_2385BF2CC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385BF2CC(uint64_t a1)
{
  if (!qword_27DF0BB88)
  {
    sub_238758090();
    v1 = sub_23875F1F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0BB88);
    }
  }
}

uint64_t sub_2385BF324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v104 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FC80, &qword_238774280);
  MEMORY[0x28223BE20](v7 - 8);
  v110 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v9 - 8);
  v109 = &v89 - v10;
  v11 = sub_2387581F0();
  v94 = *(v11 - 8);
  v95 = v11;
  MEMORY[0x28223BE20](v11);
  v91 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v92 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FC88, &qword_238774288);
  MEMORY[0x28223BE20](v15 - 8);
  v93 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = &v89 - v18;
  v102 = sub_238758520();
  v19 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FC90, &qword_238774290);
  MEMORY[0x28223BE20](v21 - 8);
  v105 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v89 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v89 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FC98, &qword_238774298);
  MEMORY[0x28223BE20](v29 - 8);
  v106 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v97 = &v89 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v89 - v34;
  v36 = *(type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0) + 36);
  v37 = sub_238758090();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v107 = v36;
  v99 = v39;
  v100 = v37;
  v98 = v38 + 56;
  (v39)(a4 + v36, 1, 1);
  *a4 = sub_2387580E0();
  a4[1] = v40;
  v108 = a3;
  sub_23843981C(a3, v28, &qword_27DF0FC90, &qword_238774290);
  v41 = sub_2387581D0();
  v42 = *(v41 - 8);
  v111 = *(v42 + 48);
  v43 = v111(v28, 1, v41);
  v103 = v42;
  if (v43 == 1)
  {
    sub_238439884(v28, &qword_27DF0FC90, &qword_238774290);
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v90 = a1;
    sub_238758180();
    (*(v42 + 8))(v28, v41);
    v46 = sub_238758130();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v35, 1, v46) == 1)
    {
      sub_238439884(v35, &qword_27DF0FC98, &qword_238774298);
      v44 = 0;
      v45 = 0;
    }

    else
    {
      v44 = sub_238758120();
      v45 = v48;
      (*(v47 + 8))(v35, v46);
    }

    a1 = v90;
  }

  a4[2] = v44;
  a4[3] = v45;
  if (*(v104 + 16))
  {
    v50 = v101;
    v49 = v102;
    (*(v19 + 16))(v101, v104 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v102);

    v51 = sub_2387584A0();
    v53 = v52;
    (*(v19 + 8))(v50, v49);
  }

  else
  {

    v51 = 0;
    v53 = 0;
  }

  v54 = v108;
  a4[4] = v51;
  a4[5] = v53;
  sub_23843981C(v54, v25, &qword_27DF0FC90, &qword_238774290);
  if (v111(v25, 1, v41) == 1)
  {
    v55 = &qword_27DF0FC90;
    v56 = &qword_238774290;
    v57 = v25;
LABEL_14:
    sub_238439884(v57, v55, v56);
    v61 = 0;
    v62 = 0;
    goto LABEL_16;
  }

  v58 = v97;
  sub_238758180();
  (*(v103 + 8))(v25, v41);
  v59 = sub_238758130();
  v60 = *(v59 - 8);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    v55 = &qword_27DF0FC98;
    v56 = &qword_238774298;
    v57 = v58;
    goto LABEL_14;
  }

  v61 = sub_238758100();
  v63 = v58;
  v62 = v64;
  (*(v60 + 8))(v63, v59);
LABEL_16:
  a4[6] = v61;
  a4[7] = v62;
  v65 = v105;
  v66 = v106;
  sub_23843981C(v54, v105, &qword_27DF0FC90, &qword_238774290);
  if (v111(v65, 1, v41) == 1)
  {
    sub_238439884(v65, &qword_27DF0FC90, &qword_238774290);
    v67 = 0;
    v69 = v109;
    v68 = v110;
    goto LABEL_24;
  }

  sub_238758180();
  (*(v103 + 8))(v65, v41);
  v70 = sub_238758130();
  v71 = *(v70 - 8);
  v72 = (*(v71 + 48))(v66, 1, v70);
  v69 = v109;
  v68 = v110;
  if (v72 == 1)
  {
    v73 = &qword_27DF0FC98;
    v74 = &qword_238774298;
    v75 = v66;
LABEL_22:
    sub_238439884(v75, v73, v74);
    v67 = 0;
    goto LABEL_24;
  }

  v76 = v96;
  MEMORY[0x23EE5CBF0]();
  v77 = v76;
  (*(v71 + 8))(v66, v70);
  v78 = v76;
  v79 = v93;
  sub_23843981C(v78, v93, &qword_27DF0FC88, &qword_238774288);
  v81 = v94;
  v80 = v95;
  if ((*(v94 + 48))(v79, 1, v95) == 1)
  {
    v73 = &qword_27DF0FC88;
    v74 = &qword_238774288;
    v75 = v77;
    goto LABEL_22;
  }

  v82 = v79;
  v83 = v92;
  (*(v81 + 32))(v92, v82, v80);
  sub_238449184(0, &qword_27DF0D608, 0x277CBDB60);
  (*(v81 + 16))(v91, v83, v80);
  v67 = sub_23875F0E0();
  (*(v81 + 8))(v83, v80);
  sub_238439884(v96, &qword_27DF0FC88, &qword_238774288);
LABEL_24:
  a4[8] = v67;
  sub_238758220();
  v84 = sub_238758210();
  v85 = *(v84 - 8);
  if ((*(v85 + 48))(v68, 1, v84) == 1)
  {
    sub_238439884(v54, &qword_27DF0FC90, &qword_238774290);
    v86 = sub_238758270();
    (*(*(v86 - 8) + 8))(a1, v86);
    sub_238439884(v68, &qword_27DF0FC80, &qword_238774280);
    v99(v69, 1, 1, v100);
  }

  else
  {
    sub_238758200();
    sub_238439884(v54, &qword_27DF0FC90, &qword_238774290);
    v87 = sub_238758270();
    (*(*(v87 - 8) + 8))(a1, v87);
    (*(v85 + 8))(v68, v84);
  }

  return sub_2385BF194(v69, a4 + v107);
}

uint64_t sub_2385BFE34(void *a1, void *a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v82 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  MEMORY[0x28223BE20](v11);
  v14 = &v82 - v13;
  v15 = a1[1];
  v16 = a2[1];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_99;
    }

    if (*a1 != *a2 || v15 != v16)
    {
      v17 = v12;
      v18 = sub_23875F630();
      v12 = v17;
      if ((v18 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v16)
  {
    goto LABEL_99;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_99;
    }

    if (a1[2] != a2[2] || v19 != v20)
    {
      v21 = v12;
      v22 = sub_23875F630();
      v12 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v20)
  {
    goto LABEL_99;
  }

  v23 = a1[5];
  v24 = a2[5];
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_99;
    }

    if (a1[4] != a2[4] || v23 != v24)
    {
      v25 = v12;
      v26 = sub_23875F630();
      v12 = v25;
      if ((v26 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v24)
  {
    goto LABEL_99;
  }

  v27 = a1[7];
  v28 = a2[7];
  if (v27)
  {
    if (!v28)
    {
      goto LABEL_99;
    }

    if (a1[6] != a2[6] || v27 != v28)
    {
      v29 = v12;
      v30 = sub_23875F630();
      v12 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v28)
  {
    goto LABEL_99;
  }

  v31 = a1[8];
  v85 = v12;
  v87 = v31;
  if (v31)
  {
    v32 = [v31 street];
    v84 = sub_23875EA80();
    v34 = v33;

    v35 = a2[8];
    if (!v35)
    {
      if (v34)
      {
        goto LABEL_98;
      }

      v86 = 0;
      v36 = 1;
      v37 = v87;
      goto LABEL_45;
    }
  }

  else
  {
    v35 = a2[8];
    if (!v35)
    {
      goto LABEL_102;
    }

    v34 = 0;
    v84 = 0;
  }

  v86 = v35;
  v38 = [v35 street];
  v83 = sub_23875EA80();
  v40 = v39;

  if (v34)
  {
    if (!v40)
    {
      goto LABEL_98;
    }

    if (v84 == v83 && v34 == v40)
    {
    }

    else
    {
      v41 = sub_23875F630();

      if ((v41 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v40)
  {
    goto LABEL_98;
  }

  v37 = v87;
  if (!v87)
  {
    v44 = 0;
    v84 = 0;
    goto LABEL_49;
  }

  v36 = 0;
LABEL_45:
  v42 = [v37 city];
  v84 = sub_23875EA80();
  v44 = v43;

  if (v36)
  {
    if (v44)
    {
      goto LABEL_98;
    }

    v45 = 1;
    v46 = v87;
    goto LABEL_59;
  }

LABEL_49:
  v47 = [v86 city];
  v83 = sub_23875EA80();
  v49 = v48;

  if (v44)
  {
    if (!v49)
    {
      goto LABEL_98;
    }

    if (v84 == v83 && v44 == v49)
    {
    }

    else
    {
      v50 = sub_23875F630();

      if ((v50 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v49)
  {
    goto LABEL_98;
  }

  v46 = v87;
  if (!v87)
  {
    v53 = 0;
    v84 = 0;
    goto LABEL_63;
  }

  v45 = 0;
LABEL_59:
  v51 = [v46 state];
  v84 = sub_23875EA80();
  v53 = v52;

  if (v45)
  {
    if (v53)
    {
      goto LABEL_98;
    }

    v54 = 1;
    v55 = v87;
    goto LABEL_73;
  }

LABEL_63:
  v56 = [v86 state];
  v83 = sub_23875EA80();
  v58 = v57;

  if (v53)
  {
    if (!v58)
    {
      goto LABEL_98;
    }

    if (v84 == v83 && v53 == v58)
    {
    }

    else
    {
      v59 = sub_23875F630();

      if ((v59 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v58)
  {
    goto LABEL_98;
  }

  v55 = v87;
  if (!v87)
  {
    v62 = 0;
    v84 = 0;
    goto LABEL_77;
  }

  v54 = 0;
LABEL_73:
  v87 = v55;
  v60 = [v55 postalCode];
  v84 = sub_23875EA80();
  v62 = v61;

  if (v54)
  {
    if (v62)
    {
      goto LABEL_98;
    }

    v63 = 1;
    v64 = v87;
LABEL_87:
    v69 = [v64 country];
    v87 = sub_23875EA80();
    v71 = v70;

    if (v63)
    {
      if (!v71)
      {
        goto LABEL_102;
      }

LABEL_98:

      goto LABEL_99;
    }

    goto LABEL_91;
  }

LABEL_77:
  v65 = [v86 postalCode];
  v83 = sub_23875EA80();
  v67 = v66;

  if (v62)
  {
    if (!v67)
    {
      goto LABEL_98;
    }

    if (v84 == v83 && v62 == v67)
    {
    }

    else
    {
      v68 = sub_23875F630();

      if ((v68 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v67)
  {
    goto LABEL_98;
  }

  v64 = v87;
  if (v87)
  {
    v63 = 0;
    goto LABEL_87;
  }

  v71 = 0;
  v87 = 0;
LABEL_91:
  v72 = [v86 country];
  v86 = sub_23875EA80();
  v74 = v73;

  if (v71)
  {
    if (v74)
    {
      if (v87 == v86 && v71 == v74)
      {
      }

      else
      {
        v77 = sub_23875F630();

        if ((v77 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_102;
    }

    goto LABEL_98;
  }

  if (v74)
  {
    goto LABEL_98;
  }

LABEL_102:
  v78 = *(type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0) + 36);
  v79 = *(v85 + 48);
  sub_23843981C(a1 + v78, v14, &unk_27DF0B080, &unk_2387662A0);
  sub_23843981C(a2 + v78, &v14[v79], &unk_27DF0B080, &unk_2387662A0);
  v80 = *(v5 + 48);
  if (v80(v14, 1, v4) == 1)
  {
    if (v80(&v14[v79], 1, v4) == 1)
    {
      sub_238439884(v14, &unk_27DF0B080, &unk_2387662A0);
      v75 = 1;
      return v75 & 1;
    }
  }

  else
  {
    sub_23843981C(v14, v10, &unk_27DF0B080, &unk_2387662A0);
    if (v80(&v14[v79], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v79], v4);
      sub_2385C06E4();
      v75 = sub_23875E9E0();
      v81 = *(v5 + 8);
      v81(v7, v4);
      v81(v10, v4);
      sub_238439884(v14, &unk_27DF0B080, &unk_2387662A0);
      return v75 & 1;
    }

    (*(v5 + 8))(v10, v4);
  }

  sub_238439884(v14, &qword_27DF0BC88, &qword_23876D250);
LABEL_99:
  v75 = 0;
  return v75 & 1;
}

unint64_t sub_2385C06E4()
{
  result = qword_27DF0BC90;
  if (!qword_27DF0BC90)
  {
    sub_238758090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BC90);
  }

  return result;
}

uint64_t sub_2385C0784(uint64_t a1)
{
  result = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2385C0814(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {

    sub_2384BE900(a3, a4 & 1);
  }
}

uint64_t sub_2385C0860(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsShippingAddress(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2385C08BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {

    sub_2385A9698(a3, a4 & 1);
  }
}

unint64_t sub_2385C0908()
{
  result = qword_27DF0FCC8;
  if (!qword_27DF0FCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FCD0, &qword_238774328);
    sub_23843A3E8(&qword_27DF0FCB8, &qword_27DF0FCB0, &qword_2387742F0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FCC8);
  }

  return result;
}

void sub_2385C0A0C(uint64_t a1)
{
  sub_2384561E8();
  if (v1 <= 0x3F)
  {
    sub_2385C0B18(319, &qword_27DF0FCF0, MEMORY[0x277CC78D8], MEMORY[0x277CDD7C8]);
    if (v2 <= 0x3F)
    {
      sub_2385C0B18(319, &qword_27DF0FCF8, type metadata accessor for AnalyticsSession, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385C0B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2385C0BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2386F5600() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6 + 16);
  v14 = *(a1 + v6);
  v15[0] = v7;
  *(v15 + 12) = *(a1 + v6 + 28);
  v8 = (a2 + v6);
  v9 = v8[1];
  v16 = *v8;
  v17[0] = v9;
  *(v17 + 12) = *(v8 + 28);
  if ((sub_23846C7F4(&v14, &v16) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_2385192A4(v11, v12);
}

void sub_2385C0C80(char **a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FetchedExtractedOrderDetails(0);
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD00, &qword_2387743E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-1] - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCD8, &unk_238774360);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF0FD08, &qword_27DF0FD00, &qword_2387743E0, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  if (v21[4] == v21[0])
  {
    (*(v7 + 8))(v9, v6);
    v10 = 0;
    v11 = 0;
LABEL_5:
    *a1 = v10;
    a1[1] = 0;
    a1[2] = v11;
    a1[3] = 0;
    return;
  }

  v12 = sub_23875EF20();
  v14 = *v13;
  v12(v21, 0);
  (*(v7 + 8))(v9, v6);
  sub_2385C30DC(v2, &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FetchedExtractedOrderDetails);
  v15 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v16 = swift_allocObject();
  sub_2385C314C(&v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for FetchedExtractedOrderDetails);

  v17 = [v14 managedObjectContext];
  if (v17)
  {
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD10, &qword_2387743E8);
    swift_allocObject();
    v19 = v14;
    v10 = sub_238626C04(v14, v18, sub_2385C1C98, v16);

    v11 = sub_2385C11C4;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_2385C0FD8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_23875CDB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = a2 + *(type metadata accessor for FetchedExtractedOrderDetails(0) + 28);
  v13 = *v12;
  v14 = *(v12 + 8);

  if ((v14 & 1) == 0)
  {
    sub_23875EFF0();
    v15 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v13 = v23;
  }

  v16 = a1;
  sub_2386F4984(v16, v10, v11, 0, a3);
  v17 = v16;
  sub_23846C8C4(v17, 1, &v23);

  v18 = type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0);
  v19 = (a3 + *(v18 + 20));
  v20 = v24[0];
  *v19 = v23;
  v19[1] = v20;
  *(v19 + 28) = *(v24 + 12);
  sub_2385C1D18(v17, v13);
  v22 = v21;

  *(a3 + *(v18 + 24)) = v22;
}

uint64_t sub_2385C11C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for ExtractedOrderDetails(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385C30DC(a1, v7, type metadata accessor for ExtractedOrderDetails.ViewModel);
  v8 = &v7[*(v5 + 20)];
  LOBYTE(v29[0]) = 1;
  v24 = 0u;
  v23 = 0u;
  v25 = 1;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  sub_23875E1A0();
  v9 = v29[3];
  v10 = v29[4];
  v11 = v29[1];
  *(v8 + 2) = v29[2];
  *(v8 + 3) = v9;
  *(v8 + 4) = v10;
  *(v8 + 10) = v30;
  *v8 = v29[0];
  *(v8 + 1) = v11;
  v12 = *(v5 + 24);
  *&v7[v12] = swift_getKeyPath(asc_2387743F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD18, &qword_238774428);
  sub_2385C3320(&qword_27DF0DAF0, type metadata accessor for ExtractedOrderDetails, &unk_238781A80);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FD20, &unk_238774430);
  v14 = sub_23843A3E8(&qword_27DF0FD28, &qword_27DF0FD20, &unk_238774430, MEMORY[0x277CDDB60]);
  *&v23 = v13;
  *(&v23 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v20;
  sub_23875DEF0();
  sub_2385C3368(v7, type metadata accessor for ExtractedOrderDetails);
  sub_2385C30DC(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FetchedExtractedOrderDetails.ViewModel);
  v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v17 = swift_allocObject();
  sub_2385C314C(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for FetchedExtractedOrderDetails.ViewModel);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD30, &qword_238774440);
  v19 = (v15 + *(result + 36));
  *v19 = sub_2385C31B4;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

double sub_2385C1568(uint64_t a1)
{
  v2 = sub_23875D2A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD20, &unk_238774430);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D270();
  MEMORY[0x28223BE20](v7);
  *(&v10 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD38, &qword_238774448);
  sub_2385C3234();
  sub_23875C990();
  v8 = sub_23843A3E8(&qword_27DF0FD28, &qword_27DF0FD20, &unk_238774430, MEMORY[0x277CDDB60]);
  MEMORY[0x23EE61E80](v6, v3, v8);
  (*(v4 + 8))(v6, v3);

  return result;
}

double sub_2385C17AC(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedOrderActionsMenu(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (a1 + *(type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0) + 20));
  v6 = *(v5 + 28);
  v7 = v5[1];
  v15 = *v5;
  v16[0] = v7;
  *(v16 + 12) = v6;
  *v4 = v15;
  v4[1] = v7;
  *(v4 + 28) = v6;
  v8 = *(v2 + 20);
  *(v4 + v8) = swift_getKeyPath(asc_238774450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v9 = v4 + *(v2 + 24);
  v14 = 0;
  sub_23846CF68(&v15, v12);
  sub_23875E1A0();
  v10 = v13;
  *v9 = v12[0];
  *(v9 + 1) = v10;
  sub_2385C3320(&qword_27DF0FD48, type metadata accessor for ExtractedOrderActionsMenu, &unk_238765550);
  sub_23875DE00();
  sub_2385C3368(v4, type metadata accessor for ExtractedOrderActionsMenu);

  return result;
}

void sub_2385C19B8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + *(type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0) + 24));
  v18 = *(v2 + 16);
  if (v18)
  {
    v3 = 0;
    v17 = *MEMORY[0x277D38548];
    v4 = *MEMORY[0x277D383D8];
    v5 = *MEMORY[0x277D384B8];
    while (v3 < *(v2 + 16))
    {
      v6 = *(v2 + 32 + 8 * v3);
      v7 = sub_23875EA80();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      inited = swift_initStackObject();
      *(inited + 32) = v4;
      *(inited + 16) = xmmword_238763B60;
      *(inited + 40) = v7;
      *(inited + 48) = v9;
      *(inited + 56) = v5;
      strcpy((inited + 64), "orderDetails");
      *(inited + 77) = 0;
      *(inited + 78) = -5120;

      v11 = v4;
      v12 = v5;
      v13 = sub_23854B138(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
      swift_arrayDestroy();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v13;
      sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v19);

      ++v3;
      v15 = objc_opt_self();
      type metadata accessor for PKAnalyticsKey(0);
      sub_2385C3320(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
      v16 = sub_23875E910();

      [v15 subject:v17 sendEvent:v16];

      if (v18 == v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

void sub_2385C1C98(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for FetchedExtractedOrderDetails(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2385C0FD8(a1, v6, a2);
}

void sub_2385C1D18(void *a1, uint64_t a2)
{
  v185 = sub_238757F90();
  v173 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v159 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  MEMORY[0x28223BE20](v5 - 8);
  v184 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v183 = &v152 - v8;
  v182 = sub_23875BE40();
  v162 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v181 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_238757F70();
  v161 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v158 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  MEMORY[0x28223BE20](v11 - 8);
  v179 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v178 = &v152 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  MEMORY[0x28223BE20](v15 - 8);
  v177 = &v152 - v16;
  v190 = sub_23875BE20();
  v194 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v189 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_23875BC40();
  v195 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v192 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v152 - v21;
  v196 = a1;
  v23 = [a1 orderContent];
  v24 = [a1 trackedOrderIdentifier];
  v25 = sub_23875EA80();
  v27 = v26;

  v28 = *(a2 + 16);
  v199 = v25;
  v200 = v27;
  v29 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v28 + v29));
  sub_2385C33C8(v202);
  os_unfair_lock_unlock((v28 + v29));

  v197 = v202[1];
  v198 = v202[0];
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD60, &qword_2387744A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238774330;
  *(inited + 32) = sub_23875EA50();
  v186 = (inited + 32);
  *(inited + 40) = xmmword_238774340;
  *(inited + 56) = sub_23875EA50();
  *(inited + 64) = sub_2385B98E8();
  *(inited + 72) = v31;
  *(inited + 80) = sub_23875EA50();
  v32 = [v23 orderNumber];
  sub_23875EA80();

  v33 = *MEMORY[0x277D38520];
  v34 = *MEMORY[0x277D38528];
  v35 = sub_23875EA80();
  v37 = v36;

  *(inited + 88) = v35;
  *(inited + 96) = v37;
  *(inited + 104) = sub_23875EA50();
  sub_23875A5C0();
  v38 = sub_238758090();
  (*(*(v38 - 8) + 48))(v22, 1, v38);
  v39 = sub_23875EA80();
  v41 = v40;
  sub_238439884(v22, &unk_27DF0B080, &unk_2387662A0);
  *(inited + 112) = v39;
  *(inited + 120) = v41;
  *(inited + 128) = sub_23875EA50();
  v42 = v192;
  sub_23875BBF0();
  v43 = v189;
  sub_23875BDB0();
  sub_238759450();
  v44 = *(v194 + 8);
  v194 += 8;
  v175 = v44;
  v44(v43, v190);
  v45 = *(v195 + 8);
  v195 += 8;
  v187 = v45;
  v45(v42, v193);
  v191 = v33;
  *(inited + 136) = sub_23875EA80();
  *(inited + 144) = v46;
  *(inited + 152) = sub_23875EA50();
  v153 = v23;
  v47 = [v23 paymentTotalCurrencyCode];
  if (v47)
  {
    v48 = v47;
    v49 = sub_23875EA80();
    v51 = v50;
  }

  else
  {
    v51 = 0xE700000000000000;
    v49 = 0x6E776F6E6B6E75;
  }

  *(inited + 160) = v49;
  *(inited + 168) = v51;
  *(inited + 176) = sub_23875EA50();
  v52 = sub_23875A5E0();
  v188 = v34;
  if (v52 >> 62)
  {
    sub_23875F3A0();
  }

  *(inited + 184) = sub_23875EA80();
  *(inited + 192) = v53;
  *(inited + 200) = sub_23875EA50();
  v54 = v153;
  *(inited + 208) = sub_2385B9AA4();
  *(inited + 216) = v55;
  *(inited + 224) = sub_23875EA50();
  v56 = [v54 orderUpdateDate];
  v57 = v192;
  sub_23875BBE0();

  v58 = sub_23844C544(v57);
  v60 = v59;
  v187(v57, v193);
  *(inited + 232) = v58;
  *(inited + 240) = v60;
  v61 = sub_23875EA50();
  v62 = v197;
  v63 = v198;
  *(inited + 248) = v61;
  *(inited + 256) = v63;
  *(inited + 264) = v62;
  *(inited + 272) = sub_23875EA50();
  v64 = sub_238759470();
  if (v64 >> 62)
  {
    v70 = v64;
    v71 = sub_23875F3A0();
    v64 = v70;
    if (v71)
    {
      goto LABEL_8;
    }

LABEL_13:

    v67 = sub_23875EA80();
    v69 = v72;
    goto LABEL_14;
  }

  if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v64 & 0xC000000000000001) != 0)
  {
    v65 = MEMORY[0x23EE63F70](0);
  }

  else
  {
    if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_52;
    }

    v65 = *(v64 + 32);
  }

  v66 = v65;

  v67 = sub_23875EA80();
  v69 = v68;

LABEL_14:
  *(inited + 280) = v67;
  *(inited + 288) = v69;
  *(inited + 296) = sub_23875EA50();
  v73 = [v153 merchantDisplayName];
  v74 = sub_23875EA80();
  v76 = v75;

  *(inited + 304) = v74;
  *(inited + 312) = v76;
  *(inited + 320) = sub_23875EA50();
  *(inited + 328) = 0x74656C6C6177;
  *(inited + 336) = 0xE600000000000000;
  v77 = sub_23854BB54(inited);
  swift_setDeallocating();
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD68, &qword_2387744A8);
  swift_arrayDestroy();
  v186 = sub_23862110C(v77);

  v78 = sub_23875A5E0();
  if (v78 >> 62)
  {
    v79 = sub_23875F3A0();
  }

  else
  {
    v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v79)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF10, &qword_2387744B0);
    v150 = swift_allocObject();
    *(v150 + 16) = xmmword_2387632F0;
    *(v150 + 32) = v186;

    return;
  }

  v80 = sub_23875A5E0();
  v81 = v80;
  if (!(v80 >> 62))
  {
    v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
      goto LABEL_19;
    }

LABEL_50:

    return;
  }

  v151 = v80;
  v82 = sub_23875F3A0();
  v81 = v151;
  if (!v82)
  {
    goto LABEL_50;
  }

LABEL_19:
  if (v82 >= 1)
  {
    v83 = 0;
    v170 = "fulfillmentStatus";
    v171 = "orderEmailAvailable";
    v168 = "deliveryETASpecified";
    v169 = "trackingNumberSpecified";
    v166 = "carrierSpecified";
    v167 = "orderShippingAddressSpecified";
    v164 = v81 & 0xC000000000000001;
    v165 = "daysSinceDelivered";
    ++v162;
    v163 = v161 + 6;
    v156 = (v161 + 1);
    v157 = (v161 + 4);
    v161 = (v173 + 48);
    v154 = (v173 + 8);
    v155 = (v173 + 32);
    v84 = MEMORY[0x277D84F90];
    v160 = xmmword_238774350;
    v172 = v82;
    v173 = v81;
    while (1)
    {
      v197 = v84;
      v198 = v83;
      v196 = 0;
      v85 = v164 ? MEMORY[0x23EE63F70](v83) : *(v81 + 8 * v83 + 32);
      v86 = v85;
      v87 = swift_initStackObject();
      *(v87 + 16) = v160;
      *(v87 + 32) = sub_23875EA50();
      *(v87 + 40) = sub_2385B9D18();
      *(v87 + 48) = v88;
      *(v87 + 56) = sub_23875EA50();
      v89 = [v86 trackingNumber];
      if (v89)
      {
        v90 = v89;
        v91 = sub_23875EA80();
        v93 = v92;
      }

      else
      {
        v91 = 0;
        v93 = 0;
      }

      v94 = sub_2385C0B98(v91, v93);
      v96 = v95;

      *(v87 + 64) = v94;
      *(v87 + 72) = v96;
      *(v87 + 80) = sub_23875EA50();
      v97 = v177;
      sub_23875ABD0();
      v98 = sub_238757FA0();
      (*(*(v98 - 8) + 48))(v97, 1, v98);
      v99 = sub_23875EA80();
      v101 = v100;
      sub_238439884(v97, &qword_27DF0FD58, &unk_238774490);
      *(v87 + 88) = v99;
      *(v87 + 96) = v101;
      *(v87 + 104) = sub_23875EA50();
      v102 = [v86 recipientAddress];
      if (v102)
      {
        v103 = v102;
        v104 = sub_23875EA80();
        v106 = v105;
      }

      else
      {
        v104 = sub_23875EA80();
        v106 = v107;
      }

      *(v87 + 112) = v104;
      *(v87 + 120) = v106;
      *(v87 + 128) = sub_23875EA50();
      v108 = [v86 carrierName];
      if (v108)
      {
        v109 = v108;
        v110 = sub_23875EA80();
        v112 = v111;
      }

      else
      {
        v110 = 0;
        v112 = 0;
      }

      v113 = sub_2385C0B98(v110, v112);
      v115 = v114;

      *(v87 + 136) = v113;
      *(v87 + 144) = v115;
      *(v87 + 152) = sub_23875EA50();
      *(v87 + 160) = sub_2385B9FC0();
      *(v87 + 168) = v116;
      v117 = sub_23854BB54(v87);
      swift_setDeallocating();
      swift_arrayDestroy();
      v118 = sub_23862110C(v117);

      v202[0] = v118;
      v119 = v178;
      sub_23875ABB0();
      v120 = v179;
      sub_23843981C(v119, v179, &qword_27DF0FD50, &unk_2387774D0);
      v121 = v180;
      if ((*v163)(v120, 1, v180) == 1)
      {
        sub_238439884(v119, &qword_27DF0FD50, &unk_2387774D0);
        v122 = 0;
        v123 = 0;
      }

      else
      {
        v124 = v158;
        (*v157)(v158, v120, v121);
        v125 = v189;
        sub_23875BDB0();
        v126 = v181;
        sub_23875BE30();
        v127 = v192;
        MEMORY[0x23EE5CA40](v125, v126);
        (*v162)(v126, v182);
        v175(v125, v190);
        v122 = sub_23844C544(v127);
        v123 = v128;
        v187(v127, v193);
        (*v156)(v124, v121);
        sub_238439884(v119, &qword_27DF0FD50, &unk_2387774D0);
      }

      v129 = v185;
      v130 = v183;
      v131 = v196;
      v132 = sub_23875EA50();
      sub_2386C41A8(v122, v123, v132);
      sub_23875ABC0();
      v133 = v184;
      sub_23843981C(v130, v184, &qword_27DF0FAF8, &unk_238774480);
      if ((*v161)(v133, 1, v129) == 1)
      {
        sub_238439884(v130, &qword_27DF0FAF8, &unk_238774480);
        v134 = 0;
        v135 = 0;
      }

      else
      {
        v136 = v159;
        (*v155)(v159, v133, v129);
        v137 = v189;
        sub_23875BDB0();
        v138 = v181;
        sub_23875BE30();
        v139 = v192;
        MEMORY[0x23EE5CA60](v137, v138);
        (*v162)(v138, v182);
        v175(v137, v190);
        v134 = sub_23844C544(v139);
        v135 = v140;
        v187(v139, v193);
        (*v154)(v136, v129);
        sub_238439884(v130, &qword_27DF0FAF8, &unk_238774480);
      }

      v141 = sub_23875EA50();
      sub_2386C41A8(v134, v135, v141);
      v142 = v202[0];
      v143 = v186;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v201 = v143;
      sub_2385C33E4(v142, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v201);

      v145 = v201;
      if (v131)
      {
        goto LABEL_53;
      }

      v84 = v197;
      v146 = swift_isUniquelyReferenced_nonNull_native();
      v147 = v198;
      if ((v146 & 1) == 0)
      {
        v84 = sub_2384989EC(0, v84[2] + 1, 1, v84);
      }

      v149 = v84[2];
      v148 = v84[3];
      if (v149 >= v148 >> 1)
      {
        v84 = sub_2384989EC((v148 > 1), v149 + 1, 1, v84);
      }

      v83 = v147 + 1;

      v84[2] = v149 + 1;
      v84[v149 + 4] = v145;
      v81 = v173;
      if (v172 == v83)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:

  __break(1u);
}

uint64_t sub_2385C30DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385C314C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2385C31B4()
{
  v1 = *(type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2385C19B8(v2);
}

unint64_t sub_2385C3234()
{
  result = qword_27DF0FD40;
  if (!qword_27DF0FD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FD38, &qword_238774448);
    sub_2385C3320(&qword_27DF0FD48, type metadata accessor for ExtractedOrderActionsMenu, &unk_238765550);
    sub_2385C3320(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FD40);
  }

  return result;
}

uint64_t sub_2385C3320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2385C3368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2385C33E4(uint64_t a1, void (*a2)(void *__return_ptr, void *, __n128), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v43 = a5;
  v44 = v7;
  v42 = v11;
  while (v10)
  {
    v49 = a4;
    v17 = v12;
LABEL_14:
    v19 = __clz(__rbit64(v10)) | (v17 << 6);
    v20 = *(*(a1 + 48) + 8 * v19);
    v21 = (*(a1 + 56) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    v48[0] = v20;
    v48[1] = v22;
    v48[2] = v23;
    v24 = v20;

    (a2)(v47, v48);

    v25 = v47[0];
    v26 = v47[1];
    v27 = v47[2];
    v28 = *a5;
    v30 = sub_2385477FC();
    v31 = *(v28 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    if (*(v28 + 24) >= v33)
    {
      if ((v49 & 1) == 0)
      {
        sub_23854A0B4();
      }
    }

    else
    {
      sub_2385483BC(v33, v49 & 1);
      v35 = sub_2385477FC();
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_27;
      }

      v30 = v35;
    }

    v10 &= v10 - 1;
    v37 = *a5;
    if (v34)
    {
      v13 = (v37[7] + 16 * v30);
      v15 = *v13;
      v14 = v13[1];

      v16 = (v37[7] + 16 * v30);
      *v16 = v15;
      v16[1] = v14;
    }

    else
    {
      v37[(v30 >> 6) + 8] |= 1 << v30;
      *(v37[6] + 8 * v30) = v25;
      v38 = (v37[7] + 16 * v30);
      *v38 = v26;
      v38[1] = v27;
      v39 = v37[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_26;
      }

      v37[2] = v41;
    }

    a4 = 1;
    v12 = v17;
    a5 = v43;
    v7 = v44;
    v11 = v42;
  }

  v18 = v12;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v11)
    {
      sub_238434840(a1);

      return;
    }

    v10 = *(v7 + 8 * v17);
    ++v18;
    if (v10)
    {
      v49 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  type metadata accessor for PKAnalyticsKey(0);
  sub_23875F680();
  __break(1u);
}

void sub_2385C36AC(uint64_t a1)
{
  type metadata accessor for ExtractedOrderDetails.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2385C3738(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385C3738(uint64_t a1)
{
  if (!qword_27DF0FD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AF18, &qword_238767530);
    v1 = sub_23875ECC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0FD80);
    }
  }
}

unint64_t sub_2385C379C()
{
  result = qword_27DF0FD88;
  if (!qword_27DF0FD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FD90, &qword_2387744D0);
    sub_23843A3E8(&qword_27DF0FD98, &qword_27DF0FDA0, qword_2387744D8, &unk_238769810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FD88);
  }

  return result;
}

void *sub_2385C384C(uint64_t a1, uint64_t a2)
{
  v8 = sub_23875D1A0();
  v9 = MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_23875D1B0();
}

void *sub_2385C3944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_23875D1A0();
  v9 = MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return sub_23875D1B0();
}

uint64_t ThumbnailOptions.ColorScheme.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875C450();
  v16 = *(v4 - 8);
  v5 = (*(v16 + 88))(a1, v4);
  if (v5 == *MEMORY[0x277CDF3D0])
  {
    v6 = *MEMORY[0x277CC7120];
    v7 = sub_238758960();
    v8 = *(*(v7 - 8) + 104);
    v9 = v7;
    v10 = a2;
    v11 = v6;
LABEL_5:

    return v8(v10, v11, v9);
  }

  v12 = v5;
  v13 = *MEMORY[0x277CDF3C0];
  v9 = sub_238758960();
  v8 = *(*(v9 - 8) + 104);
  if (v12 == v13)
  {
    v11 = *MEMORY[0x277CC7118];
    v10 = a2;
    goto LABEL_5;
  }

  v8(a2, *MEMORY[0x277CC7128], v9);
  v15 = *(v16 + 8);

  return v15(a1, v4);
}

uint64_t OrderImageModel.init(size:imageNames:orderVersionIdentifier:contentMode:scale:colorScheme:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v14 = *a3;
  *a7 = a8;
  *(a7 + 8) = a9;
  *(a7 + 16) = a1;
  v15 = type metadata accessor for OrderImageModel(0);
  v16 = v15[6];
  v17 = sub_23875AF90();
  (*(*(v17 - 8) + 32))(a7 + v16, a2, v17);
  *(a7 + v15[7]) = v14;
  *(a7 + v15[8]) = a4;
  v18 = v15[9];
  v19 = sub_23875C450();
  (*(*(v19 - 8) + 32))(a7 + v18, a5, v19);
  v20 = v15[10];
  v21 = sub_23875C8A0();
  v22 = *(*(v21 - 8) + 32);

  return v22(a7 + v20, a6, v21);
}

uint64_t type metadata accessor for OrderImageModel(uint64_t a1)
{
  result = qword_27DF0FE58;
  if (!qword_27DF0FE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ThumbnailOptions.LayoutDirection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875C8A0();
  v15 = *(v4 - 8);
  v5 = (*(v15 + 88))(a1, v4);
  if (v5 == *MEMORY[0x277CDFA88])
  {
    v6 = *MEMORY[0x277CC7148];
    v7 = sub_2387589C0();
    v8 = *(*(v7 - 8) + 104);

    return v8(a2, v6, v7);
  }

  else
  {
    v10 = v5;
    v11 = *MEMORY[0x277CDFA90];
    v12 = *MEMORY[0x277CC7150];
    v13 = sub_2387589C0();
    result = (*(*(v13 - 8) + 104))(a2, v12, v13);
    if (v10 != v11)
    {
      v14 = *(v15 + 8);

      return v14(a1, v4);
    }
  }

  return result;
}

uint64_t sub_2385C3F68(uint64_t a1)
{
  v2 = sub_23875C8A0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23875CB10();
}

uint64_t sub_2385C4070(uint64_t a1)
{
  sub_23845C998(a1, v6);
  v1 = sub_23845C998(v6, &v5);
  sub_238585BE0(v1, v2, v3);
  sub_23875CDD0();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_2385C40D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23875CDB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_23843981C(v2 + *(a1 + 52), &v15 - v10, &qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C450();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_23875EFF0();
    v14 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2385C42D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23875CDB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_23843981C(v2 + *(a1 + 56), &v15 - v10, &qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C8A0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_23875EFF0();
    v14 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t OrderImage.init(imageNames:orderVersionIdentifier:contentMode:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v13 = *a3;
  v14 = type metadata accessor for OrderImage(0, a6, a7, a4);
  v15 = v14[10];
  *&a8[v15] = sub_2387588A0();
  v16 = v14[13];
  *&a8[v16] = swift_getKeyPath(byte_238774530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v17 = v14[14];
  *&a8[v17] = swift_getKeyPath(byte_238774568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  *a8 = a1;
  v18 = v14[9];
  v19 = sub_23875AF90();
  result = (*(*(v19 - 8) + 32))(&a8[v18], a2, v19);
  a8[v14[11]] = v13;
  v21 = &a8[v14[12]];
  *v21 = a4;
  *(v21 + 1) = a5;
  return result;
}

double OrderImage.body.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  (*(v2 + 32))(v6 + v5, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for OrderImageInternalContainer(255, v7, v8, v9);
  swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_23875C610();
  v11 = type metadata accessor for OrderImageModel(255);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_2385CAFDC(&qword_27DF0ECC0, type metadata accessor for OrderImageModel, &protocol conformance descriptor for OrderImageModel);
  v18 = v10;
  v19 = v11;
  v20 = WitnessTable;
  v21 = v13;
  sub_23875E270();
  swift_getWitnessTable();
  v16 = sub_23875C720();
  v17 = v14;
  sub_23875C730();
  swift_getWitnessTable();
  sub_23844EA0C();

  v16 = v18;
  v17 = v19;
  sub_23844EA0C();

  return result;
}

void sub_2385C48DC(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v63 = a4;
  v7 = type metadata accessor for OrderImageInternalContainer(0, a2, a3, a3);
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v60 = v49 - v8;
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v62 = v7;
  v56 = v10;
  v57 = WitnessTable;
  v11 = sub_23875C610();
  v58 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v55 = v49 - v12;
  v13 = type metadata accessor for OrderImageModel(255);
  v14 = swift_getWitnessTable();
  v15 = sub_2385CAFDC(&qword_27DF0ECC0, type metadata accessor for OrderImageModel, &protocol conformance descriptor for OrderImageModel);
  v59 = v11;
  v64 = v11;
  v65 = v13;
  v52 = v14;
  v66 = v14;
  v67 = v15;
  v49[2] = v15;
  v16 = sub_23875E270();
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x28223BE20](v16);
  v50 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = v49 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v49 - v24;
  sub_23875ED50();
  v49[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C630();
  v27 = v26;
  v29 = v28;
  v30 = *a1;
  v32 = type metadata accessor for OrderImage(0, a2, a3, v31);
  v49[0] = a2;
  v33 = v32;
  v34 = *(v32 + 36);
  v35 = a1;
  v36 = v13[6];
  v37 = sub_23875AF90();
  (*(*(v37 - 8) + 16))(&v25[v36], &v35[v34], v37);
  LOBYTE(v36) = v35[v33[11]];
  v38 = a3;
  v39 = *&v35[v33[10]];
  v40 = v13[9];

  sub_2385C40D0(v33, &v25[v40]);
  sub_2385C42D4(v33, &v25[v13[10]]);
  *v25 = v27;
  *(v25 + 1) = v29;
  *(v25 + 2) = v30;
  v25[v13[7]] = v36;
  *&v25[v13[8]] = v39;
  sub_23858BA48(v25, v22);
  v41 = v60;
  sub_2385C4F20(v22, *&v35[v33[12]], *&v35[v33[12] + 8], v49[0], v38, v60);

  v42 = v55;
  v43 = v62;
  sub_23875DF70();
  (*(v61 + 8))(v41, v43);
  v44 = v50;
  v45 = v59;
  sub_23875DE60();
  (*(v58 + 8))(v42, v45);
  sub_2385CA710(v25);
  v46 = v54;
  swift_getWitnessTable();
  v47 = v51;
  sub_23844EA0C();
  v48 = *(v53 + 8);
  v48(v44, v46);
  sub_23844EA0C();
  v48(v47, v46);
}

void sub_2385C4E6C(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for OrderImage(0, v4, v5, a1) - 8);
  v7 = (v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));

  sub_2385C48DC(v7, v4, v5, a2);
}

uint64_t sub_2385C4F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2385CAAA0(a1, a6);
  v12 = type metadata accessor for OrderImageInternalContainer(0, a4, a5, v11);
  v13 = (a6 + *(v12 + 36));
  *v13 = a2;
  v13[1] = a3;
  v14 = a6 + *(v12 + 40);
  result = swift_getKeyPath(byte_238774918);
  *v14 = result;
  *(v14 + 40) = 0;
  return result;
}

uint64_t OrderImageModel.ContentMode.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

void OrderImageModel.Resource.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_23875F590();

  *a3 = v4 != 0;
}

uint64_t sub_2385C50A0()
{
  sub_23875F700();
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2385C510C()
{
  sub_23875F700();
  sub_23875EB30();
  return sub_23875F760();
}

void sub_2385C515C(BOOL *a2@<X8>)
{
  v3 = sub_23875F590();

  *a2 = v3 != 0;
}

uint64_t OrderImageModel.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x23EE64220](*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x23EE64220](*&v3);
  v4 = *(v1 + 16);
  MEMORY[0x23EE641F0](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      sub_23875EB30();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  v7 = type metadata accessor for OrderImageModel(0);
  sub_23875AF90();
  sub_2385CAFDC(&qword_27DF0FDA8, MEMORY[0x277CC84E8], MEMORY[0x277CC84F0]);
  sub_23875E960();
  MEMORY[0x23EE641F0](*(v1 + *(v7 + 28)));
  MEMORY[0x23EE641F0](*(v1 + *(v7 + 32)));
  sub_23875C450();
  sub_2385CAFDC(&qword_27DF0FDB0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F0]);
  sub_23875E960();
  sub_23875C8A0();
  sub_2385CAFDC(&qword_27DF0FDB8, MEMORY[0x277CDFAA0], MEMORY[0x277CDFAA8]);
  return sub_23875E960();
}

uint64_t OrderImageModel.hashValue.getter()
{
  sub_23875F700();
  OrderImageModel.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t sub_2385C53F4()
{
  sub_23875F700();
  OrderImageModel.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t sub_2385C5438()
{
  sub_23875F700();
  OrderImageModel.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t ThumbnailOptions.ContentMode.init(contentMode:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_238758970();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277CC7140];
  if (!v3)
  {
    v6 = MEMORY[0x277CC7138];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_2385C54FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for OrderImageModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = type metadata accessor for OrderImageInternal(0, v7, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-1] - v15;
  sub_23858BA48(v2, v6);
  sub_2384D5228(v23);
  v17 = (v2 + *(a1 + 36));
  v18 = *v17;
  v19 = v17[1];

  sub_2385C56F8(v6, v23, v18, v19, v7, v8, v13);
  swift_getWitnessTable();
  sub_23844EA0C();
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_23844EA0C();
  return (v20)(v16, v10);
}

uint64_t sub_2385C56F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for OrderImageModel(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OrderImageInternal(0, a5, a6, v17);
  v19 = a7 + v18[13];
  *v19 = swift_getKeyPath(a0_3);
  *(v19 + 40) = 0;
  v20 = a7 + v18[14];
  *v20 = swift_getKeyPath(byte_2387748E8);
  *(v20 + 8) = 0;
  sub_23858BA48(a1, a7);
  sub_23845C998(a2, a7 + v18[9]);
  v21 = (a7 + v18[10]);
  *v21 = a3;
  v21[1] = a4;
  v38 = a1;
  sub_23858BA48(a1, v16);
  sub_23845C998(a2, v39);
  v22 = v40;
  v23 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v24 = *(v23 + 24);

  v25 = v24(v16, v22, v23);
  if (v25)
  {
    v26 = v25;
    v27 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v25 scale:0 orientation:1.0];
  }

  else
  {
    v27 = 0;
  }

  sub_2385CA710(v16);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v28 = (a7 + v18[11]);
  *v28 = v27;
  v28[1] = 0;
  sub_23845C998(a2, v39);
  v29 = v40;
  v30 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v31 = *(v30 + 32);
  v32 = sub_2385CA76C(v27);
  v33 = v31(v32, v29, v30);
  if (v33)
  {
    v34 = v33;
    v35 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v33 scale:0 orientation:1.0];

    sub_2385CA77C(v27);
  }

  else
  {

    sub_2385CA77C(v27);
    v35 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_2385CA710(v38);
  result = __swift_destroy_boxed_opaque_existential_1(v39);
  v37 = (a7 + v18[12]);
  *v37 = v35;
  v37[1] = 0;
  return result;
}

uint64_t _s12FinanceKitUI15OrderImageModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((sub_238518C1C(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for OrderImageModel(0);
  if ((MEMORY[0x23EE5FA60](a1 + v5[6], a2 + v5[6]) & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]) || *(a1 + v5[8]) != *(a2 + v5[8]) || (sub_23875C440() & 1) == 0)
  {
    return 0;
  }

  return sub_23875C890();
}

BOOL sub_2385C5A70(uint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return v2 == 0;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_238449184(0, &qword_27DF10008, 0x277D82BB8);
  return sub_23875F1B0() & 1;
}

uint64_t sub_2385C5AF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFC8, &qword_238774A38);
  v3 = *(a1 + 16);
  sub_23875D1C0();
  sub_23875D1C0();
  sub_23875D6E0();
  sub_23875C8C0();
  sub_23875C6E0();
  sub_23875C8C0();
  sub_23875C8C0();
  v4 = sub_2385CADE4();
  v5 = *(a1 + 24);
  v27 = v4;
  v28 = v5;
  WitnessTable = swift_getWitnessTable();
  v26 = MEMORY[0x277CE0F70];
  v23 = swift_getWitnessTable();
  v24 = sub_2385CAFDC(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v21 = swift_getWitnessTable();
  v22 = sub_2385CAFDC(&qword_27DF08DC8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  v19 = swift_getWitnessTable();
  v20 = v22;
  swift_getWitnessTable();
  v6 = sub_23875E2C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v15[-v11];
  v16 = v3;
  v17 = v5;
  v18 = v1;
  sub_23875D020();
  sub_23875E2B0();
  swift_getWitnessTable();
  sub_23844EA0C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_23844EA0C();
  return (v13)(v12, v6);
}

double sub_2385C5E38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v73 = sub_23875ED80();
  v69 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OrderImageInternal(0, a2, a3, v8);
  v67 = *(v9 - 8);
  v72 = *(v67 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = &v49 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFC8, &qword_238774A38);
  v55 = sub_23875D1C0();
  v11 = sub_23875D1C0();
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  sub_23875D6E0();
  v14 = sub_23875C8C0();
  v58 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  sub_23875C6E0();
  v57 = v14;
  v17 = sub_23875C8C0();
  v62 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v71 = &v49 - v18;
  v63 = v19;
  v20 = sub_23875C8C0();
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x28223BE20](v20);
  v60 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v61 = &v49 - v23;
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385C6694(v9, v13);
  v82 = sub_2385CADE4();
  v83 = a3;
  WitnessTable = swift_getWitnessTable();
  v81 = MEMORY[0x277CE0F70];
  v24 = v9;
  v25 = swift_getWitnessTable();
  v53 = v16;
  sub_23875DBF0();
  (*(v56 + 8))(v13, v11);
  v26 = a3;
  v54 = a3;
  v27 = v67;
  v56 = *(v67 + 16);
  v28 = v66;
  v29 = v24;
  v50 = v24;
  (v56)(v66, a1, v24);
  v30 = *(v27 + 80);
  v52 = a1;
  v31 = (v30 + 32) & ~v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = v26;
  v55 = a2;
  v67 = *(v27 + 32);
  (v67)(v32 + v31, v28, v29);
  v33 = sub_2385CAFDC(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v78 = v25;
  v79 = v33;
  v51 = MEMORY[0x277CDFAD8];
  v34 = v57;
  v49 = swift_getWitnessTable();
  v35 = v68;
  sub_23875ED60();
  v36 = v53;
  sub_23875DE90();

  v69 = *(v69 + 8);
  (v69)(v35, v73);
  (*(v58 + 8))(v36, v34);
  v37 = v50;
  (v56)(v28, v52, v50);
  v38 = swift_allocObject();
  v39 = v54;
  *(v38 + 16) = v55;
  *(v38 + 24) = v39;
  (v67)(v38 + v31, v28, v37);
  v40 = sub_2385CAFDC(&qword_27DF08DC8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  v76 = v49;
  v77 = v40;
  v41 = v63;
  v42 = swift_getWitnessTable();
  sub_23875ED60();
  v43 = v60;
  v44 = v71;
  sub_23875DE90();

  (v69)(v35, v73);
  (*(v62 + 8))(v44, v41);
  v74 = v42;
  v75 = v40;
  v45 = v65;
  swift_getWitnessTable();
  v46 = v61;
  sub_23844EA0C();
  v47 = *(v64 + 8);
  v47(v43, v45);
  sub_23844EA0C();
  v47(v46, v45);

  return result;
}

uint64_t sub_2385C6694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = *(a1 + 16);
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFC8, &qword_238774A38);
  v57 = v5;
  v11 = sub_23875D1C0();
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v55 = &v51 - v12;
  v13 = sub_23875E0E0();
  v52 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23875CDB0();
  v51 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v11;
  v60 = sub_23875D1C0();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v51 - v19;
  v20 = a1;
  v67 = *(v3 + *(a1 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10000, &qword_238774A78);
  v21 = sub_23875E1B0();
  if (!*v65)
  {
    *&v67 = sub_23875E020();
    v29 = sub_2385CADE4();
    v22 = *(a1 + 24);
    v78 = v29;
    v79 = v22;
    v30 = v61;
    swift_getWitnessTable();
    v28 = v58;
    sub_2385C3944(&v67, v30, MEMORY[0x277CE0F78]);

    goto LABEL_15;
  }

  if (*v65 != 1)
  {
    v31 = v3 + *(a1 + 56);
    v32 = *v31;
    v33 = *(v31 + 8) == 1;
    v53 = *v65;
    if (v33)
    {
      if (v32)
      {
        goto LABEL_10;
      }
    }

    else
    {

      sub_23875EFF0();
      v42 = sub_23875D730();
      sub_23875C110();

      sub_23875CDA0();
      swift_getAtKeyPath();
      sub_2384348B8(v32, 0);
      (*(v51 + 8))(v18, v16);
      if (v67 == 1)
      {
LABEL_10:
        v67 = *(v3 + *(a1 + 48));
        sub_23875E1B0();
        v43 = *v65;
        if (*v65 >= 2uLL)
        {
          *v65 = v53;
          *&v65[8] = v43;
          *&v65[16] = 0;
          LOWORD(v66) = 257;
          BYTE2(v66) = 0;
          v45 = v53;
        }

        else
        {
          v44 = sub_23875E020();
          *&v65[16] = 0;
          *v65 = v44;
          LOWORD(v66) = 0;
          BYTE2(v66) = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FFF0, &unk_238774A48);
        sub_2385CAEFC();
        sub_23875D1B0();
        v41 = v61;
        *v65 = v67;
        *&v65[16] = v68;
        LOWORD(v66) = v69;
        HIWORD(v66) = v70 != 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FFE0, &qword_238774A40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A160, &unk_23876F200);
        sub_2385CAE70();
        sub_238464BD4();
        sub_23875D1B0();
        v37 = v67;
        v38 = v68;
        v39 = v69 | (v70 << 16);
        v40 = v71;
        goto LABEL_14;
      }
    }

    v34 = v53;
    sub_23875E0C0();
    v35 = v52;
    (*(v52 + 104))(v15, *MEMORY[0x277CE0FE0], v13);
    v36 = sub_23875E150();

    (*(v35 + 8))(v15, v13);
    *v65 = v36;
    *&v65[8] = xmmword_238774510;
    v66 = 0x1000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FFE0, &qword_238774A40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A160, &unk_23876F200);
    sub_2385CAE70();
    sub_238464BD4();
    sub_23875D1B0();
    v37 = v67;
    v38 = v68;
    v39 = v69 | (v70 << 16);
    v40 = v71;
    v41 = v61;
LABEL_14:
    v67 = v37;
    v68 = v38;
    v69 = v39;
    v70 = BYTE2(v39);
    v71 = v40;
    v46 = v37;
    sub_2385CB834(v37, *(&v37 + 1), v38, v39, v40);
    v47 = sub_2385CADE4();
    v22 = *(v20 + 24);
    v48 = v55;
    sub_2385C384C(&v67, v54);
    v63 = v47;
    v64 = v22;
    swift_getWitnessTable();
    v28 = v58;
    sub_2385C384C(v48, v41);
    sub_2385CB890(v46, *(&v46 + 1), v38, v39, v40);
    sub_2385CB890(v46, *(&v46 + 1), v38, v39, v40);
    sub_2385CA77C(v53);
    (*(v56 + 8))(v48, v41);
    goto LABEL_15;
  }

  (*(v3 + *(a1 + 40)))(v21);
  v22 = *(a1 + 24);
  v23 = v57;
  sub_23844EA0C();
  v24 = v53[1];
  v24(v7, v23);
  sub_23844EA0C();
  v25 = sub_2385CADE4();
  v26 = v55;
  sub_2385C3944(v7, v54, v23);
  v72 = v25;
  v73 = v22;
  v27 = v61;
  swift_getWitnessTable();
  v28 = v58;
  sub_2385C384C(v26, v27);
  (*(v56 + 8))(v26, v27);
  v24(v7, v23);
  v24(v10, v23);
LABEL_15:
  v49 = v60;
  v76 = sub_2385CADE4();
  v77 = v22;
  WitnessTable = swift_getWitnessTable();
  v75 = MEMORY[0x277CE0F70];
  swift_getWitnessTable();
  sub_23844EA0C();
  return (*(v59 + 8))(v28, v49);
}

uint64_t sub_2385C7068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  sub_23875ED50();
  v3[14] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x2822009F8](sub_2385C7104, v5, v4);
}

uint64_t sub_2385C7104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[11];
  v6 = type metadata accessor for OrderImageInternal(0, v4[12], v4[13], a4);
  v7 = (v5 + *(v6 + 44));
  v8 = *v7;
  v4[17] = *v7;
  v9 = v7[1];
  v4[2] = v8;
  v4[18] = v9;
  v4[3] = v9;
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10000, &qword_238774A78);
  sub_23875E1B0();
  v10 = v4[8];
  if (v10)
  {

    if (v10 != 1)
    {
      sub_2385CA77C(v10);
    }

    v13 = v4[1];

    return v13();
  }

  else
  {
    v11 = swift_task_alloc();
    v4[20] = v11;
    *v11 = v4;
    v11[1] = sub_2385C724C;

    return sub_2385C7374(v6);
  }
}

uint64_t sub_2385C724C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return MEMORY[0x2822009F8](sub_2385CBA00, v4, v3);
}

uint64_t sub_2385C7374(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(a1 - 8);
  v2[10] = v3;
  v2[11] = *(v3 + 64);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v2[13] = swift_task_alloc();
  v4 = sub_23875C8A0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_2387589C0();
  v2[17] = v5;
  v6 = *(v5 - 8);
  v2[18] = v6;
  v2[19] = *(v6 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = sub_23875C450();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v8 = sub_238758960();
  v2[26] = v8;
  v9 = *(v8 - 8);
  v2[27] = v9;
  v2[28] = *(v9 + 64);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v10 = sub_238758970();
  v2[32] = v10;
  v11 = *(v10 - 8);
  v2[33] = v11;
  v2[34] = *(v11 + 64);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  sub_23875ED50();
  v2[38] = sub_23875ED40();
  v13 = sub_23875ECE0();
  v2[39] = v13;
  v2[40] = v12;

  return MEMORY[0x2822009F8](sub_2385C76C4, v13, v12);
}

uint64_t sub_2385C76C4()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 72);
  v74 = v8[2];
  v9 = *v8;
  v10 = v8[1];
  v11 = type metadata accessor for OrderImageModel(0);
  if (*(v8 + v11[7]))
  {
    v12 = MEMORY[0x277CC7140];
  }

  else
  {
    v12 = MEMORY[0x277CC7138];
  }

  (*(v4 + 104))(v2, *v12, v3);
  v68 = *(v4 + 32);
  v68(v1, v2, v3);
  (*(v5 + 16))(v6, v8 + v11[9], v7);
  v13 = (*(v5 + 88))(v6, v7);
  if (v13 == *MEMORY[0x277CDF3D0])
  {
    (*(*(v0 + 216) + 104))(*(v0 + 240), *MEMORY[0x277CC7120], *(v0 + 208));
  }

  else
  {
    v14 = *(v0 + 208);
    v15 = *(*(v0 + 216) + 104);
    if (v13 == *MEMORY[0x277CDF3C0])
    {
      v15(*(v0 + 240), *MEMORY[0x277CC7118], v14);
    }

    else
    {
      v16 = *(v0 + 192);
      v17 = *(v0 + 200);
      v18 = *(v0 + 184);
      v15(*(v0 + 240), *MEMORY[0x277CC7128], v14);
      v19 = *(v16 + 8);

      v19(v17, v18);
    }
  }

  v20 = *(v0 + 120);
  v21 = *(v0 + 128);
  v22 = *(v0 + 112);
  v23 = *(v0 + 72);
  v67 = *(*(v0 + 216) + 32);
  v67(*(v0 + 248), *(v0 + 240), *(v0 + 208));
  (*(v20 + 16))(v21, v23 + v11[10], v22);
  v24 = (*(v20 + 88))(v21, v22);
  v25 = *(v0 + 168);
  v26 = *(v0 + 136);
  v27 = *(v0 + 144);
  v63 = v11;
  if (v24 == *MEMORY[0x277CDFA88])
  {
    (*(v27 + 104))(v25, *MEMORY[0x277CC7148], v26);
  }

  else
  {
    v28 = *MEMORY[0x277CDFA90];
    (*(v27 + 104))(v25, *MEMORY[0x277CC7150], v26);
    if (v24 != v28)
    {
      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    }
  }

  v56 = *(v0 + 296);
  v73 = *(v0 + 280);
  v62 = *(v0 + 272);
  v29 = *(v0 + 264);
  v72 = *(v0 + 256);
  v54 = *(v0 + 248);
  v70 = *(v0 + 232);
  v30 = *(v0 + 208);
  v31 = *(v0 + 216);
  v59 = v30;
  v60 = *(v0 + 224);
  v53 = *(v0 + 176);
  v71 = *(v0 + 160);
  v61 = *(v0 + 152);
  v33 = *(v0 + 136);
  v32 = *(v0 + 144);
  v35 = *(v0 + 96);
  v34 = *(v0 + 104);
  v58 = v33;
  v57 = *(v0 + 88);
  v69 = *(v0 + 80);
  v36 = *(v0 + 64);
  v37 = *(v0 + 72);
  v66 = *(v32 + 32);
  v66();
  v38 = *(v37 + v63[8]);
  v64 = *(v36 + 36);
  v65 = v34;
  v55 = v36;
  sub_23875ED60();
  v39 = sub_23875ED80();
  (*(*(v39 - 8) + 56))(v34, 0, 1, v39);
  (*(v69 + 16))(v35, v37, v36);
  (*(v31 + 16))(v70, v54, v30);
  (*(v29 + 16))(v73, v56, v72);
  (*(v32 + 16))(v71, v53, v33);
  sub_23845C998(v37 + v64, v0 + 16);
  v40 = (*(v69 + 80) + 48) & ~*(v69 + 80);
  v41 = (v57 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v31 + 80) + v43 + 8) & ~*(v31 + 80);
  v45 = (v60 + *(v29 + 80) + v44) & ~*(v29 + 80);
  v46 = (v62 + *(v32 + 80) + v45) & ~*(v32 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  *(v47 + 4) = *(v55 + 16);
  *(v47 + 5) = *(v55 + 24);
  (*(v69 + 32))(&v47[v40], v35);
  *&v47[v41] = v74;
  v48 = &v47[v42];
  *v48 = v9;
  *(v48 + 1) = v10;
  *&v47[v43] = v38;
  v67(&v47[v44], v70, v59);
  v68(&v47[v45], v73, v72);
  (v66)(&v47[v46], v71, v58);
  sub_2384D5830((v0 + 16), &v47[(v61 + v46 + 7) & 0xFFFFFFFFFFFFFFF8]);
  v49 = sub_2385C9244(0, 0, v65, &unk_238774AA0, v47);
  *(v0 + 328) = v49;
  sub_238439884(v65, &unk_27DF09920, &qword_238764D80);
  v50 = swift_task_alloc();
  *(v0 + 336) = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  *v50 = v0;
  v50[1] = sub_2385C7D28;

  return MEMORY[0x282200460](v0 + 56, v49, v51);
}

uint64_t sub_2385C7D28()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return MEMORY[0x2822009F8](sub_2385C7E6C, v3, v2);
}

uint64_t sub_2385C7E6C()
{
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[22];
  v9 = v0[17];
  v8 = v0[18];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v10 = v0[7];

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_2385C7FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  sub_23875ED50();
  v3[14] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x2822009F8](sub_2385C8080, v5, v4);
}

uint64_t sub_2385C8080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[11];
  v6 = type metadata accessor for OrderImageInternal(0, v4[12], v4[13], a4);
  v7 = (v5 + *(v6 + 48));
  v8 = *v7;
  v4[17] = *v7;
  v9 = v7[1];
  v4[2] = v8;
  v4[18] = v9;
  v4[3] = v9;
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10000, &qword_238774A78);
  sub_23875E1B0();
  v10 = v4[8];
  if (v10)
  {

    if (v10 != 1)
    {
      sub_2385CA77C(v10);
    }

    v13 = v4[1];

    return v13();
  }

  else
  {
    v11 = swift_task_alloc();
    v4[20] = v11;
    *v11 = v4;
    v11[1] = sub_2385C81C8;

    return sub_2385C8398(v6);
  }
}

uint64_t sub_2385C81C8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return MEMORY[0x2822009F8](sub_2385C82F0, v4, v3);
}

uint64_t sub_2385C82F0()
{
  v1 = *(v0 + 168);

  if (v1)
  {
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 48) = *(v0 + 136);
  }

  else
  {
    *(v0 + 32) = *(v0 + 136);
    *(v0 + 72) = 1;
  }

  sub_23875E1C0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2385C8398(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23875CDB0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_23875ED50();
  v2[7] = sub_23875ED40();
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2385C848C, v5, v4);
}

uint64_t sub_2385C848C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = v2 + *(v1 + 56);
  v4 = *v3;
  if (*(v3 + 8) == 1)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);

    sub_23875EFF0();
    v8 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v4, 0);
    (*(v6 + 8))(v5, v7);
    if (*(v0 + 64) != 1)
    {
      goto LABEL_11;
    }
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  if (v11)
  {
    v12 = [v11 CGImage];
    if (v12)
    {
      v13 = v12;
      v14 = (*(v0 + 24) + *(*(v0 + 16) + 36));
      v15 = v14[4];
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      (*(v15 + 16))(v13);
      v16 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v13 scale:0 orientation:1.0];

      goto LABEL_12;
    }
  }

LABEL_11:
  v16 = 0;
LABEL_12:

  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_2385C86F0(uint64_t a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 144) = v20;
  *(v11 + 128) = v19;
  *(v11 + 112) = a10;
  *(v11 + 120) = a11;
  *(v11 + 104) = a9;
  *(v11 + 88) = a3;
  *(v11 + 96) = a4;
  *(v11 + 80) = a2;
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;
  *(v11 + 56) = a1;
  v12 = sub_23875C1E0();
  *(v11 + 152) = v12;
  *(v11 + 160) = *(v12 - 8);
  *(v11 + 168) = swift_task_alloc();
  *(v11 + 176) = swift_task_alloc();
  v13 = sub_2387589C0();
  *(v11 + 184) = v13;
  *(v11 + 192) = *(v13 - 8);
  *(v11 + 200) = swift_task_alloc();
  v14 = sub_238758970();
  *(v11 + 208) = v14;
  *(v11 + 216) = *(v14 - 8);
  *(v11 + 224) = swift_task_alloc();
  v15 = sub_238758960();
  *(v11 + 232) = v15;
  *(v11 + 240) = *(v15 - 8);
  *(v11 + 248) = swift_task_alloc();
  sub_2387589A0();
  *(v11 + 256) = swift_task_alloc();
  v16 = sub_2387589D0();
  *(v11 + 264) = v16;
  *(v11 + 272) = *(v16 - 8);
  *(v11 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2385C8980, 0, 0);
}

uint64_t sub_2385C8980()
{
  sub_23875ED50();
  *(v0 + 288) = sub_23875ED40();
  v2 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2385C8A14, v2, v1);
}

uint64_t sub_2385C8A14()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  type metadata accessor for OrderImageInternal(0, v1, v2, v3);
  sub_2384D55B0(v0 + 16);

  return MEMORY[0x2822009F8](sub_2385C8AAC, 0, 0);
}

uint64_t sub_2385C8AAC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_2385C8BD8;
  v4 = v0[9];

  return v6(v4, v1, v2);
}

uint64_t sub_2385C8BD8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v4 = sub_2385C906C;
  }

  else
  {
    v4 = sub_2385C8CEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2385C8CEC()
{
  v1 = *(v0 + 304);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v1)
  {
    v31 = *(v0 + 312);
    v2 = *(v0 + 248);
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = *(v0 + 200);
    v28 = *(v0 + 208);
    v8 = *(v0 + 192);
    v30 = *(v0 + 184);
    v9 = *(v0 + 112);
    v29 = *(v0 + 120);
    v10 = *(v0 + 104);
    sub_238758990();
    (*(v3 + 16))(v2, v10, v4);
    (*(v6 + 16))(v5, v9, v28);
    (*(v8 + 16))(v7, v29, v30);
    sub_2387589B0();
    v11 = sub_238758950();
    v13 = *(v0 + 272);
    v12 = *(v0 + 280);
    v14 = *(v0 + 264);
    if (v31)
    {
      (*(v13 + 8))(v12, v14);

      sub_23875C180();
      v15 = v31;
      v16 = sub_23875C1B0();
      v17 = sub_23875EFE0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        v20 = v31;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v19 = v21;
        _os_log_impl(&dword_2383F8000, v16, v17, "Error rendering image thumbnail: %@", v18, 0xCu);
        sub_238439884(v19, &qword_27DF09930, &unk_2387638C0);
        MEMORY[0x23EE64DF0](v19, -1, -1);
        MEMORY[0x23EE64DF0](v18, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      v1 = 0;
    }

    else
    {
      v22 = *(v0 + 128);
      v23 = *(v0 + 64);
      (*(v13 + 8))(v12, v14);

      v24 = v22[3];
      v25 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v24);
      (*(v25 + 8))(v11, v23, v24, v25);
      v1 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v11 scale:0 orientation:1.0];
    }
  }

  **(v0 + 56) = v1;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2385C906C()
{
  v1 = *(v0 + 312);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_23875C180();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 312);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v3, v4, "Error loading image thumbnail: %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
  **(v0 + 56) = 0;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2385C9244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23843981C(a3, v25 - v10, &unk_27DF09920, &qword_238764D80);
  v12 = sub_23875ED80();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238439884(v11, &unk_27DF09920, &qword_238764D80);
  }

  else
  {
    sub_23875ED70();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23875ECE0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23875EB00() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_2385C951C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image;
  v7 = *(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image);
  *(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image) = a3;
  v8 = a3;

  [*(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_baseImageView) setImage_];
  [*(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_filteredImageView) setImage_];
  v9 = *(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette);
  *(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette) = a4;
  v10 = a4;

  v11 = *(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_maskImageView);

  return [v11 setImage_];
}

id sub_2385C95E0(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image;
  *&v2[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image] = 0;
  v6 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette;
  *&v2[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette] = 0;
  v7 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_baseImageView;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v8 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_filteredImageView;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v9 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_maskImageView;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v10 = *&v2[v5];
  *&v2[v5] = a1;
  v11 = a1;

  v12 = *&v2[v6];
  *&v2[v6] = a2;
  v13 = a2;

  v16.receiver = v2;
  v16.super_class = type metadata accessor for OrderImageFilterView.ImageView();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2385C98C4();

  return v14;
}

id sub_2385C970C(void *a1)
{
  v3 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image;
  *&v1[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image] = 0;
  v4 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette;
  *&v1[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette] = 0;
  v5 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_baseImageView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v6 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_filteredImageView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v7 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_maskImageView;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v8 = *&v1[v3];
  *&v1[v3] = 0;

  v9 = *&v1[v4];
  *&v1[v4] = 0;

  v14.receiver = v1;
  v14.super_class = type metadata accessor for OrderImageFilterView.ImageView();
  v10 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    sub_2385C98C4();
  }

  return v11;
}

id sub_2385C98C4()
{
  v1 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_baseImageView];
  [v1 setContentMode_];
  v2 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image;
  [v1 setImage_];
  [v1 setClipsToBounds_];
  v3 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_filteredImageView];
  [v3 setContentMode_];
  [v3 setImage_];
  [v3 setClipsToBounds_];
  v4 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_maskImageView];
  [v4 setContentMode_];
  [v4 setImage_];
  v5 = [v3 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2387632F0;
  v7 = sub_2385CA7E0();
  *(v6 + 56) = sub_238449184(0, &qword_27DF0FF18, 0x277CD9EA0);
  *(v6 + 32) = v7;
  v8 = sub_23875EC60();

  [v5 setFilters_];

  [v3 setMaskView_];
  [v0 addSubview_];

  return [v0 addSubview_];
}

id sub_2385C9AAC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for OrderImageFilterView.ImageView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_baseImageView];
  [v0 frame];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_filteredImageView];
  [v0 frame];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_maskImageView];
  [v0 frame];
  return [v3 setFrame_];
}

id sub_2385C9CAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrderImageFilterView.ImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2385C9D60()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(type metadata accessor for OrderImageFilterView.ImageView());
  v4 = v2;
  v5 = v1;
  return sub_2385C95E0(v1, v2);
}

uint64_t sub_2385C9DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385CB9AC(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2385C9E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385CB9AC(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2385C9E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2385CB9AC(a1, a2, a3);
  sub_23875D120();
  __break(1u);
}

void *sub_2385C9EAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_2385CA78C(a2, a3, a4);
  result = sub_23875CDC0();
  *a1 = v6;
  return result;
}

uint64_t sub_2385C9F48(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_2385CA03C;

  return v5(v2 + 16);
}

uint64_t sub_2385CA03C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_2385CA1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0FDC0;
  if (!qword_27DF0FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FDC0);
  }

  return result;
}

unint64_t sub_2385CA20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0FDC8;
  if (!qword_27DF0FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FDC8);
  }

  return result;
}

void sub_2385CA2A8(uint64_t a1)
{
  sub_2385CAD28(319, &qword_2814F08B0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23875AF90();
    if (v2 <= 0x3F)
    {
      sub_23846D0DC();
      if (v3 <= 0x3F)
      {
        sub_2385CA410(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
        if (v4 <= 0x3F)
        {
          sub_2385CA410(319, &qword_27DF0B940, MEMORY[0x277CDFAA0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2385CA410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2385CA48C(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_2385CAD28(319, &qword_2814F08B0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23875AF90();
      if (v3 <= 0x3F)
      {
        sub_23875C450();
        if (v4 <= 0x3F)
        {
          sub_23875C8A0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2385CA5D8(uint64_t a1)
{
  type metadata accessor for OrderImageModel(319);
  if (v1 <= 0x3F)
  {
    sub_23846D0DC();
    if (v2 <= 0x3F)
    {
      sub_2385CACD4(319, &qword_27DF0B948, &qword_27DF0B950, qword_2387747F0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2385CA710(uint64_t a1)
{
  v2 = type metadata accessor for OrderImageModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2385CA76C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_2385CA77C(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_2385CA78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0FF10;
  if (!qword_27DF0FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FF10);
  }

  return result;
}

id sub_2385CA7E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_238763310;
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = sub_238449184(0, &qword_27DF0B0A0, 0x277CCABB0);
  *(v1 + 56) = v3;
  *(v1 + 32) = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v1 + 88) = v3;
  *(v1 + 64) = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v1 + 120) = v3;
  *(v1 + 96) = v5;
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v1 + 152) = v3;
  *(v1 + 128) = v6;
  v7 = objc_allocWithZone(MEMORY[0x277CBEA60]);
  v8 = sub_23875EC60();

  v9 = [v7 initWithArray_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D0, &unk_2387713A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  *(inited + 32) = sub_23875EA80();
  *(inited + 40) = v11;
  v12 = sub_238449184(0, qword_27DF0FF20, 0x277CBEA60);
  *(inited + 72) = v12;
  *(inited + 48) = v9;
  *(inited + 80) = sub_23875EA80();
  *(inited + 88) = v13;
  *(inited + 120) = v12;
  *(inited + 96) = v9;
  *(inited + 128) = sub_23875EA80();
  *(inited + 136) = v14;
  *(inited + 168) = v12;
  *(inited + 144) = v9;
  v15 = v9;
  sub_23853BB18(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D8, &qword_238766B00);
  swift_arrayDestroy();
  v16 = sub_23875E910();

  [v0 setValuesForKeysWithDictionary_];

  return v0;
}

uint64_t sub_2385CAAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderImageModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2385CAB04(uint64_t a1)
{
  type metadata accessor for OrderImageModel(319);
  if (v1 <= 0x3F)
  {
    sub_2385CAC70();
    if (v2 <= 0x3F)
    {
      sub_23846D0DC();
      if (v3 <= 0x3F)
      {
        sub_2385CAD28(319, &qword_27DF0FFB0, &type metadata for OrderImageState, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2385CACD4(319, &qword_27DF0FFB8, &qword_27DF0FFC0, qword_238774958);
          if (v5 <= 0x3F)
          {
            sub_2385CAD28(319, &qword_2814F09A0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2385CAC70()
{
  result = qword_27DF0FFA8;
  if (!qword_27DF0FFA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DF0FFA8);
  }

  return result;
}

void sub_2385CACD4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23875C470();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2385CAD28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI15OrderImageStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2385CADE4()
{
  result = qword_27DF0FFD0;
  if (!qword_27DF0FFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFC8, &qword_238774A38);
    sub_2385CAE70();
    sub_238464BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FFD0);
  }

  return result;
}

unint64_t sub_2385CAE70()
{
  result = qword_27DF0FFD8;
  if (!qword_27DF0FFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFE0, &qword_238774A40);
    sub_2385CAEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FFD8);
  }

  return result;
}

unint64_t sub_2385CAEFC()
{
  result = qword_27DF0FFE8;
  if (!qword_27DF0FFE8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFF0, &unk_238774A48);
    sub_2385CAF88(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FFE8);
  }

  return result;
}

unint64_t sub_2385CAF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0FFF8;
  if (!qword_27DF0FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FFF8);
  }

  return result;
}

uint64_t sub_2385CAFDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2385CB030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for OrderImageInternal(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_238449A7C;

  return sub_2385C7068(v4 + v9, v6, v7);
}

uint64_t objectdestroy_67Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OrderImageInternal(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v4 + v7;

  v10 = type metadata accessor for OrderImageModel(0);
  v11 = v10[6];
  v12 = sub_23875AF90();
  (*(*(v12 - 8) + 8))(v4 + v7 + v11, v12);
  v13 = v10[9];
  v14 = sub_23875C450();
  (*(*(v14 - 8) + 8))(v4 + v7 + v13, v14);
  v15 = v10[10];
  v16 = sub_23875C8A0();
  (*(*(v16 - 8) + 8))(v4 + v7 + v15, v16);
  __swift_destroy_boxed_opaque_existential_1((v4 + v7 + v5[9]));

  v17 = *(v4 + v7 + v5[11]);
  if (v17 >= 2)
  {
  }

  v18 = *(v9 + v5[12]);
  if (v18 >= 2)
  {
  }

  v19 = v9 + v5[13];
  if (*(v19 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
  }

  sub_2384348B8(*(v9 + v5[14]), *(v9 + v5[14] + 8));

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_2385CB324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for OrderImageInternal(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_238449A7C;

  return sub_2385C7FE4(v4 + v9, v6, v7);
}

uint64_t sub_2385CB40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(type metadata accessor for OrderImageInternal(0, v4[4], v4[5], a4) - 8);
  v27 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v8 = (*(v7 + 64) + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_238758960() - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_238758970() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v14 + 64);
  v17 = *(sub_2387589C0() - 8);
  v18 = (v15 + v16 + *(v17 + 80)) & ~*(v17 + 80);
  v19 = v4[2];
  v20 = v4[3];
  v21 = *(v4 + v8);
  v22 = *(v4 + v9);
  v23 = *(v4 + v9 + 8);
  v24 = *(v4 + v10);
  v25 = swift_task_alloc();
  *(v6 + 16) = v25;
  *v25 = v6;
  v25[1] = sub_2384494A4;

  return sub_2385C86F0(a1, v22, v23, v24, v19, v20, v4 + v27, v21, v4 + v12, v4 + v15, v4 + v18);
}

uint64_t sub_2385CB6C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238449A7C;

  return sub_2385C9F48(a1, v4);
}

uint64_t sub_2385CB77C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2384494A4;

  return sub_2385C9F48(a1, v4);
}

void sub_2385CB834(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_2385CB844(a1, a2, a3, a4, BYTE2(a4) & 1);
  }
}

void sub_2385CB844(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    v6 = a2;

    v7 = a1;
  }
}

void sub_2385CB890(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_2385CB8A0(a1, a2, a3, a4, BYTE2(a4) & 1);
  }
}

void sub_2385CB8A0(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_2385CB8EC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2385CB948(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2385CB9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF10010;
  if (!qword_27DF10010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10010);
  }

  return result;
}

uint64_t BankConnectTermsAndConditionsViewModel.__allocating_init(institution:paymentPass:flowType:bankConnectService:completionHandler:)(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v11 = swift_allocObject();
  v12 = a4[3];
  v13 = a4[4];
  v14 = a4[5];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_2385D420C(a1, a2, a3, v18, a5, v23, v11, v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v20;
}

uint64_t BankConnectTermsAndConditionsView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875E1A0();
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  sub_23875E1A0();
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  sub_23875E1A0();
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  v4 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v5 = *(v4 + 32);
  *(a2 + v5) = swift_getKeyPath(aP_7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 36);
  v7 = *MEMORY[0x277CDFA10];
  v8 = sub_23875C880();
  result = (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  *a2 = sub_238447830;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_2385CBCA4()
{
  swift_getKeyPath(a0_4);
  swift_getKeyPath(byte_2387750C8);
  sub_23875C2D0();

  return v1;
}

uint64_t BankConnectTermsAndConditionsViewModel.init(institution:paymentPass:flowType:bankConnectService:completionHandler:)(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = a4[3];
  v13 = a4[4];
  v14 = a4[5];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_2385D420C(a1, a2, a3, v18, a5, a6, v22[1], v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v20;
}

uint64_t sub_2385CBE70(const char *a1, uint64_t a2)
{
  v5 = v2;
  v6 = sub_23875C1E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C120();
  v10 = sub_23875C1B0();
  v11 = sub_23875F000();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2383F8000, v10, v11, a1, v12, 2u);
    MEMORY[0x23EE64DF0](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v13 = *(v5 + 16);
  v16 = a2;
  return v13(&v16);
}

void sub_2385CBFD4()
{
  v1 = v0;
  v2 = sub_23875A820();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23875C1E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875C120();
  v10 = sub_23875C1B0();
  v11 = sub_23875F000();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2383F8000, v10, v11, "Terms and conditions step was skipped.", v12, 2u);
    MEMORY[0x23EE64DF0](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v13 = *(v1 + 16);
  v34[0] = 2;
  v13(v34);
  if (*(v1 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType))
  {
    v14 = MEMORY[0x277D38550];
  }

  else
  {
    v14 = MEMORY[0x277D38560];
  }

  v15 = *v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v17 = sub_23867B330(v5);
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  *(inited + 40) = v17;
  *(inited + 48) = v19;
  v20 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_238763300;
  v22 = *MEMORY[0x277D383D8];
  *(v21 + 32) = *MEMORY[0x277D383D8];
  *(v21 + 40) = sub_23875EA80();
  *(v21 + 48) = v23;
  v24 = *MEMORY[0x277D38390];
  *(v21 + 56) = *MEMORY[0x277D38390];
  *(v21 + 64) = 0x776F4E746F6ELL;
  v25 = *MEMORY[0x277D384B8];
  *(v21 + 72) = 0xE600000000000000;
  *(v21 + 80) = v25;
  strcpy((v21 + 88), "bankLinkStart");
  *(v21 + 102) = -4864;
  v26 = v22;
  v27 = v24;
  v28 = v25;
  v29 = sub_23854B138(v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = v29;
  sub_2385C33E4(v20, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v34);

  v31 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385D4A74(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v32 = sub_23875E910();

  [v31 subject:v15 sendEvent:v32];
}

double sub_2385CC458()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11[-v4];
  swift_getKeyPath(a0_4, v3);
  swift_getKeyPath(byte_2387750C8);
  sub_23875C2D0();

  if ((v11[15] & 1) == 0)
  {
    v7 = sub_23875ED80();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    sub_23875ED50();

    v8 = sub_23875ED40();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v1;
    sub_2386C3BA4(0, 0, v5, &unk_2387750F0, v9);
  }

  return result;
}

uint64_t sub_2385CC5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23875ED50();
  v4[3] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2385CC664, v6, v5);
}

uint64_t sub_2385CC664()
{
  swift_getKeyPath(a0_4);
  swift_getKeyPath(byte_2387750C8);
  *(v0 + 56) = 1;

  sub_23875C2E0();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2385CC748;

  return sub_2385CCBB4();
}

uint64_t sub_2385CC748()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2385CC868, v3, v2);
}

uint64_t sub_2385CC868()
{

  sub_2385CC918();
  swift_getKeyPath(a0_4);
  swift_getKeyPath(byte_2387750C8);
  *(v0 + 57) = 0;

  sub_23875C2E0();
  v1 = *(v0 + 8);

  return v1();
}

void sub_2385CC918()
{
  v1 = sub_23875A820();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v6 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v7;
  v8 = *MEMORY[0x277D384B8];
  *(inited + 56) = *MEMORY[0x277D384B8];
  strcpy((inited + 64), "bankLinkStart");
  *(inited + 78) = -4864;
  v9 = v6;
  v10 = v8;
  *(inited + 80) = sub_23875EA50();
  sub_23875A7E0();
  v11 = sub_23867B330(v4);
  v13 = v12;
  (*(v2 + 8))(v4, v1);
  *(inited + 88) = v11;
  *(inited + 96) = v13;
  sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  if (*(v0 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType))
  {
    v14 = MEMORY[0x277D38550];
  }

  else
  {
    v14 = MEMORY[0x277D38560];
  }

  v15 = *v14;
  v16 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385D4A74(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v17 = sub_23875E910();

  [v16 subject:v15 sendEvent:v17];
}

uint64_t sub_2385CCBB4()
{
  v1[5] = v0;
  v2 = sub_23875C1E0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_23875ED50();
  v1[11] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x2822009F8](sub_2385CCCEC, v4, v3);
}

uint64_t sub_2385CCCEC()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution;
  v0[14] = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution;
  sub_238757B00();
  v4 = sub_23875A6C0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_238439884(v0[10], &qword_27DF10038, &qword_238774BF0);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[10];
    v9 = v0[5];
    sub_23875A6B0();
    (*(v5 + 8))(v8, v4);

    v10 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService;
    v0[15] = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService;
    v11 = *(v9 + v10 + 24);
    v12 = *(v9 + v10 + 32);
    __swift_project_boxed_opaque_existential_1((v9 + v10), v11);
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_2385CCEE8;

    return MEMORY[0x28211A0D0](v2 + v3, v11, v12);
  }
}

uint64_t sub_2385CCEE8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_2385CD2EC;
  }

  else
  {
    v5 = sub_2385CD024;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2385CD024()
{
  v1 = (v0[5] + v0[15]);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = sub_238757B40();
  v6 = v5;
  v0[18] = v5;
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_2385CD114;
  v8 = v0[9];

  return MEMORY[0x28211A940](v8, v4, v6, v2, v3);
}

uint64_t sub_2385CD114()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_2385CD4B0;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_2385CD230;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2385CD230()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions;
  swift_beginAccess();
  sub_2385D4E00(v1, v2 + v3);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2385CD2EC()
{
  v18 = v0;
  v1 = v0[17];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to load terms and conditions with error: %@", v5, 0xCu);
    sub_238439884(v6, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v6, -1, -1);
    MEMORY[0x23EE64DF0](v5, -1, -1);
  }

  v10 = v0[7];
  v9 = v0[8];
  v12 = v0[5];
  v11 = v0[6];

  (*(v10 + 8))(v9, v11);
  v13 = *(v12 + 16);
  v17 = v1;
  v14 = v1;
  v13(&v17);

  sub_2385D4DF0(v17);

  v15 = v0[1];

  return v15();
}

uint64_t sub_2385CD4B0()
{
  v18 = v0;

  v1 = v0[20];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to load terms and conditions with error: %@", v5, 0xCu);
    sub_238439884(v6, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v6, -1, -1);
    MEMORY[0x23EE64DF0](v5, -1, -1);
  }

  v10 = v0[7];
  v9 = v0[8];
  v12 = v0[5];
  v11 = v0[6];

  (*(v10 + 8))(v9, v11);
  v13 = *(v12 + 16);
  v17 = v1;
  v14 = v1;
  v13(&v17);

  sub_2385D4DF0(v17);

  v15 = v0[1];

  return v15();
}

uint64_t BankConnectTermsAndConditionsViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel__isLoading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution;
  v4 = sub_238757B60();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService));
  sub_238439884(v0 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions, &qword_27DF10038, &qword_238774BF0);
  return v0;
}

uint64_t BankConnectTermsAndConditionsViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel__isLoading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution;
  v4 = sub_238757B60();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService));
  sub_238439884(v0 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions, &qword_27DF10038, &qword_238774BF0);

  return swift_deallocClassInstance();
}

uint64_t sub_2385CD8A0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t sub_2385CD8E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  sub_23843981C(v1 + *(v10 + 32), v9, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C880();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t BankConnectTermsAndConditionsView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2385D4B8C(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2385D4BF4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for BankConnectTermsAndConditionsView);
  *a1 = sub_2385D4458;
  a1[1] = v7;
  return result;
}

uint64_t sub_2385CDC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v51 = a3;
  v4 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = v5;
  v44 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101A0, &qword_2387750F8);
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101A8, &qword_238775100);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101B0, &qword_238775108);
  MEMORY[0x28223BE20](v47);
  v48 = v38 - v12;
  sub_23875ED50();
  v49 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_23875D760();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101B8, &qword_238775110);
  sub_23843A3E8(&qword_27DF101C0, &qword_27DF101B8, &qword_238775110, MEMORY[0x277CE1198]);
  v14 = sub_23875C410();
  MEMORY[0x28223BE20](v14);
  sub_23875D020();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101C8, &qword_238775118);
  v40 = sub_23843A3E8(&qword_27DF101D0, &qword_27DF101A0, &qword_2387750F8, MEMORY[0x277CDD6E0]);
  v37 = sub_2385D5134();
  v15 = v43;
  sub_23875DBA0();
  (*(v6 + 8))(v8, v15);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v53 = a2;
  v59 = v16;
  v60 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v38[1] = v57;
  v42 = type metadata accessor for BankConnectTermsAndConditionsView;
  v18 = a2;
  v19 = v44;
  sub_2385D4B8C(v18, v44, type metadata accessor for BankConnectTermsAndConditionsView);
  v41 = *(v52 + 80);
  v20 = (v41 + 16) & ~v41;
  v21 = swift_allocObject();
  v52 = type metadata accessor for BankConnectTermsAndConditionsView;
  sub_2385D4BF4(v19, v21 + v20, type metadata accessor for BankConnectTermsAndConditionsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10210, &qword_238775140);
  v55 = v15;
  v56 = v39;
  v57 = v40;
  v58 = v37;
  swift_getOpaqueTypeConformance2();
  sub_2385D53A8();
  v22 = v48;
  v23 = v46;
  sub_23875DED0();

  (*(v45 + 8))(v11, v23);
  v24 = sub_23875C910();
  v25 = sub_23875D7D0();
  v26 = v22 + *(v47 + 36);
  *v26 = v24;
  *(v26 + 8) = v25;
  sub_23875C620();
  v55 = v27;
  v28 = v42;
  sub_2385D4B8C(v53, v19, v42);
  v29 = swift_allocObject();
  sub_2385D4BF4(v19, v29 + v20, v52);
  v30 = sub_2385D54DC();
  sub_2385D566C(v30, v31, v32);
  v33 = v51;
  sub_23875DF10();

  sub_238439884(v22, &qword_27DF101B0, &qword_238775108);
  sub_2385D4B8C(v53, v19, v28);
  v34 = swift_allocObject();
  sub_2385D4BF4(v19, v34 + v20, v52);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10238, &qword_238775148);
  v36 = (v33 + *(result + 36));
  *v36 = sub_2385D56C0;
  v36[1] = v34;
  v36[2] = 0;
  v36[3] = 0;
  return result;
}

double sub_2385CE310@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D030();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10288, &qword_2387751C0);
  sub_2385CE3E0(a1, a2 + *(v4 + 44));

  return result;
}

void sub_2385CE3E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10290, &qword_2387751C8);
  v143 = *(v3 - 8);
  v144 = v3;
  MEMORY[0x28223BE20](v3);
  v136 = (&v135 - v4);
  v5 = sub_23875C880();
  v140 = *(v5 - 8);
  v141 = v5;
  MEMORY[0x28223BE20](v5);
  v139 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10298, &qword_2387751D0);
  MEMORY[0x28223BE20](v7 - 8);
  v146 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v154 = &v135 - v10;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF102A0, &qword_2387751D8);
  MEMORY[0x28223BE20](v151);
  v12 = &v135 - v11;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF102A8, &qword_2387751E0);
  v13 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v15 = &v135 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF102B0, &qword_2387751E8);
  MEMORY[0x28223BE20](v16 - 8);
  v153 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v155 = &v135 - v19;
  sub_23875ED50();
  v145 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel, &protocol conformance descriptor for BankConnectTermsAndConditionsViewModel);
  v20 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_paymentPass);
  v21 = v20;

  v142 = a1;
  if (v20)
  {
    v22 = *(a1 + 64);
    v164 = *(a1 + 56);
    v165 = v22;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10240, &qword_238775150);
    sub_23875E1D0();
    v24 = v176;
    v25 = v177;
    v26 = v178;
    KeyPath = swift_getKeyPath(byte_238775208);
    v28 = type metadata accessor for BankConnectTermsAndConditionsHeroView(0);
    *&v12[*(v28 + 24)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    swift_storeEnumTagMultiPayload();
    *v12 = v23;
    *(v12 + 1) = sub_238445F18;
    *(v12 + 2) = 0;
    v12[24] = 0;
    v29 = &v12[*(v28 + 28)];
    *v29 = v24;
    *(v29 + 1) = v25;
    *(v29 + 2) = v26;
    LOBYTE(KeyPath) = sub_23875D7A0();
    sub_23875C3D0();
    v30 = &v12[*(v151 + 36)];
    *v30 = KeyPath;
    *(v30 + 1) = v31;
    *(v30 + 2) = v32;
    *(v30 + 3) = v33;
    *(v30 + 4) = v34;
    v30[40] = 0;
    sub_2385D587C();
    sub_23875DBF0();

    sub_238439884(v12, &qword_27DF102A0, &qword_2387751D8);
    v35 = v155;
    sub_2384396E4(v15, v155, &qword_27DF102A8, &qword_2387751E0);
    (*(v13 + 56))(v35, 0, 1, v152);
  }

  else
  {
    (*(v13 + 56))(v155, 1, 1, v152);
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v36 = qword_2814F1B90;
  v37 = sub_23875EA50();
  v38 = sub_23875EA50();
  v39 = sub_23875EA50();
  v40 = [v36 localizedStringForKey:v37 value:v38 table:v39];

  v41 = sub_23875EA80();
  v43 = v42;

  v176 = v41;
  v177 = v43;
  sub_2384397A8(v44, v45, v46);
  v47 = sub_23875DAA0();
  v150 = v48;
  v151 = v47;
  LOBYTE(v41) = v49;
  v152 = v50;
  v149 = sub_23875D770();
  sub_23875C3D0();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v148 = v41 & 1;
  LOBYTE(v176) = v41 & 1;
  LOBYTE(v164) = 0;
  v59 = sub_23875EA50();
  v60 = sub_23875EA50();
  v61 = sub_23875EA50();
  v62 = [v36 localizedStringForKey:v59 value:v60 table:v61];

  v63 = sub_23875EA80();
  v65 = v64;

  v176 = v63;
  v177 = v65;
  v66 = sub_23875DAA0();
  v68 = v67;
  LOBYTE(v62) = v69;
  v138 = v70;
  v137 = sub_23875D770();
  sub_23875C3D0();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v62 & 1;
  LOBYTE(v176) = v62 & 1;
  LOBYTE(v164) = 0;
  v80 = v139;
  v81 = v142;
  sub_2385CD8E0(v139);
  type metadata accessor for BankConnectTermsAndConditionsView(0);
  sub_2385D4A74(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v82 = v141;
  LOBYTE(v62) = sub_23875E990();
  (*(v140 + 8))(v80, v82);
  if (v62)
  {
    v83 = sub_23875D020();
    v84 = v136;
    *v136 = v83;
    *(v84 + 8) = 0x402C000000000000;
    *(v84 + 16) = 0;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10250, &qword_238775190);
    sub_2385CFF08(v81, v84 + *(v85 + 44));
    v86 = sub_23875D7A0();
    v142 = v52;
    sub_23875C3D0();
    v139 = v56;
    v140 = v54;
    v88 = v87;
    v90 = v89;
    v141 = v58;
    v92 = v91;
    v135 = v78;
    v93 = v76;
    v94 = v74;
    v95 = v72;
    v97 = v96;
    v98 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101F8, &qword_238775128) + 36);
    *v98 = v86;
    *(v98 + 8) = v88;
    *(v98 + 16) = v90;
    *(v98 + 24) = v92;
    *(v98 + 32) = v97;
    v72 = v95;
    v74 = v94;
    v76 = v93;
    v78 = v135;
    *(v98 + 40) = 0;
    v99 = sub_23875D770();
    sub_23875C3D0();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v108 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101E0, &qword_238775120) + 36);
    *v108 = v99;
    *(v108 + 8) = v101;
    *(v108 + 16) = v103;
    *(v108 + 24) = v105;
    *(v108 + 32) = v107;
    v56 = v139;
    v54 = v140;
    v58 = v141;
    v52 = v142;
    *(v108 + 40) = 0;
    v109 = sub_23875D790();
    sub_23875C3D0();
    v110 = v144;
    v111 = v84 + *(v144 + 36);
    *v111 = v109;
    *(v111 + 8) = v112;
    *(v111 + 16) = v113;
    *(v111 + 24) = v114;
    *(v111 + 32) = v115;
    *(v111 + 40) = 0;
    v116 = v154;
    sub_2384396E4(v84, v154, &qword_27DF10290, &qword_2387751C8);
    v117 = 0;
  }

  else
  {
    v117 = 1;
    v116 = v154;
    v110 = v144;
  }

  (*(v143 + 56))(v116, v117, 1, v110);
  v118 = v153;
  sub_23843981C(v155, v153, &qword_27DF102B0, &qword_2387751E8);
  v119 = v116;
  v120 = v146;
  sub_23843981C(v119, v146, &qword_27DF10298, &qword_2387751D0);
  v121 = v118;
  v122 = v147;
  sub_23843981C(v121, v147, &qword_27DF102B0, &qword_2387751E8);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF102B8, &qword_2387751F0);
  v124 = (v122 + v123[12]);
  *&v156 = v151;
  *(&v156 + 1) = v150;
  LOBYTE(v157) = v148;
  *(&v157 + 1) = *v188;
  DWORD1(v157) = *&v188[3];
  *(&v157 + 1) = v152;
  LOBYTE(v158) = v149;
  *(&v158 + 1) = *v187;
  DWORD1(v158) = *&v187[3];
  *(&v158 + 1) = v52;
  *&v159[0] = v54;
  *(&v159[0] + 1) = v56;
  *&v159[1] = v58;
  BYTE8(v159[1]) = 0;
  v125 = v156;
  v126 = v157;
  *(v124 + 57) = *(v159 + 9);
  v127 = v159[0];
  v124[2] = v158;
  v124[3] = v127;
  *v124 = v125;
  v124[1] = v126;
  v128 = (v122 + v123[16]);
  *&v160 = v66;
  *(&v160 + 1) = v68;
  LOBYTE(v161) = v79;
  DWORD1(v161) = *(v190 + 3);
  *(&v161 + 1) = v190[0];
  v143 = v66;
  v144 = v68;
  v129 = v138;
  *(&v161 + 1) = v138;
  v130 = v79;
  v131 = v137;
  LOBYTE(v162) = v137;
  DWORD1(v162) = *&v189[3];
  *(&v162 + 1) = *v189;
  *(&v162 + 1) = v72;
  *&v163[0] = v74;
  *(&v163[0] + 1) = v76;
  *&v163[1] = v78;
  BYTE8(v163[1]) = 0;
  v132 = v160;
  v133 = v161;
  *(v128 + 57) = *(v163 + 9);
  v134 = v163[0];
  v128[2] = v162;
  v128[3] = v134;
  *v128 = v132;
  v128[1] = v133;
  sub_23843981C(v120, v122 + v123[20], &qword_27DF10298, &qword_2387751D0);
  sub_23843981C(&v156, &v176, &qword_27DF102C0, &unk_2387751F8);
  sub_23843981C(&v160, &v176, &qword_27DF0AB28, &qword_238771F60);
  sub_238439884(v154, &qword_27DF10298, &qword_2387751D0);
  sub_238439884(v155, &qword_27DF102B0, &qword_2387751E8);
  sub_238439884(v120, &qword_27DF10298, &qword_2387751D0);
  v164 = v143;
  v165 = v144;
  v166 = v130;
  *v167 = v190[0];
  *&v167[3] = *(v190 + 3);
  v168 = v129;
  v169 = v131;
  *v170 = *v189;
  *&v170[3] = *&v189[3];
  v171 = v72;
  v172 = v74;
  v173 = v76;
  v174 = v78;
  v175 = 0;
  sub_238439884(&v164, &qword_27DF0AB28, &qword_238771F60);
  v176 = v151;
  v177 = v150;
  LOBYTE(v178) = v148;
  *(&v178 + 1) = *v188;
  HIDWORD(v178) = *&v188[3];
  v179 = v152;
  v180 = v149;
  *v181 = *v187;
  *&v181[3] = *&v187[3];
  v182 = v52;
  v183 = v54;
  v184 = v56;
  v185 = v58;
  v186 = 0;
  sub_238439884(&v176, &qword_27DF102C0, &unk_2387751F8);
  sub_238439884(v153, &qword_27DF102B0, &qword_2387751E8);
}

void sub_2385CF058(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_23875CFB0();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101E0, &qword_238775120);
  MEMORY[0x28223BE20](v40);
  v6 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10248, &qword_238775188);
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = &v38 - v8;
  v9 = sub_23875C880();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101C8, &qword_238775118);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385CD8E0(v12);
  type metadata accessor for BankConnectTermsAndConditionsView(0);
  sub_2385D4A74(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v16 = sub_23875E990();
  (*(v10 + 8))(v12, v9);
  if (v16)
  {
    v17 = 1;
    v18 = v44;
  }

  else
  {
    *v6 = sub_23875D020();
    *(v6 + 1) = 0x402C000000000000;
    v6[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10250, &qword_238775190);
    sub_2385CFF08(a1, &v6[*(v19 + 44)]);
    v20 = sub_23875D7A0();
    sub_23875C3D0();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101F8, &qword_238775128) + 36)];
    *v29 = v20;
    *(v29 + 1) = v22;
    *(v29 + 2) = v24;
    *(v29 + 3) = v26;
    *(v29 + 4) = v28;
    v29[40] = 0;
    v30 = sub_23875D770();
    sub_23875C3D0();
    v31 = v41;
    v32 = &v6[*(v40 + 36)];
    *v32 = v30;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    sub_23875CFA0();
    sub_2385D51F4();
    v37 = v39;
    sub_23875DD10();
    (*(v42 + 8))(v31, v43);
    sub_238439884(v6, &qword_27DF101E0, &qword_238775120);
    v18 = v44;
    (*(v7 + 32))(v15, v37, v44);
    v17 = 0;
  }

  (*(v7 + 56))(v15, v17, 1, v18);
  sub_2384396E4(v15, v45, &qword_27DF101C8, &qword_238775118);
}

double sub_2385CF530@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10210, &qword_238775140);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  sub_23875ED50();
  v30 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel, &protocol conformance descriptor for BankConnectTermsAndConditionsViewModel);
  v14 = sub_23875C490();
  v15 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions;
  swift_beginAccess();
  sub_23843981C(v14 + v15, v10, &qword_27DF10038, &qword_238774BF0);

  v16 = sub_23875A6C0();
  if ((*(*(v16 - 8) + 48))(v10, 1, v16))
  {
    sub_238439884(v10, &qword_27DF10038, &qword_238774BF0);
    v17 = 1;
    v18 = v31;
  }

  else
  {
    v19 = sub_23875A6B0();
    v21 = v20;
    sub_238439884(v10, &qword_27DF10038, &qword_238774BF0);
    v22 = a1;
    v23 = v29;
    sub_2385D4B8C(v22, v29, type metadata accessor for BankConnectTermsAndConditionsView);
    v24 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    *(v25 + 24) = v21;
    sub_2385D4BF4(v23, v25 + v24, type metadata accessor for BankConnectTermsAndConditionsView);
    *v7 = sub_2385D5720;
    *(v7 + 1) = v25;
    v7[16] = 0;
    v18 = v31;
    v26 = *(v31 + 20);
    *&v7[v26] = swift_getKeyPath(byte_238775158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
    swift_storeEnumTagMultiPayload();
    sub_2385D4BF4(v7, v13, type metadata accessor for BankConnectTermsAndConditionsWebView);
    v17 = 0;
  }

  (*(v5 + 56))(v13, v17, 1, v18);
  sub_2384396E4(v13, v32, &qword_27DF10210, &qword_238775140);

  return result;
}

uint64_t sub_2385CF9B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v26 = a1;
  v27 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel, &protocol conformance descriptor for BankConnectTermsAndConditionsViewModel);
  v13 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType);

  sub_2385D4B8C(a3, v12, type metadata accessor for BankConnectTermsAndConditionsView);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  sub_2385D4BF4(v12, v15 + v14, type metadata accessor for BankConnectTermsAndConditionsView);
  v16 = sub_238758CC0();
  v17 = sub_238758CB0();
  v30 = v16;
  v31 = MEMORY[0x277CC7460];
  *&v29 = v17;
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  v18 = swift_allocObject();
  v28 = 0;
  sub_23875C290();
  v19 = sub_23875B940();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_23843981C(v8, v5, &qword_27DF0D040, &qword_2387676A0);
  sub_23875C290();
  sub_238439884(v8, &qword_27DF0D040, &qword_2387676A0);
  v20 = (v18 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID);
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  *(v18 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_isDeclinable) = 1;
  *(v18 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType) = v13;
  sub_2384347C0(&v29, v18 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService);
  v22 = (v18 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler);
  *v22 = sub_2385D5784;
  v22[1] = v15;

  return v18;
}

void sub_2385CFD24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10240, &qword_238775150);
  sub_23875E1C0();
}

double sub_2385CFDF8(uint64_t *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel, &protocol conformance descriptor for BankConnectTermsAndConditionsViewModel);
  sub_23875C490();
  sub_2385CC458();

  return result;
}

void sub_2385CFF08(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10258, &qword_238775198);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v28[-v7];
  v9 = sub_238759940();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v10 + 104))(v12, *MEMORY[0x277CC7B48], v9);
  v13 = sub_23869C4FC(v12);
  v29 = sub_23875D7A0();
  v14 = sub_23875C3D0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  MEMORY[0x28223BE20](v14);
  *&v28[-16] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10260, &qword_2387751A0);
  sub_23843A3E8(&qword_27DF10268, &qword_27DF10260, &qword_2387751A0, MEMORY[0x277CE1198]);
  sub_23875D1D0();
  v23 = *(v4 + 16);
  v24 = v32;
  v23(v32, v8, v3);
  *a2 = v13;
  *(a2 + 8) = v29;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10270, &qword_2387751A8);
  v23((a2 + *(v25 + 48)), v24, v3);
  v26 = *(v4 + 8);
  v27 = v13;
  v26(v8, v3);
  v26(v24, v3);
}

double sub_2385D0284@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x402C000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10278, &qword_2387751B0);
  sub_2385D0358(a1, a2 + *(v4 + 44));

  return result;
}