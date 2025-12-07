uint64_t sub_21C986DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v21 = sub_21CB839C4();
  v20[0] = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21C98856C(*(a1 + 16));
  v23 = v5;
  sub_21C71F3FC();
  v6 = sub_21CB84054();
  v8 = v7;
  v10 = v9;
  if ((*a1 & 1) != 0 && (swift_getKeyPath(aP_67), swift_getKeyPath(aP_66), sub_21CB81DB4(), , , v22 == 1))
  {
    sub_21CB84B14();
  }

  else
  {
    sub_21CB84B34();
  }

  v11 = sub_21CB83FB4();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_21C74A72C(v6, v8, v10 & 1);

  v22 = v11;
  v23 = v13;
  v15 &= 1u;
  v24 = v15;
  v25 = v17;
  sub_21CB839B4();
  v18 = v21;
  sub_21CB84244();
  (*(v20[0] + 8))(v4, v18);
  sub_21C74A72C(v11, v13, v15);
}

uint64_t sub_21C987014@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v28[-v9];
  sub_21CB81014();
  sub_21CB81014();
  v11 = sub_21CB80FF4();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v29 = v11;
  v30 = v13;
  sub_21C71F3FC();
  v15 = sub_21CB84054();
  v17 = v16;
  v19 = v18;
  if ((*a1 & 1) != 0 && (swift_getKeyPath(aP_67), swift_getKeyPath(aP_66), sub_21CB81DB4(), , , v29 == 1))
  {
    sub_21CB84B34();
  }

  else
  {
    sub_21CB84B14();
  }

  v20 = sub_21CB83FB4();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_21C74A72C(v15, v17, v19 & 1);

  *a2 = v20;
  *(a2 + 8) = v22;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v26;
  return result;
}

uint64_t sub_21C987268@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PMEditableWebsite(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = v15 - v8;
  swift_getKeyPath(byte_21CBB67D0, v7);
  swift_getKeyPath(byte_21CBB67F8);
  sub_21CB81DB4();

  if (*(v15[0] + 16))
  {
    sub_21C988314(v15[0] + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5, type metadata accessor for PMEditableWebsite);

    sub_21C98837C(v5, v9);
    v10 = &v9[*(v2 + 20)];
    v11 = *v10;
    v12 = *(v10 + 1);
    v15[0] = 0x2F2F3A7370747468;
    v15[1] = 0xE800000000000000;
    MEMORY[0x21CF151F0](v11, v12);
    sub_21CB80BD4();

    return sub_21C7194E0(v9, type metadata accessor for PMEditableWebsite);
  }

  else
  {

    v14 = sub_21CB80BE4();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_21C987480(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_21CB80BE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C987268(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21C6EA794(v8, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  (*(v10 + 32))(v12, v8, v9);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v14 = v17;
  if (v18 == 1)
  {
  }

  else
  {

    sub_21CB85B04();
    v15 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v17, &qword_27CDF2F10, &unk_21CBB68B0);
    (*(v3 + 8))(v5, v2);
    v14 = v16;
  }

  v14(v12);

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21C987760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a3;
  v5 = type metadata accessor for PMEditableWebsite(0);
  v6 = v5 - 8;
  v27[0] = *(v5 - 8);
  v7 = *(v27[0] + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v10 + 8))(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21CBA0690;
  v14 = (a1 + *(v6 + 28));
  v16 = *v14;
  v15 = v14[1];
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_21C7C0050();
  *(v13 + 32) = v16;
  *(v13 + 40) = v15;

  v17 = sub_21CB85594();
  v19 = v18;

  sub_21C988314(a1, v8, type metadata accessor for PMEditableWebsite);
  v20 = *(a2 + 8);
  v32 = *(a2 + 24);
  v33 = v20;
  v30 = *(a2 + 40);
  v31 = *(a2 + 56);
  v21 = (*(v27[0] + 80) + 16) & ~*(v27[0] + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_21C98837C(v8, v23 + v21);
  v24 = (v23 + v22);
  v25 = *(a2 + 16);
  *v24 = *a2;
  v24[1] = v25;
  v24[2] = *(a2 + 32);
  *(v24 + 41) = *(a2 + 41);
  v29[0] = v17;
  v29[1] = v19;
  v27[4] = v29;
  v27[5] = 0x697261666173;
  v27[6] = 0xE600000000000000;
  sub_21C6EDBAC(&v33, v28, &qword_27CDF2F08, &unk_21CBB68A0);
  sub_21C6EDBAC(&v32, v28, &unk_27CDF40F0, &qword_21CBA2500);
  sub_21C6EDBAC(&v30, v28, &qword_27CDF2F10, &unk_21CBB68B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();
}

uint64_t sub_21C987B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_21CB80BE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 + *(type metadata accessor for PMEditableWebsite(0) + 20));
  v16 = *v15;
  v17 = v15[1];
  *&v22 = 0x2F2F3A7370747468;
  *(&v22 + 1) = 0xE800000000000000;
  MEMORY[0x21CF151F0](v16, v17);
  sub_21CB80BD4();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_21C6EA794(v10, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  (*(v12 + 32))(v14, v10, v11);
  v22 = *(a2 + 40);
  v23 = *(a2 + 56);
  v19 = v22;
  if (v23 == 1)
  {
  }

  else
  {

    sub_21CB85B04();
    v20 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v22, &qword_27CDF2F10, &unk_21CBB68B0);
    (*(v5 + 8))(v7, v4);
    v19 = v21;
  }

  v19(v14);

  return (*(v12 + 8))(v14, v11);
}

void sub_21C987E30(uint64_t a1)
{
  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PMEditableWebsite(0);
  sub_21CADAA84(*(a1 + *(v2 + 20)), *(a1 + *(v2 + 20) + 8), 0);
}

uint64_t sub_21C987EA8(uint64_t a1)
{
  swift_getKeyPath(aP_67);
  swift_getKeyPath(aP_66);

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBB6910);
  swift_getKeyPath(byte_21CBB6938);

  return sub_21CB81DC4();
}

unint64_t sub_21C987FA0()
{
  result = qword_27CDF2EB0;
  if (!qword_27CDF2EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2E98, &qword_21CBB67B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EB8, &qword_21CBB6818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EC0, &qword_21CBB6820);
    sub_21C6EADEC(&qword_27CDF2EC8, &qword_27CDF2EB8, &qword_21CBB6818, MEMORY[0x277CDF028]);
    sub_21C9880C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2EB0);
  }

  return result;
}

unint64_t sub_21C9880C0()
{
  result = qword_27CDF2ED0;
  if (!qword_27CDF2ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EC0, &qword_21CBB6820);
    sub_21C6EADEC(&qword_27CDF2ED8, &qword_27CDF2EE0, &qword_21CBB6828, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2ED0);
  }

  return result;
}

unint64_t sub_21C988198()
{
  result = qword_27CDF2EE8;
  if (!qword_27CDF2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EA0, &qword_21CBB67C0);
    sub_21C987FA0();
    sub_21C74419C(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2EE8);
  }

  return result;
}

unint64_t sub_21C98825C()
{
  result = qword_27CDF2F18;
  if (!qword_27CDF2F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EF0, &qword_21CBB6880);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F18);
  }

  return result;
}

uint64_t sub_21C988314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C98837C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMEditableWebsite(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21C9883E0()
{
  v1 = *(type metadata accessor for PMEditableWebsite(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21C987E30(v2);
}

uint64_t sub_21C988448()
{
  v1 = *(type metadata accessor for PMEditableWebsite(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_21C987B08(v0 + v2, v3);
}

uint64_t sub_21C9884EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EE0, &qword_21CBB6828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C98856C(uint64_t a1)
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = type metadata accessor for PMEditableWebsite(0);
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v26 - v13;
  swift_getKeyPath(byte_21CBB67D0, v12);
  swift_getKeyPath(byte_21CBB67F8);
  sub_21CB81DB4();

  v15 = *(v27 + 16);

  if (v15 >= 2)
  {
    swift_getKeyPath(byte_21CBB67D0);
    swift_getKeyPath(byte_21CBB67F8);
    sub_21CB81DB4();

    if (*(v27 + 16))
    {
      sub_21C988314(v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v14, type metadata accessor for PMEditableWebsite);

      v16 = &v14[*(v8 + 20)];
      v18 = *v16;
      v17 = *(v16 + 1);

      sub_21C7194E0(v14, type metadata accessor for PMEditableWebsite);
      sub_21CB81014();
      sub_21CB81014();
      sub_21CB80FF4();
      v19 = *(v2 + 8);
      v19(v4, v1);
      v19(v7, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21CBA15B0;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_21C7C0050();
      *(v20 + 32) = v18;
      *(v20 + 40) = v17;
      swift_getKeyPath(byte_21CBB67D0);
      swift_getKeyPath(byte_21CBB67F8);
      sub_21CB81DB4();

      v21 = *(v27 + 16);

      v22 = MEMORY[0x277D83C10];
      *(v20 + 96) = MEMORY[0x277D83B88];
      *(v20 + 104) = v22;
      *(v20 + 72) = v21 - 1;
      v23 = sub_21CB85594();

LABEL_10:

      return v23;
    }
  }

  swift_getKeyPath(byte_21CBB67D0);
  swift_getKeyPath(byte_21CBB67F8);
  sub_21CB81DB4();

  v24 = *(v27 + 16);

  if (v24 != 1)
  {
LABEL_9:
    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v7, v1);
    v23 = sub_21CB85594();
    goto LABEL_10;
  }

  swift_getKeyPath(byte_21CBB67D0);
  swift_getKeyPath(byte_21CBB67F8);
  sub_21CB81DB4();

  if (!*(v27 + 16))
  {

    goto LABEL_9;
  }

  sub_21C988314(v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v10, type metadata accessor for PMEditableWebsite);

  v23 = *&v10[*(v8 + 20)];

  sub_21C7194E0(v10, type metadata accessor for PMEditableWebsite);
  return v23;
}

unint64_t sub_21C988B00()
{
  result = qword_27CDF2F28;
  if (!qword_27CDF2F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F30, &unk_21CBB69A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EA0, &qword_21CBB67C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EE0, &qword_21CBB6828);
    sub_21C988198();
    sub_21C6EADEC(&qword_27CDF2ED8, &qword_27CDF2EE0, &qword_21CBB6828, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F28);
  }

  return result;
}

uint64_t sub_21C988C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v87 = sub_21CB81024();
  v92 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v90 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v89 = &v84 - v5;
  MEMORY[0x28223BE20](v6);
  v88 = &v84 - v7;
  MEMORY[0x28223BE20](v8);
  v86 = &v84 - v9;
  MEMORY[0x28223BE20](v10);
  v97 = &v84 - v11;
  MEMORY[0x28223BE20](v12);
  v96 = &v84 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F38, &qword_21CBB6A48);
  v94 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v93 = &v84 - v14;
  v85 = sub_21CB82FD4();
  v15 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PMWiFiDetailsView(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F40, &qword_21CBB6A50);
  v91 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v84 - v21;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F48, &qword_21CBB6A58);
  MEMORY[0x28223BE20](v102);
  v104 = &v84 - v22;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F50, &qword_21CBB6A60);
  MEMORY[0x28223BE20](v95);
  v24 = &v84 - v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F58, &qword_21CBB6A68);
  MEMORY[0x28223BE20](v103);
  v100 = &v84 - v25;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F60, &qword_21CBB6A70);
  v26 = *(v99 - 8);
  *&v27 = MEMORY[0x28223BE20](v99).n128_u64[0];
  v29 = &v84 - v28;
  swift_getKeyPath(byte_21CBB6A78, v27);
  v107 = a1;
  sub_21C989E60(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
  sub_21CB810D4();

  v30 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v31 = *(a1 + 40) == 1;
    v84 = *(a1 + 32);
    if (v31)
    {
      *v20 = swift_getKeyPath(byte_21CBB6AB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
      swift_storeEnumTagMultiPayload();
      v32 = v18[5];
      *(v20 + v32) = swift_getKeyPath(byte_21CBB6AE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
      swift_storeEnumTagMultiPayload();
      sub_21C8D7854(v30, 1);
      type metadata accessor for PMWiFiDetailsModel(0);
      sub_21C989E60(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);

      sub_21CB850A4();
      *(v20 + v18[7]) = 0;
      v33 = (v20 + v18[8]);
      *v33 = 0x6F435251776F6873;
      v33[1] = 0xEA00000000006564;
      v34 = v15;
      v35 = v85;
      (*(v15 + 104))(v17, *MEMORY[0x277CDDDC0], v85);
      v36 = sub_21C989E60(&qword_27CDF2F88, type metadata accessor for PMWiFiDetailsView, &unk_21CBBE0B4);
      v37 = v98;
      sub_21CB84684();
      (*(v34 + 8))(v17, v35);
      sub_21C989EA8(v20);
      v38 = v91;
      v39 = v101;
      (*(v91 + 16))(v24, v37, v101);
      swift_storeEnumTagMultiPayload();
      v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F78, &qword_21CBB6AA8);
      v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
      v42 = sub_21C989DFC();
      v43 = sub_21C8F0690();
      v107 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      v108 = v43;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v107 = v40;
      v108 = v41;
      v109 = v42;
      v110 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v107 = v18;
      v108 = v36;
      swift_getOpaqueTypeConformance2();
      v45 = v100;
      sub_21CB83494();
      sub_21C76D3B0(v45, v104);
      swift_storeEnumTagMultiPayload();
      sub_21C989C7C();
      v46 = sub_21C989C28();
      v107 = &type metadata for PMMultipleSelectionDetailView;
      v108 = v41;
      v109 = v46;
      v110 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_21CB83494();
      sub_21C989C08(v84, 1);
      sub_21C76D420(v45);
      return (*(v38 + 8))(v98, v39);
    }

    else
    {

      sub_21CB81014();
      sub_21CB81014();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
      v58 = sub_21CB81034();
      v59 = *(v58 - 8);
      v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v61 = swift_allocObject();
      v62 = v86;
      sub_21CB81014();
      v63 = v88;
      sub_21CB81014();
      v64 = v89;
      sub_21CB81014();
      v65 = v90;
      sub_21CB81014();
      sub_21CB80FE4();
      v66 = *(v92 + 8);
      v67 = v65;
      v68 = v87;
      v66(v67, v87);
      v66(v64, v68);
      v66(v63, v68);
      v66(v62, v68);
      swift_setDeallocating();
      (*(v59 + 8))(v61 + v60, v58);
      swift_deallocClassInstance();
      v69 = v96;
      sub_21CB81004();
      v66(v97, v68);
      v66(v69, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_21CBA0690;
      v71 = *(v84 + 16);
      sub_21C989C08(v84, 2);
      v72 = MEMORY[0x277D83C10];
      *(v70 + 56) = MEMORY[0x277D83B88];
      *(v70 + 64) = v72;
      *(v70 + 32) = v71;
      v73 = sub_21CB85594();
      v75 = v74;

      v107 = v73;
      v108 = v75;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
      v77 = sub_21C989C28();
      v78 = sub_21C8F0690();
      v111 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      v112 = v78;
      v79 = swift_getOpaqueTypeConformance2();
      v80 = v93;
      sub_21CB84894();

      v81 = v94;
      v82 = v105;
      (*(v94 + 16))(v104, v80, v105);
      swift_storeEnumTagMultiPayload();
      sub_21C989C7C();
      v107 = &type metadata for PMMultipleSelectionDetailView;
      v108 = v76;
      v109 = v77;
      v110 = v79;
      swift_getOpaqueTypeConformance2();
      sub_21CB83494();
      return (*(v81 + 8))(v80, v82);
    }
  }

  else
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v30 & 1;
    v107 = sub_21C989F04;
    v108 = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F78, &qword_21CBB6AA8);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
    v50 = sub_21C989DFC();
    v51 = sub_21C8F0690();
    v111 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v112 = v51;
    v52 = swift_getOpaqueTypeConformance2();
    sub_21CB84894();

    v53 = v18;
    v54 = v99;
    (*(v26 + 16))(v24, v29, v99);
    swift_storeEnumTagMultiPayload();
    v107 = v48;
    v108 = v49;
    v109 = v50;
    v110 = v52;
    swift_getOpaqueTypeConformance2();
    v55 = sub_21C989E60(&qword_27CDF2F88, type metadata accessor for PMWiFiDetailsView, &unk_21CBBE0B4);
    v107 = v53;
    v108 = v55;
    swift_getOpaqueTypeConformance2();
    v56 = v100;
    sub_21CB83494();
    sub_21C76D3B0(v56, v104);
    swift_storeEnumTagMultiPayload();
    sub_21C989C7C();
    v57 = sub_21C989C28();
    v107 = &type metadata for PMMultipleSelectionDetailView;
    v108 = v49;
    v109 = v57;
    v110 = v52;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    sub_21C76D420(v56);
    return (*(v26 + 8))(v29, v54);
  }
}

uint64_t sub_21C989B3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85C44();
  (*(*(v7 - 8) + 56))(v6, 4, 6, v7);
  return sub_21C9E14F8(v6, v2, a2);
}

uint64_t sub_21C989C08(uint64_t result, char a2)
{
  if (a2 == 2)
  {
  }

  if (a2 == 1)
  {
  }

  return v2;
}

unint64_t sub_21C989C28()
{
  result = qword_27CDF2F68;
  if (!qword_27CDF2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F68);
  }

  return result;
}

unint64_t sub_21C989C7C()
{
  result = qword_27CDF2F70;
  if (!qword_27CDF2F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F58, &qword_21CBB6A68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F78, &qword_21CBB6AA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
    sub_21C989DFC();
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PMWiFiDetailsView(255);
    sub_21C989E60(&qword_27CDF2F88, type metadata accessor for PMWiFiDetailsView, &unk_21CBBE0B4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F70);
  }

  return result;
}

unint64_t sub_21C989DFC()
{
  result = qword_27CDF2F80;
  if (!qword_27CDF2F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F78, &qword_21CBB6AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F80);
  }

  return result;
}

uint64_t sub_21C989E60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C989EA8(uint64_t a1)
{
  v2 = type metadata accessor for PMWiFiDetailsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C989F0C()
{
  result = qword_27CDF2F90;
  if (!qword_27CDF2F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F98, &unk_21CBB6B20);
    sub_21C989C7C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
    sub_21C989C28();
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F90);
  }

  return result;
}

uint64_t sub_21C98A020@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_21CB81024();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v40 - v6;
  v7 = sub_21CB82FD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3048, &qword_21CBB6C00);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3040, &qword_21CBB6BF8);
  v16 = *(v15 - 8);
  v43 = v15;
  v44 = v16;
  MEMORY[0x28223BE20](v15);
  v49 = &v40 - v17;
  v19 = *a1;
  v18 = a1[1];

  v20 = sub_21CB83D04();
  v21 = sub_21CB82934();
  v53 = v19;
  v54 = v18;
  v55 = v21;
  LOBYTE(v56) = v20;
  v50 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3050, &unk_21CBB6C08);
  v23 = type metadata accessor for PMPlatformRoleButton(0);
  v24 = sub_21C98AD6C();
  v25 = sub_21C98AE4C();
  sub_21CB848A4();

  (*(v8 + 104))(v10, *MEMORY[0x277CDDDC0], v7);
  v53 = v22;
  v54 = v23;
  v55 = v24;
  v56 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v40;
  sub_21CB84684();
  (*(v8 + 8))(v10, v7);
  v28 = v27;
  (*(v41 + 8))(v14, v27);
  v29 = v42;
  sub_21CB81014();
  v30 = v45;
  sub_21CB81014();
  v31 = sub_21CB80FF4();
  v33 = v32;
  v34 = *(v46 + 8);
  v35 = v30;
  v36 = v47;
  v34(v35, v47);
  v34(v29, v36);
  v53 = v31;
  v54 = v33;
  v51 = v28;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  v37 = v49;
  v38 = v43;
  sub_21CB842F4();

  return (*(v44 + 8))(v37, v38);
}

