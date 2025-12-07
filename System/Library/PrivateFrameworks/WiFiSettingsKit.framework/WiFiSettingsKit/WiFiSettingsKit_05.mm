uint64_t sub_274113B80(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 80) = 1;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  *(v2 + 16) = 0;
  *(v2 + 104) = 0;
  return v2;
}

uint64_t sub_274113BB8(const __SCNetworkSet *a1, uint64_t a2)
{
  v4 = v2;
  v7 = v2[14];
  v8 = v4[15];
  v9 = v4[16];
  v10 = v4[17];
  type metadata accessor for SystemIPConfiguration();
  swift_allocObject();

  if (!sub_2740ADCF8(v7, v8, v9, v10))
  {
    goto LABEL_5;
  }

  v11 = sub_2740AFE20(v4, a1, a2);
  if (v3)
  {
LABEL_6:

    return a2;
  }

  v13 = v12;
  if (!v12)
  {
LABEL_5:
    sub_2740CB218(0xD000000000000017, 0x80000002741DA500, 0x7469772865766173, 0xEB00000000293A68);
    sub_2740B2004();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    goto LABEL_6;
  }

  a2 = v11;

  v4[14] = a2;
  v4[15] = v13;

  return a2;
}

uint64_t sub_274113D14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v13 - v3;
  v5 = *(v0 + 32);
  if (v5 && (*(v0 + 80) & 1) == 0 && (v6 = *(v0 + 48)) != 0)
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = sub_2741C80DC();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v7;
    v11[5] = v5;
    v11[6] = v8;
    v11[7] = v9;
    v11[8] = v6;
    v11[9] = v0;

    sub_2740CE980(0, 0, v4, &unk_2741D24B8, v11);
  }

  else
  {

    return sub_2740CB218(0xD00000000000003ALL, 0x80000002741DC9C0, 0xD000000000000012, 0x80000002741DCA00);
  }
}

uint64_t sub_274113ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_274113EFC, 0, 0);
}

uint64_t sub_274113EFC()
{
  type metadata accessor for ProxyKeychainOperation();
  v1 = swift_allocObject();
  *(v0 + 64) = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = [objc_opt_self() sharedCredentialStorage];

  return MEMORY[0x2822009F8](sub_274113FA0, v1, 0);
}

uint64_t sub_274113FA0()
{
  v0[9] = sub_2740E5C0C(v0[2], v0[3], v0[4], v0[5], v0[6]);
  v0[10] = v1;

  return MEMORY[0x2822009F8](sub_274114018, 0, 0);
}

uint64_t sub_274114018()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];

  *(v3 + 56) = v1;
  *(v3 + 64) = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_274114090()
{

  return swift_deallocClassInstance();
}

unint64_t sub_274114128()
{
  result = qword_280939C48;
  if (!qword_280939C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939038, &qword_2741CEA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C48);
  }

  return result;
}

unint64_t sub_2741141A0()
{
  result = qword_280939C50;
  if (!qword_280939C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C50);
  }

  return result;
}

uint64_t sub_2741141F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_274114244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_27409D648;

  return sub_274113ECC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_274114330@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_274114774();
  sub_2741C6A0C();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2741143AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_27411446C(v1, v2);
}

uint64_t sub_2741143EC()
{
  swift_getKeyPath();
  sub_274114774();
  sub_2741C6A0C();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_27411446C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_2741C86DC() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    sub_274114774();
    sub_2741C69FC();
  }
}

uint64_t sub_27411459C()
{

  v1 = OBJC_IVAR____TtC15WiFiSettingsKit9DNSServer___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DNSServer(uint64_t a1)
{
  result = qword_280939C60;
  if (!qword_280939C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274114694(uint64_t a1)
{
  result = sub_2741C6A4C();
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

uint64_t sub_274114734(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_27411446C(v1, v2);
}

unint64_t sub_274114774()
{
  result = qword_280938770;
  if (!qword_280938770)
  {
    type metadata accessor for DNSServer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938770);
  }

  return result;
}

id sub_2741147CC@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 networkType];
  if (((result - 1) & 0xF8) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x706050004030201uLL >> (8 * (result - 1));
  }

  *a1 = v4;
  return result;
}

id sub_27411487C(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [*v3 *a3];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2741148AC()
{
  v1 = [*v0 deviceName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2741C7E7C();

  return v3;
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_274114984(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2741149CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274114A68()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_274114BA8()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_274114CE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939C70, &qword_2741D2728);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v15[-v4];
  v16 = v0;
  if (*(v0 + 177) == 1)
  {
    if (*(v0 + 72))
    {
      if (qword_280937850 != -1)
      {
        swift_once();
      }

      v6 = &qword_2809467E8;
    }

    else
    {
      if (qword_280937848 != -1)
      {
        swift_once();
      }

      v6 = &qword_2809467D8;
    }
  }

  else if (*(v0 + 72))
  {
    if (qword_280937840 != -1)
    {
      swift_once();
    }

    v6 = &qword_2809467C8;
  }

  else
  {
    if (qword_280937838 != -1)
    {
      swift_once();
    }

    v6 = &qword_2809467B8;
  }

  v7 = v6[1];
  v19 = *v6;
  v20 = v7;
  sub_2740A6A74();

  v19 = sub_2741C76AC();
  v20 = v8;
  v21 = v9 & 1;
  v22 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939C78, &unk_2741D2730);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F80, &unk_2741CB690);
  v12 = sub_2741166BC();
  v17 = v11;
  v18 = v12;
  swift_getOpaqueTypeConformance2();
  sub_2741C7BAC();
  v13 = *(v0 + 64);
  LOBYTE(v17) = *(v0 + 56);
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  sub_274116720();
  sub_2741C788C();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_274115040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - v5;
  sub_2741167F4(a1, v18);
  v7 = swift_allocObject();
  v8 = v18[9];
  *(v7 + 144) = v18[8];
  *(v7 + 160) = v8;
  *(v7 + 176) = v18[10];
  *(v7 + 192) = v19;
  v9 = v18[5];
  *(v7 + 80) = v18[4];
  *(v7 + 96) = v9;
  v10 = v18[7];
  *(v7 + 112) = v18[6];
  *(v7 + 128) = v10;
  v11 = v18[1];
  *(v7 + 16) = v18[0];
  *(v7 + 32) = v11;
  v12 = v18[3];
  *(v7 + 48) = v18[2];
  *(v7 + 64) = v12;
  v15[6] = a1;
  sub_2741C7A7C();
  v13 = *(a1 + 48);
  v16 = *(a1 + 40);
  v17 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v15[2] = a1;
  sub_2741166BC();
  sub_2741C786C();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2741152C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 72) == 1)
  {
    if (qword_280937830 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280937828 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  sub_2740A6A74();
  result = sub_2741C76AC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_27411539C(uint64_t a1)
{
  v3 = sub_2741C795C();
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = MEMORY[0x28223BE20](v7, v8);
  MEMORY[0x28223BE20](v9, v10);
  v11 = *(a1 + 177);
  sub_274115A48();
  if (v11 > 1)
  {
    sub_2740A6A74();
    sub_2741C76AC();
    *&v48[0] = sub_274116848();
    *(&v48[0] + 1) = v14;

    sub_2741C76AC();
    if (qword_2809378B8 != -1)
    {
      swift_once();
    }

    v48[0] = xmmword_2809468B8;

    v15 = sub_2741C76AC();
    v17 = v16;
    v19 = v18;
    sub_2741C794C();
    sub_2740A6AC8(v15, v17, v19 & 1);

    if (qword_2809378C0 != -1)
    {
      swift_once();
    }

    v48[0] = xmmword_2809468C8;

    v20 = sub_2741C76AC();
    v22 = v21;
    v24 = v23;
    sub_2741C794C();
    sub_2740A6AC8(v20, v22, v24 & 1);
  }

  else
  {
    sub_2740A6A74();
    sub_2741C76AC();
    *&v48[0] = sub_274116848();
    *(&v48[0] + 1) = v12;

    sub_2741C76AC();
    if (*(a1 + 72) == 1)
    {
      if (qword_280937880 != -1)
      {
        swift_once();
      }

      v13 = &qword_280946848;
    }

    else
    {
      if (qword_280937878 != -1)
      {
        swift_once();
      }

      v13 = &qword_280946838;
    }

    v25 = *v13;

    *&v48[0] = v25;
    *(&v48[0] + 1) = v26;
    v27 = sub_2741C76AC();
    v29 = v28;
    v31 = v30;
    sub_2741167F4(a1, v48);
    v32 = swift_allocObject();
    v33 = v48[9];
    v34 = v48[10];
    v35 = v48[7];
    *(v32 + 144) = v48[8];
    *(v32 + 160) = v33;
    *(v32 + 176) = v34;
    *(v32 + 192) = v49;
    v36 = v48[5];
    *(v32 + 80) = v48[4];
    *(v32 + 96) = v36;
    *(v32 + 112) = v48[6];
    *(v32 + 128) = v35;
    v37 = v48[1];
    *(v32 + 16) = v48[0];
    *(v32 + 32) = v37;
    v38 = v48[3];
    *(v32 + 48) = v48[2];
    *(v32 + 64) = v38;
    sub_2741C794C();
    sub_2740A6AC8(v27, v29, v31 & 1);

    if (v11 == 1)
    {
      if (qword_280937890 != -1)
      {
        swift_once();
      }

      v39 = &qword_280946868;
    }

    else
    {
      if (qword_280937888 != -1)
      {
        swift_once();
      }

      v39 = &qword_280946858;
    }

    v40 = *v39;

    *&v48[0] = v40;
    *(&v48[0] + 1) = v41;
    v42 = sub_2741C76AC();
    v44 = v43;
    v46 = v45;
    sub_2741C794C();
    sub_2740A6AC8(v42, v44, v46 & 1);
  }

  return sub_2741C792C();
}

uint64_t sub_274115A48()
{
  if (!*(v0 + 177))
  {
    if (*(v0 + 72))
    {
      if (qword_280937860 == -1)
      {
        goto LABEL_17;
      }
    }

    else if (qword_280937858 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (*(v0 + 177) == 1)
  {
    if (*(v0 + 72))
    {
      if (qword_280937870 == -1)
      {
        goto LABEL_17;
      }
    }

    else if (qword_280937868 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (*(v0 + 72))
  {
    if (qword_2809378A0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (qword_280937898 != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2741CB550;
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_27410D7BC();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;

  v4 = sub_2741C7E4C();

  return v4;
}

void sub_274115C88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    sub_2741C687C();
    v6 = sub_2741C689C();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v3, 1, v6) != 1)
    {
      v8 = sub_2741C684C();
      (*(v7 + 8))(v3, v6);
    }

    [v5 openSensitiveURL:v8 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_274115DF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v23 - v4;
  if (*(a1 + 120))
  {
    goto LABEL_12;
  }

  v6 = sub_274114BA8();
  swift_getKeyPath();
  *&v26[0] = v6;
  sub_274116A6C(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  v7 = *(v6 + 128);

  v8 = *(v7 + 16);

  swift_getKeyPath();
  *&v26[0] = v8;
  sub_274116A6C(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  swift_beginAccess();
  sub_274116AB4(v8 + 32, v31);

  sub_2740ACAC8(a1 + 80, v30);
  sub_274116AB4(v31, v26);
  sub_274116AB4(v30, &v27[8]);
  if (!*(&v26[0] + 1))
  {
    sub_27409D420(v30, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v31, &qword_280938340, &qword_2741D1660);
    if (!*&v27[16])
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  sub_274116AB4(v26, v25);
  if (!*&v27[16])
  {
    sub_27409D420(v30, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v31, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v25);
LABEL_9:
    sub_27409D420(v26, &qword_280939B80, &qword_2741D4800);
    goto LABEL_10;
  }

  v23[4] = *&v27[72];
  v23[5] = v28;
  v24 = v29;
  v23[0] = *&v27[8];
  v23[1] = *&v27[24];
  v23[2] = *&v27[40];
  v23[3] = *&v27[56];
  if (v25[0] == *&v27[8])
  {
    sub_27409D420(v30, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v31, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v23);
    sub_2740ACB2C(v25);
LABEL_7:
    sub_27409D420(v26, &qword_280938340, &qword_2741D1660);
LABEL_12:
    v13 = sub_2741C80DC();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    sub_2741167F4(a1, v26);
    sub_2741C80AC();
    v14 = sub_2741C809C();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    *(v15 + 16) = v14;
    *(v15 + 24) = v16;
    v17 = *&v27[48];
    *(v15 + 160) = *&v27[32];
    *(v15 + 176) = v17;
    *(v15 + 192) = *&v27[64];
    *(v15 + 208) = *&v27[80];
    v18 = v26[5];
    *(v15 + 96) = v26[4];
    *(v15 + 112) = v18;
    v19 = *&v27[16];
    *(v15 + 128) = *v27;
    *(v15 + 144) = v19;
    v20 = v26[1];
    *(v15 + 32) = v26[0];
    *(v15 + 48) = v20;
    v21 = v26[3];
    *(v15 + 64) = v26[2];
    *(v15 + 80) = v21;
    sub_2741A771C(0, 0, v5, &unk_2741D2798, v15);

    goto LABEL_13;
  }

  v12 = sub_2741C86DC();
  sub_27409D420(v30, &qword_280938340, &qword_2741D1660);
  sub_27409D420(v31, &qword_280938340, &qword_2741D1660);
  sub_2740ACB2C(v23);
  sub_2740ACB2C(v25);
  sub_27409D420(v26, &qword_280938340, &qword_2741D1660);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v9 = *(a1 + 64);
  LOBYTE(v26[0]) = *(a1 + 56);
  *(&v26[0] + 1) = v9;
  v31[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  v10 = sub_2741C7A4C();
LABEL_13:
  MEMORY[0x28223BE20](v10, v11);
  *&v23[-1] = a1;
  sub_2741C7C5C();
  sub_2741C6DCC();
}

uint64_t sub_274116328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_2741C80AC();
  v4[8] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_2741163C0, v6, v5);
}

uint64_t sub_2741163C0()
{
  v1 = *(v0 + 56);
  *(v0 + 88) = sub_274114A68();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_274116494;

  return sub_274139F44(v1 + 80, 0, 0, 1, v0 + 16);
}

uint64_t sub_274116494()
{
  v2 = *v1;
  v2[13] = v0;

  sub_27409D420((v2 + 2), &qword_280937FB8, &unk_2741D0410);

  v3 = v2[9];
  v4 = v2[10];
  if (v0)
  {
    v5 = sub_27411664C;
  }

  else
  {
    v5 = sub_2741165E8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2741165E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27411664C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_2741166BC()
{
  result = qword_280937F78;
  if (!qword_280937F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F80, &unk_2741CB690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F78);
  }

  return result;
}

unint64_t sub_274116720()
{
  result = qword_280939C80;
  if (!qword_280939C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939C70, &qword_2741D2728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F80, &unk_2741CB690);
    sub_2741166BC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C80);
  }

  return result;
}

uint64_t sub_274116848()
{
  if (*(v0 + 177))
  {
    if (*(v0 + 177) == 1)
    {
      if (*(v0 + 72))
      {
        if (qword_280937850 != -1)
        {
          swift_once();
        }

        v1 = &qword_2809467E8;
      }

      else
      {
        if (qword_280937848 != -1)
        {
          swift_once();
        }

        v1 = &qword_2809467D8;
      }
    }

    else if (*(v0 + 72))
    {
      if (qword_2809378B0 != -1)
      {
        swift_once();
      }

      v1 = &qword_2809468A8;
    }

    else
    {
      if (qword_2809378A8 != -1)
      {
        swift_once();
      }

      v1 = &qword_280946898;
    }
  }

  else if (*(v0 + 72))
  {
    if (qword_280937840 != -1)
    {
      swift_once();
    }

    v1 = &qword_2809467C8;
  }

  else
  {
    if (qword_280937838 != -1)
    {
      swift_once();
    }

    v1 = &qword_2809467B8;
  }

  return *v1;
}

uint64_t objectdestroyTm_10()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));

  return MEMORY[0x2821FE8E8](v0, 194, 7);
}

uint64_t sub_274116A6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274116AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938340, &qword_2741D1660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274116B24()
{
  v1 = *(v0 + 16);
  sub_274114BA8();
  sub_2741519A0((v1 + 80));
}

uint64_t sub_274116B70()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));

  return MEMORY[0x2821FE8E8](v0, 210, 7);
}

uint64_t sub_274116BE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27409D648;

  return sub_274116328(a1, v4, v5, v1 + 32);
}

uint64_t sub_274116C98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939C70, &qword_2741D2728);
  sub_274116720();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274116D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_27409D648;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_274116EB0()
{
  v1 = v0;
  sub_2741C6A8C();
  v2 = sub_2741C6A6C();
  v3 = MEMORY[0x2743E4B00]();

  if (v3 & 1) == 0 || ([v1 isAllowedInLockdownMode])
  {
    return 0;
  }

  if ([v1 isOpen] & 1) != 0 || (objc_msgSend(v1, sel_isOWE))
  {
    return 2;
  }

  if ([v1 isWEP])
  {
    return 3;
  }

  if ([v1 isWPA])
  {
    return 4;
  }

  if ([v1 hasTKIPCipher])
  {
    return 5;
  }

  return 0;
}

unint64_t sub_274117028()
{
  result = qword_280939CF0;
  if (!qword_280939CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939CF0);
  }

  return result;
}

