uint64_t sub_25AE56C38(uint64_t *a1)
{
  v2 = type metadata accessor for OnboardingCoordinatorView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE570B0();
  v5 = sub_25AEA15C8();
  sub_25AE57540(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_25AE575B0(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = (v5 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_dismissEnrollmentFlow);
  *v8 = sub_25AE57B9C;
  v8[1] = v7;
}

uint64_t sub_25AE56D8C(uint64_t *a1)
{
  v9 = sub_25AEA1698();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE570B0();
  v4 = *(sub_25AEA15C8() + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_wasNameRecognitinoEnabledBeforeOnboarding);

  if (v4 == 1)
  {
    if (qword_27FA1D230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    v5 = *(sub_25AEA15C8() + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_wasNameRecognitinoEnabledBeforeOnboarding);

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v10) = v5;

    sub_25AEA1488();
    sub_25AEA2478();
    v6 = MEMORY[0x25F859F80]();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478(&v10);

    [v6 setNameRecognitionEnabled_];
  }

  sub_25AE55A10(v3);
  sub_25AEA1688();
  return (*(v1 + 8))(v3, v9);
}

uint64_t sub_25AE56FFC(uint64_t a1)
{
  if (qword_27FA1D270 != -1)
  {
    swift_once();
  }

  sub_25AE6A0A8(qword_27FA1E0F8, qword_27FA1E100);
  v2 = type metadata accessor for OnboardingCoordinatorView(0);
  return (*(a1 + *(v2 + 24)))();
}

unint64_t sub_25AE570B0()
{
  result = qword_27FA1D438;
  if (!qword_27FA1D438)
  {
    type metadata accessor for EnrollmentCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D438);
  }

  return result;
}

unint64_t sub_25AE57118()
{
  result = qword_27FA1DA80;
  if (!qword_27FA1DA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DA78, &qword_25AEA4820);
    sub_25AE571A4();
    sub_25AE57498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DA80);
  }

  return result;
}

unint64_t sub_25AE571A4()
{
  result = qword_27FA1DA88;
  if (!qword_27FA1DA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DA90, &qword_25AEA4828);
    sub_25AE57230();
    sub_25AE57364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DA88);
  }

  return result;
}

unint64_t sub_25AE57230()
{
  result = qword_27FA1DA98;
  if (!qword_27FA1DA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DAA0, &qword_25AEA4830);
    sub_25AE572BC();
    sub_25AE57310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DA98);
  }

  return result;
}

unint64_t sub_25AE572BC()
{
  result = qword_27FA1DAA8;
  if (!qword_27FA1DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAA8);
  }

  return result;
}

unint64_t sub_25AE57310()
{
  result = qword_27FA1DAB0;
  if (!qword_27FA1DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAB0);
  }

  return result;
}

unint64_t sub_25AE57364()
{
  result = qword_27FA1DAB8;
  if (!qword_27FA1DAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DAC0, &qword_25AEA4838);
    sub_25AE573F0();
    sub_25AE57444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAB8);
  }

  return result;
}

unint64_t sub_25AE573F0()
{
  result = qword_27FA1DAC8;
  if (!qword_27FA1DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAC8);
  }

  return result;
}

unint64_t sub_25AE57444()
{
  result = qword_27FA1DAD0;
  if (!qword_27FA1DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAD0);
  }

  return result;
}

unint64_t sub_25AE57498()
{
  result = qword_27FA1DAD8;
  if (!qword_27FA1DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAD8);
  }

  return result;
}

unint64_t sub_25AE574EC()
{
  result = qword_27FA1DAE0;
  if (!qword_27FA1DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAE0);
  }

  return result;
}

uint64_t sub_25AE57540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingCoordinatorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE575B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingCoordinatorView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE5767C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAF8, &qword_25AEA48A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25AE5775C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAF8, &qword_25AEA48A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_25AE57824(uint64_t a1)
{
  sub_25AE578C0(319);
  if (v1 <= 0x3F)
  {
    sub_25AE57924(319);
    if (v2 <= 0x3F)
    {
      sub_25AE5797C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AE578C0(uint64_t a1)
{
  if (!qword_27FA1DB10)
  {
    type metadata accessor for EnrollmentCoordinator(255);
    sub_25AE570B0();
    v1 = sub_25AEA15E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA1DB10);
    }
  }
}

void sub_25AE57924(uint64_t a1)
{
  if (!qword_27FA1DB18)
  {
    sub_25AEA1698();
    v1 = sub_25AEA15B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA1DB18);
    }
  }
}

unint64_t sub_25AE5797C()
{
  result = qword_27FA1DB20;
  if (!qword_27FA1DB20)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FA1DB20);
  }

  return result;
}

unint64_t sub_25AE579D0()
{
  result = qword_27FA1DB28;
  if (!qword_27FA1DB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DAF0, &qword_25AEA4848);
    sub_25AE57A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DB28);
  }

  return result;
}

unint64_t sub_25AE57A5C()
{
  result = qword_27FA1DB30;
  if (!qword_27FA1DB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DAE8, &qword_25AEA4840);
    sub_25AE47F60(&qword_27FA1DB38, &qword_27FA1DB40, &qword_25AEA48D0, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DB30);
  }

  return result;
}

uint64_t sub_25AE57B14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE57BB4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OnboardingCoordinatorView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_25AE57C30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for OnboardingCoordinatorView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_25AE575A8(*(v0 + v4), *(v0 + v4 + 8));
  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25AEA1698();
    (*(*(v6 - 8) + 8))(v0 + v4 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

double sub_25AE57DDC@<D0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for OnboardingCoordinatorView(0);
  sub_25AE564B0(*a1, v7);
  v4 = v7[3];
  a2[2] = v7[2];
  a2[3] = v4;
  a2[4] = v8[0];
  *(a2 + 75) = *(v8 + 11);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

uint64_t sub_25AE57E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA78, &qword_25AEA4820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int *ErrorView.init(title:description:errorType:continueAction:finishLaterAction:onDismissAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = *a5;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ErrorView(0);
  v21 = (a9 + result[5]);
  *v21 = a1;
  v21[1] = a2;
  v22 = (a9 + result[6]);
  *v22 = a3;
  v22[1] = a4;
  *(a9 + result[7]) = v19;
  v23 = (a9 + result[8]);
  *v23 = a6;
  v23[1] = a7;
  v24 = (a9 + result[9]);
  *v24 = a8;
  v24[1] = a10;
  v25 = (a9 + result[10]);
  *v25 = a11;
  v25[1] = a12;
  return result;
}

uint64_t ErrorViewType.hashValue.getter()
{
  v1 = *v0;
  sub_25AEA28B8();
  MEMORY[0x25F85A3E0](v1);
  return sub_25AEA28D8();
}

uint64_t sub_25AE580C8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25AEA18E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_25AE57C30(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25AEA1698();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_25AEA2498();
    v13 = sub_25AEA1A98();
    sub_25AEA1298();

    sub_25AEA18D8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ErrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ErrorView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_25AEA1988();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DB48, &qword_25AEA4970);
  sub_25AE583F8(v1, a1 + *(v6 + 44));
  sub_25AE598BC(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_25AE59924(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DB50, &qword_25AEA4978);
  v10 = (a1 + *(result + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_25AE59988;
  v10[3] = v8;
  return result;
}

uint64_t sub_25AE583F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[3] = a2;
  v3 = sub_25AEA1238();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for ErrorView(0);
  v9 = *(v8 + 24);
  v10 = (a1 + *(v8 + 20));
  v11 = *v10;
  v14[0] = v10[1];
  v14[1] = *(a1 + v9);
  v14[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25AEA3540;

  sub_25AEA1228();
  v14[11] = v12;
  sub_25AE5A1D0(&qword_27FA1D3C0, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80, MEMORY[0x277D83970]);
  sub_25AEA2578();
  sub_25AEA1F38();
  (*(v4 + 8))(v6, v3);
  v14[10] = a1;
  v14[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DB98, &qword_25AEA4A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBA0, &qword_25AEA4A80);
  sub_25AE59E10();
  sub_25AE47F60(&qword_27FA1DBC0, &qword_27FA1DBA0, &qword_25AEA4A80, MEMORY[0x277CE1198]);
  return sub_25AEA11F8();
}

double sub_25AE58754@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_25AEA1988();
  sub_25AE587D8(&v9);
  v4 = v10;
  v5 = v11;
  v8 = v9;
  v6 = sub_25AEA1AE8();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v8;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1;
  return result;
}

uint64_t sub_25AE587D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D528, &qword_25AEA3D80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBF0, &qword_25AEA4AE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  if (*(v1 + *(type metadata accessor for ErrorView(0) + 28)))
  {
    v9 = sub_25AEA1D88();
  }

  else
  {
    v9 = sub_25AEA1DD8();
  }

  sub_25AEA1E08();
  v10 = *MEMORY[0x277CE1020];
  v11 = sub_25AEA1E48();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  v13 = sub_25AEA1E28();

  sub_25AE41938(v8, &qword_27FA1DBF0, &qword_25AEA4AE8);
  v14 = sub_25AEA1AF8();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = sub_25AEA1B28();

  sub_25AE41938(v5, &qword_27FA1D528, &qword_25AEA3D80);
  result = swift_getKeyPath();
  *a1 = v13;
  a1[1] = v9;
  a1[2] = result;
  a1[3] = v15;
  return result;
}

uint64_t sub_25AE58A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBA0, &qword_25AEA4A80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  *v7 = sub_25AEA1988();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBC8, &qword_25AEA4A90);
  sub_25AE58B68(a1, &v7[*(v8 + 44)]);
  sub_25AE59EC8(v7, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_25AE58B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v76 = a1;
  v2 = sub_25AEA1288();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBD0, &qword_25AEA4A98);
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBD8, &qword_25AEA4AA0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v74 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v59 - v9;
  v10 = sub_25AEA1278();
  v11 = *(v10 - 8);
  v68 = v10;
  v69 = v11;
  MEMORY[0x28223BE20](v10);
  v67 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ErrorView(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D698, &qword_25AEA4080);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBE0, &qword_25AEA4AA8);
  v22 = v21 - 8;
  v23 = MEMORY[0x28223BE20](v21);
  v70 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v59 - v25;
  sub_25AE598BC(v76, &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v61 = v16;
  v28 = swift_allocObject();
  v60 = v27;
  v62 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AE59924(v62, v28 + v27);
  sub_25AEA1EB8();
  v29 = v67;
  sub_25AEA1588();
  v30 = sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080, MEMORY[0x277CDF028]);
  sub_25AE5A1D0(&qword_27FA1DA00, MEMORY[0x277CE76F0], MEMORY[0x277CE76E0]);
  v31 = v68;
  v59 = v30;
  sub_25AEA1C28();
  (*(v69 + 8))(v29, v31);
  v32 = *(v18 + 8);
  v67 = v20;
  v68 = v18 + 8;
  v69 = v17;
  v32(v20, v17);
  v33 = v32;
  v34 = v76;
  LOBYTE(v29) = *(v76 + *(v14 + 40)) == 0;
  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  v37 = *(v22 + 44);
  v38 = v26;
  v39 = &v26[v37];
  *v39 = KeyPath;
  v39[1] = sub_25AE59FC0;
  v39[2] = v36;
  if (*(v34 + *(v14 + 44)))
  {
    v40 = v62;
    sub_25AE598BC(v34, v62);
    v41 = v60;
    v42 = swift_allocObject();
    sub_25AE59924(v40, v42 + v41);
    v43 = v67;
    sub_25AEA1EB8();
    v44 = v64;
    sub_25AEA1598();
    sub_25AE5A1D0(&qword_27FA1DA10, MEMORY[0x277CE7708], MEMORY[0x277CE76F8]);
    v45 = v63;
    v46 = v69;
    v47 = v66;
    sub_25AEA1C28();
    (*(v65 + 8))(v44, v47);
    v33(v43, v46);
    v49 = v71;
    v48 = v72;
    v50 = v73;
    (*(v72 + 32))(v71, v45, v73);
    v51 = 0;
    v52 = v50;
    v53 = v48;
  }

  else
  {
    v51 = 1;
    v53 = v72;
    v52 = v73;
    v49 = v71;
  }

  (*(v53 + 56))(v49, v51, 1, v52);
  v54 = v70;
  sub_25AE479E0(v38, v70, &qword_27FA1DBE0, &qword_25AEA4AA8);
  v55 = v74;
  sub_25AE479E0(v49, v74, &qword_27FA1DBD8, &qword_25AEA4AA0);
  v56 = v75;
  sub_25AE479E0(v54, v75, &qword_27FA1DBE0, &qword_25AEA4AA8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBE8, &qword_25AEA4AE0);
  sub_25AE479E0(v55, v56 + *(v57 + 48), &qword_27FA1DBD8, &qword_25AEA4AA0);
  sub_25AE41938(v49, &qword_27FA1DBD8, &qword_25AEA4AA0);
  sub_25AE41938(v38, &qword_27FA1DBE0, &qword_25AEA4AA8);
  sub_25AE41938(v55, &qword_27FA1DBD8, &qword_25AEA4AA0);
  return sub_25AE41938(v54, &qword_27FA1DBE0, &qword_25AEA4AA8);
}

uint64_t sub_25AE5932C(uint64_t a1)
{
  v2 = sub_25AEA1698();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AE580C8(v5);
  sub_25AEA1688();
  (*(v3 + 8))(v5, v2);
  result = type metadata accessor for ErrorView(0);
  v7 = (a1 + *(result + 36));
  if (*v7)
  {
    return (*v7)();
  }

  return result;
}

uint64_t sub_25AE59428@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE59510(uint64_t a1)
{
  v2 = sub_25AEA1698();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AE580C8(v5);
  sub_25AEA1688();
  (*(v3 + 8))(v5, v2);
  result = type metadata accessor for ErrorView(0);
  v7 = (a1 + *(result + 32));
  if (*v7)
  {
    return (*v7)();
  }

  return result;
}

uint64_t sub_25AE5960C@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE596E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_25AEA1988();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DB48, &qword_25AEA4970);
  sub_25AE583F8(v2, a2 + *(v6 + 44));
  sub_25AE598BC(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_25AE59924(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DB50, &qword_25AEA4978);
  v10 = (a2 + *(result + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_25AE5A274;
  v10[3] = v8;
  return result;
}

uint64_t type metadata accessor for ErrorView(uint64_t a1)
{
  result = qword_27FA1DB60;
  if (!qword_27FA1DB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AE598BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE59924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AE59990()
{
  result = qword_27FA1DB58;
  if (!qword_27FA1DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DB58);
  }

  return result;
}

uint64_t sub_25AE59A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAF8, &qword_25AEA48A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25AE59B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAF8, &qword_25AEA48A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_25AE59BCC(uint64_t a1)
{
  sub_25AE57924(319);
  if (v1 <= 0x3F)
  {
    sub_25AE59C6C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25AE59C6C(uint64_t a1)
{
  if (!qword_27FA1DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DB78, &qword_25AEA4A68);
    v1 = sub_25AEA2538();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA1DB70);
    }
  }
}

unint64_t sub_25AE59CD4()
{
  result = qword_27FA1DB80;
  if (!qword_27FA1DB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DB50, &qword_25AEA4978);
    sub_25AE47F60(&qword_27FA1DB88, &qword_27FA1DB90, &qword_25AEA4A70, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DB80);
  }

  return result;
}

uint64_t sub_25AE59D8C()
{
  v1 = type metadata accessor for ErrorView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 48) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

unint64_t sub_25AE59E10()
{
  result = qword_27FA1DBA8;
  if (!qword_27FA1DBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DB98, &qword_25AEA4A78);
    sub_25AE47F60(&qword_27FA1DBB0, &qword_27FA1DBB8, &qword_25AEA4A88, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DBA8);
  }

  return result;
}

uint64_t sub_25AE59EC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBA0, &qword_25AEA4A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE59F50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AEA1848();
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for ErrorView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25AEA1698();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  if (*(v5 + v1[8]))
  {
  }

  if (*(v5 + v1[9]))
  {
  }

  if (*(v5 + v1[10]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AE5A15C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ErrorView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_25AE5A1D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AE5A218@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AEA1848();
  *a1 = result;
  return result;
}

uint64_t sub_25AE5A280()
{
  type metadata accessor for AutomationService();
  v0 = swift_allocObject();
  if (qword_27FA1D278 != -1)
  {
    v1 = v0;
    swift_once();
    v0 = v1;
  }

  *(v0 + 16) = qword_27FA1E140;
  qword_27FA1DBF8 = v0;

  return MEMORY[0x2821F9840]();
}

uint64_t static AutomationService.shared.getter()
{
  if (qword_27FA1D238 != -1)
  {
    swift_once();
  }
}

uint64_t AutomationService.enableNameRecognition(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_25AE5A38C, 0, 0);
}

uint64_t sub_25AE5A38C()
{
  v1 = *(v0 + 48);
  *(v0 + 24) = sub_25AEA2478();
  v2 = MEMORY[0x25F859F80]();
  v3 = [v2 isNameRecognitionEnabled];

  if (v1 != v3)
  {
    if (*(v0 + 48) == 1)
    {
      v4 = swift_task_alloc();
      *(v0 + 32) = v4;
      *v4 = v0;
      v4[1] = sub_25AE5A4C8;

      return NameRecognitionClient.enrolledNames()();
    }

    v6 = MEMORY[0x25F859F80]();
    [v6 setNameRecognitionEnabled_];
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25AE5A4C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_25AE5A614, 0, 0);
  }
}

