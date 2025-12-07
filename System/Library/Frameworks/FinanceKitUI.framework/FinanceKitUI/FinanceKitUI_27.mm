uint64_t sub_23871E4F8()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238758640();
  sub_238758F40();
  v7 = sub_23875BC80();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

double sub_23871E69C(char a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C598, &unk_23877B770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = sub_238758F50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if (a1)
  {
    (*(v10 + 16))(v12, a3, v9, v14);
    v17 = *a2;
    v18 = a2[1];
    v27[1] = a3;
    v19 = a2[2];
    v32 = v17;
    v33 = v18;
    v34 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v35);
    sub_2387099C0(v16, v12);
    (*(v10 + 8))(v16, v9);
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v28 = v35;
    sub_23875E2F0();

    v20 = a2[3];
    v21 = a2[4];
    v22 = a2[5];
    v32 = v20;
    v33 = v21;
    v34 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
    MEMORY[0x23EE62DC0](&v35);
    sub_2384DB11C();
  }

  else
  {
    v24 = a2[1];
    v25 = a2[2];
    v32 = *a2;
    v23 = v32;
    v33 = v24;
    v34 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v35);
    sub_2386F1FAC(a3, v8);
    sub_238439884(v8, &qword_27DF0C598, &unk_23877B770);
    v29 = v23;
    v30 = v24;
    v31 = v25;
    v28 = v35;
    sub_23875E2F0();

    v20 = a2[3];
    v21 = a2[4];
    v22 = a2[5];
    v32 = v20;
    v33 = v21;
    v34 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
    MEMORY[0x23EE62DC0](&v35);
    sub_2384DB6C8();
  }

  v29 = v20;
  v30 = v21;
  v31 = v22;
  v28 = v35;
  sub_23875E2F0();

  return result;
}

double sub_23871EA3C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15250, &qword_238782B70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15258, &unk_238782B78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23871ECF8();
  if (v9)
  {
    MEMORY[0x28223BE20](v9);
    MEMORY[0x28223BE20](v10);
    sub_23875D400();
    (*(v3 + 32))(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2);
  }

  sub_2384396E4(v8, a1, &qword_27DF15258, &unk_238782B78);

  return result;
}

BOOL sub_23871ECF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12940, &qword_23877B698);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - v3;
  swift_getKeyPath(aH_25, v2);
  swift_getKeyPath(aH_26);
  sub_23875C2D0();

  v6 = v13;
  v5 = v14;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7 || (swift_getKeyPath(byte_238782B88), swift_getKeyPath(byte_238782BB0), sub_23875C2D0(), , , v8 = *(v13 + 16), , v8))
  {
    swift_getKeyPath(a0_16);
    swift_getKeyPath(byte_238782C48);
    sub_23875C2D0();

    if ((v13 & 1) == 0)
    {
      swift_getKeyPath(byte_238782C68);
      swift_getKeyPath("شzE");
      sub_23875C2D0();

      v9 = *(v13 + 16);

      if (!v9)
      {
        type metadata accessor for TransactionSearchList(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
        sub_23875C500();
        sub_23843A3E8(&qword_27DF15260, &qword_27DF12940, &qword_23877B698, MEMORY[0x277CDD8D8]);
        sub_23875EED0();
        sub_23875EF00();
        (*(v1 + 8))(v4, v0);
        if (v13 == v12)
        {
          return 1;
        }
      }
    }
  }

  swift_getKeyPath(a0_16);
  swift_getKeyPath(byte_238782C48);
  sub_23875C2D0();

  if (v13 != 1)
  {
    return 0;
  }

  type metadata accessor for TransactionSearchList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF15260, &qword_27DF12940, &qword_23877B698, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  (*(v1 + 8))(v4, v0);
  return v13 == v12;
}

void sub_23871F0CC(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_23871F1B0();
  sub_2384397A8(v11, v2, v3);
  v4 = sub_23875DAA0();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
}

uint64_t sub_23871F1B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2387632F0;
  v1 = sub_23871F4DC();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_238448C58(v1, v2, v4);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  v10 = sub_23875EAA0();

  return v10;
}

void sub_23871F334(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v15;
}

uint64_t sub_23871F4DC()
{
  swift_getKeyPath(byte_238782B88);
  swift_getKeyPath(byte_238782BB0);
  sub_23875C2D0();

  v0 = *(v45 + 16);
  if (v0)
  {
    v52 = MEMORY[0x277D84F90];
    sub_2385FE468(0, v0, 0);
    v1 = v52;
    v2 = v45 + 32;
    for (i = v0 - 1; ; --i)
    {
      sub_2385BA73C(v2, v51);
      sub_2385BA73C(v51, &v42);
      if (v44 >= 4u)
      {
        v9 = v42;
        v10 = v43;

        v11 = [v10 title];
        v12 = sub_23875EA80();
        v14 = v13;

        *&v34 = v12;
        *(&v34 + 1) = v14;
        v15 = [v10 subtitle];
        v16 = sub_23875EA80();
        v18 = v17;

        v19 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (v19)
        {
          v20 = [v10 subtitle];
          v21 = sub_23875EA80();
          v23 = v22;

          v40 = 8236;
          v41 = 0xE200000000000000;
          MEMORY[0x23EE63650](v21, v23);

          MEMORY[0x23EE63650](v40, v41);
        }

        v24 = v34;
        v25 = sub_23875E030();
        v26 = swift_allocObject();
        *(v26 + 16) = v9;
        *(v26 + 32) = v10;
        v46 = v24;
        *&v47 = v25;
        *(&v47 + 1) = 0xD000000000000012;
        *(&v48 + 1) = 0x6E6F697461636F4CLL;
        *&v49 = 0xE800000000000000;
        *&v48 = 0x800000023878C470;
        v45 = v9;
        *(&v49 + 1) = &unk_238782BD0;
        v50 = v26;
      }

      else
      {
        sub_2384347C0(&v42, &v34);
        v4 = *(&v35 + 1);
        v5 = v36;
        __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
        (*(v5 + 8))(&v45, v4, v5);
        __swift_destroy_boxed_opaque_existential_1(&v34);
      }

      v36 = v47;
      v37 = v48;
      v38 = v49;
      v39 = v50;
      v34 = v45;
      v35 = v46;
      v6 = v46;

      sub_2384B5DE4(&v34);
      sub_23871FAB0(v51);
      v52 = v1;
      v8 = *(v1 + 2);
      v7 = *(v1 + 3);
      if (v8 >= v7 >> 1)
      {
        sub_2385FE468((v7 > 1), v8 + 1, 1);
        v1 = v52;
      }

      *(v1 + 2) = v8 + 1;
      *&v1[16 * v8 + 32] = v6;
      if (!i)
      {
        break;
      }

      v2 += 48;
    }
  }

  else
  {

    v1 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath(aH_25);
  swift_getKeyPath(aH_26);
  sub_23875C2D0();

  v27 = v45;

  v28 = HIBYTE(*(&v27 + 1)) & 0xFLL;
  if ((*(&v27 + 1) & 0x2000000000000000) == 0)
  {
    v28 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    swift_getKeyPath(aH_25);
    swift_getKeyPath(aH_26);
    sub_23875C2D0();

    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_238497C2C(0, *(v1 + 2) + 1, 1, v1);
    }

    v31 = *(v1 + 2);
    v30 = *(v1 + 3);
    if (v31 >= v30 >> 1)
    {
      v1 = sub_238497C2C((v30 > 1), v31 + 1, 1, v1);
    }

    *(v1 + 2) = v31 + 1;
    *&v1[16 * v31 + 32] = v29;
  }

  *&v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
  sub_23843A3E8(&qword_27DF0AEC0, &qword_27DF09550, &qword_2387638E0, MEMORY[0x277D83958]);
  v32 = sub_23875E980();

  return v32;
}

uint64_t sub_23871F9FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2384494A4;

  return sub_23864FFDC(a1);
}

unint64_t sub_23871FB0C()
{
  result = qword_27DF152A8;
  if (!qword_27DF152A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF152A0, &qword_238782CE8);
    sub_23871FE3C(&qword_27DF152B0, &qword_27DF152B8, &qword_238782CF0, sub_23871FBBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF152A8);
  }

  return result;
}

unint64_t sub_23871FBBC()
{
  result = qword_27DF152C0;
  if (!qword_27DF152C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF152C8, &qword_238782CF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF152D0, &unk_238782D00);
    v3 = sub_23871FCCC();
    sub_2384B4E44(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF152C0);
  }

  return result;
}

unint64_t sub_23871FCCC()
{
  result = qword_27DF152D8;
  if (!qword_27DF152D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF152D0, &unk_238782D00);
    sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF152D8);
  }

  return result;
}

unint64_t sub_23871FD8C()
{
  result = qword_27DF152F0;
  if (!qword_27DF152F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF152E8, &qword_238782D10);
    sub_23871FE3C(&qword_27DF152F8, &qword_27DF15300, &unk_238782D18, sub_2384DD238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF152F0);
  }

  return result;
}

uint64_t sub_23871FE3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23871FEEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23871FF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionSearchList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23871FFE0(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TransactionSearchList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_23871DDA4(a1, v6, a2);
}

uint64_t sub_238720060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2387200C8(char a1)
{
  v3 = *(type metadata accessor for TransactionSearchList(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_238758F50() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_23871E69C(a1, (v1 + v4), v7);
}

uint64_t sub_23872019C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_30Tm()
{
  v1 = (type metadata accessor for TransactionSearchList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_23872033C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TransactionSearchList(0);

  return sub_23871D5F4(a1, a2);
}

unint64_t sub_2387203BC()
{
  result = qword_27DF15320;
  if (!qword_27DF15320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15240, &qword_238782B60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15220, &qword_238782B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15218, &qword_238782B48);
    sub_23875D310();
    sub_23843A3E8(&qword_27DF15238, &qword_27DF15218, &qword_238782B48, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF15328, &qword_27DF15248, &qword_238782B68, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15320);
  }

  return result;
}

id AppSettingsController.__allocating_init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_accountSpecifiers] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider] = 0;
  v6 = &v5[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_bundleIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

id AppSettingsController.init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_accountSpecifiers] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider] = 0;
  v3 = &v2[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_bundleIdentifier];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for AppSettingsController();
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id sub_2387207A0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_accountSpecifiers] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider] = 0;
  v5 = &v3[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_bundleIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  if (a2)
  {
    v6 = sub_23875EA50();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for AppSettingsController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

void sub_238720A18(char a1)
{
  v22.receiver = v1;
  v22.super_class = type metadata accessor for AppSettingsController();
  objc_msgSendSuper2(&v22, sel_viewDidAppear_, a1 & 1);
  v3 = *MEMORY[0x277D38568];
  v4 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v3, 24, v4);

  v5 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_accountSpecifiers);
  if (v5 >> 62)
  {
LABEL_26:
    v6 = sub_23875F3A0();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v16 = v1;

      v17 = 0;
      v7 = 0;
      v1 = &selRef_returnDeadline;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x23EE63F70](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_24:

          v15 = v16;
LABEL_21:
          [v15 reloadSpecifiers];
          return;
        }

        v11 = sub_23875EA50();
        v12 = [v9 propertyForKey_];

        if (v12)
        {
          sub_23875F2E0();
          swift_unknownObjectRelease();
        }

        else
        {
          v19 = 0u;
          v20 = 0u;
        }

        v21[0] = v19;
        v21[1] = v20;
        if (!*(&v20 + 1))
        {
          break;
        }

        if (swift_dynamicCast() & 1) != 0 && (v18)
        {
          v13 = sub_23875ECD0();
          v14 = sub_23875EA50();
          [v9 setProperty:v13 forKey:v14];

          v17 = 1;
          v7 = v10;
          if (v10 == v6)
          {
            goto LABEL_24;
          }
        }

        else
        {

LABEL_5:
          ++v7;
          if (v10 == v6)
          {

            v15 = v16;
            if ((v17 & 1) == 0)
            {
              return;
            }

            goto LABEL_21;
          }
        }
      }

      sub_238721954(v21);
      goto LABEL_5;
    }
  }
}

char *sub_238720D80()
{
  v1 = sub_23875C1E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875EA50();
  v6 = [v0 valueForKey_];

  if (v6)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
    if (swift_dynamicCast())
    {
      v7 = sub_2386C7328(v26[0]);
LABEL_21:

      return v7;
    }
  }

  else
  {
    sub_238721954(&v29);
  }

  v8 = &v0[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_bundleIdentifier];
  v9 = *&v0[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_bundleIdentifier + 8];
  if (v9)
  {
LABEL_17:
    v15 = OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider;
    if (*&v0[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider])
    {
      v16 = *&v0[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider];
    }

    else
    {
      v17 = *v8;
      v18 = objc_allocWithZone(type metadata accessor for AppSettingsProvider());

      v16 = sub_2387217D8(v17, v9, v0, 0, 0, v18);
    }

    *&v0[v15] = v16;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v19 = [v16 specifiers];
    swift_unknownObjectRelease();
    sub_2384950FC();
    v20 = sub_23875EC80();

    sub_2386C7328(v20);
    v21 = sub_23875EC60();

    [v0 setSpecifiers_];

    v7 = sub_2386C7328(v20);
    goto LABEL_21;
  }

  v10 = [v0 specifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_23875EA50();
    v13 = [v11 propertyForKey_];

    if (v13)
    {
      sub_23875F2E0();
      swift_unknownObjectRelease();
    }

    else
    {

      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (!*(&v28 + 1))
    {
      sub_238721954(&v29);
      v9 = v8[1];
      if (v9)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if (swift_dynamicCast())
    {
      v14 = v26[1];
      *v8 = v26[0];
      v8[1] = v14;
    }
  }

  v9 = v8[1];
  if (v9)
  {
    goto LABEL_17;
  }

LABEL_24:
  sub_23875C120();
  v23 = sub_23875C1B0();
  v24 = sub_23875EFE0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2383F8000, v23, v24, "Expected to be initialized with bundleID or obtain from property of specifier", v25, 2u);
    MEMORY[0x23EE64DF0](v25, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return MEMORY[0x277D84F90];
}

uint64_t sub_23872129C(uint64_t a1)
{
  result = sub_2387212DC(a1);
  if (result)
  {

    return [v1 reloadSpecifiers];
  }

  return result;
}

uint64_t sub_2387212DC(uint64_t a1)
{
  v3 = sub_23875C1E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider);
  if (v7)
  {
    if (v7 == a1)
    {
      return 1;
    }

    swift_unknownObjectRetain();
    sub_23875C120();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8 = sub_23875C1B0();
    v9 = sub_23875EFE0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315394;
      v12 = sub_23875E9D0();
      v14 = sub_2384615AC(v12, v13, &v20);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = sub_23875E9D0();
      v17 = sub_2384615AC(v15, v16, &v20);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_2383F8000, v8, v9, "delegate mismatch: provider: %s, self.provider: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE64DF0](v11, -1, -1);
      MEMORY[0x23EE64DF0](v10, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t sub_238721600(uint64_t a1, uint64_t a2)
{
  result = sub_2387212DC(a1);
  if (result)
  {

    return [v2 reloadSpecifier_];
  }

  return result;
}

id AppSettingsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSettingsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2387217D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_authorizationStateManager;
  v21[3] = sub_2387588D0();
  v21[4] = MEMORY[0x277CC70E0];
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_2387588C0();
  sub_23875A460();
  swift_allocObject();
  *&a6[v13] = sub_23875A420();
  v14 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_storeCoordinator;
  sub_23875AA80();
  swift_allocObject();
  *&a6[v14] = sub_23875AA70();
  v15 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  v16 = MEMORY[0x277D84F90];
  *&a6[v15] = sub_23854C324(MEMORY[0x277D84F90]);
  *&a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers] = v16;
  v17 = &a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier];
  *v17 = a1;
  *(v17 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v18 = &a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_localizedTitle];
  *v18 = a4;
  *(v18 + 1) = a5;
  v20.receiver = a6;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_238721954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4A8, &qword_238767840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_238721A7C()
{
  v0 = sub_238759A00();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2387599B0();
  sub_238723DD8();
  v4 = sub_23875F2F0();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    v6 = sub_238498120(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_238498120((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v6[v8 + 32] = 0;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  sub_2387599A0();
  v9 = sub_23875F2F0();
  v5(v3, v0);
  if (v9)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238498120(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_238498120((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v6[v11 + 32] = 1;
  }

  sub_2387599F0();
  v12 = sub_23875F2F0();
  v5(v3, v0);
  if (v12 & 1) != 0 && (sub_238759990(), v13 = sub_23875F2F0(), v5(v3, v0), (v13))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238498120(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v6 = sub_238498120((v14 > 1), v15 + 1, 1, v6);
    }

    v17 = 4;
  }

  else
  {
    sub_2387599F0();
    v18 = sub_23875F2F0();
    v5(v3, v0);
    if (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_238498120(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v19 = *(v6 + 3);
      v16 = v15 + 1;
      if (v15 >= v19 >> 1)
      {
        v6 = sub_238498120((v19 > 1), v15 + 1, 1, v6);
      }

      v17 = 2;
    }

    else
    {
      sub_238759990();
      v20 = sub_23875F2F0();
      v5(v3, v0);
      if ((v20 & 1) == 0)
      {
        goto LABEL_32;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_238498120(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v21 = *(v6 + 3);
      v16 = v15 + 1;
      if (v15 >= v21 >> 1)
      {
        v6 = sub_238498120((v21 > 1), v15 + 1, 1, v6);
      }

      v17 = 3;
    }
  }

  *(v6 + 2) = v16;
  v6[v15 + 32] = v17;
LABEL_32:
  sub_2387599C0();
  v22 = sub_23875F2F0();
  v5(v3, v0);
  if (v22)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238498120(0, *(v6 + 2) + 1, 1, v6);
    }

    v24 = *(v6 + 2);
    v23 = *(v6 + 3);
    if (v24 >= v23 >> 1)
    {
      v6 = sub_238498120((v23 > 1), v24 + 1, 1, v6);
    }

    *(v6 + 2) = v24 + 1;
    v6[v24 + 32] = 5;
  }

  sub_2387599D0();
  v25 = sub_23875F2F0();
  v5(v3, v0);
  if (v25)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238498120(0, *(v6 + 2) + 1, 1, v6);
    }

    v27 = *(v6 + 2);
    v26 = *(v6 + 3);
    if (v27 >= v26 >> 1)
    {
      v6 = sub_238498120((v26 > 1), v27 + 1, 1, v6);
    }

    *(v6 + 2) = v27 + 1;
    v6[v27 + 32] = 6;
  }

  sub_2387599E0();
  v28 = sub_23875F2F0();
  v5(v3, v0);
  if (v28)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238498120(0, *(v6 + 2) + 1, 1, v6);
    }

    v30 = *(v6 + 2);
    v29 = *(v6 + 3);
    if (v30 >= v29 >> 1)
    {
      v6 = sub_238498120((v29 > 1), v30 + 1, 1, v6);
    }

    *(v6 + 2) = v30 + 1;
    v6[v30 + 32] = 7;
  }

  sub_238759980();
  v31 = sub_23875F2F0();
  v5(v3, v0);
  if (v31)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238498120(0, *(v6 + 2) + 1, 1, v6);
    }

    v33 = *(v6 + 2);
    v32 = *(v6 + 3);
    if (v33 >= v32 >> 1)
    {
      v6 = sub_238498120((v32 > 1), v33 + 1, 1, v6);
    }

    *(v6 + 2) = v33 + 1;
    v6[v33 + 32] = 8;
  }

  return v6;
}

uint64_t sub_238722108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15348, &qword_238782E98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v60 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15350, &qword_238782EA0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15358, &qword_238782EA8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15360, &qword_238782EB0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  *v5 = sub_23875D030();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15368, &qword_238782EB8);
  sub_238722528(a1, &v5[*(v18 + 44)]);
  sub_23875E4B0();
  sub_23875C9C0();
  sub_2384396E4(v5, v9, &qword_27DF15348, &qword_238782E98);
  v19 = &v9[*(v7 + 44)];
  v20 = v66;
  *(v19 + 4) = v65;
  *(v19 + 5) = v20;
  *(v19 + 6) = v67;
  v21 = v62;
  *v19 = v61;
  *(v19 + 1) = v21;
  v22 = v64;
  *(v19 + 2) = v63;
  *(v19 + 3) = v22;
  LOBYTE(a1) = sub_23875D770();
  sub_23875C3D0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_2384396E4(v9, v13, &qword_27DF15350, &qword_238782EA0);
  v31 = &v13[*(v11 + 44)];
  *v31 = a1;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(a1) = sub_23875D7D0();
  sub_23875C3D0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_2384396E4(v13, v17, &qword_27DF15358, &qword_238782EA8);
  v40 = &v17[*(v15 + 44)];
  *v40 = a1;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15370, &qword_238782EC0);
  v42 = v60;
  v43 = (v60 + *(v41 + 36));
  v44 = *(sub_23875C980() + 20);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_23875CF50();
  (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
  __asm { FMOV            V0.2D, #26.0 }

  *v43 = _Q0;
  v52 = [objc_opt_self() secondarySystemBackgroundColor];
  v53 = sub_23875DFB0();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15378, &qword_238782EC8);
  *&v43[*(v54 + 52)] = v53;
  *&v43[*(v54 + 56)] = 256;
  v55 = sub_23875E4A0();
  v57 = v56;
  v58 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15380, &qword_238782ED0) + 36)];
  *v58 = v55;
  v58[1] = v57;
  return sub_2384396E4(v17, v42, &qword_27DF15360, &qword_238782EB0);
}

void sub_238722528(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15388, &qword_238782ED8);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v28[-v6];
  sub_23875ED50();
  v36 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238722A04(&v41);
  v32 = v41;
  v30 = v42;
  v29 = v43;
  v34 = v45;
  v33 = sub_23875D7A0();
  sub_23875C3D0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v37) = 0;
  *v7 = sub_23875E4A0();
  *(v7 + 1) = v16;
  *(v7 + 2) = 0x4024000000000000;
  v7[24] = 0;
  *(v7 + 4) = 0x4018000000000000;
  v7[40] = 0;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15390, &qword_238782EE0);
  v41 = a1;
  swift_getKeyPath(asc_238782EE8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15398, &qword_238782F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF153A0, &qword_238782F18);
  sub_23843A3E8(&qword_27DF153A8, &qword_27DF15398, &qword_238782F10, MEMORY[0x277D83980]);
  sub_23843A3E8(&qword_27DF153B0, &qword_27DF153A0, &qword_238782F18, MEMORY[0x277CDF0A0]);
  sub_23875E370();

  v17 = v35;
  sub_23843981C(v7, v35, &qword_27DF15388, &qword_238782ED8);
  v18 = v32;
  *&v37 = v32;
  v19 = v30;
  *(&v37 + 1) = v30;
  v20 = v29;
  LOBYTE(v38) = v29;
  *(&v38 + 1) = v54[0];
  DWORD1(v38) = *(v54 + 3);
  v21 = v34;
  *(&v38 + 1) = v34;
  v22 = v33;
  LOBYTE(v39) = v33;
  *(&v39 + 1) = *v53;
  DWORD1(v39) = *&v53[3];
  *(&v39 + 1) = v9;
  *v40 = v11;
  *&v40[8] = v13;
  *&v40[16] = v15;
  v40[24] = 0;
  v23 = v37;
  v24 = v38;
  v25 = v31;
  *(v31 + 57) = *&v40[9];
  v26 = *v40;
  v25[2] = v39;
  v25[3] = v26;
  *v25 = v23;
  v25[1] = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF153B8, &unk_238782F20);
  sub_23843981C(v17, v25 + *(v27 + 48), &qword_27DF15388, &qword_238782ED8);
  sub_23843981C(&v37, &v41, &qword_27DF0BAE8, &unk_23876A630);
  sub_238439884(v7, &qword_27DF15388, &qword_238782ED8);
  sub_238439884(v17, &qword_27DF15388, &qword_238782ED8);
  v41 = v18;
  v42 = v19;
  v43 = v20;
  *v44 = v54[0];
  *&v44[3] = *(v54 + 3);
  v45 = v21;
  v46 = v22;
  *v47 = *v53;
  *&v47[3] = *&v53[3];
  v48 = v9;
  v49 = v11;
  v50 = v13;
  v51 = v15;
  v52 = 0;
  sub_238439884(&v41, &qword_27DF0BAE8, &unk_23876A630);
}

void sub_238722A04(uint64_t a1@<X8>)
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  sub_23875D920();
  v14 = sub_23875DA60();
  v16 = v15;
  v18 = v17;

  sub_2384397FC(v10, v12, v4 & 1);

  sub_23875D890();
  v19 = sub_23875D9E0();
  v21 = v20;
  LOBYTE(v4) = v22;
  v24 = v23;
  sub_2384397FC(v14, v16, v18 & 1);

  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v24;
}

__n128 sub_238722BF8@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.n128_u64[0] = sub_23875CE60();
  v7.n128_u8[8] = 0;
  sub_238722CD8(v3, v8);

  v4 = v8[2];
  *(a2 + 32) = v8[1];
  *(a2 + 48) = v4;
  *(a2 + 64) = v8[3];
  *(a2 + 80) = v9;
  result = v7;
  v6 = v8[0];
  *a2 = v7;
  *(a2 + 16) = v6;
  return result;
}

double sub_238722CD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v2 == 5)
  {
    sub_2387231B8();
  }

  v23 = sub_23875E0D0();
  v22 = sub_23875D970();
  KeyPath = swift_getKeyPath(byte_238782F30);
  v20 = sub_23875D020();
  v24 = sub_238722FA4(v2);
  sub_2384397A8(v24, v4, v5);
  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  sub_23875D7F0();
  v11 = sub_23875DA60();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_2384397FC(v6, v8, v10 & 1);

  v18 = sub_23875D030();
  *a2 = v23;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v22;
  *(a2 + 24) = v20;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15 & 1;
  *(a2 + 56) = v17;
  *(a2 + 64) = v18;

  sub_23843980C(v11, v13, v15 & 1);

  sub_2384397FC(v11, v13, v15 & 1);

  return result;
}

uint64_t sub_238722FA4(unsigned __int8 a1)
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v1 = qword_2814F1B90;
  v2 = sub_23875EA50();

  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_23875EA80();
  return v6;
}

unint64_t sub_23872318C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_238724228(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2387231B8()
{
  v0 = 0xD000000000000014;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E140, &unk_238775000);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_23875BD20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCD0();
  sub_23875BD10();
  v8 = sub_23875BD00();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) != 1)
  {
    v10 = sub_23875BCE0();
    v12 = v11;
    (*(v9 + 8))(v3, v8);
    v13 = v10 == 4477781 && v12 == 0xE300000000000000;
    if (v13 || (sub_23875F630() & 1) != 0)
    {
      goto LABEL_24;
    }

    v14 = v10 == 4475720 && v12 == 0xE300000000000000;
    if (v14 || (sub_23875F630() & 1) != 0)
    {
      goto LABEL_24;
    }

    v15 = v10 == 4478273 && v12 == 0xE300000000000000;
    if (v15 || (sub_23875F630() & 1) != 0 || v10 == 4473155 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 4479566 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
      goto LABEL_24;
    }

    if (v10 == 5395781 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 4476502 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
LABEL_148:

      goto LABEL_26;
    }

    if (v10 == 5853258 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 5722699 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
LABEL_38:

      v0 = 0xD000000000000013;
      goto LABEL_26;
    }

    if (v10 == 5853780 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
LABEL_46:

      v0 = 0xD00000000000001BLL;
      goto LABEL_26;
    }

    if (v10 == 5525069 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
LABEL_24:

      goto LABEL_25;
    }

    if (v10 == 5528139 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
LABEL_54:

      v0 = 0xD000000000000015;
      goto LABEL_26;
    }

    if ((v10 != 5259847 || v12 != 0xE300000000000000) && (sub_23875F630() & 1) == 0)
    {
      if (v10 == 5459017 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_24;
      }

      if (v10 == 5522498 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 4347218 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_54;
      }

      if (v10 == 5460545 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 5262403 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 5263171 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 5264707 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 5263172 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 5134413 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 5593429 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_148;
      }

      if (v10 == 5264197 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_24;
      }

      if (v10 == 5130062 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 5134913 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_54;
      }

      if (v10 == 4998471 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_148;
      }

      if (v10 == 4931916 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_38;
      }

      if (v10 == 5393993 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_46;
      }

      if (v10 == 4735317 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v10 == 4675920 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {

        v0 = 0xD000000000000017;
        goto LABEL_26;
      }

      if (v10 == 4606019 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_54;
      }

      if (v10 == 4675393 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_24;
      }

      if ((v10 != 5395010 || v12 != 0xE300000000000000) && (sub_23875F630() & 1) == 0)
      {
        if (v10 == 4411971 && v12 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
        {

          v0 = 0xD00000000000001DLL;
          goto LABEL_26;
        }

        if ((v10 != 5457991 || v12 != 0xE300000000000000) && (sub_23875F630() & 1) == 0 && (v10 != 4343892 || v12 != 0xE300000000000000) && (sub_23875F630() & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_148;
      }
    }

    v0 = 0xD000000000000018;
    goto LABEL_26;
  }

  sub_238439884(v3, &qword_27DF0E140, &unk_238775000);
LABEL_25:
  v0 = 0xD000000000000016;
LABEL_26:
  (*(v5 + 8))(v7, v4);
  return v0;
}

unint64_t sub_238723DD8()
{
  result = qword_27DF0AA10;
  if (!qword_27DF0AA10)
  {
    sub_238759A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AA10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BankConnectPrivacyNutritionLabelItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BankConnectPrivacyNutritionLabelItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_238723F80()
{
  result = qword_27DF153C0;
  if (!qword_27DF153C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15370, &qword_238782EC0);
    sub_238724094(&qword_27DF153C8, &qword_27DF15360, &qword_238782EB0, sub_238724064);
    sub_23843A3E8(&qword_27DF153E8, &qword_27DF15380, &qword_238782ED0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF153C0);
  }

  return result;
}

uint64_t sub_238724094(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238724118()
{
  result = qword_27DF153D8;
  if (!qword_27DF153D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15350, &qword_238782EA0);
    sub_23843A3E8(&qword_27DF153E0, &qword_27DF15348, &qword_238782E98, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF153D8);
  }

  return result;
}

unint64_t sub_2387241D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF153F0;
  if (!qword_27DF153F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF153F0);
  }

  return result;
}

unint64_t sub_238724228(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

uint64_t ShippingBox.init(backgroundColor:foregroundColor:scale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

double ShippingBox.body.getter@<D0>(double (**a1)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  *(v6 + 4) = v5;
  *a1 = sub_2387243BC;
  a1[1] = v6;

  return result;
}

double sub_2387242C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a4 = sub_23875E4A0();
  a4[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15408, &qword_2387830C8);
  sub_2387243E4(a2, a3, a1, (a4 + *(v10 + 44)));

  return result;
}

void sub_2387243E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v19[1] = a3;
  v20 = a2;
  v22 = a4;
  v6 = sub_23875E0E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15410, &qword_2387830D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  sub_23875ED50();
  v21 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E0D0();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v16 = sub_23875E150();

  (*(v7 + 8))(v9, v6);
  sub_23875C630();
  sub_23875E4A0();
  sub_23875C5C0();
  *&v25[22] = v26[6];
  *&v25[38] = v27;
  *&v25[6] = v26[5];
  *(v24 + 2) = *v25;
  LOBYTE(v26[0]) = 1;
  v23 = v16;
  LOWORD(v24[0]) = 1;
  *(&v24[1] + 2) = *&v25[16];
  *(&v24[2] + 2) = *&v25[32];
  *&v24[3] = *(&v27 + 1);
  *(&v24[3] + 1) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15418, &qword_2387830D8);
  sub_23872486C();
  sub_23875DBF0();
  v26[1] = v24[0];
  v26[2] = v24[1];
  v26[3] = v24[2];
  v26[4] = v24[3];
  v26[0] = v23;
  sub_238439884(v26, &qword_27DF15418, &qword_2387830D8);
  sub_238724924(v15, v12);
  v17 = v22;
  *v22 = a1;
  *(v17 + 4) = 256;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15428, &unk_2387830E0);
  sub_238724924(v12, v17 + *(v18 + 48));

  sub_238439884(v15, &qword_27DF15410, &qword_2387830D0);
  sub_238439884(v12, &qword_27DF15410, &qword_2387830D0);
}

double sub_238724798@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  *a1 = sub_238724994;
  a1[1] = v6;

  return result;
}

uint64_t objectdestroyTm_35()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_23872486C()
{
  result = qword_27DF15420;
  if (!qword_27DF15420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15418, &qword_2387830D8);
    sub_238464B48();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15420);
  }

  return result;
}

uint64_t sub_238724924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15410, &qword_2387830D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238724998@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectAppAuthorizationFlow(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BankConnectAuthorizationFlow(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23872BBFC(v2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23872BCA8(v15, v9, type metadata accessor for BankConnectWebAuthorizationFlow);
      v17 = sub_23875A9A0();
      (*(*(v17 - 8) + 16))(a1, v9, v17);
      v18 = type metadata accessor for BankConnectWebAuthorizationFlow;
      v19 = v9;
    }

    else
    {
      sub_23872BCA8(v15, v6, type metadata accessor for BankConnectExtensionAuthorizationFlow);
      v22 = sub_23875A9A0();
      (*(*(v22 - 8) + 16))(a1, v6, v22);
      v18 = type metadata accessor for BankConnectExtensionAuthorizationFlow;
      v19 = v6;
    }

    return sub_23872BD10(v19, v18);
  }

  else
  {
    sub_23872BCA8(v15, v12, type metadata accessor for BankConnectAppAuthorizationFlow);
    v20 = sub_23875A9A0();
    return (*(*(v20 - 8) + 32))(a1, v12, v20);
  }
}

uint64_t BankConnectAppAuthorizationFlow.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875A9A0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t BankConnectAuthorizationFlow.hash(into:)(uint64_t a1)
{
  v23 = a1;
  v2 = sub_23875C0A0();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BankConnectAppAuthorizationFlow(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BankConnectAuthorizationFlow(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23872BBFC(v1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23872BCA8(v16, v10, type metadata accessor for BankConnectWebAuthorizationFlow);
      MEMORY[0x23EE641F0](1);
      sub_23875A9A0();
      sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
      sub_23875E960();
      sub_23875B940();
      sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_23875E960();
      v18 = type metadata accessor for BankConnectWebAuthorizationFlow;
      v19 = v10;
    }

    else
    {
      sub_23872BCA8(v16, v7, type metadata accessor for BankConnectExtensionAuthorizationFlow);
      v20 = v23;
      MEMORY[0x23EE641F0](2);
      sub_23875A9A0();
      sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
      sub_23875E960();
      __swift_project_boxed_opaque_existential_1(&v7[*(v5 + 20)], *&v7[*(v5 + 20) + 24]);
      sub_2387591C0();
      sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0], MEMORY[0x277CC5DC8]);
      sub_23875E960();
      (*(v22 + 8))(v4, v2);
      sub_23872B17C(v20, *&v7[*(v5 + 24)]);
      v18 = type metadata accessor for BankConnectExtensionAuthorizationFlow;
      v19 = v7;
    }
  }

  else
  {
    sub_23872BCA8(v16, v13, type metadata accessor for BankConnectAppAuthorizationFlow);
    MEMORY[0x23EE641F0](0);
    sub_23875A9A0();
    sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
    sub_23875E960();
    v18 = type metadata accessor for BankConnectAppAuthorizationFlow;
    v19 = v13;
  }

  return sub_23872BD10(v19, v18);
}

uint64_t BankConnectAuthorizationFlow.hashValue.getter()
{
  sub_23875F700();
  BankConnectAuthorizationFlow.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t sub_2387251F4()
{
  sub_23875F700();
  BankConnectAuthorizationFlow.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t sub_238725238()
{
  sub_23875F700();
  BankConnectAuthorizationFlow.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t BankConnectAppAuthorizationFlow.hash(into:)(uint64_t a1)
{
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);

  return sub_23875E960();
}

uint64_t BankConnectAppAuthorizationFlow.hashValue.getter()
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238725388()
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238725410(uint64_t a1)
{
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);

  return sub_23875E960();
}

uint64_t sub_238725494()
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t BankConnectWebAuthorizationFlow.init(session:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23875A9A0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
  v8 = sub_23875B940();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t static BankConnectWebAuthorizationFlow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5F410]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for BankConnectWebAuthorizationFlow(0);

  return sub_23875B890();
}

uint64_t BankConnectWebAuthorizationFlow.hash(into:)(uint64_t a1)
{
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  type metadata accessor for BankConnectWebAuthorizationFlow(0);
  sub_23875B940();
  sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_23875E960();
}

uint64_t BankConnectWebAuthorizationFlow.hashValue.getter()
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  type metadata accessor for BankConnectWebAuthorizationFlow(0);
  sub_23875B940();
  sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238725804()
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  sub_23875B940();
  sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2387258F0(uint64_t a1)
{
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  sub_23875B940();
  sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_23875E960();
}

uint64_t sub_2387259C4()
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  sub_23875B940();
  sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238725AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE5F410]() & 1) == 0)
  {
    return 0;
  }

  return sub_23875B890();
}

uint64_t BankConnectExtensionAuthorizationFlow.init(session:extensionIdentity:params:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23875A9A0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  result = sub_2384347C0(a2, a4 + *(v9 + 20));
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t sub_238725BA8(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
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
    v25 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = *(*(result + 48) + 8 * v12);
    v15 = (*(result + 56) + 16 * v12);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;

    v19 = sub_2385477FC();
    v21 = v20;

    if ((v21 & 1) == 0)
    {

      return 0;
    }

    v22 = (*(a2 + 56) + 16 * v19);
    if (*v22 == v17 && v22[1] == v16)
    {

      result = v13;
      v7 = v25;
    }

    else
    {
      v24 = sub_23875F630();

      result = v13;
      v7 = v25;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238725D3C(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
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
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_23853B46C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_23875F630();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void BankConnectExtensionAuthorizationFlow.hash(into:)(uint64_t a1)
{
  v3 = sub_23875C0A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  v7 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  __swift_project_boxed_opaque_existential_1((v1 + *(v7 + 20)), *(v1 + *(v7 + 20) + 24));
  sub_2387591C0();
  sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0], MEMORY[0x277CC5DC8]);
  sub_23875E960();
  (*(v4 + 8))(v6, v3);
  sub_23872B17C(a1, *(v1 + *(v7 + 24)));
}

uint64_t BankConnectExtensionAuthorizationFlow.hashValue.getter()
{
  v1 = sub_23875C0A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  v5 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  __swift_project_boxed_opaque_existential_1((v0 + *(v5 + 20)), *(v0 + *(v5 + 20) + 24));
  sub_2387591C0();
  sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0], MEMORY[0x277CC5DC8]);
  sub_23875E960();
  (*(v2 + 8))(v4, v1);
  sub_23872B17C(v8, *(v0 + *(v5 + 24)));
  return sub_23875F760();
}

uint64_t sub_238726254(uint64_t a1)
{
  v3 = sub_23875C0A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  __swift_project_boxed_opaque_existential_1((v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 24));
  sub_2387591C0();
  sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0], MEMORY[0x277CC5DC8]);
  sub_23875E960();
  (*(v4 + 8))(v6, v3);
  sub_23872B17C(v9, *(v1 + *(a1 + 24)));
  return sub_23875F760();
}

void sub_23872640C(uint64_t a1, uint64_t a2)
{
  v5 = sub_23875C0A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  __swift_project_boxed_opaque_existential_1((v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 24));
  sub_2387591C0();
  sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0], MEMORY[0x277CC5DC8]);
  sub_23875E960();
  (*(v6 + 8))(v8, v5);
  sub_23872B17C(a1, *(v2 + *(a2 + 24)));
}

uint64_t sub_2387265B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875C0A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048], MEMORY[0x277CC8050]);
  sub_23875E960();
  __swift_project_boxed_opaque_existential_1((v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 24));
  sub_2387591C0();
  sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0], MEMORY[0x277CC5DC8]);
  sub_23875E960();
  (*(v5 + 8))(v7, v4);
  sub_23872B17C(v10, *(v2 + *(a2 + 24)));
  return sub_23875F760();
}

uint64_t sub_23872677C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_238758850();
  v5[7] = swift_task_alloc();
  v6 = sub_238758E20();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_23875A9A0();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = sub_23875ED50();
  v5[15] = sub_23875ED40();
  v9 = sub_23875ECE0();
  v5[16] = v9;
  v5[17] = v8;

  return MEMORY[0x2822009F8](sub_238726904, v9, v8);
}

uint64_t sub_238726904(uint64_t a1)
{
  v1[18] = OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager_authorizationConfiguration;
  v1[19] = sub_23875ED40();
  v3 = sub_23875ECE0();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](sub_23872699C, v3, v2);
}

uint64_t sub_23872699C()
{
  v1 = v0[18];
  v2 = v0[6];
  v3 = sub_23872C620();
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_238726A60;
  v5 = v0[13];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  return MEMORY[0x282117DF0](v5, v8, v6, v7, v2 + v1, v3);
}

uint64_t sub_238726A60()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_23872704C;
  }

  else
  {
    v5 = sub_238726B9C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_238726B9C()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_238726C00, v1, v2);
}

uint64_t sub_238726C00()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v4[11];
  v6 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277CC7648], v3);
  sub_2384877C4();
  sub_238758800();
  v7 = sub_23875F180();
  v0[24] = v7;
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_238726D28;
  v9 = v0[10];

  return MEMORY[0x282118D88](v9, v7, v5, v6);
}

uint64_t sub_238726D28()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *v0;

  (*(v4 + 8))(v3, v5);
  v7 = swift_task_alloc();
  v1[26] = v7;
  *v7 = v6;
  v7[1] = sub_238726F10;
  v8 = v1[13];
  v9 = v1[2];

  return sub_238727298(v9, v8);
}

uint64_t sub_238726F10()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_2387271EC;
  }

  else
  {
    v5 = sub_23872713C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23872704C()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_2387270B0, v1, v2);
}

uint64_t sub_2387270B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23872713C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2387271EC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_238727298(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = sub_23875A980();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v5 = sub_23875A9A0();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  v6 = sub_238757B60();
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();
  v7 = sub_238758E00();
  v3[37] = v7;
  v3[38] = *(v7 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v8 = sub_23875C1E0();
  v3[42] = v8;
  v3[43] = *(v8 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v9 = sub_23875B940();
  v3[49] = v9;
  v3[50] = *(v9 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BE0, &qword_238783420);
  v3[53] = v10;
  v3[54] = *(v10 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = sub_23875ED50();
  v3[57] = sub_23875ED40();
  v12 = sub_23875ECE0();
  v3[58] = v12;
  v3[59] = v11;

  return MEMORY[0x2822009F8](sub_23872761C, v12, v11);
}

uint64_t sub_23872761C()
{
  v95 = v0;
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  (*(v2 + 16))(v1, *(v0 + 216) + OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager__forceWebAuthorization, v3);
  sub_2387579E0();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 544) == 1)
  {
    v4 = *(v0 + 416);
    v5 = *(v0 + 208);

    sub_238729098(v5, v4);
    sub_23875C120();
    v6 = sub_23875C1B0();
    v7 = sub_23875EFC0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2383F8000, v6, v7, "Force web-based authorization flow.", v8, 2u);
      MEMORY[0x23EE64DF0](v8, -1, -1);
    }

    v9 = *(v0 + 400);
    v88 = *(v0 + 392);
    v91 = *(v0 + 416);
    v10 = *(v0 + 384);
    v12 = *(v0 + 336);
    v11 = *(v0 + 344);
    v14 = *(v0 + 248);
    v13 = *(v0 + 256);
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);

    (*(v11 + 8))(v10, v12);
    (*(v13 + 16))(v15, v16, v14);
    v17 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
    (*(v9 + 32))(v15 + *(v17 + 20), v91, v88);
    goto LABEL_5;
  }

  v19 = *(v0 + 408);
  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v22 = *(v0 + 272);
  v23 = *(v0 + 208);
  sub_23875A900();
  sub_238757AF0();
  (*(v21 + 8))(v20, v22);
  sub_238729098(v23, v19);
  v24 = *(v0 + 296);
  v25 = *(v0 + 304);
  v27 = *(v0 + 320);
  sub_238758DC0();
  *(v0 + 480) = sub_23872BC60(&qword_27DF154D0, MEMORY[0x277CC75A8], MEMORY[0x277CC75B0]);
  v28 = sub_23875F2F0();
  v29 = *(v25 + 8);
  *(v0 + 488) = v29;
  *(v0 + 496) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v27, v24);
  if (v28)
  {
    v30 = swift_task_alloc();
    *(v0 + 504) = v30;
    *v30 = v0;
    v30[1] = sub_238727EDC;
    v31 = *(v0 + 208);

    return sub_238729588(v0 + 120, v31);
  }

  else
  {
    v32 = *(v0 + 488);
    v33 = *(v0 + 320);
    v34 = *(v0 + 296);
    sub_238758DE0();
    v35 = sub_23875F2F0();
    v32(v33, v34);
    if ((v35 & 1) == 0)
    {

      v38 = *(v0 + 488);
      v39 = *(v0 + 320);
      v40 = *(v0 + 296);
      sub_238758DF0();
      v41 = sub_23875F2F0();
      v38(v39, v40);
      if ((v41 & 1) == 0)
      {
        v56 = *(v0 + 328);
        v58 = *(v0 + 304);
        v57 = *(v0 + 312);
        v59 = *(v0 + 296);
        sub_23875C120();
        (*(v58 + 16))(v57, v56, v59);
        v60 = sub_23875C1B0();
        v61 = sub_23875EFE0();
        v62 = os_log_type_enabled(v60, v61);
        v63 = *(v0 + 488);
        v65 = *(v0 + 344);
        v64 = *(v0 + 352);
        v66 = *(v0 + 336);
        v67 = *(v0 + 312);
        v68 = *(v0 + 296);
        if (v62)
        {
          v93 = *(v0 + 336);
          v69 = swift_slowAlloc();
          v87 = v61;
          v70 = swift_slowAlloc();
          v94 = v70;
          *v69 = 136315138;
          v71 = sub_238758DD0();
          v90 = v64;
          v73 = v72;
          v63(v67, v68);
          v74 = sub_2384615AC(v71, v73, &v94);

          *(v69 + 4) = v74;
          _os_log_impl(&dword_2383F8000, v60, v87, "Failed to start authorization with auth types:  %s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v70);
          MEMORY[0x23EE64DF0](v70, -1, -1);
          MEMORY[0x23EE64DF0](v69, -1, -1);

          v75 = (*(v65 + 8))(v90, v93);
        }

        else
        {

          v63(v67, v68);
          v75 = (*(v65 + 8))(v64, v66);
        }

        v78 = *(v0 + 488);
        v80 = *(v0 + 400);
        v79 = *(v0 + 408);
        v81 = *(v0 + 392);
        v82 = *(v0 + 328);
        v83 = *(v0 + 296);
        sub_23872C5CC(v75, v76, v77);
        swift_allocError();
        *v84 = 1;
        swift_willThrow();
        (*(v80 + 8))(v79, v81);
        v78(v82, v83);

        v18 = *(v0 + 8);
        goto LABEL_7;
      }

      sub_23875C120();
      v42 = sub_23875C1B0();
      v43 = sub_23875EFC0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_2383F8000, v42, v43, "Starting authorization using web-based flow.", v44, 2u);
        MEMORY[0x23EE64DF0](v44, -1, -1);
      }

      v86 = *(v0 + 488);
      v45 = *(v0 + 400);
      v89 = *(v0 + 392);
      v92 = *(v0 + 408);
      v46 = *(v0 + 360);
      v47 = v42;
      v49 = *(v0 + 336);
      v48 = *(v0 + 344);
      v50 = *(v0 + 328);
      v51 = *(v0 + 296);
      v52 = *(v0 + 256);
      v85 = *(v0 + 248);
      v53 = *(v0 + 200);
      v54 = *(v0 + 208);

      (*(v48 + 8))(v46, v49);
      v86(v50, v51);
      (*(v52 + 16))(v53, v54, v85);
      v55 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
      (*(v45 + 32))(v53 + *(v55 + 20), v92, v89);
LABEL_5:
      type metadata accessor for BankConnectAuthorizationFlow(0);
      swift_storeEnumTagMultiPayload();

      v18 = *(v0 + 8);
LABEL_7:

      return v18();
    }

    *(v0 + 512) = sub_23875ED40();
    v37 = sub_23875ECE0();
    *(v0 + 520) = v37;
    *(v0 + 528) = v36;

    return MEMORY[0x2822009F8](sub_2387287BC, v37, v36);
  }
}

uint64_t sub_238727EDC()
{
  v1 = *v0;

  v2 = *(v1 + 472);
  v3 = *(v1 + 464);

  return MEMORY[0x2822009F8](sub_238727FFC, v3, v2);
}

uint64_t sub_238727FFC()
{
  v91 = v0;
  if (*(v0 + 144))
  {

    sub_2384347C0((v0 + 120), v0 + 80);
    sub_23875C120();
    v1 = sub_23875C1B0();
    v2 = sub_23875EFC0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2383F8000, v1, v2, "Authentication extension match found, using extension-based flow.", v3, 2u);
      MEMORY[0x23EE64DF0](v3, -1, -1);
    }

    v4 = *(v0 + 376);
    v5 = *(v0 + 336);
    v6 = *(v0 + 344);
    v7 = v1;
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v11 = *(v0 + 240);
    v10 = *(v0 + 248);
    v12 = *(v0 + 232);
    v86 = *(v0 + 224);
    v13 = *(v0 + 208);

    (*(v6 + 8))(v4, v5);
    (*(v9 + 16))(v8, v13, v10);
    sub_23845C998(v0 + 80, v0 + 160);
    sub_23875A990();
    v14 = sub_23875A960();
    (*(v12 + 8))(v11, v86);
    if (v14)
    {
      v87 = v14;
    }

    else
    {
      v87 = sub_23854B25C(MEMORY[0x277D84F90]);
    }

    v82 = *(v0 + 488);
    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    v23 = *(v0 + 392);
    v24 = *(v0 + 328);
    v25 = *(v0 + 296);
    v26 = *(v0 + 256);
    v27 = *(v0 + 264);
    v28 = *(v0 + 248);
    v29 = *(v0 + 200);
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
    (*(v22 + 8))(v21, v23);
    v82(v24, v25);
    (*(v26 + 32))(v29, v27, v28);
    v30 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
    sub_2384347C0((v0 + 160), v29 + *(v30 + 20));
    *(v29 + *(v30 + 24)) = v87;
    type metadata accessor for BankConnectAuthorizationFlow(0);
    goto LABEL_12;
  }

  sub_238439884(v0 + 120, &qword_27DF154D8, &qword_238783428);
  v15 = *(v0 + 488);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  sub_238758DE0();
  v18 = sub_23875F2F0();
  v15(v16, v17);
  if ((v18 & 1) == 0)
  {

    v32 = *(v0 + 488);
    v33 = *(v0 + 320);
    v34 = *(v0 + 296);
    sub_238758DF0();
    v35 = sub_23875F2F0();
    v32(v33, v34);
    if ((v35 & 1) == 0)
    {
      v50 = *(v0 + 328);
      v52 = *(v0 + 304);
      v51 = *(v0 + 312);
      v53 = *(v0 + 296);
      sub_23875C120();
      (*(v52 + 16))(v51, v50, v53);
      v54 = sub_23875C1B0();
      v55 = sub_23875EFE0();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 488);
      v59 = *(v0 + 344);
      v58 = *(v0 + 352);
      v60 = *(v0 + 336);
      v61 = *(v0 + 312);
      v62 = *(v0 + 296);
      if (v56)
      {
        v89 = *(v0 + 336);
        v63 = swift_slowAlloc();
        v83 = v55;
        v64 = swift_slowAlloc();
        v90 = v64;
        *v63 = 136315138;
        v65 = sub_238758DD0();
        v85 = v58;
        v67 = v66;
        v57(v61, v62);
        v68 = sub_2384615AC(v65, v67, &v90);

        *(v63 + 4) = v68;
        _os_log_impl(&dword_2383F8000, v54, v83, "Failed to start authorization with auth types:  %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x23EE64DF0](v64, -1, -1);
        MEMORY[0x23EE64DF0](v63, -1, -1);

        v69 = (*(v59 + 8))(v85, v89);
      }

      else
      {

        v57(v61, v62);
        v69 = (*(v59 + 8))(v58, v60);
      }

      v72 = *(v0 + 488);
      v74 = *(v0 + 400);
      v73 = *(v0 + 408);
      v75 = *(v0 + 392);
      v76 = *(v0 + 328);
      v77 = *(v0 + 296);
      sub_23872C5CC(v69, v70, v71);
      swift_allocError();
      *v78 = 1;
      swift_willThrow();
      (*(v74 + 8))(v73, v75);
      v72(v76, v77);

      v31 = *(v0 + 8);
      goto LABEL_13;
    }

    sub_23875C120();
    v36 = sub_23875C1B0();
    v37 = sub_23875EFC0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2383F8000, v36, v37, "Starting authorization using web-based flow.", v38, 2u);
      MEMORY[0x23EE64DF0](v38, -1, -1);
    }

    v81 = *(v0 + 488);
    v39 = *(v0 + 400);
    v84 = *(v0 + 392);
    v88 = *(v0 + 408);
    v40 = *(v0 + 360);
    v41 = v36;
    v43 = *(v0 + 336);
    v42 = *(v0 + 344);
    v44 = *(v0 + 328);
    v45 = *(v0 + 296);
    v46 = *(v0 + 256);
    v80 = *(v0 + 248);
    v47 = *(v0 + 200);
    v48 = *(v0 + 208);

    (*(v42 + 8))(v40, v43);
    v81(v44, v45);
    (*(v46 + 16))(v47, v48, v80);
    v49 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
    (*(v39 + 32))(v47 + *(v49 + 20), v88, v84);
    type metadata accessor for BankConnectAuthorizationFlow(0);
LABEL_12:
    swift_storeEnumTagMultiPayload();

    v31 = *(v0 + 8);
LABEL_13:

    return v31();
  }

  *(v0 + 512) = sub_23875ED40();
  v20 = sub_23875ECE0();
  *(v0 + 520) = v20;
  *(v0 + 528) = v19;

  return MEMORY[0x2822009F8](sub_2387287BC, v20, v19);
}

uint64_t sub_2387287BC(uint64_t a1)
{
  v2 = sub_23875ED40();
  *(v1 + 536) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = sub_23875ECE0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](sub_238728850, v3, v5);
}

uint64_t sub_238728850()
{
  v0[2] = v0;
  v0[7] = v0 + 545;
  v0[3] = sub_238728904;
  v1 = swift_continuation_init();
  sub_2386D9B00(v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238728904()
{
  v1 = *v0;
  *(*v0 + 546) = *(*v0 + 545);
  v2 = *(v1 + 528);
  v3 = *(v1 + 520);

  return MEMORY[0x2822009F8](sub_238728A10, v3, v2);
}

uint64_t sub_238728A10()
{

  v1 = *(v0 + 464);
  v2 = *(v0 + 472);

  return MEMORY[0x2822009F8](sub_238728A74, v1, v2);
}

uint64_t sub_238728A74()
{
  v75 = v0;
  v1 = *(v0 + 546);

  if (v1 == 1)
  {
    sub_23875C120();
    v2 = sub_23875C1B0();
    v3 = sub_23875EFC0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2383F8000, v2, v3, "Able to start authorization using app-based flow.", v4, 2u);
      MEMORY[0x23EE64DF0](v4, -1, -1);
    }

    v69 = *(v0 + 488);
    v5 = *(v0 + 400);
    v62 = *(v0 + 392);
    v63 = *(v0 + 408);
    v6 = *(v0 + 368);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 328);
    v10 = *(v0 + 296);
    v11 = *(v0 + 256);
    v12 = *(v0 + 200);
    v65 = *(v0 + 208);
    v67 = *(v0 + 248);

    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v63, v62);
    v69(v9, v10);
    (*(v11 + 16))(v12, v65, v67);
    type metadata accessor for BankConnectAuthorizationFlow(0);
  }

  else
  {
    v13 = *(v0 + 488);
    v14 = *(v0 + 320);
    v15 = *(v0 + 296);
    sub_238758DF0();
    v16 = sub_23875F2F0();
    v13(v14, v15);
    if ((v16 & 1) == 0)
    {
      v32 = *(v0 + 328);
      v34 = *(v0 + 304);
      v33 = *(v0 + 312);
      v35 = *(v0 + 296);
      sub_23875C120();
      (*(v34 + 16))(v33, v32, v35);
      v36 = sub_23875C1B0();
      v37 = sub_23875EFE0();
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 488);
      v41 = *(v0 + 344);
      v40 = *(v0 + 352);
      v42 = *(v0 + 336);
      v43 = *(v0 + 312);
      v44 = *(v0 + 296);
      if (v38)
      {
        v73 = *(v0 + 336);
        v45 = swift_slowAlloc();
        v68 = v37;
        v46 = swift_slowAlloc();
        v74 = v46;
        *v45 = 136315138;
        v47 = sub_238758DD0();
        v71 = v40;
        v49 = v48;
        v39(v43, v44);
        v50 = sub_2384615AC(v47, v49, &v74);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_2383F8000, v36, v68, "Failed to start authorization with auth types:  %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x23EE64DF0](v46, -1, -1);
        MEMORY[0x23EE64DF0](v45, -1, -1);

        v51 = (*(v41 + 8))(v71, v73);
      }

      else
      {

        v39(v43, v44);
        v51 = (*(v41 + 8))(v40, v42);
      }

      v54 = *(v0 + 488);
      v56 = *(v0 + 400);
      v55 = *(v0 + 408);
      v57 = *(v0 + 392);
      v58 = *(v0 + 328);
      v59 = *(v0 + 296);
      sub_23872C5CC(v51, v52, v53);
      swift_allocError();
      *v60 = 1;
      swift_willThrow();
      (*(v56 + 8))(v55, v57);
      v54(v58, v59);

      v31 = *(v0 + 8);
      goto LABEL_14;
    }

    sub_23875C120();
    v17 = sub_23875C1B0();
    v18 = sub_23875EFC0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2383F8000, v17, v18, "Starting authorization using web-based flow.", v19, 2u);
      MEMORY[0x23EE64DF0](v19, -1, -1);
    }

    v66 = *(v0 + 488);
    v20 = *(v0 + 400);
    v70 = *(v0 + 392);
    v72 = *(v0 + 408);
    v21 = *(v0 + 360);
    v22 = v17;
    v24 = *(v0 + 336);
    v23 = *(v0 + 344);
    v25 = *(v0 + 328);
    v26 = *(v0 + 296);
    v27 = *(v0 + 256);
    v64 = *(v0 + 248);
    v28 = *(v0 + 200);
    v29 = *(v0 + 208);

    (*(v23 + 8))(v21, v24);
    v66(v25, v26);
    (*(v27 + 16))(v28, v29, v64);
    v30 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
    (*(v20 + 32))(v28 + *(v30 + 20), v72, v70);
    type metadata accessor for BankConnectAuthorizationFlow(0);
  }

  swift_storeEnumTagMultiPayload();

  v31 = *(v0 + 8);
LABEL_14:

  return v31();
}

void sub_238729098(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v41 = sub_23875A9A0();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875C1E0();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875A980();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  sub_23875A990();
  sub_23875A950();
  v35 = *(v8 + 8);
  v36 = v7;
  v35(v10, v7);
  sub_23875B910();

  v14 = sub_23875B940();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_238439884(v13, &qword_27DF0D040, &qword_2387676A0);
LABEL_7:
    v20 = v42;
    sub_23875C120();
    v21 = v38;
    v22 = v41;
    (*(v38 + 16))(v4, a1, v41);
    v23 = sub_23875C1B0();
    v24 = sub_23875EFE0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136315138;
      LODWORD(v37) = v24;
      sub_23875A990();
      v27 = sub_23875A950();
      v29 = v28;
      v35(v10, v36);
      (*(v21 + 8))(v4, v41);
      v30 = sub_2384615AC(v27, v29, &v43);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_2383F8000, v23, v37, "Failed to parse authorization URL: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x23EE64DF0](v26, -1, -1);
      MEMORY[0x23EE64DF0](v25, -1, -1);

      v31 = (*(v39 + 8))(v42, v40);
    }

    else
    {

      (*(v21 + 8))(v4, v22);
      v31 = (*(v39 + 8))(v20, v40);
    }

    sub_23872C5CC(v31, v32, v33);
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    return;
  }

  (*(v15 + 32))(v37, v13, v14);
  v16 = sub_23875B820();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    (*(v15 + 8))(v37, v14);
    goto LABEL_7;
  }
}

uint64_t sub_238729588(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23875C1E0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_238757750();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_238757B60();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  sub_23875ED50();
  v3[15] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v3[16] = v8;
  v3[17] = v7;

  return MEMORY[0x2822009F8](sub_238729744, v8, v7);
}

uint64_t sub_238729744(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  sub_23875A900();
  v5 = sub_238757B20();
  v1[18] = v5;
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    if (*(v5 + 16))
    {
      v7 = v1[10];
      v6 = v1[11];
      v8 = v1[9];
      v9 = v1[4];
      v10 = v9[6];
      v11 = v9[7];
      __swift_project_boxed_opaque_existential_1(v9 + 3, v10);
      (*(v7 + 104))(v6, *MEMORY[0x277CC6560], v8);
      v12 = sub_238757740();
      v14 = v13;
      v1[19] = v13;
      (*(v7 + 8))(v6, v8);
      v15 = swift_task_alloc();
      v1[20] = v15;
      *v15 = v1;
      v15[1] = sub_238729A48;

      return MEMORY[0x282117AE8](v12, v14, v5, v10, v11);
    }

    v16 = v1 + 8;

    sub_23875C120();
    v17 = sub_23875C1B0();
    v18 = sub_23875EFC0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Extension bundle identifiers were empty.";
      goto LABEL_10;
    }
  }

  else
  {
    v16 = v1 + 7;

    sub_23875C120();
    v17 = sub_23875C1B0();
    v18 = sub_23875EFC0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "No extension bundle identifiers provided for institution.";
LABEL_10:
      _os_log_impl(&dword_2383F8000, v17, v18, v20, v19, 2u);
      MEMORY[0x23EE64DF0](v19, -1, -1);
    }
  }

  v21 = *v16;
  v22 = v1[5];
  v23 = v1[6];
  v24 = v1[2];

  (*(v23 + 8))(v21, v22);
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;

  v25 = v1[1];

  return v25();
}

uint64_t sub_238729A48(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return MEMORY[0x2822009F8](sub_238729BB0, v4, v3);
}

uint64_t sub_238729BB0()
{
  v1 = v0[21];

  v2 = *(v1 + 16);
  v3 = v0[2];
  if (v2)
  {
    sub_23845C998(v0[21] + 32, v0[2]);
  }

  else
  {

    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_238729C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23875C1E0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_23875A070();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_23875A9A0();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_238758E20();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_23875ED50();
  v4[19] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v4[20] = v10;
  v4[21] = v9;

  return MEMORY[0x2822009F8](sub_238729E98, v10, v9);
}

uint64_t sub_238729E98()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 40);
  v4 = v3[11];
  v5 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v4);
  *(v0 + 280) = *MEMORY[0x277CC7648];
  v6 = *(v2 + 104);
  *(v0 + 176) = v6;
  *(v0 + 184) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1);
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_238729FA8;
  v8 = *(v0 + 144);
  v9 = MEMORY[0x277D84F90];

  return MEMORY[0x282118D80](v8, v9, v4, v5);
}

uint64_t sub_238729FA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v4[25] = v1;

  v6 = (v5 + 8);
  v7 = v4[18];
  v8 = v4[15];
  if (v1)
  {
    v9 = *v6;
    v4[33] = *v6;
    v9(v7, v8);
    v10 = v4[20];
    v11 = v4[21];
    v12 = sub_23872A840;
  }

  else
  {
    v4[26] = a1;
    v13 = *v6;
    v4[27] = *v6;
    v13(v7, v8);
    v10 = v4[20];
    v11 = v4[21];
    v12 = sub_23872A13C;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_23872A13C()
{
  v1 = v0[13];
  v0[14] = vextq_s8(v1, v1, 8uLL);
  v2 = v0[7].i64[0];
  v3 = v0[2].i64[1];
  v4 = v1.i64[0];

  sub_238724998(v2);
  v5 = OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager_authorizationConfiguration;
  v6 = swift_task_alloc();
  v0[15].i64[0] = v6;
  *v6 = v0;
  v6[1] = sub_23872A230;
  v7 = v0[7].i64[0];
  v8 = v0[2].i64[0];
  v9 = v0[1].i64[0];

  return MEMORY[0x282117DE8](v9, v7, v8, v4, v3 + v5);
}

uint64_t sub_23872A230()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);

  v3 = v2[21];
  v4 = v2[20];
  if (v0)
  {
    v5 = sub_23872AA68;
  }

  else
  {
    v5 = sub_23872A3D4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23872A3D4()
{
  if (sub_2387593C0())
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 280);
    v3 = *(v0 + 136);
    v4 = *(v0 + 120);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = *(v0 + 40);
    v9 = v8[11];
    v15 = v8[12];
    __swift_project_boxed_opaque_existential_1(v8 + 8, v9);
    v1(v3, v2, v4);
    (*(v6 + 104))(v5, *MEMORY[0x277CC7CE0], v7);
    v10 = swift_task_alloc();
    *(v0 + 256) = v10;
    *v10 = v0;
    v10[1] = sub_23872A598;
    v11 = *(v0 + 136);
    v12 = *(v0 + 88);

    return MEMORY[0x282118D90](v11, v12, v9, v15);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_23872A598()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 88);
  v6 = *(*v0 + 80);
  v7 = *(*v0 + 72);

  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  v8 = *(v1 + 168);
  v9 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_23872A794, v9, v8);
}

uint64_t sub_23872A794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23872A840(uint64_t a1)
{
  v2 = v1[25];
  sub_23875C120();
  v3 = v2;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v4, v5, "Fraud assessment computation has failed, proceeding without it: %@.", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  v11 = v1[25];
  v13 = v1[7];
  v12 = v1[8];
  v14 = v1[6];

  (*(v13 + 8))(v12, v14);
  sub_2387593E0();
  swift_allocObject();
  v15 = sub_2387593D0();

  v1[28] = v1[33];
  v1[29] = v15;
  v16 = v1[14];
  v17 = v1[5];

  sub_238724998(v16);
  v18 = OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager_authorizationConfiguration;
  v19 = swift_task_alloc();
  v1[30] = v19;
  *v19 = v1;
  v19[1] = sub_23872A230;
  v20 = v1[14];
  v21 = v1[4];
  v22 = v1[2];

  return MEMORY[0x282117DE8](v22, v20, v21, v15, v17 + v18);
}

uint64_t sub_23872AA68()
{
  if (sub_2387593C0())
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 280);
    v3 = *(v0 + 136);
    v4 = *(v0 + 120);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = *(v0 + 40);
    v9 = v8[11];
    v15 = v8[12];
    __swift_project_boxed_opaque_existential_1(v8 + 8, v9);
    v1(v3, v2, v4);
    (*(v6 + 104))(v5, *MEMORY[0x277CC7CE8], v7);
    v10 = swift_task_alloc();
    *(v0 + 272) = v10;
    *v10 = v0;
    v10[1] = sub_23872AC38;
    v11 = *(v0 + 136);
    v12 = *(v0 + 88);

    return MEMORY[0x282118D90](v11, v12, v9, v15);
  }

  else
  {

    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_23872AC38()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 88);
  v6 = *(*v0 + 80);
  v7 = *(*v0 + 72);

  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  v8 = *(v1 + 168);
  v9 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_23872AE34, v9, v8);
}

uint64_t sub_23872AE34()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23872AEFC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v1 = OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager_authorizationConfiguration;
  v2 = sub_23875AB40();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager__forceWebAuthorization;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BE0, &qword_238783420);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  return swift_deallocClassInstance();
}

uint64_t sub_23872B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_238449A7C;

  return sub_23872677C(a1, a2, a3, a4);
}

uint64_t sub_23872B0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2384494A4;

  return sub_238729C80(a1, a2, a3);
}

void sub_23872B17C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x23EE641F0](v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_23875EB30();

        sub_23875EB30();

        v7 ^= sub_23875F760();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t _s12FinanceKitUI28BankConnectAuthorizationFlowO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_23875C0A0();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = &v44 - v6;
  v49 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  MEMORY[0x28223BE20](v49);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BankConnectAppAuthorizationFlow(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BankConnectAuthorizationFlow(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF154F0, &unk_238783430);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v44 - v24;
  v27 = *(v26 + 56);
  sub_23872BBFC(a1, &v44 - v24);
  sub_23872BBFC(v51, &v25[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_23872BBFC(v25, v22);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_23872BCA8(&v25[v27], v13, type metadata accessor for BankConnectAppAuthorizationFlow);
      v40 = MEMORY[0x23EE5F410](v22, v13);
      sub_23872BD10(v13, type metadata accessor for BankConnectAppAuthorizationFlow);
      sub_23872BD10(v22, type metadata accessor for BankConnectAppAuthorizationFlow);
      sub_23872BD10(v25, type metadata accessor for BankConnectAuthorizationFlow);
      return v40 & 1;
    }

    v30 = type metadata accessor for BankConnectAppAuthorizationFlow;
    v31 = v22;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_23872BBFC(v25, v16);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = v50;
      sub_23872BCA8(&v25[v27], v50, type metadata accessor for BankConnectExtensionAuthorizationFlow);
      if (MEMORY[0x23EE5F410](v16, v32))
      {
        v33 = v49;
        __swift_project_boxed_opaque_existential_1(&v16[*(v49 + 20)], *&v16[*(v49 + 20) + 24]);
        v34 = v45;
        sub_2387591C0();
        __swift_project_boxed_opaque_existential_1((v32 + *(v33 + 20)), *(v32 + *(v33 + 20) + 24));
        v35 = v46;
        sub_2387591C0();
        sub_23872BC60(&qword_27DF154E8, MEMORY[0x277CC5DC0], MEMORY[0x277CC5DD0]);
        v36 = v48;
        v37 = sub_23875E9E0();
        v38 = *(v47 + 8);
        v38(v35, v36);
        v38(v34, v36);
        if (v37)
        {
          v39 = sub_238725D3C(*&v16[*(v49 + 24)], *(v32 + *(v49 + 24)));
          sub_23872BD10(v32, type metadata accessor for BankConnectExtensionAuthorizationFlow);
          sub_23872BD10(v16, type metadata accessor for BankConnectExtensionAuthorizationFlow);
          if (v39)
          {
            goto LABEL_13;
          }

          goto LABEL_22;
        }
      }

      sub_23872BD10(v32, type metadata accessor for BankConnectExtensionAuthorizationFlow);
      v41 = v16;
      v42 = type metadata accessor for BankConnectExtensionAuthorizationFlow;
LABEL_21:
      sub_23872BD10(v41, v42);
LABEL_22:
      sub_23872BD10(v25, type metadata accessor for BankConnectAuthorizationFlow);
      goto LABEL_23;
    }

    v30 = type metadata accessor for BankConnectExtensionAuthorizationFlow;
    v31 = v16;
LABEL_16:
    sub_23872BD10(v31, v30);
    sub_238439884(v25, &qword_27DF154F0, &unk_238783430);
LABEL_23:
    v40 = 0;
    return v40 & 1;
  }

  sub_23872BBFC(v25, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v30 = type metadata accessor for BankConnectWebAuthorizationFlow;
    v31 = v19;
    goto LABEL_16;
  }

  sub_23872BCA8(&v25[v27], v10, type metadata accessor for BankConnectWebAuthorizationFlow);
  if ((MEMORY[0x23EE5F410](v19, v10) & 1) == 0)
  {
    sub_23872BD10(v10, type metadata accessor for BankConnectWebAuthorizationFlow);
    goto LABEL_20;
  }

  v29 = sub_23875B890();
  sub_23872BD10(v10, type metadata accessor for BankConnectWebAuthorizationFlow);
  if ((v29 & 1) == 0)
  {
LABEL_20:
    v42 = type metadata accessor for BankConnectWebAuthorizationFlow;
    v41 = v19;
    goto LABEL_21;
  }

  sub_23872BD10(v19, type metadata accessor for BankConnectWebAuthorizationFlow);
LABEL_13:
  sub_23872BD10(v25, type metadata accessor for BankConnectAuthorizationFlow);
  v40 = 1;
  return v40 & 1;
}

uint64_t _s12FinanceKitUI37BankConnectExtensionAuthorizationFlowV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875C0A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  if (MEMORY[0x23EE5F410](a1, a2, v9) & 1) != 0 && (v12 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0), __swift_project_boxed_opaque_existential_1((a1 + *(v12 + 20)), *(a1 + *(v12 + 20) + 24)), sub_2387591C0(), __swift_project_boxed_opaque_existential_1((a2 + *(v12 + 20)), *(a2 + *(v12 + 20) + 24)), sub_2387591C0(), sub_23872BC60(&qword_27DF154E8, MEMORY[0x277CC5DC0], MEMORY[0x277CC5DD0]), v13 = sub_23875E9E0(), v14 = *(v5 + 8), v14(v7, v4), v14(v11, v4), (v13))
  {
    v15 = sub_238725D3C(*(a1 + *(v12 + 24)), *(a2 + *(v12 + 24)));
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_23872BBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationFlow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23872BC60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23872BCA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23872BD10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23872BE90(uint64_t a1)
{
  result = type metadata accessor for BankConnectAppAuthorizationFlow(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BankConnectWebAuthorizationFlow(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for BankConnectExtensionAuthorizationFlow(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23872BF40(uint64_t a1)
{
  result = sub_23875A9A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23872BFD4(uint64_t a1)
{
  result = sub_23875A9A0();
  if (v2 <= 0x3F)
  {
    result = sub_23875B940();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23872C080(uint64_t a1)
{
  sub_23875A9A0();
  if (v1 <= 0x3F)
  {
    sub_23872C11C();
    if (v2 <= 0x3F)
    {
      sub_23872C180();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23872C11C()
{
  result = qword_27DF15490;
  if (!qword_27DF15490)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DF15490);
  }

  return result;
}

void sub_23872C180()
{
  if (!qword_27DF15498)
  {
    v0 = sub_23875E940();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF15498);
    }
  }
}

uint64_t dispatch thunk of BankConnectAuthorizationFlowManaging.initiateFlow(with:fpanID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_238449A7C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of BankConnectAuthorizationFlowManaging.completeFlow(_:withAuthorizationPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2384494A4;

  return v13(a1, a2, a3, a4, a5);
}

void sub_23872C494(uint64_t a1)
{
  sub_23875AB40();
  if (v1 <= 0x3F)
  {
    sub_23872C57C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23872C57C()
{
  if (!qword_27DF154C0)
  {
    v0 = sub_238757A10();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF154C0);
    }
  }
}

unint64_t sub_23872C5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF154C8;
  if (!qword_27DF154C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF154C8);
  }

  return result;
}

uint64_t sub_23872C620()
{
  v0 = sub_238758850();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 bundleIdentifier];

  if (!v8)
  {
    return 0;
  }

  sub_23875EA80();

  sub_238758830();
  sub_2387587F0();
  sub_23872BC60(&qword_27DF154E0, MEMORY[0x277CC7098], MEMORY[0x277CC70B8]);
  sub_23875EC40();
  sub_23875EC40();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_23875F630() ^ 1;
  }

  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v6, v0);

  return v9 & 1;
}

unint64_t sub_23872C854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF154F8;
  if (!qword_27DF154F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF154F8);
  }

  return result;
}

id CSSearchQueryFactory.make(queryString:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v4 = sub_23875EC60();
  [v3 setFetchAttributes_];

  v5 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v6 = v3;
  v7 = sub_23875EA50();
  v8 = [v5 initWithQueryString:v7 queryContext:v6];

  return v8;
}

id sub_23872C97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v4 = sub_23875EC60();
  [v3 setFetchAttributes_];

  v5 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v6 = v3;
  v7 = sub_23875EA50();
  v8 = [v5 initWithQueryString:v7 queryContext:v6];

  return v8;
}

id sub_23872CA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23875EA50();

  if (a3)
  {
    v5 = sub_23875EC60();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithQueryString:v4 attributes:v5];

  return v6;
}

void (*sub_23872CAE4())(uint64_t a1)
{
  result = [v0 foundItemsHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_23872D5F4;
  }

  return result;
}

void sub_23872CB58(uint64_t a1, uint64_t a2)
{
  sub_23872D578();
  v3 = sub_23875EC60();
  (*(a2 + 16))(a2, v3);
}

void sub_23872CBC4(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_23872CC6C;
    v5[3] = &block_descriptor_26_0;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setFoundItemsHandler_];
  _Block_release(v4);
}

double sub_23872CC6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_23872D578();
  v3 = sub_23875EC80();

  v2(v3);

  return result;
}

uint64_t (*sub_23872CCE0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23872CD50(v2);
  return sub_23872D5EC;
}

void (*sub_23872CD50(uint64_t *a1))(uint64_t a1, char a2, double a3)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 foundItemsHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_23872D570;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_23872CE18;
}

void sub_23872CE18(uint64_t a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 48);
  if (a2)
  {
    if (v4)
    {
      v5 = v3[7];
      v3[4] = v4;
      v3[5] = v5;
      *v3 = MEMORY[0x277D85DD0];
      v3[1] = 1107296256;
      v3[2] = sub_23872CC6C;
      v3[3] = &block_descriptor_17;
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    [v3[8] setFoundItemsHandler_];
    _Block_release(v6);
    sub_2384348A8(v3[6], v3[7]);
  }

  else
  {
    if (v4)
    {
      v7 = v3[7];
      v3[4] = v4;
      v3[5] = v7;
      *v3 = MEMORY[0x277D85DD0];
      v3[1] = 1107296256;
      v3[2] = sub_23872CC6C;
      v3[3] = &block_descriptor_20;
      v8 = _Block_copy(v3);
    }

    else
    {
      v8 = 0;
    }

    [v3[8] setFoundItemsHandler_];
    _Block_release(v8);
  }

  free(v3);
}

void (*sub_23872CF80())(uint64_t a1)
{
  result = [v0 completionHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_23872D5F0;
  }

  return result;
}

void sub_23872CFF4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_23875B720();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_23872D058(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_23872D100;
    v5[3] = &block_descriptor_10;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setCompletionHandler_];
  _Block_release(v4);
}

void sub_23872D100(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t (*sub_23872D16C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23872D228(v2);
  return sub_23872D1DC;
}

void sub_23872D1E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_23872D228(uint64_t *a1))(uint64_t a1, char a2, double a3)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 completionHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_23872D568;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_23872D2F0;
}

void sub_23872D2F0(uint64_t a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 48);
  if (a2)
  {
    if (v4)
    {
      v5 = v3[7];
      v3[4] = v4;
      v3[5] = v5;
      *v3 = MEMORY[0x277D85DD0];
      v3[1] = 1107296256;
      v3[2] = sub_23872D100;
      v3[3] = &block_descriptor_21;
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    [v3[8] setCompletionHandler_];
    _Block_release(v6);
    sub_2384348A8(v3[6], v3[7]);
  }

  else
  {
    if (v4)
    {
      v7 = v3[7];
      v3[4] = v4;
      v3[5] = v7;
      *v3 = MEMORY[0x277D85DD0];
      v3[1] = 1107296256;
      v3[2] = sub_23872D100;
      v3[3] = &block_descriptor_7;
      v8 = _Block_copy(v3);
    }

    else
    {
      v8 = 0;
    }

    [v3[8] setCompletionHandler_];
    _Block_release(v8);
  }

  free(v3);
}

double block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_23872D578()
{
  result = qword_27DF15500;
  if (!qword_27DF15500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF15500);
  }

  return result;
}

uint64_t _s5LargeVMa(uint64_t a1)
{
  result = qword_2814F10A8;
  if (!qword_2814F10A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23872D66C(uint64_t a1)
{
  type metadata accessor for OrderWidgetTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_238487958(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_238566280();
      if (v3 <= 0x3F)
      {
        sub_238487958(319, &qword_2814F09C0, MEMORY[0x277CE3AF8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23872D774@<X0>(void *a1@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15508, &qword_238783600);
  MEMORY[0x28223BE20](v39);
  v4 = v35 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15510, &qword_238783608);
  MEMORY[0x28223BE20](v38);
  v6 = v35 - v5;
  v7 = _s5LargeVMa(0);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v35 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15518, &qword_238783610);
  MEMORY[0x28223BE20](v37);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v35 - v16;
  v18 = *v1;
  v19 = *(*v1 + 16);
  if (v19 == 1)
  {
    v20 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
    v21 = *(v20 - 8);
    v35[1] = a1;
    v22 = v21;
    sub_238731F9C(v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v12, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    v23 = *(v22 + 56);
    v23(v12, 0, 1, v20);
    sub_238731F9C(v1, v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), _s5LargeVMa);
    v24 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v25 = swift_allocObject();
    sub_23873218C(v9, v25 + v24, _s5LargeVMa);
    v23(v14, 1, 1, v20);
    sub_2384895F4(v12, v14);
    v26 = &v14[*(v37 + 36)];
    *v26 = sub_238731F1C;
    v26[1] = v25;
    v27 = &qword_27DF15518;
    v28 = &qword_238783610;
    sub_2384396E4(v14, v17, &qword_27DF15518, &qword_238783610);
    sub_23843981C(v17, v6, &qword_27DF15518, &qword_238783610);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF15528, &qword_27DF15518, &qword_238783610, &unk_23876B6E0);
    sub_23843A3E8(&qword_27DF15530, &qword_27DF15508, &qword_238783600, MEMORY[0x277CE1198]);
    sub_23875D1B0();
    v29 = v17;
  }

  else
  {
    if (v19 >= 3)
    {
      v30 = 3;
    }

    else
    {
      v30 = *(*v1 + 16);
    }

    v31 = *(type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0) - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);

    *v4 = sub_23875D030();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15520, &qword_238783618);
    sub_23872DD60(v18, v18 + v32, 0, (2 * v30) | 1, v1, &v4[*(v33 + 44)]);
    v27 = &qword_27DF15508;
    v28 = &qword_238783600;
    sub_23843981C(v4, v6, &qword_27DF15508, &qword_238783600);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF15528, &qword_27DF15518, &qword_238783610, &unk_23876B6E0);
    sub_23843A3E8(&qword_27DF15530, &qword_27DF15508, &qword_238783600, MEMORY[0x277CE1198]);
    sub_23875D1B0();

    v29 = v4;
  }

  return sub_238439884(v29, v27, v28);
}

double sub_23872DCFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23875D030();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15538, &qword_238783620);
  return sub_238730CAC(a1, a2, a3 + *(v6 + 44));
}

double sub_23872DD60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v50 = a6;
  v48 = type metadata accessor for OrderWidgetMoreTextView(0);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15558, &qword_238783700);
  MEMORY[0x28223BE20](v12 - 8);
  v49 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v40 - v15;
  v40 = _s5LargeVMa(0);
  v16 = *(v40 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15560, &qword_238783708);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v51 = &v40 - v20;
  sub_23875ED50();
  v43 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v52 = a1;
  v53 = a2;
  v54 = a3;
  v55 = a4;
  sub_238731F9C(a5, &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), _s5LargeVMa);
  v21 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  sub_23873218C(&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, _s5LargeVMa);
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15568, &qword_238783710);
  type metadata accessor for OrderIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15570, &qword_238783718);
  sub_23843A3E8(&qword_27DF15578, &qword_27DF15568, &qword_238783710, MEMORY[0x277D83FB8]);
  sub_23843A3E8(&qword_27DF15580, &qword_27DF15570, &qword_238783718, MEMORY[0x277CE14C0]);
  sub_2387321F4(&qword_27DF15588, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData, &unk_23876B534);
  sub_23875E380();
  v23 = *(a5 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  if (v23 < 4)
  {
    v29 = 1;
    v28 = v47;
    v26 = v48;
  }

  else
  {
    v24 = v23 - 3;
    v25 = v41;
    v26 = v48;
    sub_2384D5188(&v41[*(v48 + 20)]);
    *v25 = v24;
    v27 = *(v26 + 24);
    *(v25 + v27) = swift_getKeyPath(byte_2387836B8, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v28 = v47;
    sub_23873218C(v25, v47, type metadata accessor for OrderWidgetMoreTextView);
    v29 = 0;
  }

  (*(v46 + 56))(v28, v29, 1, v26);
  v30 = v42;
  v31 = *(v42 + 16);
  v32 = v44;
  v33 = v45;
  v34 = v51;
  v31(v45, v51, v44);
  v35 = v49;
  sub_23843981C(v28, v49, &qword_27DF15558, &qword_238783700);
  v36 = v50;
  v31(v50, v33, v32);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15590, &qword_238783720);
  sub_23843981C(v35, &v36[*(v37 + 48)], &qword_27DF15558, &qword_238783700);
  sub_238439884(v28, &qword_27DF15558, &qword_238783700);
  v38 = *(v30 + 8);
  v38(v34, v32);
  sub_238439884(v35, &qword_27DF15558, &qword_238783700);
  v38(v33, v32);

  return result;
}

void sub_23872E388(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v110 = a5;
  v117 = a4;
  v122 = a3;
  v98 = a2;
  v8 = sub_23875E360();
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x28223BE20](v8);
  v93 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15598, &qword_238783728);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v113 = &v92 - v13;
  v14 = _s5LargeVMa(0);
  v104 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v105 = v15;
  v107 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  MEMORY[0x28223BE20](v16 - 8);
  v106 = &v92 - v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155A0, &qword_238783730);
  MEMORY[0x28223BE20](v103);
  v109 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v108 = &v92 - v20;
  v21 = type metadata accessor for OrderIdentifier(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v94 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155A8, &qword_238783738);
  MEMORY[0x28223BE20](v120);
  v100 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v92 - v26;
  v101 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v119 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v92 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v92 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155B0, &qword_238783740);
  MEMORY[0x28223BE20](v32 - 8);
  v116 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v118 = (&v92 - v35);
  MEMORY[0x28223BE20](v36);
  v115 = &v92 - v37;
  MEMORY[0x28223BE20](v38);
  v95 = &v92 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = (&v92 - v41);
  MEMORY[0x28223BE20](v43);
  v45 = (&v92 - v44);
  sub_23875ED50();
  v102 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v121 = a1;
  sub_2384E6C90(v45);
  v46 = *(v22 + 56);
  v47 = 1;
  v46(v45, 0, 1, v21);
  v48 = v117 >> 1;
  v117 = v48;
  if (v48 != v122)
  {
    if (v48 <= v122)
    {
      __break(1u);
      goto LABEL_30;
    }

    sub_238731F9C(v98 + *(v119 + 72) * v122, v31, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_2384E6C90(v42);
    sub_23873212C(v31, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    v47 = 0;
  }

  v97 = a6;
  v99 = v46;
  v46(v42, v47, 1, v21);
  v49 = *(v120 + 48);
  sub_23843981C(v45, v27, &qword_27DF155B0, &qword_238783740);
  sub_23843981C(v42, &v27[v49], &qword_27DF155B0, &qword_238783740);
  v50 = *(v22 + 48);
  v51 = v50(v27, 1, v21);
  v96 = v22 + 48;
  if (v51 == 1)
  {
    sub_238439884(v42, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v45, &qword_27DF155B0, &qword_238783740);
    v52 = v50(&v27[v49], 1, v21);
    v53 = v115;
    if (v52 == 1)
    {
      sub_238439884(v27, &qword_27DF155B0, &qword_238783740);
      v54 = 1;
LABEL_12:
      v56 = v116;
      goto LABEL_14;
    }

LABEL_11:
    sub_238439884(v27, &qword_27DF155A8, &qword_238783738);
    v54 = 0;
    goto LABEL_12;
  }

  v55 = v95;
  sub_23843981C(v27, v95, &qword_27DF155B0, &qword_238783740);
  if (v50(&v27[v49], 1, v21) == 1)
  {
    sub_238439884(v42, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v45, &qword_27DF155B0, &qword_238783740);
    sub_23873212C(v55, type metadata accessor for OrderIdentifier);
    v53 = v115;
    goto LABEL_11;
  }

  v57 = v94;
  sub_23873218C(&v27[v49], v94, type metadata accessor for OrderIdentifier);
  v54 = sub_2384E6F28(v55, v57);
  sub_23873212C(v57, type metadata accessor for OrderIdentifier);
  sub_238439884(v42, &qword_27DF155B0, &qword_238783740);
  sub_238439884(v45, &qword_27DF155B0, &qword_238783740);
  sub_23873212C(v55, type metadata accessor for OrderIdentifier);
  sub_238439884(v27, &qword_27DF155B0, &qword_238783740);
  v53 = v115;
  v56 = v116;
LABEL_14:
  v58 = v118;
  v59 = v99;
  sub_2384E6C90(v53);
  v60 = 1;
  v59(v53, 0, 1, v21);
  if (v117 == v122)
  {
    goto LABEL_17;
  }

  if (v117 <= v122)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v61 = v92;
  sub_238731F9C(v98 + *(v119 + 72) * (v117 - 1), v92, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  sub_2384E6C90(v58);
  sub_23873212C(v61, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v60 = 0;
LABEL_17:
  LODWORD(v122) = v54;
  v59(v58, v60, 1, v21);
  v62 = *(v120 + 48);
  v63 = v100;
  sub_23843981C(v53, v100, &qword_27DF155B0, &qword_238783740);
  sub_23843981C(v58, v63 + v62, &qword_27DF155B0, &qword_238783740);
  if (v50(v63, 1, v21) == 1)
  {
    sub_238439884(v58, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v53, &qword_27DF155B0, &qword_238783740);
    v64 = v50((v63 + v62), 1, v21);
    v65 = v121;
    if (v64 == 1)
    {
      sub_238439884(v63, &qword_27DF155B0, &qword_238783740);
      LODWORD(v120) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    sub_23843981C(v63, v56, &qword_27DF155B0, &qword_238783740);
    v66 = v50((v63 + v62), 1, v21);
    v65 = v121;
    if (v66 != 1)
    {
      v68 = v63 + v62;
      v69 = v94;
      sub_23873218C(v68, v94, type metadata accessor for OrderIdentifier);
      v70 = sub_2384E6F28(v56, v69);
      sub_23873212C(v69, type metadata accessor for OrderIdentifier);
      sub_238439884(v118, &qword_27DF155B0, &qword_238783740);
      sub_238439884(v53, &qword_27DF155B0, &qword_238783740);
      sub_23873212C(v56, type metadata accessor for OrderIdentifier);
      sub_238439884(v63, &qword_27DF155B0, &qword_238783740);
      v67 = v70 ^ 1;
      goto LABEL_24;
    }

    sub_238439884(v118, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v53, &qword_27DF155B0, &qword_238783740);
    sub_23873212C(v56, type metadata accessor for OrderIdentifier);
  }

  sub_238439884(v63, &qword_27DF155A8, &qword_238783738);
  v67 = 1;
LABEL_24:
  LODWORD(v120) = v67;
LABEL_25:
  v71 = v105;
  v72 = v106;
  sub_238731F9C(v65, v106, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v73 = *(v119 + 56);
  v74 = 1;
  v75 = v101;
  v73(v72, 0, 1, v101);
  v76 = v110;
  v77 = v107;
  sub_238731F9C(v110, v107, _s5LargeVMa);
  v78 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v79 = v78 + v71;
  v80 = swift_allocObject();
  sub_23873218C(v77, v80 + v78, _s5LargeVMa);
  *(v80 + v79) = v122 & 1;
  v81 = v108;
  v73(v108, 1, 1, v75);
  sub_2384895F4(v72, v81);
  v82 = (v81 + *(v103 + 36));
  *v82 = sub_23873208C;
  v82[1] = v80;
  v83 = *(v76 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v85 = v111;
  v84 = v112;
  v86 = v113;
  if (v83 > 3 || (v120 & 1) != 0)
  {
    v87 = v93;
    sub_23875E350();
    (*(v85 + 32))(v86, v87, v84);
    v74 = 0;
  }

  (*(v85 + 56))(v86, v74, 1, v84);
  v88 = v109;
  sub_23843981C(v81, v109, &qword_27DF155A0, &qword_238783730);
  v89 = v114;
  sub_23843981C(v86, v114, &qword_27DF15598, &qword_238783728);
  v90 = v97;
  sub_23843981C(v88, v97, &qword_27DF155A0, &qword_238783730);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155B8, &qword_238783748);
  sub_23843981C(v89, v90 + *(v91 + 48), &qword_27DF15598, &qword_238783728);
  sub_238439884(v86, &qword_27DF15598, &qword_238783728);
  sub_238439884(v81, &qword_27DF155A0, &qword_238783730);
  sub_238439884(v89, &qword_27DF15598, &qword_238783728);
  sub_238439884(v88, &qword_27DF155A0, &qword_238783730);
}

uint64_t sub_23872F1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v83 = a3;
  v80 = a4;
  v6 = sub_23875C880();
  v79 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v78 = &v71[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v77 = &v71[-v9];
  v10 = sub_23875CDB0();
  v81 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v71[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155C0, &qword_238783750);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v71[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155C8, &qword_238783758);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v71[-v18];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155D0, &qword_238783760);
  MEMORY[0x28223BE20](v76);
  v82 = &v71[-v20];
  v21 = *(a2 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24)) > 2;
  *v15 = sub_23875CE50();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155D8, &qword_238783768);
  sub_23872F970(a1, v21, a2, &v15[*(v22 + 44)]);
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v15, v19, &qword_27DF155C0, &qword_238783750);
  v23 = &v19[*(v17 + 44)];
  v24 = v90;
  v23[4] = v89;
  v23[5] = v24;
  v23[6] = v91;
  v25 = v86;
  *v23 = v85;
  v23[1] = v25;
  v26 = v88;
  v23[2] = v87;
  v23[3] = v26;
  v27 = sub_23875D790();
  v75 = _s5LargeVMa(0);
  v28 = a2 + *(v75 + 24);
  v29 = *v28;
  v30 = *(v28 + 8);
  if (v30 == 1)
  {
    v31 = *v28;
  }

  else
  {

    sub_23875EFF0();
    v32 = v30;
    v33 = sub_23875D730();
    sub_23875C110();

    v30 = v32;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v29, 0);
    (*(v81 + 8))(v12, v10);
    LOBYTE(v31) = v84;
  }

  v34 = v10;
  if ((v31 & 1) != 0 && (v83 & 1) == 0)
  {
    v73 = v12;
    v72 = v30;
    v74 = a2;
    v35 = v77;
    sub_2384D5138(v77);
    v36 = v79;
    v37 = v78;
    (*(v79 + 104))(v78, *MEMORY[0x277CDFA00], v6);
    sub_2387321F4(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    sub_23875E9B0();
    v38 = *(v36 + 8);
    v39 = v37;
    v34 = v10;
    v38(v39, v6);
    v38(v35, v6);
    v30 = v72;
    v12 = v73;
  }

  sub_23875C3D0();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v19;
  v49 = v82;
  sub_2384396E4(v48, v82, &qword_27DF155C8, &qword_238783758);
  v50 = &v49[*(v76 + 36)];
  *v50 = v27;
  *(v50 + 1) = v41;
  *(v50 + 2) = v43;
  *(v50 + 3) = v45;
  *(v50 + 4) = v47;
  v50[40] = 0;
  v51 = sub_23875D7A0();
  v52 = v81;
  if (!v30)
  {

    sub_23875EFF0();
    v53 = v12;
    v54 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v29, 0);
    (*(v52 + 8))(v53, v34);
    LOBYTE(v29) = v84;
  }

  if ((v29 & 1) != 0 && (v83 & 1) == 0)
  {
    v55 = v77;
    sub_2384D5138(v77);
    v56 = v79;
    v57 = v78;
    (*(v79 + 104))(v78, *MEMORY[0x277CDFA00], v6);
    sub_2387321F4(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    sub_23875E9B0();
    v58 = *(v56 + 8);
    v58(v57, v6);
    v59 = v55;
    v49 = v82;
    v58(v59, v6);
  }

  sub_23875C3D0();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v80;
  sub_2384396E4(v49, v80, &qword_27DF155D0, &qword_238783760);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155E0, &qword_238783770);
  v70 = v68 + *(result + 36);
  *v70 = v51;
  *(v70 + 8) = v61;
  *(v70 + 16) = v63;
  *(v70 + 24) = v65;
  *(v70 + 32) = v67;
  *(v70 + 40) = 0;
  return result;
}

double sub_23872F970@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155E8, &qword_238783778);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155F0, &qword_238783780);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v18 = sub_23875D030();
  *(v18 + 1) = 0x4000000000000000;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155F8, &qword_238783788);
  sub_23872FC4C(a1, a2 & 1, &v18[*(v19 + 44)]);
  *v12 = sub_23875D020();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15600, &qword_238783790);
  sub_2387309AC(a1, v25, &v12[*(v20 + 44)]);
  sub_23843981C(v18, v15, &qword_27DF155F0, &qword_238783780);
  sub_23843981C(v12, v9, &qword_27DF155E8, &qword_238783778);
  sub_23843981C(v15, a4, &qword_27DF155F0, &qword_238783780);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15608, &qword_238783798);
  v22 = a4 + *(v21 + 48);
  *v22 = 0x4024000000000000;
  *(v22 + 8) = 0;
  sub_23843981C(v9, a4 + *(v21 + 64), &qword_27DF155E8, &qword_238783778);
  sub_238439884(v12, &qword_27DF155E8, &qword_238783778);
  sub_238439884(v18, &qword_27DF155F0, &qword_238783780);
  sub_238439884(v9, &qword_27DF155E8, &qword_238783778);
  sub_238439884(v15, &qword_27DF155F0, &qword_238783780);

  return result;
}

double sub_23872FC4C@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v136 = a3;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC90, &qword_238766BE8);
  MEMORY[0x28223BE20](v129);
  v132 = &v122 - v5;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC98, &qword_238766BF0);
  MEMORY[0x28223BE20](v131);
  v142 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v130 = &v122 - v8;
  MEMORY[0x28223BE20](v9);
  v144 = &v122 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA0, &qword_238766BF8);
  MEMORY[0x28223BE20](v11);
  v13 = &v122 - v12;
  v14 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  MEMORY[0x28223BE20](v14 - 8);
  v140 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  MEMORY[0x28223BE20](v138);
  v139 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v145);
  v128 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v122 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v122 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v122 - v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA8, &qword_238766C00);
  MEMORY[0x28223BE20](v123);
  v137 = &v122 - v26;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACB0, &qword_238766C08);
  MEMORY[0x28223BE20](v125);
  v141 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v124 = &v122 - v29;
  MEMORY[0x28223BE20](v30);
  v143 = &v122 - v31;
  sub_23875ED50();
  v134 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238731F9C(a1, v25, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  LODWORD(v135) = a2;
  if (EnumCaseMultiPayload == 1)
  {
    v33 = v140;
    sub_23873218C(v25, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v35 = *(v33 + 80);
    v34 = *(v33 + 88);

    v36 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v33 = v139;
    sub_23873218C(v25, v139, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v37 = (v33 + v138[8]);
    v35 = *v37;
    v34 = v37[1];

    v36 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  v38 = sub_23873212C(v33, v36);
  v155 = v35;
  v156 = v34;
  v127 = sub_2384397A8(v38, v39, v40);
  v41 = sub_23875DAA0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_238731F9C(a1, v22, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v48 = swift_getEnumCaseMultiPayload();
  v133 = a1;
  if (v48 == 1)
  {
    v49 = v140;
    sub_23873218C(v22, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v50 = *(v49 + 96);

    v51 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v49 = v139;
    sub_23873218C(v22, v139, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v50 = *(v49 + v138[9]);

    v51 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v49, v51);
  v155 = v41;
  v156 = v43;
  LOBYTE(v157) = v45 & 1;
  v158 = v47;
  sub_23875D890();
  sub_23875DAF0();
  *&v13[*(v11 + 36)] = v50;
  sub_238489664();

  v52 = v137;
  sub_23875DAB0();
  sub_2384397FC(v41, v43, v45 & 1);

  sub_238439884(v13, &qword_27DF0ACA0, &qword_238766BF8);
  KeyPath = swift_getKeyPath(aX_28);
  v54 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC0, &qword_238766C40) + 36);
  *v54 = KeyPath;
  *(v54 + 8) = 1;
  *(v54 + 16) = 0;
  v55 = swift_getKeyPath(aP_30);
  v56 = v52 + *(v123 + 36);
  *v56 = v55;
  *(v56 + 8) = 1;
  v57 = v135;
  if (v135)
  {
    v58 = sub_23875D820();
  }

  else
  {
    v58 = sub_23875D8F0();
  }

  v59 = v58;
  v61 = v132;
  v60 = v133;
  v62 = swift_getKeyPath(asc_238783688);
  v63 = v124;
  sub_2384396E4(v137, v124, &qword_27DF0ACA8, &qword_238766C00);
  v64 = (v63 + *(v125 + 36));
  *v64 = v62;
  v64[1] = v59;
  sub_2384396E4(v63, v143, &qword_27DF0ACB0, &qword_238766C08);
  v65 = v126;
  sub_238731F9C(v60, v126, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = v140;
    sub_23873218C(v65, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v68 = *(v66 + 32);
    v67 = *(v66 + 40);

    v69 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v66 = v139;
    sub_23873218C(v65, v139, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v70 = (v66 + v138[7]);
    v68 = *v70;
    v67 = v70[1];

    v69 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v66, v69);
  v155 = v68;
  v156 = v67;
  v71 = sub_23875DAA0();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = *(v129 + 36);
  *(v61 + v78) = swift_getKeyPath(byte_2387836B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *v61 = v71;
  *(v61 + 8) = v73;
  *(v61 + 16) = v75 & 1;
  *(v61 + 24) = v77;
  if (v57)
  {
    v79 = sub_23875D970();
  }

  else
  {
    v79 = sub_23875D7F0();
  }

  v80 = v79;
  v81 = swift_getKeyPath(asc_238783688);
  v82 = v130;
  sub_2384396E4(v61, v130, &qword_27DF0AC90, &qword_238766BE8);
  v83 = (v82 + *(v131 + 36));
  *v83 = v81;
  v83[1] = v80;
  sub_2384396E4(v82, v144, &qword_27DF0AC98, &qword_238766BF0);
  v84 = v128;
  sub_238731F9C(v60, v128, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v85 = v140;
    sub_23873218C(v84, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v87 = *(v85 + 104);
    v86 = *(v85 + 112);

    v88 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v85 = v139;
    sub_23873218C(v84, v139, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v89 = (v85 + v138[10]);
    v87 = *v89;
    v86 = v89[1];

    v88 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v85, v88);
  if (v86)
  {
    v155 = v87;
    v156 = v86;
    v90 = sub_23875DAA0();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v97 = swift_getKeyPath(aP_30);
    v98 = swift_getKeyPath(aX_28);
    v148 = v94 & 1;
    v147 = 0;
    v99 = sub_23875D440();
    *&v149 = v90;
    *(&v149 + 1) = v92;
    LOBYTE(v150) = v148;
    *(&v150 + 1) = v96;
    *&v151 = v97;
    BYTE8(v151) = 1;
    *&v152 = v98;
    *(&v152 + 1) = 1;
    v100 = v147;
    LOBYTE(v153) = v147;
    v140 = v150;
    v145 = *(&v151 + 1);
    v138 = v90;
    v155 = v90;
    v156 = v92;
    LOBYTE(v157) = v148;
    v158 = v96;
    v159 = v97;
    LOBYTE(v160) = 1;
    v161 = v98;
    v162 = 1;
    LOBYTE(v163) = v147;
    sub_23843981C(&v149, &v146, &qword_27DF15550, &qword_2387836F8);
    sub_238439884(&v155, &qword_27DF15550, &qword_2387836F8);
    if (v57)
    {
      v101 = sub_23875D970();
    }

    else
    {
      v101 = sub_23875D7F0();
    }

    v130 = v92;
    v133 = v101;
    v137 = swift_getKeyPath(asc_238783688);
    v103 = v99 << 32;
    v135 = 1;
    v139 = v96;
    v131 = v98;
    v132 = v97;
    v102 = v145;
  }

  else
  {
    v138 = 0;
    v139 = 0;
    v130 = 0;
    v131 = 0;
    v140 = 0;
    v132 = 0;
    v133 = 0;
    v102 = 0;
    v135 = 0;
    v137 = 0;
    v100 = 0;
    v103 = 0;
  }

  v145 = v102;
  v104 = v141;
  sub_23843981C(v143, v141, &qword_27DF0ACB0, &qword_238766C08);
  v105 = v142;
  sub_23843981C(v144, v142, &qword_27DF0AC98, &qword_238766BF0);
  v106 = v103 | v100;
  v129 = v103 | v100;
  v107 = v136;
  sub_23843981C(v104, v136, &qword_27DF0ACB0, &qword_238766C08);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15618, &qword_2387837A8);
  sub_23843981C(v105, v107 + v108[12], &qword_27DF0AC98, &qword_238766BF0);
  v109 = v107 + v108[16];
  v110 = v138;
  v111 = v130;
  *&v149 = v138;
  *(&v149 + 1) = v130;
  *&v150 = v140;
  *(&v150 + 1) = v139;
  v112 = v132;
  *&v151 = v132;
  *(&v151 + 1) = v102;
  v113 = v131;
  v114 = v135;
  *&v152 = v131;
  *(&v152 + 1) = v135;
  *&v153 = v106;
  v115 = v137;
  *(&v153 + 1) = v137;
  v116 = v152;
  v117 = v153;
  *(v109 + 32) = v151;
  *(v109 + 48) = v116;
  v118 = v150;
  *v109 = v149;
  *(v109 + 16) = v118;
  v119 = v133;
  v154 = v133;
  *(v109 + 80) = v133;
  *(v109 + 64) = v117;
  v120 = v107 + v108[20];
  *v120 = 0;
  *(v120 + 8) = 0;
  sub_23843981C(&v149, &v155, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v144, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v143, &qword_27DF0ACB0, &qword_238766C08);
  v155 = v110;
  v156 = v111;
  v157 = v140;
  v158 = v139;
  v159 = v112;
  v160 = v145;
  v161 = v113;
  v162 = v114;
  v163 = v129;
  v164 = v115;
  v165 = v119;
  sub_238439884(&v155, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v142, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v141, &qword_27DF0ACB0, &qword_238766C08);

  return result;
}

void sub_2387309AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v5 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OrderWidgetImageView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238731F9C(v25, v7, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v17 = *(a2 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v18 = 86.0;
  v19 = 71.0;
  if (v17 == 3)
  {
    v19 = 82.0;
  }

  if (v17 != 2)
  {
    v18 = v19;
  }

  if (v17 == 1)
  {
    v20 = 176.0;
  }

  else
  {
    v20 = v18;
  }

  sub_23873218C(v7, v13, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  *&v13[v8[5]] = v20;
  *&v13[v8[6]] = v20;
  *&v13[v8[7]] = 0x4018000000000000;
  sub_23873218C(v13, v16, type metadata accessor for OrderWidgetImageView);
  v21 = *(*a2 + 16) < 3uLL;
  sub_238731F9C(v16, v10, type metadata accessor for OrderWidgetImageView);
  *a3 = 0;
  *(a3 + 8) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15610, &qword_2387837A0);
  sub_238731F9C(v10, a3 + *(v22 + 48), type metadata accessor for OrderWidgetImageView);
  v23 = a3 + *(v22 + 64);
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 9) = v21;
  sub_23873212C(v16, type metadata accessor for OrderWidgetImageView);
  sub_23873212C(v10, type metadata accessor for OrderWidgetImageView);
}

double sub_238730CAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v136 = a2;
  v138 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC88, &qword_238766BE0);
  MEMORY[0x28223BE20](v4 - 8);
  v139 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v137 = (&v124 - v7);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC90, &qword_238766BE8);
  MEMORY[0x28223BE20](v130);
  v133 = &v124 - v8;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC98, &qword_238766BF0);
  MEMORY[0x28223BE20](v132);
  v145 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v131 = &v124 - v11;
  MEMORY[0x28223BE20](v12);
  v147 = &v124 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA0, &qword_238766BF8);
  MEMORY[0x28223BE20](v14);
  v16 = &v124 - v15;
  v17 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  MEMORY[0x28223BE20](v17 - 8);
  v140 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  MEMORY[0x28223BE20](v142);
  v143 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v20);
  v129 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v127 = &v124 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v124 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v124 - v28;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA8, &qword_238766C00);
  MEMORY[0x28223BE20](v125);
  v31 = &v124 - v30;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACB0, &qword_238766C08);
  MEMORY[0x28223BE20](v126);
  v144 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v124 = &v124 - v34;
  MEMORY[0x28223BE20](v35);
  v146 = &v124 - v36;
  sub_23875ED50();
  v134 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238731F9C(a1, v29, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v141 = v20;
  if (EnumCaseMultiPayload == 1)
  {
    v38 = v140;
    sub_23873218C(v29, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v40 = *(v38 + 80);
    v39 = *(v38 + 88);

    v41 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v38 = v143;
    sub_23873218C(v29, v143, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v42 = (v38 + v142[8]);
    v40 = *v42;
    v39 = v42[1];

    v41 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  v43 = sub_23873212C(v38, v41);
  v156 = v40;
  v157 = v39;
  v128 = sub_2384397A8(v43, v44, v45);
  v46 = sub_23875DAA0();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_238731F9C(a1, v26, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v53 = swift_getEnumCaseMultiPayload();
  v135 = a1;
  if (v53 == 1)
  {
    v54 = v140;
    sub_23873218C(v26, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v55 = *(v54 + 96);

    v56 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v54 = v143;
    sub_23873218C(v26, v143, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v55 = *(v54 + v142[9]);

    v56 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v54, v56);
  v156 = v46;
  v157 = v48;
  LOBYTE(v158) = v50 & 1;
  v159 = v52;
  sub_23875D890();
  sub_23875DAF0();
  *&v16[*(v14 + 36)] = v55;
  sub_238489664();

  sub_23875DAB0();
  sub_2384397FC(v46, v48, v50 & 1);

  sub_238439884(v16, &qword_27DF0ACA0, &qword_238766BF8);
  KeyPath = swift_getKeyPath(aX_28);
  v58 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC0, &qword_238766C40) + 36)];
  *v58 = KeyPath;
  *(v58 + 1) = 1;
  v58[16] = 0;
  v59 = swift_getKeyPath(aP_30);
  v60 = &v31[*(v125 + 36)];
  *v60 = v59;
  v60[8] = 1;
  v61 = sub_23875D8E0();
  v62 = swift_getKeyPath(asc_238783688);
  v63 = v124;
  sub_2384396E4(v31, v124, &qword_27DF0ACA8, &qword_238766C00);
  v64 = (v63 + *(v126 + 36));
  *v64 = v62;
  v64[1] = v61;
  sub_2384396E4(v63, v146, &qword_27DF0ACB0, &qword_238766C08);
  v65 = v135;
  v66 = v127;
  sub_238731F9C(v135, v127, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = v140;
    sub_23873218C(v66, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v69 = *(v67 + 32);
    v68 = *(v67 + 40);

    v70 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v67 = v143;
    sub_23873218C(v66, v143, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v71 = (v67 + v142[7]);
    v69 = *v71;
    v68 = v71[1];

    v70 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v67, v70);
  v156 = v69;
  v157 = v68;
  v72 = sub_23875DAA0();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = *(v130 + 36);
  v80 = swift_getKeyPath(byte_2387836B8);
  v81 = v133;
  *&v133[v79] = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *v81 = v72;
  *(v81 + 8) = v74;
  *(v81 + 16) = v76 & 1;
  *(v81 + 24) = v78;
  v82 = sub_23875D7F0();
  v83 = swift_getKeyPath(asc_238783688);
  v84 = v131;
  sub_2384396E4(v81, v131, &qword_27DF0AC90, &qword_238766BE8);
  v85 = (v84 + *(v132 + 36));
  *v85 = v83;
  v85[1] = v82;
  sub_2384396E4(v84, v147, &qword_27DF0AC98, &qword_238766BF0);
  v86 = v129;
  sub_238731F9C(v65, v129, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v87 = v140;
    sub_23873218C(v86, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v89 = *(v87 + 104);
    v88 = *(v87 + 112);

    v90 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v87 = v143;
    sub_23873218C(v86, v143, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v91 = (v87 + v142[10]);
    v89 = *v91;
    v88 = v91[1];

    v90 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v87, v90);
  if (v88)
  {
    v156 = v89;
    v157 = v88;
    v92 = sub_23875DAA0();
    v94 = v93;
    v96 = v95;
    v97 = v65;
    v99 = v98;
    v100 = swift_getKeyPath(aP_30);
    v101 = swift_getKeyPath(aX_28);
    v150 = v96 & 1;
    v149 = 0;
    v102 = sub_23875D440();
    *&v151 = v92;
    *(&v151 + 1) = v94;
    LOBYTE(v152) = v150;
    *(&v152 + 1) = v99;
    *&v153 = v100;
    BYTE8(v153) = 1;
    *&v154 = v101;
    *(&v154 + 1) = 1;
    v103 = v149;
    LOBYTE(v155) = v149;
    v130 = v152;
    v142 = *(&v153 + 1);
    v156 = v92;
    v157 = v94;
    v141 = v94;
    LOBYTE(v158) = v150;
    v143 = v99;
    v159 = v99;
    v160 = v100;
    v65 = v97;
    v140 = v100;
    LOBYTE(v161) = 1;
    v133 = v101;
    v162 = v101;
    v163 = 1;
    v132 = 1;
    LOBYTE(v164) = v149;
    sub_23843981C(&v151, v148, &qword_27DF15550, &qword_2387836F8);
    sub_238439884(&v156, &qword_27DF15550, &qword_2387836F8);
    v131 = v103 | (v102 << 32);
  }

  else
  {
    v92 = 0;
    v141 = 0;
    v130 = 0;
    v143 = 0;
    v140 = 0;
    v142 = 0;
    v133 = 0;
    v132 = 0;
    v131 = 0;
  }

  v129 = v92;
  v104 = sub_23875CE60();
  v105 = v137;
  *v137 = v104;
  *(v105 + 8) = 0;
  *(v105 + 16) = 1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC8, &qword_238766CA8);
  sub_238731C38(v65, v136, v105 + *(v106 + 44));
  v107 = v144;
  sub_23843981C(v146, v144, &qword_27DF0ACB0, &qword_238766C08);
  v108 = v145;
  sub_23843981C(v147, v145, &qword_27DF0AC98, &qword_238766BF0);
  v109 = v139;
  sub_23843981C(v105, v139, &qword_27DF0AC88, &qword_238766BE0);
  v110 = v107;
  v111 = v138;
  sub_23843981C(v110, v138, &qword_27DF0ACB0, &qword_238766C08);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15540, &qword_2387836E8);
  sub_23843981C(v108, v111 + v112[12], &qword_27DF0AC98, &qword_238766BF0);
  v113 = v111 + v112[16];
  *&v151 = v92;
  v114 = v141;
  v115 = v130;
  *(&v151 + 1) = v141;
  *&v152 = v130;
  v116 = v140;
  *(&v152 + 1) = v143;
  *&v153 = v140;
  v117 = v133;
  *(&v153 + 1) = v142;
  *&v154 = v133;
  v118 = v132;
  v119 = v131;
  *(&v154 + 1) = v132;
  v155 = v131;
  v120 = v154;
  *(v113 + 32) = v153;
  *(v113 + 48) = v120;
  *(v113 + 64) = v119;
  v121 = v152;
  *v113 = v151;
  *(v113 + 16) = v121;
  v122 = v111 + v112[20];
  *v122 = 0;
  *(v122 + 8) = 1;
  sub_23843981C(v109, v111 + v112[24], &qword_27DF0AC88, &qword_238766BE0);
  sub_23843981C(&v151, &v156, &qword_27DF15548, &qword_2387836F0);
  sub_238439884(v105, &qword_27DF0AC88, &qword_238766BE0);
  sub_238439884(v147, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v146, &qword_27DF0ACB0, &qword_238766C08);
  sub_238439884(v109, &qword_27DF0AC88, &qword_238766BE0);
  v156 = v129;
  v157 = v114;
  v158 = v115;
  v159 = v143;
  v160 = v116;
  v161 = v142;
  v162 = v117;
  v163 = v118;
  v164 = v119;
  sub_238439884(&v156, &qword_27DF15548, &qword_2387836F0);
  sub_238439884(v145, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v144, &qword_27DF0ACB0, &qword_238766C08);

  return result;
}

void sub_238731C38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v5 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OrderWidgetImageView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238731F9C(a1, v7, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v17 = *(v23 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v18 = 86.0;
  v19 = 71.0;
  if (v17 == 3)
  {
    v19 = 82.0;
  }

  if (v17 != 2)
  {
    v18 = v19;
  }

  if (v17 == 1)
  {
    v20 = 176.0;
  }

  else
  {
    v20 = v18;
  }

  sub_23873218C(v7, v13, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  *&v13[v8[5]] = v20;
  *&v13[v8[6]] = v20;
  *&v13[v8[7]] = 0x4020000000000000;
  sub_23873218C(v13, v16, type metadata accessor for OrderWidgetImageView);
  sub_238731F9C(v16, v10, type metadata accessor for OrderWidgetImageView);
  *a3 = 0;
  *(a3 + 8) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACD8, &qword_238766CB8);
  sub_238731F9C(v10, a3 + *(v21 + 48), type metadata accessor for OrderWidgetImageView);
  sub_23873212C(v16, type metadata accessor for OrderWidgetImageView);
  sub_23873212C(v10, type metadata accessor for OrderWidgetImageView);
}

double sub_238731F1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s5LargeVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23872DCFC(a1, v6, a2);
}

uint64_t sub_238731F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_238732004(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s5LargeVMa(0) - 8);
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  sub_23872E388(a1, v6, v7, v8, v9, a2);
}

uint64_t sub_23873208C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s5LargeVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_23872F1B0(a1, v6, v7, a2);
}

uint64_t sub_23873212C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23873218C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2387321F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23873223C()
{
  result = qword_27DF15628;
  if (!qword_27DF15628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15630, &qword_2387837B8);
    sub_23843A3E8(&qword_27DF15528, &qword_27DF15518, &qword_238783610, &unk_23876B6E0);
    sub_23843A3E8(&qword_27DF15530, &qword_27DF15508, &qword_238783600, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15628);
  }

  return result;
}

uint64_t type metadata accessor for OrderLargeBlackButtonStyle(uint64_t a1)
{
  result = qword_27DF15638;
  if (!qword_27DF15638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238732394(uint64_t a1)
{
  sub_238566280();
  if (v1 <= 0x3F)
  {
    sub_238438628(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238732434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15648, &qword_238783818);
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15650, &qword_238783820);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15658, &qword_238783828);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15660, &qword_238783830);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15668, &qword_238783838);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  sub_23875D4E0();
  v20 = sub_23875D820();
  KeyPath = swift_getKeyPath(byte_238783840);
  v22 = &v4[*(v2 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_23875D890();
  sub_238733060();
  sub_23875DAF0();
  sub_238439884(v4, &qword_27DF15648, &qword_238783818);
  sub_23875E4A0();
  sub_23875C9C0();
  (*(v43 + 32))(v11, v7, v44);
  v23 = &v11[*(v9 + 44)];
  v24 = v52;
  *(v23 + 4) = v51;
  *(v23 + 5) = v24;
  *(v23 + 6) = v53;
  v25 = v48;
  *v23 = v47;
  *(v23 + 1) = v25;
  v26 = v50;
  *(v23 + 2) = v49;
  *(v23 + 3) = v26;
  v27 = sub_238732880();
  sub_2384396E4(v11, v15, &qword_27DF15658, &qword_238783828);
  *&v15[*(v13 + 44)] = v27;
  v28 = sub_23875D4F0();
  v29 = sub_238732BBC(v28 & 1);
  LOBYTE(v20) = sub_23875D780();
  sub_2384396E4(v15, v19, &qword_27DF15660, &qword_238783830);
  v30 = &v19[*(v17 + 44)];
  *v30 = v29;
  v30[8] = v20;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15680, &unk_238783878);
  v32 = v45;
  v33 = (v45 + *(v31 + 36));
  v34 = *(sub_23875C980() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_23875CF50();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  __asm { FMOV            V0.2D, #12.0 }

  *v33 = _Q0;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  return sub_2384396E4(v19, v32, &qword_27DF15668, &qword_238783838);
}

uint64_t sub_238732880()
{
  v1 = sub_23875C450();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = sub_23875CDB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  if (*(v0 + 8) != 1)
  {
    v23 = v10;

    sub_23875EFF0();
    v20 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v13, 0);
    (*(v9 + 8))(v12, v23);
    if (v24 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    type metadata accessor for OrderLargeBlackButtonStyle(0);
    sub_2384D4E38(v7);
    (*(v2 + 104))(v4, *MEMORY[0x277CDF3D0], v1);
    v21 = sub_23875C440();
    v22 = *(v2 + 8);
    v22(v4, v1);
    v22(v7, v1);
    if (v21)
    {
      return sub_23875E040();
    }

    else
    {
      return sub_23875E010();
    }
  }

  if (v13)
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for OrderLargeBlackButtonStyle(0);
  sub_2384D4E38(v7);
  (*(v2 + 104))(v4, *MEMORY[0x277CDF3D0], v1);
  v14 = sub_23875C440();
  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v7, v1);
  v16 = objc_opt_self();
  v17 = &selRef_systemGray3Color;
  if ((v14 & 1) == 0)
  {
    v17 = &selRef_systemGray2Color;
  }

  v18 = [v16 *v17];
  return sub_23875DFB0();
}

uint64_t sub_238732BBC(int a1)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15688, &unk_238783888);
  MEMORY[0x28223BE20](v2);
  v41 = &v37 - v3;
  v4 = sub_23875C450();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_23875CDB0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  if (*(v1 + 8) != 1)
  {
    v37 = v16;

    sub_23875EFF0();
    v38 = v13;
    v26 = sub_23875D730();
    v39 = v1;
    v27 = v4;
    v28 = v26;
    v13 = v38;
    sub_23875C110();

    v4 = v27;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v19, 0);
    (*(v15 + 8))(v18, v37);
    if (v42 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    type metadata accessor for OrderLargeBlackButtonStyle(0);
    sub_2384D4E38(v13);
    v29 = *(v2 + 48);
    v30 = v41;
    (*(v5 + 32))(v41, v13, v4);
    *(v30 + v29) = v40 & 1;
    v31 = (*(v5 + 88))(v30, v4);
    if (v31 == *MEMORY[0x277CDF3D0])
    {
      if ((v40 & 1) == 0)
      {
        v34 = sub_23875E010();
        goto LABEL_17;
      }

      v32 = [objc_opt_self() systemGray3Color];
    }

    else
    {
      if (v31 != *MEMORY[0x277CDF3C0])
      {
        v35 = sub_23875E010();
        sub_238439884(v41, &qword_27DF15688, &unk_238783888);
        return v35;
      }

      if ((v40 & 1) == 0)
      {
        v34 = sub_23875E040();
        goto LABEL_17;
      }

      v32 = [objc_opt_self() systemGray4Color];
    }

    v33 = v32;
    v34 = sub_23875DFB0();
LABEL_17:
    v36 = v34;
    (*(v5 + 8))(v41, v4);
    return v36;
  }

  if (v19)
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for OrderLargeBlackButtonStyle(0);
  sub_2384D4E38(v10);
  (*(v5 + 104))(v7, *MEMORY[0x277CDF3D0], v4);
  v20 = sub_23875C440();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  v22 = objc_opt_self();
  v23 = &selRef_systemGray6Color;
  if ((v20 & 1) == 0)
  {
    v23 = &selRef_systemGray4Color;
  }

  v24 = [v22 *v23];
  return sub_23875DFB0();
}

unint64_t sub_238733060()
{
  result = qword_27DF15670;
  if (!qword_27DF15670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15648, &qword_238783818);
    sub_238733118();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15670);
  }

  return result;
}

unint64_t sub_238733118()
{
  result = qword_27DF15678;
  if (!qword_27DF15678)
  {
    sub_23875D4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15678);
  }

  return result;
}

unint64_t sub_238733170()
{
  result = qword_27DF15690;
  if (!qword_27DF15690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15680, &unk_238783878);
    sub_238733228();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15690);
  }

  return result;
}

unint64_t sub_238733228()
{
  result = qword_27DF15698;
  if (!qword_27DF15698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15668, &qword_238783838);
    sub_2387332E0();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15698);
  }

  return result;
}

unint64_t sub_2387332E0()
{
  result = qword_27DF156A0;
  if (!qword_27DF156A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15660, &qword_238783830);
    sub_238733398();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF156A0);
  }

  return result;
}

unint64_t sub_238733398()
{
  result = qword_27DF156A8;
  if (!qword_27DF156A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15658, &qword_238783828);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15648, &qword_238783818);
    sub_238733060();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF156A8);
  }

  return result;
}

id sub_238733460()
{
  v0 = sub_23875C8A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238733808();
  v5 = sub_238733C2C();
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = sub_23875EA50();
  v8 = [v6 initWithString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_238763E70;
  *(v9 + 32) = v4;
  v27 = v9;
  type metadata accessor for BetaBadgeFormatter(0);
  (*(v1 + 104))(v3, *MEMORY[0x277CDFA90], v0);
  v10 = v4;
  v11 = sub_23875C890();
  (*(v1 + 8))(v3, v0);
  v26 = v8;
  if (v11)
  {
    v12 = v5;
    sub_2386CD760(0, 0, v12);

    if (v27 >> 62)
    {
      if (sub_23875F3A0() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v13 = v8;
      sub_2386CD760(1, 1, v13);

      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v14 = v8;
  MEMORY[0x23EE63730]();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_25:
    sub_23875EC90();
  }

  sub_23875ECB0();
  v15 = v5;
  MEMORY[0x23EE63730]();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23875EC90();
  }

  sub_23875ECB0();
LABEL_9:
  v25 = v10;
  v16 = v27;
  v17 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  if (v16 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23875F3A0())
  {
    v19 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x23EE63F70](v19, v16);
      }

      else
      {
        if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v20 = *(v16 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v17 appendAttributedString_];

      ++v19;
      if (v22 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  return v17;
}

id sub_238733808()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  v2 = [v1 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156B0, &qword_238783898);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  v4 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156B8, &qword_2387838A0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2387632F0;
  v6 = *MEMORY[0x277D74430];
  *(v5 + 32) = *MEMORY[0x277D74430];
  *(v5 + 40) = *MEMORY[0x277D74420];
  v7 = v4;
  v8 = v6;
  v9 = sub_23854B470(v5);
  swift_setDeallocating();
  sub_238439884(v5 + 32, &qword_27DF156C0, &qword_2387838A8);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156C8, &unk_2387838B0);
  *(inited + 40) = v9;
  sub_23854B560(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &qword_27DF0DEE0, &qword_23876E900);
  type metadata accessor for AttributeName(0);
  sub_23873433C(&qword_27DF09228, type metadata accessor for AttributeName, &unk_238762F38);
  v10 = sub_23875E910();

  v11 = [v2 fontDescriptorByAddingAttributes_];

  [v1 pointSize];
  v13 = [v0 fontWithDescriptor:v11 size:{fmax(v12, 17.0)}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F808, &unk_2387838C0);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_238763B60;
  v15 = *MEMORY[0x277D740C0];
  *(v14 + 32) = *MEMORY[0x277D740C0];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 labelColor];
  v19 = sub_238449184(0, &qword_27DF156D0, 0x277D75348);
  *(v14 + 40) = v18;
  v20 = *MEMORY[0x277D740A8];
  *(v14 + 64) = v19;
  *(v14 + 72) = v20;
  *(v14 + 104) = sub_238449184(0, &qword_27DF0F810, 0x277D74300);
  *(v14 + 80) = v13;
  v21 = v20;
  v22 = v13;
  sub_23854B584(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DED0, &qword_23876E8F0);
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v24 = sub_23875EA50();
  type metadata accessor for Key(0);
  sub_23873433C(&qword_27DF091F0, type metadata accessor for Key, &unk_238762EF4);
  v25 = sub_23875E910();

  v26 = [v23 initWithString:v24 attributes:v25];

  return v26;
}

id sub_238733C2C()
{
  v51 = sub_23875C450();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v47 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v1 = qword_2814F1B90;
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  if (!v5)
  {
    sub_23875EA80();
    v5 = sub_23875EA50();
  }

  v52 = v5;
  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle_];
  v48 = v7;
  v8 = [v7 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156B0, &qword_238783898);
  inited = swift_initStackObject();
  v47 = xmmword_2387632F0;
  *(inited + 16) = xmmword_2387632F0;
  v10 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156B8, &qword_2387838A0);
  v11 = swift_initStackObject();
  *(v11 + 16) = v47;
  v12 = *MEMORY[0x277D74430];
  *(v11 + 32) = *MEMORY[0x277D74430];
  *(v11 + 40) = *MEMORY[0x277D74418];
  v13 = v10;
  v14 = v12;
  v15 = sub_23854B470(v11);
  swift_setDeallocating();
  sub_238439884(v11 + 32, &qword_27DF156C0, &qword_2387838A8);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156C8, &unk_2387838B0);
  *(inited + 40) = v15;
  sub_23854B560(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &qword_27DF0DEE0, &qword_23876E900);
  type metadata accessor for AttributeName(0);
  sub_23873433C(&qword_27DF09228, type metadata accessor for AttributeName, &unk_238762F38);
  v16 = sub_23875E910();

  v17 = [v8 fontDescriptorByAddingAttributes_];

  [v7 pointSize];
  v19 = [v6 fontWithDescriptor:v17 size:{fmax(v18, 15.0)}];
  v20 = [objc_allocWithZone(MEMORY[0x277CC4818]) initWithShape_];
  type metadata accessor for BetaBadgeFormatter(0);
  v22 = v49;
  v21 = v50;
  v23 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277CDF3D0], v51);
  v24 = sub_23875C440();
  (*(v21 + 8))(v22, v23);
  v25 = objc_opt_self();
  v26 = &selRef_lightGrayColor;
  if ((v24 & 1) == 0)
  {
    v26 = &selRef_blackColor;
  }

  v27 = [v25 *v26];
  [v20 setColor_];

  [v20 setScale_];
  [v20 setStyle_];
  [v20 setPlatterSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F808, &unk_2387838C0);
  v28 = swift_initStackObject();
  v29 = MEMORY[0x277D740C0];
  *(v28 + 16) = xmmword_238763300;
  v30 = *v29;
  *(v28 + 32) = *v29;
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 whiteColor];
  v34 = sub_238449184(0, &qword_27DF156D0, 0x277D75348);
  *(v28 + 40) = v33;
  v35 = *MEMORY[0x277CC4810];
  *(v28 + 64) = v34;
  *(v28 + 72) = v35;
  v36 = sub_238449184(0, &qword_27DF156D8, 0x277CC4818);
  *(v28 + 80) = v20;
  v37 = *MEMORY[0x277D740A8];
  *(v28 + 104) = v36;
  *(v28 + 112) = v37;
  *(v28 + 144) = sub_238449184(0, &qword_27DF0F810, 0x277D74300);
  *(v28 + 120) = v19;
  v38 = v35;
  v39 = v20;
  v40 = v37;
  v41 = v19;
  sub_23854B584(v28);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DED0, &qword_23876E8F0);
  swift_arrayDestroy();
  v42 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  sub_23873433C(&qword_27DF091F0, type metadata accessor for Key, &unk_238762EF4);
  v43 = sub_23875E910();

  v44 = v52;
  v45 = [v42 initWithString:v52 attributes:v43];

  return v45;
}

uint64_t type metadata accessor for BetaBadgeFormatter(uint64_t a1)
{
  result = qword_27DF156E0;
  if (!qword_27DF156E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23873433C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2387343AC(uint64_t a1)
{
  result = sub_23875C450();
  if (v2 <= 0x3F)
  {
    result = sub_23875C8A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double static EdgeInsets.defaultListRowInsets(_:)(uint64_t a1)
{
  v1 = sub_23875C880();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CDF9D8], v1, v3);
  sub_23875C870();
  (*(v2 + 8))(v5, v1);
  return 12.0;
}

uint64_t static Section<>.compact<>(header:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a6;
  v41 = a7;
  v35[0] = a5;
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v44 = a8;
  v9 = sub_23875CEA0();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23875E3F0();
  v36 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v35 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  v35[1] = sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  v19 = sub_23875C8C0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v35 - v25;
  (*(v12 + 16))(v15, v37, a4, v24);
  v28 = v40;
  v27 = v41;
  sub_23875E3B0();
  sub_23875CE90();
  v49 = v28;
  v50 = v27;
  v51 = MEMORY[0x277CE1410];
  WitnessTable = swift_getWitnessTable();
  sub_23875DCF0();
  (*(v42 + 8))(v11, v43);
  (*(v36 + 8))(v18, v16);
  v30 = sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
  v47 = WitnessTable;
  v48 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
  v45 = v31;
  v46 = v32;
  swift_getWitnessTable();
  sub_23844EA0C();
  v33 = *(v20 + 8);
  v33(v22, v19);
  sub_23844EA0C();
  return (v33)(v26, v19);
}

uint64_t static Section<>.compact<>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[3] = a2;
  v27 = a4;
  v26[2] = a1;
  v29 = a5;
  v28 = sub_23875CEA0();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875E3F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  v26[1] = sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  v12 = sub_23875C8C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v26 - v17;
  v19 = v27;
  sub_23875E3D0();
  sub_23875CE90();
  v34 = MEMORY[0x277CE1410];
  v35 = v19;
  v36 = MEMORY[0x277CE1410];
  WitnessTable = swift_getWitnessTable();
  sub_23875DCF0();
  (*(v5 + 8))(v7, v28);
  (*(v9 + 8))(v11, v8);
  v21 = sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
  v32 = WitnessTable;
  v33 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
  v30 = v22;
  v31 = v23;
  swift_getWitnessTable();
  sub_23844EA0C();
  v24 = *(v13 + 8);
  v24(v15, v12);
  sub_23844EA0C();
  return (v24)(v18, v12);
}

uint64_t OrderImageStyle.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

uint64_t sub_238734E3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OrderImageStyleModifier(0);
  sub_23843981C(v1 + *(v10 + 40), v9, &qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C450();
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

double sub_238735044()
{
  v1 = sub_23875CDB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = sub_23875C880();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  v15 = type metadata accessor for OrderImageStyleModifier(0);
  sub_23843981C(v0 + *(v15 + 36), v7, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v9 + 32);
    v16(v14, v7, v8);
  }

  else
  {
    sub_23875EFF0();
    v18 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v16 = *(v9 + 32);
  }

  v16(v11, v14, v8);
  v19 = (*(v9 + 88))(v11, v8);
  if (v19 == *MEMORY[0x277CDF9F8])
  {
    return 0.8;
  }

  if (v19 == *MEMORY[0x277CDF9E0])
  {
    return 0.85;
  }

  if (v19 == *MEMORY[0x277CDF9E8])
  {
    return 0.9;
  }

  result = 1.0;
  if (v19 != *MEMORY[0x277CDF9D8])
  {
    if (v19 == *MEMORY[0x277CDF9F0])
    {
      return 1.1;
    }

    else if (v19 == *MEMORY[0x277CDFA00])
    {
      return 1.2;
    }

    else if (v19 == *MEMORY[0x277CDFA10])
    {
      return 1.35;
    }

    else
    {
      result = 1.5;
      if (v19 != *MEMORY[0x277CDF988])
      {
        if (v19 == *MEMORY[0x277CDF998])
        {
          return 1.6;
        }

        else if (v19 == *MEMORY[0x277CDF9A8])
        {
          return 1.7;
        }

        else if (v19 == *MEMORY[0x277CDF9B8])
        {
          return 1.8;
        }

        else
        {
          result = 2.0;
          if (v19 != *MEMORY[0x277CDF9D0])
          {
            (*(v9 + 8))(v11, v8, 2.0);
            return 1.0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2387354A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = sub_23875C450();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v52 - v7;
  v8 = sub_23875C980();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A438, &unk_2387662D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15710, &qword_238783AB0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  sub_238735044();
  sub_238735044();
  sub_23875E4A0();
  sub_23875C5C0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15718, &qword_238783AB8);
  (*(*(v19 - 8) + 16))(v18, a1, v19);
  v20 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15720, &qword_238783AC0) + 36)];
  v21 = v59;
  *v20 = v58;
  *(v20 + 1) = v21;
  *(v20 + 2) = v60;
  v22 = *(v2 + 8);
  v23 = v22 * sub_238735044();
  v24 = *(v16 + 44);
  v56 = v18;
  v25 = &v18[v24];
  v26 = *(v9 + 28);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_23875CF50();
  v29 = *(*(v28 - 8) + 104);
  v29(v25 + v26, v27, v28);
  *v25 = v23;
  v25[1] = v23;
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
  v30 = v22 * sub_238735044();
  v29(v11 + *(v9 + 28), v27, v28);
  *v11 = v30;
  v11[1] = v30;
  if ((*(v2 + 40) & 1) == 0)
  {
    v31 = v52;
    sub_238734E3C(v52);
    v33 = v53;
    v32 = v54;
    v34 = v55;
    (*(v54 + 104))(v53, *MEMORY[0x277CDF3D0], v55);
    sub_23875C440();
    v35 = *(v32 + 8);
    v35(v33, v34);
    v35(v31, v34);
  }

  v36 = sub_23875E060();
  sub_23875C4C0();
  sub_23846E86C(v11, v14);
  v37 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36)];
  v38 = v62;
  *v37 = v61;
  *(v37 + 1) = v38;
  *(v37 + 4) = v63;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *&v14[*(v39 + 52)] = v36;
  *&v14[*(v39 + 56)] = 256;
  v40 = sub_23875E4A0();
  v42 = v41;
  sub_2387367C8(v11, MEMORY[0x277CDFC08]);
  v43 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36)];
  *v43 = v40;
  v43[1] = v42;
  v44 = sub_23875E4A0();
  v46 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15728, &qword_238783AC8);
  v48 = v57;
  v49 = v57 + *(v47 + 36);
  sub_2384396E4(v14, v49, &qword_27DF0A438, &unk_2387662D0);
  v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20) + 36));
  *v50 = v44;
  v50[1] = v46;
  return sub_2384396E4(v56, v48, &qword_27DF15710, &qword_238783AB0);
}

uint64_t View.orderImageStyle(size:cornerRadius:scale:strokeColor:hideBorder:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v16 = type metadata accessor for OrderImageStyleModifier(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v19 + *(v16 + 36)) = swift_getKeyPath(a0_18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *(v19 + *(v16 + 40)) = swift_getKeyPath(byte_238783958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *v19 = a7;
  v19[1] = a8;
  *(v19 + 2) = a1;
  *(v19 + 24) = a2 & 1;
  *(v19 + 4) = a3;
  *(v19 + 40) = a4;

  MEMORY[0x23EE629E0](v19, a5, v16, a6);
  return sub_2387367C8(v19, type metadata accessor for OrderImageStyleModifier);
}

uint64_t type metadata accessor for OrderImageStyleModifier(uint64_t a1)
{
  result = qword_27DF156F8;
  if (!qword_27DF156F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Section<>.compact(header:footer:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v54 = a4;
  v55 = a8;
  v45 = a6;
  v50 = a1;
  v51 = a2;
  v58 = a9;
  v52 = a10;
  v53 = a3;
  v44 = a11;
  v13 = sub_23875CEA0();
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x28223BE20](v13);
  v49 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a5 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23875E3F0();
  v47 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  v46 = sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  v26 = sub_23875C8C0();
  v48 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v43 = &v43 - v31;
  (*(v19 + 16))(v22, v50, a5, v30);
  (*(v15 + 16))(v18, v51, a7);
  v32 = v44;
  v33 = v52;
  v34 = v55;
  sub_23875E3C0();
  v35 = v49;
  sub_23875CE90();
  v63 = v34;
  v64 = v33;
  v65 = v32;
  WitnessTable = swift_getWitnessTable();
  sub_23875DCF0();
  (*(v56 + 8))(v35, v57);
  (*(v47 + 8))(v25, v23);
  v37 = sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
  v61 = WitnessTable;
  v62 = v37;
  v38 = swift_getWitnessTable();
  v39 = sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
  v59 = v38;
  v60 = v39;
  swift_getWitnessTable();
  v40 = v43;
  sub_23844EA0C();
  v41 = *(v48 + 8);
  v41(v28, v26);
  sub_23844EA0C();
  return (v41)(v40, v26);
}

uint64_t static Section<>.compact<>(footer:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a6;
  v41 = a7;
  v35[0] = a4;
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v44 = a8;
  v9 = sub_23875CEA0();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23875E3F0();
  v36 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v35 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  v35[1] = sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  v19 = sub_23875C8C0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v35 - v25;
  (*(v12 + 16))(v15, v37, a5, v24);
  v28 = v40;
  v27 = v41;
  sub_23875E3E0();
  sub_23875CE90();
  v49 = MEMORY[0x277CE1410];
  v50 = v28;
  v51 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_23875DCF0();
  (*(v42 + 8))(v11, v43);
  (*(v36 + 8))(v18, v16);
  v30 = sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
  v47 = WitnessTable;
  v48 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
  v45 = v31;
  v46 = v32;
  swift_getWitnessTable();
  sub_23844EA0C();
  v33 = *(v20 + 8);
  v33(v22, v19);
  sub_23844EA0C();
  return (v33)(v26, v19);
}

unint64_t sub_23873657C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF156F0;
  if (!qword_27DF156F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF156F0);
  }

  return result;
}

unint64_t sub_2387365E0()
{
  result = qword_27DF0EC78;
  if (!qword_27DF0EC78)
  {
    type metadata accessor for OrderImageStyleModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EC78);
  }

  return result;
}

void sub_238736660(uint64_t a1)
{
  sub_23873675C();
  if (v1 <= 0x3F)
  {
    sub_2384482CC(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_2384482CC(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23873675C()
{
  if (!qword_27DF15708)
  {
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF15708);
    }
  }
}

uint64_t sub_2387367C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_238736828()
{
  result = qword_27DF15730;
  if (!qword_27DF15730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15728, &qword_238783AC8);
    sub_2387368E0();
    sub_23843A3E8(&qword_27DF0A4A0, &qword_27DF0A430, &unk_238768E20, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15730);
  }

  return result;
}

unint64_t sub_2387368E0()
{
  result = qword_27DF15738;
  if (!qword_27DF15738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15710, &qword_238783AB0);
    sub_238736998();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15738);
  }

  return result;
}

unint64_t sub_238736998()
{
  result = qword_27DF15740;
  if (!qword_27DF15740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15720, &qword_238783AC0);
    sub_23843A3E8(&qword_27DF15748, &qword_27DF15718, &qword_238783AB8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15740);
  }

  return result;
}

uint64_t sub_238736A50(uint64_t a1)
{
  v41 = sub_238758680();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v32 = v1;
  v46 = MEMORY[0x277D84F90];
  sub_2385FEAA8(0, v5, 0);
  v6 = v46;
  v7 = a1 + 56;
  result = sub_23875F320();
  v9 = result;
  v10 = 0;
  v38 = a1 + 56;
  v39 = v3;
  v36 = v3 + 8;
  v37 = v3 + 16;
  v33 = a1 + 64;
  v34 = v5;
  v35 = a1;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v42 = v10;
    v43 = v14;
    v15 = *(a1 + 48);
    v16 = v39;
    v17 = v6;
    v19 = v40;
    v18 = v41;
    (*(v39 + 16))(v40, v15 + *(v39 + 72) * v9, v41);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF157D8, &qword_238783C48);
    v20 = (__swift_allocate_boxed_opaque_existential_1(&v44) + *(v45 + 48));
    sub_238758640();
    *v20 = sub_2387585B0();
    v20[1] = v21;
    v22 = v19;
    v6 = v17;
    (*(v16 + 8))(v22, v18);
    v46 = v17;
    v24 = *(v17 + 16);
    v23 = *(v17 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_2385FEAA8((v23 > 1), v24 + 1, 1);
      v6 = v46;
    }

    *(v6 + 16) = v24 + 1;
    result = sub_23846F7C4(&v44, (v6 + 32 * v24 + 32));
    a1 = v35;
    v11 = 1 << *(v35 + 32);
    v7 = v38;
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v25 = *(v38 + 8 * v13);
    if ((v25 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v43 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v9 & 0x3F));
    if (v26)
    {
      v11 = __clz(__rbit64(v26)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v12 = v34;
    }

    else
    {
      v27 = v13 << 6;
      v28 = v13 + 1;
      v12 = v34;
      v29 = (v33 + 8 * v13);
      while (v28 < (v11 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_238434834(v9, v43, 0);
          v11 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_238434834(v9, v43, 0);
    }

LABEL_4:
    v10 = v42 + 1;
    v9 = v11;
    if (v42 + 1 == v12)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_238736D94(uint64_t a1)
{
  v43 = sub_238758680();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v34 = v1;
  v49 = MEMORY[0x277D84F90];
  sub_2385FEAC8(0, v5, 0);
  v6 = v49;
  v7 = a1 + 56;
  result = sub_23875F320();
  v9 = result;
  v10 = 0;
  v40 = v3 + 16;
  v41 = v3;
  v39 = v3 + 8;
  v35 = a1 + 64;
  v38 = xmmword_2387632F0;
  v36 = v5;
  v37 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 36);
    v44 = v10;
    v45 = v13;
    v14 = *(a1 + 48);
    v48 = v6;
    v16 = v41;
    v15 = v42;
    v17 = v43;
    (*(v41 + 16))(v42, v14 + *(v41 + 72) * v9, v43);
    v18 = sub_2387585F0();
    v46 = v19;
    v47 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF30, &qword_238783C40);
    sub_23875BCB0();
    v20 = a1;
    v21 = swift_allocObject();
    *(v21 + 16) = v38;
    sub_238758640();
    v22 = *(v16 + 8);
    v6 = v48;
    result = v22(v15, v17);
    v49 = v6;
    v24 = *(v6 + 16);
    v23 = *(v6 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_2385FEAC8((v23 > 1), v24 + 1, 1);
      v6 = v49;
    }

    *(v6 + 16) = v24 + 1;
    v25 = (v6 + 24 * v24);
    v26 = v46;
    v25[4] = v47;
    v25[5] = v26;
    v25[6] = v21;
    v11 = 1 << *(v20 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v37;
    v27 = *(v37 + 8 * v12);
    if ((v27 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    a1 = v20;
    if (v45 != *(v20 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v9 & 0x3F));
    if (v28)
    {
      v11 = __clz(__rbit64(v28)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v12 << 6;
      v30 = v12 + 1;
      v31 = (v35 + 8 * v12);
      while (v30 < (v11 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_238434834(v9, v45, 0);
          v11 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_238434834(v9, v45, 0);
    }

LABEL_4:
    v10 = v44 + 1;
    v9 = v11;
    if (v44 + 1 == v36)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_238737144(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_2385FEAA8(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  result = sub_23875F320();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v8;
  v29 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = *v11;
    v13 = v11[1];
    v14 = v3;
    v15 = *(*(v3 + 56) + 8 * v6);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11000, &unk_2387773A0);
    *&v31 = v12;
    *(&v31 + 1) = v13;
    v32 = v15;
    v33 = v16;
    v34 = v2;
    v17 = *(v2 + 16);
    v18 = *(v2 + 24);

    if (v17 >= v18 >> 1)
    {
      sub_2385FEAA8((v18 > 1), v17 + 1, 1);
      v2 = v34;
    }

    *(v2 + 16) = v17 + 1;
    result = sub_23846F7C4(&v31, (v2 + 32 * v17 + 32));
    v9 = 1 << *(v14 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v14;
    v4 = v29;
    v19 = *(v29 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v28;
    if (v28 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v26 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_238434834(v6, v28, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_238434834(v6, v28, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v27)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2387373B8()
{
  swift_getKeyPath(a8_8);
  swift_getKeyPath(byte_238783D80);
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23873742C()
{
  swift_getKeyPath("ЯzE");
  swift_getKeyPath(byte_238783DF8);
  sub_23875C2D0();

  return v1;
}

void sub_2387374A0(unint64_t a1, unint64_t a2)
{
  swift_getKeyPath("ЯzE");
  swift_getKeyPath(byte_238783DF8);
  sub_23875C2D0();

  swift_getKeyPath("ЯzE");
  swift_getKeyPath(byte_238783DF8);

  sub_23875C2E0();
  swift_getKeyPath("ЯzE");
  swift_getKeyPath(byte_238783DF8);
  sub_23875C2D0();

  if (v5 == __PAIR128__(a2, a1))
  {
  }

  else
  {
    v4 = sub_23875F630();

    if ((v4 & 1) == 0)
    {
      swift_getKeyPath(byte_238783E18);
      swift_getKeyPath(aX_29);

      sub_23875C2E0();
    }
  }
}

uint64_t sub_238737658()
{
  v1[9] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15808, &qword_238783E68);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15810, &qword_238783E70);
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15818, &qword_238783E78);
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = sub_23875C200();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106D8, &unk_238783E80);
  v1[22] = swift_task_alloc();
  v6 = sub_23875F090();
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106E0, &qword_238775DC0);
  v1[26] = v7;
  v1[27] = *(v7 - 8);
  v1[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15820, &qword_238783E90);
  v1[29] = v8;
  v1[30] = *(v8 - 8);
  v1[31] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15828, &qword_238783E98);
  v1[32] = v9;
  v1[33] = *(v9 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = sub_23875ED50();
  v1[37] = sub_23875ED40();
  v11 = sub_23875ECE0();
  v1[38] = v11;
  v1[39] = v10;

  return MEMORY[0x2822009F8](sub_238737A60, v11, v10);
}

uint64_t sub_238737A60()
{
  v22 = v0[35];
  v24 = v0[33];
  v25 = v0[32];
  v26 = v0[34];
  v27 = v0[31];
  v23 = v0[30];
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v13 = v0[23];
  v14 = v0[27];
  v17 = v0[19];
  v18 = v0[21];
  v20 = v0[18];
  v21 = v0[29];
  v15 = v0[20];
  v16 = v0[17];
  v19 = v0[16];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10700, &qword_238775DE0);
  sub_23875C2A0();
  swift_endAccess();
  sub_23875F080();
  sub_238449184(0, &qword_27DF12280, 0x277D85C78);
  v6 = sub_23875F0A0();
  v0[7] = v6;
  v7 = sub_23875F070();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_23843A3E8(&qword_27DF10710, &qword_27DF106E0, &qword_238775DC0, MEMORY[0x277CBCEC8]);
  sub_23873E3C0();
  sub_23875C350();
  sub_238439884(v5, &qword_27DF106D8, &unk_238783E80);

  (*(v3 + 8))(v4, v13);
  (*(v14 + 8))(v1, v2);
  (*(v15 + 104))(v18, *MEMORY[0x277CBCBC8], v17);
  (*(v16 + 104))(v20, *MEMORY[0x277CBCBE8], v19);
  sub_23843A3E8(&qword_27DF15830, &qword_27DF15820, &qword_238783E90, MEMORY[0x277CBCCF8]);
  sub_23875C340();
  (*(v16 + 8))(v20, v19);
  (*(v15 + 8))(v18, v17);
  (*(v23 + 8))(v27, v21);
  (*(v24 + 16))(v26, v22, v25);
  v8 = sub_23843A3E8(&qword_27DF15838, &qword_27DF15828, &qword_238783E98, MEMORY[0x277CBCC80]);
  MEMORY[0x23EE60D30](v26, v25, v8);
  sub_23875C240();
  v0[40] = sub_23875ED40();
  v9 = sub_23843A3E8(&qword_27DF15840, &qword_27DF15808, &qword_238783E68, MEMORY[0x277CBCDD0]);
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_238737EBC;
  v11 = v0[10];

  return MEMORY[0x282200308](v0 + 5, v11, v9);
}

uint64_t sub_238737EBC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_23875ECE0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2387384C8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_23875ECE0();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_238738054;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_238738054()
{

  *(v0 + 344) = *(v0 + 40);
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return MEMORY[0x2822009F8](sub_2387380C4, v1, v2);
}

uint64_t sub_2387380C4()
{
  v1 = v0[44];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[45] = v2;
    *v2 = v0;
    v2[1] = sub_2387382A0;
    v3 = v0[43];

    return sub_238738554(v3, v1);
  }

  else
  {
    v5 = v0[35];
    v6 = v0[32];
    v7 = v0[33];
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[12];
    v11 = v0[13];
    v13 = v0[10];
    v12 = v0[11];

    (*(v12 + 8))(v10, v13);
    (*(v9 + 8))(v8, v11);
    (*(v7 + 8))(v5, v6);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2387382A0()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_2387383E4, v3, v2);
}

uint64_t sub_2387383E4(uint64_t a1)
{
  v1[40] = sub_23875ED40();
  v2 = sub_23843A3E8(&qword_27DF15840, &qword_27DF15808, &qword_238783E68, MEMORY[0x277CBCDD0]);
  v3 = swift_task_alloc();
  v1[41] = v3;
  *v3 = v1;
  v3[1] = sub_238737EBC;
  v4 = v1[10];

  return MEMORY[0x282200308](v1 + 5, v4, v2);
}

uint64_t sub_2387384C8()
{
  *(v0 + 64) = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_238738554(uint64_t a1, uint64_t a2)
{
  v3[99] = v2;
  v3[98] = a2;
  v3[97] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF157E0, &qword_238783C58);
  v3[100] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF157E8, &qword_238783C60);
  v3[101] = swift_task_alloc();
  v4 = sub_2387587A0();
  v3[102] = v4;
  v3[103] = *(v4 - 8);
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  v3[110] = sub_23875ED50();
  v3[111] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v3[112] = v6;
  v3[113] = v5;

  return MEMORY[0x2822009F8](sub_238738704, v6, v5);
}

uint64_t sub_238738704()
{
  v79 = v0;
  v1 = *(v0 + 792);
  v2 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchText;
  *(v0 + 912) = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchText;
  v3 = (v1 + v2);
  v4 = *(v1 + v2 + 8);
  v5 = *(v0 + 784);
  if (!v4)
  {
    goto LABEL_33;
  }

  if (*v3 != *(v0 + 776) || v4 != v5)
  {
    if ((sub_23875F630() & 1) == 0)
    {
      goto LABEL_33;
    }

    v1 = *(v0 + 792);
  }

  v7 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchTags);
  swift_getKeyPath(byte_238783CB0);
  swift_getKeyPath(byte_238783CD8);

  sub_23875C2D0();

  v8 = *(v0 + 752);
  v9 = *(v8 + 16);
  if (!v9)
  {

    v10 = MEMORY[0x277D84F90];
    if (v7)
    {
      goto LABEL_29;
    }

LABEL_32:

    goto LABEL_33;
  }

  v59 = v7;
  v60 = v5;
  v61 = v3;
  v64 = MEMORY[0x277D84F90];
  sub_2385FEA88(0, v9, 0);
  v10 = v64;
  v11 = v8 + 32;
  v12 = v9 - 1;
  v13 = 0x1FAEFD000uLL;
  while (1)
  {
    sub_2385BA73C(v11, v0 + 208);
    sub_2385BA73C(v0 + 208, v0 + 64);
    v14 = *(v0 + 104);
    if (v14 <= 1)
    {
      v17 = (v0 + 64);
      if (*(v0 + 104))
      {
        sub_2384347C0(v17, v0 + 624);
        v40 = *(v0 + 648);
        v41 = *(v0 + 656);
        __swift_project_boxed_opaque_existential_1((v0 + 624), v40);
        (*(v41 + 8))(&v65, v40, v41);
        __swift_destroy_boxed_opaque_existential_1((v0 + 624));
      }

      else
      {
        sub_2384347C0(v17, v0 + 304);
        v18 = *(v0 + 328);
        v19 = *(v0 + 336);
        __swift_project_boxed_opaque_existential_1((v0 + 304), v18);
        (*(v19 + 8))(&v65, v18, v19);
        __swift_destroy_boxed_opaque_existential_1((v0 + 304));
      }
    }

    else if (v14 == 2)
    {
      sub_2384347C0((v0 + 64), v0 + 584);
      v20 = *(v0 + 608);
      v21 = *(v0 + 616);
      __swift_project_boxed_opaque_existential_1((v0 + 584), v20);
      (*(v21 + 8))(&v65, v20, v21);
      __swift_destroy_boxed_opaque_existential_1((v0 + 584));
    }

    else if (v14 == 3)
    {
      sub_2384347C0((v0 + 64), v0 + 544);
      v15 = *(v0 + 568);
      v16 = *(v0 + 576);
      __swift_project_boxed_opaque_existential_1((v0 + 544), v15);
      (*(v16 + 8))(&v65, v15, v16);
      __swift_destroy_boxed_opaque_existential_1((v0 + 544));
    }

    else
    {
      v63 = *(v0 + 64);
      v22 = *(v0 + 80);

      v23 = v13;
      v24 = [v22 title];
      v25 = sub_23875EA80();
      v27 = v26;

      v71 = v25;
      v72 = v27;
      v28 = v23;
      v62 = v22;
      v29 = [v22 (v23 + 3192)];
      v30 = sub_23875EA80();
      v32 = v31;

      v33 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v33 = v30 & 0xFFFFFFFFFFFFLL;
      }

      v13 = v28;
      if (v33)
      {
        v34 = (v28 + 3192);
        v35 = v62;
        v36 = [v62 v34];
        v37 = sub_23875EA80();
        v39 = v38;

        *&v73 = 8236;
        *(&v73 + 1) = 0xE200000000000000;
        MEMORY[0x23EE63650](v37, v39);

        MEMORY[0x23EE63650](v73, *(&v73 + 1));

        v25 = v71;
        v27 = v72;
      }

      else
      {
        v35 = v62;
      }

      v42 = sub_23875E030();
      v43 = swift_allocObject();
      *(v43 + 16) = v63;
      *(v43 + 32) = v35;
      *&v66 = v25;
      *(&v66 + 1) = v27;
      *&v67 = v42;
      *(&v67 + 1) = 0xD000000000000012;
      *(&v68 + 1) = 0x6E6F697461636F4CLL;
      *&v69 = 0xE800000000000000;
      *&v68 = 0x800000023878C470;
      v65 = v63;
      *(&v69 + 1) = &unk_238783DA8;
      v70 = v43;
    }

    v75 = v67;
    v76 = v68;
    v77 = v69;
    v78 = v70;
    v73 = v65;
    v74 = v66;
    sub_23871FAB0(v0 + 208);
    v45 = *(v64 + 16);
    v44 = *(v64 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_2385FEA88((v44 > 1), v45 + 1, 1);
    }

    *(v64 + 16) = v45 + 1;
    v46 = v64 + 88 * v45;
    v47 = v74;
    *(v46 + 32) = v73;
    *(v46 + 48) = v47;
    v48 = v75;
    v49 = v76;
    v50 = v77;
    *(v46 + 112) = v78;
    *(v46 + 80) = v49;
    *(v46 + 96) = v50;
    *(v46 + 64) = v48;
    if (!v12)
    {
      break;
    }

    --v12;
    v11 += 48;
  }

  v5 = v60;
  v3 = v61;
  v7 = v59;
  if (!v59)
  {
    goto LABEL_32;
  }

LABEL_29:
  v51 = sub_238519F34(v7, v10);

  if (v51)
  {

LABEL_41:

    v57 = *(v0 + 8);

    return v57();
  }

LABEL_33:
  *(v0 + 920) = v5;
  v52 = *(v0 + 776) & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v52 = HIBYTE(v5) & 0xF;
  }

  v53 = *(v0 + 792);
  if (!v52)
  {
    swift_getKeyPath(byte_238783CB0);
    swift_getKeyPath(byte_238783CD8);
    sub_23875C2D0();

    v54 = *(*(v0 + 736) + 16);

    v53 = *(v0 + 792);
    if (!v54)
    {

      swift_getKeyPath(byte_238783C68);
      swift_getKeyPath("ذzE");
      v56 = MEMORY[0x277D84F90];
      *(v0 + 744) = MEMORY[0x277D84F90];

      sub_23875C2E0();
      swift_getKeyPath(a8_8);
      swift_getKeyPath(byte_238783D80);
      *(v0 + 58) = 0;

      sub_23875C2E0();
      *v3 = xmmword_238783B30;

      *(v53 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchTags) = v56;

      goto LABEL_41;
    }
  }

  v55 = *(v53 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_tokenManager);
  *(v0 + 928) = v55;

  return MEMORY[0x2822009F8](sub_238738E64, v55, 0);
}

uint64_t sub_238738E64()
{
  v1 = v0[116];
  v2 = *(v1 + 112);
  v0[117] = v2;
  v3 = v2[2];
  v0[118] = v3;
  if (v3)
  {
    v0[121] = MEMORY[0x277D84F90];
    v0[120] = 0;
    v5 = v2[4];
    v4 = v2[5];
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_4;
    }

    type metadata accessor for TransactionTypeTokenProvider(0);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_4;
    }

    if (swift_dynamicCastMetatype())
    {
      v13 = 120;
    }

    else
    {
      type metadata accessor for AccountNameTokenProvider(0);
      if (!swift_dynamicCastMetatype())
      {
LABEL_4:
        v6 = 0;
LABEL_5:
        v0[122] = v6;
        v14 = (*(v4 + 16) + **(v4 + 16));
        v7 = swift_task_alloc();
        v0[123] = v7;
        *v7 = v0;
        v7[1] = sub_23873A33C;
        v8 = v0[98];
        v9 = v0[97];

        return v14(v9, v8, v6, v5, v4);
      }

      v13 = 128;
    }

    v6 = *(v1 + v13);

    goto LABEL_5;
  }

  v0[119] = MEMORY[0x277D84F90];
  v11 = v0[113];
  v12 = v0[112];

  return MEMORY[0x2822009F8](sub_238739074, v12, v11);
}

uint64_t sub_238739074()
{
  v189 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 920);
  v3 = *(v0 + 776);
  v4 = (*(v0 + 792) + *(v0 + 912));
  swift_getKeyPath(byte_238783C68);
  swift_getKeyPath("ذzE");
  *(v0 + 768) = v1;

  sub_23875C2E0();
  *v4 = v3;
  v4[1] = v2;

  swift_getKeyPath(byte_238783CB0);
  swift_getKeyPath(byte_238783CD8);

  sub_23875C2D0();

  v5 = *(v0 + 760);
  v6 = *(v5 + 16);
  if (!v6)
  {

    v7 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v174 = MEMORY[0x277D84F90];
  sub_2385FEA88(0, v6, 0);
  v7 = v174;
  v8 = v5 + 32;
  v9 = v6 - 1;
  v10 = &selRef_returnDeadline;
  while (1)
  {
    sub_2385BA73C(v8, v0 + 112);
    sub_2385BA73C(v0 + 112, v0 + 160);
    v11 = *(v0 + 200);
    if (v11 <= 1)
    {
      v15 = (v0 + 160);
      if (*(v0 + 200))
      {
        sub_2384347C0(v15, v0 + 464);
        v37 = *(v0 + 488);
        v38 = *(v0 + 496);
        __swift_project_boxed_opaque_existential_1((v0 + 464), v37);
        (*(v38 + 8))(&v175, v37, v38);
        v14 = (v0 + 464);
      }

      else
      {
        sub_2384347C0(v15, v0 + 504);
        v16 = *(v0 + 528);
        v17 = *(v0 + 536);
        __swift_project_boxed_opaque_existential_1((v0 + 504), v16);
        (*(v17 + 8))(&v175, v16, v17);
        v14 = (v0 + 504);
      }

      goto LABEL_16;
    }

    if (v11 == 2)
    {
      sub_2384347C0((v0 + 160), v0 + 424);
      v18 = *(v0 + 448);
      v19 = *(v0 + 456);
      __swift_project_boxed_opaque_existential_1((v0 + 424), v18);
      (*(v19 + 8))(&v175, v18, v19);
      v14 = (v0 + 424);
      goto LABEL_16;
    }

    if (v11 == 3)
    {
      sub_2384347C0((v0 + 160), v0 + 384);
      v12 = *(v0 + 408);
      v13 = *(v0 + 416);
      __swift_project_boxed_opaque_existential_1((v0 + 384), v12);
      (*(v13 + 8))(&v175, v12, v13);
      v14 = (v0 + 384);
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v14);
      goto LABEL_17;
    }

    v161 = *(v0 + 160);
    v20 = *(v0 + 176);
    v168 = v8;

    v21 = [v20 title];
    v22 = sub_23875EA80();
    v24 = v23;

    v181 = v22;
    v182 = v24;
    v25 = [v20 v10[146]];
    v26 = v10;
    v27 = sub_23875EA80();
    v29 = v28;

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = [v20 v26 + 3192];
      v32 = sub_23875EA80();
      v34 = v33;

      *&v183 = 8236;
      *(&v183 + 1) = 0xE200000000000000;
      MEMORY[0x23EE63650](v32, v34);

      MEMORY[0x23EE63650](v183, *(&v183 + 1));

      v22 = v181;
      v24 = v182;
    }

    v10 = v26;
    v35 = sub_23875E030();
    v36 = swift_allocObject();
    *(v36 + 16) = v161;
    *(v36 + 32) = v20;
    *&v176 = v22;
    *(&v176 + 1) = v24;
    *&v177 = v35;
    *(&v177 + 1) = 0xD000000000000012;
    *(&v178 + 1) = 0x6E6F697461636F4CLL;
    *&v179 = 0xE800000000000000;
    *&v178 = 0x800000023878C470;
    v175 = v161;
    *(&v179 + 1) = &unk_238782BD0;
    v180 = v36;
    v8 = v168;
LABEL_17:
    v185 = v177;
    v186 = v178;
    v187 = v179;
    v188 = v180;
    v183 = v175;
    v184 = v176;
    sub_23871FAB0(v0 + 112);
    v40 = *(v174 + 16);
    v39 = *(v174 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_2385FEA88((v39 > 1), v40 + 1, 1);
    }

    *(v174 + 16) = v40 + 1;
    v41 = v174 + 88 * v40;
    v42 = v184;
    *(v41 + 32) = v183;
    *(v41 + 48) = v42;
    v43 = v185;
    v44 = v186;
    v45 = v187;
    *(v41 + 112) = v188;
    *(v41 + 80) = v44;
    *(v41 + 96) = v45;
    *(v41 + 64) = v43;
    if (!v9)
    {
      break;
    }

    --v9;
    v8 += 48;
  }

LABEL_23:
  *(*(v0 + 792) + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchTags) = v7;

  if (qword_27DF08D48 != -1)
  {
    goto LABEL_91;
  }

  while (2)
  {
    v46 = qword_27DF2F8D8;
    v47 = MEMORY[0x277D84F90];
    v164 = *(qword_27DF2F8D8 + 16);
    if (v164)
    {
      v48 = 0;
      v49 = *(v0 + 824);
      v158 = v49;
      v150 = (v49 + 8);
      v153 = (v49 + 32);
      v162 = qword_27DF2F8D8;
      while (v48 < *(v46 + 16))
      {
        v50 = v47;
        v169 = (*(v158 + 80) + 32) & ~*(v158 + 80);
        v51 = *(v158 + 72);
        (*(v158 + 16))(*(v0 + 872), v46 + v169 + v51 * v48, *(v0 + 816));
        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v52 = *(v0 + 784);
        v53 = *(v0 + 776);
        sub_238758770();
        v54 = sub_23875EAE0();
        v56 = v55;

        *(v0 + 696) = v54;
        *(v0 + 704) = v56;
        *(v0 + 680) = v53;
        *(v0 + 688) = v52;
        sub_2384397A8(v57, v58, v59);
        *(v0 + 664) = sub_23875F240();
        *(v0 + 672) = v60;
        v61 = sub_23875F2A0();

        if (v61)
        {
          v62 = *v153;
          (*v153)(*(v0 + 864), *(v0 + 872), *(v0 + 816));
          v47 = v50;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v183 = v50;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2385FE9E0(0, *(v50 + 16) + 1, 1);
            v47 = v183;
          }

          v65 = *(v47 + 16);
          v64 = *(v47 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_2385FE9E0((v64 > 1), v65 + 1, 1);
            v47 = v183;
          }

          v66 = *(v0 + 864);
          v67 = *(v0 + 816);
          *(v47 + 16) = v65 + 1;
          v62(v47 + v169 + v65 * v51, v66, v67);
        }

        else
        {
          (*v150)(*(v0 + 872), *(v0 + 816));
          v47 = v50;
        }

        v46 = v162;
        if (v164 == ++v48)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      swift_once();
      continue;
    }

    break;
  }

LABEL_37:
  swift_getKeyPath(byte_238783CB0);
  swift_getKeyPath(byte_238783CD8);
  sub_23875C2D0();

  v68 = *(v0 + 712);
  v69 = *(v68 + 16);
  v163 = v47;
  if (v69)
  {
    v70 = v68 + 32;
    v71 = *(v0 + 824);
    v72 = (v71 + 56);
    v154 = (v71 + 16);
    v73 = (v71 + 48);
    v159 = v71;
    v165 = (v71 + 32);
    v74 = MEMORY[0x277D84F90];
    v157 = (v71 + 48);
    do
    {
      v170 = v74;
      sub_2385BA73C(v70, v0 + 16);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      *(v0 + 281) = *(v0 + 41);
      v75 = *(v0 + 32);
      *(v0 + 256) = *(v0 + 16);
      *(v0 + 272) = v75;
      if (*(v0 + 296) == 1)
      {
        v76 = v72;
        sub_2384347C0((v0 + 256), v0 + 344);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15800, &qword_238783DA0);
        v77 = type metadata accessor for TransactionTypeTokenProvider(0);
        v78 = swift_dynamicCast();
        v79 = *(*(v77 - 8) + 56);
        v80 = *(v0 + 816);
        v81 = *(v0 + 808);
        v82 = *(v0 + 800);
        if (v78)
        {
          v79(*(v0 + 800), 0, 1, v77);
          (*v154)(v81, v82 + *(v77 + 20), v80);
          sub_23873E270(v82);
          v72 = v76;
          (*v76)(v81, 0, 1, v80);
        }

        else
        {
          v79(*(v0 + 800), 1, 1, v77);
          sub_238439884(v82, &qword_27DF157E0, &qword_238783C58);
          v72 = v76;
          (*v76)(v81, 1, 1, v80);
        }

        v73 = v157;
      }

      else
      {
        (*v72)(*(v0 + 808), 1, 1, *(v0 + 816));
        sub_23871FAB0(v0 + 256);
      }

      v83 = *(v0 + 816);
      v84 = *(v0 + 808);
      if ((*v73)(v84, 1, v83) == 1)
      {
        sub_238439884(v84, &qword_27DF157E8, &qword_238783C60);
        v74 = v170;
      }

      else
      {
        v85 = *v165;
        (*v165)(*(v0 + 856), v84, v83);
        v74 = v170;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_23849848C(0, v170[2] + 1, 1, v170);
        }

        v87 = v74[2];
        v86 = v74[3];
        if (v87 >= v86 >> 1)
        {
          v74 = sub_23849848C((v86 > 1), v87 + 1, 1, v74);
        }

        v88 = *(v0 + 856);
        v89 = *(v0 + 816);
        v74[2] = v87 + 1;
        v85(v74 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v87, v88, v89);
      }

      v70 += 48;
      --v69;
    }

    while (v69);

    if (!v74[2])
    {
LABEL_70:

      goto LABEL_73;
    }
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_70;
    }
  }

  v90 = *(v47 + 16);
  v171 = v74;

  v166 = v90;
  if (v90)
  {
    v91 = 0;
    v92 = *(v0 + 824);
    v155 = (v92 + 32);
    v160 = v92;
    v151 = (v92 + 8);
    v93 = MEMORY[0x277D84F90];
    while (v91 < *(v47 + 16))
    {
      v94 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v95 = *(v160 + 72);
      v96 = (v91 + 1);
      (*(v160 + 16))(*(v0 + 848), v47 + v94 + v95 * v91, *(v0 + 816));
      v97 = v171 + v94;
      v98 = v171[2] + 1;
      do
      {
        if (!--v98)
        {
          (*v151)(*(v0 + 848), *(v0 + 816));
          goto LABEL_59;
        }

        sub_23867CA98();
        v97 += v95;
      }

      while ((sub_23875E9E0() & 1) == 0);
      v99 = *v155;
      (*v155)(*(v0 + 840), *(v0 + 848), *(v0 + 816));
      v100 = swift_isUniquelyReferenced_nonNull_native();
      *&v183 = v93;
      if ((v100 & 1) == 0)
      {
        sub_2385FE9E0(0, *(v93 + 16) + 1, 1);
        v93 = v183;
      }

      v102 = *(v93 + 16);
      v101 = *(v93 + 24);
      if (v102 >= v101 >> 1)
      {
        sub_2385FE9E0((v101 > 1), v102 + 1, 1);
        v93 = v183;
      }

      v103 = *(v0 + 840);
      v104 = *(v0 + 816);
      *(v93 + 16) = v102 + 1;
      v99(v93 + v94 + v102 * v95, v103, v104);
LABEL_59:
      v91 = v96;
      v47 = v163;
      if (v96 == v166)
      {
        goto LABEL_72;
      }
    }

    goto LABEL_90;
  }

  v93 = MEMORY[0x277D84F90];
LABEL_72:
  swift_bridgeObjectRelease_n();

  v47 = v93;
LABEL_73:
  v105 = MEMORY[0x277D837D0];
  *(v0 + 1000) = sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_2387632F0;
  *(v106 + 56) = v105;
  v109 = sub_238448C58(v106, v107, v108);
  *(v106 + 64) = v109;
  *(v106 + 32) = 0;
  *(v106 + 40) = 0xE000000000000000;
  v110 = sub_23875EF80();
  *(v0 + 1008) = v110;
  *(v0 + 1016) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_2387632E0;
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_2387632F0;
  *(v112 + 56) = v105;
  *(v112 + 64) = v109;
  v156 = v109;
  *(v112 + 32) = 0;
  *(v112 + 40) = 0xE000000000000000;
  *(v111 + 32) = sub_23875EF80();
  *(v111 + 40) = v110;
  v113 = swift_allocObject();
  v114 = v113;
  *(v113 + 16) = xmmword_2387632F0;
  v115 = v47;
  v116 = *(v47 + 16);
  v152 = v110;
  if (v116)
  {
    v149 = v113;
    v117 = *(v0 + 824);
    *&v183 = MEMORY[0x277D84F90];
    v118 = v110;
    sub_2385FEA68(0, v116, 0);
    v119 = v183;
    v120 = *(v117 + 16);
    v117 += 16;
    v121 = v115 + ((*(v117 + 64) + 32) & ~*(v117 + 64));
    v167 = *(v117 + 56);
    v172 = v120;
    v122 = (v117 - 8);
    do
    {
      v123 = *(v0 + 832);
      v124 = *(v0 + 816);
      v172(v123, v121, v124);
      v125 = sub_238758790();
      (*v122)(v123, v124);
      *&v183 = v119;
      v127 = *(v119 + 16);
      v126 = *(v119 + 24);
      if (v127 >= v126 >> 1)
      {
        sub_2385FEA68((v126 > 1), v127 + 1, 1);
        v119 = v183;
      }

      *(v119 + 16) = v127 + 1;
      *(v119 + 2 * v127 + 32) = v125;
      v121 += v167;
      --v116;
    }

    while (v116);

    v114 = v149;
  }

  else
  {
    v128 = v110;

    v119 = MEMORY[0x277D84F90];
  }

  v129 = *(v0 + 920);
  if ((v129 & 0x2000000000000000) != 0)
  {
    v130 = HIBYTE(v129) & 0xF;
  }

  else
  {
    v130 = *(v0 + 776) & 0xFFFFFFFFFFFFLL;
  }

  v114[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF157F0, &qword_238783D00);
  v114[8] = sub_23843A3E8(&qword_27DF157F8, &qword_27DF157F0, &qword_238783D00, MEMORY[0x277CC9C50]);
  v114[4] = v119;
  *(v111 + 48) = sub_23875EF80();
  v131 = sub_23875EC60();

  v132 = objc_opt_self();
  *(v0 + 1024) = v132;
  v133 = [v132 andPredicateWithSubpredicates_];
  *(v0 + 1032) = v133;

  if (v130)
  {
    v173 = v133;
    v134 = *(v0 + 784);
    v135 = *(v0 + 776);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_2387632E0;
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_2387632F0;
    *(v137 + 56) = MEMORY[0x277D837D0];
    *(v137 + 64) = v156;
    *(v137 + 32) = v135;
    *(v137 + 40) = v134;

    *(v136 + 32) = sub_23875EF80();
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_238763E60;
    *(v138 + 32) = v152;
    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_2387632F0;
    *(v139 + 56) = MEMORY[0x277D837D0];
    *(v139 + 64) = v156;
    *(v139 + 32) = v135;
    *(v139 + 40) = v134;

    v140 = v152;
    *(v138 + 40) = sub_23875EF80();
    v141 = sub_23875EC60();

    v142 = [v132 andPredicateWithSubpredicates_];

    *(v136 + 40) = v142;
    *(v136 + 48) = v173;
    v143 = v173;
    v144 = sub_23875EC60();

    v145 = [v132 orPredicateWithSubpredicates_];
  }

  else
  {
    v145 = [objc_opt_self() predicateWithValue_];
  }

  *(v0 + 1040) = v145;
  *(v0 + 720) = MEMORY[0x277D84F90];
  v146 = v145;
  v147 = swift_task_alloc();
  *(v0 + 1048) = v147;
  *v147 = v0;
  v147[1] = sub_23873A750;

  return sub_23873B3CC(v0 + 720);
}

uint64_t sub_23873A33C(uint64_t a1)
{
  v2 = *(*v1 + 928);
  *(*v1 + 992) = a1;

  return MEMORY[0x2822009F8](sub_23873A470, v2, 0);
}

uint64_t sub_23873A470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[124];
  isUniquelyReferenced_nonNull_native = v3[121];
  v6 = *(v4 + 16);
  v7 = *(isUniquelyReferenced_nonNull_native + 16);
  v8 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_30;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3[121];
  if (isUniquelyReferenced_nonNull_native && v8 <= *(v9 + 24) >> 1)
  {
    if (*(v4 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v13 = v7 + v6;
    }

    else
    {
      v13 = v7;
    }

    isUniquelyReferenced_nonNull_native = sub_238498264(isUniquelyReferenced_nonNull_native, v13, 1, v3[121]);
    v9 = isUniquelyReferenced_nonNull_native;
    if (*(v4 + 16))
    {
LABEL_5:
      if ((*(v9 + 24) >> 1) - *(v9 + 16) >= v6)
      {
        swift_arrayInitWithCopy();

        if (!v6)
        {
          goto LABEL_14;
        }

        v10 = *(v9 + 16);
        v11 = __OFADD__(v10, v6);
        v12 = v10 + v6;
        if (!v11)
        {
          *(v9 + 16) = v12;
          goto LABEL_14;
        }

LABEL_32:
        __break(1u);
        return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, a2, a3);
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  if (v6)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_14:
  v14 = v3[120] + 1;
  if (v14 == v3[118])
  {

    v3[119] = v9;
    a3 = v3[113];
    a2 = v3[112];
    isUniquelyReferenced_nonNull_native = sub_238739074;

    return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, a2, a3);
  }

  v3[121] = v9;
  v3[120] = v14;
  v15 = v3[117] + 16 * v14;
  v17 = *(v15 + 32);
  v16 = *(v15 + 40);
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_20;
  }

  type metadata accessor for TransactionTypeTokenProvider(0);
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_20;
  }

  if (swift_dynamicCastMetatype())
  {
    v23 = 120;
LABEL_28:
    v18 = *(v3[116] + v23);

    goto LABEL_21;
  }

  type metadata accessor for AccountNameTokenProvider(0);
  if (swift_dynamicCastMetatype())
  {
    v23 = 128;
    goto LABEL_28;
  }

LABEL_20:
  v18 = 0;
LABEL_21:
  v3[122] = v18;
  v24 = (*(v16 + 16) + **(v16 + 16));
  v19 = swift_task_alloc();
  v3[123] = v19;
  *v19 = v3;
  v19[1] = sub_23873A33C;
  v20 = v3[98];
  v21 = v3[97];

  return v24(v21, v20, v18, v17, v16);
}

uint64_t sub_23873A750()
{
  v1 = *v0;

  v2 = *(v1 + 904);
  v3 = *(v1 + 896);

  return MEMORY[0x2822009F8](sub_23873A870, v3, v2);
}

uint64_t sub_23873A870()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v14 = *(v0 + 1008);
  v4 = *(v0 + 792);

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2387632E0;
  v6 = *(v4 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_basePredicate);
  *(v5 + 32) = v6;
  *(v5 + 40) = v1;
  v7 = v6;
  v8 = sub_23875EC60();

  v9 = [v3 andPredicateWithSubpredicates_];

  *(v5 + 48) = v9;
  v10 = sub_23875EC60();

  v11 = [v3 andPredicateWithSubpredicates_];

  swift_getKeyPath(aP_31);
  swift_getKeyPath(aP_32);
  *(v0 + 728) = v11;

  sub_23875C2E0();
  swift_getKeyPath(a8_8);
  swift_getKeyPath(byte_238783D80);
  *(v0 + 57) = 1;

  sub_23875C2E0();

  v12 = *(v0 + 8);

  return v12();
}

void sub_23873AAB4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23849156C(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_23873CB88(v4);
  *a1 = v2;
}

uint64_t sub_23873AB20()
{
  swift_getKeyPath(aP_31);
  swift_getKeyPath(aP_32);
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23873ABA8(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_23875C2D0();

  return v4;
}

uint64_t sub_23873AC14()
{
  swift_getKeyPath(byte_238783E18);
  swift_getKeyPath(aX_29);
  sub_23875C2D0();

  return v1;
}

void sub_23873AC88(void *a2@<X8>)
{
  swift_getKeyPath(byte_238783C68);
  swift_getKeyPath("ذzE");
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_23873AD08(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_238783C68);
  swift_getKeyPath("ذzE");

  return sub_23875C2E0();
}

void sub_23873AD84(void *a2@<X8>)
{
  swift_getKeyPath(aP_31);
  swift_getKeyPath(aP_32);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_23873AE04(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(aP_31);
  swift_getKeyPath(aP_32);
  v3 = v2;

  return sub_23875C2E0();
}

uint64_t sub_23873AECC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15858, &unk_238783EB8);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15850, &unk_238783EA8);
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15848, &qword_238783EA0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10700, &qword_238775DE0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchText;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_23875C290();
  (*(v14 + 32))(v1 + v17, v16, v13);
  v18 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchTags;
  v19 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B660, &unk_238768630);
  sub_23875C290();
  v20 = *(v10 + 32);
  v20(v1 + v18, v12, v9);
  v21 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchSuggestions;
  v40 = v19;
  sub_23875C290();
  v20(v1 + v21, v12, v9);
  v22 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchPredicate;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF157C0, &qword_238783B60);
  sub_23875C290();
  (*(v6 + 32))(v1 + v22, v8, v33);
  v23 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchSubmitted;
  LOBYTE(v40) = 0;
  v24 = v34;
  sub_23875C290();
  (*(v35 + 32))(v1 + v23, v24, v36);
  v25 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__state;
  LOBYTE(v40) = 0;
  v26 = v37;
  sub_23875C290();
  (*(v38 + 32))(v1 + v25, v26, v39);
  v27 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_tokenManager;
  type metadata accessor for TokenManager();
  swift_allocObject();
  *(v1 + v27) = sub_2385B9818();
  if (v19 >> 62 && sub_23875F3A0())
  {
    v28 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  *(v1 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_cancellableSet) = v28;
  v29 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_basePredicate;
  sub_23875A230();
  *(v1 + v29) = MEMORY[0x23EE5ECD0]();
  *(v1 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchTags) = 0;
  v30 = (v1 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchText);
  *v30 = 0;
  v30[1] = 0;
  return v1;
}

uint64_t sub_23873B3CC(uint64_t a1)
{
  v2[63] = a1;
  v2[64] = v1;
  sub_23875ED50();
  v2[65] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v2[66] = v4;
  v2[67] = v3;

  return MEMORY[0x2822009F8](sub_23873B468, v4, v3);
}

void sub_23873B468()
{
  v64 = v0;
  swift_getKeyPath(byte_238783CB0);
  swift_getKeyPath(byte_238783CD8);
  sub_23875C2D0();

  v1 = sub_23873DC44(*(v0 + 480));

  v2 = v1[2];
  if (v2)
  {
    v3 = sub_238569F1C(v2, 0);
    v4 = sub_23856BAAC(&v63, v3 + 4, v2, v1);
    v5 = v63;

    sub_238434840(v5);
    if (v4 != v2)
    {
LABEL_43:
      __break(1u);
      return;
    }
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v63 = v3;
  sub_23873AAB4(&v63);
  v6 = v63;
  *(v0 + 544) = v63;
  v7 = *(v6 + 16);
  *(v0 + 552) = v7;
  if (!v7)
  {
LABEL_26:

    v29 = *(v0 + 8);

    v29();
    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = &selRef_returnDeadline;
  while (1)
  {
    *(v0 + 560) = v8;
    v14 = *(v0 + 544);
    if (v8 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_43;
    }

    v15 = *(v14 + 24 * v8 + 48);
    *(v0 + 568) = v15;
    v16 = *(v15 + 16);
    *(v0 + 576) = v16;
    if (v16)
    {
      break;
    }

    v17 = *(v9 + 16);
    if (!v17)
    {

LABEL_8:
      v11 = *(v0 + 504);
      sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
      v12 = sub_23875EC60();

      v13 = [objc_opt_self() v10[18]];

      MEMORY[0x23EE63730]();
      if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23875EC90();
        v10 = &selRef_returnDeadline;
      }

      sub_23875ECB0();
      goto LABEL_11;
    }

    if (v17 != 1)
    {
      *(v0 + 496) = v9;
      sub_23875F4E0();
      v21 = (v9 + 32);
      do
      {
        v22 = *v21++;
        v23 = v22;
        sub_23875F4C0();
        sub_23875F4F0();
        sub_23875F500();
        sub_23875F4D0();
        --v17;
      }

      while (v17);

      v10 = &selRef_returnDeadline;
      goto LABEL_8;
    }

    v18 = *(v0 + 504);
    v19 = *(v9 + 32);

    v20 = v19;
    MEMORY[0x23EE63730]();
    if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23875EC90();
      v10 = &selRef_returnDeadline;
    }

    sub_23875ECB0();

LABEL_11:
    v8 = *(v0 + 560) + 1;
    if (v8 == *(v0 + 552))
    {
      goto LABEL_26;
    }
  }

  *(v0 + 592) = v9;
  *(v0 + 584) = 0;

  sub_2385BA73C(v24 + 32, v0 + 192);
  sub_2385BA73C(v0 + 192, v0 + 240);
  v25 = *(v0 + 280);
  if (v25 <= 1)
  {
    v30 = (v0 + 240);
    if (*(v0 + 280))
    {
      sub_2384347C0(v30, v0 + 368);
      v55 = *(v0 + 392);
      v56 = *(v0 + 400);
      __swift_project_boxed_opaque_existential_1((v0 + 368), v55);
      (*(v56 + 8))(v55, v56);
      v28 = (v0 + 368);
    }

    else
    {
      sub_2384347C0(v30, v0 + 408);
      v31 = *(v0 + 432);
      v32 = *(v0 + 440);
      __swift_project_boxed_opaque_existential_1((v0 + 408), v31);
      (*(v32 + 8))(v31, v32);
      v28 = (v0 + 408);
    }

    goto LABEL_38;
  }

  if (v25 == 2)
  {
    sub_2384347C0((v0 + 240), v0 + 328);
    v33 = *(v0 + 352);
    v34 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v33);
    (*(v34 + 8))(v33, v34);
    v28 = (v0 + 328);
LABEL_38:
    __swift_destroy_boxed_opaque_existential_1(v28);
    goto LABEL_39;
  }

  if (v25 == 3)
  {
    sub_2384347C0((v0 + 240), v0 + 288);
    v26 = *(v0 + 312);
    v27 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 288), v26);
    (*(v27 + 8))(v26, v27);
    v28 = (v0 + 288);
    goto LABEL_38;
  }

  v36 = *(v0 + 240);
  v35 = *(v0 + 248);
  v37 = *(v0 + 256);

  v38 = [v37 title];
  v39 = sub_23875EA80();
  v41 = v40;

  *(v0 + 448) = v39;
  *(v0 + 456) = v41;
  v42 = [v37 subtitle];
  v43 = sub_23875EA80();
  v45 = v44;

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    v47 = [v37 subtitle];
    v48 = sub_23875EA80();
    v50 = v49;

    *(v0 + 464) = 8236;
    *(v0 + 472) = 0xE200000000000000;
    MEMORY[0x23EE63650](v48, v50);

    MEMORY[0x23EE63650](*(v0 + 464), *(v0 + 472));
  }

  v51 = *(v0 + 448);
  v52 = *(v0 + 456);
  v53 = sub_23875E030();
  v54 = swift_allocObject();
  v54[2] = v36;
  v54[3] = v35;
  v54[4] = v37;
  *(v0 + 32) = v51;
  *(v0 + 40) = v52;
  *(v0 + 48) = v53;
  *(v0 + 56) = 0xD000000000000012;
  *(v0 + 72) = 0x6E6F697461636F4CLL;
  *(v0 + 80) = 0xE800000000000000;
  *(v0 + 64) = 0x800000023878C470;
  *(v0 + 16) = v36;
  *(v0 + 24) = v35;
  *(v0 + 88) = &unk_238783DB0;
  *(v0 + 96) = v54;
LABEL_39:
  v57 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 80);
  *(v0 + 136) = *(v0 + 48);
  *(v0 + 152) = v57;
  v58 = *(v0 + 96);
  *(v0 + 184) = v58;
  v59 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v59;
  v60 = *(v0 + 176);
  *(v0 + 600) = v58;

  sub_2384B5DE4(v0 + 104);
  v62 = (v60 + *v60);
  v61 = swift_task_alloc();
  *(v0 + 608) = v61;
  *v61 = v0;
  v61[1] = sub_23873BC5C;

  v62(v0 + 488);
}

uint64_t sub_23873BC5C()
{
  v1 = *v0;

  v2 = *(v1 + 536);
  v3 = *(v1 + 528);

  return MEMORY[0x2822009F8](sub_23873BDA0, v3, v2);
}

uint64_t sub_23873BDA0()
{
  v1 = *(v0 + 488);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 592);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_44:
    v3 = sub_238498380(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_238498380((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 576);
  v7 = *(v0 + 584) + 1;
  sub_23871FAB0(v0 + 192);
  *(v3 + 2) = v5 + 1;
  *&v3[8 * v5 + 32] = v1;
  if (v7 != v6)
  {
    v23 = *(v0 + 584) + 1;
    v22 = *(v0 + 568);
LABEL_26:
    *(v0 + 592) = v3;
    *(v0 + 584) = v23;
    sub_2385BA73C(v22 + 48 * v23 + 32, v0 + 192);
    sub_2385BA73C(v0 + 192, v0 + 240);
    v24 = *(v0 + 280);
    if (v24 <= 1)
    {
      v28 = (v0 + 240);
      if (*(v0 + 280))
      {
        sub_2384347C0(v28, v0 + 368);
        v53 = *(v0 + 392);
        v54 = *(v0 + 400);
        __swift_project_boxed_opaque_existential_1((v0 + 368), v53);
        (*(v54 + 8))(v53, v54);
        v27 = (v0 + 368);
      }

      else
      {
        sub_2384347C0(v28, v0 + 408);
        v29 = *(v0 + 432);
        v30 = *(v0 + 440);
        __swift_project_boxed_opaque_existential_1((v0 + 408), v29);
        (*(v30 + 8))(v29, v30);
        v27 = (v0 + 408);
      }
    }

    else if (v24 == 2)
    {
      sub_2384347C0((v0 + 240), v0 + 328);
      v31 = *(v0 + 352);
      v32 = *(v0 + 360);
      __swift_project_boxed_opaque_existential_1((v0 + 328), v31);
      (*(v32 + 8))(v31, v32);
      v27 = (v0 + 328);
    }

    else
    {
      if (v24 != 3)
      {
        v34 = *(v0 + 240);
        v33 = *(v0 + 248);
        v35 = *(v0 + 256);

        v36 = [v35 title];
        v37 = sub_23875EA80();
        v39 = v38;

        *(v0 + 448) = v37;
        *(v0 + 456) = v39;
        v40 = [v35 subtitle];
        v41 = sub_23875EA80();
        v43 = v42;

        v44 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v44 = v41 & 0xFFFFFFFFFFFFLL;
        }

        if (v44)
        {
          v45 = [v35 subtitle];
          v46 = sub_23875EA80();
          v48 = v47;

          *(v0 + 464) = 8236;
          *(v0 + 472) = 0xE200000000000000;
          MEMORY[0x23EE63650](v46, v48);

          MEMORY[0x23EE63650](*(v0 + 464), *(v0 + 472));
        }

        v49 = *(v0 + 448);
        v50 = *(v0 + 456);
        v51 = sub_23875E030();
        v52 = swift_allocObject();
        v52[2] = v34;
        v52[3] = v33;
        v52[4] = v35;
        *(v0 + 32) = v49;
        *(v0 + 40) = v50;
        *(v0 + 48) = v51;
        *(v0 + 56) = 0xD000000000000012;
        *(v0 + 72) = 0x6E6F697461636F4CLL;
        *(v0 + 80) = 0xE800000000000000;
        *(v0 + 64) = 0x800000023878C470;
        *(v0 + 16) = v34;
        *(v0 + 24) = v33;
        *(v0 + 88) = &unk_238783DB0;
        *(v0 + 96) = v52;
        goto LABEL_40;
      }

      sub_2384347C0((v0 + 240), v0 + 288);
      v25 = *(v0 + 312);
      v26 = *(v0 + 320);
      __swift_project_boxed_opaque_existential_1((v0 + 288), v25);
      (*(v26 + 8))(v25, v26);
      v27 = (v0 + 288);
    }

    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_40:
    v55 = *(v0 + 64);
    *(v0 + 168) = *(v0 + 80);
    *(v0 + 136) = *(v0 + 48);
    *(v0 + 152) = v55;
    v56 = *(v0 + 32);
    *(v0 + 104) = *(v0 + 16);
    *(v0 + 184) = *(v0 + 96);
    *(v0 + 120) = v56;
    v57 = *(v0 + 176);
    *(v0 + 600) = *(v0 + 184);

    sub_2384B5DE4(v0 + 104);
    v59 = (v57 + *v57);
    v58 = swift_task_alloc();
    *(v0 + 608) = v58;
    *v58 = v0;
    v58[1] = sub_23873BC5C;

    return v59(v0 + 488);
  }

  v8 = MEMORY[0x277D84F90];
  v1 = &selRef_returnDeadline;
  while (1)
  {
    v9 = *(v3 + 2);
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = *(v0 + 504);
        v11 = *(v3 + 4);

        v3 = v11;
        MEMORY[0x23EE63730]();
        if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23875EC90();
        }

        sub_23875ECB0();

        goto LABEL_18;
      }

      *(v0 + 496) = v8;
      sub_23875F4E0();
      v12 = 32;
      do
      {
        v13 = *&v3[v12];
        sub_23875F4C0();
        sub_23875F4F0();
        sub_23875F500();
        sub_23875F4D0();
        v12 += 8;
        --v9;
      }

      while (v9);

      v1 = &selRef_returnDeadline;
    }

    else
    {
    }

    v14 = *(v0 + 504);
    sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
    v15 = sub_23875EC60();

    v3 = [objc_opt_self() v1[18]];

    MEMORY[0x23EE63730]();
    if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23875EC90();
    }

    sub_23875ECB0();
LABEL_18:
    v16 = *(v0 + 560) + 1;
    if (v16 == *(v0 + 552))
    {
      break;
    }

    *(v0 + 560) = v16;
    v17 = *(v0 + 544);
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v18 = *(v17 + 24 * v16 + 48);
    *(v0 + 568) = v18;
    v19 = *(v18 + 16);
    *(v0 + 576) = v19;
    v3 = v8;
    if (v19)
    {

      v23 = 0;
      v3 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }
  }

  v20 = *(v0 + 8);

  return v20();
}

double sub_23873C4FC(uint64_t a1)
{
  v2 = v1;
  *(v2 + 128) = sub_238736A50(a1);

  v4 = sub_238736D94(a1);
  if (*(v4 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDC8, &qword_23876E7D0);
    v5 = sub_23875F570();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;
  sub_23873DFCC(v4, 1, &v8);

  v6 = sub_238737144(v8);

  *(v2 + 120) = v6;

  return result;
}

uint64_t sub_23873C5F0()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10700, &qword_238775DE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchTags;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15848, &qword_238783EA0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchSuggestions, v4);
  v6 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchPredicate;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15850, &unk_238783EA8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchSubmitted;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__state;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15858, &unk_238783EB8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return v0;
}

uint64_t sub_23873C810()
{
  sub_23873C5F0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransactionSearchModel(uint64_t a1)
{
  result = qword_27DF157A0;
  if (!qword_27DF157A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23873C8BC(uint64_t a1)
{
  sub_23873CAD4(319, &qword_27DF14670, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2385500AC(319, &qword_27DF157B0, &qword_27DF0B660, &unk_238768630);
    if (v2 <= 0x3F)
    {
      sub_2385500AC(319, &qword_27DF157B8, &qword_27DF157C0, &qword_238783B60);
      if (v3 <= 0x3F)
      {
        sub_23873CAD4(319, &qword_27DF09EE8, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_23873CAD4(319, &qword_27DF157C8, &type metadata for TransactionSearchModel.State);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_23873CAD4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23875C2F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23873CB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF157D0;
  if (!qword_27DF157D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF157D0);
  }

  return result;
}

void sub_23873CB88(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23875F5E0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11008, &qword_2387773B0);
        v5 = sub_23875ECA0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23873CE84(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23873CC90(0, v2, 1, a1);
  }
}

void sub_23873CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    sub_23875ED50();
    v7 = (v6 + 24 * v4);
    v8 = a1 - v4;
LABEL_6:
    v17 = v7;
    v18 = v4;
    v9 = (v6 + 24 * v4);
    v10 = *v9;
    v11 = v9[1];
    v16 = v8;
    while (1)
    {
      v12 = *(v7 - 2);
      v19 = v8;
      v20 = *(v7 - 3);

      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v10 == v20 && v11 == v12)
      {

LABEL_5:
        ++v4;
        v7 = v17 + 3;
        v8 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v13 = sub_23875F630();

      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v7;
      v11 = v7[1];
      v14 = v7[2];
      *v7 = *(v7 - 3);
      v7[2] = *(v7 - 1);
      *(v7 - 2) = v11;
      *(v7 - 1) = v14;
      *(v7 - 3) = v10;
      v7 -= 3;
      v8 = v19 + 1;
      if (v19 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_23873CE84(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_105:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_143;
    }

    v8 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_107:
      v96 = *(v8 + 16);
      if (v96 >= 2)
      {
        while (*v6)
        {
          v97 = *(v8 + 16 * v96);
          v98 = *(v8 + 16 * (v96 - 1) + 40);
          sub_23873D7B0((*v6 + 24 * v97), (*v6 + 24 * *(v8 + 16 * (v96 - 1) + 32)), *v6 + 24 * v98, v7);
          if (v5)
          {
            goto LABEL_115;
          }

          if (v98 < v97)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_238490ED4(v8);
          }

          if (v96 - 2 >= *(v8 + 16))
          {
            goto LABEL_131;
          }

          v99 = (v8 + 16 * v96);
          *v99 = v97;
          v99[1] = v98;
          sub_238490E48(v96 - 1);
          v96 = *(v8 + 16);
          if (v96 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_141;
      }

LABEL_115:

      return;
    }

LABEL_137:
    v8 = sub_238490ED4(v8);
    goto LABEL_107;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v102 = v10;
      v103 = v5;
      v13 = *v6;
      v14 = (*v6 + 24 * v12);
      v15 = v11;
      v17 = *v14;
      v16 = v14[1];
      v105 = v15;
      v18 = (*v6 + 24 * v15);
      v19 = *v18;
      v5 = v18[1];
      sub_23875ED50();

      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v17 == v19 && v16 == v5)
      {
        v115 = 0;
      }

      else
      {
        v115 = sub_23875F630();
      }

      v21 = 0;
      v22 = v105 + 2;
      v23 = v13 + 24 * v105 + 64;
      v24 = 24 * v105;
      v114 = v8;
      do
      {
        v7 = v21;
        v6 = v24;
        v111 = v22;
        if (v22 >= v8)
        {
          break;
        }

        v26 = *(v23 - 8);
        v5 = *(v23 - 32);
        v116 = *(v23 - 40);
        v27 = *(v23 - 16);

        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v25 = v27 == v116 && v26 == v5 ? 0 : sub_23875F630();
        v8 = v114;

        v22 = v111 + 1;
        v23 += 24;
        v21 = v7 + 1;
        v24 = (v6 + 3);
      }

      while (((v115 ^ v25) & 1) == 0);
      if (v115)
      {
        v12 = v111;
        v11 = v105;
        if (v111 < v105)
        {
          goto LABEL_134;
        }

        if (v105 < v111)
        {
          v28 = 0;
          v29 = 24 * v105;
          do
          {
            if ((v105 + v28) != &v7[v105 + 1])
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v31 = v30 + v29;
              v32 = v6 + v30;
              v33 = *v31;
              v34 = *(v31 + 8);
              v35 = *(v32 + 24);
              *(v31 + 16) = *(v32 + 5);
              *v31 = v35;
              *(v32 + 3) = v33;
              *(v32 + 2) = v34;
            }

            --v7;
            ++v28;
            v6 -= 3;
            v29 += 24;
          }

          while (v28 + v105 < &v7[v105 + 2]);
        }

        v10 = v102;
        v5 = v103;
        v6 = a3;
        v7 = a1;
      }

      else
      {
        v10 = v102;
        v5 = v103;
        v11 = v105;
        v6 = a3;
        v7 = a1;
        v12 = v111;
      }
    }

    v36 = v6[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_133;
      }

      if (v12 - v11 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v12 < v11)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_238490EE8(0, *(v10 + 2) + 1, 1, v10);
    }

    v51 = *(v10 + 2);
    v50 = *(v10 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v10 = sub_238490EE8((v50 > 1), v51 + 1, 1, v10);
    }

    *(v10 + 2) = v52;
    v53 = &v10[16 * v51];
    *(v53 + 4) = v11;
    *(v53 + 5) = v12;
    v8 = *v7;
    if (!*v7)
    {
      goto LABEL_142;
    }

    v113 = v12;
    if (v51)
    {
      while (1)
      {
        v54 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v55 = *(v10 + 4);
          v56 = *(v10 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_74:
          if (v58)
          {
            goto LABEL_121;
          }

          v71 = &v10[16 * v52];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_124;
          }

          v77 = &v10[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_128;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v52 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v81 = &v10[16 * v52];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_88:
        if (v76)
        {
          goto LABEL_123;
        }

        v84 = &v10[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_126;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_95:
        v92 = v54 - 1;
        if (v54 - 1 >= v52)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v6)
        {
          goto LABEL_139;
        }

        v93 = *&v10[16 * v92 + 32];
        v94 = *&v10[16 * v54 + 40];
        sub_23873D7B0((*v6 + 24 * v93), (*v6 + 24 * *&v10[16 * v54 + 32]), *v6 + 24 * v94, v8);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v94 < v93)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_238490ED4(v10);
        }

        if (v92 >= *(v10 + 2))
        {
          goto LABEL_118;
        }

        v95 = &v10[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        sub_238490E48(v54);
        v52 = *(v10 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v10[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_119;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_120;
      }

      v66 = &v10[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_122;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_125;
      }

      if (v70 >= v62)
      {
        v88 = &v10[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_129;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v8 = v6[1];
    v9 = v113;
    if (v113 >= v8)
    {
      goto LABEL_105;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_135;
  }

  if (v11 + a4 >= v36)
  {
    v37 = v6[1];
  }

  else
  {
    v37 = v11 + a4;
  }

  if (v37 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v12 == v37)
  {
    goto LABEL_54;
  }

  v104 = v5;
  v38 = *v6;
  sub_23875ED50();
  v39 = (v38 + 24 * v12);
  v106 = v11;
  v40 = v11 - v12;
  v108 = v37;
LABEL_44:
  v110 = v39;
  v112 = v12;
  v41 = (v38 + 24 * v12);
  v42 = *v41;
  v43 = v41[1];
  v109 = v40;
  v44 = v40;
  while (1)
  {
    v117 = v44;
    v45 = *(v39 - 3);
    v46 = *(v39 - 2);

    sub_23875ED40();
    sub_23875ECE0();
    v8 = v47;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v42 == v45 && v43 == v46)
    {

LABEL_43:
      v12 = v112 + 1;
      v39 = v110 + 3;
      v40 = v109 - 1;
      if (v112 + 1 == v108)
      {
        v12 = v108;
        v5 = v104;
        v11 = v106;
        v6 = a3;
        v7 = a1;
        goto LABEL_54;
      }

      goto LABEL_44;
    }

    v48 = sub_23875F630();

    if ((v48 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v38)
    {
      break;
    }

    v42 = *v39;
    v43 = v39[1];
    v49 = v39[2];
    *v39 = *(v39 - 3);
    v39[2] = *(v39 - 1);
    *(v39 - 2) = v43;
    *(v39 - 1) = v49;
    *(v39 - 3) = v42;
    v39 -= 3;
    v44 = v117 + 1;
    if (v117 == -1)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

uint64_t sub_23873D7B0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[24 * v11] <= a4)
    {
      memmove(a4, __src, 24 * v11);
    }

    v37 = &v4[24 * v11];
    if (v10 >= 24 && v6 > v7)
    {
      sub_23875ED50();
      v34 = v4;
      v32 = v7;
LABEL_27:
      v31 = v6 - 24;
      v5 -= 24;
      v21 = v37;
      v36 = v6;
      do
      {
        v23 = *(v21 - 3);
        v22 = *(v21 - 2);
        v21 -= 24;
        v24 = *(v6 - 3);
        v25 = *(v6 - 2);

        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v23 == v24 && v22 == v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = sub_23875F630();
        }

        v4 = v34;
        v6 = v36;

        if (v26)
        {
          if ((v5 + 24) != v36)
          {
            v28 = *v31;
            *(v5 + 16) = *(v31 + 2);
            *v5 = v28;
          }

          if (v37 <= v34 || (v6 = v31, v31 <= v32))
          {
            v6 = v31;
            goto LABEL_44;
          }

          goto LABEL_27;
        }

        if ((v5 + 24) != v37)
        {
          v27 = *v21;
          *(v5 + 16) = *(v21 + 2);
          *v5 = v27;
        }

        v5 -= 24;
        v37 = v21;
      }

      while (v21 > v34);
      v37 = v21;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v37 = &v4[24 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      sub_23875ED50();
      v33 = v5;
      while (1)
      {
        v12 = *v6;
        v13 = *(v6 + 1);
        v35 = v6;
        v15 = *v4;
        v14 = *(v4 + 1);

        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v12 == v15 && v13 == v14)
        {
          break;
        }

        v16 = sub_23875F630();

        if ((v16 & 1) == 0)
        {
          goto LABEL_16;
        }

        v17 = v6;
        v6 += 24;
        v18 = v33;
        if (v7 != v35)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 24;
        if (v4 >= v37 || v6 >= v18)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      v17 = v4;
      v19 = v7 == v4;
      v4 += 24;
      v18 = v33;
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_17:
      v20 = *v17;
      *(v7 + 2) = *(v17 + 2);
      *v7 = v20;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_44:
  v29 = (v37 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v29])
  {
    memmove(v6, v4, 24 * v29);
  }

  return 1;
}

void *sub_23873DC44(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v56 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = a1 + 32;
  v57 = 0x800000023878C470;
  while (1)
  {
    sub_2385BA73C(v3, &v54);
    sub_2385BA73C(&v54, &v45);
    if (v47 >= 4u)
    {
      v29 = v45;
      v30 = v46;

      v31 = sub_238650240(v30);
      v33 = v32;
      v34 = sub_23875E030();
      v35 = swift_allocObject();
      *(v35 + 16) = v29;
      *(v35 + 32) = v30;
      *&v49 = v31;
      *(&v49 + 1) = v33;
      *&v50 = v34;
      *(&v50 + 1) = 0xD000000000000012;
      *(&v51 + 1) = 0x6E6F697461636F4CLL;
      *&v52 = 0xE800000000000000;
      *&v51 = v57;
      v48 = v29;
      *(&v52 + 1) = &unk_238783DC0;
      v53 = v35;
    }

    else
    {
      sub_2384347C0(&v45, &v39);
      v5 = *(&v40 + 1);
      v6 = v41;
      __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
      (*(v6 + 8))(&v48, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(&v39);
    }

    v42 = v51;
    v43 = v52;
    v40 = v49;
    v41 = v50;
    v44 = v53;
    v39 = v48;
    v8 = *(&v51 + 1);
    v7 = v52;

    sub_2384B5DE4(&v39);
    v10 = sub_23853B46C(v8, v7);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_238548970(v13, 1);
      v1 = v56;
      v15 = sub_23853B46C(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_22;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      v37 = v54;
      *v38 = v55[0];
      *&v38[9] = *(v55 + 9);
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_238498264(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_238498264((v20 > 1), v21 + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      *(v18 + 2) = v21 + 1;
      v4 = &v18[48 * v21];
      *(v4 + 57) = *&v38[9];
      *(v4 + 2) = v37;
      *(v4 + 3) = *v38;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF50, &qword_238767568);
      v22 = swift_allocObject();
      v23 = v54;
      v24 = v55[0];
      v22[1] = xmmword_2387632F0;
      v22[2] = v23;
      v22[3] = v24;
      *(v22 + 57) = *(v55 + 9);
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v8;
      v25[1] = v7;
      *(v1[7] + 8 * v10) = v22;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_21;
      }

      v1[2] = v28;
    }

    v3 += 48;
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_23875F680();
  __break(1u);
  return result;
}

void sub_23873DFCC(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = a3;
  for (i = (a1 + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *v4;

    v11 = sub_23853B46C(v8, v7);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v10[3] < v16)
    {
      sub_238548984(v16, a2 & 1);
      v11 = sub_23853B46C(v8, v7);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v19 = *v4;
      if ((v17 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v30 = v11;
    sub_23854A3F0();
    v11 = v30;
    v4 = a3;
    v19 = *a3;
    if ((v17 & 1) == 0)
    {
LABEL_25:
      v19[(v11 >> 6) + 8] |= 1 << v11;
      v31 = (v19[6] + 16 * v11);
      *v31 = v8;
      v31[1] = v7;
      *(v19[7] + 8 * v11) = v9;
      v32 = v19[2];
      v15 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v15)
      {
        goto LABEL_30;
      }

      v19[2] = v33;
      goto LABEL_5;
    }

LABEL_12:
    v20 = *(v19[7] + 8 * v11);
    v21 = *(v9 + 16);
    v22 = v20[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      goto LABEL_29;
    }

    v35 = v11;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v25 = v20[3] >> 1, v25 < v23))
    {
      if (v22 <= v23)
      {
        v26 = v22 + v21;
      }

      else
      {
        v26 = v22;
      }

      v20 = sub_238498CB8(isUniquelyReferenced_nonNull_native, v26, 1, v20);
      v25 = v20[3] >> 1;
    }

    v4 = a3;
    if (*(v9 + 16))
    {
      v27 = v25 - v20[2];
      sub_23875BCB0();
      if (v27 < v21)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      v4 = a3;
      if (v21)
      {
        v28 = v20[2];
        v15 = __OFADD__(v28, v21);
        v29 = v28 + v21;
        if (v15)
        {
          goto LABEL_33;
        }

        v20[2] = v29;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_31;
      }
    }

    *(v19[7] + 8 * v35) = v20;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_23875F680();
  __break(1u);
}

uint64_t sub_23873E270(uint64_t a1)
{
  v2 = type metadata accessor for TransactionTypeTokenProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23873E2CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238449A7C;

  return sub_23864FFDC(a1);
}

uint64_t objectdestroyTm_36()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_23873E3C0()
{
  result = qword_27DF10720;
  if (!qword_27DF10720)
  {
    sub_238449184(255, &qword_27DF12280, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10720);
  }

  return result;
}

uint64_t BankConnectReconnectAccountsViewModel.__allocating_init(institution:fpanID:flowManager:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = a4[3];
  v14 = a4[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = sub_238741984(a1, a2, a3, v15, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

uint64_t BankConnectReconnectAccountsView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_238447830;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23873E4E8()
{
  swift_getKeyPath(byte_2387840B0);
  swift_getKeyPath(byte_2387840D8);
  sub_23875C2D0();

  return v1;
}

uint64_t BankConnectReconnectAccountsViewModel.init(institution:fpanID:flowManager:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = a4[3];
  v14 = a4[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_2387417BC(a1, a2, a3, v18, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v20;
}

uint64_t sub_23873E688(uint64_t a1)
{
  v1[8] = a1;
  type metadata accessor for BankConnectReconnectAccountsResult(0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_23875ED50();
  v1[11] = sub_23875ED40();
  v3 = sub_23875ECE0();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x2822009F8](sub_23873E758, v3, v2);
}

uint64_t sub_23873E758()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_23873E860;
    v3 = v0[9];

    return sub_23873EFF0(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_23873E860()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_23873E9A4, v3, v2);
}

uint64_t sub_23873E9A4()
{
  v1 = v0[10];
  v2 = v0[9];

  sub_2387420B4(v2, v1, type metadata accessor for BankConnectReconnectAccountsResult);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[10];
    v5 = *(Strong + 56);

    v5(v4);
  }

  sub_23874211C(v0[10], type metadata accessor for BankConnectReconnectAccountsResult);

  v6 = v0[1];

  return v6();
}

double sub_23873EAB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15[-v8];
  swift_getKeyPath(byte_2387840B0, v7);
  swift_getKeyPath(byte_2387840D8);
  sub_23875C2D0();

  if ((v15[15] & 1) == 0)
  {
    v11 = sub_23875ED80();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_23875ED50();

    v12 = sub_23875ED40();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v3;
    v13[5] = a1;
    v13[6] = a2;
    sub_2386C3BA4(0, 0, v9, &unk_238784100, v13);
  }

  return result;
}

uint64_t sub_23873EC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_23875ED50();
  v6[5] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_23873ECDC, v8, v7);
}

uint64_t sub_23873ECDC()
{
  v1 = *(v0 + 24);
  swift_getKeyPath(byte_2387840B0);
  swift_getKeyPath(byte_2387840D8);
  *(v0 + 72) = 1;

  sub_23875C2E0();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_23873EE20;

  return v4();
}

uint64_t sub_23873EE20()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23873EF40, v3, v2);
}

uint64_t sub_23873EF40()
{

  swift_getKeyPath(byte_2387840B0);
  swift_getKeyPath(byte_2387840D8);
  *(v0 + 73) = 0;

  sub_23875C2E0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23873EFF0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23875A980();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_238757B60();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_23875A9A0();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_23875C1E0();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  type metadata accessor for BankConnectAuthorizationFlow(0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  sub_23875ED50();
  v2[20] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v2[21] = v8;
  v2[22] = v7;

  return MEMORY[0x2822009F8](sub_23873F248, v8, v7);
}

uint64_t sub_23873F248()
{
  v1 = v0[3];
  v2 = *(v1 + 5);
  v3 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution;
  v5 = *&v1[OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_fpanID];
  v6 = *&v1[OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_fpanID + 8];
  v10 = (*(v3 + 8) + **(v3 + 8));
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_23873F3AC;
  v8 = v0[19];

  return v10(v8, &v1[v4], v5, v6, v2, v3);
}

uint64_t sub_23873F3AC()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_23873F8AC;
  }

  else
  {
    v5 = sub_23873F4E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23873F4E8()
{
  v40 = v0;
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];

  sub_23875C120();
  sub_23872BBFC(v1, v2);
  sub_23872BBFC(v1, v3);
  v4 = sub_23875C1B0();
  v5 = sub_23875F000();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v10 = v0[14];
  v38 = v0[13];
  if (v6)
  {
    v36 = v0[14];
    v37 = v0[16];
    v12 = v0[11];
    v11 = v0[12];
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    v28 = v13;
    v29 = v0[7];
    v30 = v0[6];
    v31 = v0[5];
    v32 = v0[4];
    v34 = v5;
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v16 = 136315394;
    log = v4;
    sub_238724998(v11);
    sub_23875A900();
    v17 = *(v12 + 8);
    v17(v11, v13);
    v18 = sub_238757B40();
    v20 = v19;
    (*(v15 + 8))(v14, v29);
    sub_23874211C(v7, type metadata accessor for BankConnectAuthorizationFlow);
    v21 = sub_2384615AC(v18, v20, &v39);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    sub_238724998(v11);
    sub_23875A990();
    v17(v11, v28);
    v22 = sub_23875A970();
    v24 = v23;
    (*(v31 + 8))(v30, v32);
    sub_23874211C(v8, type metadata accessor for BankConnectAuthorizationFlow);
    v25 = sub_2384615AC(v22, v24, &v39);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2383F8000, log, v34, "Reconnect accounts step successfully initiated consent for institutionID: %s with consentID: %s.", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE64DF0](v35, -1, -1);
    MEMORY[0x23EE64DF0](v16, -1, -1);

    (*(v36 + 8))(v37, v38);
  }

  else
  {

    sub_23874211C(v8, type metadata accessor for BankConnectAuthorizationFlow);
    sub_23874211C(v7, type metadata accessor for BankConnectAuthorizationFlow);
    (*(v10 + 8))(v9, v38);
  }

  sub_2387420B4(v0[19], v0[2], type metadata accessor for BankConnectAuthorizationFlow);
  type metadata accessor for BankConnectReconnectAccountsResult(0);
  swift_storeEnumTagMultiPayload();

  v26 = v0[1];

  return v26();
}

uint64_t sub_23873F8AC()
{
  v1 = v0[24];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v3, v4, "Reconnect accounts step failed to initialise authorization flow with error: %@", v6, 0xCu);
    sub_238439884(v7, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  v10 = v0[24];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[13];
  v14 = v0[2];

  (*(v12 + 8))(v11, v13);
  *v14 = v10;
  type metadata accessor for BankConnectReconnectAccountsResult(0);
  swift_storeEnumTagMultiPayload();

  v15 = v0[1];

  return v15();
}

uint64_t BankConnectReconnectAccountsViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution;
  v2 = sub_238757B60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t BankConnectReconnectAccountsViewModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution;
  v2 = sub_238757B60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_23873FC80@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t BankConnectReconnectAccountsView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15868, &qword_238783EC8);
  return sub_23873FD28(v4, v5, a2 + *(v6 + 44));
}

uint64_t sub_23873FD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF158A0, &qword_238784108);
  v19[0] = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = v19 - v5;
  sub_23875ED50();
  v19[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D760();
  MEMORY[0x28223BE20](v7);
  v19[-4] = a1;
  v19[-3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF158A8, &qword_238784110);
  sub_238741E58(&qword_27DF158B0, &qword_27DF158A8, &qword_238784110, sub_238741D94);
  v8 = sub_23875C410();
  MEMORY[0x28223BE20](v8);
  v19[-4] = a1;
  v19[-3] = a2;
  sub_23875D020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF158D8, &qword_238784128);
  v9 = sub_23843A3E8(&qword_27DF158E0, &qword_27DF158A0, &qword_238784108, MEMORY[0x277CDD6E0]);
  v10 = sub_238741E58(&qword_27DF158E8, &qword_27DF158D8, &qword_238784128, sub_238741EDC);
  v17 = v9;
  v18 = v10;
  v11 = v21;
  v12 = v20;
  sub_23875DBA0();
  (*(v19[0] + 8))(v6, v12);
  v13 = sub_23875C910();
  v14 = sub_23875D7D0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15900, &unk_238784140);
  v16 = v11 + *(result + 36);
  *v16 = v13;
  *(v16 + 8) = v14;
  return result;
}

void *sub_238740064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875D020();
  v32 = 0;
  sub_238740240(a1, a2, a3 & 1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v34, __src, sizeof(v34));
  sub_23843981C(__dst, &v29, &qword_27DF15910, &qword_238784160);
  sub_238439884(v34, &qword_27DF15910, &qword_238784160);
  memcpy(&v31[7], __dst, 0x168uLL);
  v9 = v32;
  v10 = sub_23875D790();
  sub_23875C3D0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(__src[0]) = 0;
  v19 = sub_23875D770();
  sub_23875C3D0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v9;
  result = memcpy((a4 + 17), v31, 0x16FuLL);
  *(a4 + 384) = v10;
  *(a4 + 392) = v12;
  *(a4 + 400) = v14;
  *(a4 + 408) = v16;
  *(a4 + 416) = v18;
  *(a4 + 424) = 0;
  *(a4 + 432) = v19;
  *(a4 + 440) = v21;
  *(a4 + 448) = v23;
  *(a4 + 456) = v25;
  *(a4 + 464) = v27;
  *(a4 + 472) = 0;
  return result;
}

void sub_238740240(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v27 = a3;
  v28 = a2;
  v26 = a1;
  v30 = a4;
  v4 = sub_238757B60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  sub_238741FDC(&qword_27DF15908, type metadata accessor for BankConnectReconnectAccountsViewModel, &protocol conformance descriptor for BankConnectReconnectAccountsViewModel);
  v8 = sub_23875C490();
  (*(v5 + 16))(v7, v8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution, v4);

  KeyPath = swift_getKeyPath(aH_27);
  LOBYTE(v36[0]) = 0;
  v59[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v34 = *(&v61 + 1);
  v25 = v61;
  v9 = sub_238757B40();
  v29 = v9;
  v33 = v10;
  (*(v5 + 8))(v7, v4);
  HIDWORD(v23) = LOBYTE(v36[0]);
  v32 = sub_23875D7A0();
  sub_23875C3D0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v24 = sub_23875D030();
  v65 = 0;
  sub_2387409D8(&v61);
  v73 = *&v62[32];
  v74 = *&v62[48];
  v75[0] = *&v62[64];
  *(v75 + 9) = *&v62[73];
  v70 = v61;
  v71 = *v62;
  v72 = *&v62[16];
  v76[1] = *v62;
  v76[0] = v61;
  v76[2] = *&v62[16];
  v76[4] = *&v62[48];
  v76[3] = *&v62[32];
  v77[0] = *&v62[64];
  *(v77 + 9) = *&v62[73];
  sub_23843981C(&v70, v59, &qword_27DF0AB10, &qword_238766710);
  sub_238439884(v76, &qword_27DF0AB10, &qword_238766710);
  *(&v64[3] + 7) = v73;
  *(&v64[4] + 7) = v74;
  *(&v64[5] + 7) = v75[0];
  v64[6] = *(v75 + 9);
  *(v64 + 7) = v70;
  *(&v64[1] + 7) = v71;
  *(&v64[2] + 7) = v72;
  v19 = v65;
  sub_23875E4B0();
  sub_23875C9C0();
  *&v66[55] = v77[5];
  *&v66[71] = v77[6];
  *&v66[87] = v77[7];
  *&v66[103] = v78;
  *&v66[7] = v77[2];
  *&v66[23] = v77[3];
  *&v66[39] = v77[4];
  *&v53 = v9;
  *(&v53 + 1) = v33;
  LOBYTE(v54) = 3;
  DWORD1(v54) = *(v68 + 3);
  *(&v54 + 1) = v68[0];
  *(&v54 + 1) = 0x3FB999999999999ALL;
  *&v55 = KeyPath;
  v20 = BYTE4(v23);
  BYTE8(v55) = BYTE4(v23);
  *(&v55 + 9) = *v67;
  HIDWORD(v55) = *&v67[3];
  v21 = v25;
  *&v56 = v25;
  *(&v56 + 1) = v34;
  LOBYTE(v57) = v32;
  DWORD1(v57) = *&v69[3];
  *(&v57 + 1) = *v69;
  *(&v57 + 1) = v12;
  *&v58[0] = v14;
  *(&v58[0] + 1) = v16;
  *&v58[1] = v18;
  BYTE8(v58[1]) = 0;
  *&v52[32] = v55;
  *&v52[48] = v56;
  *v52 = v53;
  *&v52[16] = v54;
  *&v52[89] = *(v58 + 9);
  *&v52[64] = v57;
  *&v52[80] = v58[0];
  v22 = v24;
  v59[0] = v24;
  v59[1] = 0;
  v60[0] = v19;
  *&v60[33] = v64[2];
  *&v60[17] = v64[1];
  *&v60[1] = v64[0];
  *&v60[97] = v64[6];
  *&v60[81] = v64[5];
  *&v60[65] = v64[4];
  *&v60[49] = v64[3];
  *&v60[161] = *&v66[48];
  *&v60[145] = *&v66[32];
  *&v60[129] = *&v66[16];
  *&v60[113] = *v66;
  *&v60[224] = *(&v78 + 1);
  *&v60[209] = *&v66[96];
  *&v60[193] = *&v66[80];
  *&v60[177] = *&v66[64];
  *&v52[144] = *&v60[16];
  *&v52[160] = *&v60[32];
  *&v52[112] = v24;
  *&v52[128] = *v60;
  *&v52[208] = *&v60[80];
  *&v52[224] = *&v60[96];
  *&v52[176] = *&v60[48];
  *&v52[192] = *&v60[64];
  *&v52[272] = *&v60[144];
  *&v52[288] = *&v60[160];
  *&v52[240] = *&v60[112];
  *&v52[256] = *&v60[128];
  *&v52[352] = *&v60[224];
  *&v52[320] = *&v60[192];
  *&v52[336] = *&v60[208];
  *&v52[304] = *&v60[176];
  memcpy(v30, v52, 0x168uLL);
  *&v62[49] = v64[3];
  *&v62[65] = v64[4];
  *&v62[81] = v64[5];
  *&v62[97] = v64[6];
  *&v62[1] = v64[0];
  *&v62[17] = v64[1];
  v61 = v22;
  v62[0] = v19;
  *&v62[33] = v64[2];
  *&v62[177] = *&v66[64];
  *&v62[193] = *&v66[80];
  *v63 = *&v66[96];
  *&v63[15] = *&v66[111];
  *&v62[113] = *v66;
  *&v62[129] = *&v66[16];
  *&v62[145] = *&v66[32];
  *&v62[161] = *&v66[48];
  sub_23843981C(&v53, v36, &qword_27DF095D8, &qword_238763980);
  sub_23843981C(v59, v36, &qword_27DF15918, &unk_2387841A0);
  sub_238439884(&v61, &qword_27DF15918, &unk_2387841A0);
  v36[0] = v29;
  v36[1] = v33;
  v37 = 3;
  *v38 = v68[0];
  *&v38[3] = *(v68 + 3);
  v39 = 0x3FB999999999999ALL;
  v40 = KeyPath;
  v41 = v20;
  *v42 = *v67;
  *&v42[3] = *&v67[3];
  v43 = v21;
  v44 = v34;
  v45 = v32;
  *&v46[3] = *&v69[3];
  *v46 = *v69;
  v47 = v12;
  v48 = v14;
  v49 = v16;
  v50 = v18;
  v51 = 0;
  sub_238439884(v36, &qword_27DF095D8, &qword_238763980);
}

double sub_2387409D8@<D0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v6) = v13;
  v15 = v14;
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = [v2 localizedStringForKey:v16 value:v17 table:v18];

  sub_23875EA80();
  v20 = sub_23875DAA0();
  v22 = v21;
  LOBYTE(v19) = v23;
  v25 = v24;
  LOBYTE(v16) = sub_23875D7A0();
  sub_23875C3D0();
  v35[80] = v6 & 1;
  *&v36 = v20;
  *(&v36 + 1) = v22;
  LOBYTE(v37) = v19 & 1;
  *(&v37 + 1) = v25;
  LOBYTE(v38) = v16;
  *(&v38 + 1) = v26;
  *v39 = v27;
  *&v39[8] = v28;
  *&v39[16] = v29;
  v39[24] = 0;
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v15;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  *(a1 + 89) = *&v39[9];
  v33 = *v39;
  *(a1 + 64) = v32;
  *(a1 + 80) = v33;
  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
  v40[0] = v20;
  v40[1] = v22;
  v41 = v19 & 1;
  v42 = v25;
  v43 = v16;
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = 0;
  sub_23843980C(v10, v12, v6 & 1);

  sub_23843981C(&v36, v35, &qword_27DF0AB28, &qword_238771F60);
  sub_238439884(v40, &qword_27DF0AB28, &qword_238771F60);
  sub_2384397FC(v10, v12, v6 & 1);

  return result;
}

uint64_t sub_238740D28@<X0>(uint64_t a4@<X8>)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  sub_23843A3E8(&qword_27DF0AAE0, &qword_27DF0AAD8, &qword_23876B8C0, &unk_23877E960);
  sub_23875D1D0();
  v6 = sub_23875D770();
  sub_23875C3D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2E8, &unk_238784130) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_23875D7A0();
  sub_23875C3D0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF158D8, &qword_238784128);
  v26 = a4 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

double sub_238740F34@<D0>(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238741008(a1);

  return result;
}

uint64_t sub_238741008@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  sub_238741FDC(&qword_27DF15908, type metadata accessor for BankConnectReconnectAccountsViewModel, &protocol conformance descriptor for BankConnectReconnectAccountsViewModel);
  sub_23875C490();
  swift_getKeyPath(byte_2387840B0);
  swift_getKeyPath(byte_2387840D8);
  sub_23875C2D0();

  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v4;
  *(v14 + 32) = v5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  sub_2384D63F0(v3, v4);
  result = sub_23875D610();
  *a1 = v11;
  a1[1] = v13;
  *(a1 + *(v15 + 40)) = v18;
  v17 = (a1 + *(v15 + 44));
  *v17 = sub_238741FA0;
  v17[1] = v14;
  return result;
}

uint64_t sub_238741254()
{
  v1 = sub_23875A820();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v6 = sub_23867B330(v4);
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v9 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_238763300;
  v11 = *MEMORY[0x277D383D8];
  *(v10 + 32) = *MEMORY[0x277D383D8];
  *(v10 + 40) = sub_23875EA80();
  *(v10 + 48) = v12;
  v13 = *MEMORY[0x277D38390];
  *(v10 + 56) = *MEMORY[0x277D38390];
  *(v10 + 64) = 0x65756E69746E6F63;
  v14 = *MEMORY[0x277D384B8];
  *(v10 + 72) = 0xE800000000000000;
  *(v10 + 80) = v14;
  strcpy((v10 + 88), "bankLinkStart");
  *(v10 + 102) = -4864;
  v15 = v11;
  v16 = v13;
  v17 = v14;
  v18 = sub_23854B138(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v18;
  sub_2385C33E4(v9, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v26);

  v20 = *MEMORY[0x277D38550];
  v21 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238741FDC(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v22 = sub_23875E910();

  [v21 subject:v20 sendEvent:v22];

  type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  sub_238741FDC(&qword_27DF15908, type metadata accessor for BankConnectReconnectAccountsViewModel, &protocol conformance descriptor for BankConnectReconnectAccountsViewModel);
  sub_23875C490();
  v23 = swift_allocObject();
  swift_weakInit();

  sub_23873EAB0(&unk_238784158, v23);
}

uint64_t sub_238741660@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15868, &qword_238783EC8);
  return sub_23873FD28(v4, v5, a2 + *(v6 + 44));
}

void sub_2387416C8(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_2387840B0);
  swift_getKeyPath(byte_2387840D8);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_238741748(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2387840B0);
  swift_getKeyPath(byte_2387840D8);

  return sub_23875C2E0();
}

uint64_t sub_2387417BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a5;
  v27 = a6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v30 = a8;
  v31 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  v20 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel__isLoading;
  v28 = 0;
  sub_23875C290();
  (*(v16 + 32))(a7 + v20, v18, v15);
  v21 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution;
  v22 = sub_238757B60();
  (*(*(v22 - 8) + 32))(a7 + v21, a1, v22);
  v23 = (a7 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_fpanID);
  *v23 = a2;
  v23[1] = a3;
  sub_2384347C0(&v29, a7 + 16);
  v24 = v27;
  *(a7 + 56) = v26;
  *(a7 + 64) = v24;
  return a7;
}

uint64_t sub_238741984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a4, a8);
  return sub_2387417BC(a1, a2, a3, v17, a5, v21, v18, a8, a9);
}

unint64_t sub_238741AF0(uint64_t a1)
{
  result = type metadata accessor for BankConnectAuthorizationFlow(319);
  if (v2 <= 0x3F)
  {
    result = sub_238484510();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_238741B8C(uint64_t a1)
{
  sub_238757B60();
  if (v1 <= 0x3F)
  {
    sub_238461990();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_238741CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238449A7C;

  return sub_23873EC40(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_238741D94()
{
  result = qword_27DF158B8;
  if (!qword_27DF158B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF158C0, &qword_238784118);
    sub_23843A3E8(&qword_27DF158C8, &qword_27DF158D0, &qword_238784120, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF158B8);
  }

  return result;
}

uint64_t sub_238741E58(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238741EDC()
{
  result = qword_27DF158F0;
  if (!qword_27DF158F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B2E8, &unk_238784130);
    sub_23843A3E8(&qword_27DF158F8, &qword_27DF0AAD0, &qword_238766670, MEMORY[0x277CE0370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF158F0);
  }

  return result;
}

uint64_t sub_238741FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238742024()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_23873E688(v0);
}

uint64_t sub_2387420B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23874211C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall CopyStringAction.callAsFunction(_:)(Swift::String a1)
{
  v1 = [objc_opt_self() generalPasteboard];
  v2 = sub_23875EA50();
  [v1 setString_];
}

void *EnvironmentValues.copyString.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_238742258(x0_0, a2, a3);

  return sub_23875CDC0();
}

unint64_t sub_238742258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF15920;
  if (!qword_27DF15920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15920);
  }

  return result;
}

uint64_t EnvironmentValues.copyString.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_238742258(a1, a2, a3);

  return sub_23875CDD0();
}

void *EnvironmentValues.copyURL.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_23874239C(x0_0, a2, a3);

  return sub_23875CDC0();
}

unint64_t sub_23874239C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF15928;
  if (!qword_27DF15928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15928);
  }

  return result;
}

uint64_t EnvironmentValues.copyURL.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23874239C(a1, a2, a3);

  return sub_23875CDD0();
}

void CopyURLAction.callAsFunction(_:)()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_23875B860();
  [v0 setURL_];
}

uint64_t (*EnvironmentValues.copyString.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *a1 = v3;
  a1[1] = sub_238742258(a1, a2, a3);
  sub_23875CDC0();
  return sub_238742570;
}

uint64_t (*EnvironmentValues.copyURL.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *a1 = v3;
  a1[1] = sub_23874239C(a1, a2, a3);
  sub_23875CDC0();
  return sub_2387425F8;
}

void sub_2387426D4(uint64_t a1)
{
  type metadata accessor for ReturnDetailsContentsSection.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_238742940(319, &qword_27DF0C770, &type metadata for HeaderIconVisibility, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_238742990(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_238742940(319, &qword_27DF0F4F0, &type metadata for CopyStringAction, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238742828(uint64_t a1)
{
  type metadata accessor for ReturnDetailsHeader.ViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ReturnDetailsStatusLabel.ViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_238742940(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_238742990(319, &qword_27DF0E3B8, type metadata accessor for OrderDetailsLargeLineItem.ViewModel, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238742940(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_238742990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_238742A14@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15950, &qword_238784310);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15958, &qword_238784318);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15960, &qword_238784320);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15968, &qword_238784328);
  sub_238745248();
  sub_23875D9C0();
  v17 = sub_23843A3E8(&qword_27DF159F0, &qword_27DF15950, &qword_238784310, MEMORY[0x277CDE5A0]);
  sub_23875DB70();
  (*(v3 + 8))(v5, v2);
  v29 = v2;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v25;
  sub_23875DD80();
  (*(v26 + 8))(v9, v18);
  v19 = *(v24 + *(type metadata accessor for ReturnDetailsContentsSection.ViewModel(0) + 44));
  v20 = *(v11 + 16);
  v20(v13, v16, v10);
  v21 = v27;
  v20(v27, v13, v10);
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF159F8, &qword_238784370) + 48)] = v19;
  v22 = *(v11 + 8);
  swift_bridgeObjectRetain_n();
  v22(v16, v10);

  return (v22)(v13, v10);
}

double sub_238742DBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_23875CEA0();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReturnDetailsContentsSection(0);
  v37 = *(v5 - 8);
  v6 = v37[8];
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF159D0, &qword_238784358);
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  sub_23875ED50();
  v40 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1;
  sub_2387456D0(a1, v11, type metadata accessor for ReturnDetailsHeader.ViewModel);
  KeyPath = swift_getKeyPath(aH_28);
  *&v11[*(type metadata accessor for ReturnDetailsHeader(0) + 20)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
  swift_storeEnumTagMultiPayload();
  v14 = sub_23875E4A0();
  v16 = v15;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2387456D0(a1, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetailsContentsSection);
  v17 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v18 = swift_allocObject();
  sub_238745738(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);

  v37 = &v36;
  v20 = &v11[*(v7 + 36)];
  *v20 = sub_23874579C;
  v20[1] = v18;
  v20[2] = v14;
  v20[3] = v16;
  MEMORY[0x28223BE20](v19);
  *(&v36 - 2) = v12;
  sub_23843981C(v11, v38, &qword_27DF159D0, &qword_238784358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF159E8, &qword_238784368);
  sub_2387455E8();
  sub_23843A3E8(&qword_27DF159E0, &qword_27DF159E8, &qword_238784368, MEMORY[0x277CE14C0]);
  v21 = v39;
  sub_23875E3B0();
  v22 = v41;
  sub_23875CE90();
  sub_238439884(v11, &qword_27DF159D0, &qword_238784358);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF159B0, &qword_238784348) + 36);
  v25 = v42;
  v24 = v43;
  (*(v42 + 16))(v21 + v23, v22, v43);
  v26 = *(v25 + 56);
  v26(v21 + v23, 0, 1, v24);
  v27 = swift_getKeyPath(a8_9);
  v28 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF159A0, &qword_238784340) + 36));
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v25 + 32))(v28 + v29, v22, v24);
  v26(v28 + v29, 0, 1, v24);
  *v28 = v27;
  v30 = sub_23875D000();
  v31 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15990, &qword_238784338) + 36));
  *v31 = v30;
  v31[1] = sub_23843480C;
  v31[2] = 0;
  v32 = sub_23875D010();
  v33 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15980, &qword_238784330) + 36));
  *v33 = v32;
  v33[1] = sub_23842A800;
  v33[2] = 0;
  LOBYTE(v32) = sub_23875D7A0();

  v34 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15968, &qword_238784328) + 36);
  *v34 = v32;
  result = 0.0;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  *(v34 + 40) = 1;
  return result;
}

void sub_2387433A0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ReturnDetailsContentsSection(0);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875D2F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  v18 = sub_23875E020();
  sub_2387456D0(a1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetailsContentsSection);
  v19 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v20 = swift_allocObject();
  sub_238745738(v5, v20 + v19);
  v21 = (v20 + ((v19 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v11;
  v21[1] = v13;
  v21[2] = v15;
  v21[3] = v17;
  v30 = v18;
  v31 = sub_238746024;
  v32 = v20;
  v33 = 0;
  v34 = 0;
  v26 = v11;
  v27 = v13;
  v28 = v15;
  v29 = v17;
  sub_2387456D0(a1, v5, type metadata accessor for ReturnDetailsContentsSection);
  v22 = swift_allocObject();
  sub_238745738(v5, v22 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_238746AA8(&qword_27DF0C7A0, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
  sub_23875DF10();
}

void sub_238743718(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = (a1 + *(type metadata accessor for ReturnDetailsContentsSection(0) + 20));
  v11 = v10[3];
  v26 = v10[2];
  v27 = v11;
  v28[0] = v10[4];
  *(v28 + 9) = *(v10 + 73);
  v12 = v10[1];
  v24 = *v10;
  v25 = v12;
  sub_23843981C(&v24, v29, &qword_27DF0C7A8, &qword_23876B358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7A8, &qword_23876B358);
  MEMORY[0x23EE62DC0](&v18);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = 0;
  v15 = v26;
  v16 = v27;
  *v17 = v28[0];
  *&v17[9] = *(v28 + 9);
  v13 = v24;
  v14 = v25;
  sub_23875E2F0();
  v29[2] = v15;
  v29[3] = v16;
  v30[0] = *v17;
  *(v30 + 9) = *&v17[9];
  v29[0] = v13;
  v29[1] = v14;
  sub_238439884(v29, &qword_27DF0C7A8, &qword_23876B358);
}

double sub_2387438F8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v8 = a2[1];
  v9 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a3 + *(type metadata accessor for ReturnDetailsContentsSection(0) + 20));
  v5 = v4[3];
  v19 = v4[2];
  v20 = v5;
  v21[0] = v4[4];
  *(v21 + 9) = *(v4 + 73);
  v6 = v4[1];
  v17 = *v4;
  v18 = v6;
  sub_23843981C(&v17, v22, &qword_27DF0C7A8, &qword_23876B358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7A8, &qword_23876B358);
  MEMORY[0x23EE62DC0](v15);
  *&v15[7] = v8;
  *&v15[5] = v9;
  v16 = 0;
  v12 = v19;
  v13 = v20;
  *v14 = v21[0];
  *&v14[9] = *(v21 + 9);
  v10 = v17;
  v11 = v18;
  sub_23875E2F0();
  v22[2] = v12;
  v22[3] = v13;
  v23[0] = *v14;
  *(v23 + 9) = *&v14[9];
  v22[0] = v10;
  v22[1] = v11;
  sub_238439884(v22, &qword_27DF0C7A8, &qword_23876B358);

  return result;
}

uint64_t sub_238743AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v95 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A08, &qword_2387843E8);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = &v88 - v5;
  MEMORY[0x28223BE20](v6);
  v94 = &v88 - v7;
  MEMORY[0x28223BE20](v8);
  v106 = &v88 - v9;
  v10 = sub_23875C880();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v92 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = (&v88 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v88 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v88 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A10, &qword_2387843F0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v88 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A18, &qword_2387843F8);
  MEMORY[0x28223BE20](v24);
  v93 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v88 - v27;
  MEMORY[0x28223BE20](v29);
  v105 = &v88 - v30;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v23 = sub_23875D030();
  *(v23 + 1) = 0x4032000000000000;
  v23[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A20, &qword_238784400);
  v32 = v104;
  sub_23874479C(v104, &v23[*(v31 + 44)]);

  v102 = *(type metadata accessor for ReturnDetailsContentsSection(0) + 24);
  sub_2384D5138(v20);
  v33 = *(v11 + 104);
  v101 = *MEMORY[0x277CDF9D8];
  v100 = v11 + 104;
  v99 = v33;
  v33(v17);
  v34 = sub_23875C870();
  v35 = *(v11 + 8);
  v103 = v11 + 8;
  v35(v17, v10);
  v98 = v35;
  v35(v20, v10);
  if (v34)
  {
    v36 = 0x4028000000000000;
  }

  else
  {
    v36 = 0x4030000000000000;
  }

  sub_2384396E4(v23, v28, &qword_27DF15A10, &qword_2387843F0);
  v37 = &v28[*(v24 + 36)];
  *v37 = 0x4028000000000000;
  *(v37 + 1) = v36;
  *(v37 + 2) = 0;
  *(v37 + 3) = v36;
  v37[32] = 0;
  sub_2384396E4(v28, v105, &qword_27DF15A18, &qword_2387843F8);
  v38 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  v39 = v38;
  v40 = (v32 + *(v38 + 40));
  v41 = v40[1];
  v42 = 0x2814F0000uLL;
  if (v41)
  {
    v90 = v38;
    v89 = *v40;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v43 = qword_2814F1B90;
    v44 = sub_23875EA50();
    v45 = sub_23875EA50();
    v46 = sub_23875EA50();
    v47 = [v43 localizedStringForKey:v44 value:v45 table:v46];

    v48 = sub_23875EA80();
    v50 = v49;

    v51 = v104;
    v52 = v91;
    sub_2384D5138(v91);
    v99(v17, v101, v10);
    LOBYTE(v47) = sub_23875C870();
    v53 = v98;
    v98(v17, v10);
    v54 = v53(v52, v10);
    v91 = &v88;
    v117 = 0;
    v55 = 0x4030000000000000;
    if (v47)
    {
      v55 = 0x4028000000000000;
    }

    *&v107 = v48;
    *(&v107 + 1) = v50;
    *&v108 = v89;
    *(&v108 + 1) = v41;
    *&v109 = 0x4028000000000000;
    *(&v109 + 1) = v55;
    *&v110 = 0;
    *(&v110 + 1) = v55;
    v111 = 0;
    MEMORY[0x28223BE20](v54);
    *(&v88 - 4) = v51;
    *(&v88 - 3) = v56;
    *(&v88 - 2) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A38, &unk_238784418);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
    sub_238745944();
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
    v57 = v106;
    sub_23875DB50();
    v114 = v109;
    v115 = v110;
    v116 = v111;
    v112 = v107;
    v113 = v108;
    sub_238439884(&v112, &qword_27DF15A38, &unk_238784418);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A28, &qword_238784408);
    v59 = v57;
    v32 = v51;
    (*(*(v58 - 8) + 56))(v59, 0, 1, v58);
    v42 = 0x2814F0000;
    v39 = v90;
  }

  else
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A28, &qword_238784408);
    (*(*(v60 - 8) + 56))(v106, 1, 1, v60);
  }

  v61 = (v32 + *(v39 + 36));
  v62 = v61[1];
  if (v62)
  {
    v63 = *v61;
    if (*(v42 + 2176) != -1)
    {
      swift_once();
    }

    v64 = qword_2814F1B90;
    v65 = sub_23875EA50();
    v66 = sub_23875EA50();
    v67 = sub_23875EA50();
    v68 = [v64 localizedStringForKey:v65 value:v66 table:v67];

    v69 = sub_23875EA80();
    v71 = v70;

    v72 = v92;
    sub_2384D5138(v92);
    v99(v17, v101, v10);
    LOBYTE(v68) = sub_23875C870();
    v73 = v98;
    v98(v17, v10);
    v74 = v73(v72, v10);
    v117 = 0;
    v75 = 0x4030000000000000;
    if (v68)
    {
      v75 = 0x4028000000000000;
    }

    *&v107 = v69;
    *(&v107 + 1) = v71;
    *&v108 = v63;
    *(&v108 + 1) = v62;
    *&v109 = 0x4028000000000000;
    *(&v109 + 1) = v75;
    *&v110 = 0;
    *(&v110 + 1) = v75;
    v111 = 0;
    MEMORY[0x28223BE20](v74);
    *(&v88 - 4) = v76;
    *(&v88 - 3) = v63;
    *(&v88 - 2) = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A38, &unk_238784418);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
    sub_238745944();
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
    v77 = v94;
    sub_23875DB50();
    v114 = v109;
    v115 = v110;
    v116 = v111;
    v112 = v107;
    v113 = v108;
    sub_238439884(&v112, &qword_27DF15A38, &unk_238784418);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A28, &qword_238784408);
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  }

  else
  {
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A28, &qword_238784408);
    v77 = v94;
    (*(*(v79 - 8) + 56))(v94, 1, 1, v79);
  }

  v80 = v105;
  v81 = v93;
  sub_23843981C(v105, v93, &qword_27DF15A18, &qword_2387843F8);
  v82 = v106;
  v83 = v96;
  sub_23843981C(v106, v96, &qword_27DF15A08, &qword_2387843E8);
  v84 = v97;
  sub_23843981C(v77, v97, &qword_27DF15A08, &qword_2387843E8);
  v85 = v95;
  sub_23843981C(v81, v95, &qword_27DF15A18, &qword_2387843F8);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A30, &qword_238784410);
  sub_23843981C(v83, v85 + *(v86 + 48), &qword_27DF15A08, &qword_2387843E8);
  sub_23843981C(v84, v85 + *(v86 + 64), &qword_27DF15A08, &qword_2387843E8);
  sub_238439884(v77, &qword_27DF15A08, &qword_2387843E8);
  sub_238439884(v82, &qword_27DF15A08, &qword_2387843E8);
  sub_238439884(v80, &qword_27DF15A18, &qword_2387843F8);
  sub_238439884(v84, &qword_27DF15A08, &qword_2387843E8);
  sub_238439884(v83, &qword_27DF15A08, &qword_2387843E8);
  return sub_238439884(v81, &qword_27DF15A18, &qword_2387843F8);
}

double sub_23874479C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for ReturnDetailsStatusLabel(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v27 - v7);
  sub_23875ED50();
  v33 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  sub_2387456D0(a1 + v9[5], v8 + *(v3 + 20), type metadata accessor for ReturnDetailsStatusLabel.ViewModel);
  *v8 = swift_getKeyPath(aH_28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
  swift_storeEnumTagMultiPayload();
  v10 = (a1 + v9[7]);
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v34 = 0;

    sub_23875E1A0();
    v31 = v35;
    v13 = v36;
  }

  else
  {
    v12 = 0;
    v31 = 0;
    v13 = 0;
  }

  v14 = (a1 + v9[6]);
  v15 = v14[1];
  if (v15)
  {
    v30 = *v14;
    v16 = (a1 + v9[8]);
    v18 = *v16;
    v17 = v16[1];
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v30 = 0;
  }

  v28 = v5;
  v29 = v8;
  sub_2387456D0(v8, v5, type metadata accessor for ReturnDetailsStatusLabel);
  v19 = v32;
  sub_2387456D0(v5, v32, type metadata accessor for ReturnDetailsStatusLabel);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A48, &qword_238784428);
  v21 = (v19 + *(v20 + 48));
  *v21 = v12;
  v21[1] = v11;
  v22 = v31;
  v21[2] = v31;
  v21[3] = v13;
  v23 = (v19 + *(v20 + 64));

  sub_238745F2C(v12, v11, v22, v13);
  v24 = v30;
  sub_2385570E8(v18, v17, v30, v15);
  v25 = MEMORY[0x277D85008];
  sub_238745FCC(v12, v11, v22, v13, MEMORY[0x277D85008]);
  *v23 = v18;
  v23[1] = v17;
  v23[2] = v24;
  v23[3] = v15;
  sub_238745F70(v29);
  sub_238745FCC(v18, v17, v24, v15, MEMORY[0x277D84FB8]);
  sub_238745FCC(v12, v11, v22, v13, v25);
  sub_238745F70(v28);

  return result;
}

double sub_238744AEC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  sub_23875E190();

  return result;
}

double sub_238744C90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17[2] = a6;
  v17[3] = a7;
  v17[0] = a2;
  v17[1] = a8;
  v10 = type metadata accessor for ReturnDetailsContentsSection(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2387456D0(a1, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetailsContentsSection);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_238745738(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = (v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v17[0];
  v15[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();

  return result;
}

void sub_238744E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23875CDB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1 + *(type metadata accessor for ReturnDetailsContentsSection(0) + 28);
  if ((*(v9 + 8) & 1) == 0)
  {
    v10 = *v9;

    sub_23875EFF0();
    v11 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2385A9698(v10, 0);
    (*(v6 + 8))(v8, v5);
  }

  v12 = [objc_opt_self() generalPasteboard];
  v13 = sub_23875EA50();
  [v12 setString_];
}

double sub_2387450A0()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  sub_23875E190();

  return result;
}

unint64_t sub_238745248()
{
  result = qword_27DF15970;
  if (!qword_27DF15970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15968, &qword_238784328);
    sub_238745330(&qword_27DF15978, &qword_27DF15980, &qword_238784330, sub_238745300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15970);
  }

  return result;
}

uint64_t sub_238745330(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2387453B4()
{
  result = qword_27DF15998;
  if (!qword_27DF15998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF159A0, &qword_238784340);
    sub_23874546C();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15998);
  }

  return result;
}

unint64_t sub_23874546C()
{
  result = qword_27DF159A8;
  if (!qword_27DF159A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF159B0, &qword_238784348);
    sub_238745524();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF159A8);
  }

  return result;
}

unint64_t sub_238745524()
{
  result = qword_27DF159B8;
  if (!qword_27DF159B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF159C0, &qword_238784350);
    sub_2387455E8();
    sub_23843A3E8(&qword_27DF159E0, &qword_27DF159E8, &qword_238784368, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF159B8);
  }

  return result;
}

unint64_t sub_2387455E8()
{
  result = qword_27DF159C8;
  if (!qword_27DF159C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF159D0, &qword_238784358);
    sub_238746AA8(&qword_27DF159D8, type metadata accessor for ReturnDetailsHeader, &unk_23876E270);
    sub_23843A3E8(&qword_27DF0C818, &qword_27DF0C820, &qword_238784360, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF159C8);
  }

  return result;
}

uint64_t sub_2387456D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238745738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnDetailsContentsSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23874579C(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReturnDetailsContentsSection(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_2387433A0(v4, a1);
}

uint64_t sub_238745848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A00, &qword_2387843E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_23843981C(a1, &v6 - v3, &qword_27DF15A00, &qword_2387843E0);
  return MEMORY[0x23EE61660](v4);
}

unint64_t sub_238745944()
{
  result = qword_27DF15A40;
  if (!qword_27DF15A40)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15A38, &unk_238784418);
    sub_2385A8F14(v1, v2, v3);
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15A40);
  }

  return result;
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = type metadata accessor for ReturnDetailsContentsSection(0);
  v23 = *(*(v1 - 8) + 80);
  v21 = *(*(v1 - 8) + 64);
  v22 = (v23 + 16) & ~v23;
  v24 = v0;
  v2 = v0 + v22;

  v3 = *(type metadata accessor for MerchantImage.ViewModel(0) + 20);
  v4 = sub_23875AF90();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = *(type metadata accessor for ReturnDetailsHeader.ViewModel(0) + 20);
  v6 = sub_23875BC40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  v9 = v2 + *(type metadata accessor for ReturnDetailsContentsSection.ViewModel(0) + 20);
  v10 = sub_23875AD40();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v12 = *(v11 + 20);
  if (!v8(v9 + v12, 1, v6))
  {
    (*(v7 + 8))(v9 + v12, v6);
  }

  v13 = v9 + *(v11 + 24);
  v14 = type metadata accessor for OrderDetailsNote(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
      v17 = sub_23875AD80();
      (*(*(v17 - 8) + 8))(v13 + v16, v17);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }
  }

  v18 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_23875C880();
    (*(*(v19 - 8) + 8))(v2 + v18, v19);
  }

  else
  {
  }

  sub_2385A9698(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return MEMORY[0x2821FE8E8](v24, ((v21 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v23 | 7);
}

void sub_238745E98(uint64_t a1)
{
  v3 = *(type metadata accessor for ReturnDetailsContentsSection(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_238744E8C(v1 + v4, *v5, v5[1], a1);
}

double sub_238745F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_238745F70(uint64_t a1)
{
  v2 = type metadata accessor for ReturnDetailsStatusLabel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_238745FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a2)
  {

    a5(a4);
  }
}

void sub_238746024()
{
  v1 = *(type metadata accessor for ReturnDetailsContentsSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  sub_238743718(v0 + v2, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_37()
{
  v1 = type metadata accessor for ReturnDetailsContentsSection(0);
  v23 = *(*(v1 - 8) + 80);
  v21 = *(*(v1 - 8) + 64);
  v22 = (v23 + 16) & ~v23;
  v24 = v0;
  v2 = v0 + v22;

  v3 = *(type metadata accessor for MerchantImage.ViewModel(0) + 20);
  v4 = sub_23875AF90();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = *(type metadata accessor for ReturnDetailsHeader.ViewModel(0) + 20);
  v6 = sub_23875BC40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  v9 = v2 + *(type metadata accessor for ReturnDetailsContentsSection.ViewModel(0) + 20);
  v10 = sub_23875AD40();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v12 = *(v11 + 20);
  if (!v8(v9 + v12, 1, v6))
  {
    (*(v7 + 8))(v9 + v12, v6);
  }

  v13 = v9 + *(v11 + 24);
  v14 = type metadata accessor for OrderDetailsNote(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
      v17 = sub_23875AD80();
      (*(*(v17 - 8) + 8))(v13 + v16, v17);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }
  }

  v18 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_23875C880();
    (*(*(v19 - 8) + 8))(v2 + v18, v19);
  }

  else
  {
  }

  sub_2385A9698(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return MEMORY[0x2821FE8E8](v24, v22 + v21, v23 | 7);
}

double sub_2387464D0(uint64_t a1, __int128 *a2)
{
  v5 = *(type metadata accessor for ReturnDetailsContentsSection(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2387438F8(a1, a2, v6);
}

uint64_t sub_238746550(void *a1, void *a2)
{
  v4 = sub_23875BC40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC30, &unk_23876E260);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v15)
  {
    goto LABEL_53;
  }

  v16 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](a1 + *(v16 + 20), a2 + *(v16 + 20)) & 1) == 0)
  {
    goto LABEL_53;
  }

  v17 = *(v16 + 24);
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v18 == *v20 && v19 == v20[1];
  if (!v21 && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_53;
  }

  v22 = type metadata accessor for ReturnDetailsHeader.ViewModel(0);
  v23 = a1;
  v24 = v5;
  v25 = *(v22 + 20);
  v26 = *(v11 + 48);
  v59 = v23;
  sub_23843981C(v23 + v25, v13, &qword_27DF12E00, &unk_238763FC0);
  v60 = a2;
  sub_23843981C(a2 + v25, &v13[v26], &qword_27DF12E00, &unk_238763FC0);
  v27 = *(v24 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_238439884(v13, &qword_27DF12E00, &unk_238763FC0);
      goto LABEL_21;
    }

LABEL_19:
    sub_238439884(v13, &qword_27DF0DC30, &unk_23876E260);
    goto LABEL_53;
  }

  sub_23843981C(v13, v10, &qword_27DF12E00, &unk_238763FC0);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    (*(v24 + 8))(v10, v4);
    goto LABEL_19;
  }

  (*(v24 + 32))(v7, &v13[v26], v4);
  sub_238746AA8(&qword_27DF0DC38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v28 = sub_23875E9E0();
  v29 = *(v24 + 8);
  v29(v7, v4);
  v29(v10, v4);
  sub_238439884(v13, &qword_27DF12E00, &unk_238763FC0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_21:
  v30 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  v32 = v59;
  v31 = v60;
  if ((sub_23869B4C4(v59 + v30[5], v60 + v30[5]) & 1) == 0)
  {
    goto LABEL_53;
  }

  v33 = v30[6];
  v34 = (v32 + v33);
  v35 = *(v32 + v33 + 8);
  v36 = (v31 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37 || (*v34 != *v36 || v35 != v37) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v37)
  {
    goto LABEL_53;
  }

  v38 = v30[7];
  v39 = (v32 + v38);
  v40 = *(v32 + v38 + 8);
  v41 = (v31 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v42)
  {
    goto LABEL_53;
  }

  v43 = v30[8];
  v44 = *(v32 + v43);
  v45 = *(v32 + v43 + 8);
  v46 = (v31 + v43);
  if ((v44 != *v46 || v45 != v46[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_53;
  }

  v47 = v30[9];
  v48 = (v32 + v47);
  v49 = *(v32 + v47 + 8);
  v50 = (v31 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v51)
  {
    goto LABEL_53;
  }

  v52 = v30[10];
  v53 = (v32 + v52);
  v54 = *(v32 + v52 + 8);
  v55 = (v31 + v52);
  v56 = v55[1];
  if (v54)
  {
    if (v56 && (*v53 == *v55 && v54 == v56 || (sub_23875F630() & 1) != 0))
    {
      goto LABEL_51;
    }

LABEL_53:
    v57 = 0;
    return v57 & 1;
  }

  if (v56)
  {
    goto LABEL_53;
  }

LABEL_51:
  v57 = sub_238518CAC(*(v32 + v30[11]), *(v31 + v30[11]));
  return v57 & 1;
}

uint64_t sub_238746AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s6MediumVMa(uint64_t a1)
{
  result = qword_2814F0F68;
  if (!qword_2814F0F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_238746B80@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A60, &qword_238784490);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  sub_238746CCC(*(*v1 + 16) == 1, v1, v10 - v4);
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v5, a1, &qword_27DF15A60, &qword_238784490);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A68, &qword_238784498) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

double sub_238746CCC@<D0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v41) = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A70, &qword_2387844A0);
  MEMORY[0x28223BE20](v46);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A78, &qword_2387844A8);
  MEMORY[0x28223BE20](v7);
  v45 = &v35 - v8;
  v9 = _s6MediumVMa(0);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  MEMORY[0x28223BE20](v11 - 8);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A80, &qword_2387844B0);
  MEMORY[0x28223BE20](v44);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A88, &qword_2387844B8);
  MEMORY[0x28223BE20](v21 - 8);
  v43 = &v35 - v22;
  sub_23875ED50();
  v42 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v41)
  {
    v36 = a2;
    v37 = v7;
    v41 = a3;
    v23 = *a2;
    v24 = *(v23 + 16);
    v25 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
    v26 = *(v25 - 8);
    if (v24)
    {
      sub_23874B6D4(v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v15, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      (*(v26 + 56))(v15, 0, 1, v25);
    }

    else
    {
      (*(v26 + 56))(v15, 1, 1, v25);
    }

    v29 = v39;
    sub_2384396E4(v15, v39, &qword_27DF0AC58, &qword_238766B88);
    v30 = v40;
    sub_23874B6D4(v36, v40, _s6MediumVMa);
    v31 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v32 = swift_allocObject();
    sub_23874B8CC(v30, v32 + v31, _s6MediumVMa);
    type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
    (*(v26 + 56))(v17, 1, 1, v25);
    sub_2384895F4(v29, v17);
    v33 = &v17[*(v44 + 36)];
    *v33 = sub_23874B654;
    v33[1] = v32;
    sub_2384396E4(v17, v20, &qword_27DF15A80, &qword_2387844B0);
    sub_23843981C(v20, v45, &qword_27DF15A80, &qword_2387844B0);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF15A98, &qword_27DF15A80, &qword_2387844B0, &unk_23876B6E0);
    sub_23843A3E8(&qword_27DF15AA0, &qword_27DF15A70, &qword_2387844A0, MEMORY[0x277CE1198]);
    v28 = v43;
    sub_23875D1B0();
    sub_238439884(v20, &qword_27DF15A80, &qword_2387844B0);
    a3 = v41;
  }

  else
  {
    *v6 = sub_23875D030();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A90, &qword_2387844C0);
    sub_238748774(a2, &v6[*(v27 + 44)]);
    sub_23843981C(v6, v45, &qword_27DF15A70, &qword_2387844A0);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF15A98, &qword_27DF15A80, &qword_2387844B0, &unk_23876B6E0);
    sub_23843A3E8(&qword_27DF15AA0, &qword_27DF15A70, &qword_2387844A0, MEMORY[0x277CE1198]);
    v28 = v43;
    sub_23875D1B0();
    sub_238439884(v6, &qword_27DF15A70, &qword_2387844A0);
  }

  sub_2384396E4(v28, a3, &qword_27DF15A88, &qword_2387844B8);

  return result;
}

__n128 sub_238747370@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AA8, &qword_2387844C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  *v8 = sub_23875CE50();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AB0, &qword_2387844D0);
  sub_2387474D8(a1, a2, &v8[*(v9 + 44)]);
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v8, a3, &qword_27DF15AA8, &qword_2387844C8);
  v10 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AB8, &qword_2387844D8) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

double sub_2387474D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AC0, &qword_2387844E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AC8, &qword_2387844E8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = sub_23875D030();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AD0, &qword_2387844F0);
  sub_2387477A4(a1, &v17[*(v18 + 44)]);
  *v11 = sub_23875D020();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AD8, &qword_2387844F8);
  sub_2387484B0(a1, a2, &v11[*(v19 + 44)]);
  sub_23843981C(v17, v14, &qword_27DF15AC8, &qword_2387844E8);
  sub_23843981C(v11, v8, &qword_27DF15AC0, &qword_2387844E0);
  sub_23843981C(v14, a3, &qword_27DF15AC8, &qword_2387844E8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AE0, &qword_238784500);
  v21 = a3 + *(v20 + 48);
  *v21 = 0x4024000000000000;
  *(v21 + 8) = 0;
  sub_23843981C(v8, a3 + *(v20 + 64), &qword_27DF15AC0, &qword_2387844E0);
  sub_238439884(v11, &qword_27DF15AC0, &qword_2387844E0);
  sub_238439884(v17, &qword_27DF15AC8, &qword_2387844E8);
  sub_238439884(v8, &qword_27DF15AC0, &qword_2387844E0);
  sub_238439884(v14, &qword_27DF15AC8, &qword_2387844E8);

  return result;
}

double sub_2387477A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC90, &qword_238766BE8);
  MEMORY[0x28223BE20](v129);
  v132 = &v121 - v3;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC98, &qword_238766BF0);
  MEMORY[0x28223BE20](v131);
  v140 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v130 = &v121 - v6;
  MEMORY[0x28223BE20](v7);
  v142 = &v121 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA0, &qword_238766BF8);
  MEMORY[0x28223BE20](v9);
  v11 = &v121 - v10;
  v12 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  MEMORY[0x28223BE20](v12 - 8);
  v135 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  MEMORY[0x28223BE20](v137);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v16);
  v127 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v125 = &v121 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v121 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v121 - v24;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA8, &qword_238766C00);
  MEMORY[0x28223BE20](v122);
  v124 = &v121 - v26;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACB0, &qword_238766C08);
  MEMORY[0x28223BE20](v123);
  v139 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v121 = &v121 - v29;
  MEMORY[0x28223BE20](v30);
  v141 = &v121 - v31;
  sub_23875ED50();
  v133 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23874B6D4(a1, v25, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v136 = v16;
  if (EnumCaseMultiPayload == 1)
  {
    v33 = v25;
    v34 = v135;
    sub_23874B8CC(v33, v135, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v36 = *(v34 + 80);
    v35 = *(v34 + 88);

    v37 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    v38 = v34;
  }

  else
  {
    sub_23874B8CC(v25, v15, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v39 = &v15[v137[8]];
    v36 = *v39;
    v35 = *(v39 + 1);

    v37 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    v38 = v15;
  }

  v40 = sub_23874B86C(v38, v37);
  v152 = v36;
  v153 = v35;
  v126 = sub_2384397A8(v40, v41, v42);
  v43 = sub_23875DAA0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_23874B6D4(a1, v22, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v50 = swift_getEnumCaseMultiPayload();
  v138 = a1;
  v128 = v15;
  if (v50 == 1)
  {
    v51 = v135;
    sub_23874B8CC(v22, v135, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v52 = *(v51 + 96);

    v53 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    v54 = v51;
  }

  else
  {
    sub_23874B8CC(v22, v15, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v52 = *&v15[v137[9]];

    v53 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    v54 = v15;
  }

  sub_23874B86C(v54, v53);
  v152 = v43;
  v153 = v45;
  LOBYTE(v154) = v47 & 1;
  v155 = v49;
  sub_23875D890();
  sub_23875DAF0();
  *&v11[*(v9 + 36)] = v52;
  sub_238489664();

  v55 = v124;
  sub_23875DAB0();
  sub_2384397FC(v43, v45, v47 & 1);

  sub_238439884(v11, &qword_27DF0ACA0, &qword_238766BF8);
  KeyPath = swift_getKeyPath(byte_238784508);
  v57 = &v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC0, &qword_238766C40) + 36)];
  *v57 = KeyPath;
  *(v57 + 1) = 1;
  v57[16] = 0;
  v58 = swift_getKeyPath(byte_238784538);
  v59 = &v55[*(v122 + 36)];
  *v59 = v58;
  v59[8] = 1;
  v60 = sub_23875D8F0();
  v61 = swift_getKeyPath(byte_238784568);
  v62 = v55;
  v63 = v121;
  sub_2384396E4(v62, v121, &qword_27DF0ACA8, &qword_238766C00);
  v64 = (v63 + *(v123 + 36));
  *v64 = v61;
  v64[1] = v60;
  sub_2384396E4(v63, v141, &qword_27DF0ACB0, &qword_238766C08);
  v65 = v125;
  sub_23874B6D4(v138, v125, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = v135;
    sub_23874B8CC(v65, v135, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v68 = *(v66 + 32);
    v67 = *(v66 + 40);

    v69 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v66 = v128;
    sub_23874B8CC(v65, v128, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v70 = (v66 + v137[7]);
    v68 = *v70;
    v67 = v70[1];

    v69 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23874B86C(v66, v69);
  v152 = v68;
  v153 = v67;
  v71 = sub_23875DAA0();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = *(v129 + 36);
  v79 = swift_getKeyPath(aP_33);
  v80 = v132;
  *&v132[v78] = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *v80 = v71;
  *(v80 + 8) = v73;
  *(v80 + 16) = v75 & 1;
  *(v80 + 24) = v77;
  v81 = sub_23875D7F0();
  v82 = swift_getKeyPath(byte_238784568);
  v83 = v130;
  sub_2384396E4(v80, v130, &qword_27DF0AC90, &qword_238766BE8);
  v84 = (v83 + *(v131 + 36));
  *v84 = v82;
  v84[1] = v81;
  sub_2384396E4(v83, v142, &qword_27DF0AC98, &qword_238766BF0);
  v85 = v127;
  sub_23874B6D4(v138, v127, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = v135;
    sub_23874B8CC(v85, v135, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v88 = *(v86 + 104);
    v87 = *(v86 + 112);

    v89 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v86 = v128;
    sub_23874B8CC(v85, v128, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v90 = (v86 + v137[10]);
    v88 = *v90;
    v87 = v90[1];

    v89 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23874B86C(v86, v89);
  if (v87)
  {
    v152 = v88;
    v153 = v87;
    v91 = sub_23875DAA0();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v98 = swift_getKeyPath(byte_238784538);
    v99 = swift_getKeyPath(byte_238784508);
    v145 = v95 & 1;
    v144 = 0;
    v100 = sub_23875D440();
    *&v146 = v91;
    *(&v146 + 1) = v93;
    LOBYTE(v147) = v145;
    *(&v147 + 1) = v97;
    *&v148 = v98;
    BYTE8(v148) = 1;
    *&v149 = v99;
    *(&v149 + 1) = 1;
    v101 = v144;
    LOBYTE(v150) = v144;
    v128 = *(&v148 + 1);
    v129 = v147;
    v136 = v93;
    v137 = v91;
    v152 = v91;
    v153 = v93;
    LOBYTE(v154) = v145;
    v135 = v97;
    v155 = v97;
    v156 = v98;
    v131 = v99;
    v132 = v98;
    LOBYTE(v157) = 1;
    v158 = v99;
    v159 = 1;
    v130 = 1;
    LOBYTE(v160) = v144;
    sub_23843981C(&v146, &v143, &qword_27DF15550, &qword_2387836F8);
    sub_238439884(&v152, &qword_27DF15550, &qword_2387836F8);
    v127 = sub_23875D7F0();
    v138 = swift_getKeyPath(byte_238784568);
    v87 = v100 << 32;
  }

  else
  {
    v136 = 0;
    v137 = 0;
    v128 = 0;
    v129 = 0;
    v135 = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v138 = 0;
    v127 = 0;
    v101 = 0;
  }

  v102 = v139;
  sub_23843981C(v141, v139, &qword_27DF0ACB0, &qword_238766C08);
  v103 = v140;
  sub_23843981C(v142, v140, &qword_27DF0AC98, &qword_238766BF0);
  v104 = v87 | v101;
  v126 = v87 | v101;
  v105 = v134;
  sub_23843981C(v102, v134, &qword_27DF0ACB0, &qword_238766C08);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AE8, &qword_2387845C8);
  sub_23843981C(v103, v105 + *(v106 + 48), &qword_27DF0AC98, &qword_238766BF0);
  v107 = v105 + *(v106 + 64);
  v108 = v136;
  v109 = v137;
  *&v146 = v137;
  *(&v146 + 1) = v136;
  v110 = v128;
  v111 = v129;
  v112 = v135;
  *&v147 = v129;
  *(&v147 + 1) = v135;
  v114 = v131;
  v113 = v132;
  *&v148 = v132;
  *(&v148 + 1) = v128;
  v115 = v130;
  *&v149 = v131;
  *(&v149 + 1) = v130;
  *&v150 = v104;
  *(&v150 + 1) = v138;
  v116 = v149;
  v117 = v150;
  *(v107 + 32) = v148;
  *(v107 + 48) = v116;
  v118 = v147;
  *v107 = v146;
  *(v107 + 16) = v118;
  v119 = v127;
  v151 = v127;
  *(v107 + 80) = v127;
  *(v107 + 64) = v117;
  sub_23843981C(&v146, &v152, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v142, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v141, &qword_27DF0ACB0, &qword_238766C08);
  v152 = v109;
  v153 = v108;
  v154 = v111;
  v155 = v112;
  v156 = v113;
  v157 = v110;
  v158 = v114;
  v159 = v115;
  v160 = v126;
  v161 = v138;
  v162 = v119;
  sub_238439884(&v152, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v140, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v139, &qword_27DF0ACB0, &qword_238766C08);

  return result;
}

void sub_2387484B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v5 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OrderWidgetImageView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23874B6D4(a1, v7, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v17 = *(v22 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v18 = 40.0;
  if (v17 == 2)
  {
    v18 = 50.0;
  }

  if (v17 == 1)
  {
    v19 = 72.0;
  }

  else
  {
    v19 = v18;
  }

  sub_23874B8CC(v7, v13, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  *&v13[v8[5]] = v19;
  *&v13[v8[6]] = v19;
  *&v13[v8[7]] = 0x4018000000000000;
  sub_23874B8CC(v13, v16, type metadata accessor for OrderWidgetImageView);
  sub_23874B6D4(v16, v10, type metadata accessor for OrderWidgetImageView);
  *a3 = 0;
  *(a3 + 8) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACD8, &qword_238766CB8);
  sub_23874B6D4(v10, a3 + *(v20 + 48), type metadata accessor for OrderWidgetImageView);
  sub_23874B86C(v16, type metadata accessor for OrderWidgetImageView);
  sub_23874B86C(v10, type metadata accessor for OrderWidgetImageView);
}

double sub_238748774@<D0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for OrderWidgetMoreTextView(0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15558, &qword_238783700);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v39 - v8;
  v40 = _s6MediumVMa(0);
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AF0, &qword_2387845D0);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v39 - v14;
  sub_23875ED50();
  v43 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *a1;
  if (*(*a1 + 16) >= 2uLL)
  {
    v16 = 2;
  }

  else
  {
    v16 = *(*a1 + 16);
  }

  v17 = *(type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0) - 8);
  v18 = v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = 1;
  v53 = v15;
  v54 = v18;
  v20 = (2 * v16) | 1;
  v55 = 0;
  v56 = v20;
  sub_23874B6D4(a1, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), _s6MediumVMa);
  v21 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v22 = swift_allocObject();
  v22[2] = v15;
  v22[3] = v18;
  v22[4] = 0;
  v22[5] = v20;
  sub_23874B8CC(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, _s6MediumVMa);
  v42 = v15;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15568, &qword_238783710);
  type metadata accessor for OrderIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AF8, &qword_2387845D8);
  sub_23843A3E8(&qword_27DF15578, &qword_27DF15568, &qword_238783710, MEMORY[0x277D83FB8]);
  sub_23843A3E8(&qword_27DF15B00, &qword_27DF15AF8, &qword_2387845D8, MEMORY[0x277CE1198]);
  sub_2387321F4(&qword_27DF15588, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData, &unk_23876B534);
  sub_23875E380();
  v23 = *(a1 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v24 = v48;
  v25 = v49;
  if (v23 >= 3)
  {
    v26 = v23 - 2;
    v27 = v41;
    sub_2384D5188(&v41[*(v48 + 20)]);
    *v27 = v26;
    v28 = *(v24 + 24);
    *(v27 + v28) = swift_getKeyPath(aP_33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_23874B8CC(v27, v25, type metadata accessor for OrderWidgetMoreTextView);
    v19 = 0;
  }

  (*(v47 + 56))(v25, v19, 1, v24);
  v30 = v44;
  v29 = v45;
  v31 = *(v45 + 16);
  v32 = v52;
  v33 = v46;
  v31(v44, v52, v46);
  v34 = v50;
  sub_23843981C(v25, v50, &qword_27DF15558, &qword_238783700);
  v35 = v51;
  v31(v51, v30, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B08, &qword_2387845E0);
  sub_23843981C(v34, &v35[*(v36 + 48)], &qword_27DF15558, &qword_238783700);

  sub_238439884(v25, &qword_27DF15558, &qword_238783700);
  v37 = *(v29 + 8);
  v37(v32, v33);
  sub_238439884(v34, &qword_27DF15558, &qword_238783700);
  v37(v30, v33);

  return result;
}

void sub_238748DD8(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v111 = a5;
  v121 = a4;
  v127 = a3;
  v101 = a2;
  v124 = a6;
  v7 = sub_23875E360();
  v112 = *(v7 - 8);
  v113 = v7;
  MEMORY[0x28223BE20](v7);
  v97 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15598, &qword_238783728);
  MEMORY[0x28223BE20](v9 - 8);
  v115 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v114 = &v95 - v12;
  v13 = _s6MediumVMa(0);
  v106 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v107 = v14;
  v109 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  MEMORY[0x28223BE20](v15 - 8);
  v108 = &v95 - v16;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B10, &qword_2387845E8);
  MEMORY[0x28223BE20](v105);
  v110 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v123 = &v95 - v19;
  v20 = type metadata accessor for OrderIdentifier(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v98 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155A8, &qword_238783738);
  MEMORY[0x28223BE20](v125);
  v119 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v95 - v25;
  v103 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v122 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v96 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v95 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155B0, &qword_238783740);
  MEMORY[0x28223BE20](v31 - 8);
  v118 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v116 = &v95 - v34;
  MEMORY[0x28223BE20](v35);
  v117 = (&v95 - v36);
  MEMORY[0x28223BE20](v37);
  v99 = &v95 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = (&v95 - v40);
  MEMORY[0x28223BE20](v42);
  v44 = (&v95 - v43);
  v45 = sub_23875ED50();
  v104 = sub_23875ED40();
  v102 = v45;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v126 = a1;
  sub_2384E6C90(v44);
  v46 = v21;
  v47 = *(v21 + 56);
  v48 = 1;
  v47(v44, 0, 1, v20);
  v49 = v121 >> 1;
  v121 = v49;
  if (v49 != v127)
  {
    if (v49 <= v127)
    {
      __break(1u);
      goto LABEL_33;
    }

    sub_23874B6D4(v101 + *(v122 + 72) * v127, v30, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_2384E6C90(v41);
    sub_23874B86C(v30, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    v48 = 0;
    v46 = v21;
  }

  v120 = v47;
  v47(v41, v48, 1, v20);
  v50 = *(v125 + 48);
  sub_23843981C(v44, v26, &qword_27DF155B0, &qword_238783740);
  sub_23843981C(v41, &v26[v50], &qword_27DF155B0, &qword_238783740);
  v53 = *(v46 + 48);
  v52 = v46 + 48;
  v51 = v53;
  if (v53(v26, 1, v20) == 1)
  {
    sub_238439884(v41, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v44, &qword_27DF155B0, &qword_238783740);
    if (v51(&v26[v50], 1, v20) == 1)
    {
      sub_238439884(v26, &qword_27DF155B0, &qword_238783740);
      v100 = 1;
LABEL_12:
      v55 = v119;
      goto LABEL_14;
    }

LABEL_11:
    sub_238439884(v26, &qword_27DF155A8, &qword_238783738);
    v100 = 0;
    goto LABEL_12;
  }

  v54 = v99;
  sub_23843981C(v26, v99, &qword_27DF155B0, &qword_238783740);
  v95 = v52;
  if (v51(&v26[v50], 1, v20) == 1)
  {
    sub_238439884(v41, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v44, &qword_27DF155B0, &qword_238783740);
    sub_23874B86C(v54, type metadata accessor for OrderIdentifier);
    goto LABEL_11;
  }

  v56 = v98;
  sub_23874B8CC(&v26[v50], v98, type metadata accessor for OrderIdentifier);
  v100 = sub_2384E6F28(v54, v56);
  sub_23874B86C(v56, type metadata accessor for OrderIdentifier);
  sub_238439884(v41, &qword_27DF155B0, &qword_238783740);
  sub_238439884(v44, &qword_27DF155B0, &qword_238783740);
  sub_23874B86C(v54, type metadata accessor for OrderIdentifier);
  sub_238439884(v26, &qword_27DF155B0, &qword_238783740);
  v55 = v119;
LABEL_14:
  v57 = v116;
  v58 = v117;
  sub_2384E6C90(v117);
  v59 = 1;
  v60 = v120;
  v120(v58, 0, 1, v20);
  v61 = v118;
  if (v121 == v127)
  {
    goto LABEL_17;
  }

  if (v121 <= v127)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v62 = v96;
  sub_23874B6D4(v101 + *(v122 + 72) * (v121 - 1), v96, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  sub_2384E6C90(v57);
  sub_23874B86C(v62, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v59 = 0;
  v60 = v120;
LABEL_17:
  v60(v57, v59, 1, v20);
  v63 = *(v125 + 48);
  sub_23843981C(v58, v55, &qword_27DF155B0, &qword_238783740);
  sub_23843981C(v57, v55 + v63, &qword_27DF155B0, &qword_238783740);
  if (v51(v55, 1, v20) != 1)
  {
    sub_23843981C(v55, v61, &qword_27DF155B0, &qword_238783740);
    if (v51((v55 + v63), 1, v20) != 1)
    {
      v67 = v98;
      sub_23874B8CC(v55 + v63, v98, type metadata accessor for OrderIdentifier);
      v66 = sub_2384E6F28(v61, v67);
      sub_23874B86C(v67, type metadata accessor for OrderIdentifier);
      sub_238439884(v57, &qword_27DF155B0, &qword_238783740);
      sub_238439884(v58, &qword_27DF155B0, &qword_238783740);
      sub_23874B86C(v61, type metadata accessor for OrderIdentifier);
      sub_238439884(v55, &qword_27DF155B0, &qword_238783740);
      v65 = v106;
      goto LABEL_24;
    }

    sub_238439884(v57, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v58, &qword_27DF155B0, &qword_238783740);
    sub_23874B86C(v61, type metadata accessor for OrderIdentifier);
    v65 = v106;
    goto LABEL_22;
  }

  sub_238439884(v57, &qword_27DF155B0, &qword_238783740);
  sub_238439884(v58, &qword_27DF155B0, &qword_238783740);
  v64 = v51((v55 + v63), 1, v20);
  v65 = v106;
  if (v64 != 1)
  {
LABEL_22:
    sub_238439884(v55, &qword_27DF155A8, &qword_238783738);
    v66 = 0;
    goto LABEL_24;
  }

  sub_238439884(v55, &qword_27DF155B0, &qword_238783740);
  v66 = 1;
LABEL_24:
  v68 = sub_23875D020();
  v69 = v124;
  *v124 = v68;
  v69[1] = 0;
  *(v69 + 16) = 1;
  v127 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v70 = v108;
  sub_23874B6D4(v126, v108, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v71 = *(v122 + 56);
  v72 = v103;
  v71(v70, 0, 1, v103);
  v73 = v111;
  v74 = v109;
  sub_23874B6D4(v111, v109, _s6MediumVMa);
  v75 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v76 = v75 + v107;
  v77 = swift_allocObject();
  sub_23874B8CC(v74, v77 + v75, _s6MediumVMa);
  v78 = (v77 + v76);
  *v78 = v100 & 1;
  v79 = v66 & 1;
  v78[1] = v79;
  v80 = v123;
  v71(v123, 1, 1, v72);
  sub_2384895F4(v70, v80);
  v81 = (v80 + *(v105 + 36));
  *v81 = sub_23874B7C4;
  v81[1] = v77;
  v82 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v83 = 1;
  if (*(v73 + *(v82 + 24)) < 3)
  {
    v84 = v79;
  }

  else
  {
    v84 = 0;
  }

  v86 = v112;
  v85 = v113;
  v87 = v114;
  if ((v84 & 1) == 0)
  {
    v88 = v97;
    sub_23875E350();
    (*(v86 + 32))(v87, v88, v85);
    v83 = 0;
  }

  (*(v86 + 56))(v87, v83, 1, v85);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B18, &qword_2387845F0);
  v90 = v123;
  v91 = v124 + *(v89 + 44);
  v92 = v110;
  sub_23843981C(v123, v110, &qword_27DF15B10, &qword_2387845E8);
  v93 = v115;
  sub_23843981C(v87, v115, &qword_27DF15598, &qword_238783728);
  sub_23843981C(v92, v91, &qword_27DF15B10, &qword_2387845E8);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B20, &qword_2387845F8);
  sub_23843981C(v93, v91 + *(v94 + 48), &qword_27DF15598, &qword_238783728);
  sub_238439884(v87, &qword_27DF15598, &qword_238783728);
  sub_238439884(v90, &qword_27DF15B10, &qword_2387845E8);
  sub_238439884(v93, &qword_27DF15598, &qword_238783728);
  sub_238439884(v92, &qword_27DF15B10, &qword_2387845E8);
}

uint64_t sub_238749CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v67 = a4;
  LODWORD(v73) = a3;
  v75 = a5;
  v7 = sub_23875C880();
  v70 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v69 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  v12 = sub_23875CDB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B28, &qword_238784600);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - v18;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B30, &qword_238784608);
  MEMORY[0x28223BE20](v74);
  v77 = &v65 - v20;
  v76 = *(a2 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v21 = v76 > 2;
  *v19 = sub_23875CE60();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B38, &qword_238784610);
  sub_23874A37C(a1, v21, a2, &v19[*(v22 + 44)]);
  LOBYTE(a1) = sub_23875D790();
  sub_23875C3D0();
  v23 = &v19[*(v17 + 44)];
  *v23 = a1;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v72 = sub_23875D790();
  v68 = _s6MediumVMa(0);
  v28 = *(v68 + 24);
  v71 = a2;
  v29 = a2 + v28;
  v30 = *v29;
  v31 = *(v29 + 8);
  if (v31 == 1)
  {
    v32 = *v29;
  }

  else
  {

    sub_23875EFF0();
    v33 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v30, 0);
    (*(v13 + 8))(v15, v12);
    LOBYTE(v32) = v79;
  }

  v34 = v77;
  if (!(v73 & 1 | ((v32 & 1) == 0)) && v76 >= 3)
  {
    v73 = v13;
    v66 = v12;
    v35 = v31;
    v36 = v15;
    sub_2384D5138(v11);
    v38 = v69;
    v37 = v70;
    (*(v70 + 104))(v69, *MEMORY[0x277CDFA00], v7);
    sub_2387321F4(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    sub_23875E9B0();
    v39 = *(v37 + 8);
    v39(v38, v7);
    v39(v11, v7);
    v34 = v77;
    v15 = v36;
    v31 = v35;
    v12 = v66;
    v13 = v73;
  }

  sub_23875C3D0();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_2384396E4(v19, v34, &qword_27DF15B28, &qword_238784600);
  v48 = v34 + *(v74 + 36);
  *v48 = v72;
  *(v48 + 8) = v41;
  *(v48 + 16) = v43;
  *(v48 + 24) = v45;
  *(v48 + 32) = v47;
  *(v48 + 40) = 0;
  v49 = sub_23875D7A0();
  if (v31)
  {
    if ((v30 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_23875EFF0();
    v50 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v30, 0);
    (*(v13 + 8))(v15, v12);
    if (v78 != 1)
    {
      goto LABEL_13;
    }
  }

  if (v76 > 2)
  {
    sub_2384D5138(v11);
    v52 = v69;
    v51 = v70;
    (*(v70 + 104))(v69, *MEMORY[0x277CDFA00], v7);
    sub_2387321F4(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    sub_23875E9B0();
    v53 = *(v51 + 8);
    v53(v52, v7);
    v53(v11, v7);
  }

LABEL_13:
  sub_23875C3D0();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v75;
  sub_2384396E4(v34, v75, &qword_27DF15B30, &qword_238784608);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B40, &qword_238784618);
  v64 = v62 + *(result + 36);
  *v64 = v49;
  *(v64 + 8) = v55;
  *(v64 + 16) = v57;
  *(v64 + 24) = v59;
  *(v64 + 32) = v61;
  *(v64 + 40) = 0;
  return result;
}

void sub_23874A37C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v32 = a2;
  v35 = a4;
  v5 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OrderWidgetImageView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v31[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v31[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155F0, &qword_238783780);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v31[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v31[-v21];
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v22 = sub_23875D030();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155F8, &qword_238783788);
  v24 = v33;
  sub_23874A758(a1, v32 & 1, v33, &v22[*(v23 + 44)]);
  sub_23874B6D4(a1, v7, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v25 = *(v24 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v26 = 40.0;
  if (v25 == 2)
  {
    v26 = 50.0;
  }

  if (v25 == 1)
  {
    v27 = 72.0;
  }

  else
  {
    v27 = v26;
  }

  sub_23874B8CC(v7, v13, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  *&v13[v8[5]] = v27;
  *&v13[v8[6]] = v27;
  *&v13[v8[7]] = 0x4018000000000000;
  sub_23874B8CC(v13, v16, type metadata accessor for OrderWidgetImageView);
  sub_23843981C(v22, v19, &qword_27DF155F0, &qword_238783780);
  sub_23874B6D4(v16, v10, type metadata accessor for OrderWidgetImageView);
  v28 = v35;
  sub_23843981C(v19, v35, &qword_27DF155F0, &qword_238783780);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B48, &qword_238784620);
  v30 = v28 + *(v29 + 48);
  *v30 = 0x4024000000000000;
  *(v30 + 8) = 0;
  sub_23874B6D4(v10, v28 + *(v29 + 64), type metadata accessor for OrderWidgetImageView);
  sub_23874B86C(v16, type metadata accessor for OrderWidgetImageView);
  sub_238439884(v22, &qword_27DF155F0, &qword_238783780);
  sub_23874B86C(v10, type metadata accessor for OrderWidgetImageView);
  sub_238439884(v19, &qword_27DF155F0, &qword_238783780);
}

double sub_23874A758@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v145 = a3;
  v149 = a4;
  v6 = sub_23875C880();
  v143 = *(v6 - 8);
  v144 = v6;
  MEMORY[0x28223BE20](v6);
  v142 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v141 = &v132 - v9;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC90, &qword_238766BE8);
  MEMORY[0x28223BE20](v136);
  v139 = &v132 - v10;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC98, &qword_238766BF0);
  MEMORY[0x28223BE20](v138);
  v156 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v137 = &v132 - v13;
  MEMORY[0x28223BE20](v14);
  v158 = &v132 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA0, &qword_238766BF8);
  MEMORY[0x28223BE20](v16);
  v18 = &v132 - v17;
  v19 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  MEMORY[0x28223BE20](v19 - 8);
  v154 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  MEMORY[0x28223BE20](v152);
  v153 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v159);
  v140 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v135 = &v132 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v132 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v132 - v29;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA8, &qword_238766C00);
  MEMORY[0x28223BE20](v132);
  v151 = &v132 - v31;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACB0, &qword_238766C08);
  MEMORY[0x28223BE20](v134);
  v155 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v133 = &v132 - v34;
  MEMORY[0x28223BE20](v35);
  v157 = &v132 - v36;
  sub_23875ED50();
  v147 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23874B6D4(a1, v30, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v154;
    sub_23874B8CC(v30, v154, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v39 = *(v37 + 80);
    v38 = *(v37 + 88);

    v40 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v37 = v153;
    sub_23874B8CC(v30, v153, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v41 = (v37 + *(v152 + 32));
    v39 = *v41;
    v38 = v41[1];

    v40 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  v42 = sub_23874B86C(v37, v40);
  v169 = v39;
  v170 = v38;
  v150 = sub_2384397A8(v42, v43, v44);
  v45 = sub_23875DAA0();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_23874B6D4(a1, v27, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  LODWORD(v148) = a2;
  v146 = a1;
  if (EnumCaseMultiPayload == 1)
  {
    v53 = v154;
    sub_23874B8CC(v27, v154, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v54 = *(v53 + 96);

    v55 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v53 = v153;
    sub_23874B8CC(v27, v153, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v54 = *(v53 + *(v152 + 36));

    v55 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23874B86C(v53, v55);
  v169 = v45;
  v170 = v47;
  LOBYTE(v171) = v49 & 1;
  v172 = v51;
  sub_23875D890();
  sub_23875DAF0();
  *&v18[*(v16 + 36)] = v54;
  sub_238489664();

  v56 = v151;
  sub_23875DAB0();
  sub_2384397FC(v45, v47, v49 & 1);

  sub_238439884(v18, &qword_27DF0ACA0, &qword_238766BF8);
  KeyPath = swift_getKeyPath(byte_238784508);
  v58 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC0, &qword_238766C40) + 36);
  *v58 = KeyPath;
  *(v58 + 8) = 1;
  *(v58 + 16) = 0;
  v59 = swift_getKeyPath(byte_238784538);
  v60 = v56 + *(v132 + 36);
  *v60 = v59;
  *(v60 + 8) = 1;
  v61 = v148;
  if (v148)
  {
    v62 = sub_23875D970();
  }

  else
  {
    v62 = sub_23875D7F0();
  }

  v63 = v62;
  v64 = v146;
  v65 = v139;
  v66 = swift_getKeyPath(byte_238784568);
  v67 = v133;
  sub_2384396E4(v151, v133, &qword_27DF0ACA8, &qword_238766C00);
  v68 = (v67 + *(v134 + 36));
  *v68 = v66;
  v68[1] = v63;
  sub_2384396E4(v67, v157, &qword_27DF0ACB0, &qword_238766C08);
  v69 = v135;
  sub_23874B6D4(v64, v135, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = v154;
    sub_23874B8CC(v69, v154, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v72 = *(v70 + 32);
    v71 = *(v70 + 40);

    v73 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v70 = v153;
    sub_23874B8CC(v69, v153, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v74 = (v70 + *(v152 + 28));
    v72 = *v74;
    v71 = v74[1];

    v73 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23874B86C(v70, v73);
  v169 = v72;
  v170 = v71;
  v75 = sub_23875DAA0();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = *(v136 + 36);
  *(v65 + v82) = swift_getKeyPath(aP_33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *v65 = v75;
  *(v65 + 8) = v77;
  *(v65 + 16) = v79 & 1;
  *(v65 + 24) = v81;
  if (v61)
  {
    v83 = sub_23875D960();
  }

  else
  {
    v83 = sub_23875D930();
  }

  v84 = v83;
  v85 = v145;
  v86 = swift_getKeyPath(byte_238784568);
  v87 = v137;
  sub_2384396E4(v65, v137, &qword_27DF0AC90, &qword_238766BE8);
  v88 = (v87 + *(v138 + 36));
  *v88 = v86;
  v88[1] = v84;
  sub_2384396E4(v87, v158, &qword_27DF0AC98, &qword_238766BF0);
  _s6MediumVMa(0);
  v89 = v141;
  sub_2384D5138(v141);
  v91 = v142;
  v90 = v143;
  v92 = v144;
  (*(v143 + 104))(v142, *MEMORY[0x277CDFA00], v144);
  sub_2387321F4(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  LOBYTE(v84) = sub_23875E9B0();
  v93 = *(v90 + 8);
  v93(v91, v92);
  v93(v89, v92);
  v94 = (v84 & 1) != 0 || *(v85 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24)) > 2;
  v95 = v140;
  sub_23874B6D4(v64, v140, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v96 = v154;
    sub_23874B8CC(v95, v154, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v98 = *(v96 + 104);
    v97 = *(v96 + 112);

    v99 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v96 = v153;
    sub_23874B8CC(v95, v153, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v100 = (v96 + *(v152 + 40));
    v98 = *v100;
    v97 = v100[1];

    v99 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23874B86C(v96, v99);
  if (!v97)
  {
    goto LABEL_27;
  }

  if (v94)
  {

LABEL_27:
    v144 = 0;
    v145 = 0;
    v148 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v146 = 0;
    v159 = 0;
    v150 = 0;
    v101 = 0;
    v102 = 0;
    goto LABEL_32;
  }

  v169 = v98;
  v170 = v97;
  v103 = sub_23875DAA0();
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v110 = v61;
  v111 = swift_getKeyPath(byte_238784538);
  v112 = swift_getKeyPath(byte_238784508);
  v162 = v107 & 1;
  v161 = 0;
  v113 = sub_23875D440();
  *&v163 = v103;
  *(&v163 + 1) = v105;
  LOBYTE(v164) = v162;
  *(&v164 + 1) = v109;
  *&v165 = v111;
  BYTE8(v165) = 1;
  *&v166 = v112;
  *(&v166 + 1) = 1;
  v101 = v161;
  LOBYTE(v167) = v161;
  v151 = v164;
  v159 = *(&v165 + 1);
  v144 = v103;
  v169 = v103;
  v170 = v105;
  LOBYTE(v171) = v162;
  v172 = v109;
  v173 = v111;
  LOBYTE(v174) = 1;
  v175 = v112;
  v176 = 1;
  LOBYTE(v177) = v161;
  sub_23843981C(&v163, &v160, &qword_27DF15550, &qword_2387836F8);
  sub_238439884(&v169, &qword_27DF15550, &qword_2387836F8);
  if (v110)
  {
    v114 = sub_23875D960();
  }

  else
  {
    v114 = sub_23875D930();
  }

  v145 = v114;
  v154 = v109;
  v150 = swift_getKeyPath(byte_238784568);
  v102 = v113 << 32;
  v148 = v105;
  v146 = v111;
  v152 = 1;
  v153 = v112;
LABEL_32:
  v115 = v155;
  sub_23843981C(v157, v155, &qword_27DF0ACB0, &qword_238766C08);
  v116 = v156;
  sub_23843981C(v158, v156, &qword_27DF0AC98, &qword_238766BF0);
  v117 = v102 | v101;
  v143 = v102 | v101;
  v118 = v149;
  sub_23843981C(v115, v149, &qword_27DF0ACB0, &qword_238766C08);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15618, &qword_2387837A8);
  sub_23843981C(v116, v118 + v119[12], &qword_27DF0AC98, &qword_238766BF0);
  v120 = v118 + v119[16];
  v121 = v144;
  v122 = v148;
  *&v163 = v144;
  *(&v163 + 1) = v148;
  v124 = v150;
  v123 = v151;
  *&v164 = v151;
  *(&v164 + 1) = v154;
  v125 = v146;
  *&v165 = v146;
  *(&v165 + 1) = v159;
  *&v166 = v153;
  *(&v166 + 1) = v152;
  *&v167 = v117;
  *(&v167 + 1) = v150;
  v126 = v166;
  v127 = v167;
  *(v120 + 32) = v165;
  *(v120 + 48) = v126;
  v128 = v164;
  *v120 = v163;
  *(v120 + 16) = v128;
  v129 = v145;
  v168 = v145;
  *(v120 + 80) = v145;
  *(v120 + 64) = v127;
  v130 = v118 + v119[20];
  *v130 = 0;
  *(v130 + 8) = 0;
  sub_23843981C(&v163, &v169, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v158, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v157, &qword_27DF0ACB0, &qword_238766C08);
  v169 = v121;
  v170 = v122;
  v171 = v123;
  v172 = v154;
  v173 = v125;
  v174 = v159;
  v175 = v153;
  v176 = v152;
  v177 = v143;
  v178 = v124;
  v179 = v129;
  sub_238439884(&v169, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v156, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v155, &qword_27DF0ACB0, &qword_238766C08);

  return result;
}

double sub_23874B654@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s6MediumVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_238747370(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_23874B6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_23874B73C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(_s6MediumVMa(0) - 8);
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  sub_238748DD8(a1, v6, v7, v8, v9, a2);
}

uint64_t sub_23874B7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s6MediumVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = (v6 + *(v5 + 64));
  v8 = *v7;
  v9 = v7[1];

  return sub_238749CB0(a1, v6, v8, v9, a2);
}

uint64_t sub_23874B86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23874B8CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23874B934()
{
  result = qword_27DF15B50;
  if (!qword_27DF15B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15A68, &qword_238784498);
    sub_23874B9C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15B50);
  }

  return result;
}

unint64_t sub_23874B9C0()
{
  result = qword_27DF15B58;
  if (!qword_27DF15B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15A60, &qword_238784490);
    sub_23874BA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15B58);
  }

  return result;
}

unint64_t sub_23874BA44()
{
  result = qword_27DF15B60;
  if (!qword_27DF15B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15A88, &qword_2387844B8);
    sub_23843A3E8(&qword_27DF15A98, &qword_27DF15A80, &qword_2387844B0, &unk_23876B6E0);
    sub_23843A3E8(&qword_27DF15AA0, &qword_27DF15A70, &qword_2387844A0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15B60);
  }

  return result;
}

double sub_23874BB28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a3;
  v76 = a4;
  v77 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v13 = *(v12 - 8);
  v67 = v12;
  v68 = v13;
  MEMORY[0x28223BE20](v12);
  v71 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A330, &qword_2387655F0);
  MEMORY[0x28223BE20](v18 - 8);
  v74 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v72 = &v62 - v21;
  MEMORY[0x28223BE20](v22);
  v70 = &v62 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  sub_23875ED50();
  v69 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v27 = qword_2814F1B90;
  v28 = sub_23875EA50();
  v29 = sub_23875EA50();
  v30 = sub_23875EA50();
  v66 = v27;
  v31 = [v27 localizedStringForKey:v28 value:v29 table:v30];

  v32 = sub_23875EA80();
  v34 = v33;

  v78 = v32;
  v79 = v34;
  sub_23875C3B0();
  v35 = sub_23875C3C0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v64 = v36 + 56;
  v65 = v37;
  v37(v11, 0, 1, v35);
  if (a1)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    *(v38 + 24) = a2;
    v39 = sub_2386728DC;
  }

  else
  {
    v39 = sub_23874C1D0;
    v38 = 0;
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v38;
  v41 = sub_238455C54(a1, a2);
  sub_2384397A8(v41, v42, v43);
  sub_23875E220();
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  v44 = v67;
  sub_23875DE00();
  v63 = v26;
  v45 = *(v68 + 8);
  v45(v17, v44);
  v46 = sub_23875EA50();
  v47 = sub_23875EA50();
  v48 = sub_23875EA50();
  v49 = [v66 localizedStringForKey:v46 value:v47 table:v48];

  v50 = sub_23875EA80();
  v52 = v51;

  v78 = v50;
  v79 = v52;
  v53 = v73;
  sub_23875C390();
  v65(v53, 0, 1, v35);

  v54 = v71;
  sub_23875E220();
  v55 = v70;
  sub_23875DE00();
  v45(v54, v44);
  v56 = v63;
  v57 = v72;
  sub_23846CE84(v63, v72);
  v58 = v74;
  sub_23846CE84(v55, v74);
  v59 = v77;
  sub_23846CE84(v57, v77);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B68, &qword_238784628);
  sub_23846CE84(v58, v59 + *(v60 + 48));
  sub_23874C458(v55);
  sub_23874C458(v56);
  sub_23874C458(v58);
  sub_23874C458(v57);

  return result;
}

double sub_23874C1D0()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

void sub_23874C260(uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v3 = qword_2814F1B90;
  v4 = sub_23875EA50();

  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  sub_23875EA80();
  sub_2384397A8(v8, v9, v10);
  v11 = sub_23875DAA0();
  v13 = v12;
  LOBYTE(v5) = v14;
  v16 = v15;

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v16;
}

uint64_t sub_23874C458(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A330, &qword_2387655F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23874C508(uint64_t a1)
{
  sub_2384E115C();
  if (v1 <= 0x3F)
  {
    sub_23846CAFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23874C5E4(uint64_t a1)
{
  type metadata accessor for OrderActionsMenuContext(319);
  if (v1 <= 0x3F)
  {
    sub_2384E115C();
    if (v2 <= 0x3F)
    {
      sub_23846CAFC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_23874C69C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a1;
  v50 = a2;
  v4 = type metadata accessor for ActionsContextMenu(0);
  v5 = v4 - 8;
  v40 = *(v4 - 8);
  v6 = v40[8];
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BA8, &qword_238784758);
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v51 = v2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BB0, &qword_238784760);
  v15 = type metadata accessor for OrderActionsItems(0);
  v16 = sub_23843A3E8(&qword_27DF15BB8, &qword_27DF15BB0, &qword_238784760, MEMORY[0x277CE04B0]);
  v17 = sub_23874DB94(&qword_27DF0CC40, type metadata accessor for OrderActionsItems, &unk_23876C0F8);
  v47 = v13;
  v44 = v14;
  v41 = v16;
  v42 = v15;
  sub_23875DB50();
  v18 = v3 + *(v5 + 28);
  v19 = *v18;
  v45 = *(v18 + 8);
  v46 = v19;
  v43 = *(v18 + 16);
  sub_23874DBDC(v3, v10, type metadata accessor for ActionsContextMenu);
  v20 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v21 = swift_allocObject();
  sub_23874DC44(v10, v21 + v20, type metadata accessor for ActionsContextMenu);
  sub_23874DBDC(v3, v7, type metadata accessor for ActionsContextMenu);
  v22 = swift_allocObject();
  sub_23874DC44(v7, v22 + v20, type metadata accessor for ActionsContextMenu);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v23 = qword_2814F1B90;
  v24 = sub_23875EA50();
  v25 = sub_23875EA50();
  v26 = sub_23875EA50();
  v27 = [v23 localizedStringForKey:v24 value:v25 table:v26];

  v28 = sub_23875EA80();
  v30 = v29;

  v40 = &v39;
  v56 = v28;
  v57 = v30;
  MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC48, &unk_23876C048);
  v52 = v44;
  v53 = v42;
  v54 = v41;
  v55 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2384397A8(OpaqueTypeConformance2, v34, v35);
  sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048, MEMORY[0x277CE14C0]);
  v36 = v49;
  v37 = v47;
  sub_23875DEC0();

  (*(v48 + 8))(v37, v36);

  return result;
}

double sub_23874CC18@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ActionsContextMenu(0);
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

  v7 = type metadata accessor for OrderActionsItems(0);
  sub_23874DBDC(a1, a2 + v7[5], type metadata accessor for OrderActionsMenuContext);
  sub_23874DBDC(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionsContextMenu);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_23874DC44(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ActionsContextMenu);
  sub_23875EA80();
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_23875EA50();
  [v10 initWithSuiteName_];

  *a2 = sub_23875C370();
  v12 = (a2 + v7[6]);
  *v12 = sub_23874DE7C;
  v12[1] = v9;
  v13 = v7[7];
  *(a2 + v13) = swift_getKeyPath(byte_238784728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_23874CE8C(uint64_t a1)
{
  type metadata accessor for ActionsContextMenu(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  return sub_23875E2F0();
}

uint64_t sub_23874CF00()
{
  v0 = sub_23875C1E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionsContextMenu(0);
  sub_2384D5160(v3);
  sub_2384F6B58(v3);
  return (*(v1 + 8))(v3, v0);
}

double sub_23874D008@<D0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for ExtractedOrderActionsContextMenu(0);
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B90, &qword_238784718);
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v46 - v9;
  v60 = v1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B98, &qword_238784720);
  v12 = type metadata accessor for ExtractedOrderActionsItems(0);
  v13 = sub_23843A3E8(&qword_27DF15BA0, &qword_27DF15B98, &qword_238784720, MEMORY[0x277CE04B0]);
  v14 = sub_23874DB94(&qword_27DF0A308, type metadata accessor for ExtractedOrderActionsItems, &unk_238765668);
  v56 = v10;
  v51 = v12;
  v52 = v11;
  v50 = v13;
  sub_23875DB50();
  v15 = *(v1 + 48);
  v54 = *(v1 + 56);
  v55 = v15;
  v53 = *(v1 + 64);
  v16 = *(v1 + 24);
  v48 = *(v1 + 32);
  v49 = v16;
  sub_23874DBDC(v1, v7, type metadata accessor for ExtractedOrderActionsContextMenu);
  v17 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v18 = swift_allocObject();
  sub_23874DC44(v7, v18 + v17, type metadata accessor for ExtractedOrderActionsContextMenu);
  sub_23874DBDC(v1, v4, type metadata accessor for ExtractedOrderActionsContextMenu);
  v19 = swift_allocObject();
  sub_23874DC44(v4, v19 + v17, type metadata accessor for ExtractedOrderActionsContextMenu);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v20 = qword_2814F1B90;
  v21 = sub_23875EA50();
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

  v25 = sub_23875EA80();
  v27 = v26;
  v47 = v26;

  v46[2] = v46;
  v65 = v25;
  v66 = v27;
  MEMORY[0x28223BE20](v28);
  v46[-10] = sub_23874D9B8;
  v46[-9] = v18;
  v46[0] = v18;
  v46[1] = v19;
  MEMORY[0x28223BE20](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A310, &unk_2387655D0);
  v61 = v52;
  v62 = v51;
  v63 = v50;
  v64 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_2384397A8(OpaqueTypeConformance2, v32, v33);
  v44 = sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0, MEMORY[0x277CE14C0]);
  v45 = MEMORY[0x277CE0BC8];
  v42 = OpaqueTypeConformance2;
  v43 = v34;
  v40 = v30;
  v41 = MEMORY[0x277CE0BD8];
  v39 = MEMORY[0x277D837D0];
  v35 = v58;
  v38 = v58;
  v36 = v56;
  sub_23875DEC0();

  (*(v57 + 8))(v36, v35);

  return result;
}

double sub_23874D5D0@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExtractedOrderActionsContextMenu(0);
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

  v7 = a1[1];
  v16 = *a1;
  v17[0] = v7;
  *(v17 + 12) = *(a1 + 28);
  sub_23874DBDC(a1, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ExtractedOrderActionsContextMenu);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_23874DC44(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for ExtractedOrderActionsContextMenu);
  sub_23875EA80();
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  sub_23846CF68(&v16, v15);
  v11 = sub_23875EA50();
  [v10 initWithSuiteName_];

  *a2 = sub_23875C370();
  v12 = v17[0];
  *(a2 + 8) = v16;
  *(a2 + 24) = v12;
  *(a2 + 36) = *(v17 + 12);
  *(a2 + 56) = sub_23874DB60;
  *(a2 + 64) = v9;
  v13 = *(type metadata accessor for ExtractedOrderActionsItems(0) + 28);
  *(a2 + v13) = swift_getKeyPath(byte_238784728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_23874D8A8(__int128 *a1, uint64_t a2)
{
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v10 = *a1;
  v11[0] = v8;
  *(v11 + 12) = *(a1 + 28);
  type metadata accessor for ExtractedOrderActionsContextMenu(0);
  sub_2384D5160(v7);
  sub_238468DB0(a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t objectdestroy_15Tm()
{
  v1 = (type metadata accessor for ExtractedOrderActionsContextMenu(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C1E0();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23874DB94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23874DBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23874DC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_25Tm()
{
  v1 = (type metadata accessor for ActionsContextMenu(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(type metadata accessor for OrderActionsMenuContext(0) + 20);
  v6 = sub_23875A710();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23875C1E0();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23874DEA8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t ImageProcessingUIImplementation.__allocating_init(iconGenerator:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ImageProcessingUIImplementation.init(iconGenerator:)(a1);
  return v2;
}

uint64_t ImageProcessingUIImplementation.init(iconGenerator:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238758850();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23874E138(a1, &v13);
  if (v14)
  {
    sub_23874E1A8(a1);
    sub_2384347C0(&v13, &v15);
  }

  else
  {
    sub_23874E1A8(&v13);
    v8 = [objc_opt_self() ephemeralSessionConfiguration];
    sub_2387587F0();
    sub_238758840();
    v9 = sub_23875EA50();

    [v8 set:v9 sourceApplicationBundleIdentifier:?];

    v10 = type metadata accessor for MapsTransactionIconGenerator();
    v11 = swift_allocObject();
    *(v11 + 16) = [objc_opt_self() sessionWithConfiguration_];
    v16 = v10;
    v17 = &protocol witness table for MapsTransactionIconGenerator;

    *&v15 = v11;
    sub_23874E1A8(a1);
    (*(v5 + 8))(v7, v4);
  }

  sub_2384347C0(&v15, v2 + 16);
  return v2;
}

uint64_t sub_23874E138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD70, &qword_23876E660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23874E1A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD70, &qword_23876E660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ImageProcessingUIImplementation.generateIcon(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23874E234, 0, 0);
}

uint64_t sub_23874E234()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23874E364;
  v5 = v0[2];
  v6 = v0[3];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_23874E364()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ImageProcessingUIImplementation.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_23874E4B0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_23874E4D8, 0, 0);
}

uint64_t sub_23874E4D8()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23874E608;
  v5 = v0[2];
  v6 = v0[3];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_23874E608()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static TransactionSearchTokenModel.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[5];
  v5 = a1[6];
  v13 = a1[8];
  v14 = a1[7];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[5];
  v9 = a2[6];
  v11 = a2[8];
  v12 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23875F630() & 1) == 0 || (v2 != v7 || v3 != v6) && (sub_23875F630() & 1) == 0 || (sub_23875DFE0() & 1) == 0 || (v4 != v8 || v5 != v9) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  if (v14 == v12 && v13 == v11)
  {
    return 1;
  }

  return sub_23875F630();
}

uint64_t TransactionSearchTokenModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];

  MEMORY[0x23EE63650](95, 0xE100000000000000);

  MEMORY[0x23EE63650](v1, v2);

  return v4;
}

uint64_t sub_23874E920(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23874E940, 0, 0);
}

uint64_t sub_23874E940()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = v1;
  v4 = *(v0 + 8);
  v2 = v1;

  return v4();
}

void sub_23874E9AC(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];

  MEMORY[0x23EE63650](95, 0xE100000000000000);

  MEMORY[0x23EE63650](v3, v4);

  *a1 = v5;
  a1[1] = v6;
}

uint64_t sub_23874EA34(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[5];
  v5 = a1[6];
  v13 = a1[8];
  v14 = a1[7];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[5];
  v9 = a2[6];
  v11 = a2[8];
  v12 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23875F630() & 1) == 0 || (v2 != v7 || v3 != v6) && (sub_23875F630() & 1) == 0 || (sub_23875DFE0() & 1) == 0 || (v4 != v8 || v5 != v9) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  if (v14 == v12 && v13 == v11)
  {
    return 1;
  }

  return sub_23875F630();
}

double sub_23874EBD8@<D0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BD0, &unk_2387849A8);
  MEMORY[0x28223BE20](v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (v26 - v7);
  sub_23875ED50();
  v26[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23874EFAC(v8);
  v9 = sub_23875D7A0();
  sub_23875C3D0();
  v10 = v8 + *(v3 + 36);
  *v10 = v9;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  v15 = sub_23875D030();
  v40 = 0;
  sub_23874F97C(&v36);
  v41 = v36;
  v42 = *v37;
  v43 = *&v37[16];
  v44 = *&v37[32];
  v45[0] = v36;
  v45[1] = *v37;
  v45[2] = *&v37[16];
  v45[3] = *&v37[32];
  sub_23843981C(&v41, &v34, &qword_27DF0B360, &qword_23877AE40);
  sub_238439884(v45, &qword_27DF0B360, &qword_23877AE40);
  *&v39[7] = v41;
  *&v39[23] = v42;
  *&v39[39] = v43;
  *&v39[55] = v44;
  v16 = v40;
  sub_23875E4B0();
  sub_23875C9C0();
  sub_23843981C(v8, v5, &qword_27DF15BD0, &unk_2387849A8);
  sub_23843981C(v5, a2, &qword_27DF15BD0, &unk_2387849A8);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BD8, &qword_2387849B8) + 48);
  *&v35[17] = *&v39[16];
  *&v35[33] = *&v39[32];
  v18 = a2 + v17;
  v34 = v15;
  v35[0] = v16;
  *&v35[49] = *&v39[48];
  *&v35[64] = *&v39[63];
  *&v35[1] = *v39;
  *&v35[72] = v27;
  *&v35[88] = v28;
  *&v35[104] = v29;
  *&v35[120] = v30;
  *&v35[136] = v31;
  *&v35[152] = v32;
  *&v35[168] = v33;
  v19 = *&v35[96];
  *(v18 + 96) = *&v35[80];
  *(v18 + 112) = v19;
  v20 = *&v35[128];
  *(v18 + 128) = *&v35[112];
  *(v18 + 144) = v20;
  v21 = *&v35[160];
  *(v18 + 160) = *&v35[144];
  *(v18 + 176) = v21;
  v22 = *&v35[64];
  *(v18 + 64) = *&v35[48];
  *(v18 + 80) = v22;
  v23 = *&v35[32];
  *(v18 + 32) = *&v35[16];
  *(v18 + 48) = v23;
  *(v18 + 192) = *&v35[176];
  v24 = *v35;
  *v18 = v34;
  *(v18 + 16) = v24;
  sub_23843981C(&v34, &v36, &qword_27DF133F0, &unk_2387849C0);
  sub_238439884(v8, &qword_27DF15BD0, &unk_2387849A8);
  v36 = v15;
  v37[0] = v16;
  *&v37[17] = *&v39[16];
  *&v37[33] = *&v39[32];
  *v38 = *&v39[48];
  *&v38[15] = *&v39[63];
  *&v37[1] = *v39;
  *&v38[23] = v27;
  *&v38[39] = v28;
  *&v38[55] = v29;
  *&v38[119] = v33;
  *&v38[103] = v32;
  *&v38[87] = v31;
  *&v38[71] = v30;
  sub_238439884(&v36, &qword_27DF133F0, &unk_2387849C0);
  sub_238439884(v5, &qword_27DF15BD0, &unk_2387849A8);

  return result;
}

uint64_t sub_23874EFAC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v62 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BE0, &qword_2387849D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BE8, &qword_2387849D8);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v62 - v14;
  MEMORY[0x28223BE20](v15);
  v70 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v74 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BF0, &qword_2387849E0);
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BF8, &qword_2387849E8);
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C00, &qword_2387849F0);
  MEMORY[0x28223BE20](v25);
  v27 = &v62 - v26;
  v87 = *v2;
  v28 = v87;
  if (v87)
  {
    v65 = v8;
    v66 = v22;
    v67 = v25;
    v68 = v24;
    v69 = v19;
    sub_238750000(v2, &v79);
    sub_238750038(&v87, &v79);
    sub_238750000(v2, &v79);
    sub_238750038(&v87, &v79);
    *v21 = sub_23875CE60();
    *(v21 + 1) = 0x4024000000000000;
    v21[16] = 0;
    sub_23875ED50();
    v64 = sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v29 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C08, &qword_2387849F8) + 44)];
    v30 = *(v2 + 48);
    v31 = *(v2 + 56);
    v32 = *(v2 + 8);
    sub_23868852C(v32, v83, v30, v31);

    v63 = v21;
    v62 = v2;
    v86 = *(&v83[0] + 1);
    v79 = v83[0];
    v80 = v83[1];
    v81 = v84;
    sub_238750070(v33, v34, v35);
    v36 = v74;
    sub_23875DBF0();

    sub_238439884(&v86, &qword_27DF13388, &qword_238784A00);
    v37 = sub_23875E0D0();
    sub_23875D880();
    v38 = sub_23875D840();
    (*(*(v38 - 8) + 56))(v5, 1, 1, v38);
    v39 = sub_23875D8C0();
    sub_238439884(v5, &qword_27DF0C7F0, &qword_23877B880);
    KeyPath = swift_getKeyPath(byte_238784A08);
    v41 = sub_23875E070();
    v42 = swift_getKeyPath(byte_238784A38);
    *&v79 = v37;
    *(&v79 + 1) = KeyPath;
    *&v80 = v39;
    *(&v80 + 1) = v42;
    v81 = v41;
    v82 = 257;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C18, &qword_238784A68);
    sub_2387500C4();
    v43 = v75;
    sub_23875DBF0();

    sub_23868852C(v28, &v79, v30, v31);
    sub_238750208(&v87);
    v85 = *(&v79 + 1);
    v76 = v79;
    v77 = v80;
    v78 = v81;
    v44 = v70;
    sub_23875DBF0();

    sub_238439884(&v85, &qword_27DF13388, &qword_238784A00);
    v45 = v36;
    v46 = v72;
    sub_23843981C(v45, v72, &qword_27DF15BE8, &qword_2387849D8);
    v47 = v65;
    sub_23843981C(v43, v65, &qword_27DF15BE0, &qword_2387849D0);
    v48 = v71;
    sub_23843981C(v44, v71, &qword_27DF15BE8, &qword_2387849D8);
    sub_23843981C(v46, v29, &qword_27DF15BE8, &qword_2387849D8);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C38, &qword_238784A80);
    sub_23843981C(v47, v29 + *(v49 + 48), &qword_27DF15BE0, &qword_2387849D0);
    sub_23843981C(v48, v29 + *(v49 + 64), &qword_27DF15BE8, &qword_2387849D8);
    sub_238439884(v44, &qword_27DF15BE8, &qword_2387849D8);
    sub_238439884(v75, &qword_27DF15BE0, &qword_2387849D0);
    sub_238439884(v74, &qword_27DF15BE8, &qword_2387849D8);
    sub_238439884(v48, &qword_27DF15BE8, &qword_2387849D8);
    sub_238439884(v47, &qword_27DF15BE0, &qword_2387849D0);
    sub_238439884(v46, &qword_27DF15BE8, &qword_2387849D8);

    sub_238750208(&v87);
    v50 = v62;
    sub_23861EFCC(v62);
    sub_23861EFCC(v50);
    v51 = v63;
    sub_23843981C(v63, v68, &qword_27DF15BF0, &qword_2387849E0);
    swift_storeEnumTagMultiPayload();
    v52 = MEMORY[0x277CE1138];
    sub_23843A3E8(&qword_27DF15C40, &qword_27DF15C00, &qword_2387849F0, MEMORY[0x277CE1138]);
    sub_23843A3E8(&qword_27DF15C48, &qword_27DF15BF0, &qword_2387849E0, v52);
    sub_23875D1B0();
    sub_238750208(&v87);
    v53 = v51;
    v54 = &qword_27DF15BF0;
    v55 = &qword_2387849E0;
  }

  else
  {
    v56 = swift_allocObject();
    v57 = *(v2 + 16);
    v56[1] = *v2;
    v56[2] = v57;
    v58 = *(v2 + 48);
    v56[3] = *(v2 + 32);
    v56[4] = v58;
    sub_238750000(v2, &v79);
    *v27 = sub_23875CE60();
    *(v27 + 1) = 0x4024000000000000;
    v27[16] = 0;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C50, &qword_238784A88);
    sub_23874FB94(sub_23874FB20, sub_238750238, &v27[*(v59 + 44)]);

    sub_23843981C(v27, v24, &qword_27DF15C00, &qword_2387849F0);
    swift_storeEnumTagMultiPayload();
    v60 = MEMORY[0x277CE1138];
    sub_23843A3E8(&qword_27DF15C40, &qword_27DF15C00, &qword_2387849F0, MEMORY[0x277CE1138]);
    sub_23843A3E8(&qword_27DF15C48, &qword_27DF15BF0, &qword_2387849E0, v60);
    sub_23875D1B0();
    v53 = v27;
    v54 = &qword_27DF15C00;
    v55 = &qword_2387849F0;
  }

  return sub_238439884(v53, v54, v55);
}

double sub_23874F97C@<D0>(uint64_t a2@<X8>)
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

  v13 = sub_23875DAA0();
  v15 = v14;
  v16 = v10 & 1;
  v21 = v10 & 1;
  v18 = v17 & 1;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v17 & 1;
  *(a2 + 56) = v19;
  sub_23843980C(v6, v8, v16);

  sub_23843980C(v13, v15, v18);

  sub_2384397FC(v13, v15, v18);

  sub_2384397FC(v6, v8, v21);

  return result;
}

double sub_23874FB2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 8);
  sub_23868852C(v5, v8, v3, v4);

  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

void sub_23874FB94(void (*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  *&v28 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BE0, &qword_2387849D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(&v29, isCurrentExecutor);
  v15 = v29;
  v16 = sub_23875E0D0();
  sub_23875D880();
  v17 = sub_23875D840();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = sub_23875D8C0();
  sub_238439884(v7, &qword_27DF0C7F0, &qword_23877B880);
  KeyPath = swift_getKeyPath(byte_238784A08, v28);
  v20 = sub_23875E070();
  v21 = swift_getKeyPath(byte_238784A38);
  v29 = v16;
  v30 = KeyPath;
  *&v31 = v18;
  *(&v31 + 1) = v21;
  v32 = v20;
  v33 = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C18, &qword_238784A68);
  sub_2387500C4();
  sub_23875DBF0();

  (v28)(&v29, v22);
  v23 = v29;
  v24 = v30;
  v28 = v31;
  v25 = v32;
  sub_23843981C(v13, v10, &qword_27DF15BE0, &qword_2387849D0);
  *a3 = v15;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C58, &qword_238784A90);
  sub_23843981C(v10, &a3[*(v26 + 48)], &qword_27DF15BE0, &qword_2387849D0);
  v27 = &a3[*(v26 + 64)];
  *v27 = v23;
  *(v27 + 1) = v24;
  *(v27 + 1) = v28;
  *(v27 + 4) = v25;

  sub_238439884(v13, &qword_27DF15BE0, &qword_2387849D0);

  sub_238439884(v10, &qword_27DF15BE0, &qword_2387849D0);
}

uint64_t sub_23874FF38@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BC0, &qword_238784998);
  sub_23874EBD8(a2 + *(v3 + 44));
  v4 = sub_23875D770();
  sub_23875C3D0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BC8, &qword_2387849A0);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

unint64_t sub_238750070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF15C10;
  if (!qword_27DF15C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15C10);
  }

  return result;
}

unint64_t sub_2387500C4()
{
  result = qword_27DF15C20;
  if (!qword_27DF15C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15C18, &qword_238784A68);
    sub_238750150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15C20);
  }

  return result;
}

unint64_t sub_238750150()
{
  result = qword_27DF15C28;
  if (!qword_27DF15C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15C30, &unk_238784A70);
    sub_23846E74C();
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15C28);
  }

  return result;
}

uint64_t sub_238750240(uint64_t *a1, unsigned int a2)
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

uint64_t sub_238750290(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2387502E4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_23875030C()
{
  result = qword_27DF15C60;
  if (!qword_27DF15C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15BC8, &qword_2387849A0);
    sub_23843A3E8(&qword_27DF15C68, &qword_27DF15C70, &unk_238784AC0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15C60);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2387503D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_238750420(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238750474(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    return v5 ^ v9 ^ 1u;
  }

  v11 = sub_23875F630();
  result = 0;
  if ((v11 & 1) != 0 && ((v4 ^ v8) & 1) == 0)
  {
    return v5 ^ v9 ^ 1u;
  }

  return result;
}

uint64_t type metadata accessor for ExtractedOrderListRowActionsModifier(uint64_t a1)
{
  result = qword_27DF15C78;
  if (!qword_27DF15C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2387505B8(uint64_t a1)
{
  sub_2384B49C4();
  if (v1 <= 0x3F)
  {
    sub_23846CAFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_238750668@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = a1;
  v61 = a2;
  v4 = type metadata accessor for ExtractedOrderListRowActionsModifier(0);
  v49 = *(v4 - 8);
  v5 = v49[8];
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C88, &qword_238784BB8);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v48 - v10;
  v62 = v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C90, &unk_238784BC0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11BE8, &qword_238779830);
  v14 = sub_23843A3E8(&qword_27DF15C98, &qword_27DF15C90, &unk_238784BC0, MEMORY[0x277CE04B0]);
  v15 = sub_23843A3E8(&qword_27DF11BF8, &qword_27DF11BE8, &qword_238779830, MEMORY[0x277CE14C0]);
  v57 = v12;
  v58 = v11;
  v56 = v13;
  v54 = v14;
  sub_23875DBD0();
  v16 = *(v3 + 48);
  LOBYTE(v67) = *(v3 + 40);
  v68 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  LODWORD(v55) = v65;
  v17 = *(v3 + 24);
  v52 = *(v3 + 16);
  v53 = v64;
  v51 = v17;
  sub_2387522CC(v3, v8);
  v18 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v19 = swift_allocObject();
  sub_238752330(v8, v19 + v18);
  v20 = v50;
  sub_2387522CC(v3, v50);
  v21 = swift_allocObject();
  sub_238752330(v20, v21 + v18);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v22 = qword_2814F1B90;
  v23 = sub_23875EA50();
  v24 = sub_23875EA50();
  v25 = sub_23875EA50();
  v26 = [v22 localizedStringForKey:v23 value:v24 table:v25];

  v27 = sub_23875EA80();
  v29 = v28;
  v50 = v28;

  v49 = v48;
  v67 = v27;
  v68 = v29;
  MEMORY[0x28223BE20](v30);
  v48[-10] = sub_238752394;
  v48[-9] = v19;
  v48[2] = v19;
  v48[1] = v21;
  MEMORY[0x28223BE20](v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A310, &unk_2387655D0);
  v63 = v57;
  v64 = v56;
  v65 = v54;
  v66 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_2384397A8(OpaqueTypeConformance2, v34, v35);
  v46 = sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0, MEMORY[0x277CE14C0]);
  v47 = MEMORY[0x277CE0BC8];
  v44 = OpaqueTypeConformance2;
  v45 = v36;
  v42 = v32;
  v43 = MEMORY[0x277CE0BD8];
  v41 = MEMORY[0x277D837D0];
  v37 = v60;
  v40 = v60;
  v38 = v58;
  sub_23875DEC0();

  (*(v59 + 8))(v38, v37);

  return result;
}

double sub_238750C48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C00, &qword_238779848);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v35 - v8;
  v9 = type metadata accessor for ExtractedOrderListRowActionsModifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D500, &unk_238779850);
  MEMORY[0x28223BE20](v37);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  sub_23875ED50();
  v38 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2387522CC(a1, &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  sub_238752330(&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();
  v18 = sub_23875DFF0();
  KeyPath = swift_getKeyPath(asc_238784BD0);
  v20 = &v15[*(v37 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  if (*(a1 + 32) != 1)
  {
    v29 = 1;
    v23 = v42;
LABEL_8:
    v27 = v40;
    v28 = v41;
    goto LABEL_9;
  }

  v21 = a1;
  v22 = *(a1 + 33);
  v23 = v42;
  if (v22 != 1)
  {
    v29 = 1;
    goto LABEL_8;
  }

  sub_2387522CC(v21, &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_238752330(&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v16);
  v25 = v36;
  sub_23875E200();
  v27 = v40;
  v26 = v41;
  (*(v40 + 32))(v23, v25, v41);
  v28 = v26;
  v29 = 0;
LABEL_9:
  (*(v27 + 56))(v23, v29, 1, v28);
  v30 = v39;
  sub_23843981C(v15, v39, &qword_27DF0D500, &unk_238779850);
  v31 = v43;
  sub_23843981C(v23, v43, &qword_27DF11C00, &qword_238779848);
  v32 = v44;
  sub_23843981C(v30, v44, &qword_27DF0D500, &unk_238779850);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C08, &qword_238779890);
  sub_23843981C(v31, v32 + *(v33 + 48), &qword_27DF11C00, &qword_238779848);
  sub_238439884(v23, &qword_27DF11C00, &qword_238779848);
  sub_238439884(v15, &qword_27DF0D500, &unk_238779850);
  sub_238439884(v31, &qword_27DF11C00, &qword_238779848);
  sub_238439884(v30, &qword_27DF0D500, &unk_238779850);

  return result;
}

double sub_238751188(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();

  return result;
}

double sub_238751258()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  sub_23875E190();

  return result;
}

double sub_2387513FC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875149C();

  return result;
}

double sub_23875149C()
{
  v23 = sub_23875C1E0();
  v22[1] = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22[0] = v22 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23875BC40();
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v5 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_238763300;
  v7 = *MEMORY[0x277D383D8];
  *(v6 + 32) = *MEMORY[0x277D383D8];
  v8 = sub_23875EA80();
  v9 = MEMORY[0x277D38390];
  *(v6 + 40) = v8;
  *(v6 + 48) = v10;
  v11 = *v9;
  *(v6 + 56) = *v9;
  *(v6 + 64) = 0xD000000000000010;
  v12 = *MEMORY[0x277D384B8];
  *(v6 + 72) = 0x8000000238785C70;
  *(v6 + 80) = v12;
  strcpy((v6 + 88), "orderDashboard");
  *(v6 + 103) = -18;
  v13 = v7;
  v14 = v11;
  v15 = v12;
  v16 = sub_23854B138(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v16;
  sub_2385C33E4(v5, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v25);

  v18 = *MEMORY[0x277D38548];
  v19 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v20 = sub_23875E910();

  [v19 subject:v18 sendEvent:v20];

  sub_2387579D0();
  sub_2387579A0();
  sub_23875BBF0();
  sub_238757970();
  (*(v1 + 8))(v3, v24);

  return result;
}

double sub_2387519E0()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  sub_23875E190();

  return result;
}

double sub_238751B88(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v3 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(v4 + 32) = *MEMORY[0x277D383D8];
  v6 = sub_23875EA80();
  v7 = MEMORY[0x277D38390];
  *(v4 + 40) = v6;
  *(v4 + 48) = v8;
  v9 = *v7;
  *(v4 + 56) = *v7;
  *(v4 + 64) = 0x6574656C6564;
  v10 = *MEMORY[0x277D384B8];
  *(v4 + 72) = 0xE600000000000000;
  *(v4 + 80) = v10;
  *(v4 + 88) = 0xD000000000000014;
  *(v4 + 96) = 0x8000000238784E10;
  v11 = v5;
  v12 = v9;
  v13 = v10;
  v14 = sub_23854B138(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v14;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v20);

  v16 = *MEMORY[0x277D38548];
  v17 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v18 = sub_23875E910();

  [v17 subject:v16 sendEvent:v18];

  return sub_238751E00(*a1, a1[1], 0);
}

double sub_238751E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_23875C1E0();
  MEMORY[0x28223BE20](v3);
  sub_2387579D0();
  sub_2387579A0();
  sub_238757820();

  return result;
}

double sub_238752044(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v3 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(v4 + 32) = *MEMORY[0x277D383D8];
  *(v4 + 40) = sub_23875EA80();
  *(v4 + 48) = v6;
  v7 = *MEMORY[0x277D38390];
  *(v4 + 56) = *MEMORY[0x277D38390];
  *(v4 + 64) = 0xD000000000000016;
  v8 = *MEMORY[0x277D384B8];
  *(v4 + 72) = 0x8000000238785C30;
  *(v4 + 80) = v8;
  *(v4 + 88) = 0xD000000000000014;
  *(v4 + 96) = 0x8000000238784E10;
  v9 = v5;
  v10 = v7;
  v11 = v8;
  v12 = sub_23854B138(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v12;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v18);

  v14 = *MEMORY[0x277D38548];
  v15 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v16 = sub_23875E910();

  [v15 subject:v14 sendEvent:v16];

  return sub_238751E00(*a1, a1[1], 1);
}

uint64_t sub_2387522CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderListRowActionsModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238752330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderListRowActionsModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_38()
{
  v1 = (type metadata accessor for ExtractedOrderListRowActionsModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C1E0();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238752520(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ExtractedOrderListRowActionsModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2387525B8(uint64_t a1)
{
  v2 = sub_23875C6D0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23875CCA0();
}

char *static OrderImportControllerProvider.makeViewController(with:completion:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_23875B950();
  if (!v3)
  {
    v8 = v6;
    v9 = v7;
    a3 = sub_238755270(v6, v7, a2, a3);
    sub_23844C954(v8, v9);
  }

  return a3;
}

void sub_238752944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23875B720();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

char *OrderImportPreview.init(orderData:sourceApplication:financeStore:completion:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_23875E1A0();
  *(a8 + 48) = v23;
  *(a8 + 56) = v24;
  v13 = type metadata accessor for OrderImportPreview(0);
  v14 = *(v13 + 36);
  *(a8 + v14) = swift_getKeyPath(asc_238784C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 40);
  *(a8 + v15) = swift_getKeyPath(byte_238784C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  if (sub_2387577C0())
  {

    v16 = sub_238757770();
    sub_238756860(&qword_27DF15CA0, MEMORY[0x277CC65F8], MEMORY[0x277CC6600]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277CC65C8], v16);
    swift_willThrow();

    sub_23844C954(a1, a2);
LABEL_5:

    sub_238439884(a8 + v14, &qword_27DF0D9F0, &unk_23876DD40);
    return sub_238439884(a8 + v15, &qword_27DF0B118, &qword_23876F450);
  }

  *(a8 + 40) = a5;
  *(a8 + 8) = a3;
  *(a8 + 16) = a4;
  result = sub_2386620B4(a1, a2);
  if (v8)
  {

    goto LABEL_5;
  }

  *a8 = result;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

id OrderImportControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OrderImportControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OrderImportControllerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238752EE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OrderImportPreview(0);
  sub_23843981C(v1 + *(v10 + 36), v9, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C600();
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

uint64_t sub_2387530E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OrderImportPreview(0);
  sub_23843981C(v1 + *(v10 + 40), v9, &qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C6D0();
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

uint64_t OrderImportPreview.init(orderBundleURL:sourceApplication:financeStore:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a2;
  v33 = a6;
  v34 = a1;
  v29 = a5;
  v10 = sub_23875B940();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  sub_23875E1A0();
  v14 = v36;
  *(a7 + 48) = v35;
  v32 = v14;
  *(a7 + 56) = v14;
  v15 = type metadata accessor for OrderImportPreview(0);
  v16 = *(v15 + 36);
  *(a7 + v16) = swift_getKeyPath(asc_238784C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v17 = *(v15 + 40);
  *(a7 + v17) = swift_getKeyPath(byte_238784C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  if (sub_2387577C0())
  {

    v18 = sub_238757770();
    sub_238756860(&qword_27DF15CA0, MEMORY[0x277CC65F8], MEMORY[0x277CC6600]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277CC65C8], v18);
    swift_willThrow();

    (*(v11 + 8))(v34, v10);
LABEL_7:

    sub_238439884(a7 + v16, &qword_27DF0D9F0, &unk_23876DD40);
    return sub_238439884(a7 + v17, &qword_27DF0B118, &qword_23876F450);
  }

  *(a7 + 8) = v30;
  *(a7 + 16) = a3;
  v30 = a3;
  (*(v11 + 16))(v13, v34, v10);
  v20 = sub_23875B8C0();
  v21 = v31;
  v22 = sub_23875B950();
  if (v21)
  {
    if (v20)
    {
      sub_23875B8A0();
    }

    v24 = *(v11 + 8);
    v24(v34, v10);
    v24(v13, v10);

    goto LABEL_7;
  }

  v26 = sub_2386620B4(v22, v23);
  if (v20)
  {
    sub_23875B8A0();
  }

  v27 = *(v11 + 8);
  v27(v34, v10);
  result = (v27)(v13, v10);
  *a7 = v26;
  v28 = v33;
  *(a7 + 24) = v29;
  *(a7 + 32) = v28;
  *(a7 + 40) = a4;
  return result;
}

uint64_t OrderImportPreview.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OrderImportPreview(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  v25 = *v1;
  v11 = *(v1 + 56);
  v29 = *(v1 + 48);
  v30 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v23 = v27;
  v24 = v26;
  v22 = v28;
  sub_238755690(v1, v10);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_2387556F4(v10, v13 + v12);
  sub_238755690(v2, v7);
  v14 = swift_allocObject();
  sub_2387556F4(v7, v14 + v12);
  sub_238755690(v2, v10);
  v15 = swift_allocObject();
  sub_2387556F4(v10, v15 + v12);
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15CA8, &qword_238784C78) + 36));
  sub_23875C6E0();
  sub_23875ED60();
  *v16 = &unk_238784C70;
  v16[1] = v15;
  v17 = v24;
  *a1 = v25;
  *(a1 + 8) = v17;
  *(a1 + 16) = v23;
  *(a1 + 24) = v22;
  *(a1 + 32) = sub_238755758;
  *(a1 + 40) = v13;
  *(a1 + 48) = sub_2387557C8;
  *(a1 + 56) = v14;
  sub_238755690(v2, v10);
  v18 = swift_allocObject();
  sub_2387556F4(v10, v18 + v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15CB0, &qword_238784C80);
  v20 = (a1 + *(result + 36));
  *v20 = sub_238755A64;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  return result;
}

double sub_238753930(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v36 = a1;
  v2 = type metadata accessor for OrderImportPreview(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v8 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_238763300;
  v10 = *MEMORY[0x277D383D8];
  *(v9 + 32) = *MEMORY[0x277D383D8];
  v11 = sub_23875EA80();
  v12 = MEMORY[0x277D38390];
  *(v9 + 40) = v11;
  *(v9 + 48) = v13;
  v14 = *v12;
  *(v9 + 56) = *v12;
  *(v9 + 64) = 0x6B63617274;
  v15 = *MEMORY[0x277D384B8];
  *(v9 + 72) = 0xE500000000000000;
  *(v9 + 80) = v15;
  *(v9 + 88) = 0xD000000000000010;
  *(v9 + 96) = 0x8000000238784EA0;
  v16 = v10;
  v17 = v14;
  v18 = v15;
  v19 = sub_23854B138(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v19;
  sub_2385C33E4(v8, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v37);

  v21 = *MEMORY[0x277D38548];
  v22 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238756860(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v23 = sub_23875E910();

  [v22 subject:v21 sendEvent:v23];

  v24 = sub_23875ED80();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  v25 = v35;
  sub_238755690(v33, v35);
  sub_23875ED50();
  v26 = v36;

  v27 = sub_23875ED40();
  v28 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 16) = v27;
  *(v29 + 24) = v30;
  sub_2387556F4(v25, v29 + v28);
  *(v29 + ((v3 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  sub_2386C3BA4(0, 0, v6, &unk_238784D98, v29);

  return result;
}

uint64_t sub_238753DA4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_23875A260();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v8 = sub_238759C60();
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = sub_23875ED50();
  v6[11] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v6[12] = v10;
  v6[13] = v9;

  return MEMORY[0x2822009F8](sub_238753EF8, v10, v9);
}

uint64_t sub_238753EF8(double a1)
{
  sub_23875A250();
  sub_238757800();
  v1[14] = 0;
  (*(v1[5] + 8))(v1[6], v1[4]);

  return MEMORY[0x2822009F8](sub_238753FE0, 0, 0);
}

uint64_t sub_238753FE0(uint64_t a1)
{
  *(v1 + 120) = sub_23875ED40();
  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23875406C, v3, v2);
}

void sub_23875406C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[2];

  sub_238754370(v3, v2);
  if (v1)
  {
  }

  else
  {
    v4 = v0[12];
    v5 = v0[13];

    MEMORY[0x2822009F8](sub_238754118, v4, v5);
  }
}

uint64_t sub_238754118()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2387541B4(uint64_t a1)
{
  *(v1 + 128) = sub_23875ED40();
  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238754240, v3, v2);
}

uint64_t sub_238754240()
{
  v1 = v0[14];
  v2 = v0[2];

  sub_2387547C8(v2, v1);
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x2822009F8](sub_2387542F0, v3, v4);
}

uint64_t sub_2387542F0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

double sub_238754370(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_23875C600();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875C6D0();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23875B940();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v21 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23875A710();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875A7D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(a1 + 24);
  v31 = 1;
  v15(&v31);
  if (sub_2387577D0())
  {
    sub_238759C50();
    v16 = (*(v12 + 88))(v14, v11);
    if (v16 == *MEMORY[0x277CC7F50] || v16 == *MEMORY[0x277CC7F48])
    {
      sub_238759C40();
      v17 = v21;
      sub_2387576B0();
      v18 = v24;
      sub_2387530E8(v24);
      sub_23875C6A0();
      (*(v26 + 8))(v18, v27);
      (*(v23 + 8))(v17, v25);
      (*(v20 + 8))(v10, v22);
    }

    else
    {
      (*(v12 + 8))(v14, v11);
    }
  }

  sub_238752EE0(v5);
  sub_23875C5F0();
  (*(v29 + 8))(v5, v30);

  return result;
}

double sub_2387547C8(uint64_t a1, void *a2)
{
  v4 = sub_23875C600();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 24);
  v12 = a2;
  v9 = a2;
  v8(&v12);
  sub_238448A54(v12);
  sub_238752EE0(v7);
  sub_23875C5F0();
  (*(v5 + 8))(v7, v4);

  return result;
}

uint64_t sub_238754944(uint64_t a1)
{
  v25 = sub_23875C600();
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v5 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_238763300;
  v7 = *MEMORY[0x277D383D8];
  *(v6 + 32) = *MEMORY[0x277D383D8];
  v8 = sub_23875EA80();
  v9 = MEMORY[0x277D38390];
  *(v6 + 40) = v8;
  *(v6 + 48) = v10;
  v11 = *v9;
  *(v6 + 56) = *v9;
  *(v6 + 64) = 0x6C65636E6163;
  v12 = *MEMORY[0x277D384B8];
  *(v6 + 72) = 0xE600000000000000;
  *(v6 + 80) = v12;
  *(v6 + 88) = 0xD000000000000010;
  *(v6 + 96) = 0x8000000238784EA0;
  v13 = v7;
  v14 = v11;
  v15 = v12;
  v16 = sub_23854B138(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v16;
  sub_2385C33E4(v5, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v26);

  v18 = *MEMORY[0x277D38548];
  v19 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238756860(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v20 = sub_23875E910();

  [v19 subject:v18 sendEvent:v20];

  v21 = *(a1 + 24);
  v26 = 0;
  v21(&v26);
  sub_238752EE0(v3);
  sub_23875C5F0();
  return (*(v24 + 8))(v3, v25);
}

uint64_t sub_238754CB4(uint64_t a1)
{
  v1[4] = a1;
  sub_23875ED50();
  v1[5] = sub_23875ED40();
  v3 = sub_23875ECE0();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_238754D4C, v3, v2);
}

uint64_t sub_238754D4C()
{
  v1 = *(v0 + 32);
  v2 = *v1;
  v3 = v1[5];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_238754E04;

  return sub_238755EA0(v2, v3);
}

uint64_t sub_238754E04(char a1)
{
  v2 = *v1;
  *(*v1 + 73) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_238754F2C, v4, v3);
}

uint64_t sub_238754F2C()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 32);

  v3 = *(v2 + 56);
  *(v0 + 16) = *(v2 + 48);
  *(v0 + 24) = v3;
  *(v0 + 72) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  v4 = *(v0 + 8);

  return v4();
}

double sub_238754FD4()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238755074();

  return result;
}

double sub_238755074()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 8);

    v3 = sub_23844CC84(v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238763B60;
    *(inited + 32) = sub_23875EA50();
    if (v3 <= 2u)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          v5 = 0x800000023878E100;
          v6 = 0xD000000000000014;
        }

        else
        {
          v5 = 0xE600000000000000;
          v6 = 0x746567646977;
        }
      }

      else
      {
        v5 = 0xE600000000000000;
        v6 = 0x697261666173;
      }
    }

    else if (v3 > 4u)
    {
      if (v3 == 5)
      {
        v5 = 0xE400000000000000;
        v6 = 1936744813;
      }

      else
      {
        v5 = 0xE500000000000000;
        v6 = 0x7070416E69;
      }
    }

    else if (v3 == 3)
    {
      v5 = 0xE400000000000000;
      v6 = 1818845549;
    }

    else
    {
      v5 = 0xE800000000000000;
      v6 = 0x6567617373654D69;
    }

    *(inited + 40) = v6;
    *(inited + 48) = v5;
    *(inited + 56) = sub_23875EA50();
    *(inited + 64) = 0x63697373616C63;
    *(inited + 72) = 0xE700000000000000;
    v7 = sub_23854B138(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    sub_23844C218(*MEMORY[0x277D38548], 6, v7);
  }

  return result;
}

char *sub_238755270(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v36 = a1;
  v6 = type metadata accessor for OrderImportPreview(0);
  MEMORY[0x28223BE20](v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    v16 = sub_23875EA80();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  sub_2387579D0();

  v20 = sub_2387579A0();
  v41 = 0;
  sub_23875E1A0();
  v21 = v40;
  v10[48] = v39;
  *(v10 + 7) = v21;
  v22 = *(v6 + 36);
  *&v10[v22] = swift_getKeyPath(asc_238784C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v23 = *(v6 + 40);
  *&v10[v23] = swift_getKeyPath(byte_238784C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  if (sub_2387577C0())
  {

    v24 = sub_238757770();
    sub_238756860(&qword_27DF15CA0, MEMORY[0x277CC65F8], MEMORY[0x277CC6600]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277CC65C8], v24);
    swift_willThrow();
  }

  else
  {
    v34 = v13;
    *(v10 + 5) = v20;
    *(v10 + 1) = v16;
    *(v10 + 2) = v18;
    v26 = v36;
    v27 = v37;
    sub_23844C8EC(v36, v37);
    v28 = v38;
    v29 = sub_2386620B4(v26, v27);
    if (!v28)
    {
      *v10 = v29;
      *(v10 + 3) = sub_2387569C8;
      *(v10 + 4) = v19;
      v31 = v34;
      sub_2387556F4(v10, v34);
      sub_238755690(v31, v35);
      v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15CD8, &unk_238784DA0));
      v10 = sub_23875D080();
      sub_238756A18(v31);
      return v10;
    }
  }

  sub_238439884(&v10[v22], &qword_27DF0D9F0, &unk_23876DD40);
  sub_238439884(&v10[v23], &qword_27DF0B118, &qword_23876F450);
  return v10;
}

uint64_t type metadata accessor for OrderImportPreview(uint64_t a1)
{
  result = qword_27DF15CB8;
  if (!qword_27DF15CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238755690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderImportPreview(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2387556F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderImportPreview(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_238755758(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderImportPreview(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_238753930(a1, v4);
}

uint64_t sub_2387557E0()
{
  v2 = *(type metadata accessor for OrderImportPreview(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238449A7C;

  return sub_238754CB4(v0 + v3);
}

uint64_t objectdestroyTm_39()
{
  v1 = type metadata accessor for OrderImportPreview(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C600();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C6D0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238755A7C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OrderImportPreview(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_238755B58(uint64_t a1)
{
  type metadata accessor for OrderManagementModel.ConfirmationData(319);
  if (v1 <= 0x3F)
  {
    sub_2384C6178(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23846D0DC();
      if (v3 <= 0x3F)
      {
        sub_2387579D0();
        if (v4 <= 0x3F)
        {
          sub_2384C6178(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_238755CD4(319, &qword_27DF0DA10, MEMORY[0x277CDD848]);
            if (v6 <= 0x3F)
            {
              sub_238755CD4(319, &qword_27DF0B130, MEMORY[0x277CDF708]);
              if (v7 <= 0x3F)
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

void sub_238755CD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI18OrderImportPreviewV0E6ResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_238755D50()
{
  result = qword_27DF15CC8;
  if (!qword_27DF15CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15CB0, &qword_238784C80);
    sub_238755DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15CC8);
  }

  return result;
}

unint64_t sub_238755DDC()
{
  result = qword_27DF15CD0;
  if (!qword_27DF15CD0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15CA8, &qword_238784C78);
    sub_2385E26AC(v1, v2, v3);
    sub_238756860(&qword_27DF08DC8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15CD0);
  }

  return result;
}

uint64_t sub_238755EA0(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_23875C1E0();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v2[11] = swift_task_alloc();
  v4 = sub_2387577F0();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = sub_23875BC40();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_23875A710();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  sub_23875ED50();
  v2[22] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v2[23] = v8;
  v2[24] = v7;

  return MEMORY[0x2822009F8](sub_2387560EC, v8, v7);
}

uint64_t sub_2387560EC(uint64_t a1)
{
  if (sub_2387577D0())
  {

    v2 = v1[1];

    return v2(1);
  }

  else
  {
    v5 = v1[17];
    v4 = v1[18];
    v6 = v1[16];
    v7 = v1[11];
    sub_2387586C0();
    sub_2387586F0();
    (*(v5 + 16))(v7, v4, v6);
    (*(v5 + 56))(v7, 0, 1, v6);
    v8 = swift_task_alloc();
    v1[25] = v8;
    *v8 = v1;
    v8[1] = sub_2387562AC;
    v9 = v1[21];
    v10 = v1[15];
    v11 = v1[11];

    return MEMORY[0x282116D68](v10, v9, v11);
  }
}

uint64_t sub_2387562AC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 208) = v0;

  sub_238439884(v3, &qword_27DF12E00, &unk_238763FC0);
  v4 = *(v2 + 192);
  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_2387565CC;
  }

  else
  {
    v6 = sub_238756414;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_238756414()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v14 = v0[15];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  (*(v7 + 32))(v8, v14, v9);
  v10 = (*(v7 + 88))(v8, v9);
  if (v10 == *MEMORY[0x277CC66F8])
  {
    goto LABEL_2;
  }

  if (v10 != *MEMORY[0x277CC6700])
  {
    if (v10 == *MEMORY[0x277CC66E8])
    {
LABEL_2:
      v11 = 0;
      goto LABEL_5;
    }

    if (v10 != *MEMORY[0x277CC66F0])
    {
      (*(v0[13] + 8))(v0[14], v0[12]);
    }
  }

  v11 = 1;
LABEL_5:

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_2387565CC()
{
  v33 = v0;
  v1 = v0[26];

  sub_23875C180();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v28 = v0[19];
    v30 = v0[21];
    v6 = v0[17];
    v26 = v0[16];
    v27 = v0[18];
    v7 = v0[9];
    v25 = v0[10];
    v23 = v0[26];
    v24 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_23875F690();
    v12 = sub_2384615AC(v10, v11, &v32);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to query order: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);

    (*(v7 + 8))(v25, v24);
    (*(v6 + 8))(v27, v26);
    (*(v5 + 8))(v30, v28);
  }

  else
  {
    v13 = v0[26];
    v14 = v0[20];
    v15 = v0[18];
    v29 = v0[19];
    v31 = v0[21];
    v17 = v0[16];
    v16 = v0[17];
    v18 = v0[9];
    v19 = v0[10];
    v20 = v0[8];

    (*(v18 + 8))(v19, v20);
    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v31, v29);
  }

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_238756860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2387568A8(uint64_t a1)
{
  v4 = *(type metadata accessor for OrderImportPreview(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2384494A4;

  return sub_238753DA4(v10, a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2387569C8(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (v2 == 1)
    {
      v3 = 2;
      v2 = 0;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return (*(v1 + 16))(v3, v2);
}

uint64_t sub_238756A18(uint64_t a1)
{
  v2 = type metadata accessor for OrderImportPreview(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238756ACC()
{
  v1 = *(v0 + OBJC_IVAR____TtCO12FinanceKitUI22PrivacySettingsStaging15WrappedProvider_wrappedObject);
  v2 = sub_23875EA50();
  v3 = [v1 valueForKeyPath_];

  if (v3)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15CE8, &unk_238784DE0);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_238721954(v8);
    return 0;
  }
}

uint64_t sub_238756D40()
{
  v1 = *(v0 + OBJC_IVAR____TtCO12FinanceKitUI22PrivacySettingsStaging15WrappedProvider_wrappedObject);
  v2 = sub_23875EA50();
  v3 = [v1 valueForKeyPath_];

  if (v3)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_238721954(v8);
  }

  return MEMORY[0x277D84F90];
}

id sub_238756F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacySettingsStaging.WrappedProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27DF2F5E8 == -1)
  {
    if (qword_27DF2F5F0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27DF2F5F0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27DF2F5E0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27DF2F5D4 > a3)
      {
        return 1;
      }

      if (dword_27DF2F5D4 >= a3)
      {
        return dword_27DF2F5D8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27DF2F5F0;
  if (qword_27DF2F5F0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27DF2F5F0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EE645A0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27DF2F5D4, &dword_27DF2F5D8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}