uint64_t sub_27411716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27411723C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for KnownNetwork(uint64_t a1)
{
  result = qword_280939CF8;
  if (!qword_280939CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274117338(uint64_t a1)
{
  sub_2740997A4();
  if (v1 <= 0x3F)
  {
    sub_2740B6954();
    if (v2 <= 0x3F)
    {
      sub_2740B6A70(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_27411741C()
{
  sub_27409D4E4((v0 + 9), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_27409D1F4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_27409D4E4((v0 + 9), v14);
    if (swift_dynamicCast())
    {
      v4 = v13[0];
      v5 = [v13[0] OSSpecificAttributes];
      if (v5)
      {
        v6 = v5;
        v7 = sub_2741C7D6C();

        sub_2741C850C();
        if (*(v7 + 16) && (v8 = sub_274125164(v14), (v9 & 1) != 0))
        {
          sub_27409D308(*(v7 + 56) + 32 * v8, &v11);
          sub_27409D2A4(v14);

          if (*(&v12 + 1))
          {
            sub_27409D2F8(&v11, v13);
            sub_27409D308(v13, v14);
            v3 = sub_2741C7EBC();

            __swift_destroy_boxed_opaque_existential_1Tm(v13);
            return v3;
          }
        }

        else
        {

          sub_27409D2A4(v14);
          v11 = 0u;
          v12 = 0u;
        }
      }

      else
      {

        v11 = 0u;
        v12 = 0u;
      }

      sub_2740B29E8(&v11);
    }

    v3 = *v0;

    return v3;
  }

  if (![v13[0] isPasspoint] || (v1 = objc_msgSend(v13[0], sel_displayedOperatorName)) == 0)
  {

    goto LABEL_6;
  }

  v2 = v1;
  v3 = sub_2741C7E7C();

  return v3;
}

void sub_274117670(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v22 - v6;
  v8 = type metadata accessor for KnownNetwork(0);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v9 = *(v8 + 64);
  v10 = sub_2741C689C();
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = [a1 networkName];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2741C7E7C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 32) = [a1 isHotspot];
  *(a2 + 40) = 0;
  if ([a1 isOpen])
  {
    v16 = 1;
  }

  else
  {
    v16 = [a1 isOWE];
  }

  *(a2 + 48) = v16;
  *(a2 + 96) = sub_27409D1F4();
  *(a2 + 104) = &off_2883287E8;
  *(a2 + 72) = a1;
  v17 = a1;
  *(a2 + 112) = [v17 isCarPlay];
  *(a2 + 113) = sub_2740D3E48();
  *(a2 + 114) = [v17 isProfileBased];
  *(a2 + 115) = sub_2740D3E48() == 1;
  *(a2 + 64) = [v17 hiddenState] == 1;
  *(a2 + 56) = [v17 strongestSupportedSecurityType];
  *(a2 + *(v8 + 68)) = [v17 isAutoJoinDisabled] ^ 1;
  v18 = [v17 captiveProfile];

  if (v18)
  {
    v19 = sub_2741C7D6C();

    v22[1] = 0xD000000000000010;
    v22[2] = 0x80000002741DCAE0;
    sub_2741C850C();
    if (*(v19 + 16) && (v20 = sub_274125164(v23), (v21 & 1) != 0))
    {
      sub_27409D308(*(v19 + 56) + 32 * v20, v24);
      sub_27409D2A4(v23);

      if (swift_dynamicCast())
      {
        sub_2741C687C();

        sub_274117D38(v7, a2 + v9);
      }
    }

    else
    {

      sub_27409D2A4(v23);
    }
  }
}

uint64_t sub_27411799C()
{
  sub_27409D4E4(v0 + 72, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_27409D1F4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = v8[0];
  v2 = [v8[0] OSSpecificAttributes];
  if (!v2)
  {

    goto LABEL_10;
  }

  v3 = v2;
  v4 = sub_2741C7D6C();

  sub_2741C850C();
  if (!*(v4 + 16) || (v5 = sub_274125164(&v10), (v6 & 1) == 0))
  {

    sub_27409D2A4(&v10);
LABEL_10:
    *v8 = 0u;
    v9 = 0u;
    goto LABEL_11;
  }

  sub_27409D308(*(v4 + 56) + 32 * v5, v8);

  sub_27409D2A4(&v10);

  if (!*(&v9 + 1))
  {
LABEL_11:
    sub_2740B29E8(v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v10;
  }

  return 0;
}

uint64_t sub_274117B58@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_274117BA4(uint64_t a1)
{
  *(a1 + 8) = sub_274117C0C(&qword_280939D10, &unk_2741D29E4);
  result = sub_274117C0C(&qword_280939D18, &unk_2741D2950);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_274117C0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KnownNetwork(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274117C50()
{
  type metadata accessor for KnownNetwork(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E08, &qword_2741CB368);
  v1 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v1);

  MEMORY[0x2743E5FB0](*v0, v0[1]);
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0x273D656D616E20, 0xE700000000000000);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_274117D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_274117DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_274117E9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ConfigureIP4View(uint64_t a1)
{
  result = qword_280939D20;
  if (!qword_280939D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274117FB0(uint64_t a1)
{
  sub_2740BAC78(319, &qword_280937EA8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_274118100(319, &qword_280939D30, &type metadata for IPV4Mode);
    if (v2 <= 0x3F)
    {
      sub_2740BAC78(319, &qword_280938688, type metadata accessor for NetworkDetailsModel, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_274118100(319, &qword_280939450, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_27411814C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_274118100(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2741C7A6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_27411814C()
{
  if (!qword_280939D38)
  {
    v0 = sub_2741C6CBC();
    if (!v1)
    {
      atomic_store(v0, &qword_280939D38);
    }
  }
}

uint64_t sub_2741181C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2741C70AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  sub_2740A6D94(v2, &v16 - v11, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2741C6DBC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_2741C82AC();
    v15 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2741183C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for ConfigureIP4View(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D40, &qword_2741D2A98);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v26 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D48, &qword_2741D2AA0);
  v10 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v11);
  v13 = &v26 - v12;
  v30 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D50, &unk_2741D2AA8);
  sub_2740A6D24(&qword_280939D58, &qword_280939D50, &unk_2741D2AA8, MEMORY[0x277CE14C0]);
  sub_2741C761C();
  sub_27411C038(v2, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v15 = swift_allocObject();
  sub_27411C0A0(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = &v9[*(v6 + 36)];
  *v16 = sub_27411C104;
  v16[1] = v15;
  v16[2] = 0;
  v16[3] = 0;
  if (qword_280937AB8 != -1)
  {
    swift_once();
  }

  v31 = qword_280946D58;
  v32 = qword_280946D60;
  v17 = sub_27411C11C();
  v18 = sub_2740A6A74();
  v19 = MEMORY[0x277D837D0];
  sub_2741C777C();
  v20 = sub_27409D420(v9, &qword_280939D40, &qword_2741D2A98);
  MEMORY[0x28223BE20](v20, v21);
  *(&v26 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F40, &unk_2741CE890);
  v31 = v6;
  v32 = v19;
  v33 = v17;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F48, &qword_2741D04A0);
  v23 = sub_2740A6D24(&qword_280938F50, &qword_280938F48, &qword_2741D04A0, MEMORY[0x277CDD7A8]);
  v31 = v22;
  v32 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_2741C78BC();
  return (*(v10 + 8))(v13, v24);
}

uint64_t sub_2741187D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D88, &qword_2741D2B40);
  v70 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v3);
  v68 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D90, &unk_2741D2B48);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v78 = &v66 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F68, &qword_2741CE920);
  v11 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v12);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D98, &qword_2741D2B58);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v74 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v66 - v20;
  v22 = type metadata accessor for ConfigureIP4View(0);
  v23 = v22 - 8;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22, v26);
  v27 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DA0, &unk_2741D2B60);
  v72 = *(v28 - 8);
  v73 = v28;
  v30 = MEMORY[0x28223BE20](v28, v29);
  v71 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v66 - v33;
  KeyPath = swift_getKeyPath();
  sub_27411C038(a1, v27);
  v36 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v37 = swift_allocObject();
  sub_27411C0A0(v27, v37 + v36);
  v83 = v37;
  v84 = &unk_2883263D8;
  v80 = &v84;
  v81 = KeyPath;
  v82 = sub_27411C384;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DA8, &qword_2741D2B88);
  sub_27411C410();
  v79 = v34;
  sub_2741C762C();
  v38 = a1;

  v39 = (a1 + *(v23 + 28));
  v40 = *v39;
  v41 = *(v39 + 1);
  LOBYTE(v84) = *v39;
  v85 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  v42 = sub_2741C7A3C();
  v67 = v38;
  if (!v88)
  {
    v66 = &v66;
    MEMORY[0x28223BE20](v42, v43);
    *(&v66 - 2) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FB0, &qword_2741CE988);
    sub_2740A6D24(&qword_280938FB8, &qword_280938FB0, &qword_2741CE988, MEMORY[0x277CE1138]);
    sub_2741C7B9C();
    (*(v11 + 32))(v21, v14, v69);
  }

  v44 = 1;
  (*(v11 + 56))();
  LOBYTE(v84) = v40;
  v85 = v41;
  v45 = sub_2741C7A3C();
  v47 = v75;
  v48 = v70;
  if (v88 == 1)
  {
    MEMORY[0x28223BE20](v45, v46);
    *(&v66 - 2) = v67;
    if (qword_280937AD0 != -1)
    {
      swift_once();
    }

    v84 = qword_280946D88;
    v85 = qword_280946D90;
    sub_2740A6A74();

    v84 = sub_2741C76AC();
    v85 = v49;
    v86 = v50 & 1;
    v87 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DC0, &unk_2741D2BA0);
    sub_2740A6D24(&qword_280939DC8, &qword_280939DC0, &unk_2741D2BA0, MEMORY[0x277CE14C0]);
    v52 = v68;
    sub_2741C7B7C();
    (*(v48 + 32))(v78, v52, v47);
    v44 = 0;
  }

  v53 = v78;
  (*(v48 + 56))(v78, v44, 1, v47);
  v55 = v71;
  v54 = v72;
  v56 = *(v72 + 16);
  v57 = v73;
  v56(v71, v79, v73);
  v58 = v21;
  v59 = v21;
  v60 = v74;
  sub_2740A6D94(v59, v74, &qword_280939D98, &qword_2741D2B58);
  v61 = v76;
  sub_2740A6D94(v53, v76, &qword_280939D90, &unk_2741D2B48);
  v62 = v77;
  v56(v77, v55, v57);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DB8, &qword_2741D2B98);
  sub_2740A6D94(v60, &v62[*(v63 + 48)], &qword_280939D98, &qword_2741D2B58);
  sub_2740A6D94(v61, &v62[*(v63 + 64)], &qword_280939D90, &unk_2741D2B48);
  sub_27409D420(v53, &qword_280939D90, &unk_2741D2B48);
  sub_27409D420(v58, &qword_280939D98, &qword_2741D2B58);
  v64 = *(v54 + 8);
  v64(v79, v57);
  sub_27409D420(v61, &qword_280939D90, &unk_2741D2B48);
  sub_27409D420(v60, &qword_280939D98, &qword_2741D2B58);
  return (v64)(v55, v57);
}

uint64_t sub_27411906C(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigureIP4View(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = *a1;
  sub_27411C038(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  sub_27411C0A0(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v12[16] = v8;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B10, &qword_2741CCFA8);
  sub_2740A6D24(&qword_280938B18, &qword_280938B10, &qword_2741CCFA8, MEMORY[0x277CE1138]);
  return sub_2741C7A7C();
}

uint64_t sub_2741191F8(unsigned __int8 a1, uint64_t a2)
{
  *&v11 = 0xE000000000000000;
  sub_2741C856C();
  v12 = 0;
  v13 = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741DCB40);
  v10 = a1;
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741DCB60);
  v4 = (a2 + *(type metadata accessor for ConfigureIP4View(0) + 24));
  v10 = *v4;
  v11 = *(v4 + 1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](&v9, v5);
  v6 = v9;
  swift_getKeyPath();
  v10 = v6;
  sub_2740D985C(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v7 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  LOBYTE(v7) = *(v6 + v7);

  LOBYTE(v9) = v7;
  sub_2741C862C();
  sub_2740CB460(v12, v13);

  sub_2741C7C5C();
  sub_2741C6DCC();
}

uint64_t sub_274119420(uint64_t a1, char a2)
{
  type metadata accessor for ConfigureIP4View(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  return sub_2741C7A4C();
}

uint64_t sub_2741194A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_2741C70EC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B38, &qword_2741CCFD0);
  return sub_27411950C(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_27411950C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B40, &qword_2741CCFD8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B48, &qword_2741CCFE0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v43 - v15;
  v49 = v6;
  v50 = v17;
  v47 = a1;
  v48 = v7;
  v44 = v10;
  v46 = a2;
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_280937AC8 != -1)
      {
        swift_once();
      }

      v18 = &qword_280946D78;
    }

    else
    {
      if (qword_280937AD8 != -1)
      {
        swift_once();
      }

      v18 = &qword_280946D98;
    }
  }

  else
  {
    if (qword_280937AC0 != -1)
    {
      swift_once();
    }

    v18 = &qword_280946D68;
  }

  v19 = *v18;

  v52 = v19;
  v53 = v20;
  sub_2740A6A74();
  v21 = sub_2741C76AC();
  v23 = v22;
  v25 = v24;
  sub_2741C799C();
  v26 = sub_2741C763C();
  v28 = v27;
  v45 = v29;
  v31 = v30;

  sub_2740A6AC8(v21, v23, v25 & 1);

  v32 = v46 + *(type metadata accessor for ConfigureIP4View(0) + 20);
  v33 = *v32;
  v34 = *(v32 + 8);
  LOBYTE(v52) = v33;
  v53 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  sub_2741C7A3C();
  v35 = v48;
  v36 = 1;
  v37 = v49;
  if (qword_2741D2CB8[v51] == qword_2741D2CB8[v47])
  {
    v52 = sub_2741C79CC();
    sub_2741C75BC();
    v38 = v44;
    sub_2741C76EC();

    (*(v35 + 32))(v16, v38, v37);
    v36 = 0;
  }

  (*(v35 + 56))(v16, v36, 1, v37);
  v39 = v50;
  sub_2740A6D94(v16, v50, &qword_280938B48, &qword_2741CCFE0);
  *a3 = v26;
  *(a3 + 8) = v28;
  v40 = v45 & 1;
  *(a3 + 16) = v45 & 1;
  *(a3 + 24) = v31;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B50, &qword_2741CCFE8);
  sub_2740A6D94(v39, a3 + *(v41 + 64), &qword_280938B48, &qword_2741CCFE0);
  sub_27409861C(v26, v28, v40);

  sub_27409D420(v16, &qword_280938B48, &qword_2741CCFE0);
  sub_27409D420(v39, &qword_280938B48, &qword_2741CCFE0);
  sub_2740A6AC8(v26, v28, v40);
}

uint64_t sub_274119964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FF8, &qword_2741CE9C0);
  return sub_2741199BC(a1, a2 + *(v4 + 44));
}

uint64_t sub_2741199BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  v5 = MEMORY[0x28223BE20](v27, v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24[-v9];
  if (qword_280937AE0 != -1)
  {
    swift_once();
  }

  v28 = qword_280946DA8;
  v29 = qword_280946DB0;
  sub_2740A6A74();

  v11 = sub_2741C76AC();
  v13 = v12;
  v25 = v14;
  v26 = v15;
  sub_2741C714C();
  v16 = (a1 + *(type metadata accessor for ConfigureIP4View(0) + 28));
  v17 = *v16;
  v18 = *(v16 + 2);
  v30 = v17;
  v31 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v20 = &v10[*(v27 + 36)];
  *v20 = KeyPath;
  v20[8] = 2;
  sub_2740A6D94(v10, v7, &qword_280939018, &qword_2741CE9E0);
  *a2 = v11;
  *(a2 + 8) = v13;
  v21 = v25 & 1;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939020, &qword_2741D2BE0);
  sub_2740A6D94(v7, a2 + *(v22 + 64), &qword_280939018, &qword_2741CE9E0);
  sub_27409861C(v11, v13, v21);

  sub_27409D420(v10, &qword_280939018, &qword_2741CE9E0);
  sub_27409D420(v7, &qword_280939018, &qword_2741CE9E0);
  sub_2740A6AC8(v11, v13, v21);
}

uint64_t sub_274119C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DD0, &qword_2741D2BE8);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DD8, &qword_2741D2BF0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DE0, &qword_2741D2BF8);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v35 - v25;
  *v26 = sub_2741C70EC();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DE8, &qword_2741D2C00);
  sub_27411A00C(a1, &v26[*(v27 + 44)]);
  *v18 = sub_2741C70EC();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DF0, &qword_2741D2C08);
  sub_27411A7F0(a1, &v18[*(v28 + 44)]);
  *v10 = sub_2741C70EC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DF8, &qword_2741D2C10);
  sub_27411AC54(a1, &v10[*(v29 + 44)]);
  v30 = v23;
  v35 = v23;
  sub_2740A6D94(v26, v23, &qword_280939DE0, &qword_2741D2BF8);
  sub_2740A6D94(v18, v15, &qword_280939DD8, &qword_2741D2BF0);
  v31 = v7;
  sub_2740A6D94(v10, v7, &qword_280939DD0, &qword_2741D2BE8);
  v32 = v36;
  sub_2740A6D94(v30, v36, &qword_280939DE0, &qword_2741D2BF8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E00, &qword_2741D2C18);
  sub_2740A6D94(v15, v32 + *(v33 + 48), &qword_280939DD8, &qword_2741D2BF0);
  sub_2740A6D94(v31, v32 + *(v33 + 64), &qword_280939DD0, &qword_2741D2BE8);
  sub_27409D420(v10, &qword_280939DD0, &qword_2741D2BE8);
  sub_27409D420(v18, &qword_280939DD8, &qword_2741D2BF0);
  sub_27409D420(v26, &qword_280939DE0, &qword_2741D2BF8);
  sub_27409D420(v31, &qword_280939DD0, &qword_2741D2BE8);
  sub_27409D420(v15, &qword_280939DD8, &qword_2741D2BF0);
  return sub_27409D420(v35, &qword_280939DE0, &qword_2741D2BF8);
}

uint64_t sub_27411A00C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for ConfigureIP4View(0);
  v79 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v80 = v5;
  v81 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  MEMORY[0x28223BE20](v62, v6);
  v63 = v61 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E20, &qword_2741D2C70);
  MEMORY[0x28223BE20](v65, v8);
  v10 = v61 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E28, &qword_2741D2C78);
  MEMORY[0x28223BE20](v69, v11);
  v71 = v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E50, &qword_2741D2C90);
  v74 = *(v13 - 8);
  v75 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v73 = v61 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E58, &qword_2741D2C98);
  v17 = MEMORY[0x28223BE20](v72, v16);
  v78 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v68 = v61 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v77 = v61 - v23;
  if (qword_280937A40 != -1)
  {
    swift_once();
  }

  v84 = qword_280946C68;
  v85 = unk_280946C70;
  v24 = sub_2740A6A74();

  v61[1] = v24;
  v67 = sub_2741C76AC();
  v66 = v25;
  v64 = v26;
  v70 = v27;
  sub_2741C714C();
  v76 = v3;
  v28 = *(v3 + 32);
  v82 = a1;
  v29 = (a1 + v28);
  v31 = v29[1];
  v32 = v29[2];
  v87 = *v29;
  v30 = v87;
  v88 = v31;
  v89 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  v33 = v63;
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v35 = v33 + *(v62 + 36);
  *v35 = KeyPath;
  *(v35 + 8) = 2;
  v84 = v30;
  v85 = v31;
  v86 = v32;
  sub_2741C7A3C();
  v36 = v87;
  v37 = v88;

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = sub_2741C799C();
  }

  else
  {
    v39 = sub_2741C79AC();
  }

  v40 = v39;
  v41 = swift_getKeyPath();
  sub_27411C5C4(v33, v10);
  v42 = &v10[*(v65 + 36)];
  *v42 = v41;
  v42[1] = v40;
  v84 = qword_280946C68;
  v85 = unk_280946C70;
  sub_27411C634();
  v43 = v71;
  sub_2741C77BC();
  sub_27409D420(v10, &qword_280939E20, &qword_2741D2C70);
  v44 = v82;
  v45 = v82 + *(v76 + 44);
  v46 = *v45;
  v47 = *(v45 + 8);
  LOBYTE(v45) = *(v45 + 16);
  LOBYTE(v84) = v46;
  v85 = v47;
  LOBYTE(v86) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E60, &qword_2741D2CA0);
  sub_2741C6C8C();
  sub_27411C6EC();
  v48 = v73;
  sub_2741C78AC();

  sub_27409D420(v43, &qword_280939E28, &qword_2741D2C78);
  v49 = v81;
  sub_27411C038(v44, v81);
  v50 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v51 = swift_allocObject();
  sub_27411C0A0(v49, v51 + v50);
  v52 = v68;
  (*(v74 + 32))(v68, v48, v75);
  v53 = (v52 + *(v72 + 36));
  *v53 = sub_27411C964;
  v53[1] = v51;
  v53[2] = 0;
  v53[3] = 0;
  v54 = v77;
  sub_27411C9F0(v52, v77);
  v55 = v78;
  sub_2740A6D94(v54, v78, &qword_280939E58, &qword_2741D2C98);
  v56 = v83;
  v57 = v67;
  v58 = v66;
  *v83 = v67;
  v56[1] = v58;
  LOBYTE(v41) = v64 & 1;
  *(v56 + 16) = v64 & 1;
  v56[3] = v70;
  v56[4] = 0;
  *(v56 + 40) = 1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E70, &qword_2741D2CA8);
  sub_2740A6D94(v55, v56 + *(v59 + 64), &qword_280939E58, &qword_2741D2C98);
  sub_27409861C(v57, v58, v41);

  sub_27409D420(v54, &qword_280939E58, &qword_2741D2C98);
  sub_27409D420(v55, &qword_280939E58, &qword_2741D2C98);
  sub_2740A6AC8(v57, v58, v41);
}

uint64_t sub_27411A774(uint64_t a1)
{
  type metadata accessor for ConfigureIP4View(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E60, &qword_2741D2CA0);
  return sub_2741C6C7C();
}

uint64_t sub_27411A7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  MEMORY[0x28223BE20](v42, v4);
  v43 = &v40 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E20, &qword_2741D2C70);
  MEMORY[0x28223BE20](v48, v6);
  v47 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E28, &qword_2741D2C78);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v50 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v49 = &v40 - v13;
  if (qword_2809377D0 != -1)
  {
    swift_once();
  }

  v51 = qword_2809466E8;
  v52 = unk_2809466F0;
  v14 = sub_2740A6A74();

  v40 = v14;
  v15 = sub_2741C76AC();
  v44 = v16;
  v45 = v15;
  v41 = v17;
  v46 = v18;
  sub_2741C714C();
  v19 = (a1 + *(type metadata accessor for ConfigureIP4View(0) + 36));
  v21 = v19[1];
  v22 = v19[2];
  v54 = *v19;
  v20 = v54;
  v55 = v21;
  v56 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  v23 = v43;
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v25 = v23 + *(v42 + 36);
  *v25 = KeyPath;
  *(v25 + 8) = 2;
  v51 = v20;
  v52 = v21;
  v53 = v22;
  sub_2741C7A3C();
  v27 = v54;
  v26 = v55;

  v28 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v28 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = sub_2741C799C();
  }

  else
  {
    v29 = sub_2741C79AC();
  }

  v30 = v29;
  v31 = swift_getKeyPath();
  v32 = v47;
  sub_27411C5C4(v23, v47);
  v33 = (v32 + *(v48 + 36));
  *v33 = v31;
  v33[1] = v30;
  v51 = qword_2809466E8;
  v52 = unk_2809466F0;
  sub_27411C634();
  v34 = v49;
  sub_2741C77BC();
  sub_27409D420(v32, &qword_280939E20, &qword_2741D2C70);
  v35 = v50;
  sub_2740A6D94(v34, v50, &qword_280939E28, &qword_2741D2C78);
  v37 = v44;
  v36 = v45;
  *a2 = v45;
  *(a2 + 8) = v37;
  LOBYTE(v32) = v41 & 1;
  *(a2 + 16) = v41 & 1;
  *(a2 + 24) = v46;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E48, &qword_2741D2C88);
  sub_2740A6D94(v35, a2 + *(v38 + 64), &qword_280939E28, &qword_2741D2C78);
  sub_27409861C(v36, v37, v32);

  sub_27409D420(v34, &qword_280939E28, &qword_2741D2C78);
  sub_27409D420(v35, &qword_280939E28, &qword_2741D2C78);
  sub_2740A6AC8(v36, v37, v32);
}

uint64_t sub_27411AC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  MEMORY[0x28223BE20](v36, v4);
  v6 = &v31 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E08, &unk_2741D2C20);
  v8 = MEMORY[0x28223BE20](v37, v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v31 - v12;
  if (qword_280937A48 != -1)
  {
    swift_once();
  }

  v38 = qword_280946C78;
  v39 = unk_280946C80;
  sub_2740A6A74();

  v14 = sub_2741C76AC();
  v32 = v15;
  v33 = v14;
  v34 = v16;
  v35 = v17;
  sub_2741C714C();
  v18 = (a1 + *(type metadata accessor for ConfigureIP4View(0) + 40));
  v19 = *v18;
  v20 = *(v18 + 2);
  v40 = v19;
  v41 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v22 = &v6[*(v36 + 36)];
  *v22 = KeyPath;
  v22[8] = 2;
  v38 = qword_280946C78;
  v39 = unk_280946C80;
  sub_27411C4D8();
  sub_2741C77BC();
  sub_27409D420(v6, &qword_280939018, &qword_2741CE9E0);
  v23 = sub_2741C799C();
  v24 = swift_getKeyPath();
  v25 = &v13[*(v37 + 36)];
  *v25 = v24;
  v25[1] = v23;
  sub_2740A6D94(v13, v10, &qword_280939E08, &unk_2741D2C20);
  v27 = v32;
  v26 = v33;
  *a2 = v33;
  *(a2 + 8) = v27;
  v28 = v34 & 1;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E18, &qword_2741D2C68);
  sub_2740A6D94(v10, a2 + *(v29 + 64), &qword_280939E08, &unk_2741D2C20);
  sub_27409861C(v26, v27, v28);

  sub_27409D420(v13, &qword_280939E08, &unk_2741D2C20);
  sub_27409D420(v10, &qword_280939E08, &unk_2741D2C20);
  sub_2740A6AC8(v26, v27, v28);
}

uint64_t sub_27411AFE4(uint64_t a1)
{
  v2 = type metadata accessor for ConfigureIP4View(0);
  v3 = (a1 + *(v2 + 24));
  v11 = *v3;
  v12 = *(v3 + 1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](v10, v4);
  v5 = v10[0];
  swift_getKeyPath();
  v11 = v5;
  sub_2740D985C(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  swift_beginAccess();

  v6 = (a1 + *(v2 + 20));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v10[0]) = v7;
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  return sub_2741C7A4C();
}