uint64_t sub_21C98A4D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMOtpauthQRCodeScannerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v14 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81EF4();
  sub_21C98AEAC(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  result = sub_21C98AF10(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *a2 = v11;
  a2[1] = v13;
  v18 = (a2 + *(v14 + 24));
  *v18 = sub_21C98AF74;
  v18[1] = v16;
  return result;
}

uint64_t sub_21C98A6BC(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_21CB823B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMOtpauthQRCodeScannerView(0);
  sub_21C7B8998(a1 + *(v13 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_21CB85B04();
    v14 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_21CB823A4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21C98A930()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3038, &qword_21CBB6BF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3040, &qword_21CBB6BF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3048, &qword_21CBB6C00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3050, &unk_21CBB6C08);
  type metadata accessor for PMPlatformRoleButton(255);
  sub_21C98AD6C();
  sub_21C98AE4C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

id sub_21C98ABE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PMOtpauthQRCodeScannerView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PMOtpauthQRCodeScannerView(uint64_t a1)
{
  result = qword_27CDF3020;
  if (!qword_27CDF3020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C98ACC4(uint64_t a1)
{
  sub_21C7226D8();
  if (v1 <= 0x3F)
  {
    sub_21C721A6C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21C98AD6C()
{
  result = qword_27CDF3058;
  if (!qword_27CDF3058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3050, &unk_21CBB6C08);
    sub_21C98ADF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3058);
  }

  return result;
}

unint64_t sub_21C98ADF8()
{
  result = qword_27CDF3060;
  if (!qword_27CDF3060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3060);
  }

  return result;
}

unint64_t sub_21C98AE4C()
{
  result = qword_27CDEC040;
  if (!qword_27CDEC040)
  {
    type metadata accessor for PMPlatformRoleButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC040);
  }

  return result;
}

uint64_t sub_21C98AEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOtpauthQRCodeScannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C98AF10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOtpauthQRCodeScannerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C98AF74()
{
  v1 = *(type metadata accessor for PMOtpauthQRCodeScannerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C98A6BC(v2);
}

id sub_21C98AFD4()
{
  v0 = [objc_allocWithZone(PMOtpauthQRCodeScannerViewController) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3088, &qword_21CBB6CE8);
  sub_21CB83C84();
  [v0 setDelegate_];

  return v0;
}

uint64_t sub_21C98B054()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3088, &qword_21CBB6CE8);
  sub_21CB83C84();
  v3 = &v5[OBJC_IVAR____TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator_completion];
  *v3 = v2;
  *(v3 + 1) = v1;
}

void *sub_21C98B0D4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for _PMOtpauthQRCodeScannerView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator_completion];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_21C98B14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C98B2B4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21C98B1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C98B2B4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21C98B214(uint64_t a1)
{
  sub_21C98B2B4();
  sub_21CB83B44();
  __break(1u);
}

unint64_t sub_21C98B24C()
{
  result = qword_27CDF3070;
  if (!qword_27CDF3070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3078, &qword_21CBB6C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3070);
  }

  return result;
}

unint64_t sub_21C98B2B4()
{
  result = qword_27CDF3080;
  if (!qword_27CDF3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3080);
  }

  return result;
}

uint64_t sub_21C98B308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21C6EDBAC(a3, v25 - v10, &qword_27CDF1D50, &qword_21CBA0C00);
  v12 = sub_21CB858E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21C6EA794(v11, &qword_27CDF1D50, &qword_21CBA0C00);
  }

  else
  {
    sub_21CB858D4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21CB85874();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21CB85644() + 32;
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

      sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);

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

  sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);
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

uint64_t sub_21C98B608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21C6EDBAC(a3, v25 - v10, &qword_27CDF1D50, &qword_21CBA0C00);
  v12 = sub_21CB858E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21C6EA794(v11, &qword_27CDF1D50, &qword_21CBA0C00);
  }

  else
  {
    sub_21CB858D4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21CB85874();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21CB85644() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3090, &qword_21CBB6D60);
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

      sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);

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

  sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3090, &qword_21CBB6D60);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t PMExtensionCoordinator.__allocating_init(appState:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

void sub_21C98B950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  if (![objc_opt_self() isPasswordsAppInstalled] || (v12 = objc_msgSend(objc_allocWithZone(PMOTPAuthHandlerMigration), sel_init), v13 = sub_21CB80B74(), v14 = objc_msgSend(v12, sel_migrateDefaultOTPAuthHandlerWithURL_, v13), v12, v13, (v14 & 1) == 0))
  {
    v15 = *(v3 + 16);
    v16 = sub_21CB80BE4();
    (*(*(v16 - 8) + 16))(v11, a1, v16);
    v17 = type metadata accessor for PMInboundOTPAuthURLContext(0);
    sub_21C6EDBAC(a2, &v11[*(v17 + 20)], &qword_27CDEC300, &qword_21CBA3ED0);
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_21C6EDBAC(v11, v8, &qword_27CDF30D0, &qword_21CBBDC70);
    v18 = v15;
    sub_21CB81DC4();
    sub_21C6EA794(v11, &qword_27CDF30D0, &qword_21CBBDC70);
  }
}

void sub_21C98BB78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v68 - v4;
  v6 = sub_21CB85C44();
  v72 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  v12 = objc_opt_self();
  v13 = sub_21CB80B74();
  v14 = [v12 valueForPasswordManagerURL:v13 key:*MEMORY[0x277D49C90]];

  if (v14)
  {
    v15 = sub_21CB855C4();
    v17 = v16;

    v18 = *(v73 + 16);
    swift_getKeyPath(byte_21CBB6E00);
    v74 = MEMORY[0x277D84F90];
    v18;
    sub_21CB81DC4();
    sub_21CACB1D0();
    swift_getKeyPath(byte_21CBB6FE0);
    v74 = v15;
    v75 = v17;

    sub_21CB81DC4();
    sub_21C8185F8();
    v74 = MEMORY[0x277D84FA0];
    sub_21CB81DC4();

    v19 = sub_21C819730();
    v21 = v20;

    swift_getKeyPath(byte_21CBB6E20);
    swift_getKeyPath(byte_21CBB6E48);
    v74 = v19;
    v75 = v21;

LABEL_3:
    sub_21CB81DC4();
    return;
  }

  v71 = v6;
  v22 = sub_21CB80B74();
  v23 = [v12 valueForPasswordManagerURL:v22 key:*MEMORY[0x277D49C78]];

  v24 = &selRef_symbolForTypeIdentifier_error_;
  v25 = v2;
  if (v23)
  {
    sub_21CB855C4();

    v24 = &selRef_symbolForTypeIdentifier_error_;
    v26 = sub_21CB80C24();
    v28 = v27;
    swift_bridgeObjectRelease_n();
    if (v28 >> 60 != 15)
    {
      v29 = sub_21CB80B74();
      v30 = [v12 valueForPasswordManagerURL:v29 key:*MEMORY[0x277D49C80]];

      if (v30 && (v70 = sub_21CB855C4(), v30, , v70 = sub_21CB80C24(), v32 = v31, swift_bridgeObjectRelease_n(), v32 >> 60 != 15))
      {
        v69 = v26;
        v52 = sub_21CB80C64();
        v68 = v52;
        v53 = sub_21CB80C64();
        v54 = [objc_opt_self() sharablePasswordFromEncryptedData:v52 encryptionKeyReference:v53];

        sub_21C7902FC(v70, v32);
        v55 = v28;
        v56 = v54;
        sub_21C7902FC(v69, v55);
        v24 = &selRef_symbolForTypeIdentifier_error_;
        if (v54)
        {
          v49 = *(v73 + 16);
          swift_getKeyPath(byte_21CBB6F98);
          swift_getKeyPath(byte_21CBB6FC0);
          v74 = v56;
          goto LABEL_23;
        }
      }

      else
      {
        sub_21C7902FC(v26, v28);
        v24 = &selRef_symbolForTypeIdentifier_error_;
      }
    }
  }

  v33 = sub_21CB80B74();
  v34 = [v12 v24[11]];

  if (v34)
  {
    sub_21CB855C4();

    sub_21CB85B54();
    v35 = v71;
    v36 = v72;
    (*(v72 + 32))(v11, v8, v71);
    v37 = *(v73 + 16);
    (*(v36 + 16))(v5, v11, v35);
    (*(v36 + 56))(v5, 0, 1, v35);
    swift_getKeyPath(byte_21CBB6F50);
    swift_getKeyPath(byte_21CBB6F78);
    sub_21C6EDBAC(v5, v25, &unk_27CDF20B0, &unk_21CBA0090);
    v38 = v37;
    sub_21CB81DC4();
    sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v36 + 8))(v11, v35);
    return;
  }

  v39 = sub_21CB80B74();
  v40 = [v12 dictionaryWithPasswordManagerURL_];

  if (v40)
  {
    v41 = sub_21CB85474();
  }

  else
  {
    v41 = sub_21CB126C0(MEMORY[0x277D84F90]);
  }

  v43 = v72;
  v42 = v73;
  v44 = v71;
  if (!*(v41 + 16))
  {

    v49 = *(v42 + 16);
    swift_getKeyPath(byte_21CBB6E00);
    v74 = MEMORY[0x277D84F90];
LABEL_23:
    v57 = v49;
    goto LABEL_3;
  }

  v45 = sub_21CB85464();
  v46 = [v12 isPasswordManagerSecurityRecommendationsResourceDictionary_];

  if (v46 || (v50 = sub_21CB85464(), v51 = [v12 isPasswordManagerPasswordOptionsResourceDictionary_], v50, v51))
  {

    v47 = *(v73 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    type metadata accessor for PMSystemSettingsNavigationDestination(0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_21CBA0690;
LABEL_26:
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath(byte_21CBB6E00);
    v74 = v48;
    v62 = v47;
    goto LABEL_3;
  }

  v58 = sub_21CB85464();

  v59 = [v12 isPasswordManagerRecentlyDeletedResourceDictionary_];

  if (v59)
  {
    v47 = *(v73 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    v60 = *(type metadata accessor for PMSystemSettingsNavigationDestination(0) - 8);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_21CBA0690;
    (*(v43 + 56))(v48 + v61, 1, 2, v44);
    goto LABEL_26;
  }

  v63 = sub_21CB80B74();
  v64 = [v12 v24 + 938];

  if (v64)
  {
    v65 = sub_21CB855C4();
    v67 = v66;

    sub_21C98C64C(v65, v67);
  }
}

uint64_t sub_21C98C64C(uint64_t a1, unint64_t a2)
{
  result = sub_21C98F208(a1, a2);
  if (v4)
  {
    v5 = *(v2 + 16);
    swift_getKeyPath(byte_21CBB6E00);
    v6 = MEMORY[0x277D84F90];
    v5;
    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBB6E20, v6);
    swift_getKeyPath(byte_21CBB6E48);

    return sub_21CB81DC4();
  }

  return result;
}

uint64_t sub_21C98C72C(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30C0, &qword_21CBB6EE8);
  if (swift_dynamicCast())
  {
    sub_21C6EA568(__src, &v43);
    __swift_project_boxed_opaque_existential_0(&v43, v44);
    sub_21CB80954();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_21C6EA794(__src, &qword_27CDF30C8, &unk_21CBB6EF0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_21CB86114();
  }

  sub_21C98E564(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_21C98F068(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_21C98E62C(sub_21C98F614, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_21CB80C44();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_21C965178(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_21CB85724();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_21CB85754();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_21CB86114();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_21C965178(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_21CB85734();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_21CB80C54();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_21CB80C54();
    sub_21C7902FC(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_21C7902FC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_21C7A35D0(*&__src[0], *(&__src[0] + 1));

  sub_21C7A34C0(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_21C98CC4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB85CA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7C61D0(v6);
  v7 = MEMORY[0x21CF15760](v6, a2);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t PMExtensionCoordinator.settingsHost.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall PMExtensionCoordinator.revealElement(forKey:)(Swift::String forKey)
{
  v2 = v1;
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v8 = sub_21CB81C84();
  __swift_project_value_buffer(v8, qword_27CE186E0);

  v9 = sub_21CB81C64();
  v10 = sub_21CB85AD4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136642819;
    *(v11 + 4) = sub_21C98E004(countAndFlagsBits, object, &v20);
    _os_log_impl(&dword_21C6E5000, v9, v10, "Reveal element: %{sensitive}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x21CF16D90](v12, -1, -1);
    MEMORY[0x21CF16D90](v11, -1, -1);
  }

  v13 = sub_21CB858E4();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = *(v2 + 16);
  sub_21CB858B4();

  v15 = v14;

  v16 = sub_21CB858A4();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = countAndFlagsBits;
  v17[5] = object;
  v17[6] = v15;
  v17[7] = v2;
  sub_21C98B308(0, 0, v7, &unk_21CBB6D00, v17);
}

uint64_t sub_21C98D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v8 = sub_21CB80BE4();
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3098, &qword_21CBB6D90);
  v7[25] = v9;
  v7[26] = *(v9 - 8);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30A0, &qword_21CBB6D98);
  v7[29] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30A8, &qword_21CBB6DA0);
  v7[30] = v10;
  v7[31] = *(v10 - 8);
  v7[32] = swift_task_alloc();
  sub_21CB858B4();
  v7[33] = sub_21CB858A4();
  v12 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C98D3F8, v12, v11);
}

uint64_t sub_21C98D3F8()
{
  v66 = v0;
  v1 = v0[14];
  v2 = v0[15];

  v3 = v1 == 0x7974697275636553 && v2 == 0xE800000000000000;
  if (v3 || (sub_21CB86344() & 1) != 0)
  {
    v4 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    type metadata accessor for PMSystemSettingsNavigationDestination(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21CBA0690;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath(byte_21CBB6E00);
    v0[13] = v5;
    v6 = v4;
LABEL_7:
    sub_21CB81DC4();
    goto LABEL_8;
  }

  if (v0[14] == 0x736E6F6974704FLL && v0[15] == 0xE700000000000000 || (sub_21CB86344() & 1) != 0)
  {
    v9 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    type metadata accessor for PMSystemSettingsNavigationDestination(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21CBA0690;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath(byte_21CBB6E00);
    v0[12] = v10;
    v11 = v9;
    goto LABEL_7;
  }

  if (v0[14] == 0x64726F7773736150 && v0[15] == 0xE900000000000073 || (sub_21CB86344() & 1) != 0)
  {
    v12 = v0[16];
    swift_getKeyPath(byte_21CBB6E00);
    v0[11] = MEMORY[0x277D84F90];
    v13 = v12;
    goto LABEL_7;
  }

  if (v0[14] == 0x796C746E65636552 && v0[15] == 0xEF646574656C6544 || (sub_21CB86344() & 1) != 0)
  {
    v14 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    v15 = *(type metadata accessor for PMSystemSettingsNavigationDestination(0) - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21CBA0690;
    v18 = sub_21CB85C44();
    (*(*(v18 - 8) + 56))(v17 + v16, 1, 2, v18);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath(byte_21CBB6E00);
    v0[10] = v17;
    v19 = v14;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30B0, &qword_21CBB6DA8);
  sub_21CB81144();
  sub_21C98EF4C();
  sub_21CB81134();
  sub_21CB857B4();
  sub_21CB81154();
  v20 = v0[27];
  v21 = v0[28];
  v22 = v0[25];
  v23 = v0[26];

  v24 = *(v23 + 8);
  v24(v20, v22);
  v24(v21, v22);
  v25 = v0[30];
  v26 = v0[31];
  v27 = v0[29];
  if ((*(v26 + 48))(v27, 1, v25) == 1)
  {
    sub_21C6EA794(v27, &qword_27CDF30A0, &qword_21CBB6D98);
  }

  else
  {
    (*(v26 + 32))(v0[32], v27, v25);
    sub_21CB81164();

    v28 = MEMORY[0x21CF15150](v0[2], v0[3], v0[4], v0[5]);
    v30 = v29;

    v0[8] = v28;
    v0[9] = v30;
    sub_21C71F3FC();
    v31 = sub_21CB85EB4();
    v34 = v0[31];
    v33 = v0[32];
    v35 = v0[30];
    if (v32)
    {
      v36 = v31;
      v37 = v32;

      sub_21C98C64C(v36, v37);

      (*(v34 + 8))(v33, v35);
      goto LABEL_8;
    }

    (*(v34 + 8))(v0[32], v0[30]);
  }

  v38 = v0[21];
  v39 = v0[22];
  v40 = v0[20];
  sub_21CB80BD4();
  v41 = *(v39 + 48);
  if (v41(v40, 1, v38) == 1)
  {
    sub_21C6EA794(v0[20], &qword_27CDEC300, &qword_21CBA3ED0);
  }

  else
  {
    v42 = (*(v0[22] + 32))(v0[24], v0[20], v0[21]);
    v43 = sub_21CB5EA14(v42);
    v44 = v0[24];
    v45 = v0[21];
    v46 = v0[22];
    if (v43)
    {
      v47 = v0[19];
      (*(v46 + 56))(v47, 1, 1, v0[21]);
      sub_21C98B950(v44, v47);
      sub_21C6EA794(v47, &qword_27CDEC300, &qword_21CBA3ED0);
      (*(v46 + 8))(v44, v45);
      goto LABEL_8;
    }

    (*(v46 + 8))(v0[24], v0[21]);
  }

  v48 = v0[15];
  v0[6] = v0[14];
  v0[7] = v48;
  sub_21C71F3FC();
  sub_21CB85EB4();
  if (v49)
  {
    v50 = v0[21];
    v51 = v0[18];
    sub_21CB80BD4();

    if (v41(v51, 1, v50) == 1)
    {
      sub_21C6EA794(v0[18], &qword_27CDEC300, &qword_21CBA3ED0);
    }

    else
    {
      (*(v0[22] + 32))(v0[23], v0[18], v0[21]);
      v52 = objc_opt_self();
      v53 = sub_21CB80B74();
      v54 = [v52 urlIsPasswordManagerURL_];

      v55 = v0[22];
      v56 = v0[21];
      if (v54)
      {
        v57 = v0[23];
        sub_21C98BB78();
        (*(v55 + 8))(v57, v56);
        goto LABEL_8;
      }

      (*(v55 + 8))(v0[23], v0[21]);
    }
  }

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v58 = sub_21CB81C84();
  __swift_project_value_buffer(v58, qword_27CE186E0);

  v59 = sub_21CB81C64();
  v60 = sub_21CB85AF4();

  if (os_log_type_enabled(v59, v60))
  {
    v62 = v0[14];
    v61 = v0[15];
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_21C98E004(v62, v61, &v65);
    _os_log_impl(&dword_21C6E5000, v59, v60, "Unrecognized resource key: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x21CF16D90](v64, -1, -1);
    MEMORY[0x21CF16D90](v63, -1, -1);
  }

LABEL_8:

  v7 = v0[1];

  return v7();
}

uint64_t PMExtensionCoordinator.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21C98DF30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21C702EFC;

  return sub_21C98D190(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_21C98E004(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21C98E0D0(v11, 0, 0, 1, a1, a2);
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
    sub_21C7A3394(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21C98E0D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21C98E1DC(a5, a6);
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
    result = sub_21CB86114();
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

void *sub_21C98E1DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_21C98E228(a1, a2);
  sub_21C98E358(&unk_282E48B10);
  return v3;
}

void *sub_21C98E228(uint64_t a1, unint64_t a2)
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

  v6 = sub_21C964780(v5, 0);
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

  result = sub_21CB86114();
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
        v10 = sub_21CB85724();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21C964780(v10, 0);
        result = sub_21CB86084();
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

uint64_t sub_21C98E358(uint64_t result)
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

  result = sub_21C98E444(result, v11, 1, v3);
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

char *sub_21C98E444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF28E8, &unk_21CBB6D70);
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

uint64_t *sub_21C98E564@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_21C98EFB0(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_21CB80904();
      swift_allocObject();
      v8 = sub_21CB808B4();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_21CB80C34();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_21C98E62C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_21C7A34C0(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_21C7A34C0(v7, v6);
    *v4 = xmmword_21CBA6120;
    sub_21C7A34C0(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_21CB808C4() && __OFSUB__(v7, sub_21CB808F4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_21CB80904();
      swift_allocObject();
      v14 = sub_21CB808A4();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_21C98EAD0(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_21C7A34C0(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_21CBA6120;
    sub_21C7A34C0(0, 0xC000000000000000);
    sub_21CB80BF4();
    result = sub_21C98EAD0(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_21C98E9D0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_21C98EFB0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_21C98F108(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_21C98F184(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_21C98EA64(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_21C98EAD0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_21CB808C4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_21CB808F4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_21CB808E4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_21C98EB84@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_21CB860A4();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21C98EBD4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21C98ECC8;

  return v5(v2 + 32);
}

uint64_t sub_21C98ECC8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_21C98EDDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C702EFC;

  return sub_21C98EBD4(a1, v4);
}

uint64_t sub_21C98EE94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C6F35D0;

  return sub_21C6EE100(a1, v4);
}

unint64_t sub_21C98EF4C()
{
  result = qword_27CDF30B8;
  if (!qword_27CDF30B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3098, &qword_21CBB6D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF30B8);
  }

  return result;
}

uint64_t sub_21C98EFB0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_21C98F068(uint64_t result)
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
      sub_21CB80904();
      swift_allocObject();
      sub_21CB808D4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_21CB80C34();
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

uint64_t sub_21C98F108(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_21CB80904();
  swift_allocObject();
  result = sub_21CB808B4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21CB80C34();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_21C98F184(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_21CB80904();
  swift_allocObject();
  result = sub_21CB808B4();
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

uint64_t sub_21C98F208(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v24 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC88, &qword_21CBB6E70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v24 - v8;
  v10 = sub_21CB85CA4();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath(byte_21CBB6E78, v12);

  v16 = sub_21C98C72C(a1, a2);
  v18 = v17;
  sub_21CB85C74();
  sub_21C7A34C0(v16, v18);
  (*(v11 + 56))(v9, 0, 1, v10);
  (*(v11 + 32))(v14, v9, v10);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v24[0]);

  swift_getKeyPath(byte_21CBB6EA0);
  sub_21CB81DB4();

  v20 = v24[0];
  MEMORY[0x28223BE20](v19);
  v24[-2] = v14;
  sub_21C968D04(sub_21C98F5F4, v20, v6);

  v21 = type metadata accessor for PMAccount(0);
  if ((*(*(v21 - 8) + 48))(v6, 1, v21) == 1)
  {
    sub_21C6EA794(v6, &unk_27CDEBE60, &unk_21CB9FF40);
    v22 = 0;
  }

  else
  {
    v22 = *v6;

    sub_21C7D4A64(v6);
  }

  (*(v11 + 8))(v14, v10);
  return v22;
}

void *sub_21C98F614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_21C98EA64(sub_21C98F67C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_21C98F6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v9 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccount(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  v40 = a3;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D8, &qword_21CBB7120);
  MEMORY[0x21CF14A20](v42, v16);
  if (v42[0])
  {
    v37 = a4;
    v38 = a1;
    v43 = MEMORY[0x277D84F90];
    v17 = *(v42[0] + 16);
    if (v17)
    {
      v18 = v42[0] + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v19 = *(v12 + 24);
      v20 = *(v13 + 72);
      do
      {
        sub_21C80EABC(v18, v15, type metadata accessor for PMAccount);
        sub_21C80EABC(&v15[v19], v11, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C7190C0(v11, type metadata accessor for PMAccount.Storage);
          sub_21C7190C0(v15, type metadata accessor for PMAccount);
        }

        else
        {
          v21 = sub_21C7190C0(v15, type metadata accessor for PMAccount);
          MEMORY[0x21CF15300](v21);
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v36[1] = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_21CB85834();
          }

          sub_21CB85854();
        }

        v18 += v20;
        --v17;
      }

      while (v17);
    }

    a4 = v37;
  }

  v22 = objc_opt_self();
  sub_21C897E98();
  v23 = sub_21CB85814();

  v24 = [v22 alertTitleForFailingToRecoverAccounts_];

  v25 = sub_21CB855C4();
  v27 = v26;

  v42[0] = v25;
  v42[1] = v27;
  sub_21CB858B4();

  v28 = v39;

  v29 = v40;

  v30 = sub_21CB858A4();
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  v31[2] = v30;
  v31[3] = v32;
  v31[4] = v28;
  v31[5] = v29;
  v31[6] = a4;

  v33 = sub_21CB858A4();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v32;
  v34[4] = v28;
  v34[5] = v29;
  v34[6] = a4;
  sub_21CB84F64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30E0, &qword_21CBB7128);
  sub_21C98FC48();
  sub_21C71F3FC();
  sub_21CB84764();
}

void *sub_21C98FB50@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, BOOL *a4@<X8>)
{
  v8[1] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D8, &qword_21CBB7120);
  result = MEMORY[0x21CF14A20](v8, v5);
  v7 = v8[0];
  if (v8[0])
  {
  }

  *a4 = v7 != 0;
  return result;
}

_BYTE *sub_21C98FBBC(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D8, &qword_21CBB7120);
    return sub_21CB84F34();
  }

  return result;
}

unint64_t sub_21C98FC48()
{
  result = qword_27CDF30E8;
  if (!qword_27CDF30E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF30E0, &qword_21CBB7128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF30E8);
  }

  return result;
}

uint64_t sub_21C98FCAC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_21CBB7218);
  v5 = v1;
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
  swift_beginAccess();
  return sub_21C9909BC(v5 + v3, a1);
}

uint64_t sub_21C98FD74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBB7218);
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
  swift_beginAccess();
  return sub_21C9909BC(v3 + v4, a2);
}

uint64_t sub_21C98FE3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21C9909BC(a1, &v6 - v3);
  return sub_21C98FED0(v4);
}

uint64_t sub_21C98FED0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
  swift_beginAccess();
  sub_21C9909BC(v1 + v6, v5);
  v7 = sub_21C990A2C(v5, a1);
  sub_21C6EA794(v5, &qword_27CDEFFE8, &qword_21CBAE1B0);
  if (v7)
  {
    KeyPath = swift_getKeyPath(byte_21CBB7218);
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
    sub_21CB810C4();
  }

  else
  {
    sub_21C9909BC(a1, v5);
    swift_beginAccess();
    sub_21C990D1C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &qword_27CDEFFE8, &qword_21CBAE1B0);
}

uint64_t sub_21C9900C0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
  swift_beginAccess();
  sub_21C990DA8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C99012C()
{
  swift_getKeyPath(byte_21CBB71E8);
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810D4();
}

uint64_t sub_21C9901D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBB71E8);
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager);
}