uint64_t sub_25AE5A614()
{
  v1 = *(*(v0 + 40) + 16);

  if (v1)
  {
    v3 = *(v0 + 48);
    v4 = MEMORY[0x25F859F80](v2);
    [v4 setNameRecognitionEnabled_];
  }

  else
  {
    sub_25AE426AC();
    swift_allocError();
    *v6 = 12;
    *(v6 + 8) = 0xD000000000000033;
    *(v6 + 16) = 0x800000025AEA8A00;
    swift_willThrow();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t AutomationService.enroll(name:audioPaths:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_25AEA1178();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE5A830, 0, 0);
}

uint64_t sub_25AE5A830()
{
  sub_25AEA2478();
  v1 = MEMORY[0x25F859F80]();
  v2 = [v1 isNameRecognitionEnabled];

  if (v2)
  {
    v3 = MEMORY[0x25F859F80]();
    [v3 setNameRecognitionEnabled_];
  }

  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  type metadata accessor for EnrollmentCoordinator(0);
  swift_allocObject();
  v7 = sub_25AE79BC4();
  v0[17] = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v0[5] = v6;
  v0[6] = v5;

  v36 = v7;
  sub_25AEA1488();
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments;
    v33 = v0[13];
    v34 = v0[14];
    v10 = v0[11];
    v32 = *MEMORY[0x277D79820];
    v30 = (v10 + 8);
    v31 = (v10 + 104);
    v11 = (v0[9] + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      v14 = sub_25AE6A858(v12, v13);
      v16 = v0[15];
      v15 = v0[16];
      (*v31)(v0[12], v32, v0[10]);
      v17 = sub_25AEA1168();
      v19 = v18;
      sub_25AEA0E38();
      *(v15 + *(v33 + 20)) = v14;
      v20 = (v15 + *(v33 + 24));
      *v20 = v17;
      v20[1] = v19;
      sub_25AE47A48(v15, v16);
      swift_beginAccess();
      v21 = *(v36 + v9);
      v35 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v36 + v9) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_25AE5B844(0, v21[2] + 1, 1, v21, &qword_27FA1DC18, &qword_25AEA4C00, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
        *(v36 + v9) = v21;
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_25AE5B844((v23 > 1), v24 + 1, 1, v21, &qword_27FA1DC18, &qword_25AEA4C00, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
      }

      v11 += 2;
      v25 = v0[15];
      v26 = v0[12];
      v27 = v0[10];
      v21[2] = v24 + 1;
      sub_25AE47A48(v25, v21 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24);
      *(v36 + v9) = v21;
      swift_endAccess();

      (*v30)(v26, v27);
      --v8;
    }

    while (v8);
  }

  v28 = swift_task_alloc();
  v0[18] = v28;
  *v28 = v0;
  v28[1] = sub_25AE5AC24;

  return sub_25AE7C6D8();
}

uint64_t sub_25AE5AC24()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_25AE5ADC4;
  }

  else
  {
    v2 = sub_25AE5AD38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25AE5AD38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AE5ADC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AutomationService.listenForAudio(at:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25AE5AE70, 0, 0);
}

uint64_t sub_25AE5AE70()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_25AE5BB6C;
  v3 = v0[2];
  v2 = v0[3];

  return sub_25AE6C61C(v3, v2);
}

uint64_t sub_25AE5AF2C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_25AE5BB70;

  return NameRecognitionClient.enrolledNames()();
}

uint64_t AutomationService.deleteName(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25AE5AFE8, 0, 0);
}

uint64_t sub_25AE5AFE8()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_25AE5B088;
  v3 = v0[2];
  v2 = v0[3];

  return NameRecognitionClient.deleteName(with:)(v3, v2);
}

uint64_t sub_25AE5B088()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25AE5B19C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_25AE5B234;

  return NameRecognitionClient.deleteAllNames()();
}

uint64_t sub_25AE5B234()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AutomationService.sendNotification(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25AE5B34C, 0, 0);
}

uint64_t sub_25AE5B34C()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_25AE5BB6C;
  v3 = v0[2];
  v2 = v0[3];

  return sub_25AE6D7DC(v3, v2);
}

uint64_t sub_25AE5B408()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_25AE5B49C;

  return sub_25AE6DC2C();
}

uint64_t sub_25AE5B49C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t AutomationService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_25AE5B5F4@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25AE5B678(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

char *sub_25AE5B700(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC00, &qword_25AEA4BE8);
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

void *sub_25AE5B844(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_25AE5BA20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC08, &qword_25AEA4BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
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

unint64_t sub_25AE5BBB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v5);

  if ((BYTE1(v5) & 0xFE) == 4)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v5);

  if ((BYTE1(v5) & 0xFE) == 4)
  {
    return 0;
  }

  if (BYTE1(v5) == 2)
  {
    v2 = 0xD00000000000001FLL;
  }

  else
  {
    v2 = 0xD000000000000020;
  }

  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC70, &qword_25AEA4D90);
  sub_25AEA1E78();
  if (v3 == v4)
  {
  }

  return v2;
}

double sub_25AE5BD80@<D0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_25AEA1238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v45 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC20, &qword_25AEA4CB0);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = v44 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC28, &qword_25AEA4CB8);
  MEMORY[0x28223BE20](v47);
  v48 = v44 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC30, &qword_25AEA4CC0);
  MEMORY[0x28223BE20](v46);
  v54 = v44 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC38, &qword_25AEA4CC8);
  MEMORY[0x28223BE20](v57);
  v58 = v44 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC40, &unk_25AEA4CD0);
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = v44 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25AEA3540;
  v52 = v1;
  v64[0] = *v1;
  v13 = *(&v64[0] + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v13;
  sub_25AEA1478(v63);

  v14 = v63[0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_25AE4172C();
  if (*(&v14 + 1))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (*(&v14 + 1))
  {
    v16 = *(&v14 + 1);
  }

  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v17 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v18 = qword_27FA22788;
  }

  else
  {
    v18 = [objc_opt_self() mainBundle];
    v17 = 0;
  }

  v19 = v17;
  sub_25AEA0CC8();

  v44[2] = sub_25AEA21B8();
  v44[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25AEA3550;
  sub_25AEA1228();
  sub_25AEA1208();
  *&v63[0] = v21;
  sub_25AE618C0(&qword_27FA1D3C0, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80, MEMORY[0x277D83970]);
  v22 = v45;
  sub_25AEA2578();
  sub_25AEA1F38();
  v23 = (*(v3 + 8))(v22, v2);
  v45 = v44;
  v24 = MEMORY[0x28223BE20](v23);
  v25 = v52;
  MEMORY[0x28223BE20](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC48, &qword_25AEA4D28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC50, &unk_25AEA4D30);
  sub_25AE47F60(&qword_27FA1DC58, &qword_27FA1DC48, &qword_25AEA4D28, MEMORY[0x277CE1198]);
  sub_25AE47F60(&qword_27FA1DC60, &qword_27FA1DC50, &unk_25AEA4D30, &unk_25AEA5628);
  v26 = v49;
  sub_25AEA11F8();
  v27 = v48;
  (*(v50 + 32))(v48, v26, v51);
  v28 = (v27 + *(v47 + 36));
  v30 = v53;
  v29 = v54;
  *v28 = sub_25AE602CC;
  v28[1] = v30;
  v28[2] = 0;
  v28[3] = 0;
  sub_25AE49BE4(v27, v29, &qword_27FA1DC28, &qword_25AEA4CB8);
  v31 = (v29 + *(v46 + 36));
  *v31 = 0;
  v31[1] = 0;
  v31[2] = sub_25AE602D4;
  v31[3] = v30;
  swift_beginAccess();
  v32 = v57;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v33 = v58;
  sub_25AEA1448();
  swift_endAccess();
  v63[0] = v25[1];
  v34 = swift_allocObject();
  v35 = v25[1];
  *(v34 + 16) = *v25;
  *(v34 + 32) = v35;
  *(v34 + 48) = *(v25 + 4);
  v36 = swift_allocObject();
  *(v36 + 16) = sub_25AE602DC;
  *(v36 + 24) = v34;
  sub_25AE49BE4(v29, v33, &qword_27FA1DC30, &qword_25AEA4CC0);
  v37 = (v33 + *(v32 + 56));
  *v37 = sub_25AE6031C;
  v37[1] = v36;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AE479E0(v64, v62, &qword_27FA1DC68, &qword_25AEA4D88);
  sub_25AE479E0(v63, v62, &qword_27FA1DC70, &qword_25AEA4D90);
  sub_25AEA1478(v62);

  v61 = BYTE1(v62[0]);
  v38 = swift_allocObject();
  v39 = v25[1];
  *(v38 + 16) = *v25;
  *(v38 + 32) = v39;
  *(v38 + 48) = *(v25 + 4);
  sub_25AE479E0(v64, v62, &qword_27FA1DC68, &qword_25AEA4D88);
  sub_25AE479E0(v63, v62, &qword_27FA1DC70, &qword_25AEA4D90);
  sub_25AE47F60(&qword_27FA1DC78, &qword_27FA1DC38, &qword_25AEA4CC8, MEMORY[0x277CDDB50]);
  sub_25AE6044C();
  v40 = v55;
  sub_25AEA1D38();

  sub_25AE41938(v33, &qword_27FA1DC38, &qword_25AEA4CC8);
  LOBYTE(v34) = sub_25AEA1AB8();
  v41 = v60;
  (*(v56 + 32))(v60, v40, v59);
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC88, &qword_25AEA4D98) + 36);
  *v42 = v34;
  result = 0.0;
  *(v42 + 8) = 0u;
  *(v42 + 24) = 0u;
  *(v42 + 40) = 1;
  return result;
}

uint64_t sub_25AE5C868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_25AEA1988();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCB8, &qword_25AEA4E10);
  return sub_25AE5C8C0(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_25AE5C8C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCC0, &qword_25AEA4E18);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 15];
  MEMORY[0x28223BE20](v4);
  v8 = &v27[-v7 - 15];
  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE618C0(&qword_27FA1D438, type metadata accessor for EnrollmentCoordinator, &unk_25AEA61F8);
  swift_retain_n();
  v9 = sub_25AEA16D8();
  v11 = v10;
  sub_25AE5CBA8(v8);
  v12 = sub_25AEA16D8();
  v14 = v13;
  v15 = sub_25AEA1AB8();
  LOBYTE(v34[0]) = 1;
  sub_25AE479E0(v8, v6, &qword_27FA1DCC0, &qword_25AEA4E18);
  *a2 = v9;
  a2[1] = v11;
  a2[2] = 0x4040000000000000;
  a2[3] = 3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCC8, &qword_25AEA4E20);
  sub_25AE479E0(v6, a2 + *(v16 + 48), &qword_27FA1DCC0, &qword_25AEA4E18);
  v17 = a2 + *(v16 + 64);
  *&v28 = v12;
  *(&v28 + 1) = v14;
  __asm { FMOV            V0.2D, #8.0 }

  v26 = _Q0;
  v29 = _Q0;
  *&v30 = 0x4054000000000000;
  BYTE8(v30) = v15;
  *(&v30 + 9) = *v27;
  HIDWORD(v30) = *&v27[3];
  v31 = 0u;
  v32 = 0u;
  v33 = 1;
  v17[80] = 1;
  v23 = v29;
  *v17 = v28;
  *(v17 + 1) = v23;
  v24 = v31;
  *(v17 + 2) = v30;
  *(v17 + 3) = v24;
  *(v17 + 4) = v32;

  sub_25AE479E0(&v28, v34, &qword_27FA1DCD0, &qword_25AEA4E28);
  sub_25AE41938(v8, &qword_27FA1DCC0, &qword_25AEA4E18);
  v34[0] = v12;
  v34[1] = v14;
  v35 = v26;
  v36 = 0x4054000000000000;
  v37 = v15;
  *v38 = *v27;
  *&v38[3] = *&v27[3];
  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  sub_25AE41938(v34, &qword_27FA1DCD0, &qword_25AEA4E28);
  sub_25AE41938(v6, &qword_27FA1DCC0, &qword_25AEA4E18);
}

uint64_t sub_25AE5CBA8@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCD8, &qword_25AEA4E30);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCE0, &qword_25AEA4E38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478((&v21 + 2));

  if (BYTE3(v21) == 5 && (v11 = sub_25AE60A0C(v10), v12) || (swift_getKeyPath(), swift_getKeyPath(), sub_25AEA1478(&v21), , , (BYTE1(v21) & 0xFE) != 4) && (v11 = sub_25AE5BBB4(), v13))
  {
    v20 = a1;
    *(&v20 - 4) = MEMORY[0x28223BE20](v11);
    *(&v20 - 3) = v14;
    *(&v20 - 2) = v15;
    *(&v20 - 1) = v16;
    sub_25AEA1258();
    sub_25AE618C0(&qword_27FA1DCF0, MEMORY[0x277CE76A8], MEMORY[0x277CE76A0]);
    sub_25AEA1268();

    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_25AE47F60(&qword_27FA1DCF8, &qword_27FA1DCE0, &qword_25AEA4E38, MEMORY[0x277CE76B0]);
    a1 = v20;
    sub_25AEA19E8();
    (*(v7 + 8))(v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCE8, &qword_25AEA4E40);
  return (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

uint64_t sub_25AE5CFD0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v9 = a1[1];
  v10 = v4;
  v5 = swift_allocObject();
  v6 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 4);
  *a2 = 2;
  a2[1] = sub_25AE60504;
  a2[2] = v5;
  sub_25AE479E0(&v10, v8, &qword_27FA1DC68, &qword_25AEA4D88);
  return sub_25AE479E0(&v9, v8, &qword_27FA1DC70, &qword_25AEA4D90);
}

double sub_25AE5D07C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25AEA1988();
  v23 = 1;
  sub_25AE5D7F8(a1, &v13);
  v30 = v19;
  v31 = v20;
  v32[0] = v21[0];
  *(v32 + 9) = *(v21 + 9);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v24 = v13;
  v25 = v14;
  v33[6] = v19;
  v33[7] = v20;
  v34[0] = v21[0];
  *(v34 + 9) = *(v21 + 9);
  v33[2] = v15;
  v33[3] = v16;
  v33[4] = v17;
  v33[5] = v18;
  v33[0] = v13;
  v33[1] = v14;
  sub_25AE479E0(&v24, &v12, &qword_27FA1DC90, &qword_25AEA4DA8);
  sub_25AE41938(v33, &qword_27FA1DC90, &qword_25AEA4DA8);
  *(&v22[3] + 7) = v27;
  *(&v22[2] + 7) = v26;
  *(&v22[6] + 7) = v30;
  *(&v22[7] + 7) = v31;
  *(&v22[8] + 7) = v32[0];
  v22[9] = *(v32 + 9);
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29;
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  v5 = v22[7];
  *(a2 + 113) = v22[6];
  *(a2 + 129) = v5;
  v6 = v22[9];
  *(a2 + 145) = v22[8];
  *(a2 + 161) = v6;
  v7 = v22[3];
  *(a2 + 49) = v22[2];
  *(a2 + 65) = v7;
  v8 = v22[5];
  *(a2 + 81) = v22[4];
  *(a2 + 97) = v8;
  result = *v22;
  v10 = v22[1];
  *(a2 + 17) = v22[0];
  v11 = v23;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 33) = v10;
  return result;
}