uint64_t sub_27411B138(uint64_t a1)
{
  v2 = sub_2741C730C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F48, &qword_2741D04A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-v7];
  sub_2741C72EC();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  sub_2740DD218();
  sub_2741C6D2C();
  v9 = sub_2740A6D24(&qword_280938F50, &qword_280938F48, &qword_2741D04A0, MEMORY[0x277CDD7A8]);
  MEMORY[0x2743E53C0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_27411B2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConfigureIP4View(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  if (qword_280937AE8 != -1)
  {
    swift_once();
  }

  v15[0] = qword_280946DB8;
  v15[1] = unk_280946DC0;
  sub_27411C038(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_27411C0A0(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_2740A6A74();

  sub_2741C7A9C();
  v10 = sub_27411BCDC();
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = !v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_2740A6E2C;
  v14[2] = v12;
  return result;
}

uint64_t sub_27411B4C8(uint64_t a1)
{
  v56 = sub_2741C6DBC();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v2);
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740CB460(0xD000000000000016, 0x80000002741DCB20);
  v4 = type metadata accessor for ConfigureIP4View(0);
  v5 = (a1 + v4[6]);
  v6 = a1;
  v7 = *v5;
  v62 = v5[1];
  v58 = v5[2];
  v75 = v7;
  v76 = v62;
  v8 = v7;
  v77 = v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](&v73);
  v9 = v73;
  v10 = v4[5];
  v61 = v4;
  v11 = (v6 + v10);
  v53 = v6;
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v75) = v12;
  v76 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  sub_2741C7A3C();
  v14 = v73;
  swift_getKeyPath();
  v75 = v9;
  sub_2740D985C(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v75 = v9;
  swift_getKeyPath();
  sub_2741C6A2C();

  v15 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  *(v9 + v15) = v14;
  *&v73 = v9;
  swift_getKeyPath();
  sub_2741C6A1C();

  v57 = v8;
  v16 = v62;
  *&v73 = v8;
  *(&v73 + 1) = v62;
  v74 = v58;
  MEMORY[0x2743E5B70](&v71, v60);
  v17 = v71;
  v18 = v6 + v4[7];
  v19 = *v18;
  v20 = *(v18 + 16);
  v73 = v19;
  v74 = v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A3C();
  v21 = v71;
  swift_getKeyPath();
  *&v73 = v17;
  sub_2741C6A0C();

  *&v73 = v17;
  swift_getKeyPath();
  sub_2741C6A2C();

  v22 = v17 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  *(v22 + 40) = v21;

  *&v71 = v17;
  swift_getKeyPath();
  sub_2741C6A1C();

  *&v71 = v8;
  *(&v71 + 1) = v16;
  v23 = v58;
  v72 = v58;
  v24 = v60;
  MEMORY[0x2743E5B70](&v69, v60);
  v25 = v69;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D80, &qword_2741D2B38);
  v26 = swift_allocObject();
  v51 = xmmword_2741CB550;
  *(v26 + 16) = xmmword_2741CB550;
  v27 = v53;
  v28 = v53 + v61[8];
  v29 = *v28;
  v30 = *(v28 + 16);
  v71 = v29;
  v72 = v30;
  sub_2741C7A3C();
  v31 = *(&v69 + 1);
  *(v26 + 32) = v69;
  *(v26 + 40) = v31;
  swift_getKeyPath();
  *&v71 = v25;
  sub_2741C6A0C();

  *&v71 = v25;
  swift_getKeyPath();
  sub_2741C6A2C();

  v32 = v25 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  *(v32 + 8) = v26;

  *&v69 = v25;
  swift_getKeyPath();
  sub_2741C6A1C();

  v33 = v57;
  *&v69 = v57;
  *(&v69 + 1) = v62;
  v70 = v23;
  MEMORY[0x2743E5B70](&v67, v24);
  v34 = v67;
  v35 = swift_allocObject();
  *(v35 + 16) = v51;
  v36 = (v27 + v61[9]);
  v37 = *v36;
  v38 = *(v36 + 2);
  v69 = v37;
  v70 = v38;
  sub_2741C7A3C();
  v39 = *(&v67 + 1);
  *(v35 + 32) = v67;
  *(v35 + 40) = v39;
  swift_getKeyPath();
  *&v69 = v34;
  sub_2741C6A0C();

  *&v69 = v34;
  swift_getKeyPath();
  sub_2741C6A2C();

  v40 = v34 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  *(v40 + 16) = v35;

  *&v67 = v34;
  swift_getKeyPath();
  sub_2741C6A1C();

  *&v67 = v33;
  *(&v67 + 1) = v62;
  v41 = v58;
  v68 = v58;
  MEMORY[0x2743E5B70](&v64, v24);
  v42 = v64;
  v43 = (v27 + v61[10]);
  v44 = *v43;
  v45 = *(v43 + 2);
  v67 = v44;
  v68 = v45;
  sub_2741C7A3C();
  v46 = v64;
  v47 = v65;
  swift_getKeyPath();
  *&v67 = v42;
  sub_2741C6A0C();

  *&v67 = v42;
  swift_getKeyPath();
  sub_2741C6A2C();

  v48 = v42 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  *(v48 + 24) = v46;
  *(v48 + 32) = v47;

  v64 = v42;
  swift_getKeyPath();
  sub_2741C6A1C();

  v64 = v57;
  v65 = v62;
  v66 = v41;
  MEMORY[0x2743E5B70](&v63, v60);
  sub_27410257C();

  v49 = v54;
  sub_2741181C0(v54);
  sub_2741C6DAC();
  return (*(v55 + 8))(v49, v56);
}

BOOL sub_27411BCDC()
{
  v1 = type metadata accessor for ConfigureIP4View(0);
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = *(v2 + 1);
  v30 = v3;
  LOBYTE(v38) = v3;
  v29 = v4;
  v39 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  sub_2741C7A3C();
  v5 = v35;
  v27 = v1;
  v28 = v0;
  v6 = (v0 + *(v1 + 24));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v38 = *v6;
  v39 = v8;
  v40 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](&v35);
  v11 = v35;
  swift_getKeyPath();
  v38 = v11;
  sub_2740D985C(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v13 = *(v11 + v12);

  if (qword_2741D2CB8[v5] == qword_2741D2CB8[v13])
  {
    LOBYTE(v35) = v30;
    v36 = v29;
    sub_2741C7A3C();
    if (!v33)
    {
      return 0;
    }
  }

  LOBYTE(v35) = v30;
  v36 = v29;
  sub_2741C7A3C();
  v14 = v33;
  v35 = v7;
  v36 = v8;
  v37 = v9;
  MEMORY[0x2743E5B70](&v33, v10);
  v15 = v33;
  swift_getKeyPath();
  v35 = v15;
  sub_2741C6A0C();

  v16 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v17 = *(v15 + v16);

  if (qword_2741D2CB8[v14] == qword_2741D2CB8[v17])
  {
    return 0;
  }

  LOBYTE(v33) = v30;
  *(&v33 + 1) = v29;
  sub_2741C7A3C();
  if (v31[0] != 1)
  {
    return 1;
  }

  v19 = (v28 + *(v27 + 32));
  v20 = *v19;
  v21 = *(v19 + 2);
  v33 = v20;
  v34 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A3C();

  v22 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v22 = *v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    return 0;
  }

  v23 = (v28 + *(v27 + 36));
  v24 = *v23;
  v25 = *(v23 + 2);
  v33 = v24;
  v34 = v25;
  sub_2741C7A3C();

  v26 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v26 = *v31 & 0xFFFFFFFFFFFFLL;
  }

  return v26 != 0;
}

uint64_t sub_27411C038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigureIP4View(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27411C0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigureIP4View(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27411C11C()
{
  result = qword_280939D60;
  if (!qword_280939D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939D40, &qword_2741D2A98);
    sub_2740A6D24(&qword_280939D68, &qword_280939D70, &unk_2741D2AB8, MEMORY[0x277CDE580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939D60);
  }

  return result;
}

uint64_t sub_27411C21C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C90, &qword_2741D2CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AE0, &qword_2741D2B90);
  sub_2740A6D24(&qword_280939E78, &qword_280938C90, &qword_2741D2CB0, MEMORY[0x277D83980]);
  sub_27411CA98();
  sub_2740A6D24(&qword_280938AE8, &qword_280938AE0, &qword_2741D2B90, MEMORY[0x277CDF028]);
  return sub_2741C7B5C();
}

uint64_t sub_27411C384(char *a1)
{
  v3 = *(type metadata accessor for ConfigureIP4View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27411906C(a1, v4);
}

unint64_t sub_27411C410()
{
  result = qword_280939DB0;
  if (!qword_280939DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939DA8, &qword_2741D2B88);
    sub_2740A6D24(&qword_280938AE8, &qword_280938AE0, &qword_2741D2B90, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939DB0);
  }

  return result;
}

unint64_t sub_27411C4D8()
{
  result = qword_280939E10;
  if (!qword_280939E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939018, &qword_2741CE9E0);
    sub_2740A6D24(&qword_280938148, &qword_280938118, &unk_2741CB890, MEMORY[0x277CDF1A8]);
    sub_2740A6D24(&qword_280939668, &qword_280939670, &qword_2741D2C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939E10);
  }

  return result;
}

uint64_t sub_27411C5C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27411C634()
{
  result = qword_280939E30;
  if (!qword_280939E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939E20, &qword_2741D2C70);
    sub_27411C4D8();
    sub_2740A6D24(&qword_280939E38, &qword_280939E40, &qword_2741D2C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939E30);
  }

  return result;
}

unint64_t sub_27411C6EC()
{
  result = qword_280939E68;
  if (!qword_280939E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939E28, &qword_2741D2C78);
    sub_27411C634();
    sub_2740D985C(&qword_280938F10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939E68);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = *(type metadata accessor for ConfigureIP4View(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2741C6DBC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27411C97C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConfigureIP4View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_27411C9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E58, &qword_2741D2C98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27411CA60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_27411CA98()
{
  result = qword_280939E80;
  if (!qword_280939E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939E80);
  }

  return result;
}

uint64_t sub_27411CAEC()
{
  v1 = *(type metadata accessor for ConfigureIP4View(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2741C6DBC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27411CCA8()
{
  v1 = *(type metadata accessor for ConfigureIP4View(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_2741191F8(v2, v3);
}

uint64_t sub_27411CD38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939D48, &qword_2741D2AA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F40, &unk_2741CE890);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939D40, &qword_2741D2A98);
  sub_27411C11C();
  sub_2740A6A74();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F48, &qword_2741D04A0);
  sub_2740A6D24(&qword_280938F50, &qword_280938F48, &qword_2741D04A0, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27411CE94(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_27411CEB8, 0, 0);
}

uint64_t sub_27411CEB8()
{
  sub_27409D4E4(v0[20], (v0 + 10));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
  sub_2740BA268(0, &qword_2809385E8, 0x277D54CB8);
  if (swift_dynamicCast())
  {
    v1 = v0[21];
    v2 = v0[18];
    v0[22] = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_27411D0A8;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E90, &qword_2741D2D18);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_27411D2C0;
    v0[13] = &block_descriptor_8;
    v0[14] = v3;
    [v1 enableRemoteHotspotForDevice:v2 withCompletionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_27411D4AC();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 1;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_27411D0A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_27411D250;
  }

  else
  {
    v2 = sub_27411D1B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27411D1B8()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v2[3] = sub_2740BA268(0, &qword_280939E98, 0x277D54CC0);
  v2[4] = &off_28832A518;

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_27411D250(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_27411D2C0(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_27411D398(uint64_t a1)
{
  [*v1 setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t sub_27411D400(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27409D648;

  return sub_27411CE94(a1, a2);
}

unint64_t sub_27411D4AC()
{
  result = qword_280939E88;
  if (!qword_280939E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939E88);
  }

  return result;
}

uint64_t sub_27411D518(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_27411D5B0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t static NetworkPrefSupport.shared.getter()
{
  type metadata accessor for NetworkPrefSupport();

  return swift_initStaticObject();
}

void *NetworkPrefSupport.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t NetworkPrefSupport.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_27411D6C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
  return swift_unknownObjectRetain();
}

unint64_t sub_27411D7E8()
{
  result = qword_280939EA0;
  if (!qword_280939EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EA0);
  }

  return result;
}

unint64_t sub_27411D840()
{
  result = qword_280939EA8;
  if (!qword_280939EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EA8);
  }

  return result;
}

unint64_t sub_27411D898()
{
  result = qword_280939EB0;
  if (!qword_280939EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EB0);
  }

  return result;
}

unint64_t sub_27411D8F0()
{
  result = qword_280939EB8;
  if (!qword_280939EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EB8);
  }

  return result;
}

id sub_27411D954()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75E10]) initWithSizeCategory_];
  [v2 setChargePercent_];
  return v2;
}

uint64_t sub_27411DA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27411DB0C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27411DA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27411DB0C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27411DAE0(uint64_t a1)
{
  sub_27411DB0C();
  sub_2741C729C();
  __break(1u);
}

unint64_t sub_27411DB0C()
{
  result = qword_280939EC0;
  if (!qword_280939EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EC0);
  }

  return result;
}

uint64_t SettingsKey.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2741C869C();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_27411DBDC()
{
  result = qword_280939EC8;
  if (!qword_280939EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EC8);
  }

  return result;
}

uint64_t sub_27411DC30()
{
  sub_2741C87DC();
  sub_2741C7F0C();
  return sub_2741C880C();
}

uint64_t sub_27411DCAC(uint64_t a1)
{
  sub_2741C87DC();
  sub_2741C7F0C();
  return sub_2741C880C();
}

uint64_t sub_27411DD04@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2741C869C();

  *a2 = v3 != 0;
  return result;
}

void sub_27411DD58(uint64_t a1@<X8>)
{
  strcpy(a1, "userSettings");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_27411DD8C()
{

  sub_2741110E8(v0 + 40);
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit16PresentableError___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PresentableError(uint64_t a1)
{
  result = qword_280939ED8;
  if (!qword_280939ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27411DE94(uint64_t a1)
{
  result = sub_2741C6A4C();
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

unint64_t sub_27411DF54(uint64_t a1)
{
  result = sub_27411DF7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27411DF7C()
{
  result = qword_280939EE8;
  if (!qword_280939EE8)
  {
    type metadata accessor for PresentableError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EE8);
  }

  return result;
}

uint64_t sub_27411DFD4()
{
  v1 = sub_2740EABAC();
  if (v2)
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
    sub_2741C856C();

    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    MEMORY[0x2743E5FB0](v3, v4);

    sub_2740CB944(0xD000000000000010, 0x80000002741DCD30);
  }

  else
  {
    *(v0 + 16) = 0x6E776F6E6B6E75;
    *(v0 + 24) = 0xE700000000000000;
    MEMORY[0x2743E5FB0](32, 0xE100000000000000);
    MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741DCCF0);
    sub_2740CB218(0x5343495254454D5BLL, 0xE90000000000005DLL, 0xD000000000000010, 0x80000002741DCD10);
  }

  return v0;
}

uint64_t sub_27411E10C()
{
  type metadata accessor for MetricsManager();
  swift_allocObject();
  result = sub_27411DFD4();
  qword_280945E28 = result;
  return result;
}

void sub_27411E16C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2741C844C();
    type metadata accessor for WiFiNetwork(0);
    sub_274122CD0(&qword_280939F58, type metadata accessor for WiFiNetwork, MEMORY[0x277D85378]);
    sub_2741C821C();
    v1 = v16;
    v2 = v17;
    v4 = v18;
    v3 = v19;
    v5 = v20;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v3;
    v10 = v5;
    v11 = v3;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_2740D43C8(v1);
      return;
    }

    while (1)
    {
      v14 = v13;
      sub_274152768(&v21, v14);
      v15 = v21;

      v3 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2741C84BC())
      {
        type metadata accessor for WiFiNetwork(0);
        swift_dynamicCast();
        v13 = v21;
        v11 = v3;
        v12 = v5;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_27411E380()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t sub_27411E3F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t sub_27411E468()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t sub_27411E4DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t sub_27411E550(uint64_t a1)
{
  sub_2740CB960(0xD000000000000020, 0x80000002741DCF30);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for NetworksViewModel(0);
    sub_274122CD0(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
    sub_2741C6B5C();

    sub_2741C6B8C();
  }

  return result;
}

uint64_t sub_27411E620()
{
  v1[20] = v0;
  sub_2741C80AC();
  v1[21] = sub_2741C809C();
  v3 = sub_2741C805C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_27411E6B8, v3, v2);
}

uint64_t sub_27411E6B8()
{
  v1 = 0xD000000000000028;
  if (*(*(v0 + 160) + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle) == 1)
  {
    v2 = "kRequestError16";
    v1 = 0xD000000000000043;
LABEL_8:

    sub_2740CB960(v1, v2 | 0x8000000000000000);
    v5 = *(v0 + 8);

    return v5();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 192) = Strong;

  if (!Strong)
  {
    v2 = "it19NetworkRequestError16";
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 1;

  sub_2741C6BFC();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_27411E924;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939F50, &qword_2741D3548);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_27411EC9C;
  *(v0 + 104) = &block_descriptor_85;
  *(v0 + 112) = v4;
  [Strong performScanWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_27411E924()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_27411EA2C, v2, v1);
}

uint64_t sub_27411EA2C()
{
  v12 = v0;

  v1 = v0[18];
  v2 = v0[19];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 0;

  sub_2741C6BFC();
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_2741C6BEC();

    v3 = sub_27418F494(v0[10]);

    v4 = sub_27418F494(v1);

    v5 = sub_27412170C(v4, v3);
    v6 = sub_27411ED24(v5, v4);

    sub_27411E16C(v6);

    sub_2741209AC(v3);

    v11 = sub_274122374(v7);
    sub_274120930(&v11);

    v8 = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    v0[10] = v8;

    sub_2741C6BFC();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_27411EC9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = 0;
  if (a2)
  {
    type metadata accessor for WiFiNetwork(0);
    v6 = sub_2741C7FEC();
  }

  v7 = *(*(v5 + 64) + 40);
  *v7 = v6;
  v7[1] = a3;
  v8 = a3;

  return MEMORY[0x282200948](v5);
}

uint64_t sub_27411ED24(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_2741C848C();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_274152B48(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_2741C848C() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_2741C848C();
  v2 = sub_2741219E0(v5, v6, &qword_280939F38, &qword_2741D33D0, type metadata accessor for WiFiNetwork, sub_274153EC8);
LABEL_10:

  return sub_274152EA0(a1, v2);
}

uint64_t sub_27411EE50(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  sub_2741C80AC();
  v2[30] = sub_2741C809C();
  v4 = sub_2741C805C();
  v2[31] = v4;
  v2[32] = v3;

  return MEMORY[0x2822009F8](sub_27411EEE8, v4, v3);
}

uint64_t sub_27411EEE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[33] = Strong;

  if (Strong)
  {
    v2 = v0[28];
    if (*(v0[29] + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle) == 1)
    {
      v3 = v0 + 10;
      swift_getKeyPath();
      swift_getKeyPath();
      v0[18] = v2;

      v4 = v2;
      sub_2741C6BFC();
      v0[10] = v0;
      v0[15] = v0 + 26;
      v0[11] = sub_27411F504;
      v5 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939F48, &qword_2741D34B0);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_27411FA8C;
      v0[21] = &block_descriptor_76;
      v0[22] = v5;
      [Strong associateTo:v4 completionHandler:{v0 + 18, v11}];
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      swift_getKeyPath();
      swift_getKeyPath();
      v0[18] = 0;
      sub_2741C6BFC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      v12 = v0[18];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      v8 = v0[18];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[18] = v8;
      sub_2741C6BFC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      swift_getKeyPath();
      swift_getKeyPath();
      v0[18] = v2;
      v9 = v2;
      sub_2741C6BFC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 144) = 1;
      sub_2741C6BFC();
      type metadata accessor for NetworksViewModel(0);
      sub_274122CD0(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
      sub_2741C6B5C();
      sub_2741C6B8C();

      v3 = v0 + 2;
      v0[2] = v0;
      v0[7] = v0 + 26;
      v0[3] = sub_27411F6F0;
      v10 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939F48, &qword_2741D34B0);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_27411FA8C;
      v0[21] = &block_descriptor_9;
      v0[22] = v10;
      [Strong associateTo:v9 completionHandler:{v0 + 18, v12}];
    }

    return MEMORY[0x282200938](v3);
  }

  else
  {

    sub_2740CB960(0xD000000000000028, 0x80000002741DCDE0);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_27411F504()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_27411F60C, v2, v1);
}

uint64_t sub_27411F60C()
{

  type metadata accessor for NetworksViewModel(0);
  sub_274122CD0(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6B5C();
  sub_2741C6B8C();

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27411F6F0()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_27411F7F8, v2, v1);
}

uint64_t sub_27411F7F8()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 0;
  sub_2741C6BFC();
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_2741C6BEC();

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 144) = v2;
    v4 = v3;
    sub_2741C6BFC();
  }

  else
  {
    if (!v1)
    {
      goto LABEL_6;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v1;
    sub_2741C6BEC();

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 144) = v1;
    sub_2741C6BFC();
    v1 = v5;
  }

LABEL_6:
  type metadata accessor for NetworksViewModel(0);
  sub_274122CD0(&qword_280939F40, type metadata accessor for NetworksViewModel, &unk_2741D32C0);
  sub_2741C6B5C();
  sub_2741C6B8C();

  swift_unknownObjectRelease();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_27411FA8C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v8 = a2;
  v9 = a3;

  return MEMORY[0x282200948](v6);
}

uint64_t sub_27411FB00(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_2741C80AC();
  v2[5] = sub_2741C809C();
  v4 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27411FB98, v4, v3);
}

uint64_t sub_27411FB98()
{
  v24 = v0;
  v1 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v2 = sub_27418F494(v0[2]);

  v4 = sub_27418F494(v3);

  sub_274149FEC(v4, v2);
  v6 = v5;
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = v0;
  while (v7)
  {
    v8 = 0;
    v9 = v1 & 0xC000000000000001;
    v10 = v1 & 0xFFFFFFFFFFFFFF8;
    v11 = v0[3] + 32;
    v0 = &qword_280939F38;
    while (v9)
    {
      v16 = MEMORY[0x2743E6600](v8, v22[3]);
      v1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_16;
      }

LABEL_9:
      if ((v6 & 0xC000000000000001) != 0)
      {
        if (v6 >= 0)
        {
          v6 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v12 = v16;
        v17 = sub_2741C848C();
        if (__OFADD__(v17, 1))
        {
          goto LABEL_18;
        }

        v23 = sub_2741219E0(v6, v17 + 1, &qword_280939F38, &qword_2741D33D0, type metadata accessor for WiFiNetwork, sub_274153EC8);
        v14 = v12;
        isUniquelyReferenced_nonNull_native = 1;
      }

      else
      {
        v12 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v6;
        v14 = v12;
      }

      v15 = sub_2741220AC(v14, isUniquelyReferenced_nonNull_native);

      v6 = v23;
      ++v8;
      if (v1 == v7)
      {
        goto LABEL_20;
      }
    }

    if (v8 >= *(v10 + 16))
    {
      goto LABEL_17;
    }

    v16 = *(v11 + 8 * v8);
    v1 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v7 = sub_2741C848C();
    v22 = v0;
  }

LABEL_20:
  sub_2741209AC(v6);

  v23 = sub_274122374(v18);
  sub_274120930(&v23);

  v19 = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  v22[2] = v19;

  sub_2741C6BFC();

  v20 = v22[1];

  return v20();
}

char *sub_27411FEBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v1 = type metadata accessor for WiFiPickerConfiguration();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle] = 0;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle] = 0;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption] = 3;
  v3 = &v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_networks] = v12;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_currentNetwork] = v12;
  v13.receiver = v2;
  v13.super_class = v1;
  v4 = objc_msgSendSuper2(&v13, sel_init);
  v5 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle);
  v6 = OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle;
  swift_beginAccess();
  *&v4[v6] = v5;
  v7 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_presentationStyle);
  v8 = OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle;
  swift_beginAccess();
  *&v4[v8] = v7;
  v9 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_displayOption);
  v10 = OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption;
  swift_beginAccess();
  *&v4[v10] = v9;
  return v4;
}