uint64_t sub_21C99028C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBB71E8);
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810C4();
}

uint64_t sub_21C990358(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager) = a2;
}

uint64_t sub_21C99044C(const char *a1)
{
  swift_getKeyPath(a1);
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810D4();
}

uint64_t sub_21C990504@<X0>(uint64_t *a1@<X0>, const char *a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath(a2);
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810D4();

  *a4 = *(v6 + *a3);
}

uint64_t sub_21C990610(uint64_t a1, uint64_t *a2, const char *a3, uint64_t a4)
{
  v7 = *a2;
  if (!*(v4 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath(a3);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
    sub_21CB810C4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = sub_21C714F88(v8, a1);

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v4 + v7) = a1;
}

uint64_t sub_21C99079C(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + *a3) = a2;
}

uint64_t sub_21C9907DC()
{
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData, &qword_27CDEFFE8, &qword_21CBAE1B0);
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__dataToExportAfterAlert, &qword_27CDF3158, &qword_21CBB7248);

  v1 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21C990978()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager) = *(v0 + 24);
}

uint64_t sub_21C9909BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C990A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB818C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3150, &qword_21CBB7240);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21C9909BC(a1, &v21 - v12);
  sub_21C9909BC(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21C9909BC(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21C990E18(&qword_27CDF00F0, MEMORY[0x277CBA840], MEMORY[0x277CBA848]);
      v18 = sub_21CB85574();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21C6EA794(v13, &qword_27CDEFFE8, &qword_21CBAE1B0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v13, &qword_27CDF3150, &qword_21CBB7240);
    v17 = 1;
    return v17 & 1;
  }

  sub_21C6EA794(v13, &qword_27CDEFFE8, &qword_21CBAE1B0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21C990D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C990DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C990E18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21C990EA8(uint64_t a1)
{
  sub_21C7225E8(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMSharingGroup(319);
    if (v2 <= 0x3F)
    {
      sub_21C7225E8(319, &qword_27CDF3170, &type metadata for PMGroupMember, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21C7226D8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C990FEC(uint64_t a1)
{
  sub_21C9910A8(319, &qword_27CDF3198, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
  if (v1 <= 0x3F)
  {
    sub_21C9910A8(319, &qword_27CDF31A0, MEMORY[0x277CDD848]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C9910A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21C991118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a1;
  v65 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF31A8, &qword_21CBB72E8);
  MEMORY[0x28223BE20](v4);
  v63 = v53 - v5;
  v61 = sub_21CB81024();
  v57 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF31B0, &qword_21CBB72F0);
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v59 = v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v53 - v10;
  v12 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v3;
  sub_21C6EDBAC(v3, v11, &qword_27CDF3178, &qword_21CBB7260);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21C6EA794(v11, &qword_27CDF3178, &qword_21CBB7260);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF31B8, &unk_21CBB72F8);
    (*(*(v16 - 8) + 16))(v63, v62, v16);
    swift_storeEnumTagMultiPayload();
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF4130, &qword_21CBB1B70);
    v19 = sub_21C6EADEC(&qword_27CDF31C0, &qword_27CDF31B8, &unk_21CBB72F8, MEMORY[0x277CE04B0]);
    v20 = sub_21C71F3FC();
    v21 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    v22 = sub_21C87DED8();
    *&v82 = v16;
    *(&v82 + 1) = MEMORY[0x277D837D0];
    *&v83 = v17;
    *(&v83 + 1) = v18;
    *&v84 = &type metadata for PMGroupMember;
    *(&v84 + 1) = v19;
    *&v85 = v20;
    *(&v85 + 1) = v21;
    *&v86 = v22;
    swift_getOpaqueTypeConformance2();
    return sub_21CB83494();
  }

  else
  {
    v56 = v4;
    sub_21C992908(v11, v15, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
    v24 = &v15[*(v12 + 28)];
    v25 = v15;
    if (*(v24 + 5))
    {
      v27 = *(v24 + 8);
      v26 = *(v24 + 9);
    }

    else
    {
      v27 = 0;
      v26 = 0xE000000000000000;
    }

    sub_21CB81014();
    sub_21CB81004();
    (v57[1])(v7, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21CBA0690;
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = sub_21C7C0050();
    *(v28 + 32) = v27;
    *(v28 + 40) = v26;
    v29 = sub_21CB85594();
    v31 = v30;
    v61 = v30;

    v73 = v29;
    v74 = v31;
    v32 = *(v25 + 8);
    v33 = *(v25 + 16);
    *&v82 = *v25;
    *(&v82 + 1) = v32;
    LOBYTE(v83) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    v34 = sub_21CB84F54();
    v57 = v53;
    v53[2] = *(&v75 + 1);
    v53[3] = v75;
    v54 = v76;
    v35 = *(v24 + 3);
    v36 = *(v24 + 5);
    v79 = *(v24 + 4);
    v80 = v36;
    v37 = *(v24 + 5);
    v81 = *(v24 + 6);
    v38 = *(v24 + 1);
    v75 = *v24;
    v76 = v38;
    v39 = *(v24 + 3);
    v41 = *v24;
    v40 = *(v24 + 1);
    v77 = *(v24 + 2);
    v78 = v39;
    v70 = v79;
    v71 = v37;
    v72 = *(v24 + 6);
    v66 = v41;
    v67 = v40;
    v68 = v77;
    v69 = v35;
    MEMORY[0x28223BE20](v34);
    v53[1] = v52;
    MEMORY[0x28223BE20](v42);
    v55 = v25;
    sub_21C6EDBAC(&v75, &v82, &qword_27CDECC50, &unk_21CBB52A0);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF31B8, &unk_21CBB72F8);
    v53[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
    v45 = sub_21C6EADEC(&qword_27CDF31C0, &qword_27CDF31B8, &unk_21CBB72F8, MEMORY[0x277CE04B0]);
    v46 = sub_21C71F3FC();
    v58 = v46;
    v47 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    v48 = sub_21C87DED8();
    v52[2] = v47;
    v52[3] = v48;
    v52[0] = v45;
    v52[1] = v46;
    v49 = v59;
    sub_21CB84714();

    v86 = v70;
    v87 = v71;
    v88 = v72;
    v82 = v66;
    v83 = v67;
    v84 = v68;
    v85 = v69;
    sub_21C6EA794(&v82, &qword_27CDECC50, &unk_21CBB52A0);

    v50 = v60;
    v51 = v64;
    (*(v60 + 16))(v63, v49, v64);
    swift_storeEnumTagMultiPayload();
    *&v66 = v43;
    *(&v66 + 1) = MEMORY[0x277D837D0];
    *&v67 = v53[0];
    *(&v67 + 1) = v44;
    *&v68 = &type metadata for PMGroupMember;
    *(&v68 + 1) = v45;
    *&v69 = v58;
    *(&v69 + 1) = v47;
    *&v70 = v48;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v50 + 8))(v49, v51);
    return sub_21C992844(v55);
  }
}

uint64_t sub_21C9919C4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v36 = a2;
  v39 = a4;
  v5 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_21CB81024();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[5];
  v47 = a1[4];
  v48 = v18;
  v49 = a1[6];
  v19 = a1[1];
  v43 = *a1;
  v44 = v19;
  v20 = a1[3];
  v45 = a1[2];
  v46 = v20;
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  (*(v15 + 8))(v17, v14);
  v41 = v21;
  v42 = v23;
  sub_21CB81ED4();
  v24 = sub_21CB81F14();
  (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
  sub_21C9928A0(v36, v10, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
  sub_21C9928A0(v38, v7, type metadata accessor for PMRemoveGroupMemberConfirmationAlert);
  v25 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v37 + 80) + v26 + 112) & ~*(v37 + 80);
  v28 = swift_allocObject();
  sub_21C992908(v10, v28 + v25, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
  v29 = (v28 + v26);
  v30 = v48;
  v29[4] = v47;
  v29[5] = v30;
  v29[6] = v49;
  v31 = v44;
  *v29 = v43;
  v29[1] = v31;
  v32 = v46;
  v29[2] = v45;
  v29[3] = v32;
  sub_21C992908(v7, v28 + v27, type metadata accessor for PMRemoveGroupMemberConfirmationAlert);
  sub_21C7A33F0(&v43, v40);
  sub_21C71F3FC();
  return sub_21CB84DC4();
}

uint64_t sub_21C991DBC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_21CB858E4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_21C9928A0(a1, v11, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
  sub_21C9928A0(a3, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMRemoveGroupMemberConfirmationAlert);
  sub_21CB858B4();
  sub_21C7A33F0(a2, v29);
  v16 = sub_21CB858A4();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v28 + 80) + v18 + 112) & ~*(v28 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v16;
  *(v20 + 24) = v21;
  sub_21C992908(v11, v20 + v17, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
  v22 = (v20 + v18);
  v23 = a2[5];
  v22[4] = a2[4];
  v22[5] = v23;
  v22[6] = a2[6];
  v24 = a2[1];
  *v22 = *a2;
  v22[1] = v24;
  v25 = a2[3];
  v22[2] = a2[2];
  v22[3] = v25;
  sub_21C992908(v27, v20 + v19, type metadata accessor for PMRemoveGroupMemberConfirmationAlert);
  sub_21C822ECC(0, 0, v14, &unk_21CBB7310, v20);
}

uint64_t sub_21C9920A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3180, &qword_21CBB7268);
  v6[8] = swift_task_alloc();
  sub_21CB858B4();
  v6[9] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v6[10] = v8;
  v6[11] = v7;

  return MEMORY[0x2822009F8](sub_21C99217C, v8, v7);
}

uint64_t sub_21C99217C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = (v1 + *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0) + 32));
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v8 = (*v3 + **v3);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_21C99228C;

  return v8(v4, v5);
}

uint64_t sub_21C99228C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_21C992544;
  }

  else
  {
    v5 = sub_21C9923C8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C9923C8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  *(v0 + 16) = *(v3 + 24);
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F34();
  v6 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0);
  sub_21C6EDBAC(v2 + *(v6 + 20), v1, &qword_27CDF3180, &qword_21CBB7268);
  v7 = sub_21CB823B4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v1, 1, v7);
  v10 = *(v0 + 64);
  if (v9 == 1)
  {
    sub_21C6EA794(*(v0 + 64), &qword_27CDF3180, &qword_21CBB7268);
  }

  else
  {
    sub_21CB823A4();
    (*(v8 + 8))(v10, v7);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21C992544()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C9925B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 96);
  v11 = [objc_opt_self() sharedStore];
  if (v10)
  {
    v12 = sub_21CB85584();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  sub_21CB85B64();
  v14 = sub_21CB85584();

  v15 = [v11 _hasPersonWithParticipantID_contributedSavedAccountsToGroupWithID_];

  result = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v15)
  {
    v20 = (a2 + *(v13 + 28));
    if (v20[5])
    {
      v22 = v20[8];
      v21 = v20[9];
    }

    else
    {
      v22 = 0;
      v21 = 0xE000000000000000;
    }

    sub_21CB81014();
    sub_21CB81004();
    (*(v7 + 8))(v9, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_21CBA0690;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_21C7C0050();
    *(v23 + 32) = v22;
    *(v23 + 40) = v21;
    v24 = sub_21CB85594();
    v26 = v25;

    v28[0] = v24;
    v28[1] = v26;
    sub_21C71F3FC();
    result = sub_21CB84054();
    v18 = v27 & 1;
  }

  *a3 = result;
  a3[1] = v17;
  a3[2] = v18;
  a3[3] = v19;
  return result;
}

uint64_t sub_21C992844(uint64_t a1)
{
  v2 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9928A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C992908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C992970()
{
  v1 = *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80) + 112) & ~*(v4 + 80));

  return sub_21C991DBC(v0 + v2, (v0 + v3), v5);
}

uint64_t sub_21C992A4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0) - 8);
  v9 = (v7 + *(v8 + 80) + 112) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21C702EFC;

  return sub_21C9920A8(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9);
}

unint64_t sub_21C992BB4()
{
  result = qword_27CDF31C8;
  if (!qword_27CDF31C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF31D0, &qword_21CBB7318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF31B8, &unk_21CBB72F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF4130, &qword_21CBB1B70);
    sub_21C6EADEC(&qword_27CDF31C0, &qword_27CDF31B8, &unk_21CBB72F8, MEMORY[0x277CE04B0]);
    sub_21C71F3FC();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C87DED8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF31C8);
  }

  return result;
}

void sub_21C992D9C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB80DD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C993E94(v2, v9, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    (*(v4 + 32))(v6, v9 + *(v12 + 64), v3);
    MEMORY[0x21CF15F90](1);
    sub_21CB85DE4();
    sub_21CB854C4();

    sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CB85494();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }
}

uint64_t sub_21C992FC8()
{
  sub_21CB86484();
  sub_21C992D9C(v1);
  return sub_21CB864D4();
}

uint64_t sub_21C99300C(uint64_t a1)
{
  sub_21CB86484();
  sub_21C992D9C(v2);
  return sub_21CB864D4();
}

uint64_t sub_21C99304C()
{
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB854C4();
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_21CB85494();
  return sub_21CB864D4();
}

uint64_t sub_21C993100(uint64_t a1)
{
  sub_21CB854C4();
  sub_21CB854C4();
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_21CB85494();
}

uint64_t sub_21C993198(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB854C4();
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_21CB85494();
  return sub_21CB864D4();
}

uint64_t sub_21C993248(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  return sub_21CB80D84();
}

uint64_t sub_21C99337C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C9933C4()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C993E94(v0 + *(v8 + 20), v7, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v7;
  if (EnumCaseMultiPayload == 1)
  {

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v12 = [v10 host];
    v13 = sub_21CB855C4();

    v14 = sub_21CB80DD4();
    (*(*(v14 - 8) + 8))(v7 + v11, v14);
  }

  else
  {
    v15 = [*v7 protectionSpace];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 host];

      if (!v17)
      {
        sub_21CB855C4();
        v17 = sub_21CB85584();
      }

      v18 = [v17 safari_highLevelDomainForPasswordManager];

      v13 = sub_21CB855C4();
    }

    else
    {
      sub_21CB81014();
      v13 = sub_21CB81004();

      (*(v2 + 8))(v4, v1);
    }
  }

  return v13;
}

uint64_t sub_21C993684(__n128 a1)
{
  v2 = sub_21CB80F24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_21CB80DD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C993E94(v1 + *(v16 + 20), v8, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v8;
  if (EnumCaseMultiPayload == 1)
  {

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    (*(v10 + 32))(v15, v8 + *(v19 + 64), v9);
  }

  else
  {
    v20 = [*v8 generationDate];
    sub_21CB80D94();
  }

  v21 = [objc_opt_self() currentCalendar];
  sub_21CB80ED4();

  LOBYTE(v21) = sub_21CB80E84();
  (*(v3 + 8))(v5, v2);
  if (v21)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v22 setDateStyle_];
    [v22 setTimeStyle_];
    [v22 setDoesRelativeDateFormatting_];
    v23 = sub_21CB80D24();
    v24 = [v22 stringFromDate_];

    v25 = sub_21CB855C4();
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
    [v26 setUnitsStyle_];
    [v26 setDateTimeStyle_];
    v27 = sub_21CB80D24();
    sub_21CB80DA4();
    v28 = sub_21CB80D24();
    v29 = *(v10 + 8);
    v29(v12, v9);
    v30 = [v26 localizedStringForDate:v27 relativeToDate:v28];

    v25 = sub_21CB855C4();
    v29(v15, v9);
  }

  return v25;
}

uint64_t sub_21C993AB8()
{
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB854C4();
  type metadata accessor for PMGeneratedPassword.ID(0);
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_21CB85494();
  sub_21C992D9C(v1);
  return sub_21CB864D4();
}

void sub_21C993B88(uint64_t a1)
{
  sub_21CB854C4();
  sub_21CB854C4();
  type metadata accessor for PMGeneratedPassword.ID(0);
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_21CB85494();
  sub_21C992D9C(a1);
}

uint64_t sub_21C993C44(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB854C4();
  type metadata accessor for PMGeneratedPassword.ID(0);
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_21CB85494();
  sub_21C992D9C(v2);
  return sub_21CB864D4();
}

uint64_t sub_21C993D44(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PMGeneratedPassword.ID(0);
  if ((sub_21CB80D84() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return sub_21C993EFC(a1 + v8, a2 + v8);
}

uint64_t sub_21C993E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C993EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80DD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v8;
  v9 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v39 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3230, &qword_21CBB74B8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - v16;
  v19 = (&v39 + *(v18 + 56) - v16);
  sub_21C993E94(a1, &v39 - v16, type metadata accessor for PMGeneratedPassword.Storage);
  sub_21C993E94(a2, v19, type metadata accessor for PMGeneratedPassword.Storage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21C993E94(v17, v14, type metadata accessor for PMGeneratedPassword.Storage);
    v33 = *v14;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v34 = *v19;
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v35 = sub_21CB85DD4();

LABEL_20:
      sub_21C9943C8(v17);
      return v35 & 1;
    }

    goto LABEL_13;
  }

  sub_21C993E94(v17, v11, type metadata accessor for PMGeneratedPassword.Storage);
  v21 = *v11;
  v20 = v11[1];
  v22 = v11[2];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v11 + v23, v4);