void sub_25AE5D280(uint64_t a1)
{
  sub_25AE7F854();
  sub_25AE7B478();
  v2 = *(a1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
  if (v2)
  {
    v3 = v2;
    sub_25AE502C8();
  }
}

uint64_t sub_25AE5D340(char a1, __int128 *a2)
{
  v33 = sub_25AEA20C8();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_25AEA20E8();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25AEA2108();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  if (a1)
  {
    v18 = result;
    v30 = result;
    sub_25AE604A0();
    v28 = sub_25AEA24C8();
    sub_25AEA20F8();
    sub_25AEA2118();
    v19 = *(v11 + 8);
    v29 = v11 + 8;
    v31 = v19;
    v19(v14, v18);
    v20 = *a2;
    v36 = a2[1];
    v37 = v20;
    v21 = swift_allocObject();
    v22 = a2[1];
    *(v21 + 16) = *a2;
    *(v21 + 32) = v22;
    *(v21 + 48) = *(a2 + 4);
    aBlock[4] = sub_25AE4700C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25AE93330;
    aBlock[3] = &block_descriptor_4;
    v27 = _Block_copy(aBlock);
    sub_25AE479E0(&v37, v34, &qword_27FA1DC68, &qword_25AEA4D88);
    sub_25AE479E0(&v36, v34, &qword_27FA1DC70, &qword_25AEA4D90);

    sub_25AEA20D8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25AE618C0(&qword_27FA1D908, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
    v23 = v33;
    sub_25AE47F60(&qword_27FA1D918, &qword_27FA1D910, &qword_25AEA4DA0, MEMORY[0x277D83970]);
    sub_25AEA2578();
    v25 = v27;
    v24 = v28;
    MEMORY[0x25F859FD0](v17, v9, v6, v27);
    _Block_release(v25);

    (*(v4 + 8))(v6, v23);
    (*(v7 + 8))(v9, v32);
    return v31(v17, v30);
  }

  return result;
}

unsigned __int8 *sub_25AE5D760(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  v4 = *a2;
  if (v4 == 5)
  {
    if (v3 != 5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (v4 == 4)
    {
      if (v3 == 4)
      {
        return result;
      }

      goto LABEL_4;
    }

    if ((v3 & 0xFE) == 4 || v4 != v3)
    {
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC70, &qword_25AEA4D90);
      return sub_25AEA1E88();
    }
  }

  return result;
}

uint64_t sub_25AE5D7F8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v75[0] = *a1;
  v4 = *(&v75[0] + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v69);

  if (BYTE1(v69) != 5 && ((swift_getKeyPath(), swift_getKeyPath(), sub_25AEA1478(&v69), , , (BYTE1(v69) & 0xFE) == 4) || sub_25AE60780(v4)))
  {
    v15 = 0;
    v50 = 0u;
    v51 = 0u;
    v16 = -1;
    v48 = 0u;
    v49 = 0u;
  }

  else
  {
    v74 = *(a1 + 16);
    v69 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC70, &qword_25AEA4D90);
    sub_25AEA1E78();
    if (v63 == *(a1 + 32))
    {
      v5 = sub_25AEA1958();
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = swift_allocObject();
      v13 = *(a1 + 16);
      *(v12 + 16) = *a1;
      *(v12 + 32) = v13;
      *(v12 + 48) = *(a1 + 32);
      KeyPath = swift_getKeyPath();
      LOBYTE(v69) = 0;
      LOBYTE(v61[0]) = 0;
      *&v63 = KeyPath;
      BYTE8(v63) = 0;
      *&v64 = v5;
      *(&v64 + 1) = v7;
      LOBYTE(v65) = v9 & 1;
      *(&v65 + 1) = v11;
      LOBYTE(v66) = 0;
      *(&v66 + 1) = sub_25AE61C5C;
      v67 = v12;
      v68 = 0;
    }

    else
    {
      v17 = sub_25AEA1958();
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = swift_allocObject();
      v25 = *(a1 + 16);
      *(v24 + 16) = *a1;
      *(v24 + 32) = v25;
      *(v24 + 48) = *(a1 + 32);
      v26 = swift_getKeyPath();
      LOBYTE(v69) = 0;
      LOBYTE(v61[0]) = 1;
      *&v63 = v26;
      BYTE8(v63) = 0;
      *&v64 = v17;
      *(&v64 + 1) = v19;
      LOBYTE(v65) = v21 & 1;
      *(&v65 + 1) = v23;
      LOBYTE(v66) = 0;
      *(&v66 + 1) = sub_25AE608C0;
      v67 = v24;
      v68 = 1;
    }

    sub_25AE479E0(v75, &v69, &qword_27FA1DC68, &qword_25AEA4D88);
    sub_25AE479E0(&v74, &v69, &qword_27FA1DC70, &qword_25AEA4D90);
    sub_25AE60868();
    sub_25AEA19E8();
    v50 = v70;
    v51 = v69;
    v48 = v71;
    v49 = *v72;
    v15 = *&v72[16];
    v16 = v72[24];
  }

  if (sub_25AE60780(v4))
  {
    v27 = sub_25AEA1958();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v73 = *(a1 + 16);
    v34 = swift_allocObject();
    v35 = *(a1 + 16);
    *(v34 + 16) = *a1;
    *(v34 + 32) = v35;
    *(v34 + 48) = *(a1 + 32);
    v36 = swift_getKeyPath();
    LOBYTE(v69) = 0;
    LOBYTE(v61[0]) = 0;
    *&v63 = v36;
    BYTE8(v63) = 0;
    *&v64 = v27;
    *(&v64 + 1) = v29;
    LOBYTE(v65) = v31 & 1;
    *(&v65 + 1) = v33;
    LOBYTE(v66) = 0;
    *(&v66 + 1) = sub_25AE608BC;
    v67 = v34;
    v68 = 0;
  }

  else
  {
    v37 = sub_25AEA1958();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v73 = *(a1 + 16);
    v44 = swift_allocObject();
    v45 = *(a1 + 16);
    *(v44 + 16) = *a1;
    *(v44 + 32) = v45;
    *(v44 + 48) = *(a1 + 32);
    v46 = swift_getKeyPath();
    LOBYTE(v69) = 0;
    LOBYTE(v61[0]) = 1;
    *&v63 = v46;
    BYTE8(v63) = 0;
    *&v64 = v37;
    *(&v64 + 1) = v39;
    LOBYTE(v65) = v41 & 1;
    *(&v65 + 1) = v43;
    LOBYTE(v66) = 1;
    *(&v66 + 1) = sub_25AE6085C;
    v67 = v44;
    v68 = 1;
  }

  sub_25AE479E0(v75, &v69, &qword_27FA1DC68, &qword_25AEA4D88);
  sub_25AE479E0(&v73, &v69, &qword_27FA1DC70, &qword_25AEA4D90);
  sub_25AE60868();
  sub_25AEA19E8();
  v61[2] = v71;
  v62[0] = *v72;
  *(v62 + 9) = *&v72[9];
  v61[0] = v69;
  v61[1] = v70;
  v57[0] = v51;
  v57[1] = v50;
  v57[2] = v48;
  *v58 = v49;
  *&v58[16] = v15;
  v58[24] = v16;
  *v52 = *&v58[9];
  *(v60 + 9) = *&v72[9];
  v59[2] = v71;
  v60[0] = *v72;
  v59[0] = v69;
  v59[1] = v70;
  *&v56[9] = *&v72[9];
  v55 = v71;
  *v56 = *v72;
  v53 = v69;
  v54 = v70;
  *a2 = v51;
  a2[1] = v50;
  a2[4] = *&v52[7];
  a2[5] = v53;
  a2[2] = v48;
  a2[3] = v49;
  *(a2 + 137) = *&v56[9];
  a2[7] = v55;
  a2[8] = *v56;
  a2[6] = v54;
  sub_25AE479E0(v57, &v63, &qword_27FA1DCA0, &qword_25AEA4DE0);
  sub_25AE479E0(v59, &v63, &qword_27FA1DCA8, &qword_25AEA4DE8);
  sub_25AE41938(v61, &qword_27FA1DCA8, &qword_25AEA4DE8);
  v63 = v51;
  v64 = v50;
  v65 = v48;
  v66 = v49;
  v67 = v15;
  v68 = v16;
  return sub_25AE41938(&v63, &qword_27FA1DCA0, &qword_25AEA4DE0);
}

void sub_25AE5DE0C(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v5);

  if ((BYTE1(v5) & 0xFE) == 4 || sub_25AE60780(v2))
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 16);
  v3[1] = *(a1 + 16);
  v6 = *(&v5 + 1);
  sub_25AE479E0(&v6, v3, &qword_27FA1DCB0, &unk_25AEA4DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC70, &qword_25AEA4D90);
  sub_25AEA1E78();
  if (!__OFADD__(v4, 1))
  {
    v3[0] = v5;
    sub_25AEA1E88();
    sub_25AE41938(&v5, &qword_27FA1DC70, &qword_25AEA4D90);
LABEL_5:
    sub_25AE7D49C();
    return;
  }

  __break(1u);
}

uint64_t sub_25AE5DF44(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = sub_25AEA2388();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *a1;
  v13 = a1[1];
  v14 = v6;
  sub_25AEA2368();
  sub_25AE479E0(&v14, v12, &qword_27FA1DC68, &qword_25AEA4D88);
  sub_25AE479E0(&v13, v12, &qword_27FA1DC70, &qword_25AEA4D90);
  v7 = sub_25AEA2358();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = a1[1];
  *(v8 + 32) = *a1;
  *(v8 + 48) = v10;
  *(v8 + 64) = *(a1 + 4);
  sub_25AE82E98(0, 0, v4, &unk_25AEA4E08, v8);
}

uint64_t sub_25AE5E0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = qword_27FA1D250;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v6 = qword_27FA22788;
    v7 = qword_27FA22788;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v6 = 0;
  }

  v8 = v6;
  sub_25AEA0CC8();

  sub_25AEA2278();
  if (v5)
  {

    v9 = v8;
  }

  else
  {
    v10 = objc_opt_self();

    v9 = [v10 mainBundle];
  }

  v11 = v8;
  sub_25AEA0CC8();

  sub_25AEA2278();
  sub_25AEA1DD8();
  return sub_25AEA1248();
}

uint64_t sub_25AE5E2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = qword_27FA1D250;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v6 = qword_27FA22788;
    v7 = qword_27FA22788;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v6 = 0;
  }

  v8 = v6;
  sub_25AEA0CC8();

  sub_25AEA2278();
  if (v5)
  {

    v9 = v8;
  }

  else
  {
    v10 = objc_opt_self();

    v9 = [v10 mainBundle];
  }

  v11 = v8;
  sub_25AEA0CC8();

  sub_25AEA2278();
  sub_25AEA1D88();
  return sub_25AEA1248();
}

uint64_t sub_25AE5E518()
{
  v0[2] = sub_25AEA2368();
  v0[3] = sub_25AEA2358();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_25AE5E5C4;

  return sub_25AE7CFA4();
}

uint64_t sub_25AE5E5C4()
{

  v1 = sub_25AEA2348();

  return MEMORY[0x2822009F8](sub_25AE5E700, v1, v0);
}

uint64_t sub_25AE5E700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AE5E79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = sub_25AEA1988();
  *(a5 + 8) = 0x4020000000000000;
  *(a5 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD30, &qword_25AEA5030);
  return sub_25AE5E82C(a2, a3, a4, a1, (a5 + *(v12 + 44)), a6);
}

uint64_t sub_25AE5E82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>)
{
  v58 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD38, &qword_25AEA5038);
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - v14;
  sub_25AEA1AA8();
  v61 = a1;
  v62 = a2;
  v63 = a6;
  v64 = a3;
  v65 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD40, &qword_25AEA5040);
  sub_25AE60F9C();
  v57 = v15;
  sub_25AEA1578();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25AEA3550;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v66);

  v17 = LOBYTE(v66[0]);
  v18 = MEMORY[0x277D83B88];
  v19 = MEMORY[0x277D83C10];
  *(v16 + 56) = MEMORY[0x277D83B88];
  *(v16 + 64) = v19;
  if (v17 + 1 < a3)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = a3;
  }

  *(v16 + 32) = v20;
  *(v16 + 96) = v18;
  *(v16 + 104) = v19;
  *(v16 + 72) = a3;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v21 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v22 = qword_27FA22788;
  }

  else
  {
    v22 = [objc_opt_self() mainBundle];
    v21 = 0;
  }

  v23 = v21;
  sub_25AEA0CC8();

  v24 = sub_25AEA21B8();
  v26 = v25;

  v66[0] = v24;
  v66[1] = v26;
  sub_25AE4E8AC();
  v27 = sub_25AEA1BC8();
  v29 = v28;
  LOBYTE(v26) = v30;
  sub_25AEA1B48();
  v31 = sub_25AEA1B98();
  v33 = v32;
  v35 = v34;

  sub_25AE479D0(v27, v29, v26 & 1);

  LODWORD(v66[0]) = sub_25AEA1A48();
  v53 = sub_25AEA1B88();
  v37 = v36;
  v54 = v38;
  v55 = v39;
  sub_25AE479D0(v31, v33, v35 & 1);

  v40 = sub_25AEA2038();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v66);

  LOBYTE(v31) = v66[0];
  v42 = v59;
  v41 = v60;
  v43 = *(v59 + 16);
  v44 = v56;
  v45 = v57;
  v43(v56, v57, v60);
  v46 = v58;
  v43(v58, v44, v41);
  v47 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD60, &qword_25AEA5050) + 48)];
  v48 = v53;
  *v47 = v53;
  *(v47 + 1) = v37;
  v49 = v54;
  v50 = v54 & 1;
  v47[16] = v54 & 1;
  *(v47 + 3) = v55;
  *(v47 + 4) = v40;
  v47[40] = v31;
  sub_25AE47B08(v48, v37, v49 & 1);
  v51 = *(v42 + 8);

  v51(v45, v41);
  sub_25AE479D0(v48, v37, v50);

  return (v51)(v44, v41);
}

void sub_25AE5ED30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a5;
  *(v10 + 40) = a3;

  LOBYTE(a3) = sub_25AEA1AB8();
  sub_25AEA16A8();
  sub_25AEA1508();
  *a4 = sub_25AE61054;
  *(a4 + 8) = v10;
  *(a4 + 16) = a3;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  *(a4 + 40) = v13;
  *(a4 + 48) = v14;
  *(a4 + 56) = 0;
}

uint64_t sub_25AE5EDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = sub_25AEA1988();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD68, &qword_25AEA5058);
  return sub_25AE5EE84(a2, a3, a4, a1, a5 + *(v12 + 44), a6);
}

uint64_t sub_25AE5EE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v28 = a4;
  v23 = a3;
  v24 = a1;
  v30 = a5;
  v27 = sub_25AEA1768();
  v10 = *(v27 - 8);
  v26 = *(v10 + 64);
  MEMORY[0x28223BE20](v27);
  v25 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD70, &qword_25AEA5060);
  MEMORY[0x28223BE20](v29);
  v13 = (v22 - v12);
  *v13 = sub_25AEA1908();
  v13[1] = a6;
  *(v13 + 16) = 0;
  v22[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD78, &qword_25AEA5068) + 44);
  v33 = &unk_286C3CAD8;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v22[0] = a2;
  *(v14 + 32) = a6;
  *(v14 + 40) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD80, "xp");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD88, &qword_25AEA5090);
  sub_25AE47F60(&qword_27FA1DD90, &qword_27FA1DD80, "xp", MEMORY[0x277D83980]);
  sub_25AE61078();
  sub_25AE47F60(&qword_27FA1DDA0, &qword_27FA1DD88, &qword_25AEA5090, MEMORY[0x277CE1148]);
  sub_25AEA1F48();
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v22[0];
  sub_25AEA1478(&v32);

  v31 = v32;
  v16 = v25;
  v17 = v27;
  (*(v10 + 16))(v25, v28, v27);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v20 = v23;
  *(v19 + 16) = v24;
  *(v19 + 24) = v15;
  *(v19 + 32) = a6;
  *(v19 + 40) = v20;
  (*(v10 + 32))(v19 + v18, v16, v17);
  sub_25AE47F60(&qword_27FA1DDA8, &qword_27FA1DD70, &qword_25AEA5060, MEMORY[0x277CE1138]);
  sub_25AE61200();

  sub_25AEA1D38();

  return sub_25AE61254(v13);
}

uint64_t sub_25AE5F270@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v67 = a2;
  v66 = a1;
  v79 = a5;
  v7 = a1;
  v8 = sub_25AEA20B8();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25AEA2098();
  v11 = *(v10 - 8);
  v75 = v10;
  v76 = v11;
  MEMORY[0x28223BE20](v10);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25AEA1E18();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDB8, &qword_25AEA5098);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDC0, &qword_25AEA50A0) - 8;
  MEMORY[0x28223BE20](v65);
  v64 = &v62 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDC8, &qword_25AEA50A8);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v63 = &v62 - v24;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDD0, &qword_25AEA50B0) - 8;
  MEMORY[0x28223BE20](v72);
  v69 = &v62 - v25;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDD8, &qword_25AEA50B8) - 8;
  MEMORY[0x28223BE20](v73);
  v70 = &v62 - v26;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v81);

  sub_25AEA1E08();
  (*(v14 + 104))(v16, *MEMORY[0x277CE0FE0], v13);
  v27 = sub_25AEA1E58();

  (*(v14 + 8))(v16, v13);
  *&v81[0] = v27;
  sub_25AEA1B18();
  sub_25AEA1C08();

  v28 = v66;
  v29 = sub_25AE5FA8C(v66, v67, a3);
  KeyPath = swift_getKeyPath();
  v31 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDE0, &qword_25AEA50F0) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  sub_25AEA1FE8();
  sub_25AEA1668();
  v32 = &v20[*(v18 + 44)];
  v33 = v81[1];
  *v32 = v81[0];
  *(v32 + 1) = v33;
  *(v32 + 2) = v81[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v80);

  if (v80[0] == v7)
  {
    v34 = 1.2;
  }

  else
  {
    v34 = 1.0;
  }

  sub_25AEA2078();
  v36 = v35;
  v38 = v37;
  v39 = v64;
  sub_25AE49BE4(v20, v64, &qword_27FA1DDB8, &qword_25AEA5098);
  v40 = v39 + *(v65 + 44);
  *v40 = v34;
  *(v40 + 8) = v34;
  *(v40 + 16) = v36;
  *(v40 + 24) = v38;
  v41 = v71;
  sub_25AEA2088();
  v42 = v74;
  sub_25AEA20A8();
  v43 = v63;
  v44 = &v63[*(v23 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDE8, &qword_25AEA50F8);
  sub_25AE618C0(&qword_27FA1DDF0, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
  v45 = v75;
  sub_25AEA17B8();
  (*(v77 + 8))(v42, v78);
  (*(v76 + 8))(v41, v45);
  *v44 = swift_getKeyPath();
  v46 = sub_25AE49BE4(v39, v43, &qword_27FA1DDC0, &qword_25AEA50A0);
  v47 = MEMORY[0x25F859B20](v46, 0.5, 1.0, 0.0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(v80);

  LOBYTE(v44) = v80[0];
  v48 = v69;
  sub_25AE49BE4(v43, v69, &qword_27FA1DDC8, &qword_25AEA50A8);
  v49 = v48 + *(v72 + 44);
  *v49 = v47;
  *(v49 + 8) = v44;
  LOBYTE(v44) = sub_25AEA1AE8();
  sub_25AEA1508();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v70;
  sub_25AE49BE4(v48, v70, &qword_27FA1DDD0, &qword_25AEA50B0);
  v59 = v58 + *(v73 + 44);
  *v59 = v44;
  *(v59 + 8) = v51;
  *(v59 + 16) = v53;
  *(v59 + 24) = v55;
  *(v59 + 32) = v57;
  *(v59 + 40) = 0;
  v60 = v79;
  sub_25AE49BE4(v58, v79, &qword_27FA1DDD8, &qword_25AEA50B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD88, &qword_25AEA5090);
  *(v60 + *(result + 52)) = v28;
  return result;
}

uint64_t sub_25AE5FA8C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = [objc_opt_self() systemLightGrayColor];
  v6 = sub_25AEA1D68();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478((&v14 + 6));

  v7 = BYTE6(v14);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478((&v14 + 4));

  v8 = BYTE4(v14);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478((&v14 + 2));

  v10 = BYTE3(v14) == 5 && v8 == v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v14);

  if ((BYTE1(v14) & 0xFE) != 4)
  {
    if (v7 <= a1)
    {
      if (v8 == a1)
      {
        v11 = sub_25AEA1D88();
        goto LABEL_13;
      }

      return v6;
    }

LABEL_12:
    v11 = sub_25AEA1DC8();
    goto LABEL_13;
  }

  if (v7 > a1)
  {
    goto LABEL_12;
  }

  if (!v10)
  {
    if (v8 == a1)
    {
      v11 = sub_25AEA1D98();
      goto LABEL_13;
    }

    return v6;
  }

  v11 = sub_25AEA1DD8();
LABEL_13:
  v12 = v11;

  return v12;
}

uint64_t sub_25AE5FC88(uint64_t a1, char a2)
{
  sub_25AEA2018();
  sub_25AEA16B8();
}