uint64_t sub_2741200E4()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__currentNetworkModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939F60, &unk_2741D3550);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__networks;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E0, &qword_2741D0C48);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__isScanning;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__selectedNetwork;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939128, &unk_2741CED70);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworksViewModel(uint64_t a1)
{
  result = qword_280939F18;
  if (!qword_280939F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2741202D4(uint64_t a1)
{
  sub_274120460(319);
  if (v1 <= 0x3F)
  {
    sub_2740DEA38(319, &qword_2809399D0, &qword_2809399D8, &unk_2741D32B0);
    if (v2 <= 0x3F)
    {
      sub_2740DE9E8();
      if (v3 <= 0x3F)
      {
        sub_2740DEA38(319, &qword_280939108, &qword_280938C68, qword_2741CD200);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_274120460(uint64_t a1)
{
  if (!qword_280939F28)
  {
    type metadata accessor for CurrentNetworkViewModel(255);
    v1 = sub_2741C6C0C();
    if (!v2)
    {
      atomic_store(v1, &qword_280939F28);
    }
  }
}

uint64_t sub_2741204B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NetworksViewModel(0);
  result = sub_2741C6B5C();
  *a1 = result;
  return result;
}

uint64_t sub_2741205C0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  *a2 = v4;
  return result;
}

uint64_t sub_274120640(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2741C6BFC();
}

uint64_t sub_2741206BC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  *a2 = v4;
  return result;
}

uint64_t sub_274120740(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2741C6BFC();
}

uint64_t sub_27412082C@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  *a4 = v6;
  return result;
}

uint64_t sub_2741208BC(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return sub_2741C6BFC();
}

uint64_t sub_274120930(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2741B4B70(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_274120A5C(v6);
  return sub_2741C85AC();
}

void *sub_2741209AC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2741C848C();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_274177768(v2, 0);

    v1 = sub_274156B04(&v5, v3 + 4, v2, v1);
    sub_2740D43C8(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_274120A5C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2741C86BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for WiFiNetwork(0);
        v6 = sub_2741C801C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_274120C94(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_274120B60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_274120B60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_6:
    v8 = v7;
    v18 = v6;
    while (1)
    {
      v9 = sub_2741C7ECC();
      v11 = v10;
      if (v9 == sub_2741C7ECC() && v11 == v12)
      {

LABEL_5:
        ++v4;
        v6 = v18 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v14 = sub_2741C86DC();

      if ((v14 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v6;
      *v6 = v6[1];
      v6[1] = v15;
      --v6;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_274120C94(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v4;
  v105 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_143;
    }

    v6 = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v97 = v7;
      v98 = *(v6 + 16);
      if (v98 >= 2)
      {
        while (*a3)
        {
          v7 = v98 - 1;
          v99 = *(v6 + 16 * v98);
          v100 = *(v6 + 16 * (v98 - 1) + 40);
          sub_2741213D4((*a3 + 8 * v99), (*a3 + 8 * *(v6 + 16 * (v98 - 1) + 32)), (*a3 + 8 * v100), v5);
          if (v97)
          {
          }

          if (v100 < v99)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2741B412C(v6);
          }

          if (v98 - 2 >= *(v6 + 16))
          {
            goto LABEL_131;
          }

          v101 = (v6 + 16 * v98);
          *v101 = v99;
          v101[1] = v100;
          result = sub_2741B40A0(v98 - 1);
          v98 = *(v6 + 16);
          if (v98 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_2741B412C(v6);
    v6 = result;
    goto LABEL_106;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v109 = v8;
      v12 = v11;
      v13 = *a3;
      v106 = v12;
      v5 = &OBJC_IVAR___WiFiNetwork_Swift_name;
      v14 = sub_2741C7ECC();
      v16 = v15;
      v17 = sub_2741C7ECC();
      v6 = v18;
      v19 = v14 == v17 && v16 == v18;
      v103 = v7;
      if (v19)
      {
        v111 = 0;
      }

      else
      {
        v111 = sub_2741C86DC();
      }

      v20 = 8 * v106;
      v21 = v13 + 8 * v106 + 16;
      v22 = 8 * v106 + 8;
      v108 = v10;
      do
      {
        v7 = v9;
        v25 = v22;
        if (++v9 >= v109)
        {
          break;
        }

        v26 = v9;
        v5 = *(v21 - 8);
        v27 = sub_2741C7ECC();
        v29 = v28;
        v31 = sub_2741C7ECC();
        v32 = v27;
        v6 = v30;
        v33 = v32 == v31 && v29 == v30;
        v23 = v33 ? 0 : sub_2741C86DC();

        v24 = v111 ^ v23;
        v21 += 8;
        v22 = v25 + 8;
        v9 = v26;
        v10 = v108;
      }

      while ((v24 & 1) == 0);
      if ((v111 & 1) == 0)
      {
        goto LABEL_29;
      }

      v34 = v106;
      if (v9 < v106)
      {
        goto LABEL_134;
      }

      if (v106 < v9)
      {
        do
        {
          if (v34 != v7)
          {
            v36 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v37 = *(v36 + v20);
            *(v36 + v20) = *(v36 + v25);
            *(v36 + v25) = v37;
          }

          ++v34;
          v25 -= 8;
          v20 += 8;
        }

        while (v34 < v7--);
LABEL_29:
        v7 = v103;
        v11 = v106;
        goto LABEL_30;
      }

      v7 = v103;
      v11 = v106;
    }

LABEL_30:
    v38 = a3[1];
    if (v9 < v38)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_133;
      }

      if (v9 - v11 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v9 < v11)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_274176EC4(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v53 = *(v10 + 16);
    v52 = *(v10 + 24);
    v6 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = sub_274176EC4((v52 > 1), v53 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v6;
    v54 = v10 + 16 * v53;
    *(v54 + 32) = v11;
    *(v54 + 40) = v9;
    v55 = *v105;
    if (!*v105)
    {
      goto LABEL_142;
    }

    if (v53)
    {
      while (1)
      {
        v56 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v57 = *(v10 + 32);
          v58 = *(v10 + 40);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_73:
          if (v60)
          {
            goto LABEL_121;
          }

          v73 = (v10 + 16 * v6);
          v75 = *v73;
          v74 = v73[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_124;
          }

          v79 = (v10 + 32 + 16 * v56);
          v81 = *v79;
          v80 = v79[1];
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_128;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v6 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v83 = (v10 + 16 * v6);
        v85 = *v83;
        v84 = v83[1];
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_87:
        if (v78)
        {
          goto LABEL_123;
        }

        v86 = v10 + 16 * v56;
        v88 = *(v86 + 32);
        v87 = *(v86 + 40);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_126;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_94:
        v94 = v56 - 1;
        if (v56 - 1 >= v6)
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

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = v10;
        v95 = *(v10 + 32 + 16 * v94);
        v5 = *(v10 + 32 + 16 * v56 + 8);
        sub_2741213D4((*a3 + 8 * v95), (*a3 + 8 * *(v10 + 32 + 16 * v56)), (*a3 + 8 * v5), v55);
        if (v7)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2741B412C(v10);
        }

        if (v94 >= *(v6 + 16))
        {
          goto LABEL_118;
        }

        v96 = v6 + 16 * v94;
        *(v96 + 32) = v95;
        *(v96 + 40) = v5;
        result = sub_2741B40A0(v56);
        v10 = v6;
        v6 = *(v6 + 16);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = v10 + 32 + 16 * v6;
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_119;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_120;
      }

      v68 = (v10 + 16 * v6);
      v70 = *v68;
      v69 = v68[1];
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_122;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_125;
      }

      if (v72 >= v64)
      {
        v90 = (v10 + 32 + 16 * v56);
        v92 = *v90;
        v91 = v90[1];
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_129;
        }

        if (v59 < v93)
        {
          v56 = v6 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_104;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_135;
  }

  if (v11 + a4 >= v38)
  {
    v39 = a3[1];
  }

  else
  {
    v39 = v11 + a4;
  }

  if (v39 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v39)
  {
    goto LABEL_53;
  }

  v104 = v7;
  v40 = v11;
  v41 = *a3;
  v5 = *a3 + 8 * v9 - 8;
  v107 = v40;
  v42 = v40 - v9;
  v110 = v39;
LABEL_42:
  v112 = v9;
  v43 = v42;
  v44 = v5;
  while (1)
  {
    v6 = *v44;
    v45 = sub_2741C7ECC();
    v47 = v46;
    if (v45 == sub_2741C7ECC() && v47 == v48)
    {

LABEL_41:
      v9 = v112 + 1;
      v5 += 8;
      --v42;
      if (v112 + 1 == v110)
      {
        v9 = v110;
        v7 = v104;
        v11 = v107;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v6 = sub_2741C86DC();

    if ((v6 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v41)
    {
      break;
    }

    v50 = *v44;
    *v44 = v44[1];
    v44[1] = v50;
    --v44;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_41;
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
  return result;
}

uint64_t sub_2741213D4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_49;
    }

    while (1)
    {
      v15 = sub_2741C7ECC();
      v17 = v16;
      v19 = v15 == sub_2741C7ECC() && v17 == v18;
      if (v19)
      {
        break;
      }

      v20 = sub_2741C86DC();

      if ((v20 & 1) == 0)
      {
        goto LABEL_20;
      }

      v21 = v6;
      v19 = v7 == v6;
      v6 += 8;
      if (!v19)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_49;
      }
    }

LABEL_20:
    v21 = v4;
    v19 = v7 == v4;
    v4 += 8;
    if (v19)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v21;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
    do
    {
      v22 = v6 - 8;
      v5 -= 8;
      v23 = v14;
      while (1)
      {
        v23 -= 8;
        v24 = v22;
        v25 = sub_2741C7ECC();
        v27 = v26;
        v29 = v25 == sub_2741C7ECC() && v27 == v28;
        v30 = v29 ? 0 : sub_2741C86DC();

        v31 = v5 + 8;
        if (v30)
        {
          break;
        }

        v22 = v24;
        if (v31 != v14)
        {
          *v5 = *v23;
        }

        v5 -= 8;
        v14 = v23;
        v4 = v34;
        if (v23 <= v34)
        {
          v14 = v23;
          goto LABEL_49;
        }
      }

      v32 = v24;
      if (v31 != v6)
      {
        *v5 = *v24;
      }

      v4 = v34;
      if (v14 <= v34)
      {
        break;
      }

      v6 = v32;
    }

    while (v32 > v7);
    v6 = v32;
  }

LABEL_49:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

void *sub_27412170C(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_2741C848C();
      a2 = sub_2741219E0(v4, v5, &qword_280939F38, &qword_2741D33D0, type metadata accessor for WiFiNetwork, sub_274153EC8);
      goto LABEL_8;
    }

    type metadata accessor for WiFiNetwork(0);
    v7 = MEMORY[0x277D84FA0];
    v17 = MEMORY[0x277D84FA0];
    sub_2741C844C();
    if (sub_2741C84BC())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = sub_2741C835C(), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(a1 + 48) + 8 * v11);
            v14 = sub_2741C836C();

            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v15 = *(v7 + 16);
          if (*(v7 + 24) <= v15)
          {
            sub_274153EC8(v15 + 1);
          }

          v7 = v17;
          sub_274158744();
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_2741C84BC());
    }

    return v7;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_274121BD0(a1, a2);
    }

    return sub_2741559D4(a1, a2);
  }
}

uint64_t sub_2741219E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_2741C853C();
    v21 = v8;
    sub_2741C844C();
    if (sub_2741C84BC())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          a6(v15 + 1);
        }

        v8 = v21;
        result = sub_2741C835C();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_2741C84BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_274121BD0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v14 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v14, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v8);
    v10 = &v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    sub_274121D70(v10, v7, v3, a2);
    v12 = v11;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    sub_274122C9C(v16, v7, v19);
    v12 = v19[0];

    MEMORY[0x2743E7790](v16, -1, -1);
  }

  return v12;
}

void sub_274121D70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2741C844C();
    type metadata accessor for WiFiNetwork(0);
    sub_274122CD0(&qword_280939F58, type metadata accessor for WiFiNetwork, MEMORY[0x277D85378]);
    sub_2741C821C();
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v32 = 0;
  v12 = (v6 + 64) >> 6;
  v36 = a4 + 56;
  v34 = v5;
  v35 = v4;