LABEL_13:
    sub_21C994360(v17);
    goto LABEL_17;
  }

  v42 = v22;
  v24 = *v19;
  v39 = v19[1];
  v40 = v20;
  v41 = v19[2];
  v25 = *(v5 + 32);
  v26 = v11 + v23;
  v27 = v44;
  v25(v44, v26, v4);
  v28 = v19 + v23;
  v29 = v43;
  v25(v43, v28, v4);
  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  v30 = sub_21CB85DD4();

  if (v30)
  {
    if (v40 == v39 && v42 == v41)
    {

LABEL_19:
      v35 = sub_21CB80D84();
      v37 = *(v5 + 8);
      v37(v29, v4);
      v37(v27, v4);
      goto LABEL_20;
    }

    v32 = sub_21CB86344();

    if (v32)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v36 = *(v5 + 8);
  v36(v29, v4);
  v36(v27, v4);
  sub_21C9943C8(v17);
LABEL_17:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_21C994360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3230, &qword_21CBB74B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9943C8(uint64_t a1)
{
  v2 = type metadata accessor for PMGeneratedPassword.Storage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_21C994440@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath(byte_21CBB7690);
  *&v7 = v1;
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1, &unk_21CBB7654);
  sub_21CB810D4();

  v3 = v1[2];
  v7 = v1[1];
  v8[0] = v3;
  *(v8 + 11) = *(v1 + 43);
  sub_21C82EA84(&v7, &v6);
  v4 = v8[0];
  *a1 = v7;
  a1[1] = v4;
  result = *(v8 + 11);
  *(a1 + 27) = *(v8 + 11);
  return result;
}

uint64_t sub_21C99450C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBB7690);
  *&v9 = v3;
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1, &unk_21CBB7654);
  sub_21CB810D4();

  v4 = v3[2];
  v5 = *(v3 + 43);
  v9 = v3[1];
  v10[0] = v4;
  *(v10 + 11) = v5;
  *(a2 + 27) = v5;
  v6 = v3[2];
  *a2 = v3[1];
  a2[1] = v6;
  return sub_21C82EA84(&v9, &v8);
}

uint64_t sub_21C9945D4(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBB7690);
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1, &unk_21CBB7654);
  sub_21CB810C4();
}

uint64_t sub_21C9946B0()
{
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1, &unk_21CBB7654);
  sub_21CB810D4();

  return *(v0 + 59);
}

uint64_t sub_21C994750@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1, &unk_21CBB7654);
  sub_21CB810D4();

  *a2 = *(v3 + 59);
  return result;
}

uint64_t sub_21C9947F8(unsigned __int8 a1)
{
  v3 = *(v1 + 59);
  if (v3 == a1)
  {
    v7[0] = v1;
    sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1, &unk_21CBB7654);
    sub_21CB810D4();

    sub_21C997CC8(*(v1 + 59), v7);
    v5 = swift_getKeyPath(byte_21CBB7690);
    MEMORY[0x28223BE20](v5);
    sub_21CB810C4();
    sub_21C85F75C(v7);
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1, &unk_21CBB7654);
    sub_21CB810C4();
  }
}

uint64_t sub_21C9949FC(uint64_t a1, char a2)
{
  *(a1 + 59) = a2;
  v4[0] = a1;
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1, &unk_21CBB7654);
  sub_21CB810D4();

  sub_21C997CC8(*(a1 + 59), v4);
  swift_getKeyPath(byte_21CBB7690);
  v4[7] = a1;
  sub_21CB810C4();
  sub_21C85F75C(v4);
}

uint64_t sub_21C994B30@<X0>(void *a1@<X8>)
{
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1, &unk_21CBB7654);
  sub_21CB810D4();

  if (*(v1 + 59))
  {
    if (*(v1 + 59) == 1)
    {
      v3 = *MEMORY[0x277CBA878];
      v4 = sub_21CB81A04();
      (*(*(v4 - 8) + 104))(a1, v3, v4);
      v5 = MEMORY[0x277CBA668];
    }

    else
    {
      *a1 = 0x61702E656C707061;
      a1[1] = 0xEF7364726F777373;
      v5 = MEMORY[0x277CBA680];
    }

    v6 = *v5;
    v7 = sub_21CB813C4();
    (*(*(v7 - 8) + 104))(a1, v6, v7);
  }

  else
  {
    sub_21CB813A4();
  }

  v8 = sub_21CB813C4();
  return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
}

uint64_t sub_21C994CEC()
{

  v1 = OBJC_IVAR____TtCE17PasswordManagerUICSo56PMSafariAutoFillStrongPasswordIntroductionViewController21ConfigurationProvider___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_21C994DAC@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath(byte_21CBB7690);
  *&v8 = v3;
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1, &unk_21CBB7654);
  sub_21CB810D4();

  v4 = v3[2];
  v8 = v3[1];
  v9[0] = v4;
  *(v9 + 11) = *(v3 + 43);
  sub_21C82EA84(&v8, &v7);
  v5 = v9[0];
  *a1 = v8;
  a1[1] = v5;
  result = *(v9 + 11);
  *(a1 + 27) = *(v9 + 11);
  return result;
}

uint64_t sub_21C994E9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PMOsloBadge(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21C994F08()
{
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa, &unk_21CBB7638);
  sub_21CB810D4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_21C994FAC@<X0>(uint64_t *a2@<X8>)
{
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa, &unk_21CBB7638);
  sub_21CB810D4();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_21C995058(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    MEMORY[0x28223BE20](KeyPath);
    sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa, &unk_21CBB7638);
    sub_21CB810C4();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  type metadata accessor for PMSafariAutoFillStrongPasswordIntroductionViewController(a1);
  v3 = v2;
  v4 = sub_21CB85DD4();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_21C9951EC()
{
  swift_getKeyPath(byte_21CBB76B8);
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa, &unk_21CBB7638);
  sub_21CB810D4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_21C995290@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath(byte_21CBB76B8);
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa, &unk_21CBB7638);
  sub_21CB810D4();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_21C99533C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBB76B8);
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa, &unk_21CBB7638);
  sub_21CB810C4();
}

void *sub_21C995418(uint64_t a1)
{
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa, &unk_21CBB7638);
  sub_21CB810D4();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath(byte_21CBB76B8);
    sub_21CB810D4();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = [Strong strongPasswordIntroductionViewController:v3 automaticStrongPasswordWithFormat:a1];
      swift_unknownObjectRelease();
      v6 = sub_21CB855C4();

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_21C995574()
{
  MEMORY[0x21CF16E70](v0 + 16);
  sub_21C7B0A14(v0 + 24);
  v1 = OBJC_IVAR____TtCE17PasswordManagerUICSo56PMSafariAutoFillStrongPasswordIntroductionViewController16PasswordProvider___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowView.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata shouldShowLoginIntroduction])
  {
    return 1;
  }

  else
  {
    return [ObjCClassFromMetadata shouldShowStrongPasswordIntroduction];
  }
}

uint64_t static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowViews(in:)(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return [swift_getObjCClassFromMetadata() shouldShowLoginIntroduction];
    }

    if (a1 == 1)
    {
      return [swift_getObjCClassFromMetadata() shouldShowStrongPasswordIntroduction];
    }

    goto LABEL_15;
  }

  if (a1 == 2)
  {
    return 1;
  }

  if (a1 != 3)
  {
LABEL_15:
    type metadata accessor for PMSafariAutoFillStrongPasswordIntroductionViewControllerMode(0);
    result = sub_21CB86374();
    __break(1u);
    return result;
  }

  if (PMOnboardingIsICloudKeychainSyncingEnabled())
  {
    return 0;
  }

  v2 = [objc_opt_self() pm_defaults];
  v3 = [v2 BOOLForKey_];

  if (!v3)
  {
    return 1;
  }

  return sub_21C997F0C();
}

id static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowLoginIntroduction.getter()
{
  result = [objc_opt_self() isPasswordsAppInstalled];
  if (result)
  {
    if (PMOnboardingIsPasswordAutoFillEnabled())
    {
      return 0;
    }

    v1 = objc_opt_self();
    v2 = [v1 pm_defaults];
    v3 = [v2 BOOLForKey_];

    if (v3)
    {
      return 0;
    }

    v4 = [v1 pm_defaults];
    v5 = [v4 BOOLForKey_];

    if (v5 && (sub_21C997F0C() & 1) == 0)
    {
      return 0;
    }

    else
    {
      return ([swift_getObjCClassFromMetadata() hasThirdPartyPasswordManagerEnabledAndPasswordsAppDisabledForAutoFill] ^ 1);
    }
  }

  return result;
}

id static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowStrongPasswordIntroduction.getter()
{
  result = [objc_opt_self() isPasswordsAppInstalled];
  if (result)
  {
    v1 = objc_opt_self();
    v2 = [v1 pm_defaults];
    v3 = [v2 BOOLForKey_];

    if (v3 && ((PMOnboardingIsICloudKeychainSyncingEnabled() & 1) != 0 || (v4 = [v1 pm_defaults], v5 = objc_msgSend(v4, sel_BOOLForKey_, @"hasShownSafariAutoFillICloudKeychainSyncingView"), v4, v5) && (sub_21C997F0C() & 1) == 0))
    {
      return 0;
    }

    else
    {
      return ([swift_getObjCClassFromMetadata() hasThirdPartyPasswordManagerEnabledAndPasswordsAppDisabledForAutoFill] ^ 1);
    }
  }

  return result;
}

id static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowStrongPasswordSavedView.getter()
{
  result = [objc_opt_self() isPasswordsAppInstalled];
  if (result)
  {
    return (PMOnboardingHasShownStrongPasswordSavedView() ^ 1);
  }

  return result;
}

uint64_t static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowICloudKeychainSyncingView.getter()
{
  v0 = [objc_opt_self() pm_defaults];
  v1 = [v0 BOOLForKey_];

  if (v1)
  {
    return 0;
  }

  else
  {
    return PMOnboardingIsICloudKeychainSyncingEnabled() ^ 1;
  }
}

void PMSafariAutoFillStrongPasswordIntroductionViewController.contentSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 intrinsicContentSize];
  }

  else
  {
    __break(1u);
  }
}

id sub_21C995CEC(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_mode] = a1;
  v3 = sub_21C9983F8(a1);
  v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_viewStyle] = v3;
  sub_21C9947F8(v3);
  result = [v1 delegate];
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 strongPasswordIntroductionViewControllerDidUpdateContent_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21C995E40(uint64_t a1)
{
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakLoadStrong();
  swift_getKeyPath(byte_21CBB76B8);
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa, &unk_21CBB7638);
  sub_21CB810C4();

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

char *sub_21C995F4C(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = sub_21C9983F8(a1);
  v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_viewStyle] = v3;
  *&v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_mode] = a1;
  _s21ConfigurationProviderCMa_1(0);
  v4 = swift_allocObject();
  sub_21CB81104();
  *(v4 + 59) = v3;
  sub_21C997CC8(v3, &v11);
  v5 = v12[0];
  *(v4 + 16) = v11;
  *(v4 + 32) = v5;
  *(v4 + 43) = *(v12 + 11);
  *&v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_configurationProvider] = v4;
  _s16PasswordProviderCMa(0);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_21CB81104();
  *&v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_passwordProvider] = v6;
  v10.receiver = v1;
  v10.super_class = PMSafariAutoFillStrongPasswordIntroductionViewController;
  v7 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  v8 = v7;

  sub_21C995058(v7);

  return v8;
}

id PMSafariAutoFillStrongPasswordIntroductionViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void PMSafariAutoFillStrongPasswordIntroductionViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  sub_21CB861C4();
  __break(1u);
}

Swift::Void __swiftcall PMSafariAutoFillStrongPasswordIntroductionViewController.loadView()()
{
  v1 = *&v0[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_configurationProvider];
  v2 = *&v0[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_passwordProvider];
  v10[3] = _s16PasswordProviderCMa(0);
  v10[4] = &off_282E538A8;
  v10[0] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_21C6EDBAC(v12, v11, &unk_27CDFA2C0, &unk_21CBA68A0);
  v6 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDFA2C0, &unk_21CBA68A0);
  sub_21CB84D44();
  sub_21C6EA794(v12, &unk_27CDFA2C0, &unk_21CBA68A0);
  v14[0] = sub_21C9981F4;
  v14[1] = v3;
  v14[2] = sub_21C998218;
  v14[3] = v4;
  v14[8] = v1;
  v14[9] = 0;
  sub_21C6EA794(v15, &qword_27CDF3260, &qword_21CBAF450);
  v15[5] = 0;
  sub_21C6EDBAC(v10, v15, &unk_27CDFA2C0, &unk_21CBA68A0);
  v14[4] = sub_21C998220;
  v14[5] = v5;
  v14[6] = 0;
  v14[7] = 0;
  v7 = objc_opt_self();
  v15[6] = [v7 biometryType];
  LOBYTE(v7) = [v7 isPad];
  sub_21C6EA794(v10, &unk_27CDFA2C0, &unk_21CBA68A0);
  v16 = v7;
  sub_21C6EDBAC(v14, v10, &qword_27CDF3268, &qword_21CBB74C0);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3270, &qword_21CBB74C8));
  v9 = sub_21CB827D4();
  sub_21C6EA794(v14, &qword_27CDF3268, &qword_21CBB74C0);
  [v6 setView_];
}

uint64_t sub_21C996474(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  if (*(v1 + OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_viewStyle))
  {
    if (*(v1 + OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_viewStyle) == 1)
    {
      v7 = sub_21CB858E4();
      (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
      sub_21CB858B4();

      v8 = v1;
      v9 = sub_21CB858A4();
      v10 = swift_allocObject();
      v11 = MEMORY[0x277D85700];
      v10[2] = v9;
      v10[3] = v11;
      v10[4] = v6;
      v10[5] = v8;
      v10[6] = a1;
      sub_21C98B308(0, 0, v5, &unk_21CBB7740, v10);
    }

    v13 = sub_21C997610(a1);
  }

  else
  {
    v13 = sub_21C997464(a1);
  }

  *(v6 + 16) = v13 & 1;
  v14 = [v1 delegate];
  if (v14)
  {
    [v14 strongPasswordIntroductionViewController:v1 shouldPerformAction:a1 willShowAdditionalView:*(v6 + 16)];

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_21C9966A8(uint64_t a1, id a2)
{
  result = [a2 delegate];
  if (result)
  {
    [result strongPasswordIntroductionViewController:a2 shouldFillPasswordWithFormat:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21C99672C(char a1, id a2)
{
  result = [a2 delegate];
  v5 = result;
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    v6 = &selRef_strongPasswordIntroductionViewControllerShowOtherPasswords_;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v6 = &selRef_strongPasswordIntroductionViewControllerShowKeyboard_;
  }

  if ([result respondsToSelector_])
  {
    [v5 *v6];
  }

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall PMSafariAutoFillStrongPasswordIntroductionViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  if (*(v1 + OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_viewStyle) == 1)
  {
    v2 = [objc_opt_self() sharedLogger];
    [v2 didSurfaceUsePasswordsAppView];
  }
}

id PMSafariAutoFillStrongPasswordIntroductionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_21CB85584();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_21C996A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v6[11] = sub_21CB858B4();
  v6[12] = sub_21CB858A4();
  v8 = swift_task_alloc();
  v6[13] = v8;
  *v8 = v6;
  v8[1] = sub_21C996B5C;

  return sub_21C996D88(a6);
}

uint64_t sub_21C996B5C(char a1)
{
  *(*v1 + 112) = a1;

  v3 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C996CA0, v3, v2);
}

uint64_t sub_21C996CA0()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  swift_beginAccess();
  *(v3 + 16) = v1;
  v4 = [v2 delegate];
  if (v4)
  {
    v5 = v4;
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    swift_beginAccess();
    [v5 strongPasswordIntroductionViewController:v7 shouldPerformAction:v6 willShowAdditionalView:*(v8 + 16)];
    swift_unknownObjectRelease();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21C996D88(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_21CB858B4();
  v2[20] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_21C996E20, v4, v3);
}

uint64_t sub_21C996E20()
{
  v22 = v0;
  v1 = *(v0 + 144);
  if (v1 == 1)
  {

    v5 = [objc_opt_self() sharedLogger];
    [v5 didSelectNotNowForUsePasswordsApp];
  }

  else
  {
    if (v1 == 4)
    {
      v2 = [*(v0 + 152) delegate];
      if (v2)
      {
        [v2 strongPasswordIntroductionViewController:*(v0 + 152) shouldFillPasswordWithFormat:0];
        swift_unknownObjectRelease();
      }

      v3 = objc_opt_self();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 184;
      *(v0 + 24) = sub_21C997200;
      v4 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3310, &unk_21CBA9AB0);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_21C7A1808;
      *(v0 + 104) = &block_descriptor_19;
      *(v0 + 112) = v4;
      [v3 requestToTurnOnCredentialProviderExtensionWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 16);
    }

    if (qword_27CDEA3E0 != -1)
    {
      swift_once();
    }

    v6 = sub_21CB81C84();
    __swift_project_value_buffer(v6, qword_27CE18550);
    v5 = sub_21CB81C64();
    v7 = sub_21CB85AF4();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = *(v0 + 144);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      *(v0 + 80) = v8;
      type metadata accessor for PMSafariAutoFillStrongPasswordViewAction(0);
      v11 = sub_21CB85624();
      v13 = sub_21C98E004(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21C6E5000, v5, v7, "Performing unspecified action on New App view: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x21CF16D90](v10, -1, -1);
      MEMORY[0x21CF16D90](v9, -1, -1);
    }
  }

  v14 = *(v0 + 152);
  v15 = objc_opt_self();
  v16 = [v15 pm_defaults];
  [v16 setBool:1 forKey:@"hasShownSafariAutoFillAppIntroductionView"];

  v17 = [v15 pm_defaults];
  [v17 setBool:1 forKey:@"hasCompletedAutoFillStrongPasswordIntroduction"];

  v18 = [v14 delegate];
  if (v18)
  {
    [v18 strongPasswordIntroductionViewControllerDidFinishIntroduction_];
    swift_unknownObjectRelease();
  }

  v19 = *(v0 + 8);

  return v19(0);
}

uint64_t sub_21C997200()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_21C997308, v2, v1);
}

uint64_t sub_21C997308()
{
  v1 = *(v0 + 152);

  v2 = objc_opt_self();
  v3 = [v2 pm_defaults];
  [v3 setBool:1 forKey:@"hasShownSafariAutoFillAppIntroductionView"];

  v4 = [v2 pm_defaults];
  [v4 setBool:1 forKey:@"hasCompletedAutoFillStrongPasswordIntroduction"];

  v5 = [v1 delegate];
  if (v5)
  {
    [v5 strongPasswordIntroductionViewControllerDidFinishIntroduction_];
    swift_unknownObjectRelease();
  }

  v6 = [objc_opt_self() sharedLogger];
  [v6 didSelectUsePasswordsApp];

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_21C997464(uint64_t a1)
{
  v2 = [objc_opt_self() pm_defaults];
  [v2 setBool:1 forKey:@"hasShownStrongPasswordSavedView"];

  if (a1)
  {
    if (a1 == 2)
    {
      sub_21C99783C();
    }

    else
    {
      if (qword_27CDEA3E0 != -1)
      {
        swift_once();
      }

      v3 = sub_21CB81C84();
      __swift_project_value_buffer(v3, qword_27CE18550);
      v4 = sub_21CB81C64();
      v5 = sub_21CB85AF4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v12 = v7;
        *v6 = 136315138;
        type metadata accessor for PMSafariAutoFillStrongPasswordViewAction(0);
        v8 = sub_21CB85624();
        v10 = sub_21C98E004(v8, v9, &v12);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_21C6E5000, v4, v5, "Performing unspecified action on Strong Password Saved view: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x21CF16D90](v7, -1, -1);
        MEMORY[0x21CF16D90](v6, -1, -1);
      }
    }
  }

  return 0;
}

uint64_t sub_21C997610(uint64_t a1)
{
  if (a1 == 5)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    aBlock[4] = sub_21C9986CC;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CB031D0;
    aBlock[3] = &block_descriptor_85;
    v4 = _Block_copy(aBlock);
    v5 = v1;

    [v2 setUserVisibleKeychainSyncEnabled:1 withCompletion:v4];
    _Block_release(v4);
  }

  else if (a1)
  {
    if (qword_27CDEA3E0 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE18550);
    v8 = sub_21CB81C64();
    v9 = sub_21CB85AF4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v10 = 136315138;
      aBlock[6] = a1;
      type metadata accessor for PMSafariAutoFillStrongPasswordViewAction(0);
      v12 = sub_21CB85624();
      v14 = sub_21C98E004(v12, v13, aBlock);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21C6E5000, v8, v9, "Performing unspecified action on iCloud Keychain Syncing view: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x21CF16D90](v11, -1, -1);
      MEMORY[0x21CF16D90](v10, -1, -1);
    }
  }

  else
  {
    sub_21C9986F0();
  }

  return 0;
}