uint64_t sub_25AE5FCF8(uint64_t a1, char a2)
{
  sub_25AEA2078();
  sub_25AE61078();
  return sub_25AEA1758();
}

uint64_t sub_25AE5FD64@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v5;
  v7[5] = v6;
  *a1 = sub_25AE60F7C;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
}

uint64_t sub_25AE5FDEC@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_25AEA18F8();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD10, &qword_25AEA4FB8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v7);

  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = *(v1 + 1);
  *(v5 + 48) = v1[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD18, &unk_25AEA6090);
  sub_25AE47F60(&qword_27FA1DD20, &qword_27FA1DD18, &unk_25AEA6090, MEMORY[0x277D83980]);
  sub_25AE60EF0();
  return sub_25AEA1F48();
}

uint64_t sub_25AE5FF7C@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = sub_25AEA1798();
  v8 = *(v7 + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_25AEA1978();
  v11 = *(*(v10 - 8) + 104);
  v11(a1 + v8, v9, v10);
  *a1 = a2;
  a1[1] = a2;
  v12 = [objc_opt_self() systemLightMidGrayColor];
  sub_25AEA1D68();
  v13 = sub_25AEA1F98();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE28, &qword_25AEA51C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25AEA3550;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;

  sub_25AEA1D98();
  *(v16 + 48) = sub_25AEA1F98();
  *(v16 + 56) = v17;
  sub_25AEA2068();
  sub_25AEA2058();
  sub_25AEA1FA8();
  sub_25AEA16C8();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE30, &qword_25AEA51C8);
  v19 = a1 + *(v18 + 52);
  *v19 = v30;
  *(v19 + 1) = v31;
  *(v19 + 4) = v32;
  *(a1 + *(v18 + 56)) = 256;
  sub_25AEA1FE8();
  sub_25AEA1668();
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE38, &qword_25AEA51D0) + 36));
  *v20 = v33;
  v20[1] = v34;
  v20[2] = v35;
  v21 = sub_25AEA1FD8();
  v23 = v22;
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE40, &qword_25AEA51D8) + 36));
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE48, &qword_25AEA51E0) + 36));
  v11(v25 + *(v7 + 20), v9, v10);
  *v25 = a2;
  v25[1] = a2;
  sub_25AEA1FE8();
  sub_25AEA1668();
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE50, &qword_25AEA51E8) + 36));
  *v26 = v36;
  v26[1] = v37;
  v26[2] = v38;
  v27 = sub_25AEA2028();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE58, &unk_25AEA51F0);
  v29 = (v25 + *(result + 36));
  *v29 = v27;
  v29[1] = a3;
  *v24 = v21;
  v24[1] = v23;
  return result;
}

uint64_t sub_25AE602E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE60348@<X0>(_WORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_25AE603CC(__int16 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

unint64_t sub_25AE6044C()
{
  result = qword_27FA1DC80;
  if (!qword_27FA1DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DC80);
  }

  return result;
}

unint64_t sub_25AE604A0()
{
  result = qword_27FA1D900;
  if (!qword_27FA1D900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA1D900);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AE6050C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(a2);
}

uint64_t sub_25AE60588(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD00, &qword_25AEA4E48);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_25AE479E0(a1, &v10 - v7, &qword_27FA1DD00, &qword_25AEA4E48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AE479E0(v8, v6, &qword_27FA1DD00, &qword_25AEA4E48);

  sub_25AEA1488();
  return sub_25AE41938(v8, &qword_27FA1DD00, &qword_25AEA4E48);
}

uint64_t sub_25AE606B8(uint64_t a1)
{
  v2 = sub_25AEA17C8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25AEA1808();
}

BOOL sub_25AE60780(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478((&v2 + 2));

  if ((BYTE3(v2) & 0xFE) == 4)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v2);

  return BYTE1(v2) == 2;
}

unint64_t sub_25AE60868()
{
  result = qword_27FA1DC98;
  if (!qword_27FA1DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DC98);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25AE60908()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25AE60950()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25AE47200;

  return sub_25AE5E518();
}

unint64_t sub_25AE60A0C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD00, &qword_25AEA4E48);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  v4 = sub_25AEA1148();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v11);

  result = 0;
  if (BYTE1(v11) == 5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478(v3);

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_25AE41938(v3, &qword_27FA1DD00, &qword_25AEA4E48);
      return 0;
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v9 = sub_25AE67E64();
      (*(v5 + 8))(v7, v4);
      return v9;
    }
  }

  return result;
}

uint64_t sub_25AE60C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25AE60CCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_25AE60D38()
{
  result = qword_27FA1DD08;
  if (!qword_27FA1DD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DC88, &qword_25AEA4D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DC38, &qword_25AEA4CC8);
    sub_25AE47F60(&qword_27FA1DC78, &qword_27FA1DC38, &qword_25AEA4CC8, MEMORY[0x277CDDB50]);
    sub_25AE6044C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DD08);
  }

  return result;
}

uint64_t sub_25AE60E88()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

float *sub_25AE60EC0@<X0>(float *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 48);
  v4 = v3 * *result;
  if (v4 >= v3)
  {
    v4 = *(v2 + 48);
  }

  if (v4 <= *(v2 + 32))
  {
    v4 = *(v2 + 32);
  }

  *a2 = *(v2 + 40);
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

unint64_t sub_25AE60EF0()
{
  result = qword_27FA1DD28;
  if (!qword_27FA1DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DD28);
  }

  return result;
}

uint64_t sub_25AE60F44()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25AE60F9C()
{
  result = qword_27FA1DD48;
  if (!qword_27FA1DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DD40, &qword_25AEA5040);
    sub_25AE47F60(&qword_27FA1DD50, &qword_27FA1DD58, &qword_25AEA5048, MEMORY[0x277CDDB40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DD48);
  }

  return result;
}

unint64_t sub_25AE61078()
{
  result = qword_27FA1DD98;
  if (!qword_27FA1DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DD98);
  }

  return result;
}

uint64_t sub_25AE610CC()
{
  v1 = sub_25AEA1768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25AE61190(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(sub_25AEA1768() - 8);
  v5 = *a2;
  v6 = v2 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_25AE612BC(v5, v6);
}

unint64_t sub_25AE61200()
{
  result = qword_27FA1DDB0;
  if (!qword_27FA1DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DDB0);
  }

  return result;
}

uint64_t sub_25AE61254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD70, &qword_25AEA5060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AE612BC(unsigned __int8 a1, uint64_t a2)
{
  v38 = a2;
  v2 = a1;
  v3 = sub_25AEA20C8();
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25AEA20E8();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25AEA1768();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_25AEA2108();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v19 = &v32 - v18;
  v20 = &byte_286C3CAF8;
  for (i = qword_286C3CAE8; i; --i)
  {
    v22 = *v20++;
    if (v22 == v2)
    {
      if (v2 != 3)
      {
        v34 = v5;
        v23 = result;
        v36 = result;
        v32 = v8;
        v24 = v17;
        sub_25AE604A0();
        v33 = v3;
        v35 = sub_25AEA24C8();
        sub_25AEA20F8();
        sub_25AEA2118();
        v37 = *(v24 + 8);
        v37(v15, v23);
        (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v9);
        v25 = (*(v10 + 80) + 16) & ~*(v10 + 80);
        v26 = swift_allocObject();
        (*(v10 + 32))(v26 + v25, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
        *(v26 + v25 + v11) = v2;
        aBlock[4] = sub_25AE61818;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_25AE93330;
        aBlock[3] = &block_descriptor_91;
        v27 = _Block_copy(aBlock);

        v28 = v32;
        sub_25AEA20D8();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_25AE618C0(&qword_27FA1D908, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
        sub_25AE47F60(&qword_27FA1D918, &qword_27FA1D910, &qword_25AEA4DA0, MEMORY[0x277D83970]);
        v30 = v33;
        v29 = v34;
        sub_25AEA2578();
        v31 = v35;
        MEMORY[0x25F859FD0](v19, v28, v29, v27);
        _Block_release(v27);

        (*(v41 + 8))(v29, v30);
        (*(v39 + 8))(v28, v40);
        return (v37)(v19, v36);
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_25AE6178C()
{
  v1 = sub_25AEA1768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_25AE61818()
{
  v1 = *(sub_25AEA1768() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_25AE5FC88(v2, v3);
}

uint64_t sub_25AE618C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WaveformBarView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WaveformBarView(uint64_t result, int a2, int a3)
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

unint64_t sub_25AE619E8()
{
  result = qword_27FA1DE08;
  if (!qword_27FA1DE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DE10, &qword_25AEA5160);
    sub_25AE47F60(&qword_27FA1DE18, &qword_27FA1DE20, &qword_25AEA5168, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DE08);
  }

  return result;
}

unint64_t sub_25AE61AC0()
{
  result = qword_27FA1DE60;
  if (!qword_27FA1DE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DE40, &qword_25AEA51D8);
    sub_25AE61B78();
    sub_25AE47F60(&qword_27FA1DE78, &qword_27FA1DE48, &qword_25AEA51E0, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DE60);
  }

  return result;
}

unint64_t sub_25AE61B78()
{
  result = qword_27FA1DE68;
  if (!qword_27FA1DE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DE38, &qword_25AEA51D0);
    sub_25AE47F60(&qword_27FA1DE70, &qword_27FA1DE30, &qword_25AEA51C8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DE68);
  }

  return result;
}

uint64_t sub_25AE61C68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000013;
  v4 = 0x800000025AEA7AA0;
  if (v2 == 1)
  {
    v5 = 0x800000025AEA7AA0;
  }

  else
  {
    v3 = 0x7461446F69647561;
    v5 = 0xE900000000000061;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000007265;
  }

  v8 = 0xD000000000000013;
  if (*a2 != 1)
  {
    v8 = 0x7461446F69647561;
    v4 = 0xE900000000000061;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25AEA2828();
  }

  return v11 & 1;
}

uint64_t sub_25AE61D6C()
{
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

uint64_t sub_25AE61E1C(uint64_t a1)
{
  sub_25AEA21F8();
}

uint64_t sub_25AE61EB8(uint64_t a1)
{
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

unint64_t sub_25AE61F64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25AE63A8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25AE61F94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x800000025AEA7AA0;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0x7461446F69647561;
    v4 = 0xE900000000000061;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_25AE62000()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x7461446F69647561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_25AE62068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25AE63A8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25AE620A8(uint64_t a1)
{
  v2 = sub_25AE62F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE620E4(uint64_t a1)
{
  v2 = sub_25AE62F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NRCollectedEnrollment.audioSourceRawValue.getter()
{
  v1 = *(v0 + *(type metadata accessor for NRCollectedEnrollment(0) + 20));

  return v1;
}

uint64_t type metadata accessor for NRCollectedEnrollment(uint64_t a1)
{
  result = qword_27FA1DEE0;
  if (!qword_27FA1DEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NRCollectedEnrollment.audioSourceRawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NRCollectedEnrollment(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NRCollectedEnrollment.audioData.getter()
{
  v1 = v0 + *(type metadata accessor for NRCollectedEnrollment(0) + 24);
  v2 = *v1;
  sub_25AE622FC(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_25AE622FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25AE62310(a1, a2);
  }

  return a1;
}

uint64_t sub_25AE62310(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t NRCollectedEnrollment.audioData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NRCollectedEnrollment(0) + 24);
  result = sub_25AE623AC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_25AE623AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25AE42754(result, a2);
  }

  return result;
}

uint64_t sub_25AE62498(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t NRCollectedEnrollment.init(identifier:audioSourceRawValue:audioData:nameConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_25AEA0E38();
  v10 = sub_25AEA0E48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(a7, 0, 1, v10);
  v13 = type metadata accessor for NRCollectedEnrollment(0);
  v14 = (a7 + v13[5]);
  v15 = a7 + v13[6];
  *v15 = xmmword_25AEA5200;
  v16 = v13[7];
  v17 = type metadata accessor for NRNameConfiguration(0);
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  sub_25AE626EC(a7);
  (*(v11 + 32))(a7, a1, v10);
  v12(a7, 0, 1, v10);
  *v14 = a2;
  v14[1] = a3;
  sub_25AE623AC(*v15, *(v15 + 8));
  *v15 = a4;
  *(v15 + 8) = a5;
  return sub_25AE62498(a6, a7 + v16, &qword_27FA1DE80, &unk_25AEA6E80);
}

uint64_t sub_25AE626EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NRCollectedEnrollment.init(enrollment:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE80, &unk_25AEA6E80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  sub_25AEA0E38();
  v13 = sub_25AEA0E48();
  v14 = *(*(v13 - 8) + 56);
  v14(a2, 0, 1, v13);
  v15 = type metadata accessor for NRCollectedEnrollment(0);
  v16 = a2 + *(v15 + 24);
  *v16 = xmmword_25AEA5200;
  v39 = v15;
  v17 = *(v15 + 28);
  v18 = type metadata accessor for NRNameConfiguration(0);
  v19 = *(v18 - 8);
  v41 = *(v19 + 56);
  v42 = v17;
  v20 = a2 + v17;
  v21 = v18;
  v40 = v19 + 56;
  v41(v20, 1, 1, v18);
  if (a1)
  {
    v38 = v6;
    v22 = [a1 identifier];
    if (v22)
    {
      v23 = v22;
      sub_25AEA0E28();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v14(v10, v24, 1, v13);
    sub_25AE62AE0(v10, v12);
    sub_25AE62498(v12, a2, &qword_27FA1D380, &unk_25AEA3E80);
    v27 = [a1 audioData];
    if (v27)
    {
      v28 = v27;
      v25 = sub_25AEA0DE8();
      v26 = v29;
    }

    else
    {
      v25 = 0;
      v26 = 0xF000000000000000;
    }

    v6 = v38;
  }

  else
  {
    v14(v12, 1, 1, v13);
    sub_25AE62498(v12, a2, &qword_27FA1D380, &unk_25AEA3E80);
    v25 = 0;
    v26 = 0xF000000000000000;
  }

  sub_25AE623AC(*v16, *(v16 + 8));
  *v16 = v25;
  *(v16 + 8) = v26;
  if (a1 && (v30 = [a1 audioSourceRawValue]) != 0)
  {
    v31 = v30;
    v32 = sub_25AEA21A8();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = (a2 + *(v39 + 20));
  *v35 = v32;
  v35[1] = v34;
  NRNameConfiguration.init(config:)([a1 nameConfiguration], v6);

  v41(v6, 0, 1, v21);
  return sub_25AE62498(v6, a2 + v42, &qword_27FA1DE80, &unk_25AEA6E80);
}

uint64_t sub_25AE62AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NRCollectedEnrollment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE88, &qword_25AEA5210);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = v28 - v5;
  v7 = type metadata accessor for NRCollectedEnrollment(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AEA0E38();
  v11 = sub_25AEA0E48();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v28[1] = v12 + 56;
  v29 = v13;
  v13(v10, 0, 1, v11);
  v14 = &v10[v8[7]];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v10[v8[8]];
  *v15 = xmmword_25AEA5200;
  v16 = v8[9];
  v17 = type metadata accessor for NRNameConfiguration(0);
  (*(*(v17 - 8) + 56))(&v10[v16], 1, 1, v17);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE62F18();
  v31 = v6;
  v18 = v34;
  sub_25AEA28E8();
  if (!v18)
  {
    v19 = v29;
    v34 = v15;
    LOBYTE(v35) = 0;
    sub_25AE6334C(&qword_27FA1DE98, MEMORY[0x277CC9618]);
    v20 = v31;
    sub_25AEA27C8();
    v21 = v32;
    v19(v32, 0, 1, v11);
    sub_25AE62498(v21, v10, &qword_27FA1D380, &unk_25AEA3E80);
    LOBYTE(v35) = 1;
    *v14 = sub_25AEA27B8();
    v14[1] = v23;
    v37 = 2;
    sub_25AE62FC8();
    v24 = v33;
    sub_25AEA27C8();
    (*(v30 + 8))(v20, v24);
    v25 = v35;
    v26 = v36;
    v27 = v34;
    sub_25AE623AC(*v34, *(v34 + 1));
    *v27 = v25;
    *(v27 + 1) = v26;
    sub_25AE6301C(v10, v28[0]);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25AE62F6C(v10);
}

unint64_t sub_25AE62F18()
{
  result = qword_27FA1DE90;
  if (!qword_27FA1DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DE90);
  }

  return result;
}

uint64_t sub_25AE62F6C(uint64_t a1)
{
  v2 = type metadata accessor for NRCollectedEnrollment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25AE62FC8()
{
  result = qword_27FA1DEA0;
  if (!qword_27FA1DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DEA0);
  }

  return result;
}

uint64_t sub_25AE6301C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NRCollectedEnrollment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NRCollectedEnrollment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DEA8, &qword_25AEA5218);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE62F18();
  sub_25AEA28F8();
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  sub_25AE632AC();
  sub_25AEA27E8();
  if (!v2)
  {
    v9 = type metadata accessor for NRCollectedEnrollment(0);
    v15 = *(v3 + *(v9 + 20));
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D388, &qword_25AEA5220);
    sub_25AE63390();
    sub_25AEA27E8();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    *&v15 = *v10;
    *(&v15 + 1) = v11;
    v14 = 2;
    sub_25AE622FC(v15, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DEC8, &qword_25AEA5228);
    sub_25AE6340C();
    sub_25AEA27E8();
    sub_25AE623AC(v15, *(&v15 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_25AE632AC()
{
  result = qword_27FA1DEB0;
  if (!qword_27FA1DEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D380, &unk_25AEA3E80);
    sub_25AE6334C(&qword_27FA1DEB8, MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DEB0);
  }

  return result;
}

uint64_t sub_25AE6334C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25AEA0E48();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AE63390()
{
  result = qword_27FA1DEC0;
  if (!qword_27FA1DEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D388, &qword_25AEA5220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DEC0);
  }

  return result;
}

unint64_t sub_25AE6340C()
{
  result = qword_27FA1DED0;
  if (!qword_27FA1DED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DEC8, &qword_25AEA5228);
    sub_25AE63490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DED0);
  }

  return result;
}

unint64_t sub_25AE63490()
{
  result = qword_27FA1DED8;
  if (!qword_27FA1DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DED8);
  }

  return result;
}

uint64_t sub_25AE63528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE80, &unk_25AEA6E80);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_25AE63688(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE80, &unk_25AEA6E80);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_25AE637C8(uint64_t a1)
{
  sub_25AE63920(319, &qword_27FA1DEF0, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_25AE638D4(319, &qword_27FA1DEF8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_25AE638D4(319, &qword_27FA1DF00, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        sub_25AE63920(319, &qword_27FA1DF08, type metadata accessor for NRNameConfiguration);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25AE638D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25AEA2538();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25AE63920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25AEA2538();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25AE63988()
{
  result = qword_27FA1DF10;
  if (!qword_27FA1DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DF10);
  }

  return result;
}

unint64_t sub_25AE639E0()
{
  result = qword_27FA1DF18;
  if (!qword_27FA1DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DF18);
  }

  return result;
}

unint64_t sub_25AE63A38()
{
  result = qword_27FA1DF20;
  if (!qword_27FA1DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DF20);
  }

  return result;
}

unint64_t sub_25AE63A8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25AEA2798();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25AE63AD8(uint64_t a1, int a2)
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

uint64_t sub_25AE63B20(uint64_t result, int a2, int a3)
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

uint64_t sub_25AE63B88@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v3 = sub_25AEA1238();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = v30 - v6;
  v30[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v7 = swift_allocObject();
  v36 = xmmword_25AEA3540;
  *(v7 + 16) = xmmword_25AEA3540;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v37);

  v8 = v37;
  v9 = v38;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v10 = sub_25AE4172C();
  *(v7 + 64) = v10;
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v9)
  {
    v12 = v9;
  }

  *(v7 + 32) = v11;
  *(v7 + 40) = v12;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v13 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v14 = qword_27FA22788;
    v15 = qword_27FA22788;
  }

  else
  {
    v15 = [objc_opt_self() mainBundle];
    v14 = 0;
  }

  v16 = v14;
  sub_25AEA0CC8();

  v17 = sub_25AEA21B8();
  v30[1] = v18;
  v30[2] = v17;

  v19 = [objc_opt_self() currentDevice];
  [v19 userInterfaceIdiom];

  v20 = swift_allocObject();
  *(v20 + 16) = v36;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478(&v37);

  v21 = v37;
  v22 = v38;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = v10;
  if (!v22)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  v23 = v16;
  if (!v13)
  {
    v23 = [objc_opt_self() mainBundle];
  }

  v24 = v16;
  sub_25AEA0CC8();

  v30[0] = sub_25AEA21B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v25 = v32;
  v26 = swift_allocObject();
  *(v26 + 16) = v36;
  sub_25AEA1208();
  v37 = v26;
  sub_25AE643C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80, MEMORY[0x277D83970]);
  v27 = v31;
  sub_25AEA2578();
  sub_25AEA1F38();
  v28 = (*(v25 + 8))(v27, v3);
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF28, &qword_25AEA54E0);
  sub_25AE47F60(&qword_27FA1DF30, &qword_27FA1DF28, &qword_25AEA54E0, &unk_25AEA5628);
  return sub_25AEA11F8();
}

uint64_t sub_25AE641D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AEA1958();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 32) = v10 & 1;
  *(a3 + 40) = v12;
  *(a3 + 48) = 0;
  *(a3 + 56) = sub_25AE644D4;
  *(a3 + 64) = v13;
}