LABEL_8:
  v13 = v7;
  v14 = v8;
  while (v4 < 0)
  {
    if (!sub_2741C84BC())
    {
      goto LABEL_28;
    }

    type metadata accessor for WiFiNetwork(0);
    swift_dynamicCast();
    v18 = v43;
    v7 = v13;
    v17 = v14;
    if (!v43)
    {
      goto LABEL_28;
    }

LABEL_19:
    v19 = sub_2741C835C();
    v20 = -1 << *(a4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    type metadata accessor for WiFiNetwork(0);
    v24 = *(*(a4 + 48) + 8 * v21);
    v25 = sub_2741C836C();

    if (v25)
    {
LABEL_24:

      v29 = a1[v22];
      a1[v22] = v29 | v23;
      v13 = v7;
      v4 = v35;
      v8 = v17;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
      if ((v29 & v23) == 0)
      {
        if (!__OFADD__(v32++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_28:
        sub_2740D43C8(v4);

        sub_274154958(a1, a2, v32, a4);
        return;
      }
    }

    else
    {
      v26 = ~v20;
      while (1)
      {
        v21 = (v21 + 1) & v26;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v27 = *(*(a4 + 48) + 8 * v21);
        v28 = sub_2741C836C();

        if (v28)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v13 = v7;
      v4 = v35;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
    }
  }

  v15 = v13;
  v16 = v14;
  v7 = v13;
  if (v14)
  {
LABEL_15:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_2741220AC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2741C835C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for WiFiNetwork(0);
    v11 = 1;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v9);
      v13 = sub_2741C836C();

      if (v13)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_8:
    v14 = v13 ^ 1;
    v3 = v2;
  }

  else
  {
    v14 = 1;
    v11 = 1;
  }

  v15 = *(v6 + 16);
  v16 = v15 + v11;
  if (__OFADD__(v15, v11))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = *(v6 + 24);
  if (v17 >= v16 && (a2 & 1) != 0)
  {
    if ((v14 & 1) == 0)
    {
LABEL_28:
      v29 = *(*v3 + 48);
      result = *(v29 + 8 * v9);
      *(v29 + 8 * v9) = a1;
      return result;
    }

    goto LABEL_25;
  }

  if (a2)
  {
    sub_274153EC8(v16);
  }

  else
  {
    if (v17 >= v16)
    {
      sub_274154EF4();
      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_2741551E4(v16);
  }

  v18 = *v3;
  v19 = sub_2741C835C();
  v20 = -1 << *(v18 + 32);
  v9 = v19 & ~v20;
  if (((*(v18 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_24:
    if ((v14 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_25:
    v24 = *v3;
    *(*v3 + 8 * (v9 >> 6) + 56) |= 1 << v9;
    *(*(v24 + 48) + 8 * v9) = a1;
    v25 = *(v24 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      result = 0;
      *(v24 + 16) = v27;
      return result;
    }

    goto LABEL_30;
  }

  v21 = ~v20;
  type metadata accessor for WiFiNetwork(0);
  while (1)
  {
    v22 = *(*(v18 + 48) + 8 * v9);
    v23 = sub_2741C836C();

    if (v23)
    {
      break;
    }

    v9 = (v9 + 1) & v21;
    if (((*(v18 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  type metadata accessor for WiFiNetwork(0);
  result = sub_2741C870C();
  __break(1u);
  return result;
}

void (*sub_2741222EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2743E6600](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_27412236C;
  }

  __break(1u);
  return result;
}

void *sub_274122374(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_2741C848C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_274177768(v3, 0);
  sub_274122408((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_274122408(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2741C848C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2741C848C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_274122A90();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399D8, &unk_2741D32B0);
            v9 = sub_2741222EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for WiFiNetwork(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_274122588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939128, &unk_2741CED70);
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E0, &qword_2741D0C48);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v26 - v16;
  v18 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__networks;
  v31 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399D8, &unk_2741D32B0);
  sub_2741C6BAC();
  (*(v14 + 32))(v3 + v18, v17, v13);
  v19 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__isScanning;
  LOBYTE(v31) = 0;
  sub_2741C6BAC();
  (*(v9 + 32))(v3 + v19, v12, v8);
  *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_presentationStyle) = 0;
  *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_displayOption) = 3;
  *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle) = 0;
  v20 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__selectedNetwork;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C68, qword_2741CD200);
  sub_2741C6BAC();
  (*(v4 + 32))(v3 + v20, v7, v27);
  if (MEMORY[0x277D84F90] >> 62 && sub_2741C848C())
  {
    v21 = sub_2740C2B7C(MEMORY[0x277D84F90]);
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

  *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_pubs) = v21;
  swift_beginAccess();
  v30 = v28;
  type metadata accessor for CurrentNetworkViewModel(0);

  sub_2741C6BAC();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v29;

  sub_2741C6BFC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  sub_274122CD0(&qword_280939120, type metadata accessor for CurrentNetworkViewModel, &unk_2741CEBC0);
  v22 = sub_2741C6B5C();

  v31 = v22;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_274122D50;
  *(v24 + 24) = v23;
  sub_2741C6B9C();
  sub_2741C6C2C();

  swift_beginAccess();
  sub_2741C6B3C();
  swift_endAccess();

  return v3;
}

unint64_t sub_274122A90()
{
  result = qword_280939F30;
  if (!qword_280939F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809399D8, &unk_2741D32B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939F30);
  }

  return result;
}

void sub_274122C9C(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_274121D70(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

uint64_t sub_274122CD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274122D18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_274122D58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t WiFiNetwork.isPreferred.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t WiFiNetwork.isPreferred.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_2741C6BFC();
}

uint64_t WiFiNetwork.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___WiFiNetwork_Swift_name);

  return v1;
}

id sub_2741230F0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_2741C7E3C();

  return v3;
}

uint64_t sub_274123174(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_2741231D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2741C7E7C();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_27412324C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

double WiFiNetwork.rssi.getter()
{
  v1 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WiFiNetwork.rssi.setter(double a1)
{
  v3 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_274123588@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  *a2 = v4;
  return result;
}

uint64_t sub_274123608(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_2741C6BFC();
}

void (*WiFiNetwork.isPreferred.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2741C6BDC();
  return sub_2740D0130;
}

uint64_t WiFiNetwork.$isPreferred.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BBC();
  return swift_endAccess();
}

uint64_t sub_274123790(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BBC();
  return swift_endAccess();
}

uint64_t sub_274123808(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D30, &qword_2741CDB78);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BCC();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WiFiNetwork.$isPreferred.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D30, &qword_2741CDB78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BCC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WiFiNetwork.$isPreferred.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D30, &qword_2741CDB78);
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

  v10 = OBJC_IVAR___WiFiNetwork_Swift__isPreferred;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BBC();
  swift_endAccess();
  return sub_2740D0424;
}

id WiFiNetwork.init(networkInfo:cwfNetworkProfiles:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = a2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v62 - v9;
  v11 = OBJC_IVAR___WiFiNetwork_Swift__isPreferred;
  LOBYTE(v75[0]) = 0;
  v12 = v3;
  sub_2741C6BAC();
  (*(v7 + 32))(&v3[v11], v10, v6);
  if (!*(a1 + 16))
  {
    goto LABEL_54;
  }

  v67 = v11;
  v13 = sub_2741251AC(1145656147, 0xE400000000000000);
  if ((v14 & 1) == 0)
  {
    goto LABEL_55;
  }

  sub_27409D308(*(a1 + 56) + 32 * v13, v74);
  sub_27409D2F8(v74, v75);
  swift_dynamicCast();
  v15 = v73;
  v16 = &v12[OBJC_IVAR___WiFiNetwork_Swift_name];
  v68 = v72;
  v69 = v73;
  *v16 = v72;
  *(v16 + 1) = v15;
  v17 = *(a1 + 16);

  if (v17 && (v18 = sub_2741251AC(0x4E79616C70736944, 0xEB00000000656D61), (v19 & 1) != 0) && (sub_27409D308(*(a1 + 56) + 32 * v18, v75), (swift_dynamicCast() & 1) != 0))
  {
    v10 = *(&v74[0] + 1);
    v20 = *&v74[0];
  }

  else
  {
    v20 = *v16;
    v10 = *(v16 + 1);
  }

  v21 = &v12[OBJC_IVAR___WiFiNetwork_Swift_displayName];
  *v21 = v20;
  *(v21 + 1) = v10;
  if (!*(a1 + 16))
  {
    goto LABEL_56;
  }

  v22 = sub_2741251AC(0x4449535342, 0xE500000000000000);
  if ((v23 & 1) == 0)
  {
    goto LABEL_57;
  }

  sub_27409D308(*(a1 + 56) + 32 * v22, v74);
  sub_27409D2F8(v74, v75);
  swift_dynamicCast();
  v24 = v73;
  v25 = &v12[OBJC_IVAR___WiFiNetwork_Swift_bssid];
  *v25 = v72;
  *(v25 + 1) = v24;
  if (*(a1 + 16) && (v26 = sub_2741251AC(0x657264644143414DLL, 0xEA00000000007373), (v27 & 1) != 0) && (sub_27409D308(*(a1 + 56) + 32 * v26, v75), (swift_dynamicCast() & 1) != 0))
  {
    v29 = *(&v74[0] + 1);
    v28 = *&v74[0];
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  v30 = &v12[OBJC_IVAR___WiFiNetwork_Swift_macAddress];
  *v30 = v28;
  *(v30 + 1) = v29;
  if (*(a1 + 16) && (v31 = sub_2741251AC(0x7974697275636553, 0xEC00000065707954), (v32 & 1) != 0) && (sub_27409D308(*(a1 + 56) + 32 * v31, v75), sub_2740BA268(0, &qword_280938410, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    v33 = *&v74[0];
  }

  else
  {
    sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
    v33 = sub_2741C834C();
  }

  v34 = [v33 integerValue];

  *&v12[OBJC_IVAR___WiFiNetwork_Swift_securityType] = v34;
  if (*(a1 + 16) && (v35 = sub_2741251AC(1230197586, 0xE400000000000000), (v36 & 1) != 0) && (sub_27409D308(*(a1 + 56) + 32 * v35, v75), sub_2740BA268(0, &qword_280938410, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    v37 = *&v74[0];
  }

  else
  {
    sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
    v37 = sub_2741C834C();
  }

  [v37 doubleValue];
  v39 = v38;

  *&v12[OBJC_IVAR___WiFiNetwork_Swift_rssi] = v39;
  v10 = v70;
  if (!v70)
  {

    if (*(a1 + 16) && (v53 = sub_2741251AC(0x7265666572507349, 0xEB00000000646572), (v54 & 1) != 0))
    {
      sub_27409D308(*(a1 + 56) + 32 * v53, v75);

      sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v55 = *&v74[0];
LABEL_49:
        v56 = [v55 BOOLValue];

        v57 = v67;
        swift_beginAccess();
        (*(v7 + 8))(&v3[v57], v6);
        LOBYTE(v74[0]) = v56;
        sub_2741C6BAC();
        swift_endAccess();
        goto LABEL_61;
      }
    }

    else
    {
    }

    sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
    v55 = sub_2741C833C();
    goto LABEL_49;
  }

  v62 = v7;
  v63 = v6;
  v65 = v3;
  v66 = ObjectType;

  ObjectType = (v10 & 0xFFFFFFFFFFFFFF8);
  v64 = v12;
  if (v10 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2741C848C())
  {
    v41 = 0;
    v42 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v42)
      {
        v43 = MEMORY[0x2743E6600](v41, v10);
      }

      else
      {
        if (v41 >= *(ObjectType + 2))
        {
          goto LABEL_53;
        }

        v43 = *(v10 + 8 * v41 + 32);
      }

      v44 = v43;
      v45 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v46 = [v43 networkName];
      if (v46)
      {
        v47 = v46;
        v48 = sub_2741C7E7C();
        v50 = v49;

        if (v48 == v68 && v50 == v69)
        {

          goto LABEL_51;
        }

        v52 = sub_2741C86DC();

        v10 = v70;
        if (v52)
        {

LABEL_51:
          v58 = 1;
          goto LABEL_60;
        }
      }

      else
      {
      }

      ++v41;
      if (v45 == i)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

LABEL_59:

  v58 = 0;
LABEL_60:
  v59 = v65;
  v60 = v67;
  swift_beginAccess();
  (*(v62 + 8))(&v59[v60], v63);
  LOBYTE(v74[0]) = v58;
  sub_2741C6BAC();
  swift_endAccess();
  ObjectType = v66;
  v12 = v64;
LABEL_61:
  v71.receiver = v12;
  v71.super_class = ObjectType;
  return objc_msgSendSuper2(&v71, sel_init);
}

id WiFiNetwork.__allocating_init(ssid:securityType:rssi:macAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6)
{
  v28 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v27 - v15;
  v17 = objc_allocWithZone(v6);
  v18 = OBJC_IVAR___WiFiNetwork_Swift__isPreferred;
  v31 = 0;
  sub_2741C6BAC();
  (*(v13 + 32))(&v17[v18], v16, v12);
  v19 = &v17[OBJC_IVAR___WiFiNetwork_Swift_name];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v17[OBJC_IVAR___WiFiNetwork_Swift_displayName];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v17[OBJC_IVAR___WiFiNetwork_Swift_bssid];
  v22 = 0xE000000000000000;
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  if (a5)
  {
    v23 = a4;
  }

  else
  {
    v23 = 0;
  }

  if (a5)
  {
    v22 = a5;
  }

  v24 = &v17[OBJC_IVAR___WiFiNetwork_Swift_macAddress];
  *v24 = v23;
  v24[1] = v22;
  *&v17[OBJC_IVAR___WiFiNetwork_Swift_securityType] = v28;
  *&v17[OBJC_IVAR___WiFiNetwork_Swift_rssi] = a6;
  swift_beginAccess();
  v25 = *(v13 + 8);

  v25(&v17[v18], v12);
  v30 = 0;
  sub_2741C6BAC();
  swift_endAccess();
  v29.receiver = v17;
  v29.super_class = v6;
  return objc_msgSendSuper2(&v29, sel_init);
}

id WiFiNetwork.init(ssid:securityType:rssi:macAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6)
{
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v27 - v16;
  v18 = OBJC_IVAR___WiFiNetwork_Swift__isPreferred;
  v31 = 0;
  sub_2741C6BAC();
  (*(v14 + 32))(&v6[v18], v17, v13);
  v19 = &v6[OBJC_IVAR___WiFiNetwork_Swift_name];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v6[OBJC_IVAR___WiFiNetwork_Swift_displayName];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v6[OBJC_IVAR___WiFiNetwork_Swift_bssid];
  v22 = 0xE000000000000000;
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  if (a5)
  {
    v23 = a4;
  }

  else
  {
    v23 = 0;
  }

  if (a5)
  {
    v22 = a5;
  }

  v24 = &v6[OBJC_IVAR___WiFiNetwork_Swift_macAddress];
  *v24 = v23;
  v24[1] = v22;
  *&v6[OBJC_IVAR___WiFiNetwork_Swift_securityType] = a3;
  *&v6[OBJC_IVAR___WiFiNetwork_Swift_rssi] = a6;
  swift_beginAccess();
  v25 = *(v14 + 8);

  v25(&v6[v18], v13);
  v30 = 0;
  sub_2741C6BAC();
  swift_endAccess();
  v29.receiver = v6;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t sub_274124914(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2741C843C();
    v5 = v4;
    v6 = sub_2741C84DC();
    v8 = v7;
    v9 = MEMORY[0x2743E64E0](v3, v5, v6, v7);
    sub_274125EC0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_274125EC0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_2741C840C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_274125918(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_274125EC0(v3, v5, v2 != 0);
  return v12;
}

uint64_t WiFiNetwork.description.getter()
{
  v1 = v0;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0x203A44495353, 0xE600000000000000);
  MEMORY[0x2743E5FB0](*(v1 + OBJC_IVAR___WiFiNetwork_Swift_name), *(v1 + OBJC_IVAR___WiFiNetwork_Swift_name + 8));
  MEMORY[0x2743E5FB0](0x616C70736964202CLL, 0xEF203A656D614E79);
  v2 = (v0 + OBJC_IVAR___WiFiNetwork_Swift_displayName);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x2743E5FB0](v3, v4);

  MEMORY[0x2743E5FB0](0x3A4449535342202CLL, 0xE900000000000020);
  v5 = (v1 + OBJC_IVAR___WiFiNetwork_Swift_bssid);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];

  MEMORY[0x2743E5FB0](v6, v7);

  MEMORY[0x2743E5FB0](0x64644143414D202CLL, 0xEE00203A73736572);
  v8 = (v1 + OBJC_IVAR___WiFiNetwork_Swift_macAddress);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  MEMORY[0x2743E5FB0](v9, v10);

  MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741DCF60);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0x203A49535352202CLL, 0xE800000000000000);
  swift_beginAccess();
  sub_2741C81CC();
  MEMORY[0x2743E5FB0](0x6566657250736920, 0xEE00203A64657272);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  if (v14)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v14)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v11, v12);

  return 0;
}

uint64_t WiFiNetwork.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2740B2A50(a1, v7);
  if (!v8)
  {
    sub_2740B29E8(v7);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR___WiFiNetwork_Swift_name) == *&v6[OBJC_IVAR___WiFiNetwork_Swift_name] && *(v1 + OBJC_IVAR___WiFiNetwork_Swift_name + 8) == *&v6[OBJC_IVAR___WiFiNetwork_Swift_name + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_2741C86DC();
  }

  return v4 & 1;
}

id WiFiNetwork.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WiFiNetwork.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274125124@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_2741C6B5C();
  *a1 = result;
  return result;
}

unint64_t sub_274125164(uint64_t a1)
{
  v2 = sub_2741C84EC();

  return sub_274125548(a1, v2);
}

unint64_t sub_2741251AC(uint64_t a1, uint64_t a2)
{
  sub_2741C87DC();
  sub_2741C7F0C();
  v4 = sub_2741C880C();

  return sub_274125610(a1, a2, v4);
}

uint64_t type metadata accessor for WiFiNetwork(uint64_t a1)
{
  result = qword_280939FA0;
  if (!qword_280939FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274125280(uint64_t a1)
{
  sub_2740DE9E8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_274125370(uint64_t a1)
{
  sub_2741C7E7C();
  sub_2741C87DC();
  sub_2741C7F0C();
  v2 = sub_2741C880C();

  return sub_2741256C8(a1, v2);
}

unint64_t sub_274125404(uint64_t a1)
{
  sub_2741C87DC();
  type metadata accessor for CFString(0);
  sub_274125488();
  sub_2741C6AAC();
  v2 = sub_2741C880C();

  return sub_2741257CC(a1, v2);
}

unint64_t sub_274125488()
{
  result = qword_280939FB0;
  if (!qword_280939FB0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939FB0);
  }

  return result;
}

unint64_t sub_2741254E0(uint64_t a1)
{
  v1 = a1;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v1);
  v2 = sub_2741C880C();
  return sub_2741258A8(v1, v2);
}

unint64_t sub_274125548(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2740BA2B0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2743E6580](v9, a1);
      sub_27409D2A4(v9);
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

unint64_t sub_274125610(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2741C86DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2741256C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2741C7E7C();
      v8 = v7;
      if (v6 == sub_2741C7E7C() && v8 == v9)
      {
        break;
      }

      v11 = sub_2741C86DC();

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

unint64_t sub_2741257CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_274125488();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2741C6A9C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2741258A8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_274125918(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2743E6530](a1, a2, v7);
      sub_2740BA268(0, &qword_280938DF0, 0x277D02AE8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2740BA268(0, &qword_280938DF0, 0x277D02AE8);
    if (sub_2741C846C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2741C847C();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2741C835C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2741C836C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

id sub_274125B3C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - v7;
  v9 = OBJC_IVAR___WiFiNetwork_Swift__isPreferred;
  v39 = 0;
  sub_2741C6BAC();
  (*(v5 + 32))(&v1[v9], v8, v4);
  v10 = [a1 networkName];
  if (v10)
  {
    v11 = v10;
    v12 = sub_2741C7E7C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = &v1[OBJC_IVAR___WiFiNetwork_Swift_name];
  *v15 = v12;
  v15[1] = v14;
  v16 = [a1 networkName];
  if (v16 || (v16 = [a1 networkName]) != 0)
  {
    v17 = v16;
    v18 = sub_2741C7E7C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = &v1[OBJC_IVAR___WiFiNetwork_Swift_displayName];
  *v21 = v18;
  v21[1] = v20;
  v22 = [a1 BSSList];
  if (v22)
  {
    sub_2740BA268(0, &qword_280938DF0, 0x277D02AE8);
    sub_2740D4370();
    v23 = sub_2741C81EC();

    v22 = sub_274124914(v23);

    if (v22)
    {
      v24 = [v22 BSSID];

      if (v24)
      {
        v22 = sub_2741C7E7C();
        v26 = v25;

        goto LABEL_13;
      }

      v22 = 0;
    }
  }

  v26 = 0xE000000000000000;
LABEL_13:
  v27 = &v1[OBJC_IVAR___WiFiNetwork_Swift_bssid];
  *v27 = v22;
  *(v27 + 1) = v26;
  v28 = [a1 cachedPrivateMACAddress];
  if (v28)
  {
    v29 = v28;
    v30 = sub_2741C7E7C();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = &v1[OBJC_IVAR___WiFiNetwork_Swift_macAddress];
  *v33 = v30;
  v33[1] = v32;
  if ([a1 isOpen])
  {
    v34 = 512;
  }

  else
  {
    v35 = [a1 isOWE];
    v34 = 16;
    if (v35)
    {
      v34 = 512;
    }
  }

  *&v1[OBJC_IVAR___WiFiNetwork_Swift_securityType] = v34;
  *&v1[OBJC_IVAR___WiFiNetwork_Swift_rssi] = 0;
  swift_beginAccess();
  (*(v5 + 8))(&v1[v9], v4);
  v38 = 0;
  sub_2741C6BAC();
  swift_endAccess();
  v37.receiver = v1;
  v37.super_class = ObjectType;
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t sub_274125EC0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

__n128 sub_274125EFC@<Q0>(uint64_t a2@<X8>)
{
  sub_2741C7C1C();
  sub_2741C6D8C();
  *&v4[37] = v7;
  *&v4[21] = v6;
  *&v4[5] = v5;
  *(a2 + 11) = *v4;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 9) = 1;
  *(a2 + 27) = *&v4[16];
  result = *&v4[32];
  *(a2 + 43) = *&v4[32];
  *(a2 + 56) = *(&v7 + 1);
  return result;
}

unint64_t sub_274125FA4()
{
  result = qword_280939FB8;
  if (!qword_280939FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939FB8);
  }

  return result;
}

uint64_t sub_2741260D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2741261AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for NetworkDetailsView(uint64_t a1)
{
  result = qword_280939FC0;
  if (!qword_280939FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2741262BC(uint64_t a1)
{
  sub_2741263C8(319, &qword_280937EA8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2741263C8(319, &qword_280939FD0, type metadata accessor for NetworkDetailsModel, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2740A5754();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2741263C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_274126448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2740A6D94(*a1, a2, &qword_28093A0E8, &qword_2741D39C0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A278, &qword_2741D3B70);
  sub_2740A6D94(a1[1], a2 + v4[12], &qword_28093A0D8, &qword_2741D39B0);
  sub_2740A6D94(a1[2], a2 + v4[16], &qword_28093A0C0, &qword_2741D3998);
  sub_2740A6D94(a1[3], a2 + v4[20], &qword_28093A148, &qword_2741D3A20);
  sub_2740A6D94(a1[4], a2 + v4[24], &qword_28093A0B8, &unk_2741D3988);
  sub_2740A6D94(a1[5], a2 + v4[28], &qword_28093A0A0, &qword_2741D3970);
  sub_2740A6D94(a1[6], a2 + v4[32], &qword_28093A080, &qword_2741D3948);
  sub_2740A6D94(a1[7], a2 + v4[36], &qword_28093A070, &qword_2741D3938);
  sub_2740A6D94(a1[8], a2 + v4[40], &qword_28093A060, &qword_2741D3928);
  sub_2740A6D94(a1[9], a2 + v4[44], &qword_28093A050, &qword_2741D3918);
  sub_2740A6D94(a1[10], a2 + v4[48], &qword_28093A070, &qword_2741D3938);
  v5 = v4[52];
  v6 = a1[11];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A040, &qword_2741D3908);
  (*(*(v7 - 8) + 16))(a2 + v5, v6, v7);
  sub_2740A6D94(a1[12], a2 + v4[56], &qword_28093A038, &qword_2741D3900);
  v8 = v4[60];
  v9 = a1[13];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A028, &qword_2741D38F0);
  (*(*(v10 - 8) + 16))(a2 + v8, v9, v10);
  v11 = v4[64];
  v12 = a1[14];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A020, &qword_2741D38E8);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2 + v11, v12, v13);
}

uint64_t sub_27412670C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for KnownNetwork(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_274137EA4(v13, v11, type metadata accessor for KnownNetwork);
      v15 = a1(v11);
      if (v3)
      {
        return sub_274138044(v11, type metadata accessor for KnownNetwork);
      }

      if (v15)
      {
        break;
      }

      sub_274138044(v11, type metadata accessor for KnownNetwork);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_2741383D8(v11, v19, type metadata accessor for KnownNetwork);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_2741268D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2741C70AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  sub_2740A6D94(v2, &v16 - v11, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2741C6DBC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_2741C82AC();
    v15 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_274126AD8@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = type metadata accessor for NetworkDetailsView(0);
  v3 = v2 - 8;
  v58 = *(v2 - 8);
  v64 = *(v58 + 8);
  MEMORY[0x28223BE20](v2, v4);
  v56 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939FD8, &qword_2741D3828);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v48 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939FE0, &qword_2741D3830);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v11);
  v51 = v48 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939FE8, &qword_2741D3838);
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v13);
  v63 = v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939FF0, &qword_2741D3840);
  v16 = *(v15 - 8);
  v59 = v15;
  v60 = v16;
  MEMORY[0x28223BE20](v15, v17);
  v54 = v48 - v18;
  v65 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939FF8, &unk_2741D3848);
  sub_2740A6D24(&qword_28093A000, &qword_280939FF8, &unk_2741D3848, MEMORY[0x277CE14C0]);
  sub_2741C761C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938020, &qword_2741CB780);
  sub_2741C6F0C();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2741CB550;
  sub_2741C6EFC();
  v20 = sub_2740A6D24(&qword_28093A008, &qword_280939FD8, &qword_2741D3828, MEMORY[0x277CDE580]);
  MEMORY[0x2743E5820](1, v19, v6, v20);

  (*(v7 + 8))(v10, v6);
  v21 = *(v3 + 28);
  v62 = v1;
  v22 = (v1 + v21);
  v23 = *v22;
  v50 = v22[1];
  v71 = v23;
  v72 = v50;
  v49 = v23;
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v24 = v70;
  swift_getKeyPath();
  v71 = v24;
  v48[0] = sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v25 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v24 + v25, &v71);

  v26 = v74;
  v27 = v75;
  __swift_project_boxed_opaque_existential_1(&v71, v74);
  v68 = (*(v27 + 40))(v26, v27);
  v69 = v28;
  v66 = v6;
  v67 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_2740A6A74();
  v31 = MEMORY[0x277D837D0];
  v32 = v52;
  v33 = v51;
  sub_2741C777C();

  (*(v53 + 1))(v33, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  v71 = v23;
  v34 = v50;
  v72 = v50;
  sub_2741C7A3C();
  v35 = v68;
  swift_getKeyPath();
  v71 = v35;
  sub_2741C6A0C();

  LOBYTE(v33) = *(v35 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  LOBYTE(v68) = v33;
  v53 = type metadata accessor for NetworkDetailsView;
  v36 = v56;
  sub_274137EA4(v62, v56, type metadata accessor for NetworkDetailsView);
  v37 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v38 = swift_allocObject();
  v58 = type metadata accessor for NetworkDetailsView;
  sub_2741383D8(v36, v38 + v37, type metadata accessor for NetworkDetailsView);
  v71 = v32;
  v72 = v31;
  v73 = OpaqueTypeConformance2;
  v74 = v30;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_274125FA4();
  v41 = v54;
  v42 = v55;
  v43 = v63;
  sub_2741C78CC();

  (*(v57 + 8))(v43, v42);
  v71 = v49;
  v72 = v34;
  sub_2741C7A3C();
  v44 = v68;
  swift_getKeyPath();
  v71 = v44;
  sub_2741C6A0C();

  LOBYTE(v43) = *(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork);

  LOBYTE(v68) = v43;
  sub_274137EA4(v62, v36, v53);
  v45 = swift_allocObject();
  sub_2741383D8(v36, v45 + v37, v58);
  v71 = v42;
  v72 = &type metadata for NetworkType;
  v73 = v39;
  v74 = v40;
  swift_getOpaqueTypeConformance2();
  v46 = v59;
  sub_2741C78CC();

  return (*(v60 + 8))(v41, v46);
}

id sub_274127410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v557 = a2;
  v595 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A020, &qword_2741D38E8);
  v560 = *(v595 - 8);
  v4 = MEMORY[0x28223BE20](v595, v3);
  v594 = &v511 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v589 = &v511 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A028, &qword_2741D38F0);
  v558 = *(v8 - 8);
  v559 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v593 = &v511 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v556 = &v511 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A030, &qword_2741D38F8);
  v568 = *(v14 - 8);
  v569 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v512 = &v511 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A038, &qword_2741D3900);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v592 = &v511 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v596 = &v511 - v22;
  v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A040, &qword_2741D3908);
  v590 = *(v591 - 8);
  v24 = MEMORY[0x28223BE20](v591, v23);
  v588 = &v511 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v601 = &v511 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A048, &qword_2741D3910);
  v554 = *(v28 - 8);
  v555 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v536 = &v511 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A050, &qword_2741D3918);
  v33 = MEMORY[0x28223BE20](v31 - 8, v32);
  v587 = &v511 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v600 = &v511 - v36;
  v37 = sub_2741C740C();
  v516 = *(v37 - 8);
  v517 = v37;
  MEMORY[0x28223BE20](v37, v38);
  v515 = &v511 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A058, &qword_2741D3920);
  v574 = *(v40 - 8);
  v575 = v40;
  MEMORY[0x28223BE20](v40, v41);
  v514 = &v511 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A060, &qword_2741D3928);
  v45 = MEMORY[0x28223BE20](v43 - 8, v44);
  v586 = &v511 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v47);
  v607 = &v511 - v48;
  v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A068, &qword_2741D3930);
  v576 = *(v597 - 8);
  v50 = MEMORY[0x28223BE20](v597, v49);
  v522 = &v511 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v52);
  v532 = &v511 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A070, &qword_2741D3938);
  v56 = MEMORY[0x28223BE20](v54 - 8, v55);
  v584 = &v511 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v585 = &v511 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v606 = &v511 - v63;
  MEMORY[0x28223BE20](v62, v64);
  v609 = &v511 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A078, &qword_2741D3940);
  v566 = *(v66 - 8);
  v567 = v66;
  MEMORY[0x28223BE20](v66, v67);
  v541 = &v511 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A080, &qword_2741D3948);
  v71 = MEMORY[0x28223BE20](v69 - 8, v70);
  v583 = &v511 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71, v73);
  v604 = &v511 - v74;
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A088, &qword_2741D3950);
  MEMORY[0x28223BE20](v547, v75);
  v549 = &v511 - v76;
  v551 = type metadata accessor for ForgetNetworkSection(0);
  MEMORY[0x28223BE20](v551, v77);
  v525 = (&v511 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A090, &qword_2741D3958);
  v550 = *(v552 - 8);
  MEMORY[0x28223BE20](v552, v79);
  v526 = &v511 - v80;
  v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A098, &unk_2741D3960);
  MEMORY[0x28223BE20](v548, v81);
  v540 = &v511 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v85 = MEMORY[0x28223BE20](v83 - 8, v84);
  v539 = &v511 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85, v87);
  v538 = &v511 - v88;
  v89 = type metadata accessor for KnownNetwork(0);
  v563 = *(v89 - 8);
  v564 = v89;
  v91 = MEMORY[0x28223BE20](v89, v90);
  v535 = &v511 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91, v93);
  v537 = &v511 - v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0A0, &qword_2741D3970);
  v97 = MEMORY[0x28223BE20](v95 - 8, v96);
  v582 = &v511 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97, v99);
  v603 = &v511 - v100;
  v101 = type metadata accessor for NetworkDetailsView(0);
  v518 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v102);
  v520 = v103;
  v521 = &v511 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0A8, &qword_2741D3978);
  v529 = *(v104 - 8);
  v530 = v104;
  MEMORY[0x28223BE20](v104, v105);
  v519 = &v511 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0B0, &qword_2741D3980);
  v561 = *(v107 - 8);
  v562 = v107;
  MEMORY[0x28223BE20](v107, v108);
  v528 = &v511 - v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0B8, &unk_2741D3988);
  v112 = MEMORY[0x28223BE20](v110 - 8, v111);
  v581 = &v511 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v112, v114);
  v602 = &v511 - v115;
  v116 = type metadata accessor for PortalInfoSection(0);
  v572 = *(v116 - 8);
  v573 = v116;
  MEMORY[0x28223BE20](v116, v117);
  v534 = &v511 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  MEMORY[0x28223BE20](v119 - 8, v120);
  v546 = &v511 - v121;
  v122 = sub_2741C689C();
  v544 = *(v122 - 8);
  v545 = v122;
  MEMORY[0x28223BE20](v122, v123);
  v533 = &v511 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0C0, &qword_2741D3998);
  v127 = MEMORY[0x28223BE20](v125 - 8, v126);
  v580 = &v511 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v127, v129);
  v610 = &v511 - v130;
  v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0C8, &qword_2741D39A0);
  v524 = *(v527 - 8);
  MEMORY[0x28223BE20](v527, v131);
  v513 = &v511 - v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0D0, &qword_2741D39A8);
  v570 = *(v133 - 8);
  v571 = v133;
  MEMORY[0x28223BE20](v133, v134);
  v523 = &v511 - v135;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0D8, &qword_2741D39B0);
  v138 = MEMORY[0x28223BE20](v136 - 8, v137);
  v579 = &v511 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v138, v140);
  v608 = &v511 - v141;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0E0, &qword_2741D39B8);
  v143 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v144);
  v146 = &v511 - v145;
  v599 = type metadata accessor for NetworkSettings(0);
  v148 = MEMORY[0x28223BE20](v599, v147);
  v542 = &v511 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = MEMORY[0x28223BE20](v148, v150);
  v553 = &v511 - v152;
  v154 = MEMORY[0x28223BE20](v151, v153);
  v565 = &v511 - v155;
  v157 = MEMORY[0x28223BE20](v154, v156);
  v543 = &v511 - v158;
  v160 = MEMORY[0x28223BE20](v157, v159);
  v598 = &v511 - v161;
  v163 = MEMORY[0x28223BE20](v160, v162);
  v165 = &v511 - v164;
  MEMORY[0x28223BE20](v163, v166);
  v168 = &v511 - v167;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0E8, &qword_2741D39C0);
  v171 = MEMORY[0x28223BE20](v169 - 8, v170);
  v578 = &v511 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v171, v173);
  v175 = &v511 - v174;
  v531 = v101;
  v176 = *(v101 + 20);
  v611 = a1;
  v177 = (a1 + v176);
  v179 = *v177;
  v178 = v177[1];
  v615 = v179;
  *&v660[0] = v179;
  v612 = v178;
  *(&v660[0] + 1) = v178;
  v614 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v180 = v645;
  swift_getKeyPath();
  *&v660[0] = v180;
  v613 = sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v181 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v180 + v181, v168, type metadata accessor for NetworkSettings);

  v182 = *(v168 + 6);
  v183 = v182;
  v184 = sub_274138044(v168, type metadata accessor for NetworkSettings);
  if (v182)
  {
    MEMORY[0x28223BE20](v184, v185);
    *(&v511 - 2) = v183;
    sub_2741384AC();
    sub_2741C7B9C();

    (*(v143 + 32))(v175, v146, v142);
    v186 = 0;
  }

  else
  {
    v186 = 1;
  }

  v187 = *(v143 + 56);
  v577 = v175;
  v187(v175, v186, 1, v142);
  v188 = v615;
  *&v660[0] = v615;
  v189 = v612;
  *(&v660[0] + 1) = v612;
  sub_2741C7A3C();
  v190 = v616;
  swift_getKeyPath();
  *&v660[0] = v190;
  sub_2741C6A0C();

  v191 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v190 + v191, &v645);

  v605 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  if (swift_dynamicCast())
  {
    sub_2740ACB2C(v660);
    *&v660[0] = v188;
    *(&v660[0] + 1) = v189;
    sub_2741C7A3C();
    v192 = v645;
    swift_getKeyPath();
    *&v660[0] = v192;
    sub_2741C6A0C();

    v193 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    sub_274137EA4(v192 + v193, v165, type metadata accessor for NetworkSettings);

    v194 = *(v165 + 6);
    sub_274138044(v165, type metadata accessor for NetworkSettings);
    if (v194)
    {
      v195 = 1;
      v196 = v598;
      v197 = v599;
    }

    else
    {
      type metadata accessor for WiFiDiagnoser();
      swift_allocObject();
      v198 = sub_2740F2E14();
      swift_beginAccess();
      v199 = *(v198 + 16);

      *&v660[0] = v188;
      *(&v660[0] + 1) = v189;
      sub_2741C7A3C();
      v200 = v645;
      swift_getKeyPath();
      *&v660[0] = v200;
      sub_2741C6A0C();

      LODWORD(v198) = *(v200 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

      v196 = v598;
      if (v198 == 1 && *(v199 + 16))
      {
        MEMORY[0x28223BE20](v201, v202);
        *(&v511 - 2) = v199;
        sub_27412D18C(v611, v660);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A190, &qword_2741D3A90);
        sub_2740A6D24(&qword_28093A198, &qword_28093A190, &qword_2741D3A90, MEMORY[0x277CE1198]);
        v203 = v513;
        sub_2741C7BAC();

        v188 = v615;
        v205 = v523;
        v204 = v524;
        (*(v524 + 32))(v523, v203, v527);
        v206 = 0;
      }

      else
      {

        v206 = 1;
        v205 = v523;
        v204 = v524;
      }

      (*(v204 + 56))(v205, v206, 1, v527);
      sub_2740A6C18(v205, v608, &qword_28093A0D0, &qword_2741D39A8);
      v195 = 0;
      v197 = v599;
      v189 = v612;
    }
  }

  else
  {
    v195 = 1;
    v196 = v598;
    v197 = v599;
  }

  v207 = 1;
  (*(v570 + 56))(v608, v195, 1, v571);
  *&v660[0] = v188;
  *(&v660[0] + 1) = v189;
  sub_2741C7A3C();
  v208 = v645;
  swift_getKeyPath();
  *&v660[0] = v208;
  v209 = v613;
  sub_2741C6A0C();
  v210 = v615;

  v211 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v208 + v211, v196, type metadata accessor for NetworkSettings);

  v212 = *(v196 + *(v197 + 80));
  sub_274138044(v196, type metadata accessor for NetworkSettings);
  if ((v212 & 4) != 0)
  {
    *&v660[0] = v210;
    v213 = v189;
    *(&v660[0] + 1) = v189;
    sub_2741C7A3C();
    v214 = v645;
    swift_getKeyPath();
    *&v660[0] = v214;
    sub_2741C6A0C();

    v215 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    v216 = v214 + v215;
    v217 = v543;
    sub_274137EA4(v216, v543, type metadata accessor for NetworkSettings);

    v218 = v546;
    sub_2740A6D94(v217 + *(v599 + 76), v546, &qword_280938518, &unk_2741D2090);
    sub_274138044(v217, type metadata accessor for NetworkSettings);
    v220 = v544;
    v219 = v545;
    if ((*(v544 + 48))(v218, 1, v545) == 1)
    {
      sub_27409D420(v218, &qword_280938518, &unk_2741D2090);
      v207 = 1;
    }

    else
    {
      v221 = *(v220 + 32);
      v222 = v533;
      v221(v533, v218, v219);
      v223 = v534;
      v221(v534, v222, v219);
      sub_2741383D8(v223, v610, type metadata accessor for PortalInfoSection);
      v207 = 0;
    }

    v210 = v615;
    v189 = v213;
    v209 = v613;
  }

  v224 = v209;
  (*(v572 + 56))(v610, v207, 1, v573);
  *&v660[0] = v210;
  *(&v660[0] + 1) = v189;
  sub_2741C7A3C();
  v225 = v645;
  swift_getKeyPath();
  *&v660[0] = v225;
  sub_2741C6A0C();

  v226 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v225 + v226, &v645);

  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v660, 0, 97);
    sub_27409D420(v660, &qword_280938340, &qword_2741D1660);
    memset(v660, 0, sizeof(v660));
    v661 = 0u;
    v662 = 0u;
    v663 = 0u;
    v664 = 0u;
    v665 = -33554432;
    v240 = v189;
    goto LABEL_35;
  }

  v227 = v599;
  v658[4] = v660[4];
  v658[5] = v660[5];
  v659 = v660[6];
  v658[0] = v660[0];
  v658[1] = v660[1];
  v658[2] = v660[2];
  v658[3] = v660[3];
  *&v660[0] = v210;
  *(&v660[0] + 1) = v189;
  sub_2741C7A3C();
  v228 = v645;
  swift_getKeyPath();
  *&v660[0] = v228;
  sub_2741C6A0C();

  v229 = v598;
  v230 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v228 + v230, v229, type metadata accessor for NetworkSettings);

  v231 = *(v229 + *(v227 + 80));
  sub_274138044(v229, type metadata accessor for NetworkSettings);
  if ((v231 & 8) != 0)
  {
    sub_2740ACAC8(v658, &v645);
    type metadata accessor for AssociationModel(0);
    sub_274138B18(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
    v241 = sub_2741C6CEC();
    v243 = v242;
    type metadata accessor for NetworksListModel(0);
    sub_274138B18(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    v244 = sub_2741C6CEC();
    v246 = v245;
    memset(v660, 0, 40);
    if (qword_280937B98 != -1)
    {
      swift_once();
    }

    v248 = sub_274175B8C(v247, v660);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      return result;
    }

    v250 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v655[0] = v243 & 1;
    v654[0] = v246 & 1;
    LOBYTE(v616) = 0;
    sub_2741C7A2C();
    v252 = v660[0];
    v253 = *(&v660[0] + 1);
    LOBYTE(v616) = 0;
    sub_2741C7A2C();
    v254 = *(&v660[0] + 1);
    *(&v660[3] + 7) = v646[2];
    *(&v660[4] + 7) = v646[3];
    *(&v660[5] + 7) = v646[4];
    BYTE7(v660[6]) = v647;
    *(v660 + 7) = v645;
    *(&v660[1] + 7) = v646[0];
    *(&v660[2] + 7) = v646[1];
    v623 = v241;
    v624 = v655[0];
    *&v625[3] = *(&v645 + 3);
    *v625 = v645;
    v626 = v244;
    v627 = v654[0];
    *&v628[3] = *(&v616 + 3);
    *v628 = v616;
    v629 = v248;
    v630 = v252;
    *&v631[3] = *(v657 + 3);
    *v631 = v657[0];
    v632 = v253;
    v633 = v660[0];
    *&v634[3] = *(v656 + 3);
    *v634 = v656[0];
    v635 = v254;
    v636 = wapiCapability;
    v639 = v660[2];
    v638 = v660[1];
    v637 = v660[0];
    v643 = *&v660[6];
    v642 = v660[5];
    v641 = v660[4];
    v640 = v660[3];
    v644 = 0;
    sub_2741167F4(&v623, v660);
    BYTE2(v665) = 0;
    goto LABEL_32;
  }

  *&v660[0] = v615;
  *(&v660[0] + 1) = v612;
  sub_2741C7A3C();
  v232 = v645;
  swift_getKeyPath();
  *&v660[0] = v232;
  sub_2741C6A0C();

  v233 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v232 + v233, v229, type metadata accessor for NetworkSettings);

  v234 = *(v229 + *(v227 + 80));
  sub_274138044(v229, type metadata accessor for NetworkSettings);
  if ((v234 & 0x20) != 0)
  {
    sub_2740ACAC8(v658, &v645);
    type metadata accessor for AssociationModel(0);
    sub_274138B18(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
    v255 = sub_2741C6CEC();
    v257 = v256;
    type metadata accessor for NetworksListModel(0);
    sub_274138B18(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    v258 = sub_2741C6CEC();
    v260 = v259;
    memset(v660, 0, 40);
    if (qword_280937B98 != -1)
    {
      swift_once();
    }

    v262 = sub_274175B8C(v261, v660);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      goto LABEL_119;
    }

    v263 = result;
    v264 = MobileGestalt_get_wapiCapability();

    v655[0] = v257 & 1;
    v654[0] = v260 & 1;
    LOBYTE(v616) = 0;
    sub_2741C7A2C();
    LOBYTE(v263) = v660[0];
    v265 = *(&v660[0] + 1);
    LOBYTE(v616) = 0;
    sub_2741C7A2C();
    v266 = *(&v660[0] + 1);
    *(&v660[3] + 7) = v646[2];
    *(&v660[4] + 7) = v646[3];
    *(&v660[5] + 7) = v646[4];
    BYTE7(v660[6]) = v647;
    *(v660 + 7) = v645;
    *(&v660[1] + 7) = v646[0];
    *(&v660[2] + 7) = v646[1];
    v623 = v255;
    v624 = v655[0];
    *&v625[3] = *(&v645 + 3);
    *v625 = v645;
    v626 = v258;
    v627 = v654[0];
    *&v628[3] = *(&v616 + 3);
    *v628 = v616;
    v629 = v262;
    v630 = v263;
    *&v631[3] = *(v657 + 3);
    *v631 = v657[0];
    v632 = v265;
    v633 = v660[0];
    *&v634[3] = *(v656 + 3);
    *v634 = v656[0];
    v635 = v266;
    v636 = v264;
    v639 = v660[2];
    v638 = v660[1];
    v637 = v660[0];
    v643 = *&v660[6];
    v642 = v660[5];
    v641 = v660[4];
    v640 = v660[3];
    v644 = 1;
    sub_2741167F4(&v623, v660);
    BYTE2(v665) = 1;
LABEL_32:
    sub_274138330();
    sub_2741C72CC();
    sub_2740A6D94(&v616, v660, &qword_28093A178, &qword_2741D3A88);
    HIBYTE(v665) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A178, &qword_2741D3A88);
    sub_2741382AC();
    sub_2741C72CC();
    sub_27409D420(&v616, &qword_28093A178, &qword_2741D3A88);
    v267 = &v623;
LABEL_33:
    sub_274138384(v267);
    sub_2740ACB2C(v658);
    v240 = v612;
    v237 = v613;
    goto LABEL_34;
  }

  *&v660[0] = v615;
  v235 = v612;
  *(&v660[0] + 1) = v612;
  sub_2741C7A3C();
  v236 = v645;
  swift_getKeyPath();
  *&v660[0] = v236;
  v237 = v209;
  sub_2741C6A0C();

  v238 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v236 + v238, v229, type metadata accessor for NetworkSettings);

  v239 = *(v229 + *(v227 + 80));
  sub_274138044(v229, type metadata accessor for NetworkSettings);
  if ((v239 & 0x10) != 0)
  {
    sub_2740ACAC8(v658, &v645);
    type metadata accessor for AssociationModel(0);
    sub_274138B18(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
    v296 = sub_2741C6CEC();
    v298 = v297;
    type metadata accessor for NetworksListModel(0);
    sub_274138B18(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    v299 = sub_2741C6CEC();
    v301 = v300;
    memset(v660, 0, 40);
    if (qword_280937B98 != -1)
    {
      swift_once();
    }

    v303 = sub_274175B8C(v302, v660);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      goto LABEL_120;
    }

    v304 = result;
    v305 = MobileGestalt_get_wapiCapability();

    v655[0] = v298 & 1;
    v654[0] = v301 & 1;
    LOBYTE(v616) = 0;
    sub_2741C7A2C();
    LOBYTE(v304) = v660[0];
    v306 = *(&v660[0] + 1);
    LOBYTE(v616) = 0;
    sub_2741C7A2C();
    v307 = *(&v660[0] + 1);
    *(&v660[3] + 7) = v646[2];
    *(&v660[4] + 7) = v646[3];
    *(&v660[5] + 7) = v646[4];
    BYTE7(v660[6]) = v647;
    *(v660 + 7) = v645;
    *(&v660[1] + 7) = v646[0];
    *(&v660[2] + 7) = v646[1];
    *&v616 = v296;
    BYTE8(v616) = v655[0];
    HIDWORD(v616) = *(&v645 + 3);
    *(&v616 + 9) = v645;
    *&v617 = v299;
    BYTE8(v617) = v654[0];
    HIDWORD(v617) = *(&v623 + 3);
    *(&v617 + 9) = v623;
    *&v618 = v303;
    BYTE8(v618) = v304;
    HIDWORD(v618) = *(v657 + 3);
    *(&v618 + 9) = v657[0];
    *&v619 = v306;
    BYTE8(v619) = v660[0];
    HIDWORD(v619) = *(v656 + 3);
    *(&v619 + 9) = v656[0];
    *v620 = v307;
    v620[8] = v305;
    *&v620[41] = v660[2];
    *&v620[25] = v660[1];
    *&v620[9] = v660[0];
    v621 = *&v660[6];
    *&v620[89] = v660[5];
    *&v620[73] = v660[4];
    *&v620[57] = v660[3];
    v622 = 2;
    sub_2741167F4(&v616, v660);
    HIBYTE(v665) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A178, &qword_2741D3A88);
    sub_2741382AC();
    sub_274138330();
    sub_2741C72CC();
    v267 = &v616;
    goto LABEL_33;
  }

  v240 = v235;
  sub_2740ACB2C(v658);
  v645 = 0u;
  memset(v646, 0, sizeof(v646));
  v647 = 0u;
  v648 = 0u;
  v649 = 0u;
  v650 = 0u;
  v651 = 0u;
  v652 = -16777216;