void sub_21C99783C()
{
  v1 = sub_21CB80BE4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB85614();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21CB85CA4();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 delegate];
  if (v11)
  {
    v12 = v11;
    if ([v11 respondsToSelector_])
    {
      v13 = [v12 recentlySavedAccountForStrongPasswordIntroductionViewController_];
      swift_unknownObjectRelease();
      if (v13)
      {
        sub_21CB85CB4();
        v14 = sub_21CB85C84();
        v16 = v15;
        v17 = v14;
        (*(v7 + 8))(v10, v6);
        sub_21CB85604();
        v18 = v17;
        v19 = sub_21CB855E4();
        if (v20)
        {
          v21 = v19;
          v22 = v20;
          v23 = objc_opt_self();
          v32 = v16;
          v24 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC290, &unk_21CBA3E10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21CBA0690;
          *(inited + 32) = sub_21CB855C4();
          *(inited + 40) = v26;
          *(inited + 48) = v21;
          *(inited + 56) = v22;
          sub_21CB126C0(inited);
          swift_setDeallocating();
          sub_21C6EA794(inited + 32, &unk_27CDF3320, &unk_21CBA0E30);
          v27 = sub_21CB85464();

          v28 = [v24 passwordManagerURLWithDictionary_];

          sub_21CB80B94();
          v29 = [objc_opt_self() sharedApplication];
          v30 = sub_21CB80B74();
          sub_21CB134F0(MEMORY[0x277D84F90]);
          type metadata accessor for OpenExternalURLOptionsKey(0);
          sub_21C99857C(&unk_27CDF8A40, type metadata accessor for OpenExternalURLOptionsKey, &unk_21CB9F90C);
          v31 = sub_21CB85464();

          [v29 openURL:v30 options:v31 completionHandler:0];
          sub_21C7A34C0(v18, v32);

          (*(v2 + 8))(v4, v1);
        }

        else
        {
          sub_21C7A34C0(v17, v16);
        }
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21C997CC8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_21CB81014();
    if (a1 == 1)
    {
      v18 = 0;
      v8 = &unk_282E49108;
    }

    else
    {
      v18 = 1;
      v8 = &unk_282E49130;
    }
  }

  else
  {
    sub_21CB81014();
    v18 = 1;
    v8 = &unk_282E490E0;
  }

  v17 = v8;
  v9 = sub_21CB81004();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  result = (v12)(v7, v4);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = 0;
  *(a2 + 41) = v18;
  return result;
}

uint64_t sub_21C997F0C()
{
  v0 = sub_21CB80DD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = [objc_opt_self() pm_defaults];
  v11 = [v10 safari:@"safariAutoFillIntroductionIsDeferredUntilDate" dateForKey:?];

  if (v11)
  {
    sub_21CB80D94();

    (*(v1 + 32))(v9, v6, v0);
    sub_21CB80DA4();
    v12 = sub_21CB80D34();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v9, v0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

BOOL _sSo56PMSafariAutoFillStrongPasswordIntroductionViewControllerC0E9ManagerUIE013hasThirdPartyei33EnabledAndPasswordsAppDisabledForbC0SbvgZ_0()
{
  v0 = [objc_opt_self() sharedFeatureManager];
  v1 = [v0 shouldAutoFillPasswordsFromKeychain];

  if (v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() sharedManager];
  v3 = [v2 getEnabledExtensionsSynchronously];

  if (!v3)
  {
    return 0;
  }

  sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
  v4 = sub_21CB85824();

  if (v4 >> 62)
  {
    v5 = sub_21CB85FA4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 > 0;
}

unint64_t sub_21C998230()
{
  result = qword_27CDF3280;
  if (!qword_27CDF3280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3288, &qword_21CBB74D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3280);
  }

  return result;
}

uint64_t sub_21C9982E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_21CB81114();
  if (v6 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21C9983A4()
{
  result = qword_27CDF32F0;
  if (!qword_27CDF32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF32F0);
  }

  return result;
}

uint64_t sub_21C9983F8(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 != 1)
    {
      goto LABEL_14;
    }

    v1 = objc_opt_self();
    v2 = [v1 pm_defaults];
    v3 = [v2 BOOLForKey_];

    if (!v3)
    {
      return 1;
    }

    if ((PMOnboardingIsICloudKeychainSyncingEnabled() & 1) == 0)
    {
      v4 = [v1 pm_defaults];
      v5 = [v4 BOOLForKey_];

      if (!v5 || (sub_21C997F0C() & 1) != 0)
      {
        return 2;
      }
    }

    a1 = sub_21CB861C4();
    __break(1u);
  }

  if (a1 == 2)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 2;
  }

LABEL_14:
  type metadata accessor for PMSafariAutoFillStrongPasswordIntroductionViewControllerMode(0);
  result = sub_21CB86374();
  __break(1u);
  return result;
}

uint64_t sub_21C99857C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C998604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21C996A98(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21C9986CC(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return sub_21C998A7C();
  }

  return result;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21C9986F0()
{
  v24 = sub_21CB80DD4();
  v0 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB80F14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21CB80F24();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  sub_21CB80F04();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9968], v3);
  sub_21CB80DA4();
  sub_21CB80EF4();
  v16 = v2;
  v17 = v24;
  v22 = *(v0 + 8);
  v22(v16, v24);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v23);
  v18 = [objc_opt_self() pm_defaults];
  sub_21C6EDBAC(v15, v12, &unk_27CDED250, &qword_21CBA64C0);
  v19 = 0;
  if ((*(v0 + 48))(v12, 1, v17) != 1)
  {
    v19 = sub_21CB80D24();
    v22(v12, v17);
  }

  [v18 safari:v19 setDate:@"safariAutoFillIntroductionIsDeferredUntilDate" forKey:?];

  return sub_21C6EA794(v15, &unk_27CDED250, &qword_21CBA64C0);
}

id sub_21C998A7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v5 = &v14[-v4];
  sub_21CB80BD4();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v7 = result;
    sub_21C6EDBAC(v5, v2, &qword_27CDEC300, &qword_21CBA3ED0);
    v8 = sub_21CB80BE4();
    v9 = *(v8 - 8);
    v10 = 0;
    if ((*(v9 + 48))(v2, 1, v8) != 1)
    {
      v10 = sub_21CB80B74();
      (*(v9 + 8))(v2, v8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3330, &unk_21CBB0A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    *(inited + 32) = sub_21CB855C4();
    *(inited + 40) = v12;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    sub_21C73181C(inited);
    swift_setDeallocating();
    sub_21C6EA794(inited + 32, &qword_27CDF86B0, &unk_21CBB7750);
    v13 = sub_21CB85464();

    [v7 openSensitiveURL:v10 withOptions:v13];

    return sub_21C6EA794(v5, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21C998D48(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PMICloudTermsAndConditionsAlert(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F34();
  swift_getKeyPath(byte_21CBB77F0);
  swift_getKeyPath(byte_21CBB7818);

  return sub_21CB81DC4();
}

id sub_21C998E14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_21CB80BE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80BD4();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v8 = result;
      v9 = sub_21CB80B74();
      sub_21C73181C(MEMORY[0x277D84F90]);
      v10 = sub_21CB85464();

      [v8 openSensitiveURL:v9 withOptions:v10];

      return (*(v4 + 8))(v6, v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C999028(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a3 + *(type metadata accessor for PMICloudTermsAndConditionsAlert(0) + 24));
  v6 = v4[1];
  v7 = *(v4 + 16);
  v10 = *v4;
  v5 = v10;
  v11 = v6;
  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  MEMORY[0x21CF14A20](&v9);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v9 = (v9 | v3) & 1;
  return sub_21CB84F34();
}

uint64_t sub_21C9990D0(char *a1)
{
  v3 = *(type metadata accessor for PMICloudTermsAndConditionsAlert(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C998D48(a1, v4, v5, v6);
}

uint64_t sub_21C999144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3390, &qword_21CBB7908);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - v4;
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3398, &qword_21CBB7910);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = v21 - v10;
  v29 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33A0, &qword_21CBB7918);
  v22 = MEMORY[0x277CE14C0];
  sub_21C6EADEC(&qword_27CDF33A8, &qword_27CDF33A0, &qword_21CBB7918, MEMORY[0x277CE14C0]);
  sub_21CB85054();
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  v23 = v13;
  (*(v7 + 8))(v9, v6);
  v33 = v12;
  v34 = v14;
  v15 = v2 + *(type metadata accessor for PMGeneratedPasswordCell(0) + 32);
  v16 = *v15;
  v17 = *(v15 + 8);
  v31 = v16;
  v32 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v21[1] = v30;
  sub_21C99C6E0(v2, v5, type metadata accessor for PMGeneratedPassword);
  v18 = type metadata accessor for PMGeneratedPassword(0);
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  v28 = v2;
  v27 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  sub_21C99C624();
  sub_21C71F3FC();
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, v22);
  v19 = v24;
  sub_21CB84404();

  sub_21C6EA794(v5, &qword_27CDF3390, &qword_21CBB7908);

  return (*(v25 + 8))(v11, v19);
}

uint64_t sub_21C99959C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v3 - 8);
  v95 = v78 - v4;
  v94 = sub_21CB81024();
  v112 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v106 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v96 = v78 - v8;
  MEMORY[0x28223BE20](v9);
  v105 = v78 - v10;
  MEMORY[0x28223BE20](v11);
  v103 = v78 - v12;
  v13 = type metadata accessor for PMGeneratedPasswordCell(0);
  v14 = v13 - 8;
  v107 = *(v13 - 8);
  v110 = *(v107 + 64);
  MEMORY[0x28223BE20](v13);
  v109 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33B8, &qword_21CBB7920);
  v16 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v18 = v78 - v17;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33C0, &qword_21CBB7928);
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = v78 - v19;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33C8, &qword_21CBB7930);
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v102 = v78 - v20;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33D0, &qword_21CBB7938);
  v104 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v111 = v78 - v23;
  v101 = a1;
  v114 = a1;
  v113 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33D8, &qword_21CBB7940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33E0, &qword_21CBB7948);
  sub_21C6EADEC(&qword_27CDF33E8, &qword_27CDF33D8, &qword_21CBB7940, MEMORY[0x277CE1138]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF33F0, &qword_21CBB7950);
  v25 = sub_21C99C89C();
  v88 = sub_21C71F3FC();
  v117 = v24;
  v118 = MEMORY[0x277D837D0];
  v119 = v25;
  v120 = v88;
  swift_getOpaqueTypeConformance2();
  sub_21CB825D4();
  v117 = 0x4010000000000000;
  LOBYTE(v118) = 0;
  v26 = sub_21C99CD3C();
  v27 = sub_21C830E5C();
  v28 = v85;
  sub_21CB844C4();
  (*(v16 + 8))(v18, v28);
  v29 = v101;
  v30 = (v101 + *(v14 + 52));
  v84 = *v30;
  v83 = *(v30 + 1);
  v115 = v84;
  v116 = v83;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v78[1] = v117;
  v79 = v119;
  v108 = type metadata accessor for PMGeneratedPasswordCell;
  v31 = v109;
  sub_21C99C6E0(v29, v109, type metadata accessor for PMGeneratedPasswordCell);
  v107 = *(v107 + 80);
  v32 = (v107 + 16) & ~v107;
  v33 = swift_allocObject();
  v100 = type metadata accessor for PMGeneratedPasswordCell;
  sub_21C99C748(v31, v33 + v32, type metadata accessor for PMGeneratedPasswordCell);
  v78[0] = type metadata accessor for PMGeneratedPasswordMenu(0);
  v117 = v28;
  v118 = &type metadata for PMListSubtitleCellLabeledContentStyle;
  v119 = v26;
  v120 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = sub_21C99CCF4(&qword_27CDF3448, type metadata accessor for PMGeneratedPasswordMenu, &unk_21CBB79D8);
  v35 = v86;
  v36 = v82;
  sub_21CB848E4();

  v37 = v35;
  (*(v87 + 8))(v36, v35);
  LOBYTE(v117) = v84;
  v118 = v83;
  sub_21CB84D54();
  v38 = v109;
  sub_21C99C6E0(v29, v109, v108);
  v80 = v32;
  v39 = swift_allocObject() + v32;
  v40 = v38;
  v41 = v100;
  sub_21C99C748(v40, v39, v100);
  v117 = v37;
  v118 = v78[0];
  v119 = OpaqueTypeConformance2;
  v120 = v77;
  swift_getOpaqueTypeConformance2();
  v42 = v89;
  v43 = v102;
  sub_21CB84934();

  (*(v90 + 8))(v43, v42);
  v44 = v93;
  sub_21CB81014();
  v45 = sub_21CB81004();
  v47 = v46;
  v48 = *(v112 + 8);
  v112 += 8;
  v49 = v44;
  v50 = v94;
  v48(v44, v94);
  v117 = v45;
  v118 = v47;
  v51 = v29;
  v52 = v109;
  sub_21C99C6E0(v51, v109, v108);
  v53 = v80;
  v54 = swift_allocObject();
  sub_21C99C748(v52, v54 + v53, v41);
  v55 = v103;
  sub_21CB84DE4();
  sub_21CB81014();
  v56 = sub_21CB81004();
  v58 = v57;
  v48(v49, v50);
  v117 = v56;
  v118 = v58;
  v59 = v95;
  sub_21CB81ED4();
  v60 = sub_21CB81F14();
  (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  sub_21C99C6E0(v101, v52, v108);
  v61 = swift_allocObject();
  sub_21C99C748(v52, v61 + v53, v100);
  v62 = v105;
  sub_21CB84DC4();
  v63 = *(v104 + 16);
  v64 = v91;
  v65 = v92;
  v63(v91, v111, v92);
  v66 = *(v106 + 16);
  v67 = v96;
  v68 = v98;
  v66(v96, v55, v98);
  v69 = v97;
  v70 = v62;
  v71 = v68;
  v66(v97, v70, v68);
  v72 = v99;
  v63(v99, v64, v65);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3458, &qword_21CBB7978);
  v66(&v72[*(v73 + 48)], v67, v71);
  v66(&v72[*(v73 + 64)], v69, v71);
  v74 = *(v106 + 8);
  v74(v105, v71);
  v74(v103, v71);
  v75 = *(v104 + 8);
  v75(v111, v65);
  v74(v69, v71);
  v74(v67, v71);
  return (v75)(v64, v65);
}

void *sub_21C99A2EC(uint64_t a1)
{
  type metadata accessor for PMGeneratedPasswordCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  result = sub_21CB84D54();
  if (v2 == 1)
  {
    return sub_21CB84D64();
  }

  return result;
}

uint64_t sub_21C99A3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v44 = a2;
  v45 = a1;
  v54 = a3;
  v3 = sub_21CB81024();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMGeneratedPassword(0);
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for PMGeneratedPasswordCell(0);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v50 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v41 - v17;
  MEMORY[0x28223BE20](v18);
  v48 = &v41 - v19;
  MEMORY[0x28223BE20](v20);
  v41 = &v41 - v21;
  sub_21CB81ED4();
  v22 = sub_21CB81F14();
  v23 = *(v22 - 8);
  v42 = *(v23 + 56);
  v43 = v23 + 56;
  v42(v12, 0, 1, v22);
  sub_21C99C6E0(v44, v9, type metadata accessor for PMGeneratedPasswordCell);
  sub_21C99C6E0(v45, &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPassword);
  v24 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v25 = (v8 + *(v47 + 80) + v24) & ~*(v47 + 80);
  v26 = swift_allocObject();
  sub_21C99C748(v9, v26 + v24, type metadata accessor for PMGeneratedPasswordCell);
  sub_21C99C748(&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for PMGeneratedPassword);
  v27 = v41;
  sub_21CB84D94();
  v28 = v51;
  sub_21CB81014();
  v29 = sub_21CB81004();
  v31 = v30;
  (*(v52 + 8))(v28, v53);
  v55 = v29;
  v56 = v31;
  sub_21CB81EF4();
  v42(v12, 0, 1, v22);
  sub_21C71F3FC();
  v32 = v48;
  sub_21CB84DC4();
  v33 = *(v14 + 16);
  v34 = v49;
  v33(v49, v27, v13);
  v35 = v50;
  v36 = v32;
  v33(v50, v32, v13);
  v37 = v54;
  v33(v54, v34, v13);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v33(&v37[*(v38 + 48)], v35, v13);
  v39 = *(v14 + 8);
  v39(v36, v13);
  v39(v27, v13);
  v39(v35, v13);
  return (v39)(v34, v13);
}

uint64_t sub_21C99A97C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C99AAA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C99ABD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for PMGeneratedPasswordCell(0);
  v71 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = v4;
  v73 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v61 - v6;
  v8 = sub_21CB83ED4();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB839C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3410, &qword_21CBB7960);
  MEMORY[0x28223BE20](v68);
  v15 = &v61 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF33F0, &qword_21CBB7950);
  MEMORY[0x28223BE20](v69);
  v70 = &v61 - v16;
  v17 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C99C6E0(a1 + *(v20 + 20), v19, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = *v19;
  if (EnumCaseMultiPayload == 1)
  {

    v23 = *(v19 + 1);
    v66 = *(v19 + 2);
    v67 = v23;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v25 = sub_21CB80DD4();
    (*(*(v25 - 8) + 8))(&v19[v24], v25);
  }

  else
  {
    v26 = [*v19 password];
    v27 = sub_21CB855C4();
    v66 = v28;
    v67 = v27;
  }

  v76 = sub_21C99B418();
  v77 = v29;
  v65 = sub_21C71F3FC();
  v30 = sub_21CB84054();
  v32 = v31;
  v76 = v30;
  v77 = v31;
  v61 = a1;
  v34 = v33 & 1;
  v78 = v33 & 1;
  v79 = v35;
  sub_21CB839B4();
  sub_21CB84244();
  (*(v11 + 8))(v13, v10);
  sub_21C74A72C(v30, v32, v34);

  v36 = sub_21CB837E4();
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3438, &qword_21CBB7970) + 36)] = v36;
  v38 = v62;
  v37 = v63;
  v39 = v64;
  (*(v63 + 104))(v62, *MEMORY[0x277CE0A68], v64);
  v40 = *MEMORY[0x277CE0980];
  v41 = sub_21CB83DC4();
  v42 = *(v41 - 8);
  (*(v42 + 104))(v7, v40, v41);
  (*(v42 + 56))(v7, 0, 1, v41);
  v43 = sub_21CB83E24();
  sub_21C6EA794(v7, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v37 + 8))(v38, v39);
  KeyPath = swift_getKeyPath(byte_21CBB7990);
  v45 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3428, &qword_21CBB7968) + 36)];
  *v45 = KeyPath;
  v45[1] = v43;
  sub_21CB855C4();
  v46 = [objc_opt_self() pm_defaults];
  v47 = sub_21CB81E74();
  v48 = &v15[*(v68 + 36)];
  *v48 = v47;
  v48[8] = 1;
  MEMORY[0x28223BE20](v47);
  v49 = v61;
  *(&v61 - 2) = v61;
  type metadata accessor for PMGeneratedPasswordMenu(0);
  sub_21C99CA60();
  sub_21C99CCF4(&qword_27CDF3448, type metadata accessor for PMGeneratedPasswordMenu, &unk_21CBB79D8);
  v50 = v70;
  sub_21CB84154();
  sub_21C6EA794(v15, &qword_27CDF3410, &qword_21CBB7960);
  v51 = v73;
  sub_21C99C6E0(v49, v73, type metadata accessor for PMGeneratedPasswordCell);
  v52 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v53 = swift_allocObject();
  sub_21C99C748(v51, v53 + v52, type metadata accessor for PMGeneratedPasswordCell);
  v54 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3408, &qword_21CBB7958) + 36));
  *v54 = sub_21C99D340;
  v54[1] = v53;
  v75 = 0;
  sub_21CB84D44();
  LOBYTE(v53) = v76;
  v55 = v77;
  v56 = swift_getKeyPath(byte_21CBB7850);
  v57 = v50 + *(v69 + 36);
  *v57 = v53;
  *(v57 + 8) = v55;
  *(v57 + 16) = v56;
  *(v57 + 24) = 0;
  v59 = v66;
  v58 = v67;
  if (sub_21CB85694() <= 29)
  {

    v58 = 0;
    v59 = 0xE000000000000000;
  }

  v76 = v58;
  v77 = v59;
  sub_21C99C89C();
  sub_21CB846E4();

  return sub_21C6EA794(v50, &qword_27CDF33F0, &qword_21CBB7950);
}

uint64_t sub_21C99B418()
{
  v1 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = (v0 + *(type metadata accessor for PMGeneratedPasswordCell(0) + 24));
  v5 = *v4;
  v6 = *(v4 + 1);
  v15[16] = v5;
  v16 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v15[15] == 1)
  {
    v7 = type metadata accessor for PMGeneratedPassword(0);
    sub_21C99C6E0(v0 + *(v7 + 20), v3, type metadata accessor for PMGeneratedPassword.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = *v3;
    if (EnumCaseMultiPayload == 1)
    {

      v10 = *(v3 + 1);
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
      v12 = sub_21CB80DD4();
      (*(*(v12 - 8) + 8))(&v3[v11], v12);
    }

    else
    {
      v13 = [*v3 password];
      v10 = sub_21CB855C4();
    }
  }

  else
  {
    if (qword_27CDEA4B8 != -1)
    {
      swift_once();
    }

    v10 = qword_27CE18768;
  }

  return v10;
}