uint64_t sub_25AE642AC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_25AEA2388();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_25AE82E98(0, 0, v5, &unk_25AEA5520, v7);
}

unint64_t sub_25AE643C8()
{
  result = qword_27FA1D3C0;
  if (!qword_27FA1D3C0)
  {
    sub_25AEA1238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D3C0);
  }

  return result;
}

uint64_t sub_25AE64420@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = 2;
  a1[1] = sub_25AE644CC;
  a1[2] = v5;
}

uint64_t sub_25AE64494()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE644E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AE64520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE47200;

  return sub_25AE7D63C(a1, v4, v5, v6);
}

unint64_t sub_25AE6461C(uint64_t a1, unint64_t a2)
{
  __src[2] = *MEMORY[0x277D85DE8];
  if (qword_27FA1D240 != -1)
  {
    swift_once();
  }

  if (!qword_27FA22780)
  {
    goto LABEL_8;
  }

  v5 = qword_27FA22780;
  LODWORD(v6) = *([v5 streamDescription] + 6);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_29;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v8 = v10 - v11;
    if (!v12)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v7)
  {
    LODWORD(v8) = BYTE6(a2);
    if (v6)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  LODWORD(v8) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v8 = v8;
LABEL_15:
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (HIDWORD(v8))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_25AE426AC();
    swift_allocError();
    *v9 = 5;
    *(v9 + 8) = 0xD000000000000015;
    *(v9 + 16) = 0x800000025AEA8C90;
    swift_willThrow();
    return v2;
  }

  while (1)
  {
LABEL_18:
    v2 = v8 / v6;
    v13 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v5 frameCapacity:v2];
    if (!v13)
    {
      sub_25AE426AC();
      swift_allocError();
      *v17 = 5;
      *(v17 + 8) = 0xD00000000000001BLL;
      *(v17 + 16) = 0x800000025AEA8D30;
      swift_willThrow();
LABEL_42:

      return v2;
    }

    v2 = v13;
    [v13 setFrameLength_];
    v14 = [v2 audioBufferList];
    v15 = *(v14 + 3);
    v16 = v14[2];
    if (v7 <= 1)
    {
      if (!v7)
      {
        __src[0] = a1;
        LOWORD(__src[1]) = a2;
        BYTE2(__src[1]) = BYTE2(a2);
        BYTE3(__src[1]) = BYTE3(a2);
        BYTE4(__src[1]) = BYTE4(a2);
        BYTE5(__src[1]) = BYTE5(a2);
        if (v16)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      v20 = a1;
      if (a1 <= a1 >> 32)
      {
        v21 = sub_25AEA0C58();
        if (!v21)
        {
LABEL_40:
          sub_25AEA0C68();
LABEL_41:
          sub_25AE426AC();
          swift_allocError();
          *v24 = 5;
          *(v24 + 8) = 0xD000000000000026;
          *(v24 + 16) = 0x800000025AEA8D50;
          swift_willThrow();

          goto LABEL_42;
        }

        a1 = v21;
        v22 = sub_25AEA0C78();
        v6 = v20 - v22;
        if (!__OFSUB__(v20, v22))
        {
LABEL_34:
          v23 = (v6 + a1);
          sub_25AEA0C68();
          if (v23)
          {
            if (v16)
            {
              memmove(v16, v23, v15);
            }

            goto LABEL_39;
          }

          goto LABEL_41;
        }

LABEL_48:
        __break(1u);
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v7 != 2)
    {
      break;
    }

    a2 &= 0x3FFFFFFFFFFFFFFFuLL;
    v7 = *(a1 + 16);
    v18 = sub_25AEA0C58();
    if (!v18)
    {
      goto LABEL_40;
    }

    a1 = v18;
    v19 = sub_25AEA0C78();
    v6 = v7 - v19;
    if (!__OFSUB__(v7, v19))
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_29:
    LODWORD(v8) = 0;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  memset(__src, 0, 14);
  if (v16)
  {
LABEL_38:
    memcpy(v16, __src, v15);
  }

LABEL_39:

  return v2;
}

unint64_t sub_25AE649DC()
{
  v35 = *MEMORY[0x277D85DE8];
  if (qword_27FA1D240 != -1)
  {
    swift_once();
  }

  if (qword_27FA22780)
  {
    v2 = qword_27FA22780;
    v1 = &off_27992A000;
    v3 = [v0 format];
    v4 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:v3 toFormat:v2];

    if (!v4)
    {
      sub_25AE426AC();
      swift_allocError();
      *v25 = 5;
      *(v25 + 8) = 0xD00000000000001ALL;
      *(v25 + 16) = 0x800000025AEA8CB0;
      swift_willThrow();
LABEL_21:

      return v1;
    }

    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v6 = v0;
    [v2 sampleRate];
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v7 > -1.0)
    {
      if (v7 < 4294967300.0)
      {
        v8 = v7 * [v6 frameLength];
        if ((v8 & 0xFFFFFFFF00000000) == 0)
        {
          v9 = [v6 format];
          [v9 sampleRate];
          v11 = *&v10;
          v1 = v10;

          if ((v1 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v11 > -1.0)
            {
              if (v11 < 4294967300.0)
              {
                if (v11)
                {
                  v12 = v11;
                  v13 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v2 frameCapacity:v8 / v12];
                  if (!v13)
                  {
                    sub_25AE426AC();
                    swift_allocError();
                    *v26 = 5;
                    *(v26 + 8) = 0xD00000000000001ELL;
                    *(v26 + 16) = 0x800000025AEA8CD0;
                    swift_willThrow();

                    return v1;
                  }

                  v1 = v13;
                  v32 = sub_25AE6568C;
                  v33 = v5;
                  v28 = MEMORY[0x277D85DD0];
                  v29 = 1107296256;
                  v30 = sub_25AE65104;
                  v31 = &block_descriptor_6;
                  v14 = _Block_copy(&v28);

                  v28 = 0;
                  v15 = [v4 convertToBuffer:v1 error:&v28 withInputFromBlock:v14];
                  _Block_release(v14);
                  v16 = v28;
                  if (v15 != 3 && v28 == 0)
                  {

                    return v1;
                  }

                  v28 = 0;
                  v29 = 0xE000000000000000;
                  v18 = v16;
                  sub_25AEA2688();

                  v28 = 0xD00000000000001ALL;
                  v29 = 0x800000025AEA8D10;
                  v34 = v16;
                  v19 = v18;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF48, &qword_25AEA5530);
                  v20 = sub_25AEA21D8();
                  MEMORY[0x25F859D40](v20);

                  v21 = v28;
                  v22 = v29;
                  sub_25AE426AC();
                  swift_allocError();
                  *v23 = 5;
                  *(v23 + 8) = v21;
                  *(v23 + 16) = v22;
                  swift_willThrow();

                  goto LABEL_21;
                }

LABEL_32:
                __break(1u);
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  sub_25AE426AC();
  swift_allocError();
  *v24 = 5;
  *(v24 + 8) = 0xD000000000000015;
  *(v24 + 16) = 0x800000025AEA8C90;
  swift_willThrow();
  return v1;
}

id sub_25AE64EB4()
{
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  qword_27FA22780 = result;
  return result;
}

unint64_t sub_25AE64F00(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
LABEL_29:
    result = sub_25AEA25B8();
    v2 = result;
    if (!result)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_26;
    }
  }

  v3 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F85A1C0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    v4 = *(v1 + 32);
  }

  v5 = v4;
  v6 = [v4 format];

  if (!v6)
  {
LABEL_26:

    return 0;
  }

  v7 = 0;
  v8 = 0;
  while (v2 != v7)
  {
    if (v3)
    {
      v9 = MEMORY[0x25F85A1C0](v7, v1);
    }

    else
    {
      if (v7 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v9 = *(v1 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = [v9 frameLength];

    ++v7;
    v12 = __CFADD__(v8, v11);
    v8 = v8 + v11;
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPCMFormat:v6 frameCapacity:v8];
  if (!result)
  {

    goto LABEL_26;
  }

  if (v2 < 1)
  {
    goto LABEL_33;
  }

  v13 = result;
  v14 = result;
  for (i = 0; i != v2; ++i)
  {
    if (v3)
    {
      v16 = MEMORY[0x25F85A1C0](i, v1);
    }

    else
    {
      v16 = *(v1 + 8 * i + 32);
    }

    v17 = v16;
    [v14 appendDataFromBuffer_];
  }

  return v13;
}

id sub_25AE65104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

unint64_t sub_25AE65170()
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:1 channels:0 interleaved:16000.0];
  if (v2)
  {
    v3 = v2;
    v1 = &off_27992A000;
    v4 = [v0 format];
    v5 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:v4 toFormat:v3];

    if (!v5)
    {
      sub_25AE426AC();
      swift_allocError();
      *v26 = 5;
      *(v26 + 8) = 0xD00000000000001ALL;
      *(v26 + 16) = 0x800000025AEA8CB0;
      swift_willThrow();
LABEL_19:

      return v1;
    }

    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v0;
    [v3 sampleRate];
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v8 > -1.0)
    {
      if (v8 < 4294967300.0)
      {
        v9 = v8 * [v7 frameLength];
        if ((v9 & 0xFFFFFFFF00000000) == 0)
        {
          v10 = [v7 format];
          [v10 sampleRate];
          v12 = *&v11;
          v1 = v11;

          if ((v1 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v12 > -1.0)
            {
              if (v12 < 4294967300.0)
              {
                if (v12)
                {
                  v13 = v12;
                  v14 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v3 frameCapacity:v9 / v13];
                  if (!v14)
                  {
                    sub_25AE426AC();
                    swift_allocError();
                    *v27 = 5;
                    *(v27 + 8) = 0xD00000000000001ELL;
                    *(v27 + 16) = 0x800000025AEA8CD0;
                    swift_willThrow();

                    return v1;
                  }

                  v1 = v14;
                  v33 = sub_25AE656C0;
                  v34 = v6;
                  v29 = MEMORY[0x277D85DD0];
                  v30 = 1107296256;
                  v31 = sub_25AE65104;
                  v32 = &block_descriptor_5;
                  v15 = _Block_copy(&v29);

                  v29 = 0;
                  v16 = [v5 convertToBuffer:v1 error:&v29 withInputFromBlock:v15];
                  _Block_release(v15);
                  v17 = v29;
                  if (v16 != 3 && v29 == 0)
                  {

                    return v1;
                  }

                  v29 = 0;
                  v30 = 0xE000000000000000;
                  v19 = v17;
                  sub_25AEA2688();

                  v29 = 0xD00000000000001ALL;
                  v30 = 0x800000025AEA8D10;
                  v35 = v17;
                  v20 = v19;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF48, &qword_25AEA5530);
                  v21 = sub_25AEA21D8();
                  MEMORY[0x25F859D40](v21);

                  v22 = v29;
                  v23 = v30;
                  sub_25AE426AC();
                  swift_allocError();
                  *v24 = 5;
                  *(v24 + 8) = v22;
                  *(v24 + 16) = v23;
                  swift_willThrow();

                  goto LABEL_19;
                }

LABEL_30:
                __break(1u);
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_25;
  }

  sub_25AE426AC();
  swift_allocError();
  *v25 = 5;
  *(v25 + 8) = 0xD000000000000015;
  *(v25 + 16) = 0x800000025AEA8C90;
  swift_willThrow();
  return v1;
}

uint64_t sub_25AE6563C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_25AE6568C(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  *a2 = 0;
  v4 = v3;
  return v3;
}

uint64_t sub_25AE656C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v4 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v5 = qword_27FA22788;
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v4 = 0;
  }

  v6 = v4;
  sub_25AEA0CC8();

  return sub_25AEA2278();
}

void NRLogError(_:additionalMessage:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v27 = 2108704;
    v28 = 0xE300000000000000;

    MEMORY[0x25F859D40](a2, a3);

    v7 = 2108704;
    v6 = 0xE300000000000000;
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v30 = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
  if (!swift_dynamicCast())
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v22 = sub_25AEA12C8();
    __swift_project_value_buffer(v22, qword_27FA1DF50);
    v23 = a1;

    v13 = sub_25AEA12A8();
    v14 = sub_25AEA2488();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v15 = 138412546;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v25;
      *v16 = v25;
      *(v15 + 12) = 2080;
      v26 = sub_25AE65D2C(v7, v6, &v27);

      *(v15 + 14) = v26;
      v21 = "❌ [Name Recognition] - %@%s";
      goto LABEL_13;
    }

LABEL_15:

    goto LABEL_16;
  }

  v9 = v27;
  v11 = v28;
  v10 = v29;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v12 = sub_25AEA12C8();
  __swift_project_value_buffer(v12, qword_27FA1DF50);

  v13 = sub_25AEA12A8();
  v14 = sub_25AEA2488();

  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_15;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v27 = v17;
  *v15 = 138412546;
  sub_25AE426AC();
  swift_allocError();
  *v18 = v9;
  *(v18 + 8) = v11;
  *(v18 + 16) = v10;
  v19 = _swift_stdlib_bridgeErrorToNSError();
  *(v15 + 4) = v19;
  *v16 = v19;
  *(v15 + 12) = 2080;
  v20 = sub_25AE65D2C(v7, v6, &v27);

  *(v15 + 14) = v20;
  v21 = "%@%s";
LABEL_13:
  _os_log_impl(&dword_25AE3C000, v13, v14, v21, v15, 0x16u);
  sub_25AE65DF8(v16);
  MEMORY[0x25F85AB80](v16, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v17);
  MEMORY[0x25F85AB80](v17, -1, -1);
  MEMORY[0x25F85AB80](v15, -1, -1);
LABEL_16:
}

uint64_t sub_25AE65B90()
{
  v0 = sub_25AEA12C8();
  __swift_allocate_value_buffer(v0, qword_27FA1DF50);
  __swift_project_value_buffer(v0, qword_27FA1DF50);
  return sub_25AEA12B8();
}

uint64_t NRLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v2 = sub_25AEA12C8();
  v3 = __swift_project_value_buffer(v2, qword_27FA1DF50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_25AE65CBC()
{
  v0 = sub_25AEA2178();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27FA22788 = v1;
}

unint64_t sub_25AE65D2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25AE65E60(v11, 0, 0, 1, a1, a2);
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
    sub_25AE418A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_25AE65DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2F0, &unk_25AEA35F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25AE65E60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25AE65F6C(a5, a6);
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
    result = sub_25AEA26E8();
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

void *sub_25AE65F6C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25AE65FB8(a1, a2);
  sub_25AE660E8(&unk_286C3CA88);
  return v3;
}