LABEL_34:
  v662 = v649;
  v663 = v650;
  v664 = v651;
  v665 = v652;
  v660[4] = v646[3];
  v660[5] = v646[4];
  v660[6] = v647;
  v661 = v648;
  v660[0] = v645;
  v660[1] = v646[0];
  v660[2] = v646[1];
  v660[3] = v646[2];
  v224 = v237;
LABEL_35:
  v268 = v615;
  *&v616 = v615;
  *(&v616 + 1) = v240;
  sub_2741C7A3C();
  v269 = v623;
  swift_getKeyPath();
  *&v616 = v269;
  sub_2741C6A0C();

  v270 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v269 + v270, &v623);

  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v620, 0, 33);
    v618 = 0u;
    v619 = 0u;
    v616 = 0u;
    v617 = 0u;
    sub_27409D420(&v616, &qword_280938340, &qword_2741D1660);
    v273 = v224;
    goto LABEL_39;
  }

  v646[3] = *v620;
  v646[4] = *&v620[16];
  LOBYTE(v647) = v620[32];
  v645 = v616;
  v646[0] = v617;
  v646[1] = v618;
  v646[2] = v619;
  *&v616 = v268;
  *(&v616 + 1) = v240;
  sub_2741C7A3C();
  v271 = v623;
  swift_getKeyPath();
  *&v616 = v271;
  sub_2741C6A0C();

  v272 = *(v271 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork);

  v273 = v224;
  if (v272)
  {
    sub_2740ACB2C(&v645);
LABEL_39:
    v274 = v240;
    v275 = &qword_280939000;
    (*(v561 + 56))(v602, 1, 1, v562);
    v276 = v615;
    goto LABEL_49;
  }

  *&v616 = v268;
  *(&v616 + 1) = v240;
  sub_2741C7A3C();
  v277 = v623;
  swift_getKeyPath();
  *&v616 = v277;
  sub_2741C6A0C();

  v278 = *(v277 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  v274 = v240;
  if (v278 == 2 || (v276 = v268, *&v616 = v268, *(&v616 + 1) = v274, sub_2741C7A3C(), v279 = v623, swift_getKeyPath(), *&v616 = v279, sub_2741C6A0C(), , v280 = *(v279 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType), , v280 == 3))
  {
    sub_2740ACAC8(&v645, &v616);
    v281 = v611;
    v282 = v521;
    sub_274137EA4(v611, v521, type metadata accessor for NetworkDetailsView);
    v283 = *(v518 + 80);
    v284 = swift_allocObject();
    v285 = *&v620[16];
    *(v284 + 80) = *v620;
    *(v284 + 96) = v285;
    *(v284 + 112) = v620[32];
    v286 = v617;
    *(v284 + 16) = v616;
    *(v284 + 32) = v286;
    v287 = v619;
    *(v284 + 48) = v618;
    *(v284 + 64) = v287;
    sub_2741383D8(v282, v284 + ((v283 + 113) & ~v283), type metadata accessor for NetworkDetailsView);
    v288 = v519;
    sub_2741C7A7C();
    sub_2740ACB2C(&v645);
    sub_274137EA4(v281, v282, type metadata accessor for NetworkDetailsView);
    v289 = (v283 + 16) & ~v283;
    v276 = v615;
    v290 = swift_allocObject();
    sub_2741383D8(v282, v290 + v289, type metadata accessor for NetworkDetailsView);
    v291 = v530;
    v292 = &v288[*(v530 + 36)];
    *v292 = sub_274138294;
    v292[1] = v290;
    v292[2] = 0;
    v292[3] = 0;
    v293 = v288;
    v275 = &qword_280939000;
    v273 = v613;
    v294 = v528;
    sub_2740A6C18(v293, v528, &qword_28093A0A8, &qword_2741D3978);
    v295 = 0;
  }

  else
  {
    sub_2740ACB2C(&v645);
    v295 = 1;
    v291 = v530;
    v294 = v528;
    v275 = &qword_280939000;
  }

  (*(v529 + 56))(v294, v295, 1, v291);
  v308 = v294;
  v309 = v602;
  sub_2740A6C18(v308, v602, &qword_28093A0B0, &qword_2741D3980);
  (*(v561 + 56))(v309, 0, 1, v562);
LABEL_49:
  *&v616 = v276;
  *(&v616 + 1) = v274;
  sub_2741C7A3C();
  v310 = v623;
  swift_getKeyPath();
  *&v616 = v310;
  sub_2741C6A0C();

  v311 = v275[327];
  swift_beginAccess();
  sub_27409D4E4(v310 + v311, &v623);

  if (swift_dynamicCast())
  {
    v646[3] = *v620;
    v646[4] = *&v620[16];
    LOBYTE(v647) = v620[32];
    v645 = v616;
    v646[0] = v617;
    v646[1] = v618;
    v646[2] = v619;
    *&v618 = 0;
    v616 = 0u;
    v617 = 0u;
    if (qword_280937B98 != -1)
    {
      swift_once();
    }

    type metadata accessor for WiFiSystemConfiguration();
    v312 = swift_allocObject();

    sub_27409CBB0(v313, &v616, v312);

    v314 = sub_2741980C8();
    MEMORY[0x28223BE20](v314, v315);
    *(&v511 - 2) = &v645;
    v316 = v539;
    sub_27412670C(sub_2741380A4, v314, v539);

    v317 = v316;

    v318 = (*(v563 + 48))(v316, 1, v564);
    v319 = v540;
    if (v318 == 1)
    {
      sub_27409D420(v317, &qword_280938570, &qword_2741D1630);
    }

    else
    {
      v327 = v535;
      sub_2741383D8(v317, v535, type metadata accessor for KnownNetwork);
      *&v616 = v615;
      *(&v616 + 1) = v612;
      sub_2741C7A3C();
      v328 = v623;
      swift_getKeyPath();
      *&v616 = v328;
      sub_2741C6A0C();

      v329 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
      swift_beginAccess();
      sub_27409D4E4(v328 + v329, &v616);

      v330 = *(&v617 + 1);
      v331 = v618;
      __swift_project_boxed_opaque_existential_1(&v616, *(&v617 + 1));
      LOBYTE(v329) = (*(v331 + 56))(v330, v331);
      __swift_destroy_boxed_opaque_existential_1Tm(&v616);
      if ((v329 & 1) == 0 && (*(v327 + 114) & 1) == 0)
      {
        v497 = v551;
        v498 = v525;
        sub_274137EA4(v327, v525 + *(v551 + 36), type metadata accessor for KnownNetwork);
        *v498 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
        swift_storeEnumTagMultiPayload();
        v605 = type metadata accessor for NetworkDetailsModel(0);
        v499 = sub_2741C6CEC();
        v501 = v500;
        *&v618 = 0;
        v616 = 0u;
        v617 = 0u;
        v502 = swift_allocObject();

        v504 = sub_27409CBB0(v503, &v616, v502);

        *&v618 = 0;
        v616 = 0u;
        v617 = 0u;

        v506 = sub_274175B8C(v505, &v616);
        v507 = v498 + v497[5];
        *v507 = v499;
        v507[8] = v501 & 1;
        v508 = v498 + v497[6];
        LOBYTE(v656[0]) = 0;
        sub_2741C7A2C();
        v509 = *(&v616 + 1);
        *v508 = v616;
        *(v508 + 1) = v509;
        *(v498 + v497[7]) = v504;
        *(v498 + v497[8]) = v506;
        v334 = v273;
        *&v616 = v615;
        *(&v616 + 1) = v612;
        sub_2741C7A3C();
        sub_274138B18(&qword_28093A168, type metadata accessor for ForgetNetworkSection, &unk_2741CE6C8);
        v510 = v526;
        sub_2741C770C();

        sub_274138044(v498, type metadata accessor for ForgetNetworkSection);
        sub_274138044(v535, type metadata accessor for KnownNetwork);
        v333 = v550;
        (*(v550 + 32))(v319, v510, v552);
        v332 = 0;
        goto LABEL_61;
      }

      sub_274138044(v327, type metadata accessor for KnownNetwork);
    }

    v332 = 1;
    v333 = v550;
    v334 = v273;
LABEL_61:
    (*(v333 + 56))(v319, v332, 1, v552);
    sub_2740A6D94(v319, v549, &qword_28093A098, &unk_2741D3960);
    swift_storeEnumTagMultiPayload();
    sub_274137F10();
    v335 = type metadata accessor for NetworkDetailsModel(255);
    v336 = sub_274138B18(&qword_28093A168, type metadata accessor for ForgetNetworkSection, &unk_2741CE6C8);
    *&v616 = v551;
    *(&v616 + 1) = v335;
    *&v617 = v336;
    *(&v617 + 1) = v334;
    swift_getOpaqueTypeConformance2();
    v337 = v603;
    sub_2741C72CC();
    sub_27409D420(v319, &qword_28093A098, &unk_2741D3960);
    sub_2740ACB2C(&v645);
    v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0F0, &qword_2741D39F0);
    (*(*(v338 - 8) + 56))(v337, 0, 1, v338);
    v339 = v615;
    v274 = v612;
    goto LABEL_67;
  }

  memset(v620, 0, 33);
  v618 = 0u;
  v619 = 0u;
  v616 = 0u;
  v617 = 0u;
  sub_27409D420(&v616, &qword_280938340, &qword_2741D1660);
  *&v645 = v276;
  *(&v645 + 1) = v274;
  sub_2741C7A3C();
  v320 = v616;
  swift_getKeyPath();
  *&v616 = v320;
  sub_2741C6A0C();

  v321 = v275[327];
  swift_beginAccess();
  sub_27409D4E4(v320 + v321, &v645);

  v322 = v538;
  v323 = v564;
  v324 = swift_dynamicCast();
  v325 = *(v563 + 56);
  if ((v324 & 1) == 0)
  {
    v325(v322, 1, 1, v323);
    sub_27409D420(v322, &qword_280938570, &qword_2741D1630);
    goto LABEL_63;
  }

  v325(v322, 0, 1, v323);
  v326 = v537;
  sub_2741383D8(v322, v537, type metadata accessor for KnownNetwork);
  if (*(v326 + 114))
  {
    sub_274138044(v326, type metadata accessor for KnownNetwork);
LABEL_63:
    v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0F0, &qword_2741D39F0);
    (*(*(v340 - 8) + 56))(v603, 1, 1, v340);
    v339 = v615;
    goto LABEL_67;
  }

  v341 = v551;
  v342 = v525;
  sub_274137EA4(v326, v525 + *(v551 + 36), type metadata accessor for KnownNetwork);
  *v342 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  v343 = type metadata accessor for NetworkDetailsModel(0);
  v344 = sub_2741C6CEC();
  v346 = v345;
  v645 = 0u;
  memset(v646, 0, 24);
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  type metadata accessor for WiFiSystemConfiguration();
  v347 = swift_allocObject();

  v349 = sub_27409CBB0(v348, &v645, v347);

  v645 = 0u;
  memset(v646, 0, 24);

  v351 = sub_274175B8C(v350, &v645);
  v352 = v342 + v341[5];
  *v352 = v344;
  v352[8] = v346 & 1;
  v353 = v342 + v341[6];
  LOBYTE(v616) = 0;
  sub_2741C7A2C();
  v354 = *(&v645 + 1);
  *v353 = v645;
  *(v353 + 1) = v354;
  *(v342 + v341[7]) = v349;
  *(v342 + v341[8]) = v351;
  *&v645 = v615;
  *(&v645 + 1) = v612;
  sub_2741C7A3C();
  v355 = sub_274138B18(&qword_28093A168, type metadata accessor for ForgetNetworkSection, &unk_2741CE6C8);
  v356 = v526;
  v605 = v343;
  v357 = v613;
  sub_2741C770C();

  sub_274138044(v342, type metadata accessor for ForgetNetworkSection);
  v358 = v341;
  v359 = v550;
  v360 = v552;
  (*(v550 + 16))(v549, v356, v552);
  swift_storeEnumTagMultiPayload();
  sub_274137F10();
  *&v645 = v358;
  v274 = v612;
  *(&v645 + 1) = v605;
  *&v646[0] = v355;
  v339 = v615;
  *(&v646[0] + 1) = v357;
  swift_getOpaqueTypeConformance2();
  v361 = v603;
  sub_2741C72CC();
  (*(v359 + 8))(v356, v360);
  sub_274138044(v537, type metadata accessor for KnownNetwork);
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0F0, &qword_2741D39F0);
  (*(*(v362 - 8) + 56))(v361, 0, 1, v362);