uint64_t sub_21C99B600(char a1, uint64_t a2)
{
  type metadata accessor for PMGeneratedPasswordCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

double sub_21C99B674@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB83074();
  v16 = 1;
  sub_21C99B76C(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_21C99D204(&v17, &v9);
  sub_21C6EA794(v22, &qword_27CDF3460, &unk_21CBB7980);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_21C99B76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v63 - v5;
  v6 = sub_21CB83ED4();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_21C9933C4();
  v69 = v12;
  v63 = sub_21C71F3FC();
  v13 = sub_21CB84054();
  v15 = v14;
  v17 = v16;
  v18 = *(type metadata accessor for PMGeneratedPassword(0) + 20);
  v67 = a1;
  sub_21C99C6E0(a1 + v18, v11, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v11;
  if (EnumCaseMultiPayload == 1)
  {

    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v22 = sub_21CB80DD4();
    (*(*(v22 - 8) + 8))(v11 + v21, v22);
  }

  else
  {
    v23 = [*v11 wasGeneratedInPrivateBrowsingSession];

    if (v23)
    {
      v24 = sub_21CB837E4();
      goto LABEL_6;
    }
  }

  v24 = sub_21CB837B4();
LABEL_6:
  LODWORD(v68) = v24;
  v25 = sub_21CB83FC4();
  v27 = v26;
  v29 = v28;
  sub_21C74A72C(v13, v15, v17 & 1);

  v31 = v64;
  v30 = v65;
  (*(v64 + 104))(v8, *MEMORY[0x277CE0A68], v65);
  v32 = sub_21CB83DC4();
  v33 = v66;
  (*(*(v32 - 8) + 56))(v66, 1, 1, v32);
  sub_21CB83DE4();
  sub_21CB83E24();
  sub_21C6EA794(v33, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v31 + 8))(v8, v30);
  v34 = sub_21CB84024();
  v65 = v36;
  v66 = v35;
  v38 = v37;

  sub_21C74A72C(v25, v27, v29 & 1);

  v40 = sub_21C993684(v39);
  if (v41)
  {
    v68 = v40;
    v69 = v41;
    v42 = sub_21CB84054();
    v44 = v43;
    v46 = v45;
    v67 = v34;
    LODWORD(v68) = sub_21CB837E4();
    v47 = sub_21CB83FC4();
    v49 = v48;
    v50 = a2;
    v51 = v38;
    v53 = v52;
    v55 = v54;
    sub_21C74A72C(v42, v44, v46 & 1);
    v34 = v67;

    v56 = v53 & 1;
    v38 = v51;
    a2 = v50;
    sub_21C79B058(v47, v49, v56);

    sub_21C74A72C(v47, v49, v56);

    sub_21C79B058(v47, v49, v56);

    v57 = 1;
  }

  else
  {
    v57 = 0;
    v47 = 0;
    v49 = 0;
    v56 = 0;
    v55 = 0;
  }

  v58 = v38 & 1;
  LOBYTE(v68) = v58;
  v59 = v66;
  sub_21C79B058(v34, v66, v58);
  v60 = v65;

  sub_21C99D274(0, v57, v47, v49, v56, v55);
  sub_21C99D2C0(0, v57, v47, v49, v56, v55);
  v61 = v68;
  *a2 = v34;
  *(a2 + 8) = v59;
  *(a2 + 16) = v61;
  *(a2 + 24) = v60;
  *(a2 + 32) = 0;
  *(a2 + 40) = v57;
  *(a2 + 48) = v47;
  *(a2 + 56) = v49;
  *(a2 + 64) = v56;
  *(a2 + 72) = v55;
  sub_21C99D2C0(0, v57, v47, v49, v56, v55);
  sub_21C74A72C(v34, v59, v58);
}

uint64_t sub_21C99BCE0(uint64_t a1)
{
  type metadata accessor for PMGeneratedPasswordCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

void *sub_21C99BD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21C99C748(a1, a4, type metadata accessor for PMGeneratedPassword);
  v7 = type metadata accessor for PMGeneratedPasswordCell(0);
  v8 = (a4 + v7[5]);
  *v8 = a2;
  v8[1] = a3;
  v9 = a4 + v7[6];
  sub_21CB84D44();
  *v9 = v21;
  *(v9 + 8) = v22;
  v10 = a4 + v7[7];
  sub_21CB84D44();
  *v10 = v21;
  *(v10 + 8) = v22;
  v11 = a4 + v7[8];
  sub_21CB84D44();
  *v11 = v21;
  *(v11 + 8) = v22;
  v12 = a4 + v7[9];
  *v12 = swift_getKeyPath(byte_21CBB7850);
  *(v12 + 8) = 0;
  v13 = v7[10];
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v15 = (a4 + v13);
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v21);

  type metadata accessor for PMGeneratedPasswordStore(0);
  sub_21C99CCF4(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
  v16 = sub_21CB82674();
  v18 = v17;

  *v15 = v16;
  v15[1] = v18;
  v19 = a4 + v7[11];
  result = sub_21CB84D44();
  *v19 = v21;
  *(v19 + 8) = v22;
  return result;
}

uint64_t sub_21C99BF9C(uint64_t a1)
{
  v2 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C99C6E0(a1 + *(v5 + 20), v4, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *v4;
  if (EnumCaseMultiPayload == 1)
  {

    v9 = *(v4 + 1);
    v8 = *(v4 + 2);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v11 = sub_21CB80DD4();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
  }

  else
  {
    v12 = [*v4 password];
    v9 = sub_21CB855C4();
    v8 = v13;
  }

  sub_21CADAA84(v9, v8, 1);
}

uint64_t sub_21C99C140@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v21[0] = v9;
  v21[1] = v11;
  sub_21C71F3FC();
  v13 = sub_21CB84054();
  v15 = v14;
  LOBYTE(v8) = v16;
  v18 = v17;
  v19 = sub_21CB84BB4();
  *a1 = v13;
  *(a1 + 8) = v15;
  LOBYTE(v8) = v8 & 1;
  *(a1 + 16) = v8;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  sub_21C79B058(v13, v15, v8);

  sub_21C74A72C(v13, v15, v8);
}

uint64_t sub_21C99C330(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_21C99C6E0(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPasswordMenu);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_21C99C748(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for PMGeneratedPasswordMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC38, &qword_21CBA5418);
  sub_21C6EADEC(&qword_27CDECC40, &qword_27CDECC38, &qword_21CBA5418, MEMORY[0x277CE14C0]);
  return sub_21CB84DA4();
}

void sub_21C99C4E0(uint64_t a1)
{
  type metadata accessor for PMGeneratedPassword(319);
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21C713654(319, &qword_27CDF4000, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_21C713654(319, &qword_27CDEB890, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_21C706378(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_21C99C624()
{
  result = qword_27CDF33B0;
  if (!qword_27CDF33B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3398, &qword_21CBB7910);
    sub_21C6EADEC(&qword_27CDF33A8, &qword_27CDF33A0, &qword_21CBB7918, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF33B0);
  }

  return result;
}

uint64_t sub_21C99C6E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C99C748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21C99C7B0()
{
  v1 = *(type metadata accessor for PMGeneratedPasswordCell(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
  sub_21C9A8C74((v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80))), 0, 0);
}

unint64_t sub_21C99C89C()
{
  result = qword_27CDF33F8;
  if (!qword_27CDF33F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF33F0, &qword_21CBB7950);
    sub_21C99C928();
    sub_21C82F5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF33F8);
  }

  return result;
}

unint64_t sub_21C99C928()
{
  result = qword_27CDF3400;
  if (!qword_27CDF3400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3408, &qword_21CBB7958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3410, &qword_21CBB7960);
    type metadata accessor for PMGeneratedPasswordMenu(255);
    sub_21C99CA60();
    sub_21C99CCF4(&qword_27CDF3448, type metadata accessor for PMGeneratedPasswordMenu, &unk_21CBB79D8);
    swift_getOpaqueTypeConformance2();
    sub_21C7E3870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3400);
  }

  return result;
}

unint64_t sub_21C99CA60()
{
  result = qword_27CDF3418;
  if (!qword_27CDF3418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3410, &qword_21CBB7960);
    sub_21C99CAEC();
    sub_21C99CCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3418);
  }

  return result;
}

unint64_t sub_21C99CAEC()
{
  result = qword_27CDF3420;
  if (!qword_27CDF3420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3428, &qword_21CBB7968);
    sub_21C99CBA4();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3420);
  }

  return result;
}

unint64_t sub_21C99CBA4()
{
  result = qword_27CDF3430;
  if (!qword_27CDF3430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3438, &qword_21CBB7970);
    sub_21CB839C4();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3430);
  }

  return result;
}

unint64_t sub_21C99CCA0()
{
  result = qword_27CDF3440;
  if (!qword_27CDF3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3440);
  }

  return result;
}

uint64_t sub_21C99CCF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C99CD3C()
{
  result = qword_27CDF3450;
  if (!qword_27CDF3450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF33B8, &qword_21CBB7920);
    sub_21C6EADEC(&qword_27CDF33E8, &qword_27CDF33D8, &qword_21CBB7940, MEMORY[0x277CE1138]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF33F0, &qword_21CBB7950);
    sub_21C99C89C();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3450);
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = type metadata accessor for PMGeneratedPasswordCell(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v11 = *(*(v1 - 8) + 64);

  v4 = *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
  v5 = sub_21CB80DD4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);
  v7 = (v0 + v3 + *(type metadata accessor for PMGeneratedPassword(0) + 20));
  type metadata accessor for PMGeneratedPassword.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    v6(v7 + *(v9 + 64), v5);
  }

  sub_21C7025C4(*(v0 + v3 + *(v1 + 36)), *(v0 + v3 + *(v1 + 36) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v11, v2 | 7);
}

uint64_t sub_21C99D188(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_21C99D204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3460, &unk_21CBB7980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C99D274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_21C79B058(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_21C99D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_21C74A72C(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_21C99D340(char a1)
{
  v3 = *(type metadata accessor for PMGeneratedPasswordCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C99B600(a1, v4);
}

uint64_t sub_21C99D3D8(uint64_t a1)
{
  result = type metadata accessor for PMGeneratedPassword(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id PMGeneratedPasswordsLogController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s17PasswordManagerUI33PMGeneratedPasswordsLogControllerC04viewG04with10searchTerm19alwaysShowSearchBarSo06UIViewG0CSo0deF8Delegate_p_SSSbtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v32 = a4;
  v34 = a2;
  v35 = a3;
  v31[1] = a1;
  v4 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  MEMORY[0x28223BE20](v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3480, &qword_21CBB7A68);
  MEMORY[0x28223BE20](v33);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState(0)) init];
  swift_unknownObjectWeakInit();
  v13 = v4[5];
  *&v6[v13] = swift_getKeyPath(byte_21CBB7A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v14 = v4[6];
  KeyPath = swift_getKeyPath(asc_21CBB7AA8);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v16 = &v6[v14];
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v38);

  type metadata accessor for PMGeneratedPasswordStore(0);
  sub_21C99D9AC(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
  v17 = sub_21CB82674();
  v19 = v18;

  *v16 = v17;
  v16[1] = v19;
  v20 = &v6[v4[8]];
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_21CB84D44();
  v21 = &v6[v4[9]];
  v36 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  v22 = *(&v38 + 1);
  *v21 = v38;
  *(v21 + 1) = v22;
  v23 = v4[10];
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *&v6[v23] = v38;
  swift_unknownObjectWeakAssign();
  v6[v4[7]] = v32 & 1;
  v24 = v35;

  *v20 = v34;
  v20[1] = v24;
  v20[2] = 0;
  sub_21C99D9AC(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  v25 = sub_21CB81CE4();
  sub_21C99D9F4(v6, v11);
  v26 = &v11[*(v33 + 36)];
  *v26 = v25;
  v26[1] = v12;
  v27 = v12;
  sub_21C99DA58(v6);
  sub_21C99DAB4(v11, v8);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDF3488, &qword_21CBB7AC8));
  v29 = sub_21CB833B4();

  sub_21C99DB24(v11);
  return v29;
}

uint64_t sub_21C99D9AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C99D9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C99DA58(uint64_t a1)
{
  v2 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C99DAB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3480, &qword_21CBB7A68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C99DB24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3480, &qword_21CBB7A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C99DB8C()
{
  sub_21C72C1CC();
  sub_21CB82F94();
  return v1;
}

void sub_21C99DBD8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_21C99E364();
    if (v2 <= 0x3F)
    {
      sub_21C99E3B4(319);
      if (v3 <= 0x3F)
      {
        sub_21C99E418(319, &qword_27CDF3528, MEMORY[0x277CE0A00]);
        if (v4 <= 0x3F)
        {
          sub_21C99E418(319, &qword_27CDEB898, MEMORY[0x277CDFA28]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21C99DCE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_21CB83E64() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_21CB82834() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v14 = *(v9 + 80) & 0xF8 | 7;
    v15 = *(v11 + 80) & 0xF8 | 7;
    v16 = v12 + ((v10 + v15 + ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14) + 1) & ~v15) + 1;
    v17 = 8 * v16;
    if (v16 > 3)
    {
      goto LABEL_13;
    }

    v20 = ((a2 - v8 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v20 >= 2)
    {
LABEL_13:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_32;
      }

LABEL_21:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        if (v16 > 2)
        {
          if (v16 == 3)
          {
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v16) = *a1;
          }
        }

        else if (v16 == 1)
        {
          LODWORD(v16) = *a1;
        }

        else
        {
          LODWORD(v16) = *a1;
        }
      }

      v24 = v8 + (v16 | v21);
      return (v24 + 1);
    }
  }

LABEL_32:
  if (v7 < 0x7FFFFFFE)
  {
    v23 = *(((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    v24 = v23 - 1;
    if (v24 < 0)
    {
      v24 = -1;
    }

    return (v24 + 1);
  }

  v22 = *(v6 + 48);

  return v22(a1, v7, v5);
}

void sub_21C99DFD0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v28 = *(a4 + 16);
  v7 = *(v28 - 8);
  v27 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_21CB83E64() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_21CB82834() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v7 + 64);
  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = *(v12 + 80) & 0xF8 | 7;
  v17 = v13 + ((v11 + v16 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 9) & ~v15) + 1) & ~v16) + 1;
  if (a3 <= v9)
  {
    v19 = 0;
    v18 = a1;
  }

  else
  {
    v18 = a1;
    if (v17 <= 3)
    {
      v22 = ((a3 - v9 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  if (v9 < a2)
  {
    v20 = ~v9 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> (8 * v17)) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << (8 * v17));
        bzero(v18, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *v18 = v24;
            if (v19 > 1)
            {
LABEL_52:
              if (v19 == 2)
              {
                *&v18[v17] = v21;
              }

              else
              {
                *&v18[v17] = v21;
              }

              return;
            }
          }

          else
          {
            *v18 = v20;
            if (v19 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v18 = v24;
        v18[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v18, v17);
      *v18 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v19)
    {
      v18[v17] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&v18[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v18[v17] = 0;
  }

  else if (v19)
  {
    v18[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v8 < 0x7FFFFFFE)
  {
    v26 = (&v18[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v26 = (a2 - 0x7FFFFFFF);
      v26[1] = 0;
    }

    else
    {
      v26[1] = a2;
    }
  }

  else
  {
    v25 = *(v27 + 56);

    v25(v18, a2, v8, v28);
  }
}

void sub_21C99E364()
{
  if (!qword_27CDF3510)
  {
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF3510);
    }
  }
}

void sub_21C99E3B4(uint64_t a1)
{
  if (!qword_27CDF3518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3520, qword_21CBB7BA8);
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF3518);
    }
  }
}

void sub_21C99E418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB82074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_21C99E4B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3558, &qword_21CBB7C20);
  sub_21CB84D54();
  return v2 / 14.0;
}

uint64_t sub_21C99E518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v83 = sub_21CB82834();
  v78 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v77 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  v4 = *(a1 - 8);
  a1 -= 8;
  v75 = v4;
  MEMORY[0x28223BE20](v5);
  v82 = v6;
  v74 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_21CB82F84();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3530, &qword_21CBB7C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3538, &qword_21CBB7C18);
  v8 = *(a1 + 24);
  v84 = *(a1 + 32);
  v85 = v8;
  sub_21CB831E4();
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v57 = sub_21CB84F04();
  v9 = sub_21CB84B94();
  v59 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = sub_21CB828F4();
  v72 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v81 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3520, qword_21CBB7BA8);
  WitnessTable = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  v93 = v58;
  v94 = MEMORY[0x277CDF678];
  v15 = swift_getWitnessTable();
  v16 = sub_21C99FB6C();
  v89 = v12;
  v90 = v14;
  v91 = v15;
  v92 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v80 = &v54 - v18;
  v73 = v12;
  v89 = v12;
  v90 = v14;
  v67 = v14;
  v61 = v15;
  v91 = v15;
  v92 = v16;
  v60 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_21C99FC44();
  v71 = OpaqueTypeMetadata2;
  v89 = OpaqueTypeMetadata2;
  v90 = v83;
  v65 = OpaqueTypeConformance2;
  v91 = OpaqueTypeConformance2;
  v92 = v20;
  v64 = v20;
  v68 = swift_getOpaqueTypeMetadata2();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v62 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v63 = &v54 - v23;
  v86 = v85;
  v87 = v84;
  v24 = v69;
  v88 = v69;
  sub_21CB84B84();
  v25 = (v24 + *(a1 + 44));
  v27 = v25[1];
  v89 = *v25;
  v26 = v89;
  v90 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3558, &qword_21CBB7C20);
  sub_21CB84D54();
  v89 = v26;
  v90 = v27;
  sub_21CB84D54();
  sub_21CB85214();
  sub_21CB84794();
  (*(v59 + 8))(v11, v9);
  v28 = v24 + *(a1 + 48);
  v29 = *v28;
  LOBYTE(v15) = *(v28 + 8);

  if ((v15 & 1) == 0)
  {
    sub_21CB85B04();
    v30 = sub_21CB83C94();
    sub_21CB81C14();

    v31 = v54;
    sub_21CB82F74();
    swift_getAtKeyPath();
    j__swift_release(v29);
    (*(v55 + 8))(v31, v56);
    v29 = v89;
  }

  v58 = v29;
  v89 = v29;
  v32 = v75;
  v59 = *(v75 + 16);
  v33 = v74;
  v34 = v76;
  (v59)(v74, v24, v76);
  v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = v84;
  *(v36 + 16) = v85;
  *(v36 + 24) = v37;
  v75 = *(v32 + 32);
  (v75)(v36 + v35, v33, v34);
  v38 = v81;
  v39 = v73;
  sub_21CB84934();

  (*(v72 + 8))(v38, v39);
  v40 = v77;
  sub_21C7448E0(v77);
  (v59)(v33, v24, v34);
  v41 = swift_allocObject();
  v42 = v84;
  *(v41 + 16) = v85;
  *(v41 + 24) = v42;
  (v75)(v41 + v35, v33, v34);
  v43 = v62;
  v44 = v71;
  v45 = v83;
  v46 = v65;
  v47 = v64;
  v48 = v80;
  sub_21CB84934();

  (*(v78 + 8))(v40, v45);
  (*(v70 + 8))(v48, v44);
  v89 = v44;
  v90 = v45;
  v91 = v46;
  v92 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v63;
  v51 = v68;
  sub_21C72BE10(v43, v68, v49);
  v52 = *(v66 + 8);
  v52(v43, v51);
  sub_21C72BE10(v50, v51, v49);
  return (v52)(v50, v51);
}