void *sub_25AE65FB8(uint64_t a1, unint64_t a2)
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

  v6 = sub_25AE661D4(v5, 0);
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

  result = sub_25AEA26E8();
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
        v10 = sub_25AEA2248();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25AE661D4(v10, 0);
        result = sub_25AEA2668();
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

uint64_t sub_25AE660E8(uint64_t result)
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

  result = sub_25AE66248(result, v11, 1, v3);
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

void *sub_25AE661D4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF68, &qword_25AEA5540);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25AE66248(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF68, &qword_25AEA5540);
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

uint64_t sub_25AE6638C(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_25AEA0F28();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF70, &qword_25AEA55A8);
  v3[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF78, &qword_25AEA55B0);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF80, &qword_25AEA55B8);
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v7 = sub_25AEA0F88();
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v8 = sub_25AEA0F18();
  v3[30] = v8;
  v3[31] = *(v8 - 8);
  v3[32] = swift_task_alloc();
  v9 = sub_25AEA0F08();
  v3[33] = v9;
  v3[34] = *(v9 - 8);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF88, &qword_25AEA55C0);
  v3[36] = swift_task_alloc();
  v10 = sub_25AEA0FA8();
  v3[37] = v10;
  v3[38] = *(v10 - 8);
  v3[39] = swift_task_alloc();
  v11 = sub_25AEA0EB8();
  v3[40] = v11;
  v3[41] = *(v11 - 8);
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE6675C, 0, 0);
}

uint64_t sub_25AE6675C()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x277D84F90];

  sub_25AEA2478();
  v2 = MEMORY[0x25F859F80]();
  v3 = *MEMORY[0x277CE7928];
  swift_beginAccess();
  v4 = *&v2[v3];
  *(v0 + 344) = v4;
  v5 = v4;

  if (sub_25AEA2448())
  {
    sub_25AEA2438();
  }

  else
  {
    sub_25AEA0EA8();
  }

  v6 = *(v0 + 336);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 240);
  v23 = *(v0 + 184);
  v24 = *(v0 + 176);
  v25 = *(v0 + 168);
  v22 = *(v0 + 112);
  v14 = sub_25AEA0F38();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = swift_task_alloc();
  *(v15 + 16) = v22;
  *(v15 + 32) = v6;
  (*(v9 + 104))(v8, *MEMORY[0x277D70198], v10);
  (*(v12 + 104))(v11, *MEMORY[0x277D701A0], v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF90, &qword_25AEA55C8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25AEA3F30;
  sub_25AEA0F78();
  sub_25AEA0F68();
  sub_25AEA0F58();
  *(v0 + 96) = v16;
  sub_25AE675D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DFA0, &qword_25AEA55D0);
  sub_25AE67630();
  sub_25AEA2578();
  sub_25AEA0F98();

  sub_25AEA0F48();
  sub_25AEA2398();
  (*(v24 + 8))(v23, v25);
  v17 = MEMORY[0x277D701F0];
  *(v0 + 360) = *MEMORY[0x277D701D0];
  *(v0 + 364) = *v17;
  v18 = swift_task_alloc();
  *(v0 + 352) = v18;
  *v18 = v0;
  v18[1] = sub_25AE66AFC;
  v19 = *(v0 + 192);
  v20 = *(v0 + 160);

  return MEMORY[0x2822005A8](v20, 0, 0, v19, v0 + 104);
}

uint64_t sub_25AE66AFC()
{

  if (v0)
  {
    v1 = sub_25AE67298;
  }

  else
  {
    v1 = sub_25AE66C0C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25AE66C0C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 344);
    v6 = *(v0 + 304);
    v5 = *(v0 + 312);
    v7 = *(v0 + 296);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_25AE426AC();
    swift_allocError();
    *v8 = 3;
    *(v8 + 8) = 0xD00000000000003BLL;
    *(v8 + 16) = 0x800000025AEA8E00;
    swift_willThrow();

    (*(v6 + 8))(v5, v7);
LABEL_3:
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 360);
  v12 = *(v0 + 152);
  (*(v3 + 32))(v12, v1, v2);
  v13 = (*(v3 + 88))(v12, v2);
  if (v13 == v11)
  {
    v14 = *(v0 + 152);
    (*(*(v0 + 144) + 96))(v14, *(v0 + 136));
    v15 = *v14;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v17 = sub_25AE6633C(v0 + 16);
      if (*v16)
      {
        v18 = v16;
        v15 = v15;
        MEMORY[0x25F859DF0]();
        if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25AEA2318();
        }

        sub_25AEA2338();
      }

      (v17)(v0 + 16, 0);
    }

    else
    {
      sub_25AE426AC();
      v32 = swift_allocError();
      *v33 = 3;
      *(v33 + 8) = 0xD000000000000025;
      *(v33 + 16) = 0x800000025AEA8EC0;
      NRLogError(_:additionalMessage:)(v32, 0, 0);
    }

    goto LABEL_24;
  }

  if (v13 != *(v0 + 364))
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
LABEL_24:
    v34 = swift_task_alloc();
    *(v0 + 352) = v34;
    *v34 = v0;
    v34[1] = sub_25AE66AFC;
    v35 = *(v0 + 192);
    v36 = *(v0 + 160);

    return MEMORY[0x2822005A8](v36, 0, 0, v35, v0 + 104);
  }

  v19 = *(*(v0 + 128) + 16);
  if (!v19)
  {
    goto LABEL_29;
  }

  if (v19 >> 62)
  {
    if (sub_25AEA25B8())
    {
      goto LABEL_17;
    }

LABEL_29:
    v44 = *(v0 + 344);
    v46 = *(v0 + 304);
    v45 = *(v0 + 312);
    v47 = *(v0 + 296);
    v49 = *(v0 + 200);
    v48 = *(v0 + 208);
    v50 = *(v0 + 192);
    sub_25AE426AC();
    swift_allocError();
    *v51 = 3;
    *(v51 + 8) = 0xD00000000000003DLL;
    *(v51 + 16) = 0x800000025AEA8E40;
    swift_willThrow();

    (*(v49 + 8))(v48, v50);
    (*(v46 + 8))(v45, v47);
    goto LABEL_3;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

LABEL_17:
  sub_25AE67694();

  v21 = sub_25AE64F00(v20);
  v22 = *(v0 + 344);
  if (!v21)
  {
    v38 = *(v0 + 304);
    v37 = *(v0 + 312);
    v39 = *(v0 + 296);
    v41 = *(v0 + 200);
    v40 = *(v0 + 208);
    v42 = *(v0 + 192);
    sub_25AE426AC();
    swift_allocError();
    *v43 = 3;
    *(v43 + 8) = 0xD00000000000003ALL;
    *(v43 + 16) = 0x800000025AEA8E80;
    swift_willThrow();

    (*(v41 + 8))(v40, v42);
    (*(v38 + 8))(v37, v39);
    goto LABEL_3;
  }

  v24 = *(v0 + 328);
  v23 = *(v0 + 336);
  v25 = *(v0 + 312);
  v27 = *(v0 + 296);
  v26 = *(v0 + 304);
  v52 = *(v0 + 320);
  v28 = *(v0 + 200);
  v29 = *(v0 + 208);
  v30 = *(v0 + 192);
  v53 = v21;

  (*(v28 + 8))(v29, v30);
  (*(v26 + 8))(v25, v27);
  (*(v24 + 8))(v23, v52);

  v31 = *(v0 + 8);

  return v31(v53);
}

uint64_t sub_25AE67298()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25AE673E8()
{
  v3 = sub_25AEA0FF8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25AEA1008();
  sub_25AEA0E68();
  sub_25AEA0EF8();

  (*(v4 + 8))(v6, v3);
  sub_25AEA0FD8();
  __swift_destroy_boxed_opaque_existential_0(v8);
  sub_25AEA0FD8();
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_25AE6752C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25AE67590@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NameGenerator();
  result = sub_25AEA1428();
  *a2 = result;
  return result;
}

unint64_t sub_25AE675D8()
{
  result = qword_27FA1DF98;
  if (!qword_27FA1DF98)
  {
    sub_25AEA0F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DF98);
  }

  return result;
}

unint64_t sub_25AE67630()
{
  result = qword_27FA1DFA8;
  if (!qword_27FA1DFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DFA0, &qword_25AEA55D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DFA8);
  }

  return result;
}

unint64_t sub_25AE67694()
{
  result = qword_27FA1DFB0[0];
  if (!qword_27FA1DFB0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FA1DFB0);
  }

  return result;
}

uint64_t sub_25AE676E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25AE67728(uint64_t a1, int a2)
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

uint64_t sub_25AE67770(uint64_t result, int a2, int a3)
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

uint64_t sub_25AE6780C(double a1)
{
  if (a1 == 55.0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == 16.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 0.0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25AE67858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_25AE67DBC();

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25AE678D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = sub_25AE67E10();

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25AE67940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_25AE67E10();

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25AE679BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_25AE67E10();

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25AE67A38@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25AE6780C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25AE67A90@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v22 = a1;
  v23 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25AEA1738();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v22 - v17;
  a2(v16);
  sub_25AEA1AD8();
  sub_25AEA1D18();
  (*(v8 + 8))(v10, a3);
  v24 = a4;
  v25 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v19 = *(v12 + 16);
  v19(v18, v15, v11);
  v20 = *(v12 + 8);
  v20(v15, v11);
  v19(v23, v18, v11);
  return (v20)(v18, v11);
}

unint64_t sub_25AE67DBC()
{
  result = qword_27FA1E0B8;
  if (!qword_27FA1E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E0B8);
  }

  return result;
}

unint64_t sub_25AE67E10()
{
  result = qword_27FA1E0C0;
  if (!qword_27FA1E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E0C0);
  }

  return result;
}

unint64_t sub_25AE67E64()
{
  v1 = v0;
  v2 = sub_25AEA1148();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D79808])
  {
    return 0xD000000000000028;
  }

  if (v6 == *MEMORY[0x277D79810])
  {
    return 0xD000000000000026;
  }

  if (v6 == *MEMORY[0x277D797F8])
  {
    return 0xD00000000000002ELL;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_25AE6803C()
{
  v1 = sub_25AEA0D18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 collectedEnrollments];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    v13 = MEMORY[0x277D84F90];
    sub_25AEA24F8();
    sub_25AE68220();
    sub_25AEA2548();
    while (v12)
    {
      sub_25AE417EC(&v11, v9);
      type metadata accessor for CollectedEnrollment();
      if ((swift_dynamicCast() & 1) != 0 && v10)
      {
        MEMORY[0x25F859DF0]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25AEA2318();
        }

        sub_25AEA2338();
        v6 = v13;
      }

      sub_25AEA2548();
    }

    (*(v2 + 8))(v4, v1);
  }

  return v6;
}

unint64_t sub_25AE68220()
{
  result = qword_27FA1D390;
  if (!qword_27FA1D390)
  {
    sub_25AEA0D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D390);
  }

  return result;
}

id NameConfiguration.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id NameConfiguration.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for NameConfiguration();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id NameConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NameConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static NameConfiguration.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_25AEA2178();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_25AE6845C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    sub_25AEA0E28();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_25AEA0E48();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_25AE68500(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_25AE6884C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_25AEA0E48();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_25AEA0E18();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setIdentifier_];
}

void sub_25AE6862C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25AEA21A8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_25AE68690(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_25AEA2178();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_25AE68700@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NameConfiguration();
  result = sub_25AEA2698();
  *a2 = result;
  return result;
}

id sub_25AE687FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 collectedEnrollments];
  *a2 = result;
  return result;
}