LABEL_67:
  *&v645 = v339;
  *(&v645 + 1) = v274;
  sub_2741C7A3C();
  v363 = v616;
  swift_getKeyPath();
  *&v645 = v363;
  sub_2741C6A0C();

  v364 = *(v363 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  if (v364 == 3)
  {
    v367 = 1;
    v368 = v604;
    v370 = v566;
    v369 = v567;
  }

  else
  {
    MEMORY[0x28223BE20](v365, v366);
    *(&v511 - 2) = v611;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0F8, &qword_2741D39F8);
    sub_2740A6D24(&qword_28093A100, &qword_28093A0F8, &qword_2741D39F8, MEMORY[0x277CE14C0]);
    v371 = v541;
    sub_2741C7B9C();
    v370 = v566;
    v368 = v604;
    v372 = v371;
    v369 = v567;
    (*(v566 + 32))(v604, v372, v567);
    v367 = 0;
  }

  v373 = 1;
  (*(v370 + 56))(v368, v367, 1, v369);
  v374 = v615;
  *&v645 = v615;
  *(&v645 + 1) = v274;
  sub_2741C7A3C();
  v375 = v616;
  swift_getKeyPath();
  *&v645 = v375;
  sub_2741C6A0C();

  v376 = *(v375 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  if (v376 != 3)
  {
    *&v645 = v374;
    *(&v645 + 1) = v274;
    sub_2741C7A3C();
    v377 = v616;
    swift_getKeyPath();
    *&v645 = v377;
    sub_2741C6A0C();

    v378 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    v379 = v598;
    sub_274137EA4(v377 + v378, v598, type metadata accessor for NetworkSettings);

    v380 = *(v379 + *(v599 + 80));
    v381 = sub_274138044(v379, type metadata accessor for NetworkSettings);
    if ((v380 & 0x2000) != 0)
    {
      MEMORY[0x28223BE20](v381, v382);
      v383 = v611;
      *(&v511 - 2) = v611;
      if (*(v383 + *(v531 + 32)) == 1)
      {
        if (qword_280937740 != -1)
        {
          swift_once();
        }

        v384 = &qword_2809465B8;
      }

      else
      {
        if (qword_280937738 != -1)
        {
          swift_once();
        }

        v384 = &qword_2809465A8;
      }

      v385 = *v384;

      *&v645 = v385;
      *(&v645 + 1) = v386;
      sub_2740A6A74();
      *&v645 = sub_2741C76AC();
      *(&v645 + 1) = v387;
      LOBYTE(v646[0]) = v388 & 1;
      *(&v646[0] + 1) = v389;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938370, &qword_2741CE9B0);
      sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0, MEMORY[0x277CDF068]);
      v390 = v532;
      sub_2741C7BAC();
      (*(v576 + 32))(v609, v390, v597);
      v373 = 0;
      v374 = v615;
    }

    else
    {
      v373 = 1;
    }
  }

  v391 = v274;
  v392 = *(v576 + 56);
  v605 = v576 + 56;
  v599 = v392;
  v392(v609, v373, 1, v597);
  *&v645 = v374;
  *(&v645 + 1) = v274;
  sub_2741C7A3C();
  v393 = v616;
  swift_getKeyPath();
  *&v645 = v393;
  sub_2741C6A0C();

  v394 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  v395 = v565;
  sub_274137EA4(v393 + v394, v565, type metadata accessor for NetworkSettings);

  LODWORD(v394) = *(v395 + 160);
  sub_274138044(v395, type metadata accessor for NetworkSettings);
  v396 = 1;
  if (v394 == 1)
  {
    *&v645 = v374;
    *(&v645 + 1) = v274;
    sub_2741C7A3C();
    v397 = v616;
    swift_getKeyPath();
    *&v645 = v397;
    sub_2741C6A0C();

    v398 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    v399 = v598;
    sub_274137EA4(v397 + v398, v598, type metadata accessor for NetworkSettings);

    v400 = *(v399 + 48);
    sub_274138044(v399, type metadata accessor for NetworkSettings);
    if (v400)
    {
      v396 = 1;
      goto LABEL_86;
    }

    *&v645 = v374;
    *(&v645 + 1) = v274;
    sub_2741C7A3C();
    v401 = v616;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v402 = result;
      v403 = MobileGestalt_get_wapiCapability();

      *&v645 = v401;
      BYTE8(v645) = v403;
      v404 = v515;
      sub_2741C73FC();
      sub_274137E48();
      v405 = v514;
      v406 = v517;
      sub_2741C771C();
      (*(v516 + 8))(v404, v406);

      (*(v574 + 32))(v607, v405, v575);
      v396 = 0;
      v374 = v615;
      v391 = v612;
      goto LABEL_86;
    }

    goto LABEL_118;
  }

LABEL_86:
  (*(v574 + 56))(v607, v396, 1, v575);
  *&v645 = v374;
  *(&v645 + 1) = v391;
  sub_2741C7A3C();
  v407 = v616;
  swift_getKeyPath();
  *&v645 = v407;
  sub_2741C6A0C();

  v408 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  v409 = v407 + v408;
  v410 = v553;
  sub_274137EA4(v409, v553, type metadata accessor for NetworkSettings);

  if (*(v410 + 48))
  {
    sub_274138044(v410, type metadata accessor for NetworkSettings);
    (*(v554 + 56))(v600, 1, 1, v555);
    v411 = v615;
  }

  else
  {
    v412 = sub_274138044(v410, type metadata accessor for NetworkSettings);
    MEMORY[0x28223BE20](v412, v413);
    v414 = v611;
    *(&v511 - 2) = v611;
    v415 = sub_2741C71BC();
    LOBYTE(v645) = 1;
    sub_274132EE0(v414, &v616);
    *&v653[7] = v616;
    *&v653[55] = v619;
    *&v653[39] = v618;
    *&v653[23] = v617;
    v416 = v645;
    v645 = v415;
    LOBYTE(v646[0]) = v416;
    *(v646 + 1) = *v653;
    *&v646[4] = *(&v619 + 1);
    *(&v646[3] + 1) = *&v653[48];
    *(&v646[2] + 1) = *&v653[32];
    *(&v646[1] + 1) = *&v653[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A108, &qword_2741D3A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809398B8, &qword_2741D07B8);
    sub_2740A6D24(&qword_28093A110, &qword_28093A108, &qword_2741D3A00, MEMORY[0x277CE14C0]);
    v411 = v615;
    sub_2740A6D24(&qword_2809398B0, &qword_2809398B8, &qword_2741D07B8, MEMORY[0x277CE1198]);
    v417 = v536;
    sub_2741C7BAC();
    v419 = v554;
    v418 = v555;
    v420 = v600;
    v421 = v417;
    v391 = v612;
    (*(v554 + 32))(v600, v421, v555);
    (*(v419 + 56))(v420, 0, 1, v418);
  }

  *&v645 = v411;
  *(&v645 + 1) = v391;
  sub_2741C7A3C();
  v422 = v616;
  swift_getKeyPath();
  *&v645 = v422;
  sub_2741C6A0C();

  v423 = *(v422 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  if (v423 == 3)
  {
    v424 = v411;
LABEL_92:
    v431 = 1;
    v432 = v611;
    goto LABEL_93;
  }

  v424 = v411;
  *&v645 = v411;
  *(&v645 + 1) = v391;
  sub_2741C7A3C();
  v425 = v616;
  swift_getKeyPath();
  *&v645 = v425;
  sub_2741C6A0C();

  v426 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  v427 = v542;
  sub_274137EA4(v425 + v426, v542, type metadata accessor for NetworkSettings);

  v428 = *(v427 + 48);
  v429 = sub_274138044(v427, type metadata accessor for NetworkSettings);
  if (v428)
  {
    goto LABEL_92;
  }

  MEMORY[0x28223BE20](v429, v430);
  v432 = v611;
  *(&v511 - 2) = v611;
  if (qword_280937790 != -1)
  {
    swift_once();
  }

  v645 = xmmword_280946668;
  sub_2740A6A74();

  *&v645 = sub_2741C76AC();
  *(&v645 + 1) = v493;
  LOBYTE(v646[0]) = v494 & 1;
  *(&v646[0] + 1) = v495;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938370, &qword_2741CE9B0);
  sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0, MEMORY[0x277CDF068]);
  v496 = v522;
  sub_2741C7BAC();
  (*(v576 + 32))(v606, v496, v597);
  v431 = 0;
LABEL_93:
  (v599)(v606, v431, 1, v597);
  if (qword_2809377A8 != -1)
  {
    swift_once();
  }

  v645 = xmmword_280946698;
  v433 = sub_2740A6A74();

  v605 = v433;
  *&v645 = sub_2741C76AC();
  *(&v645 + 1) = v434;
  LOBYTE(v646[0]) = v435 & 1;
  *(&v646[0] + 1) = v436;
  MEMORY[0x28223BE20](v645, v434);
  *(&v511 - 2) = v432;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A118, &qword_2741D3A08);
  sub_2740A6D24(&qword_28093A120, &qword_28093A118, &qword_2741D3A08, MEMORY[0x277CE14C0]);
  sub_2741C7B7C();
  *&v645 = v424;
  v437 = v612;
  *(&v645 + 1) = v612;
  sub_2741C7A3C();
  v438 = v616;
  swift_getKeyPath();
  *&v645 = v438;
  sub_2741C6A0C();

  v439 = *(v438 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  v440 = v556;
  if (v439 == 1)
  {
    *&v645 = v424;
    *(&v645 + 1) = v437;
    sub_2741C7A3C();
    v441 = v616;
    swift_getKeyPath();
    *&v645 = v441;
    sub_2741C6A0C();

    v443 = *(v441 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
    v442 = *(v441 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
    v444 = *(v441 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
    v445 = *(v441 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
    v446 = *(v441 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
    sub_274103F80(v443, v442, v444, v445, v446);

    if (v442 != 1)
    {

      sub_2740CC5FC(v443, v442, v444, v445, v446);
      v448 = v611;
      v451 = v440;
      if (v442)
      {

        *&v645 = v615;
        *(&v645 + 1) = v612;
        sub_2741C7A3C();
        v482 = v616;
        swift_getKeyPath();
        *&v645 = v482;
        sub_2741C6A0C();

        v483 = *(v482 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
        v484 = *(v482 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
        v485 = *(v482 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
        v486 = *(v482 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
        v487 = *(v482 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
        sub_274103F80(v483, v484, v485, v486, v487);

        if (v484 == 1 || (, sub_2740CC5FC(v483, v484, v485, v486, v487), !v487))
        {
          v447 = 1;
          v450 = v568;
          v449 = v569;
        }

        else
        {

          if (qword_2809377B0 != -1)
          {
            swift_once();
          }

          v645 = xmmword_2809466A8;

          *&v645 = sub_2741C76AC();
          *(&v645 + 1) = v488;
          LOBYTE(v646[0]) = v489 & 1;
          *(&v646[0] + 1) = v490;
          MEMORY[0x28223BE20](v645, v488);
          *(&v511 - 2) = v448;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A150, &qword_2741D3A50);
          sub_2740A6D24(&qword_28093A158, &qword_28093A150, &qword_2741D3A50, MEMORY[0x277CE14C0]);
          v491 = v512;
          sub_2741C7B7C();
          v450 = v568;
          v492 = v569;
          (*(v568 + 32))(v596, v491, v569);
          v449 = v492;
          v447 = 0;
        }
      }

      else
      {
        v447 = 1;
        v450 = v568;
        v449 = v569;
      }

      goto LABEL_100;
    }

    v447 = 1;
    v448 = v611;
    v450 = v568;
    v449 = v569;
  }

  else
  {
    v447 = 1;
    v450 = v568;
    v449 = v569;
    v448 = v611;
  }

  v451 = v440;
LABEL_100:
  (*(v450 + 56))(v596, v447, 1, v449);
  if (qword_280937808 != -1)
  {
    swift_once();
  }

  v645 = xmmword_280946758;

  *&v645 = sub_2741C76AC();
  *(&v645 + 1) = v452;
  LOBYTE(v646[0]) = v453 & 1;
  *(&v646[0] + 1) = v454;
  MEMORY[0x28223BE20](v645, v452);
  *(&v511 - 2) = v448;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A128, &qword_2741D3A10);
  sub_2740A6D24(&qword_28093A130, &qword_28093A128, &qword_2741D3A10, MEMORY[0x277CDD938]);
  sub_2741C7B7C();
  if (qword_280937818 != -1)
  {
    swift_once();
  }

  v645 = xmmword_280946778;

  *&v645 = sub_2741C76AC();
  *(&v645 + 1) = v455;
  LOBYTE(v646[0]) = v456 & 1;
  *(&v646[0] + 1) = v457;
  MEMORY[0x28223BE20](v645, v455);
  *(&v511 - 2) = v448;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A138, &qword_2741D3A18);
  sub_2740A6D24(&qword_28093A140, &qword_28093A138, &qword_2741D3A18, MEMORY[0x277CDD938]);
  sub_2741C7B7C();
  v458 = v578;
  sub_2740A6D94(v577, v578, &qword_28093A0E8, &qword_2741D39C0);
  *&v616 = v458;
  v459 = v579;
  sub_2740A6D94(v608, v579, &qword_28093A0D8, &qword_2741D39B0);
  *(&v616 + 1) = v459;
  v460 = v580;
  sub_2740A6D94(v610, v580, &qword_28093A0C0, &qword_2741D3998);
  *&v617 = v460;
  sub_2740A6D94(v660, &v645, &qword_28093A148, &qword_2741D3A20);
  *(&v617 + 1) = &v645;
  v461 = v581;
  sub_2740A6D94(v602, v581, &qword_28093A0B8, &unk_2741D3988);
  *&v618 = v461;
  v462 = v582;
  sub_2740A6D94(v603, v582, &qword_28093A0A0, &qword_2741D3970);
  *(&v618 + 1) = v462;
  v463 = v583;
  sub_2740A6D94(v604, v583, &qword_28093A080, &qword_2741D3948);
  *&v619 = v463;
  v464 = v585;
  sub_2740A6D94(v609, v585, &qword_28093A070, &qword_2741D3938);
  *(&v619 + 1) = v464;
  v465 = v586;
  sub_2740A6D94(v607, v586, &qword_28093A060, &qword_2741D3928);
  *v620 = v465;
  v466 = v587;
  sub_2740A6D94(v600, v587, &qword_28093A050, &qword_2741D3918);
  *&v620[8] = v466;
  v467 = v584;
  sub_2740A6D94(v606, v584, &qword_28093A070, &qword_2741D3938);
  *&v620[16] = v467;
  v468 = v588;
  v469 = v591;
  (*(v590 + 16))(v588, v601, v591);
  *&v620[24] = v468;
  v470 = v596;
  v471 = v592;
  sub_2740A6D94(v596, v592, &qword_28093A038, &qword_2741D3900);
  *&v620[32] = v471;
  v473 = v558;
  v472 = v559;
  v474 = v593;
  (*(v558 + 16))(v593, v451, v559);
  *&v620[40] = v474;
  v475 = v451;
  v476 = v560;
  v477 = v594;
  v478 = v589;
  v479 = v595;
  (*(v560 + 16))(v594, v589, v595);
  *&v620[48] = v477;
  sub_274126448(&v616, v557);
  v615 = *(v476 + 8);
  v615(v478, v479);
  v480 = *(v473 + 8);
  v480(v475, v472);
  sub_27409D420(v470, &qword_28093A038, &qword_2741D3900);
  v481 = *(v590 + 8);
  v481(v601, v469);
  sub_27409D420(v606, &qword_28093A070, &qword_2741D3938);
  sub_27409D420(v600, &qword_28093A050, &qword_2741D3918);
  sub_27409D420(v607, &qword_28093A060, &qword_2741D3928);
  sub_27409D420(v609, &qword_28093A070, &qword_2741D3938);
  sub_27409D420(v604, &qword_28093A080, &qword_2741D3948);
  sub_27409D420(v603, &qword_28093A0A0, &qword_2741D3970);
  sub_27409D420(v602, &qword_28093A0B8, &unk_2741D3988);
  sub_27409D420(v660, &qword_28093A148, &qword_2741D3A20);
  sub_27409D420(v610, &qword_28093A0C0, &qword_2741D3998);
  sub_27409D420(v608, &qword_28093A0D8, &qword_2741D39B0);
  sub_27409D420(v577, &qword_28093A0E8, &qword_2741D39C0);
  v615(v594, v595);
  v480(v593, v472);
  sub_27409D420(v592, &qword_28093A038, &qword_2741D3900);
  v481(v588, v591);
  sub_27409D420(v584, &qword_28093A070, &qword_2741D3938);
  sub_27409D420(v587, &qword_28093A050, &qword_2741D3918);
  sub_27409D420(v586, &qword_28093A060, &qword_2741D3928);
  sub_27409D420(v585, &qword_28093A070, &qword_2741D3938);
  sub_27409D420(v583, &qword_28093A080, &qword_2741D3948);
  sub_27409D420(v582, &qword_28093A0A0, &qword_2741D3970);
  sub_27409D420(v581, &qword_28093A0B8, &unk_2741D3988);
  sub_27409D420(&v645, &qword_28093A148, &qword_2741D3A20);
  sub_27409D420(v580, &qword_28093A0C0, &qword_2741D3998);
  sub_27409D420(v579, &qword_28093A0D8, &qword_2741D39B0);
  return sub_27409D420(v578, &qword_28093A0E8, &qword_2741D39C0);
}

uint64_t sub_27412C508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1A8, &qword_2741D3A98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  *a2 = sub_2741C71AC();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  v10[0] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1B0, &unk_2741D3AA0) + 44);
  v10[1] = a1;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1B8, &qword_2741D3AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1C0, &qword_2741D3AD0);
  sub_2740A6D24(&qword_28093A1C8, &qword_28093A1B8, &qword_2741D3AC8, MEMORY[0x277D83980]);
  sub_274138540();
  sub_274138594();
  sub_2741C7B5C();
  sub_2741C6D4C();
  sub_274138644();
  sub_2741C778C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_27412C72C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1E8, &qword_2741D3AD8);
  v52 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = (&v46 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1F8, &qword_2741D3AE0);
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A200, &qword_2741D3AE8);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v51 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v46 - v18;
  v20 = *a1;
  v21 = a1[1];
  LOBYTE(v55) = *a1;
  BYTE1(v55) = v21;
  if (sub_27410D404(&v55))
  {
    v47 = v5;
    v48 = a3;
    v46 = sub_2741C71BC();
    v58 = 0;
    if (v21)
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    sub_27412CD38(v22 | v20, &v55);
    v63 = v56[3];
    v64 = v56[4];
    v65 = v56[5];
    v66 = *&v56[6];
    v59 = v55;
    v60 = v56[0];
    v61 = v56[1];
    v62 = v56[2];
    v67[0] = v55;
    v67[1] = v56[0];
    v67[2] = v56[1];
    v67[3] = v56[2];
    v67[4] = v56[3];
    v67[5] = v56[4];
    v67[6] = v56[5];
    v68 = *&v56[6];
    sub_2740A6D94(&v59, &v53, &qword_28093A208, &unk_2741D3AF0);
    sub_27409D420(v67, &qword_28093A208, &unk_2741D3AF0);
    *(&v57[4] + 7) = v63;
    *(&v57[5] + 7) = v64;
    *(&v57[6] + 7) = v65;
    *(&v57[7] + 7) = v66;
    *(v57 + 7) = v59;
    *(&v57[1] + 7) = v60;
    *(&v57[2] + 7) = v61;
    *(&v57[3] + 7) = v62;
    v23 = v58;
    v24 = *(v49 + 16);
    if (v24 && (v25 = v49 + 2 * v24, v27 = *(v25 + 30), v26 = v25 + 30, v20 == v27) && *(v26 + 1) == v21)
    {
      v35 = 1;
    }

    else
    {
      sub_2741C7B4C();
      v28 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A210, &qword_2741D7140) + 36)];
      v28[32] = 0;
      *v28 = 0u;
      *(v28 + 1) = 0u;
      v29 = sub_2741C757C();
      sub_2741C6C6C();
      v30 = &v12[*(v9 + 36)];
      *v30 = v29;
      *(v30 + 1) = v31;
      *(v30 + 2) = v32;
      *(v30 + 3) = v33;
      *(v30 + 4) = v34;
      v30[40] = 0;
      sub_2740A6C18(v12, v19, &qword_28093A1F8, &qword_2741D3AE0);
      v35 = 0;
    }

    (*(v50 + 56))(v19, v35, 1, v9);
    v36 = v51;
    sub_2740A6D94(v19, v51, &qword_28093A200, &qword_2741D3AE8);
    v37 = v46;
    *&v53 = v46;
    *(&v53 + 1) = 0x4034000000000000;
    LOBYTE(v54[0]) = v23;
    *(v54 + 1) = v57[0];
    *(&v54[1] + 1) = v57[1];
    *(&v54[5] + 1) = v57[5];
    *(&v54[4] + 1) = v57[4];
    *(&v54[6] + 1) = v57[6];
    v54[7] = *(&v57[6] + 15);
    *(&v54[2] + 1) = v57[2];
    *(&v54[3] + 1) = v57[3];
    v38 = v54[6];
    v8[6] = v54[5];
    v8[7] = v38;
    v8[8] = v54[7];
    v39 = v54[2];
    v8[2] = v54[1];
    v8[3] = v39;
    v40 = v54[4];
    v8[4] = v54[3];
    v8[5] = v40;
    v41 = v54[0];
    *v8 = v53;
    v8[1] = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A218, &qword_2741D3B00);
    sub_2740A6D94(v36, v8 + *(v42 + 48), &qword_28093A200, &qword_2741D3AE8);
    sub_2740A6D94(&v53, &v55, &qword_28093A220, &qword_2741D3B08);
    sub_27409D420(v19, &qword_28093A200, &qword_2741D3AE8);
    sub_27409D420(v36, &qword_28093A200, &qword_2741D3AE8);
    *(&v56[4] + 1) = v57[4];
    *(&v56[5] + 1) = v57[5];
    *(&v56[6] + 1) = v57[6];
    v56[7] = *(&v57[6] + 15);
    *(v56 + 1) = v57[0];
    *(&v56[1] + 1) = v57[1];
    *(&v56[2] + 1) = v57[2];
    *&v55 = v37;
    *(&v55 + 1) = 0x4034000000000000;
    LOBYTE(v56[0]) = v23;
    *(&v56[3] + 1) = v57[3];
    sub_27409D420(&v55, &qword_28093A220, &qword_2741D3B08);
    v43 = v48;
    sub_2740A6C18(v8, v48, &qword_28093A1E8, &qword_2741D3AD8);
    return (*(v52 + 56))(v43, 0, 1, v47);
  }

  else
  {
    v45 = *(v52 + 56);

    return v45(a3, 1, 1, v5);
  }
}