uint64_t sub_21C99EFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3530, &qword_21CBB7C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3538, &qword_21CBB7C18);
  sub_21CB831E4();
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v6 = sub_21CB84F04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v16[-v11];
  v17 = a2;
  v18 = a3;
  v19 = a1;
  sub_21CB85214();
  sub_21CB84EF4();
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v9, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_21C72BE10(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_21C99F1E0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v6 = *(a3 + 16);
  v51[0] = a3;
  v7 = *(v6 + 16);
  v8 = v6;
  v51[3] = v6;
  v9 = *(*(v7 + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v51[4] = v51 - v11;
  v63 = *(a2 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3538, &qword_21CBB7C18);
  v51[5] = *(*(v8 + 8) + 8);
  v19 = sub_21CB831E4();
  v55 = v18;
  v58 = v19;
  v56 = sub_21CB828F4();
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v61 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v57 = v51 - v22;
  MEMORY[0x28223BE20](v23);
  v60 = v51 - v24;
  v26 = type metadata accessor for PMProgressView(0, a2, a3, v25);
  sub_21C99E4B0(v26);
  v27 = 0.0;
  sub_21CB82164();
  v28 = v85;
  v29 = v86;
  v30 = v87;
  v52 = v88;
  v31 = v89;
  v32 = sub_21CB85214();
  v53 = v33;
  v54 = v32;
  v51[2] = v9;
  v51[1] = swift_getAssociatedConformanceWitness();
  sub_21CB86384();
  sub_21CB86324();
  sub_21CB86394();
  v34 = *(v63 + 8);
  v63 += 8;
  v34(v14, a2);
  sub_21C99FD18();
  sub_21CB85454();
  if (v84 > 0.0)
  {
    v27 = v84;
  }

  v35 = sub_21CB84AC4();
  sub_21C99E4B0(v26);
  sub_21CB82164();
  v36 = sub_21CB85214();
  v38 = v37;
  sub_21CB85384();
  *&v74 = 0;
  *(&v74 + 1) = v27;
  v75 = v81;
  v76 = v82;
  *&v77 = v83;
  *(&v77 + 1) = v35;
  LOWORD(v78) = 256;
  *(&v78 + 1) = v36;
  *&v79 = v38;
  *(&v79 + 1) = 0xBFF921FB54442D18;
  *&v80 = v39;
  *(&v80 + 1) = v40;
  sub_21CB86384();
  sub_21CB86324();
  LOBYTE(v36) = sub_21CB85574();
  v34(v17, a2);
  if (v36)
  {
    sub_21CB85264();
  }

  else
  {
    sub_21CB85244();
  }

  v41 = sub_21C99FD6C();
  v42 = v57;
  sub_21CB84994();

  v72[4] = v78;
  v72[5] = v79;
  v72[6] = v80;
  v72[0] = v74;
  v72[1] = v75;
  v72[2] = v76;
  v72[3] = v77;
  sub_21C6EA794(v72, &qword_27CDF3538, &qword_21CBB7C18);
  WitnessTable = swift_getWitnessTable();
  v71[2] = v41;
  v71[3] = WitnessTable;
  v44 = v56;
  v45 = swift_getWitnessTable();
  v46 = v60;
  sub_21C72BE10(v42, v44, v45);
  v47 = v59;
  v48 = *(v59 + 8);
  v48(v42, v44);
  *&v67 = v28;
  *(&v67 + 1) = v29;
  *&v68 = v30;
  *(&v68 + 1) = v52;
  *&v69 = v31;
  WORD4(v69) = 256;
  *(&v69 + 10) = v90;
  HIWORD(v69) = v91;
  *&v70 = v54;
  *(&v70 + 1) = v53;
  v71[0] = &v67;
  v49 = v61;
  (*(v47 + 16))(v61, v46, v44);
  v71[1] = v49;
  v66[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3530, &qword_21CBB7C10);
  v66[1] = v44;
  v64 = sub_21C99FE10(&qword_27CDF3580, &qword_27CDF3530, &qword_21CBB7C10);
  v65 = v45;
  sub_21C74A55C(v71, 2uLL, v66);
  v48(v46, v44);
  v48(v49, v44);
  v73[0] = v67;
  v73[1] = v68;
  v73[2] = v69;
  v73[3] = v70;
  return sub_21C6EA794(v73, &qword_27CDF3530, &qword_21CBB7C10);
}

void sub_21C99F8D0(uint64_t a1)
{
  v3 = sub_21CB83E64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB82F84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 40);
  v25[0] = v1;
  v12 = v1 + v11;
  v13 = *v12;
  v14 = *(v12 + 8);

  if ((v14 & 1) == 0)
  {
    sub_21CB85B04();
    v15 = a1;
    v16 = v4;
    v17 = v3;
    v18 = sub_21CB83C94();
    sub_21CB81C14();

    v3 = v17;
    v4 = v16;
    a1 = v15;
    sub_21CB82F74();
    swift_getAtKeyPath();
    j__swift_release(v13);
    (*(v8 + 8))(v10, v7);
    v13 = v26;
  }

  if (v13)
  {
    v19 = v25[0];
    sub_21C95B55C(v6);
    v20 = sub_21CB83D54();
    (*(v4 + 8))(v6, v3);
    [v20 lineHeight];
    v21 = (v19 + *(a1 + 36));
    v22 = *v21;
    v23 = v21[1];
    v25[1] = v24;
    v26 = v22;
    v27 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3558, &qword_21CBB7C20);
    sub_21CB84D64();
  }
}

unint64_t sub_21C99FB6C()
{
  result = qword_27CDF3540;
  if (!qword_27CDF3540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3520, qword_21CBB7BA8);
    sub_21C99FBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3540);
  }

  return result;
}

unint64_t sub_21C99FBF0()
{
  result = qword_27CDF3548;
  if (!qword_27CDF3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3548);
  }

  return result;
}

unint64_t sub_21C99FC44()
{
  result = qword_27CDF3550;
  if (!qword_27CDF3550)
  {
    sub_21CB82834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3550);
  }

  return result;
}

unint64_t sub_21C99FD18()
{
  result = qword_27CDF3560;
  if (!qword_27CDF3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3560);
  }

  return result;
}

unint64_t sub_21C99FD6C()
{
  result = qword_27CDF3568;
  if (!qword_27CDF3568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3538, &qword_21CBB7C18);
    sub_21C99FE10(&qword_27CDF3570, &qword_27CDF3578, &qword_21CBB7C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3568);
  }

  return result;
}

uint64_t sub_21C99FE10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21C99FEAC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_27CE18500 = v4;
  *algn_27CE18508 = v6;
  return result;
}

uint64_t sub_21C99FFB0@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v78 = sub_21CB83554();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  v103 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v104 = v3;
  v105 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_21CB83584();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB830D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v84 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_21CB829D4();
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3630, &unk_21CBB7D30);
  v10 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v12 = &v75 - v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3610, &qword_21CBB7D20);
  MEMORY[0x28223BE20](v83);
  v14 = &v75 - v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3608, &qword_21CBB7D18);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v75 - v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35F8, &qword_21CBB7D08);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v75 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35F0, &qword_21CBB7D00);
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v107 = (&v75 - v17);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3670, &qword_21CBB7D50);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v92 = &v75 - v18;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35E8, &qword_21CBB7CF8);
  MEMORY[0x28223BE20](v90);
  v97 = &v75 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35D8, &qword_21CBB7CF0);
  MEMORY[0x28223BE20](v96);
  v98 = &v75 - v20;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35B8, &unk_21CBB7CD8);
  MEMORY[0x28223BE20](v109);
  v102 = &v75 - v21;
  v108 = v1;
  v111 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3678, &qword_21CBB7D58);
  sub_21C6EADEC(&qword_27CDF3680, &qword_27CDF3678, &qword_21CBB7D58, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  sub_21CB85294();
  sub_21C6EADEC(&qword_27CDF3638, &qword_27CDF3630, &unk_21CBB7D30, MEMORY[0x277CDE580]);
  sub_21C9A3114(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v22 = v79;
  v23 = v81;
  sub_21CB849C4();
  (*(v82 + 8))(v9, v23);
  (*(v10 + 8))(v12, v22);
  v24 = v84;
  sub_21CB830A4();
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3628, &qword_21CBB7D28) + 36);
  (*(v6 + 16))(&v14[v25], v24, v5);
  v26 = *(v6 + 56);
  v26(&v14[v25], 0, 1, v5);
  KeyPath = swift_getKeyPath(a0_35);
  v28 = v83;
  v29 = &v14[*(v83 + 36)];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v6 + 32))(v29 + v30, v24, v5);
  v31 = v5;
  v32 = v80;
  v26(v29 + v30, 0, 1, v31);
  *v29 = KeyPath;
  v33 = sub_21C9A2CF8();
  sub_21CB84064();
  sub_21C6EA794(v14, &qword_27CDF3610, &qword_21CBB7D20);
  if (qword_27CDEA3D0 != -1)
  {
    swift_once();
  }

  v114 = qword_27CE18500;
  v115 = *algn_27CE18508;
  *&v112 = v28;
  *(&v112 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_21C71F3FC();
  v36 = MEMORY[0x277D837D0];
  v37 = v87;
  v38 = v86;
  sub_21CB842F4();
  v39 = (*(v85 + 8))(v32, v38);
  MEMORY[0x28223BE20](v39);
  v40 = v108;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3600, &qword_21CBB7D10);
  v114 = v38;
  v115 = v36;
  v116 = OpaqueTypeConformance2;
  v117 = v35;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  v44 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
  v114 = v43;
  v115 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v89;
  sub_21CB84894();
  v47 = v46;
  (*(v88 + 8))(v37, v46);
  v48 = v110;
  v49 = (v40 + *(v110 + 32));
  v50 = *v49;
  v51 = v49[1];
  v52 = v49[2];
  v88 = v50;
  *&v112 = v50;
  *(&v112 + 1) = v51;
  v87 = v51;
  v86 = v52;
  v113 = v52;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D74();
  if ((sub_21CB85174() & 1) != 0 || (*(v40 + *(v48 + 28)) & 1) == 0)
  {
    v54 = v99;
    sub_21CB83574();
  }

  else
  {
    v53 = v76;
    sub_21CB83544();
    v54 = v99;
    sub_21CB83534();
    (*(v77 + 8))(v53, v78);
  }

  v114 = v47;
  v115 = v41;
  v116 = v42;
  v117 = v45;
  swift_getOpaqueTypeConformance2();
  v55 = v93;
  v56 = v92;
  v57 = v107;
  sub_21CB84114();

  (*(v100 + 8))(v54, v101);
  (*(v91 + 8))(v57, v55);
  v58 = v108;
  v59 = v105;
  v107 = type metadata accessor for PMGeneratedPasswordsLogView;
  sub_21C9A315C(v108, v105, type metadata accessor for PMGeneratedPasswordsLogView);
  v60 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v61 = swift_allocObject();
  v103 = type metadata accessor for PMGeneratedPasswordsLogView;
  sub_21C9A31C4(v59, v61 + v60, type metadata accessor for PMGeneratedPasswordsLogView);
  v62 = v97;
  (*(v94 + 32))(v97, v56, v95);
  v63 = &v62[*(v90 + 36)];
  *v63 = sub_21C9A2F38;
  v63[1] = v61;
  v63[2] = 0;
  v63[3] = 0;
  v114 = v88;
  v115 = v87;
  v116 = v86;
  sub_21CB84D54();
  v64 = v112;
  sub_21C9A315C(v58, v59, type metadata accessor for PMGeneratedPasswordsLogView);
  v65 = swift_allocObject();
  sub_21C9A31C4(v59, v65 + v60, type metadata accessor for PMGeneratedPasswordsLogView);
  v66 = v62;
  v67 = v98;
  sub_21C716934(v66, v98, &qword_27CDF35E8, &qword_21CBB7CF8);
  v68 = v67 + *(v96 + 36);
  *v68 = v64;
  *(v68 + 16) = sub_21C9A2F38;
  *(v68 + 24) = v65;
  v69 = v110;
  swift_getKeyPath(byte_21CBB7DA0);
  swift_getKeyPath(byte_21CBB7DC8);
  sub_21CB81DB4();

  v70 = v114;
  sub_21C9A315C(v58, v59, v107);
  v71 = swift_allocObject();
  sub_21C9A31C4(v59, v71 + v60, v103);
  v72 = v102;
  sub_21C716934(v67, v102, &qword_27CDF35D8, &qword_21CBB7CF0);
  v73 = (v72 + *(v109 + 36));
  *v73 = v70;
  v73[1] = sub_21C9A2F94;
  v73[2] = v71;
  v112 = *(v58 + *(v69 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB10, &qword_21CBA5208);
  sub_21CB84D74();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA8, &qword_21CBA36B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35C0, &qword_21CBB7CE8);
  sub_21C9A2954();
  sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0, &unk_21CBBE7F0);
  sub_21C6EADEC(&qword_27CDF3668, &qword_27CDF35C0, &qword_21CBB7CE8, MEMORY[0x277CDDA18]);
  sub_21CB847C4();

  return sub_21C6EA794(v72, &qword_27CDF35B8, &unk_21CBB7CD8);
}

uint64_t sub_21C9A1088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a1;
  v42 = a2;
  v2 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  v3 = v2 - 8;
  v39 = *(v2 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3690, &unk_21CBB7E78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - v9;
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() generatedPasswordExpirationTimeInDays];
  sub_21CB81014();
  sub_21CB81004();
  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21CBA0690;
  v43 = v14;
  sub_21C8C5CE4();
  v16 = sub_21CB85EE4();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_21C7C0050();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v36 = sub_21CB85594();
  v20 = v19;

  v21 = v37;
  v22 = (v37 + *(v3 + 44));
  v24 = *v22;
  v23 = v22[1];
  v43 = v24;
  v44 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3688, &unk_21CBB7E68);
  sub_21CB84D54();
  v25 = v38;
  sub_21C9A315C(v21, v38, type metadata accessor for PMGeneratedPasswordsLogView);
  v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v27 = swift_allocObject();
  sub_21C9A31C4(v25, v27 + v26, type metadata accessor for PMGeneratedPasswordsLogView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  type metadata accessor for PMGeneratedPassword.ID(0);
  type metadata accessor for PMGeneratedPasswordCell(0);
  sub_21C6EADEC(&qword_27CDF3698, &qword_27CDEBEA8, &unk_21CBA38A0, MEMORY[0x277D83980]);
  sub_21C9A3114(&qword_27CDF36A0, type metadata accessor for PMGeneratedPasswordCell, &unk_21CBB78B8);
  sub_21C9A3114(&qword_27CDF36A8, type metadata accessor for PMGeneratedPassword, &unk_21CBB7438);
  v28 = v40;
  sub_21CB84FF4();
  v29 = *(v6 + 16);
  v30 = v41;
  v29(v41, v28, v5);
  v31 = v42;
  *v42 = v36;
  v31[1] = v20;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF36B0, &qword_21CBB7E88);
  v29(v32 + *(v33 + 48), v30, v5);
  v34 = *(v6 + 8);

  v34(v28, v5);
  v34(v30, v5);
}

void *sub_21C9A15C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = type metadata accessor for PMGeneratedPassword(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_21C9A315C(a1, &v19 - v13, type metadata accessor for PMGeneratedPassword);
  sub_21C9A315C(a2, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPasswordsLogView);
  sub_21C9A315C(a1, v11, type metadata accessor for PMGeneratedPassword);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v7 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_21C9A31C4(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for PMGeneratedPasswordsLogView);
  sub_21C9A31C4(v11, v17 + v16, type metadata accessor for PMGeneratedPassword);
  return sub_21C99BD54(v14, sub_21C9A322C, v17, v20);
}

uint64_t sub_21C9A1804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  v5 = v4 - 8;
  v19[0] = *(v4 - 8);
  v6 = *(v19[0] + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMGeneratedPassword(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = type metadata accessor for PMAddAccountModel.Configuration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C9A315C(a2, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPassword);
  sub_21C848830(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  sub_21C9A315C(a1, v7, type metadata accessor for PMGeneratedPasswordsLogView);
  sub_21C9A315C(a2, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPassword);
  v14 = (*(v19[0] + 80) + 16) & ~*(v19[0] + 80);
  v15 = (v6 + *(v9 + 80) + v14) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_21C9A31C4(v7, v16 + v14, type metadata accessor for PMGeneratedPasswordsLogView);
  sub_21C9A31C4(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PMGeneratedPassword);
  type metadata accessor for PMAddAccountModel(0);
  swift_allocObject();
  v17 = sub_21C848014(v13, sub_21C9A35B4, v16);
  v20 = *(a1 + *(v5 + 48));
  v19[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB10, &qword_21CBA5208);
  return sub_21CB84D64();
}

void sub_21C9A1AC0(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    type metadata accessor for PMGeneratedPasswordsLogView(0);
    sub_21C9A8C74(a3, 0, 0);
  }
}

uint64_t sub_21C9A1B10(uint64_t a1)
{
  v2 = sub_21CB83604();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_21CB835C4();
  v10 = a1;
  type metadata accessor for PMPlatformRoleButton(0);
  sub_21C9A3114(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  sub_21CB82194();
  v7 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF131E0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21C9A1CEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v3 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81EE4();
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_21C9A315C(v19, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGeneratedPasswordsLogView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  result = sub_21C9A31C4(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMGeneratedPasswordsLogView);
  *a2 = v11;
  a2[1] = v13;
  v17 = (a2 + *(v10 + 24));
  *v17 = sub_21C9A3034;
  v17[1] = v15;
  return result;
}

uint64_t sub_21C9A1F00(uint64_t a1)
{
  v1 = sub_21CB823B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong passwordManagerLogViewControllerWantsToDismiss];

    return swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for PMGeneratedPasswordsLogView(0);
    sub_21C95B2C8(v4);
    sub_21CB823A4();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_21C9A201C()
{
  v1 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  v2 = (v0 + *(v1 + 32));
  v3 = *v2;
  v4 = *(v2 + 2);
  v20 = v3;
  v21 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();

  if ((v19 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v5 = v18 & 0xFFFFFFFFFFFFLL;
  }

  swift_getKeyPath(byte_21CBB7DA0);
  swift_getKeyPath(byte_21CBB7DC8);
  if (v5)
  {
    sub_21CB81DB4();

    MEMORY[0x28223BE20](v6);
    v17[2] = v0;
    sub_21CAE82B0(sub_21C9A300C, v17, v7);
    v8 = (v0 + *(v1 + 36));
    v10 = *v8;
    v9 = v8[1];
    *&v20 = v10;
    *(&v20 + 1) = v9;
    v18 = v11;
  }

  else
  {
    sub_21CB81DB4();

    v12 = v20;
    v13 = (v0 + *(v1 + 36));
    v15 = *v13;
    v14 = v13[1];
    *&v20 = v15;
    *(&v20 + 1) = v14;
    v18 = v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3688, &unk_21CBB7E68);
  return sub_21CB84D64();
}

uint64_t sub_21C9A21BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB823B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C9A201C();
  v7 = (a2 + *(type metadata accessor for PMGeneratedPasswordsLogView(0) + 36));
  v9 = *v7;
  v8 = v7[1];
  v13[2] = v9;
  v13[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3688, &unk_21CBB7E68);
  sub_21CB84D54();
  v10 = *(v13[1] + 16);

  if (!v10)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong passwordManagerLogViewControllerWantsToDismiss];
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_21C95B2C8(v6);
      sub_21CB823A4();
      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_21C9A2318(uint64_t *a1)
{
  type metadata accessor for PMAddAccountView(0);
  sub_21C9A3114(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView, &unk_21CBA8F48);

  return sub_21CB82924();
}

uint64_t sub_21C9A23B8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PMAddAccountModel(0);
  sub_21C9A3114(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel, &unk_21CBA89A8);

  *a2 = sub_21CB82674();
  a2[1] = v3;
  a2[2] = 0x4079000000000000;
  v4 = type metadata accessor for PMAddAccountView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath(byte_21CBB7DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  sub_21C721B58();
  sub_21CB81FA4();
  v6 = v4[8];
  KeyPath = swift_getKeyPath(byte_21CBB7E20);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v8 = (a2 + v6);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v14);

  type metadata accessor for PMGroupsStore(0);
  sub_21C9A3114(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v9 = sub_21CB82674();
  v11 = v10;

  *v8 = v9;
  v8[1] = v11;
  v12 = a2 + v4[9];
  result = swift_getKeyPath(aX_46);
  *v12 = result;
  v12[8] = 0;
  return result;
}

uint64_t sub_21C9A25AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPassword.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C9A315C(a1 + *(v7 + 20), v6, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v6;
  if (EnumCaseMultiPayload == 1)
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v11 = sub_21CB80DD4();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = [*v6 protectionSpace];

    v9 = v12;
    if (!v12)
    {
      v20 = 1;
      return v20 & 1;
    }
  }

  v13 = [v9 host];
  v14 = sub_21CB855C4();
  v16 = v15;

  v25 = v14;
  v26 = v16;
  v17 = (a2 + *(type metadata accessor for PMGeneratedPasswordsLogView(0) + 32));
  v18 = *v17;
  v19 = *(v17 + 2);
  v23 = v18;
  v24 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();
  v23 = *&v22[8];
  sub_21C71F3FC();
  v20 = sub_21CB85EC4();

  return v20 & 1;
}

uint64_t sub_21C9A27C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF35B0, &qword_21CBB7CD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35B8, &unk_21CBB7CD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDA8, &qword_21CBA36B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35C0, &qword_21CBB7CE8);
  sub_21C9A2954();
  sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0, &unk_21CBBE7F0);
  sub_21C6EADEC(&qword_27CDF3668, &qword_27CDF35C0, &qword_21CBB7CE8, MEMORY[0x277CDDA18]);
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

unint64_t sub_21C9A2954()
{
  result = qword_27CDF35C8;
  if (!qword_27CDF35C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35B8, &unk_21CBB7CD8);
    sub_21C9A2A0C();
    sub_21C6EADEC(&qword_27CDF3658, &qword_27CDF3660, &qword_21CBB7D48, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF35C8);
  }

  return result;
}

unint64_t sub_21C9A2A0C()
{
  result = qword_27CDF35D0;
  if (!qword_27CDF35D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35D8, &qword_21CBB7CF0);
    sub_21C9A2AC4();
    sub_21C6EADEC(&qword_27CDF3648, &qword_27CDF3650, &qword_21CBB7D40, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF35D0);
  }

  return result;
}

unint64_t sub_21C9A2AC4()
{
  result = qword_27CDF35E0;
  if (!qword_27CDF35E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35E8, &qword_21CBB7CF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35F0, &qword_21CBB7D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF35F8, &qword_21CBB7D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3608, &qword_21CBB7D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3610, &qword_21CBB7D20);
    sub_21C9A2CF8();
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
    sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF35E0);
  }

  return result;
}