uint64_t sub_25AE6884C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE688BC()
{
  sub_25AEA2688();
  if (qword_27FA1D260 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA1E0D8;
  v0 = unk_27FA1E0E0;

  result = MEMORY[0x25F859D40](0xD000000000000027, 0x800000025AEA9120);
  qword_27FA1E0C8 = v1;
  unk_27FA1E0D0 = v0;
  return result;
}

uint64_t static FileUtility.baseDirectory.getter()
{
  if (qword_27FA1D258 != -1)
  {
    swift_once();
  }

  v0 = qword_27FA1E0C8;

  return v0;
}

uint64_t static FileUtility.writeAllNamesToFiles(for:)(unint64_t a1)
{
  v11 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25AEA25B8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F85A1C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = sub_25AE68B10(v5);
      if (v1)
      {
      }

      v9 = v8;

      sub_25AE69FB4(v9);
      if (v7 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_25AE68B10(void *a1)
{
  v2 = v1;
  v4 = sub_25AEA0E48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = [a1 identifier];
  if (v14)
  {
    v15 = v14;
    sub_25AEA0E28();

    (*(v5 + 56))(v11, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4);
  }

  sub_25AE62AE0(v11, v13);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_25AE41938(v13, &qword_27FA1D380, &unk_25AEA3E80);
LABEL_6:
    v16 = 0x800000025AEA90C0;
    sub_25AE426AC();
    swift_allocError();
    *v17 = 10;
    *(v17 + 8) = 0xD00000000000002ELL;
    *(v17 + 16) = 0x800000025AEA90C0;
    swift_willThrow();
    return v16;
  }

  (*(v5 + 16))(v7, v13, v4);
  sub_25AE41938(v13, &qword_27FA1D380, &unk_25AEA3E80);
  v43 = sub_25AEA0E08();
  v20 = v19;
  (*(v5 + 8))(v7, v4);
  v21 = [a1 humanReadableName];
  if (!v21)
  {

    goto LABEL_6;
  }

  v22 = v21;
  v41 = sub_25AEA21A8();
  v44 = v23;

  v24 = sub_25AE6803C();
  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_28;
  }

  v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_29:

    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v42 = v20;
    v49 = MEMORY[0x277D84F90];
    result = sub_25AE8E0E8(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      break;
    }

    v27 = 0;
    v16 = v49;
    v39 = v25 & 0xFFFFFFFFFFFFFF8;
    v40 = v25 & 0xC000000000000001;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v40)
      {
        v29 = MEMORY[0x25F85A1C0](v27, v25);
      }

      else
      {
        if (v27 >= *(v39 + 16))
        {
          goto LABEL_27;
        }

        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = v29;
      v47 = v29;
      sub_25AE68FAC(&v47, v41, v44, v43, v42, &v46, v48);
      if (v2)
      {

        return v16;
      }

      v45 = 0;
      v31 = v26;

      v33 = v48[0];
      v32 = v48[1];
      v49 = v16;
      v35 = *(v16 + 16);
      v34 = *(v16 + 24);
      v20 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        sub_25AE8E0E8((v34 > 1), v35 + 1, 1);
        v16 = v49;
      }

      *(v16 + 16) = v20;
      v36 = v16 + 16 * v35;
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      ++v27;
      v26 = v31;
      v37 = v28 == v31;
      v2 = v45;
      if (v37)
      {

        return v16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v26 = sub_25AEA25B8();
    if (!v26)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25AE68FAC@<X0>(id *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>)
{
  v97 = a6;
  v94 = a3;
  v83 = a4;
  v84 = a5;
  v93 = a2;
  v82 = a7;
  v8 = sub_25AEA0D38();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = &v81 - v11;
  v92 = sub_25AEA0DB8();
  v12 = *(v92 - 8);
  v13 = MEMORY[0x28223BE20](v92);
  v90 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v81 - v15;
  v16 = sub_25AEA0E48();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v102 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v81 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v81 - v29;
  v31 = *a1;
  v32 = [*a1 identifier];
  v91 = v12;
  if (v32)
  {
    v33 = v32;
    sub_25AEA0E28();

    v34 = *(v17 + 56);
    v35 = v28;
    v36 = 0;
  }

  else
  {
    v34 = *(v17 + 56);
    v35 = v28;
    v36 = 1;
  }

  v96 = v34;
  v34(v35, v36, 1, v16);
  sub_25AE62AE0(v28, v30);
  v37 = *(v17 + 48);
  if (v37(v30, 1, v16))
  {
    sub_25AE41938(v30, &qword_27FA1D380, &unk_25AEA3E80);
LABEL_6:
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_25AEA2688();

    v100 = 0xD000000000000029;
    v101 = 0x800000025AEA90F0;
    v38 = [v31 identifier];
    if (v38)
    {
      v39 = v38;
      sub_25AEA0E28();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v55 = v102;
    v96(v22, v40, 1, v16);
    sub_25AE62AE0(v22, v25);
    if (v37(v25, 1, v16))
    {
      sub_25AE41938(v25, &qword_27FA1D380, &unk_25AEA3E80);
      v56 = 0;
      v57 = 0;
    }

    else
    {
      (*(v17 + 16))(v55, v25, v16);
      sub_25AE41938(v25, &qword_27FA1D380, &unk_25AEA3E80);
      v56 = sub_25AEA0E08();
      v57 = v58;
      (*(v17 + 8))(v55, v16);
    }

    v98 = v56;
    v99 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D388, &qword_25AEA5220);
    v59 = sub_25AEA21D8();
    MEMORY[0x25F859D40](v59);

    v60 = v100;
    v61 = v101;
    sub_25AE426AC();
    v53 = swift_allocError();
    *v62 = 10;
    *(v62 + 8) = v60;
    *(v62 + 16) = v61;
    result = swift_willThrow();
    goto LABEL_16;
  }

  v41 = v102;
  (*(v17 + 16))(v102, v30, v16);
  sub_25AE41938(v30, &qword_27FA1D380, &unk_25AEA3E80);
  v81 = sub_25AEA0E08();
  v43 = v42;
  (*(v17 + 8))(v41, v16);
  v44 = [v31 audioData];
  if (!v44)
  {

    goto LABEL_6;
  }

  v45 = v44;
  v46 = sub_25AEA0DE8();
  v48 = v47;

  v100 = v93;
  v101 = v94;

  MEMORY[0x25F859D40](45, 0xE100000000000000);
  MEMORY[0x25F859D40](v81, v43);

  v50 = v100;
  v49 = v101;
  v51 = v95;
  v52 = sub_25AE6461C(v46, v48);
  v53 = v51;
  if (v51)
  {

    result = sub_25AE42754(v46, v48);
LABEL_16:
    *v97 = v53;
    return result;
  }

  v95 = v52;
  v96 = v46;
  v102 = v48;
  if (qword_27FA1D268 != -1)
  {
    swift_once();
  }

  v64 = qword_27FA1E0E8;
  v63 = qword_27FA1E0F0;
  v100 = v83;
  v101 = v84;

  MEMORY[0x25F859D40](47, 0xE100000000000000);
  v65 = v100;
  v66 = v101;
  v100 = v64;
  v101 = v63;

  MEMORY[0x25F859D40](v65, v66);

  v67 = v100;
  v68 = v101;
  v94 = v100;
  v100 = v50;
  v101 = v49;
  MEMORY[0x25F859D40](1986098990, 0xE400000000000000);
  v69 = v100;
  v70 = v101;
  v100 = v67;
  v101 = v68;

  MEMORY[0x25F859D40](v69, v70);

  v71 = v91;
  v72 = v92;
  (*(v91 + 56))(v85, 1, 1, v92);
  (*(v88 + 104))(v87, *MEMORY[0x277CC91D8], v89);

  v73 = v90;
  sub_25AEA0DA8();
  v74 = v86;
  v75 = v95;
  sub_25AE6991C(v95, v73, v86);
  v94 = 0;
  v76 = *(v71 + 8);
  v76(v73, v72);

  v77 = sub_25AEA0D98();
  v79 = v78;

  sub_25AE42754(v96, v102);
  result = (v76)(v74, v72);
  v80 = v82;
  *v82 = v77;
  v80[1] = v79;
  return result;
}

void sub_25AE6991C(void *a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = [objc_opt_self() defaultManager];
  sub_25AEA0D98();
  v9 = sub_25AEA2178();

  v10 = [v8 fileExistsAtPath_];

  if (v10)
  {
    v11 = sub_25AEA0DB8();
    (*(*(v11 - 8) + 16))(a5, a4, v11);

    return;
  }

  v36 = 1;
  v12 = sub_25AEA2178();
  v13 = [v8 fileExistsAtPath:v12 isDirectory:&v36];

  v34 = v8;
  if ((v13 & 1) == 0)
  {
    v14 = sub_25AEA2178();
    v35 = 0;
    v15 = [v8 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v35];

    if (!v15)
    {
LABEL_9:
      v31 = v35;
      sub_25AEA0D08();

      swift_willThrow();
      goto LABEL_11;
    }

    v16 = v35;
  }

  v17 = [a1 format];
  v18 = [v17 settings];

  sub_25AEA2138();
  v19 = [a1 format];
  v20 = [v19 commonFormat];

  v21 = [a1 format];
  v22 = [v21 isInterleaved];

  v23 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v24 = sub_25AEA0D78();
  v25 = sub_25AEA2128();

  v35 = 0;
  v26 = [v23 initForWriting:v24 settings:v25 commonFormat:v20 interleaved:v22 error:&v35];

  v27 = v35;
  if (!v26)
  {
    goto LABEL_9;
  }

  v35 = 0;
  v28 = v27;
  if ([v26 writeFromBuffer:a1 error:&v35])
  {
    v29 = v35;

    v30 = sub_25AEA0DB8();
    (*(*(v30 - 8) + 16))(v33, a4, v30);
    return;
  }

  v32 = v35;
  sub_25AEA0D08();

  swift_willThrow();
LABEL_11:
}

void sub_25AE69D0C()
{
  v0 = AXCPSharedResourcesDirectory();
  if (v0)
  {
    v1 = v0;
    v2 = sub_25AEA21A8();
    v4 = v3;

    qword_27FA1E0D8 = v2;
    unk_27FA1E0E0 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AE69DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (qword_27FA1D258 != -1)
  {
    swift_once();
  }

  v10 = qword_27FA1E0C8;
  v11 = unk_27FA1E0D0;

  result = MEMORY[0x25F859D40](a2, a3);
  *a4 = v10;
  *a5 = v11;
  return result;
}

id sub_25AE69E58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = sub_25AEA0D78();
  v17[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_25AEA0DB8();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_25AEA0D08();

    swift_willThrow();
    v15 = sub_25AEA0DB8();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

char *sub_25AE69FB4(char *result)
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

  result = sub_25AE5BA20(result, v10, 1, v3);
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

void sub_25AE6A0A8(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = sub_25AEA0D38();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_25AEA0DB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  v31 = a1;
  v30 = a2;
  v16 = sub_25AEA2178();
  LODWORD(a2) = [v15 fileExistsAtPath_];

  if (a2)
  {
    v17 = [v14 defaultManager];
    (*(v11 + 56))(v9, 1, 1, v10);
    (*(v28 + 104))(v6, *MEMORY[0x277CC91D8], v29);
    v18 = v30;

    sub_25AEA0DA8();
    v19 = sub_25AEA0D78();
    (*(v11 + 8))(v13, v10);
    v33 = 0;
    v20 = [v17 removeItemAtURL:v19 error:&v33];

    if (v20)
    {
      v21 = v33;
    }

    else
    {
      v22 = v33;
      v23 = sub_25AEA0D08();

      swift_willThrow();
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25AEA2688();
      MEMORY[0x25F859D40](0xD000000000000017, 0x800000025AEA90A0);
      MEMORY[0x25F859D40](v31, v18);
      MEMORY[0x25F859D40](2108704, 0xE300000000000000);
      v32 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
      sub_25AEA2738();
      v24 = v33;
      v25 = v34;
      sub_25AE426AC();
      swift_allocError();
      *v26 = 10;
      *(v26 + 8) = v24;
      *(v26 + 16) = v25;
      swift_willThrow();
    }
  }
}

void sub_25AE6A498()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = sub_25AEA0DB8();
  v25 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25AEA0CF8();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v27 = 1;
  if (qword_27FA1D258 != -1)
  {
    swift_once();
  }

  v7 = sub_25AEA2178();
  v8 = [v6 fileExistsAtPath:v7 isDirectory:&v27];

  if (v8)
  {
  }

  else
  {
    v22 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E108, &qword_25AEA57D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AEA3540;
    v10 = *MEMORY[0x277CCA1B0];
    *(inited + 32) = *MEMORY[0x277CCA1B0];
    v11 = *MEMORY[0x277CCA1A0];
    *(inited + 40) = *MEMORY[0x277CCA1A0];
    v12 = v10;
    v13 = v11;
    v14 = sub_25AE70054(inited);
    swift_setDeallocating();
    sub_25AE41938(inited + 32, &qword_27FA1E110, &qword_25AEA57D8);
    sub_25AEA0CE8();
    sub_25AEA0CD8();
    sub_25AEA0D48();
    v15 = sub_25AEA0D78();
    sub_25AE6E478(v14);

    type metadata accessor for FileAttributeKey(0);
    sub_25AE6ADA4();
    v16 = sub_25AEA2128();

    v26 = 0;
    v17 = [v6 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:v16 error:&v26];

    if (v17)
    {
      v18 = v26;
      sub_25AEA0D68();
    }

    else
    {
      v19 = v26;
      sub_25AEA0D08();

      swift_willThrow();
    }

    v20 = v22;

    (*(v25 + 8))(v2, v20);
    (*(v23 + 8))(v5, v24);
  }
}

id sub_25AE6A858(id a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = sub_25AEA0DB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - v9;
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_25AEA2178();
  v13 = [v11 fileExistsAtPath_];

  if (v13)
  {
    sub_25AEA0D58();
    (*(v5 + 16))(v8, v10, v4);
    v14 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v15 = v33[1];
    v16 = sub_25AE69E58(v8, 3, 0);
    if (!v15)
    {
      v20 = v16;
      v21 = v4;
      v22 = [v16 processingFormat];
      v23 = [v20 length];
      if ((v23 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(v23))
      {
        a1 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v22 frameCapacity:v23];

        if (a1)
        {
          v34 = 0;
          if ([v20 readIntoBuffer:a1 error:&v34])
          {
            v24 = *(v5 + 8);
            v25 = v34;
            v24(v10, v21);

            return a1;
          }

          v27 = v34;
          v28 = sub_25AEA0D08();

          swift_willThrow();
          v34 = 0;
          v35 = 0xE000000000000000;
          sub_25AEA2688();
          MEMORY[0x25F859D40](0xD00000000000002ALL, 0x800000025AEA91B0);
          v33[2] = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
          sub_25AEA2738();
          v29 = v34;
          v30 = v35;
          sub_25AE426AC();
          swift_allocError();
          *v31 = 10;
          *(v31 + 8) = v29;
          *(v31 + 16) = v30;
          swift_willThrow();
        }

        else
        {
          a1 = 0x800000025AEA9170;
          sub_25AE426AC();
          swift_allocError();
          *v26 = 10;
          *(v26 + 8) = 0xD000000000000039;
          *(v26 + 16) = 0x800000025AEA9170;
          swift_willThrow();
        }

        (*(v5 + 8))(v10, v21);
        return a1;
      }

      __break(1u);
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_25AEA2688();

    v34 = 0xD00000000000001DLL;
    v35 = 0x800000025AEA9150;
    MEMORY[0x25F859D40](a1, a2);
    v17 = v34;
    v18 = v35;
    sub_25AE426AC();
    swift_allocError();
    *v19 = 10;
    *(v19 + 8) = v17;
    *(v19 + 16) = v18;
    swift_willThrow();
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for FileUtility(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FileUtility(_WORD *result, int a2, int a3)
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

unint64_t sub_25AE6ADA4()
{
  result = qword_27FA1D350;
  if (!qword_27FA1D350)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D350);
  }

  return result;
}

uint64_t static TapToRadarUtils.generateAndOpenRadar(attachmentPaths:)(uint64_t a1)
{
  v3 = sub_25AEA0DB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25AE6AF1C(0xD000000000000018, 0x800000025AEA91E0, 0xD0000000000000A6, 0x800000025AEA9200, a1, v6);
  if (!v1)
  {
    sub_25AE6C040();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_25AE6AF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v101 = a3;
  v102 = a4;
  v100 = a2;
  v99 = a1;
  v97 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v96 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v94 - v10;
  v11 = sub_25AEA0BD8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v108 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v110 = &v94 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v109 = &v94 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v111 = &v94 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v112 = &v94 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v113 = &v94 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v114 = &v94 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v115 = &v94 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v94 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v94 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v94 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v94 - v38;
  v40 = sub_25AEA0C38();
  v104 = *(v40 - 8);
  v105 = v40;
  v41 = MEMORY[0x28223BE20](v40);
  v95 = &v94 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v94 - v43;
  result = [objc_opt_self() defaultManager];
  v116 = v12;
  v117 = result;
  v46 = *(a5 + 16);
  v119 = v37;
  v120 = v44;
  v103 = v11;
  v121 = v34;
  v118 = v31;
  if (v46)
  {
    v47 = 0;
    v48 = a5 + 40;
    v107 = MEMORY[0x277D84F90];
    v98 = a5 + 40;
    do
    {
      v49 = (v48 + 16 * v47);
      v50 = v47;
      while (1)
      {
        if (v50 >= v46)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        v51 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_24;
        }

        v52 = v46;
        v53 = v39;
        v55 = *(v49 - 1);
        v54 = *v49;

        v56 = sub_25AEA2178();
        v57 = [v117 fileExistsAtPath_];

        if (v57)
        {
          break;
        }

        ++v50;
        v49 += 2;
        v46 = v52;
        v58 = v51 == v52;
        v12 = v116;
        v39 = v53;
        v37 = v119;
        v31 = v118;
        if (v58)
        {
          goto LABEL_17;
        }
      }

      v59 = v107;
      result = swift_isUniquelyReferenced_nonNull_native();
      v122 = v59;
      if ((result & 1) == 0)
      {
        result = sub_25AE8E0E8(0, *(v59 + 2) + 1, 1);
        v59 = v122;
      }

      v46 = v52;
      v47 = v50 + 1;
      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      if (v61 >= v60 >> 1)
      {
        result = sub_25AE8E0E8((v60 > 1), v61 + 1, 1);
        v47 = v51;
        v46 = v52;
        v59 = v122;
      }

      *(v59 + 2) = v61 + 1;
      v107 = v59;
      v62 = &v59[16 * v61];
      *(v62 + 4) = v55;
      *(v62 + 5) = v54;
      v12 = v116;
      v39 = v53;
      v37 = v119;
      v31 = v118;
      v48 = v98;
    }

    while (v47 != v46);
  }

  else
  {
    v107 = MEMORY[0x277D84F90];
  }

LABEL_17:
  v122 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E128, &qword_25AEA5910);
  sub_25AE6C3E4();
  v98 = sub_25AEA2158();
  v63 = v103;

  sub_25AEA0C28();
  sub_25AEA0C18();
  MEMORY[0x25F858720](7824750, 0xE300000000000000);
  v64 = v39;
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();

  sub_25AEA0BC8();
  sub_25AEA0BC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E138, &qword_25AEA5808);
  v65 = *(v12 + 72);
  v66 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v67 = swift_allocObject();
  v102 = v67;
  *(v67 + 16) = xmmword_25AEA57E0;
  v68 = v31;
  v69 = v12;
  v70 = v67 + v66;
  v71 = v37;
  v72 = *(v69 + 16);
  v107 = v64;
  v72(v70, v64, v63);
  v72(v70 + v65, v71, v63);
  v72(v70 + 2 * v65, v121, v63);
  v72(v70 + 3 * v65, v68, v63);
  v72(v70 + 4 * v65, v115, v63);
  v72(v70 + 5 * v65, v114, v63);
  v72(v70 + 6 * v65, v113, v63);
  v72(v70 + 7 * v65, v112, v63);
  v72(v70 + 8 * v65, v111, v63);
  v73 = v109;
  v74 = v120;
  v72(v70 + 9 * v65, v109, v63);
  v72(v70 + 10 * v65, v110, v63);
  v75 = v70 + 11 * v65;
  v76 = v108;
  (v72)(v75);
  sub_25AEA0BE8();
  v77 = v106;
  sub_25AEA0BF8();
  v78 = sub_25AEA0DB8();
  v102 = *(v78 - 8);
  v79 = *(v102 + 48);
  if (v79(v77, 1, v78) == 1)
  {
    v80 = v63;
    sub_25AE6C448(v77);
    sub_25AE426AC();
    v81 = swift_allocError();
    *v82 = 9;
    *(v82 + 8) = 0xD000000000000049;
    *(v82 + 16) = 0x800000025AEA93B0;
    NRLogError(_:additionalMessage:)(v81, 0, 0);

    v83 = v95;
    sub_25AEA0C28();
    sub_25AEA0C18();
    MEMORY[0x25F858720](7824750, 0xE300000000000000);
    v84 = v96;
    sub_25AEA0BF8();
    if (v79(v84, 1, v78) == 1)
    {
      sub_25AE6C448(v84);
      swift_allocError();
      *v85 = 9;
      *(v85 + 8) = 0xD00000000000002CLL;
      *(v85 + 16) = 0x800000025AEA9400;
      swift_willThrow();

      v86 = v105;
      v87 = *(v104 + 8);
      v87(v83, v105);
      v88 = *(v116 + 8);
      v88(v108, v80);
      v88(v110, v80);
      v88(v109, v80);
      v88(v111, v80);
      v88(v112, v80);
      v88(v113, v80);
      v88(v114, v80);
      v88(v115, v80);
      v88(v118, v80);
      v88(v121, v80);
      v88(v119, v80);
      v88(v107, v80);
      return (v87)(v120, v86);
    }

    v91 = v105;
    v92 = *(v104 + 8);
    v92(v83, v105);
    v93 = *(v116 + 8);
    v93(v108, v80);
    v93(v110, v80);
    v93(v109, v80);
    v93(v111, v80);
    v93(v112, v80);
    v93(v113, v80);
    v93(v114, v80);
    v93(v115, v80);
    v93(v118, v80);
    v93(v121, v80);
    v93(v119, v80);
    v93(v107, v80);
    v92(v120, v91);
    v90 = v84;
  }

  else
  {

    v89 = *(v69 + 8);
    v89(v76, v63);
    v89(v110, v63);
    v89(v73, v63);
    v89(v111, v63);
    v89(v112, v63);
    v89(v113, v63);
    v89(v114, v63);
    v89(v115, v63);
    v89(v118, v63);
    v89(v121, v63);
    v89(v119, v63);
    v89(v107, v63);
    v90 = v106;
    (*(v104 + 8))(v74, v105);
  }

  return (*(v102 + 32))(v97, v90, v78);
}

uint64_t sub_25AE6BE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = sub_25AEA0DB8();
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25AEA3550;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = sub_25AE4172C();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = a3;
  *(v12 + 80) = a4;

  v15 = sub_25AEA21C8();
  v16 = v22;
  sub_25AE6AF1C(v15, v17, 0xD0000000000000A6, 0x800000025AEA9200, v21, v11);
  if (v16)
  {
  }

  v19 = v20;

  sub_25AE6C040();
  return (*(v19 + 8))(v11, v9);
}

void sub_25AE6C040()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
  if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E118, &qword_25AEA5800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AEA3550;
    *(inited + 32) = sub_25AEA21A8();
    *(inited + 40) = v2;
    v3 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    *(inited + 80) = sub_25AEA21A8();
    *(inited + 88) = v4;
    *(inited + 120) = v3;
    *(inited + 96) = 1;
    sub_25AE70194(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1E260, &qword_25AEA5900);
    swift_arrayDestroy();
    v5 = sub_25AEA2128();

    [v0 setFrontBoardOptions_];
  }

  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    v8 = sub_25AEA0D78();
    v17 = 0;
    v9 = [v7 openURL:v8 configuration:v0 error:&v17];

    if (v9)
    {
      v10 = v17;
    }

    else
    {
      v11 = v17;
      v12 = sub_25AEA0D08();

      swift_willThrow();
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_25AEA2688();
      MEMORY[0x25F859D40](0xD000000000000028, 0x800000025AEA9300);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
      sub_25AEA2738();
      MEMORY[0x25F859D40](0x203A4C5255202D20, 0xE800000000000000);
      sub_25AEA0DB8();
      sub_25AE6C38C();
      v13 = sub_25AEA27F8();
      MEMORY[0x25F859D40](v13);

      v14 = v17;
      v15 = v18;
      sub_25AE426AC();
      swift_allocError();
      *v16 = 9;
      *(v16 + 8) = v14;
      *(v16 + 16) = v15;
      swift_willThrow();
    }
  }

  else
  {
  }
}