uint64_t sub_27412CD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v25 = sub_2741C71BC();
  sub_27412CF64(v2, v36);
  *&v35[7] = v36[0];
  *&v35[23] = v36[1];
  *&v35[39] = v36[2];
  *&v35[55] = v36[3];
  LOWORD(v28) = v2 & 0x1FF;
  LOBYTE(v26) = v2;
  v4 = sub_27410CA84(&v26);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0xE000000000000000;
  if (v5)
  {
    v7 = v5;
  }

  v28 = v6;
  v29 = v7;
  sub_2740A6A74();
  v8 = sub_2741C76AC();
  v10 = v9;
  v12 = v11;
  LODWORD(v28) = sub_2741C737C();
  v13 = sub_2741C764C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2740A6AC8(v8, v10, v12 & 1);

  *&v26 = v25;
  *(&v26 + 1) = 0x4008000000000000;
  v27[0] = 0;
  *&v27[1] = *v35;
  *&v27[49] = *&v35[48];
  *&v27[33] = *&v35[32];
  *&v27[17] = *&v35[16];
  *&v27[64] = *&v35[63];
  v20 = *&v35[63];
  v21 = *v27;
  *a2 = v26;
  *(a2 + 16) = v21;
  v22 = *&v27[16];
  v23 = *&v27[48];
  *(a2 + 48) = *&v27[32];
  *(a2 + 64) = v23;
  *(a2 + 32) = v22;
  *(a2 + 80) = v20;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15;
  *(a2 + 104) = v17 & 1;
  *(a2 + 112) = v19;
  sub_2740A6D94(&v26, &v28, &qword_2809398B8, &qword_2741D07B8);
  sub_27409861C(v13, v15, v17 & 1);

  sub_2740A6AC8(v13, v15, v17 & 1);

  v28 = v25;
  v29 = 0x4008000000000000;
  v30 = 0;
  v32 = *&v35[16];
  v33 = *&v35[32];
  *v34 = *&v35[48];
  *&v34[15] = *&v35[63];
  v31 = *v35;
  return sub_27409D420(&v28, &qword_2809398B8, &qword_2741D07B8);
}

uint64_t sub_27412CF64@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v28[0] = a1;
  sub_27410C238(v28);
  sub_2740A6A74();
  v4 = sub_2741C76AC();
  v6 = v5;
  v8 = v7;
  sub_2741C75EC();
  v26 = sub_2741C767C();
  v27 = v9;
  v11 = v10;
  v25 = v12;

  sub_2740A6AC8(v4, v6, v8 & 1);

  v28[0] = a1;
  sub_27410C5C0(v28);
  v13 = sub_2741C76AC();
  v15 = v14;
  v17 = v16;
  sub_2741C737C();
  v18 = sub_2741C764C();
  v20 = v19;
  LOBYTE(v6) = v21;
  v23 = v22;
  sub_2740A6AC8(v13, v15, v17 & 1);

  v28[0] = v6 & 1;
  *a2 = v26;
  *(a2 + 8) = v11;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v6 & 1;
  *(a2 + 56) = v23;
  sub_27409861C(v26, v11, v25 & 1);

  sub_27409861C(v18, v20, v6 & 1);

  sub_2740A6AC8(v18, v20, v6 & 1);

  sub_2740A6AC8(v26, v11, v25 & 1);
}

uint64_t sub_27412D18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C713C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  LOBYTE(a1) = *(a1 + *(type metadata accessor for NetworkDetailsView(0) + 32));
  sub_2741C712C();
  sub_2741C711C();
  if (a1)
  {
    if (qword_280937658 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280937650 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  sub_2741C710C();

  sub_2741C711C();
  sub_2741C715C();
  result = sub_2741C768C();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_27412D328(uint64_t a1)
{
  v2 = sub_2741C6DBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  v7 = qword_280946F30;
  v10[3] = &type metadata for ScannedNetwork;
  v10[4] = sub_2740F2248();
  v10[0] = swift_allocObject();
  sub_2740ACAC8(a1, v10[0] + 16);

  sub_274137AA4(v10, v7);

  sub_274138710(v10);
  sub_2741268D8(v6);
  sub_2741C6DAC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_27412D498@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809377F0 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  result = sub_2741C76AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_27412D53C(uint64_t a1)
{
  v1 = 0xD000000000000019;
  sub_2741C856C();
  type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A018, &qword_2741D38E0);
  v2 = sub_2741C7EBC();
  v4 = v3;

  MEMORY[0x2743E5FB0](0xD000000000000023, 0x80000002741DD160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v5 = *(v8 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  if (v5 <= 1)
  {
    if (v5)
    {
      v6 = 0xEF6B726F7774656ELL;
      v1 = 0x20746E6572727563;
    }

    else
    {
      v6 = 0x80000002741DBD20;
    }
  }

  else if (v5 == 2)
  {
    v6 = 0x80000002741DBD00;
    v1 = 0xD00000000000001CLL;
  }

  else if (v5 == 3)
  {
    v6 = 0x80000002741DBCE0;
    v1 = 0xD00000000000001ELL;
  }

  else
  {
    v6 = 0x80000002741DBCB0;
    v1 = 0xD00000000000002ALL;
  }

  MEMORY[0x2743E5FB0](v1, v6);

  sub_2740CB460(v2, v4);
}

uint64_t sub_27412D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a2;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A300, &qword_2741D3CE8);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174, v3);
  v165 = &v152 - v4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A308, &qword_2741D3CF0);
  MEMORY[0x28223BE20](v157, v5);
  v156 = (&v152 - v6);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A310, &qword_2741D3CF8);
  v166 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v7);
  v155 = &v152 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A318, &qword_2741D3D00);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v167 = &v152 - v15;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A320, &qword_2741D3D08);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v16);
  v154 = (&v152 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A328, &qword_2741D3D10);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v162 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v170 = &v152 - v23;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A330, &qword_2741D3D18);
  MEMORY[0x28223BE20](v180, v24);
  v172 = &v152 - v25;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A338, &qword_2741D3D20);
  MEMORY[0x28223BE20](v178, v26);
  v179 = &v152 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A340, &qword_2741D3D28);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v182 = &v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v181 = &v152 - v33;
  v34 = type metadata accessor for NetworkDetailsView(0);
  v35 = v34 - 8;
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v37);
  v184 = v38;
  v185 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938370, &qword_2741CE9B0);
  v190 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v40);
  v176 = &v152 - v41;
  v42 = type metadata accessor for NetworkSettings(0);
  v44 = MEMORY[0x28223BE20](v42, v43);
  v159 = (&v152 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = MEMORY[0x28223BE20](v44, v46);
  v158 = &v152 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v171 = &v152 - v51;
  MEMORY[0x28223BE20](v50, v52);
  v54 = &v152 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A348, &qword_2741D3D30);
  v57 = MEMORY[0x28223BE20](v55 - 8, v56);
  v177 = &v152 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v59);
  v192 = &v152 - v60;
  v61 = *(v35 + 28);
  v186 = a1;
  v62 = (a1 + v61);
  v64 = *v62;
  v63 = v62[1];
  v189 = v64;
  v204 = v64;
  v205 = v63;
  v188 = v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v66 = v202;
  swift_getKeyPath();
  v204 = v66;
  v187 = sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v67 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v66 + v67, v54, type metadata accessor for NetworkSettings);

  v68 = *&v54[*(v42 + 80)];
  sub_274138044(v54, type metadata accessor for NetworkSettings);
  v191 = v39;
  v164 = v13;
  v175 = v36;
  if ((v68 & 0x200) != 0)
  {
    v153 = v54;
    v168 = v65;
    v169 = v42;
    if (qword_280937798 != -1)
    {
      swift_once();
    }

    v200 = qword_280946678;
    v201 = unk_280946680;
    v72 = v186;
    v73 = v185;
    sub_274137EA4(v186, v185, type metadata accessor for NetworkDetailsView);
    sub_2741C80AC();

    v74 = sub_2741C809C();
    v75 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v74;
    v77 = MEMORY[0x277D85700];
    *(v76 + 24) = MEMORY[0x277D85700];
    sub_2741383D8(v73, v76 + v75, type metadata accessor for NetworkDetailsView);
    sub_274137EA4(v72, v73, type metadata accessor for NetworkDetailsView);
    v78 = sub_2741C809C();
    v79 = swift_allocObject();
    *(v79 + 16) = v78;
    *(v79 + 24) = v77;
    sub_2741383D8(v73, v79 + v75, type metadata accessor for NetworkDetailsView);
    sub_2741C7B2C();
    sub_2740A6A74();
    v80 = v176;
    sub_2741C7ADC();
    v71 = v190;
    v70 = v192;
    v81 = v80;
    v39 = v191;
    (*(v190 + 32))(v192, v81, v191);
    v69 = 0;
    v42 = v169;
    v65 = v168;
    v54 = v153;
  }

  else
  {
    v69 = 1;
    v70 = v192;
    v71 = v190;
  }

  (*(v71 + 56))(v70, v69, 1, v39);
  v82 = v189;
  v83 = v188;
  v202 = v189;
  v203 = v188;
  sub_2741C7A3C();
  v84 = v200;
  swift_getKeyPath();
  v202 = v84;
  sub_2741C6A0C();

  v85 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v84 + v85, v54, type metadata accessor for NetworkSettings);

  v86 = *&v54[*(v42 + 80)];
  sub_274138044(v54, type metadata accessor for NetworkSettings);
  if ((v86 & 0x400) == 0)
  {
    v200 = v82;
    v201 = v83;
    sub_2741C7A3C();
    v87 = v198;
    swift_getKeyPath();
    v200 = v87;
    sub_2741C6A0C();

    v88 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    v89 = v171;
    sub_274137EA4(v87 + v88, v171, type metadata accessor for NetworkSettings);

    v90 = *(v89 + 48);
    sub_274138044(v89, type metadata accessor for NetworkSettings);
    if (v90)
    {
      v91 = 1;
      v92 = v181;
      v93 = v172;
LABEL_22:
      (*(v173 + 56))(v93, v91, 1, v174);
      sub_2740A6D94(v93, v179, &qword_28093A330, &qword_2741D3D18);
      swift_storeEnumTagMultiPayload();
      sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0, MEMORY[0x277CDF068]);
      sub_274138D40();
      sub_2741C72CC();
      sub_27409D420(v93, &qword_28093A330, &qword_2741D3D18);
      goto LABEL_23;
    }

    v198 = v82;
    v199 = v83;
    sub_2741C7A3C();
    v105 = v196;
    swift_getKeyPath();
    v198 = v105;
    sub_2741C6A0C();

    v106 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    sub_274137EA4(v105 + v106, v54, type metadata accessor for NetworkSettings);

    v169 = v42;
    v107 = *&v54[*(v42 + 80)];
    sub_274138044(v54, type metadata accessor for NetworkSettings);
    v168 = v65;
    if ((v107 & 0x800) != 0)
    {
      v196 = v82;
      v197 = v83;
      sub_2741C7A3C();
      v108 = v193;
      swift_getKeyPath();
      v196 = v108;
      sub_2741C6A0C();

      v109 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
      swift_beginAccess();
      v110 = v108 + v109;
      v111 = v158;
      sub_274137EA4(v110, v158, type metadata accessor for NetworkSettings);

      v112 = *(v111 + 72);
      if (v112)
      {
        v113 = *(v111 + 64);

        sub_274138044(v111, type metadata accessor for NetworkSettings);
        v114 = sub_2741C70EC();
        v115 = v154;
        *v154 = v114;
        *(v115 + 8) = 0;
        *(v115 + 16) = 1;
        v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A380, &qword_2741D3D50);
        sub_27412FC2C(v113, v112, (v115 + *(v116 + 44)));

        sub_2740A6C18(v115, v170, &qword_28093A320, &qword_2741D3D08);
        v117 = 0;
LABEL_17:
        v118 = 1;
        (*(v160 + 56))(v170, v117, 1, v161);
        v119 = v189;
        v120 = v188;
        v196 = v189;
        v197 = v188;
        sub_2741C7A3C();
        v121 = v193;
        swift_getKeyPath();
        v196 = v121;
        sub_2741C6A0C();

        v122 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
        swift_beginAccess();
        sub_274137EA4(v121 + v122, v54, type metadata accessor for NetworkSettings);

        v123 = *&v54[*(v169 + 80)];
        sub_274138044(v54, type metadata accessor for NetworkSettings);
        v124 = v163;
        if ((v123 & 0x1000) != 0)
        {
          v193 = v119;
          v194 = v120;
          sub_2741C7A3C();
          v125 = v195;
          swift_getKeyPath();
          v193 = v125;
          sub_2741C6A0C();

          v126 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
          swift_beginAccess();
          v127 = v159;
          sub_274137EA4(v125 + v126, v159, type metadata accessor for NetworkSettings);

          if (v127[9])
          {
            v128 = v127[10];
            v129 = v127[11];

            sub_274138044(v127, type metadata accessor for NetworkSettings);
            v130 = sub_2741C70EC();
            v131 = v156;
            *v156 = v130;
            *(v131 + 8) = 0;
            *(v131 + 16) = 1;
            v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A370, &qword_2741D3D48);
            v133 = v186;
            sub_274130060(v186, v128, v129, (v131 + *(v132 + 44)));

            v134 = v133;
            v135 = v185;
            sub_274137EA4(v134, v185, type metadata accessor for NetworkDetailsView);
            v136 = (*(v175 + 80) + 16) & ~*(v175 + 80);
            v137 = swift_allocObject();
            sub_2741383D8(v135, v137 + v136, type metadata accessor for NetworkDetailsView);
            sub_2740A6D24(&qword_28093A378, &qword_28093A308, &qword_2741D3CF0, MEMORY[0x277CE1138]);
            v138 = v155;
            sub_2741C773C();

            sub_27409D420(v131, &qword_28093A308, &qword_2741D3CF0);
            (*(v166 + 32))(v167, v138, v124);
            v118 = 0;
          }

          else
          {
            sub_274138044(v127, type metadata accessor for NetworkSettings);
          }
        }

        v139 = v167;
        (*(v166 + 56))(v167, v118, 1, v124);
        v140 = v170;
        v141 = v162;
        sub_2740A6D94(v170, v162, &qword_28093A328, &qword_2741D3D10);
        v142 = v164;
        sub_2740A6D94(v139, v164, &qword_28093A318, &qword_2741D3D00);
        v143 = v165;
        sub_2740A6D94(v141, v165, &qword_28093A328, &qword_2741D3D10);
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A350, &qword_2741D3D38);
        sub_2740A6D94(v142, v143 + *(v144 + 48), &qword_28093A318, &qword_2741D3D00);
        sub_27409D420(v139, &qword_28093A318, &qword_2741D3D00);
        sub_27409D420(v140, &qword_28093A328, &qword_2741D3D10);
        sub_27409D420(v142, &qword_28093A318, &qword_2741D3D00);
        sub_27409D420(v141, &qword_28093A328, &qword_2741D3D10);
        v145 = v143;
        v93 = v172;
        sub_2740A6C18(v145, v172, &qword_28093A300, &qword_2741D3CE8);
        v91 = 0;
        v92 = v181;
        goto LABEL_22;
      }

      sub_274138044(v111, type metadata accessor for NetworkSettings);
    }

    v117 = 1;
    goto LABEL_17;
  }

  if (qword_2809377A0 != -1)
  {
    swift_once();
  }

  v198 = qword_280946688;
  v199 = unk_280946690;
  v94 = v186;
  v95 = v185;
  sub_274137EA4(v186, v185, type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();

  v96 = sub_2741C809C();
  v97 = (*(v175 + 80) + 32) & ~*(v175 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = v96;
  v99 = MEMORY[0x277D85700];
  *(v98 + 24) = MEMORY[0x277D85700];
  sub_2741383D8(v95, v98 + v97, type metadata accessor for NetworkDetailsView);
  sub_274137EA4(v94, v95, type metadata accessor for NetworkDetailsView);
  v100 = sub_2741C809C();
  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  *(v101 + 24) = v99;
  sub_2741383D8(v95, v101 + v97, type metadata accessor for NetworkDetailsView);
  sub_2741C7B2C();
  sub_2740A6A74();
  v102 = v176;
  sub_2741C7ADC();
  v103 = v190;
  v104 = v191;
  (*(v190 + 16))(v179, v102, v191);
  swift_storeEnumTagMultiPayload();
  sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0, MEMORY[0x277CDF068]);
  sub_274138D40();
  v92 = v181;
  sub_2741C72CC();
  (*(v103 + 8))(v102, v104);
LABEL_23:
  v146 = v183;
  v147 = v192;
  v148 = v177;
  sub_2740A6D94(v192, v177, &qword_28093A348, &qword_2741D3D30);
  v149 = v182;
  sub_2740A6D94(v92, v182, &qword_28093A340, &qword_2741D3D28);
  sub_2740A6D94(v148, v146, &qword_28093A348, &qword_2741D3D30);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A368, &qword_2741D3D40);
  sub_2740A6D94(v149, v146 + *(v150 + 48), &qword_28093A340, &qword_2741D3D28);
  sub_27409D420(v92, &qword_28093A340, &qword_2741D3D28);
  sub_27409D420(v147, &qword_28093A348, &qword_2741D3D30);
  sub_27409D420(v149, &qword_28093A340, &qword_2741D3D28);
  return sub_27409D420(v148, &qword_28093A348, &qword_2741D3D30);
}