unint64_t sub_21C9A2CF8()
{
  result = qword_27CDF3618;
  if (!qword_27CDF3618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3610, &qword_21CBB7D20);
    sub_21C9A2DB0();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3618);
  }

  return result;
}

unint64_t sub_21C9A2DB0()
{
  result = qword_27CDF3620;
  if (!qword_27CDF3620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3628, &qword_21CBB7D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3630, &unk_21CBB7D30);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDF3638, &qword_27CDF3630, &unk_21CBB7D30, MEMORY[0x277CDE580]);
    sub_21C9A3114(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3620);
  }

  return result;
}

uint64_t sub_21C9A2F94(uint64_t a1)
{
  v3 = *(type metadata accessor for PMGeneratedPasswordsLogView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9A21BC(a1, v4);
}

uint64_t sub_21C9A3034()
{
  v1 = *(type metadata accessor for PMGeneratedPasswordsLogView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9A1F00(v2);
}

void *sub_21C9A3094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMGeneratedPasswordsLogView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C9A15C4(a1, v6, a2);
}

uint64_t sub_21C9A3114(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C9A315C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9A31C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9A322C()
{
  v1 = *(type metadata accessor for PMGeneratedPasswordsLogView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21C9A1804(v0 + v2, v5);
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for PMGeneratedPassword(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v18 = *(*(v5 - 8) + 64);
  v8 = v0 + v3;
  MEMORY[0x21CF16E70](v8);
  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB823B4();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
  v12 = sub_21CB80DD4();
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v7 + v11, v12);
  v14 = (v0 + v7 + *(v5 + 20));
  type metadata accessor for PMGeneratedPassword.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    v13(v14 + *(v16 + 64), v12);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v18, v2 | v6 | 7);
}

void sub_21C9A35B4(uint64_t a1)
{
  v3 = *(type metadata accessor for PMGeneratedPasswordsLogView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
  v7 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));

  sub_21C9A1AC0(a1, v1 + v4, v7);
}

double PMWebsiteNameFetchingDebuggerView.init()@<D0>(void *a1@<X8>)
{
  *a1 = swift_getKeyPath(byte_21CBB7EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for PMWebsiteNameFetchingDebuggerView(0);
  v3 = v2[5];
  *(a1 + v3) = sub_21CB81E64();
  v4 = a1 + v2[6];
  sub_21CB84D44();
  *v4 = v7;
  *(v4 + 1) = *(&v7 + 1);
  v5 = a1 + v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB84D44();
  result = *&v7;
  *v5 = v7;
  *(v5 + 2) = v8;
  return result;
}

uint64_t type metadata accessor for PMWebsiteNameFetchingDebuggerView(uint64_t a1)
{
  result = qword_27CDF36D0;
  if (!qword_27CDF36D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double PMWebsiteNameFetchingDebuggerView.body.getter@<D0>(char *a1@<X8>)
{
  sub_21C9A386C(v1, a1);
  v3 = sub_21CB83CE4();
  v4 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF36C8, &qword_21CBB7EE0) + 36)];
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  v4[40] = 1;
  return result;
}

void *sub_21C9A386C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = sub_21CB83124();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3710, &qword_21CBB7F78);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v61 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3718, &unk_21CBB7F80);
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v64 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  sub_21CB83134();
  v15 = sub_21CB84034();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_21CB85224();
  sub_21CB82AC4();
  v93 = v19 & 1;
  *&v83 = v15;
  *(&v83 + 1) = v17;
  LOBYTE(v84) = v19 & 1;
  *(&v84 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
  sub_21C7B8EA4();
  v63 = v14;
  sub_21CB846B4();
  v92[6] = v89;
  v92[7] = v90;
  v92[8] = v91;
  v92[2] = v85;
  v92[3] = v86;
  v92[4] = v87;
  v92[5] = v88;
  v92[0] = v83;
  v92[1] = v84;
  sub_21C6EA794(v92, &qword_27CDEB208, &unk_21CBB3F40);
  *v9 = sub_21CB83074();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3720, &unk_21CBB7F90);
  sub_21C9A3ED4(a1, &v9[*(v22 + 44)]);
  LOBYTE(v15) = sub_21CB83D44();
  sub_21CB81F24();
  v23 = &v9[*(v5 + 44)];
  *v23 = v15;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_21CB83114();
  sub_21CB83104();
  v28 = (a1 + *(type metadata accessor for PMWebsiteNameFetchingDebuggerView(0) + 28));
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  *&v83 = *v28;
  *(&v83 + 1) = v30;
  *&v84 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  v62 = v9;
  if (*(&v72 + 1) && (, *&v83 = v29, *(&v83 + 1) = v30, *&v84 = v31, result = sub_21CB84D54(), !*(&v72 + 1)))
  {
    __break(1u);
  }

  else
  {
    sub_21CB830F4();

    sub_21CB83104();
    sub_21CB83144();
    v33 = sub_21CB84034();
    v56 = v34;
    v57 = v33;
    v36 = v35;
    v38 = v37;
    sub_21CB85224();
    sub_21CB82AC4();
    v39 = v36 & 1;
    v82 = v36 & 1;
    v40 = v59;
    v41 = v60;
    v42 = *(v59 + 16);
    v43 = v64;
    v42(v64, v63, v60);
    v44 = v61;
    sub_21C76F948(v62, v61);
    v45 = v58;
    v42(v58, v43, v41);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3728, &qword_21CBB7FA0);
    sub_21C76F948(v44, &v45[*(v46 + 48)]);
    v47 = &v45[*(v46 + 64)];
    v49 = v56;
    v48 = v57;
    *&v72 = v57;
    *(&v72 + 1) = v56;
    LOBYTE(v73) = v39;
    *(&v73 + 1) = *v81;
    DWORD1(v73) = *&v81[3];
    *(&v73 + 1) = v38;
    v78 = v69;
    v79 = v70;
    v80 = v71;
    v76 = v67;
    v77 = v68;
    v74 = v65;
    v75 = v66;
    v50 = v70;
    *(v47 + 6) = v69;
    *(v47 + 7) = v50;
    *(v47 + 8) = v80;
    v51 = v75;
    *(v47 + 2) = v74;
    *(v47 + 3) = v51;
    v52 = v77;
    *(v47 + 4) = v76;
    *(v47 + 5) = v52;
    v53 = v73;
    *v47 = v72;
    *(v47 + 1) = v53;
    sub_21C6EDBAC(&v72, &v83, &qword_27CDEB208, &unk_21CBB3F40);
    sub_21C76F9B8(v62);
    v54 = *(v40 + 8);
    v54(v63, v41);
    *&v83 = v48;
    *(&v83 + 1) = v49;
    LOBYTE(v84) = v39;
    *(&v84 + 1) = *v81;
    DWORD1(v84) = *&v81[3];
    *(&v84 + 1) = v38;
    v89 = v69;
    v90 = v70;
    v91 = v71;
    v85 = v65;
    v86 = v66;
    v87 = v67;
    v88 = v68;
    sub_21C6EA794(&v83, &qword_27CDEB208, &unk_21CBB3F40);
    sub_21C76F9B8(v44);
    return (v54)(v64, v41);
  }

  return result;
}

uint64_t sub_21C9A3ED4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v95 = a1;
  v93 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v86 = v69 - v2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  MEMORY[0x28223BE20](v88);
  v92 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = v69 - v5;
  MEMORY[0x28223BE20](v6);
  v90 = v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE080, &qword_21CBD0220);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = v69 - v9;
  v81 = sub_21CB82704();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v71 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMWebsiteNameFetchingDebuggerView(0);
  v70 = *(v11 - 8);
  v96 = *(v70 + 64);
  v12 = v11 - 8;
  v76 = v11 - 8;
  MEMORY[0x28223BE20](v11 - 8);
  v94 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v72 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v69 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3730, &qword_21CBB7FA8);
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v18 = v69 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3738, &qword_21CBB7FB0);
  v77 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v20 = v69 - v19;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3740, &qword_21CBB7FB8);
  v79 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v22 = v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3748, &unk_21CBB7FC0);
  v84 = *(v23 - 8);
  v85 = v23;
  MEMORY[0x28223BE20](v23);
  v83 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v97 = v69 - v26;
  sub_21CB83134();
  v27 = *(v12 + 28);
  v28 = v95;
  v69[1] = *(v95 + v27);
  sub_21CB81EB4();
  sub_21CB85304();
  v29 = v94;
  sub_21C9A5130(v28, v94);
  v30 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v31 = swift_allocObject();
  sub_21C9A5194(v29, v31 + v30);
  v32 = v71;
  sub_21CB826F4();
  v33 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  sub_21CB84944();

  (*(v80 + 8))(v32, v81);
  (*(v72 + 8))(v16, v14);
  v99 = v14;
  v100 = v33;
  v34 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v73;
  MEMORY[0x21CF14040](1, v73, OpaqueTypeConformance2);
  v37 = v18;
  v38 = v36;
  (*(v74 + 8))(v37, v36);
  v39 = v82;
  sub_21CB83A84();
  v40 = sub_21CB83A94();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  v99 = v38;
  v100 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v75;
  sub_21CB84664();
  sub_21C6EA794(v39, &qword_27CDEE080, &qword_21CBD0220);
  (*(v77 + 8))(v20, v42);
  v99 = v42;
  v100 = v41;
  swift_getOpaqueTypeConformance2();
  v43 = v78;
  sub_21CB841D4();
  (*(v79 + 8))(v22, v43);
  sub_21CB83134();
  v45 = v94;
  v44 = v95;
  sub_21C9A5130(v95, v94);
  v46 = swift_allocObject();
  sub_21C9A5194(v45, v46 + v30);
  v47 = v86;
  sub_21CB84DD4();
  v48 = v44 + *(v76 + 32);
  v49 = *v48;
  v50 = *(v48 + 8);
  LOBYTE(v99) = v49;
  v100 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if ((v98 & 1) == 0)
  {
    sub_21CB81E94();
    v52 = v99;
    v51 = v100;

    v53 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v53 = v52 & 0xFFFFFFFFFFFFLL;
    }

    v34 = v53 == 0;
  }

  KeyPath = swift_getKeyPath(byte_21CBB7FD0);
  v55 = swift_allocObject();
  *(v55 + 16) = v34;
  v56 = v87;
  (*(v89 + 32))(v87, v47, v91);
  v57 = (v56 + *(v88 + 36));
  *v57 = KeyPath;
  v57[1] = sub_21C735744;
  v57[2] = v55;
  v58 = v90;
  sub_21C9A5258(v56, v90);
  v60 = v83;
  v59 = v84;
  v61 = *(v84 + 16);
  v62 = v97;
  v63 = v85;
  v61(v83, v97, v85);
  v64 = v92;
  sub_21C6EDBAC(v58, v92, &qword_27CDEDA98, &unk_21CBABCB0);
  v65 = v93;
  v61(v93, v60, v63);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3750, &unk_21CBB8000);
  sub_21C6EDBAC(v64, &v65[*(v66 + 48)], &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v58, &qword_27CDEDA98, &unk_21CBABCB0);
  v67 = *(v59 + 8);
  v67(v62, v63);
  sub_21C6EA794(v64, &qword_27CDEDA98, &unk_21CBABCB0);
  return (v67)(v60, v63);
}

void sub_21C9A4A38()
{
  v1 = v0;
  v2 = type metadata accessor for PMWebsiteNameFetchingDebuggerView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v0 + *(v3 + 36);
  v7 = *(v6 + 16);
  aBlock = *v6;
  v17 = v7;
  v21 = xmmword_21CBB7EA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D64();
  v8 = v0 + *(v3 + 32);
  v9 = *v8;
  v10 = *(v8 + 8);
  LOBYTE(aBlock) = v9;
  *(&aBlock + 1) = v10;
  LOBYTE(v21) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v11 = objc_opt_self();
  sub_21CB81E94();
  v12 = sub_21CB85584();

  sub_21C9A5130(v1, &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_21C9A5194(&aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v19 = sub_21C9A52C8;
  v20 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v17 = sub_21C9A4D4C;
  v18 = &block_descriptor_20;
  v15 = _Block_copy(&aBlock);

  [v11 debug:v12 fetchWebsiteNameForDomain:v15 completionHandler:?];
  _Block_release(v15);
}

uint64_t sub_21C9A4C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PMWebsiteNameFetchingDebuggerView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C9A4D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_21CB855C4();
  v5 = v4;

  v2(v3, v5);
}

double sub_21C9A4DB8@<D0>(char *a1@<X8>)
{
  sub_21C9A386C(v1, a1);
  v3 = sub_21CB83CE4();
  v4 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF36C8, &qword_21CBB7EE0) + 36)];
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  v4[40] = 1;
  return result;
}

void sub_21C9A4E44(uint64_t a1)
{
  sub_21C721A6C(319);
  if (v1 <= 0x3F)
  {
    sub_21C9A4F40(319, &qword_27CDF36E0, MEMORY[0x277D837D0], MEMORY[0x277CDD630]);
    if (v2 <= 0x3F)
    {
      sub_21C9A4F40(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_21C9A4F90(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C9A4F40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C9A4F90(uint64_t a1)
{
  if (!qword_27CDF2C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED260, &qword_21CBA1C60);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF2C90);
    }
  }
}

unint64_t sub_21C9A4FF4()
{
  result = qword_27CDF36E8;
  if (!qword_27CDF36E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF36C8, &qword_21CBB7EE0);
    sub_21C9A5080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF36E8);
  }

  return result;
}

unint64_t sub_21C9A5080()
{
  result = qword_27CDF36F0;
  if (!qword_27CDF36F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF36F8, &qword_21CBB7F68);
    sub_21C6EADEC(&qword_27CDF3700, &qword_27CDF3708, &qword_21CBB7F70, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF36F0);
  }

  return result;
}

uint64_t sub_21C9A5130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWebsiteNameFetchingDebuggerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9A5194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWebsiteNameFetchingDebuggerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9A5258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9A52C8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMWebsiteNameFetchingDebuggerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C9A4C80(a1, a2, v6);
}

uint64_t sub_21C9A5390@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3770, &qword_21CBB8088);
  v68 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v67 = &v65 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3778, &qword_21CBB8090);
  v70 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = &v65 - v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3780, &qword_21CBB8098);
  MEMORY[0x28223BE20](v86);
  v7 = &v65 - v6;
  v8 = sub_21CB82A54();
  v79 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v78 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow(0);
  v81 = *(v10 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v82 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3788, &qword_21CBB80A0);
  v77 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v76 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3790, &qword_21CBB80A8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v80 = &v65 - v15;
  v16 = sub_21CB82F84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3798, &unk_21CBB80B0);
  v23 = MEMORY[0x28223BE20](v20);
  v85 = &v65 - v24;
  if (*(*(v2 + 8) + 24) >= 1)
  {
    v66 = v14;
    v71 = v8;
    v72 = v22;
    v25 = *(v2 + 16);
    v26 = *(v2 + 24);
    v74 = v13;
    v75 = v7;
    v73 = v21;
    v27 = v2;
    if (v26 == 1)
    {
      LOBYTE(KeyPath) = v25;
    }

    else
    {

      sub_21CB85B04();
      v31 = sub_21CB83C94();
      sub_21CB81C14();

      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21C7025C4(v25, 0);
      (*(v17 + 8))(v19, v16);
      LOBYTE(v25) = KeyPath;
    }

    if (v25 == 1)
    {
    }

    else
    {
      v32 = sub_21CB86344();

      if ((v32 & 1) == 0)
      {
        v33 = v82;
        sub_21C9A7E18(v27, v82, type metadata accessor for PMGeneratedPasswordsSearchResultsRow);
        v34 = (*(v81 + 80) + 16) & ~*(v81 + 80);
        v35 = swift_allocObject();
        v36 = v4;
        v37 = sub_21C9A772C(v33, v35 + v34);
        MEMORY[0x28223BE20](v37);
        *(&v65 - 2) = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37A0, &qword_21CBB80C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37A8, &qword_21CBB80C8);
        v38 = v83;
        sub_21C6EADEC(&qword_27CDF37B0, &qword_27CDF37A0, &qword_21CBB80C0, MEMORY[0x277CDEFF0]);
        sub_21C9A7808();
        v39 = v67;
        sub_21CB852B4();
        KeyPath = swift_getKeyPath(byte_21CBB80D0);
        LOBYTE(v89) = 0;
        v40 = sub_21C6EADEC(&qword_27CDF37C0, &qword_27CDF3770, &qword_21CBB8088, MEMORY[0x277CDF180]);
        v41 = sub_21C830EB0();
        v42 = v69;
        sub_21CB840E4();
        (*(v68 + 8))(v39, v38);

        v43 = v70;
        (*(v70 + 16))(v75, v42, v36);
        swift_storeEnumTagMultiPayload();
        v44 = sub_21C6EADEC(&qword_27CDF37C8, &qword_27CDF3788, &qword_21CBB80A0, MEMORY[0x277CDF028]);
        v45 = sub_21C72C7D4(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
        KeyPath = v84;
        v89 = v71;
        v90 = v44;
        v91 = v45;
        swift_getOpaqueTypeConformance2();
        KeyPath = v38;
        v89 = &type metadata for PMAccountsListNavigationCellLabelStyle;
        v90 = v40;
        v91 = v41;
        swift_getOpaqueTypeConformance2();
        v46 = v85;
        sub_21CB83494();
        (*(v43 + 8))(v42, v36);
LABEL_13:
        v64 = v87;
        sub_21C716934(v46, v87, &qword_27CDF3798, &unk_21CBB80B0);
        return (*(v72 + 56))(v64, 0, 1, v73);
      }
    }

    v47 = v27;
    v48 = v27;
    v49 = v82;
    sub_21C9A7E18(v48, v82, type metadata accessor for PMGeneratedPasswordsSearchResultsRow);
    v50 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v51 = swift_allocObject();
    v52 = sub_21C9A772C(v49, v51 + v50);
    MEMORY[0x28223BE20](v52);
    *(&v65 - 2) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37D0, &qword_21CBB80F8);
    sub_21C9A7954();
    v53 = v76;
    sub_21CB84DA4();
    v54 = v78;
    sub_21CB82A44();
    v55 = sub_21C6EADEC(&qword_27CDF37C8, &qword_27CDF3788, &qword_21CBB80A0, MEMORY[0x277CDF028]);
    v56 = sub_21C72C7D4(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v57 = v80;
    v58 = v84;
    v59 = v71;
    sub_21CB84124();
    (*(v79 + 8))(v54, v59);
    (*(v77 + 8))(v53, v58);
    v60 = v66;
    v61 = v74;
    (*(v66 + 16))(v75, v57, v74);
    swift_storeEnumTagMultiPayload();
    KeyPath = v58;
    v89 = v59;
    v90 = v55;
    v91 = v56;
    swift_getOpaqueTypeConformance2();
    v62 = sub_21C6EADEC(&qword_27CDF37C0, &qword_27CDF3770, &qword_21CBB8088, MEMORY[0x277CDF180]);
    v63 = sub_21C830EB0();
    KeyPath = v83;
    v89 = &type metadata for PMAccountsListNavigationCellLabelStyle;
    v90 = v62;
    v91 = v63;
    swift_getOpaqueTypeConformance2();
    v46 = v85;
    sub_21CB83494();
    (*(v60 + 8))(v57, v61);
    goto LABEL_13;
  }

  v28 = *(v22 + 56);
  v29 = v87;

  return v28(v29, 1, 1, v23);
}

uint64_t sub_21C9A6030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  MEMORY[0x28223BE20](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v9 = *(v7 + 32);
  v8 = *(v7 + 40);
  swift_unknownObjectWeakInit();
  v10 = v4[5];
  *&v6[v10] = swift_getKeyPath(a0_36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v11 = v4[6];
  KeyPath = swift_getKeyPath(byte_21CBB8200);
  v13 = qword_27CDEA4C0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = &v6[v11];
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v28);

  type metadata accessor for PMGeneratedPasswordStore(0);
  sub_21C72C7D4(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
  v15 = sub_21CB82674();
  v17 = v16;

  *v14 = v15;
  v14[1] = v17;
  v18 = &v6[v4[8]];
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_21CB84D44();
  v19 = &v6[v4[9]];
  v27[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  v20 = *(&v28 + 1);
  *v19 = v28;
  *(v19 + 1) = v20;
  v21 = v4[10];
  v27[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *&v6[v21] = v28;
  swift_unknownObjectWeakAssign();

  v6[v4[7]] = 0;
  *v18 = v9;
  *(v18 + 1) = v8;
  *(v18 + 2) = 0;
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C9A7E18(v6, a2, type metadata accessor for PMGeneratedPasswordsLogView);
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF37A8, &qword_21CBB80C8) + 36));
  v23 = v33;
  v22[4] = v32;
  v22[5] = v23;
  v22[6] = v34;
  v24 = v29;
  *v22 = v28;
  v22[1] = v24;
  v25 = v31;
  v22[2] = v30;
  v22[3] = v25;
  return sub_21C9A7E80(v6, type metadata accessor for PMGeneratedPasswordsLogView);
}