unint64_t sub_25AE6C38C()
{
  result = qword_27FA1E120;
  if (!qword_27FA1E120)
  {
    sub_25AEA0DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E120);
  }

  return result;
}

unint64_t sub_25AE6C3E4()
{
  result = qword_27FA1E130;
  if (!qword_27FA1E130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E128, &qword_25AEA5910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E130);
  }

  return result;
}

uint64_t sub_25AE6C448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CollectedEnrollment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CollectedEnrollment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CollectedEnrollment();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CollectedEnrollment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectedEnrollment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25AE6C61C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2822009F8](sub_25AE6C640, 0, 0);
}

uint64_t sub_25AE6C640()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D0, &qword_25AEA35C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3540;
  *(v0 + 120) = 0x68746150656C6966;
  *(v0 + 128) = 0xE800000000000000;
  v4 = MEMORY[0x277D837D0];
  sub_25AEA2608();
  *(inited + 96) = v4;
  *(inited + 72) = v2;
  *(inited + 80) = v1;

  v5 = sub_25AE6FDCC(inited);
  *(v0 + 160) = v5;
  swift_setDeallocating();
  sub_25AE41938(inited + 32, &qword_27FA1E170, &unk_25AEA35D0);
  sub_25AE6E8FC();
  *(v0 + 168) = v6;
  *(v0 + 192) = 9;
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_25AE6C7AC;

  return sub_25AE41F28((v0 + 192), v5);
}

uint64_t sub_25AE6C7AC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v4 = *(v3 + 168);

    v5 = sub_25AE70714;
  }

  else
  {
    v6 = *(v3 + 168);

    v5 = sub_25AE6C8F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25AE6C8F0()
{
  v9 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AE65D2C(0xD000000000000013, 0x800000025AEA9620, &v8);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F85AB80](v5, -1, -1);
    MEMORY[0x25F85AB80](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25AE6CA88(uint64_t a1)
{
  sub_25AE6E8FC();
  *(v1 + 136) = v2;
  *(v1 + 168) = 3;
  v3 = swift_task_alloc();
  *(v1 + 144) = v3;
  *v3 = v1;
  v3[1] = sub_25AE6CB38;

  return sub_25AE41F28((v1 + 168), 0);
}

uint64_t sub_25AE6CB38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_25AE70710;
  }

  else
  {
    v4 = sub_25AE6CC5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25AE6CC5C()
{
  v18 = v0;
  strcpy((v0 + 88), "enrolledNames");
  v1 = *(v0 + 152);
  *(v0 + 102) = -4864;
  sub_25AEA2608();
  if (!*(v1 + 16) || (v2 = sub_25AE6F6C8(v0 + 16), (v3 & 1) == 0))
  {

    sub_25AE41798(v0 + 16);
    goto LABEL_7;
  }

  sub_25AE418A4(*(*(v0 + 152) + 56) + 32 * v2, v0 + 56);
  sub_25AE41798(v0 + 16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_25AE426AC();
    swift_allocError();
    *v7 = 8;
    *(v7 + 8) = 0xD000000000000034;
    *(v7 + 16) = 0x800000025AEA9430;
    swift_willThrow();
    goto LABEL_8;
  }

  v4 = *(v0 + 160);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  sub_25AEA0B08();
  swift_allocObject();
  sub_25AEA0AF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E150, &qword_25AEA5848);
  sub_25AE6F70C();
  sub_25AEA0AE8();
  if (v4)
  {

    sub_25AE42754(v6, v5);
LABEL_8:
    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 120);
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v11 = sub_25AEA12C8();
  __swift_project_value_buffer(v11, qword_27FA1DF50);
  v12 = sub_25AEA12A8();
  v13 = sub_25AEA24A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_25AE65D2C(0x64656C6C6F726E65, 0xEF292873656D614ELL, &v17);
    _os_log_impl(&dword_25AE3C000, v12, v13, "Client received %s success callback", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x25F85AB80](v15, -1, -1);
    MEMORY[0x25F85AB80](v14, -1, -1);
  }

  sub_25AE42754(v6, v5);

  v16 = *(v0 + 8);

  return v16(v10);
}

uint64_t NameRecognitionClient.deleteName(with:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2822009F8](sub_25AE6CFF8, 0, 0);
}

uint64_t sub_25AE6CFF8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D0, &qword_25AEA35C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3540;
  *(v0 + 120) = 0x696669746E656469;
  *(v0 + 128) = 0xEA00000000007265;
  v4 = MEMORY[0x277D837D0];
  sub_25AEA2608();
  *(inited + 96) = v4;
  *(inited + 72) = v2;
  *(inited + 80) = v1;

  v5 = sub_25AE6FDCC(inited);
  *(v0 + 160) = v5;
  swift_setDeallocating();
  sub_25AE41938(inited + 32, &qword_27FA1E170, &unk_25AEA35D0);
  sub_25AE6E8FC();
  *(v0 + 168) = v6;
  *(v0 + 192) = 4;
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_25AE6D168;

  return sub_25AE41F28((v0 + 192), v5);
}

uint64_t sub_25AE6D168(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v4 = *(v3 + 168);

    v5 = sub_25AE6D424;
  }

  else
  {
    v6 = *(v3 + 168);

    v5 = sub_25AE6D2AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25AE6D2AC()
{
  v9 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AE65D2C(0xD000000000000011, 0x800000025AEA9470, &v8);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F85AB80](v5, -1, -1);
    MEMORY[0x25F85AB80](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25AE6D45C(uint64_t a1)
{
  sub_25AE6E8FC();
  *(v1 + 24) = v2;
  *(v1 + 48) = 5;
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_25AE6D50C;

  return sub_25AE41F28((v1 + 48), 0);
}

uint64_t sub_25AE6D50C(uint64_t a1)
{
  v3 = *(*v2 + 24);
  *(*v2 + 40) = v1;

  if (v1)
  {
    v4 = sub_25AE6D7C4;
  }

  else
  {

    v4 = sub_25AE6D64C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25AE6D64C()
{
  v9 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AE65D2C(0xD000000000000010, 0x800000025AEA9490, &v8);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F85AB80](v5, -1, -1);
    MEMORY[0x25F85AB80](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25AE6D7DC(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2822009F8](sub_25AE6D800, 0, 0);
}

uint64_t sub_25AE6D800()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D0, &qword_25AEA35C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3540;
  *(v0 + 120) = 0x696669746E656469;
  *(v0 + 128) = 0xEA00000000007265;
  v4 = MEMORY[0x277D837D0];
  sub_25AEA2608();
  *(inited + 96) = v4;
  *(inited + 72) = v2;
  *(inited + 80) = v1;

  v5 = sub_25AE6FDCC(inited);
  *(v0 + 160) = v5;
  swift_setDeallocating();
  sub_25AE41938(inited + 32, &qword_27FA1E170, &unk_25AEA35D0);
  sub_25AE6E8FC();
  *(v0 + 168) = v6;
  *(v0 + 192) = 10;
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_25AE6D970;

  return sub_25AE41F28((v0 + 192), v5);
}

uint64_t sub_25AE6D970(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v4 = *(v3 + 168);

    v5 = sub_25AE70714;
  }

  else
  {
    v6 = *(v3 + 168);

    v5 = sub_25AE6DAB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25AE6DAB4()
{
  v9 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AE65D2C(0xD000000000000016, 0x800000025AEA95E0, &v8);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F85AB80](v5, -1, -1);
    MEMORY[0x25F85AB80](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25AE6DC4C(uint64_t a1)
{
  sub_25AE6E8FC();
  *(v1 + 136) = v2;
  *(v1 + 168) = 8;
  v3 = swift_task_alloc();
  *(v1 + 144) = v3;
  *v3 = v1;
  v3[1] = sub_25AE6DCFC;

  return sub_25AE41F28((v1 + 168), 0);
}

uint64_t sub_25AE6DCFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_25AE6E198;
  }

  else
  {
    v4 = sub_25AE6DE20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25AE6DE20()
{
  v18 = v0;
  v0[11] = 0x68746150656C6966;
  v1 = v0[19];
  v0[12] = 0xE900000000000073;
  sub_25AEA2608();
  if (!*(v1 + 16) || (v2 = sub_25AE6F6C8((v0 + 2)), (v3 & 1) == 0))
  {

    sub_25AE41798((v0 + 2));
    goto LABEL_7;
  }

  sub_25AE418A4(*(v0[19] + 56) + 32 * v2, (v0 + 7));
  sub_25AE41798((v0 + 2));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_25AE426AC();
    swift_allocError();
    *v7 = 8;
    *(v7 + 8) = 0xD000000000000028;
    *(v7 + 16) = 0x800000025AEA95B0;
    swift_willThrow();
    goto LABEL_8;
  }

  v4 = v0[20];
  v6 = v0[13];
  v5 = v0[14];
  sub_25AEA0B08();
  swift_allocObject();
  sub_25AEA0AF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E128, &qword_25AEA5910);
  sub_25AE70694();
  sub_25AEA0AE8();
  if (v4)
  {

    sub_25AE42754(v6, v5);
LABEL_8:
    v8 = v0[1];

    return v8();
  }

  v10 = v0[15];
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v11 = sub_25AEA12C8();
  __swift_project_value_buffer(v11, qword_27FA1DF50);
  v12 = sub_25AEA12A8();
  v13 = sub_25AEA24A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_25AE65D2C(0x64754165726F7473, 0xEC00000029286F69, &v17);
    _os_log_impl(&dword_25AE3C000, v12, v13, "Client received %s success callback", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x25F85AB80](v15, -1, -1);
    MEMORY[0x25F85AB80](v14, -1, -1);
  }

  sub_25AE42754(v6, v5);

  v16 = v0[1];

  return v16(v10);
}

uint64_t sub_25AE6E1B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2E8, &qword_25AEA35E8);
    v2 = sub_25AEA2778();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    sub_25AE62310(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_25AE417EC(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_25AE417EC(v33, v34);
    result = sub_25AEA25E8();
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v7 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v7 + 8 * v21);
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*(v7 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_25AE417EC(v34, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

_OWORD *sub_25AE6E478(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E208, &qword_25AEA58C8);
    v1 = sub_25AEA2778();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    type metadata accessor for FileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_25AE417EC((v27 + 8), v25);
    sub_25AE417EC(v25, v27);
    sub_25AEA21A8();
    sub_25AEA28B8();
    sub_25AEA21F8();
    v16 = sub_25AEA28D8();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_25AE417EC(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_25AE6E804()
{
  result = [objc_allocWithZone(type metadata accessor for NameRecognitionClient()) init];
  qword_27FA1E140 = result;
  return result;
}

id static NameRecognitionClient.shared.getter()
{
  if (qword_27FA1D278 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA1E140;

  return v1;
}

void sub_25AE6E8FC()
{
  v1 = OBJC_IVAR____TtC15NameRecognition21NameRecognitionClient__client;
  v2 = *(v0 + OBJC_IVAR____TtC15NameRecognition21NameRecognitionClient__client);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = v0;
  sub_25AEA2688();

  v4 = [objc_opt_self() processInfo];
  v5 = [v4 processName];

  v6 = sub_25AEA21A8();
  v8 = v7;

  MEMORY[0x25F859D40](v6, v8);

  sub_25AEA21A8();
  v9 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v10 = sub_25AEA2178();

  v11 = sub_25AEA2178();

  v12 = [v9 initWithIdentifier:v10 serviceBundleName:v11];

  v13 = *(v3 + v1);
  *(v3 + v1) = v12;
  v14 = v12;

  if (v14)
  {
    v2 = 0;
LABEL_4:
    v15 = v2;
    return;
  }

  __break(1u);
}

id NameRecognitionClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25AE6EB80()
{
  sub_25AE6E8FC();
  *(v0 + 24) = v1;
  *(v0 + 48) = 1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_25AE6EC30;

  return sub_25AE41F28((v0 + 48), 0);
}

uint64_t sub_25AE6EC30(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_25AE70718, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t NameRecognitionClient.add(nameConfig:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25AE6EDB4, 0, 0);
}

uint64_t sub_25AE6EDB4()
{
  sub_25AEA0B38();
  swift_allocObject();
  *(v0 + 96) = sub_25AEA0B28();
  type metadata accessor for NRNameConfiguration(0);
  sub_25AE7014C(&qword_27FA1E178, type metadata accessor for NRNameConfiguration, &protocol conformance descriptor for NRNameConfiguration);
  v1 = sub_25AEA0B18();
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  v3 = v1;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E180, &qword_25AEA5870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3540;
  *(inited + 32) = 0x666E6F43656D616ELL;
  *(inited + 40) = 0xEA00000000006769;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_25AE62310(v3, v4);
  v6 = sub_25AE6FF08(inited);
  swift_setDeallocating();
  sub_25AE41938(inited + 32, &qword_27FA1E188, &qword_25AEA5878);
  sub_25AE6E8FC();
  *(v0 + 120) = v7;
  *(v0 + 152) = 6;
  v8 = sub_25AE6E1B0(v6);
  *(v0 + 128) = v8;

  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_25AE6EFF0;

  return sub_25AE41F28((v0 + 152), v8);
}

uint64_t sub_25AE6EFF0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v4 = *(v3 + 120);

    v5 = sub_25AE6F2D0;
  }

  else
  {
    v6 = *(v3 + 120);

    v5 = sub_25AE6F134;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25AE6F134()
{
  v12 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[13];
  v5 = v0[14];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_25AE65D2C(0xD000000000000010, 0x800000025AEA94D0, &v11);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F85AB80](v8, -1, -1);
    MEMORY[0x25F85AB80](v7, -1, -1);
  }

  sub_25AE42754(v6, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_25AE6F2D0()
{
  sub_25AE42754(v0[13], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25AE6F360()
{
  sub_25AE6E8FC();
  *(v0 + 24) = v1;
  *(v0 + 48) = 7;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_25AE6F410;

  return sub_25AE41F28((v0 + 48), 0);
}

uint64_t sub_25AE6F410(uint64_t a1)
{
  v3 = *(*v2 + 24);
  *(*v2 + 40) = v1;

  if (v1)
  {
    v4 = sub_25AE70718;
  }

  else
  {

    v4 = sub_25AE6F550;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25AE6F550()
{
  v9 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AE65D2C(0xD000000000000010, 0x800000025AEA94F0, &v8);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F85AB80](v5, -1, -1);
    MEMORY[0x25F85AB80](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_25AE6F6C8(uint64_t a1)
{
  v2 = sub_25AEA25E8();

  return sub_25AE6F988(a1, v2);
}

unint64_t sub_25AE6F70C()
{
  result = qword_27FA1E158;
  if (!qword_27FA1E158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E150, &qword_25AEA5848);
    sub_25AE6F790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E158);
  }

  return result;
}

unint64_t sub_25AE6F790()
{
  result = qword_27FA1E160;
  if (!qword_27FA1E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E160);
  }

  return result;
}

unint64_t sub_25AE6F7E4(uint64_t a1, uint64_t a2)
{
  sub_25AEA28B8();
  sub_25AEA21F8();
  v4 = sub_25AEA28D8();

  return sub_25AE6FA50(a1, a2, v4);
}

unint64_t sub_25AE6F85C(uint64_t a1)
{
  sub_25AEA21A8();
  sub_25AEA28B8();
  sub_25AEA21F8();
  v2 = sub_25AEA28D8();

  return sub_25AE6FB08(a1, v2);
}

unint64_t sub_25AE6F8F0(uint64_t a1)
{
  sub_25AEA0EB8();
  sub_25AE7014C(&qword_27FA1D2F8, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  v2 = sub_25AEA2148();

  return sub_25AE6FC0C(a1, v2);
}

unint64_t sub_25AE6F988(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25AE417FC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F85A110](v9, a1);
      sub_25AE41798(v9);
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

unint64_t sub_25AE6FA50(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25AEA2828())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25AE6FB08(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_25AEA21A8();
      v8 = v7;
      if (v6 == sub_25AEA21A8() && v8 == v9)
      {
        break;
      }

      v11 = sub_25AEA2828();

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

unint64_t sub_25AE6FC0C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25AEA0EB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_25AE7014C(&qword_27FA1E220, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v15 = sub_25AEA2168();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_25AE6FDCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2E8, &qword_25AEA35E8);
    v3 = sub_25AEA2778();
    v4 = a1 + 32;

    while (1)
    {
      sub_25AE479E0(v4, v13, &qword_27FA1E170, &unk_25AEA35D0);
      result = sub_25AE6F6C8(v13);
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
      result = sub_25AE417EC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_25AE6FF08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E250, &qword_25AEA58F0);
    v3 = sub_25AEA2778();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_25AE62310(v7, v8);
      result = sub_25AE6F7E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_25AE70054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1E210, &qword_25AEA58D0);
    v3 = sub_25AEA2778();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_25AE6F85C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_25AE7014C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25AE70194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E258, &qword_25AEA58F8);
    v3 = sub_25AEA2778();
    v4 = a1 + 32;

    while (1)
    {
      sub_25AE479E0(v4, &v13, &unk_27FA1E260, &qword_25AEA5900);
      v5 = v13;
      v6 = v14;
      result = sub_25AE6F7E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25AE417EC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_25AE702C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E238, &qword_25AEA58E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1E240, &qword_25AEA3600);
    v7 = sub_25AEA2778();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25AE479E0(v9, v5, &qword_27FA1E238, &qword_25AEA58E8);
      result = sub_25AE6F8F0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25AEA0EB8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_25AE704AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E228, &qword_25AEA58D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E230, &qword_25AEA58E0);
    v7 = sub_25AEA2778();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25AE479E0(v9, v5, &qword_27FA1E228, &qword_25AEA58D8);
      result = sub_25AE6F8F0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25AEA0EB8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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