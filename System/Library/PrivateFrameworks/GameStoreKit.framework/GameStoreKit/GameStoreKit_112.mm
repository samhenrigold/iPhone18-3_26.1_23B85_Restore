uint64_t type metadata accessor for UpsellBreakout(uint64_t a1)
{
  result = qword_27F23A7F0;
  if (!qword_27F23A7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F163144()
{
  result = qword_27F23A7E0;
  if (!qword_27F23A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A7E0);
  }

  return result;
}

uint64_t UpsellBreakout.buttonCallToAction.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t UpsellBreakout.displayProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v7[0] = *(v1 + 72);
  v7[1] = v2;
  v8 = *(v1 + 104);
  v3 = v8;
  v9 = *(v1 + 120);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_24F163240(v7, v6);
}

uint64_t UpsellBreakout.deinit()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  sub_24E6585F8(v0 + 136);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellBreakout_impressionMetrics);
  return v0;
}

uint64_t UpsellBreakout.__deallocating_deinit()
{
  UpsellBreakout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F1633D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_24F163430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for UpsellBreakout(0);
  v7 = swift_allocObject();
  result = UpsellBreakout.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1634B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

void sub_24F16350C(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24F1636C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 50))
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

uint64_t sub_24F163724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_24F163798(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  v4 = sub_24F9258D8();
  xmmword_27F39DB00 = xmmword_24F9B4980;
  qword_27F39DB10 = v1;
  unk_27F39DB18 = v3;
  result = 4.0;
  xmmword_27F39DB20 = xmmword_24F9CE8A0;
  unk_27F39DB30 = xmmword_24F9CE8B0;
  *&xmmword_27F39DB40 = 0x7FF0000000000000;
  *(&xmmword_27F39DB40 + 1) = v4;
  return result;
}

double sub_24F1637F8(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  v4 = sub_24F9258D8();
  xmmword_27F39DB50 = xmmword_24F9B4980;
  qword_27F39DB60 = v1;
  unk_27F39DB68 = v3;
  result = 4.0;
  xmmword_27F39DB70 = xmmword_24F9CE8C0;
  unk_27F39DB80 = xmmword_24F9CE8B0;
  *&xmmword_27F39DB90 = 0x4075E00000000000;
  *(&xmmword_27F39DB90 + 1) = v4;
  return result;
}

uint64_t sub_24F163868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F1638A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_24F1638F4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_24F163930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F163978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F1639F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F163B34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F163C84(uint64_t a1)
{
  sub_24F16C8E0(319, &qword_27F23A810, type metadata accessor for LocalPlayerProvider, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      sub_24F928FD8();
      if (v3 <= 0x3F)
      {
        sub_24E6D753C(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24F16C890(319, &qword_27F23A818, &type metadata for Player.ProfilePrivacyVisibilityLevel, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_24F16C890(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_24F16C8E0(319, &qword_27F22CC08, type metadata accessor for NicknameModel, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24E6D753C(319, &qword_27F22CC10, &unk_27F237670, &qword_24F989C80, MEMORY[0x277CE10B8]);
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
}

uint64_t sub_24F163ED0@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_24F921738();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E50, &qword_24F9842A0);
  MEMORY[0x28223BE20](v6 - 8);
  v18 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v17 = &v17 - v9;
  v10 = type metadata accessor for ProfileCreationView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_24F16CB4C(v1, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileCreationView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_24F16CA3C(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v13, type metadata accessor for ProfileCreationView);
  sub_24F16CB4C(v1, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileCreationView);
  v14 = swift_allocObject();
  sub_24F16CA3C(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ProfileCreationView);
  sub_24F921728();
  v15 = v17;
  sub_24F9271B8();
  (*(v3 + 8))(v5, v2);
  sub_24E60169C(v15, v18, &qword_27F228E50, &qword_24F9842A0);
  type metadata accessor for GKPlayerAgeCategory(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A820, &qword_24F9CEA28);
  sub_24F921AA8();
  sub_24F921A58();
  sub_24F16A2DC();
  sub_24F16C2C4(&qword_27F215638, MEMORY[0x277D7EBB0], MEMORY[0x277D7EBA8]);
  sub_24F16C2C4(&qword_27F215640, MEMORY[0x277D7EB90], MEMORY[0x277D7EB88]);
  sub_24F921D08();
  return sub_24E601704(v15, &qword_27F228E50, &qword_24F9842A0);
}

uint64_t sub_24F1642B8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_24F92B7F8();
  v1[4] = sub_24F92B7E8();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_24F164368;

  return sub_24F16451C();
}

uint64_t sub_24F164368(int a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F1644AC, v3, v2);
}

uint64_t sub_24F1644AC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F16451C()
{
  v1[6] = v0;
  sub_24F92B7F8();
  v1[7] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_24F1645B4, v3, v2);
}

uint64_t sub_24F1645B4()
{
  v1 = v0[6];
  v2 = type metadata accessor for ProfileCreationView(0);
  v0[10] = v2;
  v3 = (v1 + *(v2 + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_24F164670;

  return sub_24F16730C(v5, v4);
}

uint64_t sub_24F164670(int a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_24F164798, v4, v3);
}

uint64_t sub_24F164798()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);

  v4 = (v3 + *(v2 + 56));
  v5 = *v4;
  v6 = *(v4 + 1);
  if (v1 == 1)
  {
    *(v0 + 32) = v5;
    v7 = v0 + 32;
    *(v0 + 101) = 1;
  }

  else
  {
    *(v0 + 16) = v5;
    v7 = v0 + 16;
    *(v0 + 100) = 2;
  }

  *(v7 + 8) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A898, &unk_24F9CEB68);
  sub_24F926F48();
  v8 = *(v0 + 8);
  v9 = *(v0 + 96);

  return v8(v9);
}

uint64_t sub_24F164874@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v144 = a3;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A848, &qword_24F9CEA40);
  v5 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v137 = (&v123 - v6);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A850, &qword_24F9CEA48);
  MEMORY[0x28223BE20](v136);
  v8 = &v123 - v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A858, &qword_24F9CEA50);
  MEMORY[0x28223BE20](v141);
  v143 = &v123 - v9;
  v10 = type metadata accessor for ProfileCreationView(0);
  v139 = *(v10 - 1);
  v11 = *(v139 + 8);
  MEMORY[0x28223BE20](v10);
  v135 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v123 - v13;
  *&v134 = sub_24F928AD8();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A830, &unk_24F9CEA30);
  MEMORY[0x28223BE20](v146);
  v17 = &v123 - v16;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A860, &qword_24F9CEA58);
  v18 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v20 = &v123 - v19;
  LODWORD(object) = *a1;
  sub_24F0181F0(a2 + v10[10], &v157);
  if (v160)
  {
    v135 = *(&v157 + 1);
    *&v134 = v157;
    *(v8 + 40) = 0u;
    *(v8 + 7) = 0;
    *(v8 + 24) = 0u;
    *(v8 + 88) = 0u;
    *(v8 + 104) = 0u;
    *(v8 + 15) = 0;
    v132 = *(a2 + v10[11]);
    sub_24F16CB4C(a2, v14, type metadata accessor for ProfileCreationView);
    v21 = *(v139 + 80);
    v139 = v5;
    v22 = (v21 + 20) & ~v21;
    v23 = swift_allocObject();
    v133 = v23;
    v24 = object;
    *(v23 + 16) = object;
    sub_24F16CA3C(v14, v23 + v22, type metadata accessor for ProfileCreationView);
    sub_24F16CB4C(a2, v14, type metadata accessor for ProfileCreationView);
    v25 = swift_allocObject();
    sub_24F16CA3C(v14, v25 + ((v21 + 16) & ~v21), type metadata accessor for ProfileCreationView);
    sub_24F16CB4C(a2, v14, type metadata accessor for ProfileCreationView);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    sub_24F16CA3C(v14, v26 + v22, type metadata accessor for ProfileCreationView);
    v27 = v136;
    v28 = *(v136 + 136);
    v29 = type metadata accessor for HeaderPresentation(0);
    (*(*(v29 - 8) + 56))(&v8[v28], 1, 1, v29);
    v30 = &v8[v27[37]];
    LOBYTE(v149[0]) = 0;
    v31 = v132;

    sub_24F926F28();
    v32 = *(&v150 + 1);
    *v30 = v150;
    *(v30 + 1) = v32;
    v33 = &v8[v27[38]];
    LOBYTE(v149[0]) = 0;
    sub_24F926F28();
    v34 = *(&v150 + 1);
    *v33 = v150;
    *(v33 + 1) = v34;
    v35 = &v8[v27[39]];
    v149[0] = 0;
    sub_24F926F28();
    v36 = *(&v150 + 1);
    *v35 = v150;
    *(v35 + 1) = v36;
    v37 = v27[40];
    *&v8[v37] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v38 = v27[41];
    *&v8[v38] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v39 = v27[42];
    *&v8[v39] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v40 = &v8[v27[43]];
    v41 = sub_24F923398();
    *v40 = v41 & 1;
    *(v40 + 1) = v42;
    v40[16] = v43 & 1;
    *(v8 + 64) = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *v8 = 0;
    *(v8 + 9) = 0;
    *(v8 + 10) = 0;
    *(v8 + 8) = 0;
    *(v8 + 17) = v31;
    *(v8 + 18) = 0;
    *(v8 + 19) = 0;
    *(v8 + 20) = sub_24F16A490;
    *(v8 + 21) = v133;
    *(v8 + 22) = sub_24F16A494;
    *(v8 + 23) = v25;
    *(v8 + 24) = sub_24F16ADC0;
    *(v8 + 25) = v26;
    *(v8 + 26) = CGSizeMake;
    *(v8 + 27) = 0;
    v8[v27[35]] = 7;
    v8[v27[36]] = 0;
    MEMORY[0x28223BE20](v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A868, &qword_24F9CEAF8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A870, &qword_24F9CEB00);
    v45 = sub_24E602068(&qword_27F23A878, &qword_27F23A850, &qword_24F9CEA48, &unk_24F9651C8);
    v46 = sub_24E602068(&qword_27F23A880, &qword_27F23A870, &qword_24F9CEB00, MEMORY[0x277CDF028]);
    *&v150 = v27;
    *(&v150 + 1) = v44;
    v151 = v45;
    v152 = v46;
    swift_getOpaqueTypeConformance2();
    v47 = v137;
    sub_24F923C18();
    v48 = v139;
    v49 = v145;
    (*(v139 + 2))(v143, v47, v145);
    swift_storeEnumTagMultiPayload();
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225A28, &unk_24F9770A0);
    v51 = sub_24E602068(&qword_27F23A838, &qword_27F23A830, &unk_24F9CEA30, &unk_24F9651C8);
    v52 = sub_24E600AEC();
    v53 = sub_24E602068(&qword_27F228258, &qword_27F225A28, &unk_24F9770A0, MEMORY[0x277D7EB00]);
    *&v150 = v146;
    *(&v150 + 1) = MEMORY[0x277D837D0];
    v151 = v50;
    v152 = MEMORY[0x277CE0BD8];
    v153 = v51;
    v154 = v52;
    v155 = v53;
    v156 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F23A840, &qword_27F23A848, &qword_24F9CEA40, MEMORY[0x277CDD978]);
    sub_24F924E28();

    (*(v48 + 1))(v47, v49);
    return sub_24E601704(v8, &qword_27F23A850, &qword_24F9CEA48);
  }

  else
  {
    v130 = v158;
    v129 = v159;
    sub_24E612C80(&v157, v149);
    v128 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_24F93A400;
    v56 = (a2 + v10[16]);
    v138 = a2;
    v136 = v20;
    v58 = v56[1];
    *&v150 = *v56;
    v57 = v150;
    *(&v150 + 1) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8, &qword_24F992110);
    v137 = v18;
    sub_24F926F38();
    v127 = v14;
    countAndFlagsBits = v147._countAndFlagsBits;
    swift_getKeyPath();
    *&v150 = countAndFlagsBits;
    sub_24F16C2C4(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
    sub_24F91FD88();

    v60 = *(countAndFlagsBits + 64);
    v126 = *(countAndFlagsBits + 56);

    v147._countAndFlagsBits = v57;
    v147._object = v58;
    sub_24F926F58();
    v61 = v150;
    v62 = v151;
    swift_getKeyPath();
    v147 = v61;
    v148 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE0, &unk_24F992168);
    sub_24F927188();

    v123 = v150;
    v131 = v11;
    v63 = v151;
    v64 = v152;

    v65 = v132;
    sub_24F928A98();
    v66 = type metadata accessor for SetNicknameAction(0);
    *(v55 + 56) = v66;
    *(v55 + 64) = sub_24F16C2C4(&qword_27F216390, type metadata accessor for SetNicknameAction, &unk_24F994310);
    v125 = v55;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v55 + 32));
    *boxed_opaque_existential_1 = v126;
    boxed_opaque_existential_1[1] = v60;
    *(boxed_opaque_existential_1 + 1) = v123;
    boxed_opaque_existential_1[4] = v63;
    boxed_opaque_existential_1[5] = v64;
    *(boxed_opaque_existential_1 + 48) = 0;
    (*(v133 + 32))(boxed_opaque_existential_1 + *(v66 + 28), v65, v134);
    sub_24E615E00(v149, v55 + 72);
    v124 = v10;
    v68 = v138;
    v69 = v138 + v10[15];
    v71 = *(v69 + 8);
    LOBYTE(v147._countAndFlagsBits) = *v69;
    v70 = v147._countAndFlagsBits;
    v147._object = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F58();
    v72 = v150;
    LOBYTE(v55) = v151;
    v147 = *(v68 + v10[17]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8, &unk_24F9E63E0);
    sub_24F926F58();
    v134 = v150;
    v73 = v151;
    *(v17 + 6) = type metadata accessor for ProgressPerformAction(0);
    *(v17 + 7) = sub_24F16C2C4(&qword_27F2162F0, type metadata accessor for ProgressPerformAction, &unk_24F975958);
    v74 = __swift_allocate_boxed_opaque_existential_1(v17 + 3);
    sub_24F928A98();
    *v74 = v125;
    *(v74 + 1) = v72;
    *(v74 + 24) = v55;
    *(v74 + 2) = v134;
    v74[6] = v73;
    *(v17 + 15) = 0;
    *(v17 + 104) = 0u;
    *(v17 + 88) = 0u;
    LOBYTE(v150) = v70;
    *(&v150 + 1) = v71;
    sub_24F926F38();
    LODWORD(v134) = LOBYTE(v147._countAndFlagsBits);
    v75 = v138;
    v125 = *(v138 + v124[11]);
    v76 = v127;
    sub_24F16CB4C(v138, v127, type metadata accessor for ProfileCreationView);
    v77 = *(v139 + 80);
    v78 = (v77 + 20) & ~v77;
    v79 = swift_allocObject();
    v133 = v79;
    LODWORD(v71) = object;
    *(v79 + 16) = object;
    sub_24F16CA3C(v76, v79 + v78, type metadata accessor for ProfileCreationView);
    v126 = type metadata accessor for ProfileCreationView;
    sub_24F16CB4C(v75, v76, type metadata accessor for ProfileCreationView);
    v132 = swift_allocObject();
    v139 = type metadata accessor for ProfileCreationView;
    sub_24F16CA3C(v76, &v132[(v77 + 16) & ~v77], type metadata accessor for ProfileCreationView);
    v80 = v75;
    v81 = v135;
    sub_24F16CB4C(v80, v135, type metadata accessor for ProfileCreationView);
    v82 = swift_allocObject();
    *(v82 + 16) = v71;
    sub_24F16CA3C(v81, v82 + v78, type metadata accessor for ProfileCreationView);
    v83 = v146;
    v84 = *(v146 + 136);
    v85 = type metadata accessor for HeaderPresentation(0);
    (*(*(v85 - 8) + 56))(&v17[v84], 1, 1, v85);
    v86 = &v17[v83[37]];
    LOBYTE(v147._countAndFlagsBits) = 0;
    v87 = v125;

    sub_24F926F28();
    v88 = *(&v150 + 1);
    *v86 = v150;
    *(v86 + 1) = v88;
    v89 = &v17[v83[38]];
    LOBYTE(v147._countAndFlagsBits) = 0;
    sub_24F926F28();
    v90 = *(&v150 + 1);
    *v89 = v150;
    *(v89 + 1) = v90;
    v91 = &v17[v83[39]];
    v147._countAndFlagsBits = 0;
    sub_24F926F28();
    v92 = *(&v150 + 1);
    *v91 = v150;
    *(v91 + 1) = v92;
    v93 = v83[40];
    *&v17[v93] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v94 = v83[41];
    *&v17[v94] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v95 = v83[42];
    *&v17[v95] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v96 = &v17[v83[43]];
    *v96 = sub_24F923398() & 1;
    *(v96 + 1) = v97;
    v96[16] = v98 & 1;
    v99 = v129;
    *v17 = v130;
    *(v17 + 1) = v99;
    *(v17 + 2) = v128;
    v17[128] = 0;
    *(v17 + 9) = 0;
    *(v17 + 10) = 0;
    *(v17 + 8) = 0;
    v17[129] = v134;
    *(v17 + 17) = v87;
    *(v17 + 18) = 0;
    *(v17 + 19) = 0;
    *(v17 + 20) = sub_24F16D3BC;
    *(v17 + 21) = v133;
    *(v17 + 22) = sub_24F16AEE0;
    *(v17 + 23) = v132;
    *(v17 + 24) = sub_24F16AF50;
    *(v17 + 25) = v82;
    *(v17 + 26) = CGSizeMake;
    *(v17 + 27) = 0;
    v17[v83[35]] = 7;
    v17[v83[36]] = 0;
    v100._object = 0x800000024FA6DD30;
    v100._countAndFlagsBits = 0xD000000000000018;
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    v102 = localizedString(_:comment:)(v100, v101);
    object = v102._object;
    v147 = v102;
    v103 = v138;
    v104 = v126;
    sub_24F16CB4C(v138, v76, v126);
    sub_24F92B7F8();
    v105 = sub_24F92B7E8();
    v106 = (v77 + 32) & ~v77;
    v107 = swift_allocObject();
    v108 = MEMORY[0x277D85700];
    *(v107 + 16) = v105;
    *(v107 + 24) = v108;
    v109 = v107 + v106;
    v110 = v76;
    v111 = v76;
    v112 = v139;
    sub_24F16CA3C(v111, v109, v139);
    sub_24F16CB4C(v103, v110, v104);
    v113 = sub_24F92B7E8();
    v114 = swift_allocObject();
    *(v114 + 16) = v113;
    *(v114 + 24) = MEMORY[0x277D85700];
    sub_24F16CA3C(v110, v114 + v106, v112);
    v115 = sub_24F9271A8();
    v139 = &v123;
    MEMORY[0x28223BE20](v115);
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28, &unk_24F9770A0);
    v116 = sub_24E602068(&qword_27F23A838, &qword_27F23A830, &unk_24F9CEA30, &unk_24F9651C8);
    v117 = sub_24E600AEC();
    v122 = sub_24E602068(&qword_27F228258, &qword_27F225A28, &unk_24F9770A0, MEMORY[0x277D7EB00]);
    v118 = v146;
    v119 = v136;
    sub_24F926908();

    sub_24E601704(v17, &qword_27F23A830, &unk_24F9CEA30);
    v120 = v137;
    v121 = v142;
    v137[2](v143, v119, v142);
    swift_storeEnumTagMultiPayload();
    *&v150 = v118;
    *(&v150 + 1) = MEMORY[0x277D837D0];
    v151 = v138;
    v152 = MEMORY[0x277CE0BD8];
    v153 = v116;
    v154 = v117;
    v155 = v122;
    v156 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F23A840, &qword_27F23A848, &qword_24F9CEA40, MEMORY[0x277CDD978]);
    sub_24F924E28();
    v120[1](v119, v121);
    return __swift_destroy_boxed_opaque_existential_1(v149);
  }
}

void *sub_24F165E50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[3];
  v17 = a1[2];
  v18 = *a1;
  v5 = a1[9];
  *&v26[0] = a1[8];
  *(&v26[0] + 1) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A890, &qword_24F9CEB60);
  sub_24F926F38();
  v6 = *v19;
  v7 = objc_opt_self();
  result = [v7 shared];
  if (result)
  {
    v9 = result;
    v10 = [result isAccountModificationRestricted];

    v11 = 1;
    if (v10)
    {
LABEL_7:
      sub_24F16B9F8(v25);
      v23 = v25[3];
      v24 = v25[4];
      v21 = v25[1];
      v22 = v25[2];
      v20 = v25[0];
      sub_24EC8C9B0(v25, v26);
      *&v19[23] = v21;
      *&v19[39] = v22;
      *&v19[55] = v23;
      *&v19[71] = v24;
      *&v19[7] = v20;
      sub_24F9275F8();
      result = sub_24F9242E8();
      *a2 = v18;
      *(a2 + 8) = v3;
      *(a2 + 16) = v17;
      *(a2 + 24) = v4;
      *(a2 + 32) = v6;
      *(a2 + 40) = v11;
      *(a2 + 73) = *&v19[32];
      *(a2 + 89) = *&v19[48];
      *(a2 + 105) = *&v19[64];
      *(a2 + 120) = v24.n128_u64[1];
      *(a2 + 41) = *v19;
      *(a2 + 57) = *&v19[16];
      v14 = v26[5];
      *(a2 + 192) = v26[4];
      *(a2 + 208) = v14;
      *(a2 + 224) = v26[6];
      v15 = v26[1];
      *(a2 + 128) = v26[0];
      *(a2 + 144) = v15;
      v16 = v26[3];
      *(a2 + 160) = v26[2];
      *(a2 + 176) = v16;
      return result;
    }

    result = [v7 shared];
    if (result)
    {
      v12 = result;
      v13 = [result isProfileModificationRestricted];

      if (v13)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_24F166070@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[5];
  v6 = a2[7];
  v17 = a2[6];
  v18 = a2[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A890, &qword_24F9CEB60);
  sub_24F926F38();
  v21 = *(a2 + *(type metadata accessor for ProfileCreationView(0) + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8, &qword_24F992110);
  sub_24F926F38();
  v7 = objc_opt_self();
  result = [v7 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = [result isAccountModificationRestricted];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    result = [v7 shared];
    if (!result)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v12 = result;
    v11 = [result isProfileModificationRestricted];
  }

  result = [v7 shared];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  v14 = [result isAccountModificationRestricted];

  v15 = 1;
  if (v14)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A898, &unk_24F9CEB68);
    sub_24F926F58();
    sub_24F9275F8();
    result = sub_24F9242E8();
    *(a3 + 136) = v24;
    *(a3 + 152) = v25;
    *(a3 + 168) = v26;
    *(a3 + 184) = v27;
    *(a3 + 88) = v21;
    *(a3 + 104) = v22;
    *a3 = a1;
    *(a3 + 8) = v18;
    *(a3 + 16) = v5;
    *(a3 + 24) = v17;
    *(a3 + 32) = v6;
    *(a3 + 40) = v20;
    *(a3 + 48) = v20;
    *(a3 + 56) = v11;
    *(a3 + 57) = v15;
    *(a3 + 64) = v21;
    *(a3 + 80) = v22;
    *(a3 + 120) = v23;
    return result;
  }

  result = [v7 shared];
  if (result)
  {
    v16 = result;
    v15 = [result isProfilePrivacyModificationRestricted];

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_24F16632C(uint64_t a1@<X2>, char *a2@<X8>)
{
  v11 = *(a1 + *(type metadata accessor for ProfileCreationView(0) + 68));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8, &unk_24F9E63E0);
  sub_24F926F38();
  if (v13 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0), swift_dynamicCast()) && v12 == 1 && v11 >= 6)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E8E0);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BDB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_24F16B9A4();
      swift_allocError();
      *v9 = v11;
      v3 = 1;
      *(v9 + 16) = 1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_24E5DD000, v5, v6, "Nickname change failed due to a server error. An alert will be presented and the user will be allowed to continue. Error: %@", v7, 0xCu);
      sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v8, -1, -1);
      MEMORY[0x2530542D0](v7, -1, -1);
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

  *a2 = v3;
}

uint64_t sub_24F166540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProfileCreationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8, &unk_24F9E63E0);
  return sub_24F926F48();
}

uint64_t sub_24F1665A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-v6];
  v8._object = 0x800000024FA580D0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = localizedString(_:comment:)(v8, v9);
  v11 = sub_24F9232F8();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_24E615E00(a1, v14);
  sub_24E60169C(v7, v4, &unk_27F254FA0, &unk_24F945290);
  sub_24E60169C(v14, v13, qword_27F21B590, &unk_24F93BE30);
  *(swift_allocObject() + 16) = v10;
  sub_24F921788();
  sub_24E601704(v14, qword_27F21B590, &unk_24F93BE30);
  return sub_24E601704(v7, &unk_27F254FA0, &unk_24F945290);
}

uint64_t sub_24F166788@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000024FA6DD50;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

id sub_24F166800@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  sub_24E60169C(a1, &v48 - v8, &qword_27F220F50, &qword_24F965290);
  v10 = a3[1];
  v51 = *a3;
  v11 = a3[3];
  v52 = a3[2];
  v12 = a3[5];
  v54 = a3[4];
  v13 = a3[7];
  v56 = a3[6];
  v14 = a3[9];
  *&v63[0] = a3[8];
  *(&v63[0] + 1) = v14;

  v53 = v11;

  v55 = v12;

  v57 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A890, &qword_24F9CEB60);
  sub_24F926F38();
  v50 = v59[0];
  v15 = type metadata accessor for ProfileCreationView(0);
  v16 = (a3 + *(v15 + 64));
  v18 = *v16;
  v17 = v16[1];
  *&v63[0] = v18;
  *(&v63[0] + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8, &qword_24F992110);
  sub_24F926F38();
  v49 = v59[0];
  v19 = objc_opt_self();
  result = [v19 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = result;
  v22 = [result isAccountModificationRestricted];

  if (v22)
  {
    v23 = 1;
  }

  else
  {
    result = [v19 shared];
    if (!result)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v24 = result;
    v23 = [result isProfileModificationRestricted];
  }

  result = [v19 shared];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = result;
  v26 = [result isAccountModificationRestricted];

  if (v26)
  {
    v27 = 1;
LABEL_11:
    sub_24F16B9F8(v63);
    v29 = a3 + *(v15 + 56);
    v30 = *v29;
    v31 = *(v29 + 1);
    v61 = v30;
    v62 = v31;
    sub_24EC8C9B0(v63, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A898, &unk_24F9CEB68);
    sub_24F926F58();
    v32 = v59[0];
    v33 = v59[1];
    v34 = v60;
    sub_24E6009C8(v9, a4, &qword_27F220F50, &qword_24F965290);
    v35 = type metadata accessor for SingleColumnView(0);
    *(a4 + v35[5]) = v58;
    v36 = (a4 + v35[6]);
    *v36 = v51;
    v36[1] = v10;
    v37 = (a4 + v35[7]);
    v38 = v53;
    *v37 = v52;
    v37[1] = v38;
    v39 = (a4 + v35[8]);
    v40 = v55;
    *v39 = v54;
    v39[1] = v40;
    v41 = (a4 + v35[9]);
    v42 = v57;
    *v41 = v56;
    v41[1] = v42;
    *(a4 + v35[10]) = v50;
    *(a4 + v35[11]) = v49;
    *(a4 + v35[12]) = v23;
    *(a4 + v35[13]) = v27;
    v43 = (a4 + v35[14]);
    v44 = v63[3];
    v43[2] = v63[2];
    v43[3] = v44;
    v43[4] = v63[4];
    v45 = v63[1];
    *v43 = v63[0];
    v43[1] = v45;
    v46 = a4 + v35[15];
    *v46 = v32;
    *(v46 + 8) = v33;
    *(v46 + 16) = v34;
    v47 = v35[16];
    *(a4 + v47) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    return swift_storeEnumTagMultiPayload();
  }

  result = [v19 shared];
  if (result)
  {
    v28 = result;
    v27 = [result isProfilePrivacyModificationRestricted];

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_24F166C38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v19 = *a1;
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[9];
  *v21 = a1[8];
  *&v21[8] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A890, &qword_24F9CEB60);
  sub_24F926F38();
  v7 = *&v22[0];
  v8 = objc_opt_self();
  result = [v8 shared];
  if (result)
  {
    v10 = result;
    v11 = [result isAccountModificationRestricted];

    if (v11)
    {
      v12 = 1;
LABEL_8:
      sub_24F16B9F8(v22);
      *&v21[7] = v22[0];
      *&v21[23] = v22[1];
      *&v21[71] = v22[4];
      *&v21[55] = v22[3];
      *&v21[39] = v22[2];
      *a2 = v19;
      *(a2 + 8) = v3;
      *(a2 + 16) = v5;
      *(a2 + 24) = v4;
      *(a2 + 32) = v7;
      *(a2 + 40) = v12;
      v15 = *v21;
      *(a2 + 57) = *&v21[16];
      *(a2 + 41) = v15;
      v16 = *&v21[32];
      v17 = *&v21[48];
      v18 = *&v21[64];
      *(a2 + 120) = *&v21[79];
      *(a2 + 105) = v18;
      *(a2 + 89) = v17;
      *(a2 + 73) = v16;
      return sub_24EC8C9B0(v22, v20);
    }

    result = [v8 shared];
    if (result)
    {
      v13 = result;
      v14 = [result isProfileModificationRestricted];

      if (v14)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_24F166DDC@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[5];
  v6 = a2[7];
  v19 = a2[6];
  v20 = a2[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A890, &qword_24F9CEB60);
  sub_24F926F38();
  v7 = (a2 + *(type metadata accessor for ProfileCreationView(0) + 64));
  v22 = *v7;
  v23 = v7[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8, &qword_24F992110);
  sub_24F926F38();
  v8 = objc_opt_self();
  result = [v8 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  v11 = [result isAccountModificationRestricted];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    result = [v8 shared];
    if (!result)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v13 = result;
    v12 = [result isProfileModificationRestricted];
  }

  result = [v8 shared];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v15 = [result isAccountModificationRestricted];

  if (v15)
  {
    v16 = 1;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A898, &unk_24F9CEB68);
    result = sub_24F926F58();
    *a3 = a1;
    *(a3 + 8) = v20;
    *(a3 + 16) = v5;
    *(a3 + 24) = v19;
    *(a3 + 32) = v6;
    *(a3 + 40) = v25;
    *(a3 + 48) = v18;
    *(a3 + 56) = v12;
    *(a3 + 57) = v16;
    *(a3 + 64) = v22;
    *(a3 + 72) = v23;
    *(a3 + 80) = v24;
    return result;
  }

  result = [v8 shared];
  if (result)
  {
    v17 = result;
    v16 = [result isProfilePrivacyModificationRestricted];

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24F167028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A850, &qword_24F9CEA48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A870, &qword_24F9CEB00);
  sub_24E602068(&qword_27F23A878, &qword_27F23A850, &qword_24F9CEA48, &unk_24F9651C8);
  sub_24E602068(&qword_27F23A880, &qword_27F23A870, &qword_24F9CEB00, MEMORY[0x277CDF028]);
  return sub_24F926A68();
}

uint64_t sub_24F167134(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  swift_getOpaqueTypeConformance2();
  return sub_24F926F88();
}

uint64_t sub_24F16721C()
{
  if (qword_27F2116A8 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  v0 = sub_24F925E18();
  v2 = v1;
  v4 = v3 & 1;
  sub_24F9268B8();
  sub_24E600B40(v0, v2, v4);
}

uint64_t sub_24F16730C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_24F92B7F8();
  v2[20] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_24F1673A4, v4, v3);
}

uint64_t sub_24F1673A4()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 accountServicePrivate];
  v0[23] = v2;

  v3 = sub_24F92B098();
  v0[24] = v3;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_24F16752C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229BE0, &unk_24F9866B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24F1676B4;
  v0[13] = &block_descriptor_122;
  v0[14] = v4;
  [v2 getAccountAgeCategoryForPlayerID:v3 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F16752C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_24F167634, v2, v1);
}

uint64_t sub_24F167634()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 200);
  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24F1676B4(uint64_t a1, int a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_24F167718(uint64_t a1)
{
  type metadata accessor for ProfileCreationView(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return sub_24F1642B8(a1);
}

uint64_t objectdestroyTm_54()
{
  v1 = type metadata accessor for ProfileCreationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + v1[9];

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v37 = *(v7 - 8);
  v38 = v7;
  v36 = *(v37 + 8);
  v36(v4 + v6);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v8 = v4 + v5[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for CallProviderConversationHandle(0);
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v37 + 48))(v8 + v12, 1, v38))
      {
        (v36)(v8 + v12, v38);
      }
    }

    v13 = v8 + *(v9 + 20);
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v37 + 48))(v13 + v14, 1, v38))
      {
        (v36)(v13 + v14, v38);
      }
    }
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v15 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {

    v17 = type metadata accessor for Game(0);
    (v36)(v15 + v17[18], v38);
    v18 = v17[19];
    if (!(*(v37 + 48))(v15 + v18, 1, v38))
    {
      (v36)(v15 + v18, v38);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v15 + v19, 1, v20))
    {
      (*(v21 + 8))(v15 + v19, v20);
    }
  }

  v22 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game(0);
    (v36)(v22 + v24[18], v38);
    v25 = v24[19];
    if (!(*(v37 + 48))(v22 + v25, 1, v38))
    {
      (v36)(v22 + v25, v38);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }
  }

  if (*(v3 + v1[10] + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + v1[10]));
  }

  v29 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_24F925218();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v3 + v29, 1, v30))
    {
      (*(v31 + 8))(v3 + v29, v30);
    }
  }

  else
  {
  }

  v32 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = sub_24F925218();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v32, 1, v33))
    {
      (*(v34 + 8))(v3 + v32, v33);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F1680B0@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F164874(a1, v6, a2);
}

void *sub_24F168130@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SingleColumnView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v14 = sub_24F924C88();
  v18 = 0;
  sub_24F168370(v1, v16);
  memcpy(v19, v16, 0x1B1uLL);
  memcpy(v20, v16, 0x1B1uLL);
  sub_24E60169C(v19, &v15, &qword_27F23A900, &qword_24F9CEF20);
  sub_24E601704(v20, &qword_27F23A900, &qword_24F9CEF20);
  memcpy(&v17[7], v19, 0x1B1uLL);
  v7 = v18;
  v8 = [objc_opt_self() defaultCenter];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A908, &qword_24F9CEF28);
  sub_24F92C0F8();

  sub_24F16CB4C(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleColumnView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_24F16CA3C(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SingleColumnView);
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  result = memcpy((a1 + 17), v17, 0x1B8uLL);
  v13 = (a1 + *(v9 + 56));
  *v13 = sub_24F16CDC4;
  v13[1] = v11;
  return result;
}

uint64_t sub_24F168370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for SingleColumnView(0);
  v4 = (a1 + v3[6]);
  v5 = v4[1];
  v48 = *v4;
  v6 = (a1 + v3[7]);
  v7 = *(a1 + v3[10]);
  v8 = v6[1];
  *&v47 = *v6;
  v46 = *(a1 + v3[12]);
  v9 = (a1 + v3[14]);
  v10 = v9[3];
  v108 = v9[4];
  v11 = v9[1];
  v105[0] = *v9;
  v105[1] = v11;
  v106 = v9[2];
  v107 = v10;
  *&v109[7] = v105[0];
  *&v109[71] = v108;
  *&v109[55] = v10;
  *&v109[39] = v106;
  *&v109[23] = v11;
  v44 = v7;
  swift_retain_n();
  v12 = v5;

  *(&v47 + 1) = v8;

  sub_24EC8C9B0(v105, &v79);
  v45 = sub_24F925818();
  sub_24F923318();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v43 = v19;
  v110 = 0;
  LODWORD(v8) = *(a1 + v3[5]);
  v20 = v3[9];
  v21 = (a1 + v3[8]);
  v22 = v21[1];
  v41 = *v21;
  v23 = *(a1 + v3[11]);
  v24 = *(a1 + v20 + 8);
  v39 = *(a1 + v20);
  v40 = *(a1 + v3[13]);
  v25 = (a1 + v3[15]);
  v26 = *v25;
  v27 = v25[1];
  LOBYTE(v25) = *(v25 + 16);
  v79 = v26;
  v80 = v27;
  LOBYTE(v81) = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8, &qword_24F9CEEE0);
  sub_24F927198();
  v28 = v70;
  v29 = v71;
  LOBYTE(v5) = sub_24F925818();
  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v103 = 0;
  sub_24F927618();
  sub_24F9242E8();
  *&v104[55] = v114;
  *&v104[71] = v115;
  *&v104[87] = v116;
  *&v104[103] = v117;
  *&v104[7] = v111;
  *&v104[23] = v112;
  *&v104[39] = v113;
  *&v66[0] = v48;
  *(&v66[0] + 1) = v12;
  v66[1] = v47;
  *v67 = v44;
  v67[8] = v46;
  *&v67[25] = *&v109[16];
  *&v67[9] = *v109;
  *&v67[88] = *&v109[79];
  *&v67[73] = *&v109[64];
  *&v67[57] = *&v109[48];
  *&v67[41] = *&v109[32];
  LOBYTE(v68) = v45;
  *(&v68 + 1) = v14;
  *v69 = v16;
  *&v69[8] = v18;
  *&v69[16] = v43;
  v69[24] = 0;
  __src[0] = v66[0];
  __src[1] = v47;
  __src[4] = *&v67[32];
  __src[5] = *&v67[48];
  __src[2] = *v67;
  __src[3] = *&v67[16];
  *(&__src[9] + 9) = *&v69[9];
  __src[8] = v68;
  __src[9] = *v69;
  __src[6] = *&v67[64];
  __src[7] = *&v67[80];
  LODWORD(v70) = v8;
  *(&v70 + 1) = v41;
  *&v71 = v22;
  *(&v71 + 1) = v39;
  *&v72 = v24;
  *(&v72 + 1) = v44;
  *&v73 = v23;
  BYTE8(v73) = v46;
  BYTE9(v73) = v40;
  v74 = v28;
  LOBYTE(v75) = v29;
  BYTE8(v75) = v5;
  *&v76 = v31;
  *(&v76 + 1) = v33;
  *&v77 = v35;
  *(&v77 + 1) = v37;
  v78[0] = 0;
  *&v78[49] = *&v104[48];
  *&v78[33] = *&v104[32];
  *&v78[17] = *&v104[16];
  *&v78[1] = *v104;
  *&v78[112] = *(&v117 + 1);
  *&v78[97] = *&v104[96];
  *&v78[81] = *&v104[80];
  *&v78[65] = *&v104[64];
  __src[13] = v72;
  __src[14] = v73;
  __src[11] = v70;
  __src[12] = v71;
  __src[17] = v76;
  __src[18] = v77;
  __src[15] = v28;
  __src[16] = v75;
  __src[21] = *&v78[32];
  __src[22] = *&v78[48];
  __src[19] = *v78;
  __src[20] = *&v78[16];
  *&__src[26] = *&v78[112];
  __src[24] = *&v78[80];
  __src[25] = *&v78[96];
  __src[23] = *&v78[64];
  v64 = 0;
  memcpy(a2, __src, 0x1A8uLL);
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  LODWORD(v79) = v8;
  v80 = v41;
  v81 = v22;
  v82 = v39;
  v83 = v24;
  v84 = v44;
  v85 = v23;
  v86 = v46;
  v87 = v40;
  v88 = v28;
  v89 = v29;
  v90 = v5;
  v91 = v31;
  v92 = v33;
  v93 = v35;
  v94 = v37;
  v95 = 0;
  v100 = *&v104[64];
  v101 = *&v104[80];
  *v102 = *&v104[96];
  *&v102[15] = *&v104[111];
  v96 = *v104;
  v97 = *&v104[16];
  v98 = *&v104[32];
  v99 = *&v104[48];
  sub_24E60169C(v66, v49, &qword_27F23A910, &qword_24F9CEF48);
  sub_24E60169C(&v70, v49, &qword_27F23A918, &unk_24F9CEF50);
  sub_24E601704(&v79, &qword_27F23A918, &unk_24F9CEF50);
  v55 = *&v109[32];
  v56 = *&v109[48];
  *v57 = *&v109[64];
  v53 = *v109;
  v49[0] = v48;
  v49[1] = v12;
  v50 = v47;
  v51 = v44;
  v52 = v46;
  *&v57[15] = *&v109[79];
  v54 = *&v109[16];
  v58 = v45;
  v59 = v14;
  v60 = v16;
  v61 = v18;
  v62 = v43;
  v63 = 0;
  return sub_24E601704(v49, &qword_27F23A910, &qword_24F9CEF48);
}

double sub_24F16899C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SingleColumnView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_24F16CB4C(a2, v6, type metadata accessor for SingleColumnView);
  sub_24F92B7F8();
  v11 = sub_24F92B7E8();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_24F16CA3C(v6, v13 + v12, type metadata accessor for SingleColumnView);
  sub_24EA9A1C4(0, 0, v9, &unk_24F9CEF38, v13);

  return result;
}

uint64_t sub_24F168B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_24F92B7F8();
  v4[4] = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F168C14, v6, v5);
}

uint64_t sub_24F168C14()
{
  v1 = *(v0 + 24);

  *(swift_task_alloc() + 16) = v1;
  sub_24F9276F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C00, &qword_24F9CEF40);
  sub_24F923B18();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F168CF0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  sub_24E60169C(a1, v11 - v5, &qword_27F220F50, &qword_24F965290);
  v7 = sub_24F924098();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  if (v9 == 1)
  {
    result = sub_24E601704(v6, &qword_27F220F50, &qword_24F965290);
  }

  else
  {
    v11[0] = 0xD000000000000020;
    v11[1] = 0x800000024FA589F0;
    sub_24F924088();
    result = (*(v8 + 8))(v6, v7);
  }

  *a2 = v9 == 1;
  return result;
}

uint64_t sub_24F168E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v63 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v66);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD88, &qword_24F9923D8) - 8;
  MEMORY[0x28223BE20](v71);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - v13;
  v70 = sub_24F924C98();
  v15 = *(a1 + 4);
  v16 = *(a1 + 6);
  v113 = *(a1 + 5);
  v114 = v16;
  v17 = *(a1 + 6);
  v115 = *(a1 + 7);
  v122 = v16;
  v123 = v115;
  v18 = *(a1 + 4);
  v112[0] = *(a1 + 3);
  v112[1] = v18;
  v111 = 0;
  v19 = *a1;
  v20 = a1[1];
  v67 = v113;
  v68 = v19;
  v74 = v20;
  v21 = a1[2];
  v22 = a1[3];
  v119 = v112[0];
  v120 = v18;
  v121 = v113;
  *&v116[0] = v21;
  *(&v116[0] + 1) = v22;
  v116[3] = v113;
  v116[4] = v17;
  v116[1] = v112[0];
  v116[2] = v15;
  v117 = *(a1 + 7);
  v86 = v17;
  v87 = v117;
  v84 = v15;
  v85 = v113;
  v82 = v116[0];
  v83 = v112[0];
  v118[0] = v21;
  v118[1] = v22;

  sub_24EC8C9B0(v112, &v92);

  sub_24F16CAA4(v116, &v92);
  sub_24F16CADC(v118);

  v73 = v111;
  sub_24F927628();
  sub_24F9242E8();
  v23 = *(&v113 + 1);
  v64 = a1[4];
  v65 = *(a1 + 40);
  v24 = type metadata accessor for AvatarSection(0);
  v25 = v24[7];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60, &unk_24F9CEF00);
  (*(*(v26 - 8) + 56))(&v14[v25], 1, 1, v26);
  v27 = &v14[v24[8]];
  LOBYTE(v89) = 0;

  sub_24F926F28();
  v28 = v93;
  *v27 = v92;
  *(v27 + 1) = v28;
  v29 = sub_24F9289E8();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_24E60169C(v10, v7, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24F926F28();
  sub_24E601704(v10, &qword_27F213FB0, &qword_24F93E6B0);
  v30 = &v14[v24[10]];
  *v30 = swift_getKeyPath();
  v30[40] = 0;
  v31 = v24[11];
  *&v14[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v32 = &v14[v24[12]];
  LOBYTE(v89) = 0;
  sub_24F926F28();
  v33 = v93;
  *v32 = v92;
  *(v32 + 1) = v33;
  *v14 = v23;
  v34 = v64;
  *(v14 + 1) = v64;
  v35 = sub_24F92B858();
  v36 = v69;
  (*(*(v35 - 8) + 56))(v69, 1, 1, v35);
  sub_24F92B7F8();

  v37 = sub_24F92B7E8();
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D85700];
  v38[2] = v37;
  v38[3] = v39;
  v38[4] = v34;
  sub_24EA998B8(0, 0, v36, &unk_24F9923E0, v38);

  v14[16] = v65;
  LOBYTE(v37) = sub_24F925818();
  sub_24F923318();
  v40 = v72;
  v41 = &v14[*(v71 + 44)];
  *v41 = v37;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  sub_24E60169C(v14, v40, &qword_27F22CD88, &qword_24F9923D8);
  v46 = v70;
  v47 = v67;
  v48 = v68;
  *&v89 = v70;
  *(&v89 + 1) = v67;
  LOBYTE(v90) = v73;
  *(&v90 + 1) = *v88;
  DWORD1(v90) = *&v88[3];
  *(&v90 + 1) = v68;
  *v91 = v74;
  *&v91[40] = v84;
  *&v91[56] = v85;
  *&v91[72] = v86;
  *&v91[88] = v87;
  *&v91[8] = v82;
  *&v91[24] = v83;
  *&v91[136] = v77;
  *&v91[120] = v76;
  *&v91[104] = v75;
  *&v91[200] = v81;
  *&v91[184] = v80;
  *&v91[168] = v79;
  *&v91[152] = v78;
  v49 = v89;
  v50 = v90;
  v51 = *&v91[16];
  *(a2 + 32) = *v91;
  *(a2 + 48) = v51;
  *a2 = v49;
  *(a2 + 16) = v50;
  v52 = *&v91[32];
  v53 = *&v91[48];
  v54 = *&v91[80];
  *(a2 + 96) = *&v91[64];
  *(a2 + 112) = v54;
  *(a2 + 64) = v52;
  *(a2 + 80) = v53;
  v55 = *&v91[96];
  v56 = *&v91[112];
  v57 = *&v91[144];
  *(a2 + 160) = *&v91[128];
  *(a2 + 176) = v57;
  *(a2 + 128) = v55;
  *(a2 + 144) = v56;
  v58 = *&v91[160];
  v59 = *&v91[176];
  v60 = *&v91[192];
  *(a2 + 240) = *&v91[208];
  *(a2 + 208) = v59;
  *(a2 + 224) = v60;
  *(a2 + 192) = v58;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8F0, &qword_24F9CEF10);
  sub_24E60169C(v40, a2 + *(v61 + 48), &qword_27F22CD88, &qword_24F9923D8);
  sub_24E60169C(&v89, &v92, &qword_27F23A8F8, &qword_24F9CEF18);
  sub_24E601704(v14, &qword_27F22CD88, &qword_24F9923D8);
  sub_24E601704(v40, &qword_27F22CD88, &qword_24F9923D8);
  v100 = v84;
  v101 = v85;
  v102 = v86;
  v103 = v87;
  v98 = v82;
  v99 = v83;
  v107 = v78;
  v108 = v79;
  v109 = v80;
  v110 = v81;
  v104 = v75;
  v105 = v76;
  v92 = v46;
  v93 = v47;
  v94 = v73;
  *v95 = *v88;
  *&v95[3] = *&v88[3];
  v96 = v48;
  v97 = v74;
  v106 = v77;
  return sub_24E601704(&v92, &qword_27F23A8F8, &qword_24F9CEF18);
}

uint64_t sub_24F1695DC@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[5];
  v10[4] = v2[4];
  v10[5] = v4;
  v5 = v2[7];
  v10[6] = v2[6];
  v10[7] = v5;
  v6 = v2[1];
  v10[0] = *v2;
  v10[1] = v6;
  v7 = v2[3];
  v10[2] = v2[2];
  v10[3] = v7;
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8E8, &unk_24F9CEEF0);
  return sub_24F168E80(v10, a2 + *(v8 + 44));
}

uint64_t sub_24F169654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v55 = type metadata accessor for ActivitySharingSection(0);
  MEMORY[0x28223BE20](v55);
  v4 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D0, &qword_24F9CEE68);
  MEMORY[0x28223BE20](v56);
  v60 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v57 = &v50[-v7];
  MEMORY[0x28223BE20](v8);
  v59 = &v50[-v9];
  v10 = type metadata accessor for NicknameSection(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD10, &qword_24F9CEE70) - 8;
  MEMORY[0x28223BE20](v53);
  v58 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v52 = &v50[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v50[-v18];
  v51 = *(a1 + 56);
  *v13 = swift_getKeyPath();
  v13[40] = 0;
  v20 = v11[7];
  *&v13[v20] = swift_getKeyPath();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NicknameModel(0);
  sub_24F16C2C4(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);

  v21 = v19;
  sub_24F927378();
  v13[v11[9]] = v51;
  v22 = &v13[v11[10]];
  LOBYTE(v64) = 0;
  sub_24F926F28();
  v23 = *(&v71 + 1);
  *v22 = v71;
  *(v22 + 1) = v23;
  sub_24F927628();
  sub_24F9242E8();
  v24 = v13;
  v25 = v52;
  sub_24F16CA3C(v24, v52, type metadata accessor for NicknameSection);
  v26 = &v25[*(v53 + 44)];
  v27 = v69;
  v26[4] = v68;
  v26[5] = v27;
  v26[6] = v70;
  v28 = v65;
  *v26 = v64;
  v26[1] = v28;
  v29 = v67;
  v26[2] = v66;
  v26[3] = v29;
  sub_24E6009C8(v25, v19, &qword_27F22CD10, &qword_24F9CEE70);
  LODWORD(v20) = *a1;
  v30 = *(a1 + 8);
  v78 = *(a1 + 24);
  v79 = v30;
  LOBYTE(v11) = *(a1 + 57);
  v71 = *(a1 + 64);
  LOBYTE(v72) = *(a1 + 80);
  sub_24E614DB0(&v79, v62);
  sub_24E614DB0(&v78, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8, &qword_24F9CEEE0);
  sub_24F927198();
  v31 = v62[0];
  v32 = v62[1];
  v33 = v63;
  *v4 = v20;
  v34 = v78;
  *(v4 + 8) = v79;
  *(v4 + 24) = v34;
  v4[40] = v11;
  if (qword_27F211138 != -1)
  {
    swift_once();
  }

  v35 = qword_27F39E3D0;
  v36 = unk_27F39E3D8;
  *(v4 + 3) = xmmword_27F39E3C0;
  *(v4 + 8) = v35;
  *(v4 + 9) = v36;
  *(v4 + 10) = v31;
  *(v4 + 11) = v32;
  v4[96] = v33;
  LOBYTE(v62[0]) = 0;

  sub_24F926F28();
  v37 = *(&v71 + 1);
  v4[104] = v71;
  *(v4 + 14) = v37;
  *(v4 + 15) = swift_getKeyPath();
  v4[160] = 0;
  v38 = *(v55 + 48);
  *&v4[v38] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_24F927628();
  sub_24F9242E8();
  v39 = v57;
  sub_24F16CA3C(v4, v57, type metadata accessor for ActivitySharingSection);
  v40 = &v39[*(v56 + 36)];
  v41 = v76;
  v40[4] = v75;
  v40[5] = v41;
  v40[6] = v77;
  v42 = v72;
  *v40 = v71;
  v40[1] = v42;
  v43 = v74;
  v40[2] = v73;
  v40[3] = v43;
  v44 = v59;
  sub_24E6009C8(v39, v59, &qword_27F23A8D0, &qword_24F9CEE68);
  v45 = v58;
  sub_24E60169C(v21, v58, &qword_27F22CD10, &qword_24F9CEE70);
  v46 = v60;
  sub_24E60169C(v44, v60, &qword_27F23A8D0, &qword_24F9CEE68);
  v47 = v61;
  sub_24E60169C(v45, v61, &qword_27F22CD10, &qword_24F9CEE70);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8E0, &qword_24F9CEEE8);
  sub_24E60169C(v46, v47 + *(v48 + 48), &qword_27F23A8D0, &qword_24F9CEE68);
  sub_24E601704(v44, &qword_27F23A8D0, &qword_24F9CEE68);
  sub_24E601704(v21, &qword_27F22CD10, &qword_24F9CEE70);
  sub_24E601704(v46, &qword_27F23A8D0, &qword_24F9CEE68);
  return sub_24E601704(v45, &qword_27F22CD10, &qword_24F9CEE70);
}

uint64_t sub_24F169CF4@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v4;
  v8[4] = *(v2 + 64);
  v9 = *(v2 + 80);
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8C8, &qword_24F9CEE60);
  return sub_24F169654(v8, a2 + *(v6 + 44));
}

uint64_t sub_24F169D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = sub_24F929888();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  *&v34 = a1;
  *(&v34 + 1) = a2;
  sub_24E600AEC();

  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  sub_24F925988();
  v15 = sub_24F925C98();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_24E600B40(v10, v12, v14 & 1);

  *&v34 = v15;
  *(&v34 + 1) = v17;
  v19 &= 1u;
  LOBYTE(v35) = v19;
  *(&v35 + 1) = v21;
  v22 = MEMORY[0x277CE0BD8];
  v23 = MEMORY[0x277CE0BC8];
  sub_24F9268B8();
  sub_24E600B40(v15, v17, v19);

  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  v24 = v27;
  sub_24F9297A8();
  sub_24E601704(v33, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v34, &qword_27F2129B0, &unk_24F945320);
  *&v34 = v22;
  *(&v34 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v28;
  sub_24F925EE8();
  (*(v30 + 8))(v24, v32);
  return (*(v29 + 8))(v9, v25);
}

uint64_t sub_24F16A068@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = sub_24F929888();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[1];
  v28 = *v1;
  v29 = v5;
  sub_24E600AEC();

  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  v11 = sub_24F925C98();
  v13 = v12;
  v15 = v14;
  sub_24E600B40(v6, v8, v10 & 1);

  LODWORD(v28) = sub_24F9251C8();
  v16 = sub_24F925C58();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_24E600B40(v11, v13, v15 & 1);

  v28 = v16;
  v29 = v18;
  v20 &= 1u;
  v30 = v20;
  v31 = v22;
  v32 = 256;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  sub_24F9297A8();
  sub_24E601704(v26, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v27, &qword_27F2129B0, &unk_24F945320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A920, &qword_24F9CEF60);
  sub_24F16D158();
  sub_24F925EE8();
  (*(v2 + 8))(v4, v25);
  sub_24E600B40(v16, v18, v20);
}

unint64_t sub_24F16A2DC()
{
  result = qword_27F23A828;
  if (!qword_27F23A828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A820, &qword_24F9CEA28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A830, &unk_24F9CEA30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225A28, &unk_24F9770A0);
    sub_24E602068(&qword_27F23A838, &qword_27F23A830, &unk_24F9CEA30, &unk_24F9651C8);
    sub_24E600AEC();
    sub_24E602068(&qword_27F228258, &qword_27F225A28, &unk_24F9770A0, MEMORY[0x277D7EB00]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F23A840, &qword_27F23A848, &qword_24F9CEA40, MEMORY[0x277CDD978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A828);
  }

  return result;
}

id sub_24F16A494@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F166C38(v4, a1);
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for ProfileCreationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 20) & ~v2);

  v4 = v3 + v1[9];

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v37 = *(v7 - 8);
  v38 = v7;
  v36 = *(v37 + 8);
  v36(v4 + v6);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v8 = v4 + v5[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for CallProviderConversationHandle(0);
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v37 + 48))(v8 + v12, 1, v38))
      {
        (v36)(v8 + v12, v38);
      }
    }

    v13 = v8 + *(v9 + 20);
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v37 + 48))(v13 + v14, 1, v38))
      {
        (v36)(v13 + v14, v38);
      }
    }
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v15 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {

    v17 = type metadata accessor for Game(0);
    (v36)(v15 + v17[18], v38);
    v18 = v17[19];
    if (!(*(v37 + 48))(v15 + v18, 1, v38))
    {
      (v36)(v15 + v18, v38);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v15 + v19, 1, v20))
    {
      (*(v21 + 8))(v15 + v19, v20);
    }
  }

  v22 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game(0);
    (v36)(v22 + v24[18], v38);
    v25 = v24[19];
    if (!(*(v37 + 48))(v22 + v25, 1, v38))
    {
      (v36)(v22 + v25, v38);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }
  }

  if (*(v3 + v1[10] + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + v1[10]));
  }

  v29 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_24F925218();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v3 + v29, 1, v30))
    {
      (*(v31 + 8))(v3 + v29, v30);
    }
  }

  else
  {
  }

  v32 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = sub_24F925218();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v32, 1, v33))
    {
      (*(v34 + 8))(v3 + v32, v33);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void *sub_24F16ADC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 20) & ~*(v3 + 80)));

  return sub_24F166DDC(v4, v5, a1);
}

void *sub_24F16AEE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F165E50(v4, a1);
}

void *sub_24F16AF50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 20) & ~*(v3 + 80)));

  return sub_24F166070(v4, v5, a1);
}

void sub_24F16AFC8(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_24F16632C(v4, a1);
}

uint64_t objectdestroy_54Tm()
{
  v1 = type metadata accessor for ProfileCreationView(0);
  v2 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = v3 + v1[9];

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v40 = *(v7 - 8);
  v39 = *(v40 + 8);
  v39(v4 + v6, v7);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v8 = v4 + v5[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v38 = v7;
    v10 = type metadata accessor for CallProviderConversationHandle(0);
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v40 + 48))(v8 + v12, 1, v38))
      {
        v39(v8 + v12, v38);
      }
    }

    v13 = v8 + *(v9 + 20);
    v14 = v11(v13, 1, v10);
    v7 = v38;
    if (!v14)
    {

      v15 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v40 + 48))(v13 + v15, 1, v38))
      {
        v39(v13 + v15, v38);
      }
    }
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v16 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {

    v18 = type metadata accessor for Game(0);
    v39(v16 + v18[18], v7);
    v19 = v18[19];
    if (!(*(v40 + 48))(v16 + v19, 1, v7))
    {
      v39(v16 + v19, v7);
    }

    v20 = v7;

    v21 = v18[21];
    v22 = sub_24F920818();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v16 + v21, 1, v22))
    {
      (*(v23 + 8))(v16 + v21, v22);
    }

    v7 = v20;
  }

  v24 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v24, 1, ChallengeInfo))
  {

    v26 = type metadata accessor for Game(0);
    v39(v24 + v26[18], v7);
    v27 = v26[19];
    if (!(*(v40 + 48))(v24 + v27, 1, v7))
    {
      v39(v24 + v27, v7);
    }

    v28 = v26[21];
    v29 = sub_24F920818();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v24 + v28, 1, v29))
    {
      (*(v30 + 8))(v24 + v28, v29);
    }
  }

  if (*(v3 + v1[10] + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + v1[10]));
  }

  v31 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_24F925218();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v3 + v31, 1, v32))
    {
      (*(v33 + 8))(v3 + v31, v32);
    }
  }

  else
  {
  }

  v34 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_24F925218();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v3 + v34, 1, v35))
    {
      (*(v36 + 8))(v3 + v34, v35);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F16B8F0(uint64_t a1)
{
  v3 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_24F166540(a1, v4, v5, v6);
}

uint64_t sub_24F16B96C()
{

  return swift_deallocObject();
}

unint64_t sub_24F16B9A4()
{
  result = qword_27F23A888;
  if (!qword_27F23A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A888);
  }

  return result;
}

__n128 sub_24F16B9F8@<Q0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v53 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v5);
  v62 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v49[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v60 = &v49[-v13];
  MEMORY[0x28223BE20](v14);
  v61 = &v49[-v15];
  MEMORY[0x28223BE20](v16);
  v65 = &v49[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v49[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v49[-v22];
  v58 = type metadata accessor for ProfileCreationView(0);
  v24 = v1;
  sub_24F769764(v23);
  v25 = v3[13];
  v57 = *MEMORY[0x277CE0560];
  v56 = v25;
  v54 = v3 + 13;
  v25(v20);
  v55 = v3[7];
  v55(v20, 0, 1, v2);
  v59 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598, &qword_24F945EF0);
  v64 = v3;
  v27 = v3[6];
  if (v27(v9, 1, v2) != 1)
  {
    sub_24E60169C(v9, v65, &qword_27F215598, &qword_24F945EF0);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v63 = v27;
      v51 = v24;
      v29 = v53;
      (v64[4])(v53, &v9[v26], v2);
      sub_24F16C2C4(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v30 = v65;
      v50 = sub_24F92AFF8();
      v31 = v64[1];
      v31(v29, v2);
      sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
      v31(v30, v2);
      sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
      if ((v50 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
    (v64[1])(v65, v2);
LABEL_6:
    v28 = v9;
LABEL_14:
    sub_24E601704(v28, &unk_27F254F20, &qword_24F940790);
    goto LABEL_15;
  }

  v51 = v24;
  v63 = v27;
  sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
  if (v63(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v32 = v61;
  sub_24F769764(v61);
  v33 = v60;
  v56(v60, v57, v2);
  v55(v33, 0, 1, v2);
  v34 = *(v59 + 48);
  v35 = v62;
  sub_24E60169C(v32, v62, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v33, &v35[v34], &qword_27F215598, &qword_24F945EF0);
  v36 = v63;
  if (v63(v35, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    if (v36(&v35[v34], 1, v2) == 1)
    {
      sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
LABEL_20:
      if (qword_27F210F38 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39DB50;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v52;
  sub_24E60169C(v35, v52, &qword_27F215598, &qword_24F945EF0);
  if (v36(&v35[v34], 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    (v64[1])(v37, v2);
LABEL_13:
    v28 = v35;
    goto LABEL_14;
  }

  v43 = v33;
  v44 = v64;
  v45 = &v35[v34];
  v46 = v53;
  (v64[4])(v53, v45, v2);
  sub_24F16C2C4(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v47 = sub_24F92AFF8();
  v48 = v44[1];
  v48(v46, v2);
  sub_24E601704(v43, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
  v48(v37, v2);
  sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
  if (v47)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F210F30 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39DB00;
LABEL_18:
  v39 = v38[3];
  v69 = v38[2];
  v70 = v39;
  v71 = v38[4];
  v40 = v38[1];
  v67 = *v38;
  v68 = v40;
  v41 = v66;
  *(v66 + 32) = v69;
  *(v41 + 48) = v39;
  *(v41 + 64) = v71;
  result = v68;
  *v41 = v67;
  *(v41 + 16) = result;
  return result;
}

uint64_t sub_24F16C2C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F16C334()
{

  return swift_deallocObject();
}

uint64_t sub_24F16C398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F16C3E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F16C46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 64);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F16C5C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 64);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F16C700(uint64_t a1)
{
  sub_24F16C8E0(319, &qword_27F233350, MEMORY[0x277CDDA30], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GKPlayerAgeCategory(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LocalPlayerProvider(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for NicknameModel(319);
        if (v4 <= 0x3F)
        {
          sub_24F16C890(319, &qword_27F23A8B0, &type metadata for Player.ProfilePrivacyVisibilityLevel, MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            sub_24F16C8E0(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
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

void sub_24F16C890(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24F16C8E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F16CA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F16CB0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F16CB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F16CBB4()
{
  v1 = type metadata accessor for SingleColumnView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_24F924098();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  v5 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F923E98();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_24F16CDC4(uint64_t a1)
{
  v3 = *(type metadata accessor for SingleColumnView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F16899C(a1, v4);
}

uint64_t sub_24F16CE34()
{
  v1 = type metadata accessor for SingleColumnView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = sub_24F924098();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  v5 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F923E98();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F16D04C(uint64_t a1)
{
  v4 = *(type metadata accessor for SingleColumnView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F168B7C(a1, v6, v7, v1 + v5);
}

unint64_t sub_24F16D158()
{
  result = qword_27F23A928;
  if (!qword_27F23A928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A920, &qword_24F9CEF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A928);
  }

  return result;
}

uint64_t sub_24F16D2A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A920, &qword_24F9CEF60);
  sub_24F16D158();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F16D30C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2128D0, &qword_24F941F30);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F16D3D4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[15];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[16];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[17];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v18 = *(*(v17 - 8) + 48);
  v19 = &a1[a3[20]];

  return v18(v19, a2, v17);
}

char *sub_24F16D674(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[15];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[16];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[17];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v18 = *(*(v17 - 8) + 56);
  v19 = &v5[a4[20]];

  return v18(v19, a2, a2, v17);
}

void sub_24F16D920(uint64_t a1)
{
  type metadata accessor for Shelf(319);
  if (v1 <= 0x3F)
  {
    sub_24F15B198(319);
    if (v2 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F23A968, &protocol descriptor for PageGridProvider);
      if (v3 <= 0x3F)
      {
        sub_24E8EFB54(319, &qword_27F23A970, &protocol descriptor for PageGridMapper);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v5 <= 0x3F)
          {
            sub_24F16DB84(319, &qword_27F2381D8, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24F928FD8();
              if (v7 <= 0x3F)
              {
                sub_24EF36C6C(319);
                if (v8 <= 0x3F)
                {
                  sub_24F16DB84(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_24E684120(319);
                    if (v10 <= 0x3F)
                    {
                      sub_24E746BEC(319, &qword_27F254DF0, MEMORY[0x277CDF310]);
                      if (v11 <= 0x3F)
                      {
                        sub_24F16DB84(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
                        if (v12 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_24F16DB84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F16DC04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v121 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
  v115 = *(v3 - 8);
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v116 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v112 = &v112 - v6;
  MEMORY[0x28223BE20](v7);
  v113 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159E8, &qword_24F940D68);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v112 - v11;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159D8, &qword_24F940D60);
  MEMORY[0x28223BE20](v114);
  v123 = (&v112 - v13);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215968, &unk_24F9A8BE0);
  MEMORY[0x28223BE20](v125);
  v124 = &v112 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A978, &qword_24F9CEFD8);
  v119 = *(v15 - 8);
  v120 = v15;
  MEMORY[0x28223BE20](v15);
  v118 = &v112 - v16;
  *v12 = sub_24F924C98();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A980, &qword_24F9CEFE0);
  sub_24F16E73C(v1, &v12[*(v17 + 44)]);
  v130[0] = 0;
  v130[1] = 0xE000000000000000;
  v18 = *v1;
  sub_24E65864C(*v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, &v126);
  v19 = sub_24F92C7A8();
  MEMORY[0x253050C20](v19);

  sub_24E6585F8(&v126);
  MEMORY[0x253050C20](95, 0xE100000000000000);
  LOBYTE(v126) = *(v18 + 16);
  sub_24F92CA38();
  v20 = v130[0];
  v21 = v130[1];
  v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215A18, &qword_24F940D80) + 52)];
  *v22 = v20;
  *(v22 + 1) = v21;
  v23 = sub_24F925818();
  sub_24F16F0DC();
  sub_24F923318();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215A08, &qword_24F940D78) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_24F925828();
  v117 = v2;
  sub_24F16F504();
  sub_24F923318();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159F8, &qword_24F940D70) + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v122 = v18;
  v43 = v18 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = *(v43 + 16);
  v47 = *(v43 + 24);
  v48 = *(v43 + 32);
  sub_24E951F10(*v43, v45, v46, v47, v48);
  v49 = sub_24F927618();
  v50 = &v12[*(v10 + 44)];
  *v50 = v44;
  *(v50 + 1) = v45;
  *(v50 + 2) = v46;
  *(v50 + 3) = v47;
  *(v50 + 16) = v48;
  *(v50 + 5) = v49;
  *(v50 + 6) = v51;
  sub_24E951F10(v44, v45, v46, v47, v48);
  sub_24E951FEC(v44, v45, v46, v47, v48);
  v52 = *(v43 + 32);
  if ((v52 & 0xE000) == 0x8000 && v52 == 0x8000 && *v43 == 1 && !(*(v43 + 16) | *(v43 + 24) | *(v43 + 8)))
  {
    v53 = *MEMORY[0x277CDF3C0];
    v54 = sub_24F9234D8();
    v55 = *(v54 - 8);
    v56 = v112;
    (*(v55 + 104))(v112, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
  }

  else
  {
    v57 = sub_24F9234D8();
    v56 = v112;
    (*(*(v57 - 8) + 56))(v112, 1, 1, v57);
  }

  v58 = v56;
  v59 = v113;
  sub_24E6009C8(v58, v113, &qword_27F2325E8, &unk_24F9C3400);
  KeyPath = swift_getKeyPath();
  v61 = v116;
  sub_24E6009C8(v59, v116, &qword_27F2325E8, &unk_24F9C3400);
  v62 = (*(v115 + 80) + 16) & ~*(v115 + 80);
  v63 = swift_allocObject();
  sub_24E6009C8(v61, v63 + v62, &qword_27F2325E8, &unk_24F9C3400);
  v64 = v123;
  sub_24E6009C8(v12, v123, &qword_27F2159E8, &qword_24F940D68);
  v65 = (v64 + *(v114 + 36));
  *v65 = KeyPath;
  v65[1] = sub_24F1759C0;
  v65[2] = v63;
  v66 = type metadata accessor for ShelfView(0);
  v67 = (v117 + *(v66 + 24));
  v132 = *v67;
  v68 = *(v67 + 16);
  v131[0] = *(v67 + 17);
  *(v131 + 3) = *(v67 + 5);
  v69 = *(v67 + 3);
  memcpy(v130, v67 + 2, sizeof(v130));
  v70 = 0;
  v71 = *(v67 + 46);
  v72 = *(v67 + 47);
  v73 = *(v67 + 48);
  if ((v68 & 1) == 0)
  {
    v70 = *(v122 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  }

  v74 = (v117 + *(v66 + 36));
  v75 = swift_getKeyPath();
  v76 = v123;
  v77 = v124;
  sub_24E60169C(v123, v124, &qword_27F2159D8, &qword_24F940D60);
  v78 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159C8, &qword_24F940D58) + 36);
  *v78 = v75;
  *(v78 + 8) = v69 - v71 - v73;
  v79 = swift_getKeyPath();
  v80 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159B8, &qword_24F940D50) + 36);
  *v80 = v79;
  *(v80 + 8) = v71;
  v81 = swift_getKeyPath();
  v82 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159A8, &qword_24F940D48) + 36);
  *v82 = v81;
  *(v82 + 8) = 0;
  v83 = swift_getKeyPath();
  v84 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215998, &qword_24F940D40) + 36);
  *v84 = v83;
  *(v84 + 8) = v70;
  *(v84 + 16) = v68 & 1;
  v85 = swift_getKeyPath();
  v86 = sub_24E6B00B4(v69);
  v87 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215988, &qword_24F940D38) + 36);
  *v87 = v85;
  *(v87 + 8) = v86;
  v88 = swift_getKeyPath();
  v89 = v74[3];
  v90 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v89);
  v126 = v132;
  LOBYTE(v127) = v68;
  *(&v127 + 1) = v131[0];
  HIDWORD(v127) = *(v131 + 3);
  v128 = v69;
  memcpy(v129, v130, 0x150uLL);
  *&v129[42] = v71;
  v129[43] = v72;
  *&v129[44] = v73;
  v91 = *(v90 + 16);
  v92 = (v77 + *(v125 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215A88, &unk_24F9C5180);
  v93 = v122;
  v91(v122, &v126, v89, v90);
  sub_24E601704(v76, &qword_27F2159D8, &qword_24F940D60);
  *v92 = v88;
  LOBYTE(v126) = *(v93 + 16);
  v94 = Shelf.ContentType.rawValue.getter();
  v96 = v95;
  v97 = sub_24F9275B8();
  v99 = v98;
  v100 = sub_24F926C38();
  v123 = &v112;
  MEMORY[0x28223BE20](v100);
  *(&v112 - 10) = v94;
  *(&v112 - 9) = v96;
  *(&v112 - 8) = v97;
  *(&v112 - 7) = v99;
  *(&v112 - 3) = 0u;
  *(&v112 - 2) = 0u;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215970, &qword_24F940D30);
  v101 = sub_24E66B7FC();
  v102 = sub_24E6695B8();
  v103 = sub_24E66BF00();
  v111 = v103;
  v104 = v118;
  v105 = v125;
  v106 = v124;
  sub_24F926B08();

  sub_24E601704(v106, &qword_27F215968, &unk_24F9A8BE0);
  v107 = sub_24F926C28();
  MEMORY[0x28223BE20](v107);
  *(&v112 - 4) = v108;
  *(&v112 - 3) = 0x3FE0000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AA8, &unk_24F940DD0);
  *&v126 = v105;
  *(&v126 + 1) = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v127 = v122;
  v128 = *&v101;
  v129[0] = v102;
  v129[1] = v103;
  swift_getOpaqueTypeConformance2();
  sub_24E669340();
  v111 = sub_24F176268();
  v109 = v120;
  sub_24F926B08();

  return (*(v119 + 8))(v104, v109);
}

uint64_t sub_24F16E73C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v76 = type metadata accessor for ShelfView.ShelfDivider(0) - 8;
  MEMORY[0x28223BE20](v76);
  v78 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &KeyPath - v5;
  v72 = type metadata accessor for ShelfView.Grid(0) - 8;
  MEMORY[0x28223BE20](v72);
  v77 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = (&KeyPath - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
  v74 = *(v9 - 8);
  v71 = *(v74 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &KeyPath - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &KeyPath - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A990, &qword_24F9CF108) - 8;
  MEMORY[0x28223BE20](v69);
  v85 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&KeyPath - v17);
  v86 = *a1;
  v19 = v86;
  v20 = type metadata accessor for ShelfView(0);
  v83 = v20[5];
  sub_24E60169C(a1 + v83, v14, &unk_27F23A680, &unk_24F981ED0);
  v68 = *(v12 + 56);
  v80 = v12;
  v73 = v20[7];
  memcpy(v87, a1 + v73, sizeof(v87));
  KeyPath = swift_getKeyPath();
  *v18 = v19;
  v21 = type metadata accessor for ShelfView.Header(0);
  v22 = v18 + v21[5];
  v23 = *(v12 + 56);
  v81 = v14;
  sub_24E6009C8(v14, v22, &unk_27F23A690, &qword_24F982880);
  sub_24E6009C8(&v14[v68], v22 + v23, &unk_27F23A690, &qword_24F982880);
  memcpy(v18 + v21[6], v87, 0x188uLL);
  v24 = v18 + v21[7];
  *v24 = KeyPath;
  v24[8] = 0;
  v25 = v18 + v21[8];
  v84 = v18;
  *v25 = swift_getKeyPath();
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v25[32] = 0;
  v26 = v20[11];
  v27 = swift_getKeyPath();
  v28 = v70;
  sub_24E60169C(a1 + v26, v70, &qword_27F2325E8, &unk_24F9C3400);
  v29 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v30 = swift_allocObject();
  sub_24E6009C8(v28, v30 + v29, &qword_27F2325E8, &unk_24F9C3400);
  v31 = (v18 + *(v69 + 44));
  *v31 = v27;
  v31[1] = sub_24F179374;
  v31[2] = v30;
  sub_24E60169C(a1 + v83, v81, &unk_27F23A680, &unk_24F981ED0);
  v32 = v80;
  v70 = *(v80 + 56);
  memcpy(v88, a1 + v20[6], sizeof(v88));
  v71 = v20[8];
  v33 = v72;
  v34 = v82;
  sub_24E615E00(a1 + v71, v82 + *(v72 + 36));
  sub_24E615E00(a1 + v20[9], v34 + v33[10]);
  v35 = v86;
  swift_retain_n();
  sub_24E8B9768(v87, &v93);
  sub_24E8B9768(v88, &v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  sub_24F9237D8();
  v36 = v93;
  sub_24F769788((v34 + v33[12]));
  v37 = v20[13];
  v74 = *(a1 + v20[12]);
  v38 = v74;
  v69 = *(a1 + v37);
  v68 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *v34 = v35;
  v39 = v34 + v33[7];
  v40 = *(v32 + 56);
  v41 = v81;
  sub_24E6009C8(v81, v39, &unk_27F23A690, &qword_24F982880);
  sub_24E6009C8(v41 + v70, v39 + v40, &unk_27F23A690, &qword_24F982880);
  memcpy(v34 + v33[8], v88, 0x188uLL);
  *(v34 + v33[11]) = v36;
  *(v34 + v33[13]) = v38;
  v42 = v34 + v33[14];
  v43 = KeyPath;
  *v42 = v68;
  v42[8] = 0;
  v44 = v34 + v33[15];
  *v44 = v43;
  v44[8] = 0;
  v45 = v34 + v33[16];
  *v45 = swift_getKeyPath();
  *(v45 + 1) = 0;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  v45[32] = 0;
  *(v34 + v33[17]) = v69;
  v46 = v73;
  memcpy(v89, a1 + v73, sizeof(v89));
  memcpy(v90, a1 + v73, sizeof(v90));
  sub_24E60169C(a1 + v83, v41, &unk_27F23A680, &unk_24F981ED0);
  v47 = v80;
  v48 = *(v80 + 56);
  memcpy(v91, a1 + v46, sizeof(v91));
  v50 = v75;
  v49 = v76;
  sub_24E615E00(a1 + v71, &v75[*(v76 + 36)]);
  *v50 = v86;
  v51 = v50 + v49[7];
  v52 = *(v47 + 56);
  sub_24E6009C8(v41, v51, &unk_27F23A690, &qword_24F982880);
  sub_24E6009C8(v41 + v48, v51 + v52, &unk_27F23A690, &qword_24F982880);
  memcpy(v50 + v49[8], v91, 0x188uLL);
  v53 = v49[10];
  *(v50 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v54 = v49[11];
  *(v50 + v54) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v55 = v49[12];
  *(v50 + v55) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v56 = v50 + v49[13];
  *v56 = swift_getKeyPath();
  *(v56 + 1) = 0;
  *(v56 + 2) = 0;
  *(v56 + 3) = 0;
  v56[32] = 0;
  v57 = v49[14];
  *(v50 + v57) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v58 = v85;
  sub_24E60169C(v84, v85, &qword_27F23A990, &qword_24F9CF108);
  v59 = v77;
  sub_24F1765BC(v34, v77, type metadata accessor for ShelfView.Grid);
  v60 = v78;
  sub_24F1765BC(v50, v78, type metadata accessor for ShelfView.ShelfDivider);
  v61 = v58;
  v62 = v79;
  sub_24E60169C(v61, v79, &qword_27F23A990, &qword_24F9CF108);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A998, &qword_24F9CF1F8);
  sub_24F1765BC(v59, v62 + v63[12], type metadata accessor for ShelfView.Grid);
  v64 = v63[16];
  v65 = v86;
  v92[0] = v86;
  memcpy(&v92[1], v90, 0x188uLL);
  memcpy((v62 + v64), v92, 0x190uLL);
  sub_24F1765BC(v60, v62 + v63[20], type metadata accessor for ShelfView.ShelfDivider);

  sub_24E8B9768(v89, &v93);
  sub_24E8B9768(v91, &v93);
  sub_24F176624(v92, &v93);
  sub_24F17665C(v50, type metadata accessor for ShelfView.ShelfDivider);
  sub_24F17665C(v82, type metadata accessor for ShelfView.Grid);
  sub_24E601704(v84, &qword_27F23A990, &qword_24F9CF108);
  sub_24F17665C(v60, type metadata accessor for ShelfView.ShelfDivider);
  v93 = v65;
  memcpy(v94, v90, sizeof(v94));
  sub_24F1766BC(&v93);
  sub_24F17665C(v59, type metadata accessor for ShelfView.Grid);
  return sub_24E601704(v85, &qword_27F23A990, &qword_24F9CF108);
}

double sub_24F16F0DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = *v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  v37 = *(v8 + 24);
  v35 = *(v8 + 32);
  v12 = type metadata accessor for ShelfView(0);
  sub_24E60169C(v0 + *(v12 + 20), v4, &unk_27F23A680, &unk_24F981ED0);
  v13 = &v4[*(v2 + 56)];
  sub_24E6009C8(v4, v7, &unk_27F23A690, &qword_24F982880);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v7, 1, v14) == 1;
  v38 = v9;
  v39 = v11;
  v36 = v10;
  v17 = v11;
  if (v16)
  {
    v25 = v37;
    v19 = v35;
    sub_24E951F10(v10, v9, v17, v37, v35);
    sub_24E601704(v13, &unk_27F23A690, &qword_24F982880);
    v34 = 0;
    v21 = 0;
    v23 = 0;
    v22 = 0;
    v24 = 64764;
    v13 = v7;
  }

  else
  {
    v18 = v37;
    v19 = v35;
    sub_24E951F10(v10, v9, v17, v37, v35);
    sub_24F928A58();
    v20 = v45;
    (*(v15 + 8))(v7, v14);
    v21 = *&v20[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8];
    v23 = *&v20[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16];
    v22 = *&v20[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24];
    v24 = *&v20[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32];
    v34 = *&v20[OBJC_IVAR____TtC12GameStoreKit5Shelf_background];
    sub_24E951F10(v34, v21, v23, v22, v24);

    v25 = v18;
  }

  sub_24E601704(v13, &unk_27F23A690, &qword_24F982880);
  if ((~v19 & 0xFCFC) == 0)
  {
    v27 = v38;
    v26 = v39;
    v28 = v36;
    if ((~v24 & 0xFCFC) == 0)
    {
      sub_24F176378(v36, v38, v39, v25, v19);
      return 0.0;
    }

    goto LABEL_9;
  }

  v29 = v36;
  v27 = v38;
  v26 = v39;
  v45 = v36;
  v46 = v38;
  v47 = v39;
  v48 = v25;
  v49 = v19;
  if ((~v24 & 0xFCFC) == 0)
  {
    sub_24F17638C(v36, v38, v39, v25, v19);
    sub_24E951FEC(v29, v27, v26, v25, v19);
    v28 = v29;
LABEL_9:
    sub_24F176378(v28, v27, v26, v25, v19);
    sub_24F176378(v34, v21, v23, v22, v24);
LABEL_10:
    v30 = *(v8 + 32);
    if ((v30 & 0xE000) == 0x8000 && v30 == 0x8000 && *v8 == 1 && !(*(v8 + 16) | *(v8 + 24) | *(v8 + 8)))
    {
      return 52.0;
    }

    return 0.0;
  }

  v40 = v34;
  v41 = v21;
  v42 = v23;
  v43 = v22;
  v44 = v24;
  sub_24F17638C(v36, v38, v39, v25, v19);
  v32 = v25;
  v33 = _s12GameStoreKit15ShelfBackgroundO2eeoiySbAC_ACtFZ_0(&v45, &v40);
  sub_24E951FEC(v40, v41, v42, v43, v44);
  sub_24E951FEC(v45, v46, v47, v48, v49);
  sub_24F176378(v29, v27, v26, v32, v19);
  result = 0.0;
  if ((v33 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_24F16F504()
{
  v1 = v0;
  v79 = sub_24F924848();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F925218();
  v105 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v76 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v101);
  v85 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v8 - 8);
  v75 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = &v75 - v11;
  MEMORY[0x28223BE20](v12);
  v84 = (&v75 - v13);
  MEMORY[0x28223BE20](v14);
  v99 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v75 - v20);
  v97 = sub_24F923E98();
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v23 = (&v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = type metadata accessor for PageEnvironment(0);
  MEMORY[0x28223BE20](v103);
  v104 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  MEMORY[0x28223BE20](v89);
  v26 = &v75 - v25;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v28 = &v75 - v27;
  v29 = type metadata accessor for ShelfView(0);
  sub_24E615E00(v1 + v29[8], &v109);
  v87 = v111;
  v88 = v110;
  v86 = __swift_project_boxed_opaque_existential_1(&v109, v110);
  v106 = *v1;
  type metadata accessor for Shelf(0);

  v90 = v28;
  sub_24F928A78();
  v30 = v1 + v29[5];
  v95 = v26;
  sub_24E60169C(v30, v26, &unk_27F23A680, &unk_24F981ED0);
  v31 = (v1 + v29[10]);
  v32 = *v31;
  v33 = v31[1];
  v93 = v23;
  sub_24F769788(v23);
  v102 = v29;
  v96 = v1;
  sub_24F769764(v21);
  v34 = v98;
  v35 = v105;
  v36 = *(v105 + 104);
  v82 = *MEMORY[0x277CE0558];
  v81 = v36;
  v36(v18);
  v37 = v35;
  v80 = *(v35 + 56);
  v80(v18, 0, 1, v3);
  v38 = *(v101 + 48);
  sub_24E60169C(v21, v34, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v18, v34 + v38, &qword_27F215598, &qword_24F945EF0);
  v39 = *(v37 + 48);
  if (v39(v34, 1, v3) == 1)
  {
    sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
    if (v39(v34 + v38, 1, v3) == 1)
    {
      sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
      v83 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24E60169C(v34, v99, &qword_27F215598, &qword_24F945EF0);
  if (v39(v34 + v38, 1, v3) == 1)
  {
    sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
    (*(v105 + 8))(v99, v3);
LABEL_6:
    sub_24E601704(v34, &unk_27F254F20, &qword_24F940790);
    v83 = 0;
    goto LABEL_8;
  }

  v40 = v76;
  (*(v105 + 32))(v76, v34 + v38, v3);
  sub_24F178F7C(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v83 = sub_24F92AFF8();
  v41 = *(v105 + 8);
  v41(v40, v3);
  sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
  v41(v99, v3);
  sub_24E601704(v98, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v42 = v84;
  v43 = v96;
  sub_24F769764(v84);
  v44 = v100;
  v81(v100, v82, v3);
  v80(v44, 0, 1, v3);
  v45 = v44;
  v46 = *(v101 + 48);
  v47 = v85;
  sub_24E60169C(v42, v85, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v45, v47 + v46, &qword_27F215598, &qword_24F945EF0);
  if (v39(v47, 1, v3) == 1)
  {
    sub_24E601704(v45, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v42, &qword_27F215598, &qword_24F945EF0);
    if (v39(v47 + v46, 1, v3) == 1)
    {
      sub_24E601704(v47, &qword_27F215598, &qword_24F945EF0);
      LODWORD(v48) = 1;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v49 = v75;
  sub_24E60169C(v47, v75, &qword_27F215598, &qword_24F945EF0);
  if (v39(v47 + v46, 1, v3) == 1)
  {
    sub_24E601704(v100, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v42, &qword_27F215598, &qword_24F945EF0);
    (*(v105 + 8))(v49, v3);
LABEL_13:
    sub_24E601704(v47, &unk_27F254F20, &qword_24F940790);
    LODWORD(v48) = 0;
    goto LABEL_15;
  }

  v50 = v105;
  v51 = v42;
  v52 = v76;
  (*(v105 + 32))(v76, v47 + v46, v3);
  sub_24F178F7C(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  LODWORD(v48) = sub_24F92AFF8();
  v53 = *(v50 + 8);
  v53(v52, v3);
  sub_24E601704(v100, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v51, &qword_27F215598, &qword_24F945EF0);
  v53(v49, v3);
  sub_24E601704(v47, &qword_27F215598, &qword_24F945EF0);
LABEL_15:
  v54 = v102;
  sub_24F7699B0(&v104[*(v103 + 28)]);
  v55 = v43 + v54[19];
  v56 = *(v55 + 8);
  v57 = *(v55 + 24);
  if (*(v55 + 32) == 1)
  {
    v58 = *(v55 + 8);
    v59 = *(v55 + 24);
  }

  else
  {
    v60 = *v55;
    v61 = *(v55 + 16);

    sub_24F92BDC8();
    v62 = sub_24F9257A8();
    LODWORD(v105) = v48;
    v63 = v62;
    sub_24F921FD8();

    v64 = v77;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v60, v56, v61, v57, 0);
    v65 = *(v78 + 8);
    v66 = v79;
    v65(v64, v79);
    v58 = v107;

    sub_24F92BDC8();
    v48 = sub_24F9257A8();
    sub_24F921FD8();

    LOBYTE(v48) = v105;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v60, v56, v61, v57, 0);
    v65(v64, v66);
    v59 = v108;
  }

  v67 = *(v89 + 48);
  v68 = v58 + v59 > 0.0;
  v69 = v104;
  (*(v94 + 32))(v104, v93, v97);
  v70 = v103;
  *(v69 + *(v103 + 20)) = v83 & 1;
  *(v69 + *(v70 + 24)) = v48 & 1;
  *(v69 + *(v70 + 32)) = v68;
  v71 = v95;
  v72 = v90;
  v73 = (*(v87 + 24))(v90, v95, &v95[v67], v69, v88, v32, v33);
  sub_24F17665C(v69, type metadata accessor for PageEnvironment);
  (*(v91 + 8))(v72, v92);
  sub_24E601704(v71 + v67, &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v71, &unk_27F23A690, &qword_24F982880);
  __swift_destroy_boxed_opaque_existential_1(&v109);
  return v73;
}

double sub_24F170308()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ShelfView.Header(0) + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_24F170464@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B00, &qword_24F9A6EE0);
  v114 = *(v3 - 8);
  v115 = v3;
  MEMORY[0x28223BE20](v3);
  v113 = &v100 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B10, &qword_24F9A6EF0);
  MEMORY[0x28223BE20](v110);
  v112 = &v100 - v5;
  v6 = sub_24F924848();
  v105 = *(v6 - 8);
  v106 = v6;
  MEMORY[0x28223BE20](v6);
  v104 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B58, &unk_24F9A6F10);
  MEMORY[0x28223BE20](v8);
  v10 = &v100 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B48, &qword_24F9A6F08);
  MEMORY[0x28223BE20](v107);
  v12 = &v100 - v11;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B38, &qword_24F9A6F00);
  MEMORY[0x28223BE20](v108);
  v117 = &v100 - v13;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB78, &qword_24F9CF528);
  v14 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v111 = &v100 - v15;
  v16 = type metadata accessor for HeaderPresentation(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v100 - v20;
  v109 = v1;
  v22 = *v1;

  sub_24E98606C(v23, v21);
  if (!sub_24F31B9B4())
  {
    sub_24F17665C(v21, type metadata accessor for HeaderPresentation);
    v26 = 1;
    v27 = v116;
    v28 = a1;
    return (*(v14 + 56))(v28, v26, 1, v27);
  }

  v101 = v21;
  sub_24F1765BC(v21, v18, type metadata accessor for HeaderPresentation);
  v24 = *(v22 + 40);
  v102 = v14;
  v103 = a1;
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = *(v24 + 104);
  if (!v25)
  {
    v29 = *(v24 + 136);
    if (v29)
    {
      *(&v132 + 1) = type metadata accessor for Action(0);
      *&v133 = sub_24F178F7C(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
      *&v131 = v29;
      goto LABEL_8;
    }

LABEL_9:
    *&v133 = 0;
    v131 = 0u;
    v132 = 0u;
    goto LABEL_10;
  }

  *(&v125 + 1) = type metadata accessor for Action(0);
  *&v126 = sub_24F178F7C(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  *&v124 = v25;
  sub_24E612C80(&v124, &v131);
LABEL_8:

LABEL_10:
  v30 = &v10[v8[11]];
  v31 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v30[3] = MEMORY[0x277D84030];
  v32 = swift_allocObject();
  *v30 = v32;
  sub_24E65864C(v22 + v31, v32 + 16);
  sub_24F178C84(v18, v10, type metadata accessor for HeaderPresentation);
  v33 = &v10[v8[9]];
  *v33 = CGSizeMake;
  v33[1] = 0;
  v34 = &v10[v8[10]];
  v35 = v132;
  *v34 = v131;
  *(v34 + 1) = v35;
  *(v34 + 4) = v133;
  v36 = v109;
  sub_24F170308();
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v10, v12, &qword_27F231B58, &unk_24F9A6F10);
  v37 = &v12[*(v107 + 36)];
  v38 = v129;
  *(v37 + 4) = v128;
  *(v37 + 5) = v38;
  *(v37 + 6) = v130;
  v39 = v125;
  *v37 = v124;
  *(v37 + 1) = v39;
  v40 = v127;
  *(v37 + 2) = v126;
  *(v37 + 3) = v40;
  sub_24F927618();
  sub_24F9242E8();
  v41 = v117;
  sub_24E6009C8(v12, v117, &qword_27F231B48, &qword_24F9A6F08);
  v42 = (v41 + *(v108 + 36));
  v43 = v136;
  v42[4] = v135;
  v42[5] = v43;
  v42[6] = v137;
  v44 = v132;
  *v42 = v131;
  v42[1] = v44;
  v45 = v134;
  v42[2] = v133;
  v42[3] = v45;
  v46 = v36 + *(type metadata accessor for ShelfView.Header(0) + 32);
  v47 = *(v46 + 8);
  v48 = *(v46 + 24);
  if ((*(v46 + 32) & 1) == 0)
  {
    v49 = *v46;
    v109 = *(v46 + 16);
    v50 = v109;

    sub_24F92BDC8();
    v51 = sub_24F9257A8();
    sub_24F921FD8();

    v52 = v104;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v49, v47, v50, v48, 0);
    v53 = v106;
    v54 = *(v105 + 8);
    v54(v52, v106);

    sub_24F92BDC8();
    v55 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v49, v47, v109, v48, 0);
    v54(v52, v53);
  }

  v28 = v103;
  v56 = sub_24F925838();
  sub_24F923318();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v112;
  sub_24E60169C(v117, v112, &qword_27F231B38, &qword_24F9A6F00);
  v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B28, &qword_24F9A6EF8) + 36);
  *v66 = v56;
  *(v66 + 8) = v58;
  *(v66 + 16) = v60;
  *(v66 + 24) = v62;
  *(v66 + 32) = v64;
  *(v66 + 40) = 0;
  v67 = sub_24F925858();
  sub_24F923318();
  v68 = v110;
  v69 = v65 + *(v110 + 36);
  *v69 = v67;
  *(v69 + 8) = v70;
  *(v69 + 16) = v71;
  *(v69 + 24) = v72;
  *(v69 + 32) = v73;
  *(v69 + 40) = 0;
  v74 = sub_24EE536D0();
  v75 = v113;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB80, &qword_24F9CF530);
  v118 = v68;
  v119 = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = sub_24E8F20E4();
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B08, &qword_24F9A6EE8);
  v79 = sub_24EE5392C();
  v80 = v115;
  v118 = v115;
  v119 = &type metadata for IsDebugFocusOverlayEnabled;
  v120 = v78;
  v121 = OpaqueTypeConformance2;
  v122 = v77;
  v123 = v79;
  swift_getOpaqueTypeConformance2();
  v81 = v111;
  sub_24F926B08();
  (*(v114 + 8))(v75, v80);
  sub_24E601704(v65, &qword_27F231B10, &qword_24F9A6EF0);
  v82 = sub_24F925838();
  sub_24F923318();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB88, &qword_24F9CF538) + 36);
  *v91 = v82;
  *(v91 + 8) = v84;
  *(v91 + 16) = v86;
  *(v91 + 24) = v88;
  *(v91 + 32) = v90;
  *(v91 + 40) = 0;
  v92 = sub_24F925858();
  sub_24F923318();
  v27 = v116;
  v93 = v117;
  v94 = v81 + *(v116 + 36);
  *v94 = v92;
  *(v94 + 8) = v95;
  *(v94 + 16) = v96;
  *(v94 + 24) = v97;
  *(v94 + 32) = v98;
  *(v94 + 40) = 0;
  sub_24E601704(v93, &qword_27F231B38, &qword_24F9A6F00);
  sub_24F17665C(v101, type metadata accessor for HeaderPresentation);
  sub_24E6009C8(v81, v28, &qword_27F23AB78, &qword_24F9CF528);
  v26 = 0;
  v14 = v102;
  return (*(v14 + 56))(v28, v26, 1, v27);
}

double sub_24F170FA0()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ShelfView.Grid(0) + 48));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

double sub_24F1710FC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ShelfView.Grid(0) + 52));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_24F17125C@<X0>(uint64_t a1@<X8>)
{
  v172 = a1;
  v2 = sub_24F924848();
  v137 = *(v2 - 8);
  v138 = v2;
  MEMORY[0x28223BE20](v2);
  v136 = &v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9E0, &qword_24F9CF3A8);
  MEMORY[0x28223BE20](v160);
  v164 = &v130 - v4;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9E8, &qword_24F9CF3B0);
  v135 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v134 = &v130 - v5;
  v6 = sub_24F925688();
  v132 = *(v6 - 8);
  v133 = v6;
  MEMORY[0x28223BE20](v6);
  v131 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v130 = &v130 - v9;
  v10 = type metadata accessor for ShelfView.Grid(0);
  v144 = *(v10 - 8);
  v143 = *(v144 + 64);
  MEMORY[0x28223BE20](v10);
  v145 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v142 = &v130 - v13;
  v14 = sub_24F921998();
  MEMORY[0x28223BE20](v14 - 8);
  v177 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F921938();
  MEMORY[0x28223BE20](v16 - 8);
  v176 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9F0, &qword_24F9CF3B8);
  v148 = *(v18 - 8);
  v149 = v18;
  MEMORY[0x28223BE20](v18);
  v147 = &v130 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9F8, &qword_24F9CF3C0);
  v151 = *(v20 - 8);
  v152 = v20;
  MEMORY[0x28223BE20](v20);
  v150 = &v130 - v21;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA00, &qword_24F9CF3C8);
  MEMORY[0x28223BE20](v155);
  v153 = &v130 - v22;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA08, &qword_24F9CF3D0);
  v157 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v154 = &v130 - v23;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA10, &qword_24F9CF3D8);
  v158 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v156 = &v130 - v24;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA18, &qword_24F9CF3E0);
  v163 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v162 = &v130 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA20, &qword_24F9CF3E8);
  v168 = *(v26 - 8);
  v169 = v26;
  MEMORY[0x28223BE20](v26);
  v178 = &v130 - v27;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA28, &qword_24F9CF3F0);
  MEMORY[0x28223BE20](v170);
  v166 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v167 = &v130 - v30;
  v182 = sub_24F9218F8();
  v184 = *(v182 - 8);
  v141 = *(v184 + 64);
  MEMORY[0x28223BE20](v182);
  v146 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v140 = &v130 - v33;
  MEMORY[0x28223BE20](v34);
  v173 = &v130 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v130 - v37;
  v39 = (v1 + *(v10 + 32));
  v41 = v39[3];
  v40 = v39[4];
  v175 = __swift_project_boxed_opaque_existential_1(v39, v41);
  v42 = *v1;
  v171 = v10;
  v43 = *(v10 + 24);
  v181 = v1;
  memcpy(v189, v1 + v43, sizeof(v189));
  memcpy(v194, v1 + v43, 0x188uLL);
  v44 = *(v40 + 8);
  sub_24E8B9768(v189, v193);
  v183 = v38;
  v180 = v42;
  v44(v42, v194, v41, v40);
  memcpy(v190, v194, sizeof(v190));
  sub_24F177548(v190);
  *&v185 = v42;
  v174 = *(v184 + 16);
  v175 = (v184 + 16);
  v174(v173, v38, v182);
  v45 = v39[3];
  v46 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v45);
  v47 = v181;
  memcpy(v191, v181 + v43, sizeof(v191));
  memcpy(v194, v181 + v43, 0x188uLL);
  v48 = *(v46 + 24);
  v49 = v180;

  sub_24E8B9768(v191, v193);
  v48(v49, v194, v45, v46);
  memcpy(v192, v194, sizeof(v192));
  sub_24F177548(v192);
  v50 = v39[3];
  v51 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v50);
  memcpy(v193, (v47 + v43), sizeof(v193));
  memcpy(v188, (v47 + v43), sizeof(v188));
  v52 = *(v51 + 16);
  sub_24E8B9768(v193, v194);
  v52(v49, v188, v50, v51);
  memcpy(v194, v188, 0x188uLL);
  sub_24F177548(v194);
  v139 = type metadata accessor for ShelfView.Grid;
  v53 = v142;
  sub_24F1765BC(v47, v142, type metadata accessor for ShelfView.Grid);
  v54 = v140;
  v55 = v182;
  v174(v140, v183, v182);
  v56 = (*(v144 + 80) + 16) & ~*(v144 + 80);
  v144 = v56 + v143;
  v57 = v184;
  v58 = (v56 + v143 + *(v184 + 80)) & ~*(v184 + 80);
  v59 = swift_allocObject();
  v141 = v59;
  sub_24F178C84(v53, v59 + v56, type metadata accessor for ShelfView.Grid);
  v60 = v59 + v58;
  v61 = v55;
  (*(v57 + 32))(v60, v54, v55);
  v62 = v145;
  sub_24F1765BC(v181, v145, v139);
  v63 = swift_allocObject();
  sub_24F178C84(v62, v63 + v56, type metadata accessor for ShelfView.Grid);
  v64 = type metadata accessor for Shelf(0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA30, &qword_24F9CF3F8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA38, &qword_24F9CF400);
  v67 = sub_24F178F7C(&qword_27F23AA40, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA48, &qword_24F9CF408);
  v69 = sub_24F177C3C();
  v188[0] = v68;
  v188[1] = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = sub_24F178174();
  v142 = v67;
  v143 = v66;
  v144 = v65;
  v145 = v64;
  v72 = v147;
  sub_24F921D58();
  if (*(v180 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior))
  {
    v186 = sub_24F921CC8();
    v187 = sub_24F178F7C(&qword_27F23AAB0, MEMORY[0x277D7ECC8], MEMORY[0x277D7ECC0]);
    __swift_allocate_boxed_opaque_existential_1(&v185);
    sub_24F924EF8();
  }

  else
  {
    v73 = v130;
    sub_24F925668();
    v186 = sub_24F9256A8();
    v187 = MEMORY[0x277CDE478];
    __swift_allocate_boxed_opaque_existential_1(&v185);
    v74 = v132;
    v75 = v133;
    (*(v132 + 16))(v131, v73, v133);
    sub_24F925698();
    (*(v74 + 8))(v73, v75);
  }

  sub_24E612C80(&v185, v188);
  v76 = v149;
  v77 = v150;
  sub_24F921D48();
  __swift_destroy_boxed_opaque_existential_1(v188);
  (*(v148 + 8))(v72, v76);
  v78 = v146;
  v174(v146, v183, v55);
  v79 = v184;
  v80 = (*(v184 + 88))(v78, v61);
  v81 = v153;
  v82 = v151;
  if (v80 == *MEMORY[0x277D7EB20])
  {
    (*(v79 + 96))(v78, v61);
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8, &unk_24F9A1D20) + 48);
    v84 = sub_24F9219E8();
    (*(*(v84 - 8) + 8))(&v78[v83], v84);
    v188[0] = v145;
    v188[1] = v144;
    v188[2] = v143;
    v188[3] = v142;
    v188[4] = OpaqueTypeConformance2;
    v188[5] = v71;
    v85 = swift_getOpaqueTypeConformance2();
    v86 = v134;
    v87 = v152;
    sub_24F9265A8();
    v88 = v135;
    v89 = v165;
    (*(v135 + 16))(v164, v86, v165);
    swift_storeEnumTagMultiPayload();
    v188[0] = v87;
    v188[1] = v85;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    (*(v88 + 8))(v86, v89);
  }

  else
  {
    (*(v79 + 8))(v78, v61);
    v87 = v152;
    (*(v82 + 16))(v164, v77, v152);
    swift_storeEnumTagMultiPayload();
    v188[0] = v145;
    v188[1] = v144;
    v188[2] = v143;
    v188[3] = v142;
    v188[4] = OpaqueTypeConformance2;
    v188[5] = v71;
    v90 = swift_getOpaqueTypeConformance2();
    v188[0] = v87;
    v188[1] = v90;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
  }

  v176 = v193[1];
  v177 = v193[0];
  (*(v82 + 8))(v77, v87);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388D8, &qword_24F9C5370);
  v92 = sub_24F178254();
  v93 = sub_24F09D94C();
  v94 = MEMORY[0x277CE1410];
  v95 = MEMORY[0x277CE1428];
  v96 = v154;
  v97 = v155;
  sub_24F925F58();
  sub_24E601704(v81, &qword_27F23AA00, &qword_24F9CF3C8);
  v98 = v181;
  sub_24F170FA0();
  sub_24F1710FC();
  v188[0] = v97;
  v188[1] = v95;
  v188[2] = v95;
  v188[3] = v91;
  v188[4] = v92;
  v188[5] = v94;
  v188[6] = v94;
  v188[7] = v93;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = v156;
  v101 = v159;
  sub_24F925F18();
  (*(v157 + 8))(v96, v101);
  v188[0] = v101;
  v188[1] = v99;
  v102 = swift_getOpaqueTypeConformance2();
  v104 = v161;
  v103 = v162;
  sub_24F925F88();
  (*(v158 + 8))(v100, v104);
  v105 = sub_24F926CE8();
  MEMORY[0x28223BE20](v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AAC0, &qword_24F9CF430);
  v188[0] = v104;
  v188[1] = v102;
  v107 = swift_getOpaqueTypeConformance2();
  v108 = sub_24F09B68C();
  v180 = sub_24F178428();
  v109 = v179;
  sub_24F926B08();

  (*(v163 + 8))(v103, v109);
  v110 = v98 + *(v171 + 56);
  v111 = *(v110 + 8);
  v112 = *(v110 + 24);
  if (*(v110 + 32) == 1)
  {
    v113 = *(v110 + 24);
  }

  else
  {
    v114 = *v110;
    v175 = *(v110 + 16);
    v115 = v175;

    sub_24F92BDC8();
    v181 = v106;
    v116 = sub_24F9257A8();
    v176 = v108;
    v117 = v116;
    sub_24F921FD8();

    v118 = v136;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v114, v111, v115, v112, 0);
    v119 = *(v137 + 8);
    v177 = v107;
    v120 = v138;
    v119(v118, v138);

    sub_24F92BDC8();
    v121 = sub_24F9257A8();
    v106 = v181;
    sub_24F921FD8();

    v108 = v176;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v114, v111, v175, v112, 0);
    v122 = v120;
    v107 = v177;
    v119(v118, v122);
    v113 = *&v188[3];
  }

  v123 = -v113;
  v188[0] = v179;
  v188[1] = &type metadata for IsDebugShelfLayoutOverlayEnabled;
  v188[2] = v106;
  v188[3] = v107;
  v188[4] = v108;
  v188[5] = v180;
  v124 = swift_getOpaqueTypeConformance2();
  v125 = v166;
  v126 = v169;
  v127 = v178;
  sub_24EB1EBF0(v124, v166, v123);
  (*(v168 + 8))(v127, v126);
  (*(v184 + 8))(v183, v182);
  sub_24F1786DC();
  v128 = v167;
  sub_24E7896B8();
  sub_24E601704(v125, &qword_27F23AA28, &qword_24F9CF3F0);
  sub_24E7896B8();
  return sub_24E601704(v128, &qword_27F23AA28, &qword_24F9CF3F0);
}

uint64_t sub_24F17280C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v204 = a3;
  v212 = a1;
  v207 = a4;
  v208 = sub_24F929888();
  v206 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v205 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB40, &qword_24F9CF478);
  MEMORY[0x28223BE20](v173);
  v174 = (&v149 - v6);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B70, &qword_24F940E40);
  MEMORY[0x28223BE20](v180);
  v175 = &v149 - v7;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B88, &qword_24F940E48);
  MEMORY[0x28223BE20](v172);
  v171 = &v149 - v8;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB48, &qword_24F9CF480);
  MEMORY[0x28223BE20](v177);
  v179 = &v149 - v9;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB50, &qword_24F9CF488);
  MEMORY[0x28223BE20](v164);
  v165 = &v149 - v10;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B38, &qword_24F940E20);
  MEMORY[0x28223BE20](v178);
  v166 = &v149 - v11;
  v12 = sub_24F924218();
  v160 = *(v12 - 8);
  v161 = v12;
  MEMORY[0x28223BE20](v12);
  v158 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B58, &qword_24F9FB190);
  MEMORY[0x28223BE20](v152);
  v150 = &v149 - v14;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B50, &unk_24F940E30);
  v153 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v151 = &v149 - v15;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB58, &qword_24F9CF490);
  v157 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v156 = &v149 - v16;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B48, &qword_24F940E28);
  MEMORY[0x28223BE20](v163);
  v154 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v162 = &v149 - v19;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB60, &qword_24F9CF498);
  MEMORY[0x28223BE20](v183);
  v185 = &v149 - v20;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B28, &qword_24F940E18);
  MEMORY[0x28223BE20](v184);
  v176 = &v149 - v21;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AE0, &qword_24F940DF8);
  MEMORY[0x28223BE20](v188);
  v186 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v187 = &v149 - v24;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA80, &qword_24F9CF428);
  v191 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v189 = &v149 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB68, &qword_24F9CF4A0);
  v194 = *(v26 - 8);
  v195 = v26;
  MEMORY[0x28223BE20](v26);
  v192 = &v149 - v27;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA78, &qword_24F9CF420);
  MEMORY[0x28223BE20](v190);
  v196 = &v149 - v28;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA58, &qword_24F9CF410);
  MEMORY[0x28223BE20](v198);
  v197 = &v149 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB70, &qword_24F9CF4A8);
  v200 = *(v30 - 8);
  v201 = v30;
  MEMORY[0x28223BE20](v30);
  v199 = &v149 - v31;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA48, &qword_24F9CF408);
  MEMORY[0x28223BE20](v202);
  v203 = &v149 - v32;
  v33 = sub_24F922348();
  v168 = *(v33 - 8);
  v169 = v33;
  MEMORY[0x28223BE20](v33);
  v167 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  MEMORY[0x28223BE20](v35);
  v170 = &v149 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v216 = (&v149 - v38);
  MEMORY[0x28223BE20](v39);
  v214 = &v149 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v149 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v149 - v45;
  v210 = type metadata accessor for ComponentHeightFactory.ComponentHeight(0);
  MEMORY[0x28223BE20](v210);
  v211 = (&v149 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v48);
  v50 = (&v149 - v49);
  MEMORY[0x28223BE20](v51);
  v182 = &v149 - v52;
  v217 = *a2;
  v53 = *(v217 + 16);
  v213 = type metadata accessor for ShelfView.Grid(0);
  v54 = v213[5];
  v215 = a2;
  v181 = v54;
  sub_24E60169C(a2 + v54, v46, &unk_27F23A680, &unk_24F981ED0);
  v55 = *(v35 + 48);
  sub_24E60169C(v46, v43, &unk_27F23A690, &qword_24F982880);
  v209 = v35;
  v56 = *(v35 + 48);
  v57 = v55;
  sub_24E60169C(&v46[v55], &v43[v56], &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v43, &unk_27F23A680, &unk_24F981ED0);
  if (v53 > 73)
  {
    if (v53 != 74)
    {
      v58 = v181;
      v59 = v182;
      if (v53 == 87 || v53 == 102)
      {
        *v50 = 0;
      }

      goto LABEL_12;
    }

    v60 = 0x407D200000000000;
LABEL_11:
    *v50 = v60;
    v58 = v181;
    v59 = v182;
    goto LABEL_12;
  }

  if (v53 == 11)
  {
    v60 = 0x4046000000000000;
    goto LABEL_11;
  }

  v58 = v181;
  v59 = v182;
  if (v53 == 58)
  {
    *v50 = 0x407D200000000000;
  }

LABEL_12:
  swift_storeEnumTagMultiPayload();
  sub_24F178C84(v50, v59, type metadata accessor for ComponentHeightFactory.ComponentHeight);
  sub_24E601704(&v46[v57], &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v46, &unk_27F23A690, &qword_24F982880);
  v61 = v213[6];
  memcpy(v228, v215 + v61, 0x188uLL);
  v62 = v211;
  sub_24F1765BC(v59, v211, type metadata accessor for ComponentHeightFactory.ComponentHeight);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v69 = *v62;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v64 = v167;
    v65 = v168;
    v66 = v62;
    v67 = v169;
    (*(v168 + 32))(v167, v66, v169);
    sub_24E8B9768(v228, v227);
    sub_24F922308();
    v69 = v68;
    (*(v65 + 8))(v64, v67);
    sub_24F177548(v228);
LABEL_16:
    LODWORD(v211) = 0;
    v210 = v69;
    goto LABEL_18;
  }

  v210 = 0;
  LODWORD(v211) = 1;
LABEL_18:
  sub_24F17665C(v59, type metadata accessor for ComponentHeightFactory.ComponentHeight);
  v70 = v215;
  v71 = v214;
  sub_24E60169C(v215 + v58, v214, &unk_27F23A680, &unk_24F981ED0);
  v72 = v209;
  v73 = (v71 + *(v209 + 48));
  memcpy(v227, v70 + v61, sizeof(v227));
  v74 = v213;
  v182 = v213[7];
  sub_24F9218B8();
  sub_24F9218C8();
  v75 = *(v70 + v74[11]);
  v76 = v71;
  v77 = v216;
  sub_24E60169C(v76, v216, &unk_27F23A690, &qword_24F982880);
  v78 = v77 + *(v72 + 48);
  v213 = v73;
  sub_24E60169C(v73, v78, &unk_27F23A690, &qword_24F982880);
  __swift_project_boxed_opaque_existential_1(&v224, *(&v225 + 1));
  *&v223[0] = swift_getDynamicType();
  *(&v223[0] + 1) = v226;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA10, &qword_24F94F420);
  v79 = sub_24F92B188();
  if (qword_27F20FE48 != -1)
  {
    v147 = v79;
    v148 = v80;
    swift_once();
    v79 = v147;
    v80 = v148;
  }

  v81 = off_27F21A9F8;
  if (!*(off_27F21A9F8 + 2))
  {

    goto LABEL_28;
  }

  v82 = sub_24E76D644(v79, v80);
  v84 = v83;

  if ((v84 & 1) == 0 || !*(v81[7] + 16 * v82))
  {
LABEL_28:
    LOBYTE(v218) = *(v217 + 16);
    sub_24E615E00(&v224, &v218 + 8);
    switch(v218)
    {
      case 1u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
        type metadata accessor for Lockup(0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_41;
        }

        *(&v223[2] + 1) = type metadata accessor for GameLockup(0);
        *&v223[3] = sub_24F178F7C(&qword_27F216AD0, type metadata accessor for GameLockup, &unk_24F943740);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v223[1]);

        sub_24E68E90C(v106, boxed_opaque_existential_1);
        type metadata accessor for GSKComponentContentBuilder(0);
        sub_24F178F7C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
        *&v223[0] = sub_24F923598();
        BYTE8(v223[0]) = v107 & 1;
        sub_24F0A10E8(v223, v165);
        swift_storeEnumTagMultiPayload();
        sub_24E66C1E0();
        sub_24E66C34C();
        v108 = v166;
        sub_24F924E28();
        sub_24E60169C(v108, v179, &qword_27F215B38, &qword_24F940E20);
        swift_storeEnumTagMultiPayload();
        sub_24E66C2C0();
        sub_24E66C4B8();
        v102 = v176;
        sub_24F924E28();

        sub_24E601704(v108, &qword_27F215B38, &qword_24F940E20);
        sub_24E88F154(v223);
        break;
      case 0xDu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
        type metadata accessor for RibbonBar(0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_41;
        }

        *v174 = *&v223[0];
        swift_storeEnumTagMultiPayload();
        sub_24E66C544();
        sub_24E66C598();

        v104 = v175;
        sub_24F924E28();
        sub_24E60169C(v104, v179, &qword_27F215B70, &qword_24F940E40);
        swift_storeEnumTagMultiPayload();
        sub_24E66C2C0();
        sub_24E66C4B8();
        v102 = v176;
        sub_24F924E28();

        sub_24E601704(v104, &qword_27F215B70, &qword_24F940E40);
        break;
      case 0x5Du:
        v90 = v152;
        v91 = v150;
        *&v150[*(v152 + 48)] = v75;
        *v91 = swift_getKeyPath();
        *(v91 + 8) = 0;
        v92 = *(v90 + 44);
        *(v91 + v92) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
        swift_storeEnumTagMultiPayload();
        v93 = qword_27F211238;

        if (v93 != -1)
        {
          swift_once();
        }

        v94 = type metadata accessor for MediaCard(0);
        __swift_project_value_buffer(v94, qword_27F39E520);
        v95 = sub_24E602068(&qword_27F215B60, &qword_27F215B58, &qword_24F9FB190, &unk_24F960108);
        v96 = v151;
        sub_24F921D38();
        sub_24E601704(v91, &qword_27F215B58, &qword_24F9FB190);
        v97 = v158;
        sub_24F924208();
        *&v223[0] = v90;
        *(&v223[0] + 1) = v95;
        swift_getOpaqueTypeConformance2();
        v99 = v155;
        v98 = v156;
        sub_24F926AE8();
        (*(v160 + 8))(v97, v161);
        (*(v153 + 8))(v96, v99);
        KeyPath = swift_getKeyPath();
        v101 = *(v217 + 17);
        v102 = v176;
        if (v101 > 0x36)
        {
          if (v101 == 55 || v101 == 99)
          {
            v103 = 2;
LABEL_50:
            v115 = v154;
            (*(v157 + 32))(v154, v98, v159);
            v116 = v162;
            v117 = v115 + *(v163 + 36);
            *v117 = KeyPath;
            *(v117 + 8) = v103;
            sub_24E6009C8(v115, v116, &qword_27F215B48, &qword_24F940E28);
            sub_24E60169C(v116, v165, &qword_27F215B48, &qword_24F940E28);
            swift_storeEnumTagMultiPayload();
            sub_24E66C1E0();
            sub_24E66C34C();
            v118 = v166;
            sub_24F924E28();
            sub_24E60169C(v118, v179, &qword_27F215B38, &qword_24F940E20);
            swift_storeEnumTagMultiPayload();
            sub_24E66C2C0();
            sub_24E66C4B8();
            sub_24F924E28();
            sub_24E601704(v118, &qword_27F215B38, &qword_24F940E20);
            sub_24E601704(v116, &qword_27F215B48, &qword_24F940E28);
            break;
          }
        }

        else
        {
          v103 = 0;
          if (v101 == 1 || v101 == 54)
          {
            goto LABEL_50;
          }
        }

        v103 = 3;
        goto LABEL_50;
      default:
LABEL_41:
        v109 = v170;
        sub_24E60169C(v216, v170, &unk_27F23A680, &unk_24F981ED0);
        v110 = *(v209 + 48);
        memcpy(v223, v227, 0x188uLL);
        v111 = v171;
        sub_24EC73A08(v217, v109, &v109[v110], v223, &v224, v75, v171);
        sub_24E601704(&v109[v110], &unk_27F23A690, &qword_24F982880);
        sub_24E601704(v109, &unk_27F23A690, &qword_24F982880);
        sub_24E60169C(v111, v174, &qword_27F215B88, &qword_24F940E48);
        swift_storeEnumTagMultiPayload();
        sub_24E66C544();
        sub_24E66C598();
        v112 = v175;
        sub_24F924E28();
        sub_24E60169C(v112, v179, &qword_27F215B70, &qword_24F940E40);
        swift_storeEnumTagMultiPayload();
        sub_24E66C2C0();
        sub_24E66C4B8();
        v102 = v176;
        sub_24F924E28();
        v113 = v112;
        v114 = v216;
        sub_24E601704(v113, &qword_27F215B70, &qword_24F940E40);
        sub_24E601704(v111, &qword_27F215B88, &qword_24F940E48);
        sub_24E601704(&v218, &qword_27F22C960, &unk_24F9912E0);
LABEL_52:
        sub_24E60169C(v102, v185, &qword_27F215B28, &qword_24F940E18);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B00, &qword_24F940E08);
        sub_24E66C128();
        sub_24E66C234();
        v89 = v186;
        sub_24F924E28();
        sub_24E601704(v102, &qword_27F215B28, &qword_24F940E18);
        sub_24E601704(v114, &unk_27F23A680, &unk_24F981ED0);
        __swift_destroy_boxed_opaque_existential_1(&v224);
        goto LABEL_53;
    }

    __swift_destroy_boxed_opaque_existential_1(&v218 + 1);
    v114 = v216;
    goto LABEL_52;
  }

  sub_24E615E00(&v224, &v219);
  type metadata accessor for GSKComponentContentBuilder(0);
  sub_24F178F7C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
  *&v218 = sub_24F923598();
  BYTE8(v218) = v85 & 1;
  v86 = swift_getKeyPath();
  v87 = *(v217 + 16);
  v88 = 3;
  if (v87 > 0x36)
  {
    v89 = v186;
    if (v87 == 55 || v87 == 99)
    {
      v88 = 2;
    }
  }

  else
  {
    v89 = v186;
    if (v87 == 1 || v87 == 54)
    {
      v88 = 0;
    }
  }

  v223[0] = v218;
  v223[1] = v219;
  v223[2] = v220;
  *&v223[3] = v221;
  *(&v223[3] + 1) = v86;
  LOBYTE(v223[4]) = v88;
  sub_24E60169C(v223, v185, &qword_27F215B00, &qword_24F940E08);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B00, &qword_24F940E08);
  sub_24E66C128();
  sub_24E66C234();
  sub_24F924E28();
  sub_24E601704(v223, &qword_27F215B00, &qword_24F940E08);
  sub_24E601704(v216, &unk_27F23A680, &unk_24F981ED0);
  __swift_destroy_boxed_opaque_existential_1(&v224);
LABEL_53:
  v119 = v187;
  sub_24E6009C8(v89, v187, &qword_27F215AE0, &qword_24F940DF8);
  sub_24E601704(v213, &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v214, &unk_27F23A690, &qword_24F982880);
  v120 = sub_24F9218B8();
  MEMORY[0x28223BE20](v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AE8, &qword_24F940E00);
  v122 = sub_24E66C09C();
  v123 = sub_24E6695B8();
  v124 = sub_24E66DAE0();
  v125 = v188;
  v126 = v189;
  sub_24F926B08();
  sub_24E601704(v119, &qword_27F215AE0, &qword_24F940DF8);
  __swift_destroy_boxed_opaque_existential_1(v223);
  v127 = sub_24F926C28();
  v216 = &v149;
  MEMORY[0x28223BE20](v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D98, &qword_24F940F18);
  *&v223[0] = v125;
  *(&v223[0] + 1) = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  *&v223[1] = v121;
  *(&v223[1] + 1) = v122;
  *&v223[2] = v123;
  *(&v223[2] + 1) = v124;
  swift_getOpaqueTypeConformance2();
  sub_24E669340();
  sub_24F177F84();
  v129 = v192;
  v128 = v193;
  sub_24F926B08();

  (*(v191 + 8))(v126, v128);
  sub_24F927618();
  sub_24F9242E8();
  v130 = v196;
  (*(v194 + 32))(v196, v129, v195);
  v131 = (v130 + *(v190 + 36));
  v132 = v223[3];
  v133 = v223[5];
  v134 = v223[6];
  v131[4] = v223[4];
  v131[5] = v133;
  v131[6] = v134;
  v135 = v223[1];
  *v131 = v223[0];
  v131[1] = v135;
  v131[2] = v223[2];
  v131[3] = v132;
  sub_24F927618();
  sub_24F9238C8();
  v136 = v197;
  sub_24E6009C8(v130, v197, &qword_27F23AA78, &qword_24F9CF420);
  v137 = (v136 + *(v198 + 36));
  v138 = v219;
  *v137 = v218;
  v137[1] = v138;
  v137[2] = v220;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA60, &qword_24F9CF418);
  sub_24F177D78();
  sub_24F09B68C();
  sub_24F178094();
  v139 = v199;
  sub_24F926B08();
  sub_24E601704(v136, &qword_27F23AA58, &qword_24F9CF410);
  v140 = swift_getKeyPath();
  v141 = v203;
  v142 = &v203[*(v202 + 36)];
  v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388A0, &unk_24F9C5340) + 28);
  v144 = sub_24F9218F8();
  (*(*(v144 - 8) + 16))(v142 + v143, v204, v144);
  *v142 = v140;
  (*(v200 + 32))(v141, v139, v201);
  *&v224 = 0;
  *(&v224 + 1) = 0xE000000000000000;
  v222[0] = *(v217 + 16);
  sub_24F92CA38();
  v224 = 0u;
  v225 = 0u;
  memset(v222, 0, sizeof(v222));
  v145 = v205;
  sub_24F929878();

  sub_24E601704(v222, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v224, &qword_27F2129B0, &unk_24F945320);
  sub_24F177C3C();
  sub_24F925EE8();
  (*(v206 + 8))(v145, v208);
  return sub_24E601704(v141, &qword_27F23AA48, &qword_24F9CF408);
}

double sub_24F1746A4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 16);
  type metadata accessor for ShelfView.Grid(0);
  sub_24F927618();
  sub_24F9238C8();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9 & 1;
  result = *&v10;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_24F174764@<X0>(_BYTE *a1@<X8>)
{
  if ((*v1 | 2) == 0x12)
  {
    result = sub_24F924E28();
    v4 = v5;
  }

  else
  {
    result = sub_24F924E28();
    v4 = v6;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24F174804@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9D0, &qword_24F9CF398);
  v3 = *(v2 - 8);
  v55 = v2;
  v56 = v3;
  MEMORY[0x28223BE20](v2);
  v52 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v9 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v11 = &v51 - v10;
  v12 = type metadata accessor for ShelfView.ShelfDivider(0);
  v13 = (v1 + *(v12 + 28));
  v14 = v13[3];
  v15 = v13[4];
  v53 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v58 = *v1;
  type metadata accessor for Shelf(0);

  sub_24F928A78();
  sub_24E60169C(v1 + *(v12 + 20), v8, &unk_27F23A680, &unk_24F981ED0);
  v16 = *(v6 + 56);
  v17 = (*(v15 + 32))(v11, v8, &v8[v16], v14, v15);
  (*(v9 + 8))(v11, v54);
  sub_24E601704(&v8[v16], &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v8, &unk_27F23A690, &qword_24F982880);
  if (v17)
  {
    v18 = v52;
    sub_24F9271E8();
    v19 = sub_24F925818();
    sub_24F174BD4();
    sub_24F923318();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E08, &qword_24F96F880) + 36);
    *v28 = v19;
    *(v28 + 8) = v21;
    *(v28 + 16) = v23;
    *(v28 + 24) = v25;
    *(v28 + 32) = v27;
    *(v28 + 40) = 0;
    v29 = sub_24F925838();
    sub_24F923318();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9D8, &qword_24F9CF3A0) + 36);
    *v38 = v29;
    *(v38 + 8) = v31;
    *(v38 + 16) = v33;
    *(v38 + 24) = v35;
    *(v38 + 32) = v37;
    *(v38 + 40) = 0;
    v39 = sub_24F925858();
    sub_24F923318();
    v40 = v55;
    v41 = v18 + *(v55 + 36);
    *v41 = v39;
    *(v41 + 8) = v42;
    *(v41 + 16) = v43;
    *(v41 + 24) = v44;
    *(v41 + 32) = v45;
    *(v41 + 40) = 0;
    v46 = v57;
    sub_24E6009C8(v18, v57, &qword_27F23A9D0, &qword_24F9CF398);
    v47 = 0;
    v48 = v46;
    v49 = v40;
  }

  else
  {
    v47 = 1;
    v48 = v57;
    v49 = v55;
  }

  return (*(v56 + 56))(v48, v47, 1, v49);
}

double sub_24F174BD4()
{
  v1 = v0;
  v74 = sub_24F924848();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F925218();
  v100 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v71 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v96);
  v80 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v95 = &v70 - v11;
  MEMORY[0x28223BE20](v12);
  v79 = (&v70 - v13);
  MEMORY[0x28223BE20](v14);
  v94 = &v70 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v70 - v20);
  v92 = sub_24F923E98();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v23 = (&v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = type metadata accessor for PageEnvironment(0);
  MEMORY[0x28223BE20](v98);
  v99 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  MEMORY[0x28223BE20](v84);
  v26 = &v70 - v25;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v28 = &v70 - v27;
  v29 = type metadata accessor for ShelfView.ShelfDivider(0);
  sub_24E615E00(v1 + *(v29 + 28), &v104);
  v82 = v106;
  v83 = v105;
  v81 = __swift_project_boxed_opaque_existential_1(&v104, v105);
  v101 = *v1;
  type metadata accessor for Shelf(0);

  v85 = v28;
  sub_24F928A78();
  v30 = v1 + *(v29 + 20);
  v89 = v26;
  sub_24E60169C(v30, v26, &unk_27F23A680, &unk_24F981ED0);
  v88 = v23;
  sub_24F769788(v23);
  v97 = v29;
  v91 = v1;
  sub_24F769764(v21);
  v31 = v93;
  v32 = v100;
  v33 = *(v100 + 104);
  v77 = *MEMORY[0x277CE0558];
  v76 = v33;
  v33(v18);
  v75 = *(v32 + 56);
  v75(v18, 0, 1, v3);
  v34 = *(v96 + 48);
  sub_24E60169C(v21, v31, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v18, v31 + v34, &qword_27F215598, &qword_24F945EF0);
  v35 = *(v32 + 48);
  if (v35(v31, 1, v3) == 1)
  {
    sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
    if (v35(v31 + v34, 1, v3) == 1)
    {
      sub_24E601704(v31, &qword_27F215598, &qword_24F945EF0);
      v78 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24E60169C(v31, v94, &qword_27F215598, &qword_24F945EF0);
  if (v35(v31 + v34, 1, v3) == 1)
  {
    sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
    (*(v100 + 8))(v94, v3);
LABEL_6:
    sub_24E601704(v31, &unk_27F254F20, &qword_24F940790);
    v78 = 0;
    goto LABEL_8;
  }

  v36 = v71;
  (*(v100 + 32))(v71, v31 + v34, v3);
  sub_24F178F7C(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v78 = sub_24F92AFF8();
  v37 = *(v100 + 8);
  v37(v36, v3);
  sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
  v37(v94, v3);
  sub_24E601704(v93, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v38 = v91;
  v39 = v79;
  sub_24F769764(v79);
  v40 = v95;
  v76(v95, v77, v3);
  v75(v40, 0, 1, v3);
  v41 = *(v96 + 48);
  v42 = v80;
  sub_24E60169C(v39, v80, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v40, v42 + v41, &qword_27F215598, &qword_24F945EF0);
  if (v35(v42, 1, v3) == 1)
  {
    sub_24E601704(v40, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v39, &qword_27F215598, &qword_24F945EF0);
    if (v35(v42 + v41, 1, v3) == 1)
    {
      sub_24E601704(v42, &qword_27F215598, &qword_24F945EF0);
      LODWORD(v43) = 1;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v44 = v70;
  sub_24E60169C(v42, v70, &qword_27F215598, &qword_24F945EF0);
  if (v35(v42 + v41, 1, v3) == 1)
  {
    sub_24E601704(v95, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v39, &qword_27F215598, &qword_24F945EF0);
    (*(v100 + 8))(v44, v3);
LABEL_13:
    sub_24E601704(v42, &unk_27F254F20, &qword_24F940790);
    LODWORD(v43) = 0;
    goto LABEL_15;
  }

  v45 = v100;
  v46 = v39;
  v47 = v71;
  (*(v100 + 32))(v71, v42 + v41, v3);
  sub_24F178F7C(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  LODWORD(v43) = sub_24F92AFF8();
  v48 = *(v45 + 8);
  v48(v47, v3);
  sub_24E601704(v95, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v46, &qword_27F215598, &qword_24F945EF0);
  v48(v44, v3);
  sub_24E601704(v42, &qword_27F215598, &qword_24F945EF0);
LABEL_15:
  v49 = v97;
  sub_24F7699B0(&v99[*(v98 + 28)]);
  v50 = v38 + *(v49 + 44);
  v51 = *(v50 + 8);
  v52 = *(v50 + 24);
  if (*(v50 + 32) == 1)
  {
    v53 = *(v50 + 8);
    v54 = *(v50 + 24);
  }

  else
  {
    v55 = *v50;
    v56 = *(v50 + 16);

    sub_24F92BDC8();
    v57 = sub_24F9257A8();
    LODWORD(v100) = v43;
    v58 = v57;
    sub_24F921FD8();

    v59 = v72;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v55, v51, v56, v52, 0);
    v60 = *(v73 + 8);
    v61 = v74;
    v60(v59, v74);
    v53 = v102;

    sub_24F92BDC8();
    v43 = sub_24F9257A8();
    sub_24F921FD8();

    LOBYTE(v43) = v100;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v55, v51, v56, v52, 0);
    v60(v59, v61);
    v54 = v103;
  }

  v62 = *(v84 + 48);
  v63 = v53 + v54 > 0.0;
  v64 = v99;
  (*(v90 + 32))(v99, v88, v92);
  v65 = v98;
  *(v64 + *(v98 + 20)) = v78 & 1;
  *(v64 + *(v65 + 24)) = v43 & 1;
  *(v64 + *(v65 + 32)) = v63;
  v66 = v89;
  v67 = v85;
  v68 = (*(v82 + 40))(v85, v89, &v89[v62], v64, v83);
  sub_24F17665C(v64, type metadata accessor for PageEnvironment);
  (*(v86 + 8))(v67, v87);
  sub_24E601704(v66 + v62, &unk_27F23A690, &qword_24F982880);
  sub_24E601704(v66, &unk_27F23A690, &qword_24F982880);
  __swift_destroy_boxed_opaque_existential_1(&v104);
  return v68;
}

uint64_t sub_24F1759EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AE8, &qword_24F940E00) + 36);
  sub_24E615E00(a2, v6);
  *(v6 + 40) = swift_getKeyPath();
  *(v6 + 48) = 0;
  return sub_24E60169C(a1, a3, &qword_27F215AE0, &qword_24F940DF8);
}

uint64_t sub_24F175A74@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v43 = sub_24F926CE8();
  if (qword_27F2119B8 != -1)
  {
LABEL_16:
    swift_once();
  }

  v9 = sub_24F924EC8();
  __swift_project_value_buffer(v9, qword_27F255A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA18, &qword_24F9CF3E0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA10, &qword_24F9CF3D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA08, &qword_24F9CF3D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA00, &qword_24F9CF3C8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D8, &qword_24F9C5370);
  v12 = sub_24F178254();
  v13 = sub_24F09D94C();
  *v69 = MEMORY[0x277CE1428];
  *&v69[8] = v11;
  *&v69[16] = v12;
  *&v69[24] = MEMORY[0x277CE1410];
  *&v69[32] = MEMORY[0x277CE1410];
  *&v69[40] = v13;
  swift_getOpaqueTypeConformance2();
  *&v68 = v10;
  *(&v68 + 1) = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24F9263D8();
  v14 = sub_24F927618();
  v16 = v15;
  v17 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AAD8, &qword_24F9CF438) + 36));
  *v17 = sub_24F178C7C;
  v17[1] = v43;
  v17[2] = v14;
  v17[3] = v16;
  v18 = sub_24F927618();
  v43 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226848, &unk_24F9FAA20);
  v20 = swift_allocObject();
  *&v68 = 0x203A736D657469;
  *(&v68 + 1) = 0xE700000000000000;
  __src[0] = a2;
  v21 = sub_24F92CD88();
  MEMORY[0x253050C20](v21);

  v20[4] = 0x203A736D657469;
  v20[5] = 0xE700000000000000;
  v20[6] = a3;
  v20[7] = a4;

  v22 = 0;
  v20[8] = sub_24F496AF0();
  v20[9] = v23;
  v24 = MEMORY[0x277D84F90];
  v25 = 3;
  v26 = a6;
LABEL_3:
  if (v22 > 3)
  {
    v25 = v22;
  }

  v27 = v25 + 1;
  v28 = 16 * v22 + 40;
  while (v22 != 3)
  {
    if (v27 == ++v22)
    {
      __break(1u);
      goto LABEL_16;
    }

    v29 = v28 + 16;
    v30 = *(v20 + v28);
    v28 += 16;
    if (v30)
    {
      v31 = v18;
      v32 = *(v20 + v29 - 24);

      a6 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_24E615CF4(0, *(v24 + 2) + 1, 1, v24);
      }

      v34 = *(v24 + 2);
      v33 = *(v24 + 3);
      if (v34 >= v33 >> 1)
      {
        v24 = sub_24E615CF4((v33 > 1), v34 + 1, 1, v24);
      }

      *(v24 + 2) = v34 + 1;
      v35 = &v24[16 * v34];
      *(v35 + 4) = v32;
      *(v35 + 5) = v30;
      v26 = a6;
      v18 = v31;
      v25 = 3;
      goto LABEL_3;
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v68 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
  v36 = sub_24F92AF68();
  v38 = v37;

  v39 = sub_24F9249A8();
  v47[0] = 0;
  sub_24F496E4C(a5, v36, v38, &v68);
  v62 = *&v69[176];
  v63 = *&v69[192];
  v58 = *&v69[112];
  v59 = *&v69[128];
  v60 = *&v69[144];
  v61 = *&v69[160];
  v54 = *&v69[48];
  v55 = *&v69[64];
  v56 = *&v69[80];
  v57 = *&v69[96];
  v50 = v68;
  v51 = *v69;
  v52 = *&v69[16];
  v53 = *&v69[32];
  v65[12] = *&v69[176];
  v65[13] = *&v69[192];
  v65[7] = *&v69[96];
  v65[8] = *&v69[112];
  v65[9] = *&v69[128];
  v65[11] = *&v69[160];
  v65[10] = *&v69[144];
  v65[4] = *&v69[48];
  v65[5] = *&v69[64];
  v65[6] = *&v69[80];
  v65[0] = v68;
  v65[1] = *v69;
  v64 = *&v69[208];
  v66 = *&v69[208];
  v65[2] = *&v69[16];
  v65[3] = *&v69[32];
  sub_24E60169C(&v50, __src, &qword_27F23AB38, &qword_24F9CF470);
  sub_24E601704(v65, &qword_27F23AB38, &qword_24F9CF470);

  *&v48[183] = v61;
  *&v48[199] = v62;
  *&v48[215] = v63;
  *&v48[119] = v57;
  *&v48[135] = v58;
  *&v48[151] = v59;
  *&v48[167] = v60;
  *&v48[55] = v53;
  *&v48[71] = v54;
  *&v48[87] = v55;
  *&v48[103] = v56;
  *&v48[7] = v50;
  *&v48[23] = v51;
  *&v48[231] = v64;
  *&v48[39] = v52;
  sub_24F927618();
  sub_24F9238C8();
  *&v49[6] = v75;
  *&v49[22] = v76;
  *&v49[38] = v77;
  *(&__src[24] + 1) = *&v48[176];
  *(&__src[26] + 1) = *&v48[192];
  *(&__src[28] + 1) = *&v48[208];
  *(&__src[29] + 2) = *&v48[217];
  *(&__src[16] + 1) = *&v48[112];
  *(&__src[18] + 1) = *&v48[128];
  *(&__src[20] + 1) = *&v48[144];
  *(&__src[22] + 1) = *&v48[160];
  *(&__src[8] + 1) = *&v48[48];
  *(&__src[10] + 1) = *&v48[64];
  *(&__src[12] + 1) = *&v48[80];
  *(&__src[14] + 1) = *&v48[96];
  *(&__src[2] + 1) = *v48;
  *(&__src[4] + 1) = *&v48[16];
  *(&__src[6] + 1) = *&v48[32];
  *(&__src[33] + 2) = *&v49[16];
  *(&__src[35] + 2) = *&v49[32];
  __src[0] = v39;
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  *(&__src[31] + 2) = *v49;
  __src[37] = *(&v77 + 1);
  __src[38] = v18;
  __src[39] = v43;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AAC0, &qword_24F9CF430);
  memcpy((v26 + *(v40 + 36)), __src, 0x140uLL);
  *&v69[177] = *&v48[176];
  *&v69[193] = *&v48[192];
  *&v69[209] = *&v48[208];
  *&v69[218] = *&v48[217];
  *&v69[113] = *&v48[112];
  *&v69[129] = *&v48[128];
  *&v69[145] = *&v48[144];
  *&v69[161] = *&v48[160];
  *&v69[49] = *&v48[48];
  *&v69[65] = *&v48[64];
  *&v69[81] = *&v48[80];
  *&v69[97] = *&v48[96];
  *&v69[1] = *v48;
  *&v69[17] = *&v48[16];
  *&v69[33] = *&v48[32];
  v71 = *&v49[16];
  *v72 = *&v49[32];
  v68 = v39;
  v69[0] = 0;
  v70 = *v49;
  *&v72[14] = *&v49[46];
  v73 = v18;
  v74 = v43;
  sub_24E60169C(__src, v47, &qword_27F2387C8, &qword_24F9C5198);
  return sub_24E601704(&v68, &qword_27F2387C8, &qword_24F9C5198);
}

unint64_t sub_24F176268()
{
  result = qword_27F23A988;
  if (!qword_27F23A988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AA8, &unk_24F940DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215968, &unk_24F9A8BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215970, &qword_24F940D30);
    sub_24E66B7FC();
    sub_24E6695B8();
    sub_24E66BF00();
    swift_getOpaqueTypeConformance2();
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A988);
  }

  return result;
}

void sub_24F176378(id a1, void *a2, void *a3, void *a4, int a5)
{
  if ((~a5 & 0xFCFC) != 0)
  {
    sub_24E951FEC(a1, a2, a3, a4, a5);
  }
}

double sub_24F17638C(id a1, void *a2, void *a3, void *a4, int a5)
{
  if ((~a5 & 0xFCFC) != 0)
  {
    return sub_24E951F10(a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t objectdestroyTm_55()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F9234D8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F176520(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EE895A8(a1, v4);
}

uint64_t sub_24F1765BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F17665C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F176700(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[12]];

  return v16(v17, a2, v15);
}

char *sub_24F1768F8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[12]];

  return v16(v17, a2, a2, v15);
}

void sub_24F176ADC(uint64_t a1)
{
  type metadata accessor for Shelf(319);
  if (v1 <= 0x3F)
  {
    sub_24F15B198(319);
    if (v2 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F23A968, &protocol descriptor for PageGridProvider);
      if (v3 <= 0x3F)
      {
        sub_24F16DB84(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24E684120(319);
          if (v5 <= 0x3F)
          {
            sub_24E746BEC(319, &qword_27F254DF0, MEMORY[0x277CDF310]);
            if (v6 <= 0x3F)
            {
              sub_24F16DB84(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
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

uint64_t sub_24F176C60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_24F176CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F176D74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F923E98();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F176EB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F923E98();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F176FE8(uint64_t a1)
{
  type metadata accessor for Shelf(319);
  if (v1 <= 0x3F)
  {
    sub_24F15B198(319);
    if (v2 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F23A968, &protocol descriptor for PageGridProvider);
      if (v3 <= 0x3F)
      {
        sub_24E8EFB54(319, &qword_27F23A970, &protocol descriptor for PageGridMapper);
        if (v4 <= 0x3F)
        {
          sub_24F923E98();
          if (v5 <= 0x3F)
          {
            sub_24F928FD8();
            if (v6 <= 0x3F)
            {
              sub_24E746BEC(319, &qword_27F215590, MEMORY[0x277D85048]);
              if (v7 <= 0x3F)
              {
                sub_24E746BEC(319, &qword_27F254DF0, MEMORY[0x277CDF310]);
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
}

uint64_t sub_24F177168(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F177238(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F1772E8(uint64_t a1)
{
  type metadata accessor for Shelf(319);
  if (v1 <= 0x3F)
  {
    sub_24F15B198(319);
    if (v2 <= 0x3F)
    {
      sub_24E746BEC(319, &qword_27F215590, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        sub_24E746BEC(319, &qword_27F254DF0, MEMORY[0x277CDF310]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F1773C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A978, &qword_24F9CEFD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AA8, &unk_24F940DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215968, &unk_24F9A8BE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215970, &qword_24F940D30);
  sub_24E66B7FC();
  sub_24E6695B8();
  sub_24E66BF00();
  swift_getOpaqueTypeConformance2();
  sub_24E669340();
  sub_24F176268();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F17759C()
{
  v1 = type metadata accessor for ShelfView.Grid(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = sub_24F9218F8();
  v17 = *(v3 - 8);
  v18 = v3;
  v4 = *(v17 + 80);
  v19 = v0;
  v5 = v0 + ((v2 + 16) & ~v2);

  v6 = v5 + v1[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0) + 48);
  if (!v9(v6 + v10, 1, v7))
  {
    (*(v8 + 8))(v6 + v10, v7);
  }

  v11 = (((v2 + 16) & ~v2) + v16 + v4) & ~v4;

  __swift_destroy_boxed_opaque_existential_1((v5 + v1[7]));
  __swift_destroy_boxed_opaque_existential_1((v5 + v1[8]));
  v12 = v1[10];
  v13 = sub_24F923E98();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  sub_24E62A5EC(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_24E62A5EC(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v14 = v5 + v1[14];
  sub_24E669FC4(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32));
  (*(v17 + 8))(v19 + v11, v18);

  return swift_deallocObject();
}

uint64_t sub_24F177880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShelfView.Grid(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24F9218F8() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_24F17280C(a1, (v2 + v6), v9, a2);
}

uint64_t sub_24F177964()
{
  v1 = type metadata accessor for ShelfView.Grid(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0) + 48);
  if (!v6(v3 + v7, 1, v4))
  {
    (*(v5 + 8))(v3 + v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[7]));
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[8]));
  v8 = v1[10];
  v9 = sub_24F923E98();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  sub_24E62A5EC(*(v2 + v1[12]), *(v2 + v1[12] + 8));
  sub_24E62A5EC(*(v2 + v1[13]), *(v2 + v1[13] + 8));
  v10 = v2 + v1[14];
  sub_24E669FC4(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));

  return swift_deallocObject();
}

double sub_24F177BBC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfView.Grid(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F1746A4(v4, a1);
}

unint64_t sub_24F177C3C()
{
  result = qword_27F23AA50;
  if (!qword_27F23AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA48, &qword_24F9CF408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA58, &qword_24F9CF410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA60, &qword_24F9CF418);
    sub_24F177D78();
    sub_24F09B68C();
    sub_24F178094();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F238898, &qword_27F2388A0, &unk_24F9C5340, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA50);
  }

  return result;
}

unint64_t sub_24F177D78()
{
  result = qword_27F23AA68;
  if (!qword_27F23AA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA58, &qword_24F9CF410);
    sub_24F177E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA68);
  }

  return result;
}

unint64_t sub_24F177E04()
{
  result = qword_27F23AA70;
  if (!qword_27F23AA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA78, &qword_24F9CF420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA80, &qword_24F9CF428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215D98, &qword_24F940F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE0, &qword_24F940DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE8, &qword_24F940E00);
    sub_24E66C09C();
    sub_24E6695B8();
    sub_24E66DAE0();
    swift_getOpaqueTypeConformance2();
    sub_24E669340();
    sub_24F177F84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA70);
  }

  return result;
}

unint64_t sub_24F177F84()
{
  result = qword_27F23AA88;
  if (!qword_27F23AA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215D98, &qword_24F940F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE0, &qword_24F940DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE8, &qword_24F940E00);
    sub_24E66C09C();
    sub_24E6695B8();
    sub_24E66DAE0();
    swift_getOpaqueTypeConformance2();
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA88);
  }

  return result;
}

unint64_t sub_24F178094()
{
  result = qword_27F23AA90;
  if (!qword_27F23AA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA60, &qword_24F9CF418);
    sub_24F177D78();
    sub_24F178120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA90);
  }

  return result;
}

unint64_t sub_24F178120()
{
  result = qword_27F23AA98;
  if (!qword_27F23AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA98);
  }

  return result;
}

unint64_t sub_24F178174()
{
  result = qword_27F23AAA0;
  if (!qword_27F23AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA38, &qword_24F9CF400);
    sub_24F178200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAA0);
  }

  return result;
}

unint64_t sub_24F178200()
{
  result = qword_27F23AAA8;
  if (!qword_27F23AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAA8);
  }

  return result;
}

unint64_t sub_24F178254()
{
  result = qword_27F23AAB8;
  if (!qword_27F23AAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA00, &qword_24F9CF3C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A9F8, &qword_24F9CF3C0);
    type metadata accessor for Shelf(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA30, &qword_24F9CF3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA38, &qword_24F9CF400);
    sub_24F178F7C(&qword_27F23AA40, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA48, &qword_24F9CF408);
    sub_24F177C3C();
    swift_getOpaqueTypeConformance2();
    sub_24F178174();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAB8);
  }

  return result;
}

unint64_t sub_24F178428()
{
  result = qword_27F23AAC8;
  if (!qword_27F23AAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AAC0, &qword_24F9CF430);
    sub_24F1784E0();
    sub_24E602068(&qword_27F2387E0, &qword_27F2387C8, &qword_24F9C5198, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAC8);
  }

  return result;
}

unint64_t sub_24F1784E0()
{
  result = qword_27F23AAD0;
  if (!qword_27F23AAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AAD8, &qword_24F9CF438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA18, &qword_24F9CF3E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA10, &qword_24F9CF3D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA08, &qword_24F9CF3D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA00, &qword_24F9CF3C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D8, &qword_24F9C5370);
    sub_24F178254();
    sub_24F09D94C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2387D8, &qword_27F2387C0, &qword_24F9C5190, MEMORY[0x277CE07F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAD0);
  }

  return result;
}

unint64_t sub_24F1786DC()
{
  result = qword_27F23AAE0;
  if (!qword_27F23AAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA28, &qword_24F9CF3F0);
    sub_24F178768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAE0);
  }

  return result;
}

unint64_t sub_24F178768()
{
  result = qword_27F23AAE8;
  if (!qword_27F23AAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AAF0, &qword_24F9CF440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AAF8, &qword_24F9CF448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB00, &qword_24F9CF450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB08, &qword_24F9CF458);
    sub_24F1788F4();
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB28, &qword_24F9CF468);
    sub_24F178B88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAE8);
  }

  return result;
}

unint64_t sub_24F1788F4()
{
  result = qword_27F23AB10;
  if (!qword_27F23AB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB08, &qword_24F9CF458);
    sub_24F178980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AB10);
  }

  return result;
}

unint64_t sub_24F178980()
{
  result = qword_27F23AB18;
  if (!qword_27F23AB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB20, &qword_24F9CF460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA18, &qword_24F9CF3E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AAC0, &qword_24F9CF430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA10, &qword_24F9CF3D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA08, &qword_24F9CF3D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA00, &qword_24F9CF3C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D8, &qword_24F9C5370);
    sub_24F178254();
    sub_24F09D94C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24F09B68C();
    sub_24F178428();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AB18);
  }

  return result;
}

unint64_t sub_24F178B88()
{
  result = qword_27F23AB30;
  if (!qword_27F23AB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB28, &qword_24F9CF468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB08, &qword_24F9CF458);
    sub_24F1788F4();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AB30);
  }

  return result;
}

uint64_t sub_24F178C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F178D1C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_24F178DA8()
{
  result = qword_27F23ABA0;
  if (!qword_27F23ABA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A9D0, &qword_24F9CF398);
    sub_24F178E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ABA0);
  }

  return result;
}

unint64_t sub_24F178E34()
{
  result = qword_27F23ABA8;
  if (!qword_27F23ABA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A9D8, &qword_24F9CF3A0);
    sub_24F178EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ABA8);
  }

  return result;
}

unint64_t sub_24F178EC0()
{
  result = qword_27F23ABB0;
  if (!qword_27F23ABB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223E08, &qword_24F96F880);
    sub_24F178F7C(&qword_27F2388C0, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ABB0);
  }

  return result;
}

uint64_t sub_24F178F7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F179018(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24F179094()
{
  result = qword_27F23ABC8;
  if (!qword_27F23ABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB78, &qword_24F9CF528);
    sub_24F179120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ABC8);
  }

  return result;
}

unint64_t sub_24F179120()
{
  result = qword_27F23ABD0;
  if (!qword_27F23ABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB88, &qword_24F9CF538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B00, &qword_24F9A6EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB80, &qword_24F9CF530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B10, &qword_24F9A6EF0);
    sub_24EE536D0();
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B08, &qword_24F9A6EE8);
    sub_24EE5392C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ABD0);
  }

  return result;
}

uint64_t sub_24F179300(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_24F179378()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_24F1794C4(0x745C725C6E5C5B28, 0xEC000000292B5D20, 0);
  qword_27F39DBA0 = result;
  return result;
}

uint64_t sub_24F1793F4()
{
  v0 = sub_24F91EAA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EA68();
  v4 = sub_24F91EA58();
  result = (*(v1 + 8))(v3, v0);
  qword_27F39DBA8 = v4;
  return result;
}

id sub_24F1794C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_24F92B098();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_24F91F278();

    swift_willThrow();
  }

  return v6;
}

uint64_t static Notification.makePersonalizationDataProviderDidRefreshNotification(with:object:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B060, &qword_24F98A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0xD00000000000003ALL;
  v5 = inited + 32;
  *(inited + 40) = 0x800000024FA560B0;
  *(inited + 48) = v3;
  v6 = sub_24E60E3D8(inited);
  swift_setDeallocating();
  sub_24E601704(v5, &qword_27F22B068, &qword_24F98A748);
  if (qword_27F210F50 != -1)
  {
    swift_once();
  }

  v7 = qword_27F23ABD8;
  sub_24E94E17C(a2, v10);
  v8 = v7;
  sub_24E954AC4(v6);

  return sub_24F91EB18();
}

void Notification.updatedStyle.getter(_BYTE *a2@<X8>)
{
  v3 = sub_24F91EB28();
  if (qword_27F210F50 != -1)
  {
    swift_once();
  }

  v4 = sub_24F92B0D8();
  v6 = v5;
  if (v4 == sub_24F92B0D8() && v6 == v7)
  {

    v10 = sub_24F91EB48();
    if (!v10)
    {
LABEL_17:
      v15 = 0u;
      v16 = 0u;
      goto LABEL_18;
    }
  }

  else
  {
    v9 = sub_24F92CE08();

    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }

    v10 = sub_24F91EB48();
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v11 = v10;
  sub_24F92C7F8();
  if (!*(v11 + 16) || (v12 = sub_24E76D934(v14), (v13 & 1) == 0))
  {

    sub_24E6585F8(v14);
    goto LABEL_17;
  }

  sub_24E643A9C(*(v11 + 56) + 32 * v12, &v15);
  sub_24E6585F8(v14);

  if (!*(&v16 + 1))
  {
LABEL_18:
    sub_24E601704(&v15, &qword_27F2129B0, &unk_24F945320);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    *a2 = 2;
  }
}

uint64_t sub_24F1798A8()
{
  result = sub_24F92B098();
  qword_27F23ABD8 = result;
  return result;
}

id static NSNotificationName.PersonalizationDataProviderDidRefresh.getter()
{
  if (qword_27F210F50 != -1)
  {
    swift_once();
  }

  v1 = qword_27F23ABD8;

  return v1;
}

uint64_t GameCenterAchievementsAction.bundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_bundleId);

  return v1;
}

uint64_t GameCenterAchievementsAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v59 = a2;
  v3 = v2;
  v52 = *v3;
  v5 = sub_24F9285B8();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_24F92AC28();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v55 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v61 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v23 = v22;
  v24 = v20;
  v25 = *(v13 + 8);
  v25(v24, v12);
  if (v23)
  {
    v48 = v21;
    v52 = v3;
    v26 = v25;
    v27 = v61;
    sub_24F928398();
    sub_24F9282B8();
    v49 = v12;
    v50 = v26;
    v26(v17, v12);
    v29 = v53;
    v28 = v54;
    if ((*(v53 + 48))(v9, 1, v54) == 1)
    {
      sub_24E601704(v9, &qword_27F2213B0, &qword_24F965EC0);
      v30 = MEMORY[0x277D84F90];
    }

    else
    {
      v34 = v51;
      (*(v29 + 32))(v51, v9, v28);
      v35 = v60;
      v30 = sub_24F92ABB8();
      v60 = v35;
      (*(v29 + 8))(v34, v28);
    }

    v31 = v52;
    v36 = v57;
    *(v52 + OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_achievementIdsToHighlight) = v30;
    v37 = (v31 + OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_bundleId);
    *v37 = v48;
    v37[1] = v23;
    v38 = v55;
    v39 = v27;
    v40 = v49;
    (*(v13 + 16))(v55, v39, v49);
    v41 = v56;
    v43 = v58;
    v42 = v59;
    (*(v36 + 16))(v56, v59, v58);
    v44 = v60;
    v45 = Action.init(deserializing:using:)(v38, v41);
    if (!v44)
    {
      v31 = v45;
    }

    (*(v36 + 8))(v42, v43);
    v50(v61, v40);
  }

  else
  {
    v31 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v32 = 0x6449656C646E7562;
    v33 = v52;
    v32[1] = 0xE800000000000000;
    v32[2] = v33;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v57 + 8))(v59, v58);
    v25(v61, v12);
    swift_deallocPartialClassInstance();
  }

  return v31;
}

char *GameCenterAchievementsAction.__allocating_init(bundleID:achievementIdsToHighlight:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = &v12[OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_bundleId];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v12[OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_achievementIdsToHighlight] = a3;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v12[v14], a4, v15);
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
  v19 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v30, &v27);
  if (*(&v28 + 1))
  {
    v21 = v28;
    *v20 = v27;
    *(v20 + 1) = v21;
    *(v20 + 4) = v29;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v26[1] = v22;
    v26[2] = v24;
    sub_24F92C7F8();
    sub_24E601704(&v27, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v16 + 8))(a4, v15);
  sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
  *(v12 + 2) = 0xD00000000000001FLL;
  *(v12 + 3) = 0x800000024FA6DDC0;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  return v12;
}

void *GameCenterAchievementsAction.init(bundleID:achievementIdsToHighlight:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v5 + OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_bundleId);
  *v20 = a1;
  v20[1] = a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_achievementIdsToHighlight) = a3;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  (*(v17 + 16))(v19, a4, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v40, &v34);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v30 + 8))(v12, v31);
    v32 = v23;
    v33 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v17 + 8))(a4, v16);
  sub_24E601704(v40, &qword_27F235830, &qword_24F93B8C0);
  v26 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v26 + 4) = v39;
  v27 = v38;
  *v26 = v37;
  *(v26 + 1) = v27;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v5[2] = 0xD00000000000001FLL;
  v5[3] = 0x800000024FA6DDC0;
  v5[4] = 0;
  v5[5] = 0;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

uint64_t sub_24F17A614()
{
}

uint64_t GameCenterAchievementsAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t GameCenterAchievementsAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameCenterAchievementsAction(uint64_t a1)
{
  result = qword_27F23ABE0;
  if (!qword_27F23ABE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24F17AA00@<D0>(uint64_t a1@<X8>)
{
  v55 = sub_24F91F6B8();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  static AccountSectionLink.createActionMetrics(targetId:)(1936748641, 0xE400000000000000, &v50 - v16);
  v18 = sub_24F91F4A8();
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  memset(v70, 0, sizeof(v70));
  v53 = v9;
  v19 = *(v9 + 16);
  v57 = v17;
  v19(v14, v17, v8);
  v20 = sub_24F929D18();
  v22 = v21;
  type metadata accessor for FlowAction(0);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 14;
  v56 = v7;
  sub_24E60169C(v7, v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  v27 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v27 = xmmword_24F9406F0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v28 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v28 = v20;
  v28[1] = v22;
  sub_24E60169C(&v71, &v67, &qword_27F235830, &qword_24F93B8C0);
  v54 = v11;
  v58 = v8;
  v29 = v8;
  v30 = v52;
  v19(v11, v14, v29);
  v31 = sub_24F929608();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  v32 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_24E60169C(&v67, &v61, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v62 + 1))
  {
    v64 = v61;
    v65 = v62;
    v66 = v63;
    v33 = v55;
  }

  else
  {
    v34 = v50;
    sub_24F91F6A8();
    v35 = sub_24F91F668();
    v37 = v36;
    v33 = v55;
    (*(v51 + 8))(v34, v55);
    v59 = v35;
    v60 = v37;
    sub_24F92C7F8();
    sub_24E601704(&v61, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&v67, &qword_27F235830, &qword_24F93B8C0);
  v38 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v39 = v65;
  *v38 = v64;
  *(v38 + 16) = v39;
  *(v38 + 32) = v66;
  sub_24E65E0D4(v30, v23 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  v40 = v53;
  v41 = v58;
  (*(v53 + 32))(v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v54, v58);

  FlowAction.setPageData(_:)(v70);

  v42 = *(v40 + 8);
  v42(v14, v41);
  sub_24E601704(v70, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v56, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(&v71, &qword_27F235830, &qword_24F93B8C0);
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  sub_24E60169C(&v71, &v64, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v65 + 1))
  {
    sub_24E601704(&v71, &qword_27F235830, &qword_24F93B8C0);
    v42(v57, v41);
    v67 = v64;
    v68 = v65;
    v69 = v66;
  }

  else
  {

    v43 = v50;
    sub_24F91F6A8();
    v44 = sub_24F91F668();
    v45 = v41;
    v47 = v46;
    (*(v51 + 8))(v43, v33);
    *&v61 = v44;
    *(&v61 + 1) = v47;
    sub_24F92C7F8();

    sub_24E601704(&v71, &qword_27F235830, &qword_24F93B8C0);
    v42(v57, v45);
    sub_24E601704(&v64, &qword_27F235830, &qword_24F93B8C0);
  }

  result = *&v67;
  v49 = v68;
  *(a1 + 48) = v67;
  *(a1 + 64) = v49;
  *(a1 + 80) = v69;
  *(a1 + 16) = sub_24F17B658;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  return result;
}

uint64_t static AccountSectionLink.createActionMetrics(targetId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = sub_24F9294C8();
  MEMORY[0x28223BE20](v5 - 8);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_24F942000;
  v8 = MEMORY[0x277D83B88];
  *(inited + 40) = 0x800000024FA45740;
  *(inited + 48) = 0;
  *(inited + 72) = v8;
  strcpy((inited + 80), "locationType");
  v9 = MEMORY[0x277D837D0];
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 1802398060;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 120) = v9;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x64695F737469;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v9;
  *(inited + 176) = 25705;
  *(inited + 184) = 0xE200000000000000;
  *(inited + 192) = a1;
  *(inited + 200) = a2;
  *(inited + 216) = v9;
  *(inited + 224) = 1701667182;
  *(inited + 264) = v9;
  *(inited + 232) = 0xE400000000000000;
  *(inited + 240) = a1;
  *(inited + 248) = a2;
  swift_bridgeObjectRetain_n();
  v10 = sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  swift_arrayDestroy();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_24F93A400;
  *(v11 + 32) = 0x6E6F697461636F6CLL;
  *(v11 + 40) = 0xE800000000000000;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  *(v11 + 48) = v10;
  *(v11 + 72) = v12;
  *(v11 + 80) = 0x79546E6F69746361;
  *(v11 + 120) = v9;
  *(v11 + 88) = 0xEA00000000006570;
  *(v11 + 96) = 0x657461676976616ELL;
  *(v11 + 104) = 0xE800000000000000;
  v13 = sub_24E608448(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v14 = sub_24F92A2C8();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v23 = xmmword_24F93DE60;
  *(v17 + 16) = xmmword_24F93DE60;
  sub_24F92A288();
  v18 = sub_24E805DFC(v17);
  swift_setDeallocating();
  (*(v15 + 8))(v17 + v16, v14);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v19 = swift_initStackObject();
  v19[6] = 0x6D657449756E656DLL;
  v19[7] = 0xE800000000000000;
  v19[4] = a1;
  v19[5] = a2;
  v20 = MEMORY[0x277D84FA0];
  v19[8] = v18;
  v19[9] = v20;
  v21 = MEMORY[0x277D84F90];
  v19[2] = v13;
  v19[3] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8, &unk_24F967940);
  sub_24F928698();
  *(swift_allocObject() + 16) = v23;

  sub_24E98C2FC();
  sub_24F9294B8();
  sub_24F928AA8();
  swift_setDeallocating();
  return ClickMetricsEvent.__deallocating_deinit();
}

uint64_t sub_24F17B658()
{
  v0._countAndFlagsBits = 0x5F544E554F434341;
  v0._object = 0xEC00000053505041;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  return localizedString(_:comment:)(v0, v1)._countAndFlagsBits;
}

double sub_24F17B6B0@<D0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v61 = sub_24F91F6B8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v54 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v54 - v3;
  v4 = sub_24F928AD8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  sub_24F91F488();
  static AccountSectionLink.createActionMetrics(targetId:)(0xD00000000000001BLL, 0x800000024FA6DF50, v13);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v62 = v19;
  sub_24E60169C(v19, v16, &qword_27F228530, &unk_24F93C6E0);
  memset(v76, 0, sizeof(v76));
  v64 = v5;
  v20 = *(v5 + 16);
  v63 = v13;
  v20(v10, v13, v4);
  v21 = sub_24F929D18();
  v23 = v22;
  type metadata accessor for FlowAction(0);
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v25 = v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v26 = 0;
  v26[1] = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 18;
  v58 = v16;
  sub_24E60169C(v16, v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v27 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v27 = 0;
  v27[1] = 0;
  v28 = v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v28 = xmmword_24F9406F0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 16) = 0;
  *(v28 + 40) = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 2;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v29 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v29 = v21;
  v29[1] = v23;
  sub_24E60169C(&v77, &v73, &qword_27F235830, &qword_24F93B8C0);
  v57 = v7;
  v59 = v10;
  v30 = v10;
  v31 = v55;
  v32 = v4;
  v20(v7, v30, v4);
  v33 = sub_24F929608();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v34 = (v24 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_24E60169C(&v73, &v67, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
    v35 = v61;
    v36 = v60;
  }

  else
  {
    v37 = v54;
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v40 = v39;
    v36 = v60;
    v41 = v37;
    v35 = v61;
    (*(v60 + 8))(v41, v61);
    v65 = v38;
    v66 = v40;
    sub_24F92C7F8();
    sub_24E601704(&v67, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&v73, &qword_27F235830, &qword_24F93B8C0);
  v42 = v24 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v43 = v71;
  *v42 = v70;
  *(v42 + 16) = v43;
  *(v42 + 32) = v72;
  sub_24E65E0D4(v31, v24 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  v44 = v64;
  v45 = v32;
  (*(v64 + 32))(v24 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v57, v32);

  FlowAction.setPageData(_:)(v76);

  v46 = *(v44 + 8);
  v46(v59, v45);
  sub_24E601704(v76, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v58, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(&v77, &qword_27F235830, &qword_24F93B8C0);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_24E60169C(&v77, &v70, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v71 + 1))
  {
    sub_24E601704(&v77, &qword_27F235830, &qword_24F93B8C0);
    v46(v63, v45);
    sub_24E601704(v62, &qword_27F228530, &unk_24F93C6E0);
    v73 = v70;
    v74 = v71;
    v75 = v72;
  }

  else
  {

    v47 = v54;
    sub_24F91F6A8();
    v48 = sub_24F91F668();
    v50 = v49;
    (*(v36 + 8))(v47, v35);
    *&v67 = v48;
    *(&v67 + 1) = v50;
    sub_24F92C7F8();

    sub_24E601704(&v77, &qword_27F235830, &qword_24F93B8C0);
    v46(v63, v45);
    sub_24E601704(v62, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(&v70, &qword_27F235830, &qword_24F93B8C0);
  }

  result = *&v73;
  v52 = v74;
  v53 = v56;
  *(v56 + 48) = v73;
  *(v53 + 64) = v52;
  *(v53 + 80) = v75;
  *(v53 + 16) = sub_24F17DA28;
  *(v53 + 24) = 0;
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 32) = v24;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_24F17BF30()
{
  v0._object = 0x800000024FA6DF70;
  v0._countAndFlagsBits = 0xD00000000000001CLL;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  return localizedString(_:comment:)(v0, v1)._countAndFlagsBits;
}

double sub_24F17BF84@<D0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v61 = sub_24F91F6B8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v54 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v54 - v3;
  v4 = sub_24F928AD8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  sub_24F91F488();
  static AccountSectionLink.createActionMetrics(targetId:)(0xD00000000000001BLL, 0x800000024FA6DF50, v13);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v62 = v19;
  sub_24E60169C(v19, v16, &qword_27F228530, &unk_24F93C6E0);
  memset(v76, 0, sizeof(v76));
  v64 = v5;
  v20 = *(v5 + 16);
  v63 = v13;
  v20(v10, v13, v4);
  v21 = sub_24F929D18();
  v23 = v22;
  type metadata accessor for FlowAction(0);
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v25 = v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v26 = 0;
  v26[1] = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 18;
  v58 = v16;
  sub_24E60169C(v16, v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v27 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v27 = 0;
  v27[1] = 0;
  v28 = v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v28 = xmmword_24F9406F0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 16) = 0;
  *(v28 + 40) = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 2;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v29 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v29 = v21;
  v29[1] = v23;
  sub_24E60169C(&v77, &v73, &qword_27F235830, &qword_24F93B8C0);
  v57 = v7;
  v59 = v10;
  v30 = v10;
  v31 = v55;
  v32 = v4;
  v20(v7, v30, v4);
  v33 = sub_24F929608();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v34 = (v24 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_24E60169C(&v73, &v67, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
    v35 = v61;
    v36 = v60;
  }

  else
  {
    v37 = v54;
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v40 = v39;
    v36 = v60;
    v41 = v37;
    v35 = v61;
    (*(v60 + 8))(v41, v61);
    v65 = v38;
    v66 = v40;
    sub_24F92C7F8();
    sub_24E601704(&v67, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&v73, &qword_27F235830, &qword_24F93B8C0);
  v42 = v24 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v43 = v71;
  *v42 = v70;
  *(v42 + 16) = v43;
  *(v42 + 32) = v72;
  sub_24E65E0D4(v31, v24 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  v44 = v64;
  v45 = v32;
  (*(v64 + 32))(v24 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v57, v32);

  FlowAction.setPageData(_:)(v76);

  v46 = *(v44 + 8);
  v46(v59, v45);
  sub_24E601704(v76, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v58, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(&v77, &qword_27F235830, &qword_24F93B8C0);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_24E60169C(&v77, &v70, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v71 + 1))
  {
    sub_24E601704(&v77, &qword_27F235830, &qword_24F93B8C0);
    v46(v63, v45);
    sub_24E601704(v62, &qword_27F228530, &unk_24F93C6E0);
    v73 = v70;
    v74 = v71;
    v75 = v72;
  }

  else
  {

    v47 = v54;
    sub_24F91F6A8();
    v48 = sub_24F91F668();
    v50 = v49;
    (*(v36 + 8))(v47, v35);
    *&v67 = v48;
    *(&v67 + 1) = v50;
    sub_24F92C7F8();

    sub_24E601704(&v77, &qword_27F235830, &qword_24F93B8C0);
    v46(v63, v45);
    sub_24E601704(v62, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(&v70, &qword_27F235830, &qword_24F93B8C0);
  }

  result = *&v73;
  v52 = v74;
  v53 = v56;
  *(v56 + 48) = v73;
  *(v53 + 64) = v52;
  *(v53 + 80) = v75;
  *(v53 + 16) = sub_24F17DA28;
  *(v53 + 24) = 0;
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 32) = v24;
  *(v53 + 40) = 0;
  return result;
}

double sub_24F17C834@<D0>(uint64_t a1@<X8>)
{
  v55 = sub_24F91F6B8();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  static AccountSectionLink.createActionMetrics(targetId:)(0xD00000000000001BLL, 0x800000024FA6DF50, &v50 - v16);
  v18 = sub_24F91F4A8();
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  memset(v70, 0, sizeof(v70));
  v53 = v9;
  v19 = *(v9 + 16);
  v57 = v17;
  v19(v14, v17, v8);
  v20 = sub_24F929D18();
  v22 = v21;
  type metadata accessor for FlowAction(0);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 53;
  v56 = v7;
  sub_24E60169C(v7, v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  v27 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v27 = xmmword_24F9406F0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 2;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v28 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v28 = v20;
  v28[1] = v22;
  sub_24E60169C(&v71, &v67, &qword_27F235830, &qword_24F93B8C0);
  v54 = v11;
  v58 = v8;
  v29 = v8;
  v30 = v52;
  v19(v11, v14, v29);
  v31 = sub_24F929608();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  v32 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_24E60169C(&v67, &v61, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v62 + 1))
  {
    v64 = v61;
    v65 = v62;
    v66 = v63;
    v33 = v55;
  }

  else
  {
    v34 = v50;
    sub_24F91F6A8();
    v35 = sub_24F91F668();
    v37 = v36;
    v33 = v55;
    (*(v51 + 8))(v34, v55);
    v59 = v35;
    v60 = v37;
    sub_24F92C7F8();
    sub_24E601704(&v61, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&v67, &qword_27F235830, &qword_24F93B8C0);
  v38 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v39 = v65;
  *v38 = v64;
  *(v38 + 16) = v39;
  *(v38 + 32) = v66;
  sub_24E65E0D4(v30, v23 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  v40 = v53;
  v41 = v58;
  (*(v53 + 32))(v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v54, v58);

  FlowAction.setPageData(_:)(v70);

  v42 = *(v40 + 8);
  v42(v14, v41);
  sub_24E601704(v70, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v56, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(&v71, &qword_27F235830, &qword_24F93B8C0);
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  sub_24E60169C(&v71, &v64, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v65 + 1))
  {
    sub_24E601704(&v71, &qword_27F235830, &qword_24F93B8C0);
    v42(v57, v41);
    v67 = v64;
    v68 = v65;
    v69 = v66;
  }

  else
  {

    v43 = v50;
    sub_24F91F6A8();
    v44 = sub_24F91F668();
    v45 = v41;
    v47 = v46;
    (*(v51 + 8))(v43, v33);
    *&v61 = v44;
    *(&v61 + 1) = v47;
    sub_24F92C7F8();

    sub_24E601704(&v71, &qword_27F235830, &qword_24F93B8C0);
    v42(v57, v45);
    sub_24E601704(&v64, &qword_27F235830, &qword_24F93B8C0);
  }

  result = *&v67;
  v49 = v68;
  *(a1 + 48) = v67;
  *(a1 + 64) = v49;
  *(a1 + 80) = v69;
  *(a1 + 16) = sub_24F17DA28;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_24F17D068@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = x8_0;
  if (*a1 != -1)
  {
    swift_once();
    v5 = x8_0;
  }

  return sub_24F17D8F4(a2, v5);
}

double sub_24F17D100@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v14 = sub_24E76DB14(a2), (v15 & 1) != 0))
  {
    v16 = *(*(a1 + 56) + 8 * v14);
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_24E60169C(v30, &v24, &qword_27F235830, &qword_24F93B8C0);
    v17 = *(&v25 + 1);
    swift_retain_n();
    if (v17)
    {
      sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
      v27 = v24;
      v28 = v25;
      v29 = v26;
    }

    else
    {

      sub_24F91F6A8();
      v19 = sub_24F91F668();
      v21 = v20;
      (*(v11 + 8))(v13, v10);
      v23[1] = v19;
      v23[2] = v21;
      sub_24F92C7F8();

      sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
      sub_24E601704(&v24, &qword_27F235830, &qword_24F93B8C0);
    }

    result = *&v27;
    v22 = v28;
    *(a5 + 48) = v27;
    *(a5 + 64) = v22;
    *(a5 + 80) = v29;
    *(a5 + 16) = a3;
    *(a5 + 24) = v16;
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 32) = v16;
    *(a5 + 40) = a4;
  }

  else
  {
    *(a5 + 80) = 0;
    result = 0.0;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t sub_24F17D320(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x800000024FA6DF30;
    v2._countAndFlagsBits = 0xD000000000000011;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

double static AccountSectionLink.addFunds(from:bag:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v8 = sub_24E76DB14(3), (v9 & 1) != 0))
  {
    v10 = *(*(a1 + 56) + 8 * v8);
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_24E60169C(v24, &v18, &qword_27F235830, &qword_24F93B8C0);
    v11 = *(&v19 + 1);
    swift_retain_n();
    if (v11)
    {
      sub_24E601704(v24, &qword_27F235830, &qword_24F93B8C0);
      v21 = v18;
      v22 = v19;
      v23 = v20;
    }

    else
    {

      sub_24F91F6A8();
      v13 = sub_24F91F668();
      v15 = v14;
      (*(v5 + 8))(v7, v4);
      v17[1] = v13;
      v17[2] = v15;
      sub_24F92C7F8();

      sub_24E601704(v24, &qword_27F235830, &qword_24F93B8C0);
      sub_24E601704(&v18, &qword_27F235830, &qword_24F93B8C0);
    }

    result = *&v21;
    v16 = v22;
    *(a2 + 48) = v21;
    *(a2 + 64) = v16;
    *(a2 + 80) = v23;
    *(a2 + 16) = sub_24F17D984;
    *(a2 + 24) = v10;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 32) = v10;
    *(a2 + 40) = 1;
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_24F17D5B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v3 = 0x5F544E554F434341;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(*(&a2 - 1), v4)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_24F17D638(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x800000024FA6DF10;
    v2._countAndFlagsBits = 0xD00000000000001CLL;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_24F17D6C8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x800000024FA6DEF0;
    v2._countAndFlagsBits = 0xD000000000000015;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_24F17D758(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x800000024FA6DED0;
    v2._countAndFlagsBits = 0xD000000000000018;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_24F17D7E8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2 = sub_24F91FE58();
    v8[3] = v2;
    v8[4] = sub_24F17D9D0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D08030], v2);
    LOBYTE(v2) = sub_24F91FE68();
    __swift_destroy_boxed_opaque_existential_1(v8);
    if (v2)
    {
      v4 = 0xD00000000000001FLL;
      v5 = 0x800000024FA6DEB0;
    }

    else
    {
      v5 = 0x800000024FA6DE90;
      v4 = 0xD000000000000017;
    }

    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(*&v4, v6)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

unint64_t sub_24F17D9D0()
{
  result = qword_27F22ED40;
  if (!qword_27F22ED40)
  {
    sub_24F91FE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22ED40);
  }

  return result;
}

uint64_t sub_24F17DA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24F17DAEC;

  return sub_24F17DC08(a3);
}

uint64_t sub_24F17DAEC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_24F17DC08(uint64_t a1)
{
  *(v1 + 384) = a1;
  v2 = type metadata accessor for GameActivityDraftBuilder();
  v3 = swift_task_alloc();
  *(v1 + 392) = v3;
  *v3 = v1;
  v3[1] = sub_24F17DCF0;

  return MEMORY[0x28217F228](v1 + 328, v2, v2);
}

uint64_t sub_24F17DCF0()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_24F17EBF0;
  }

  else
  {
    v2 = sub_24F17DE30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F17DE30()
{
  v56 = v0;
  v55[9] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 328);
  *(v0 + 408) = v1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 416) = v2;
  if (!v2)
  {

    v13 = MEMORY[0x277D84F90];
LABEL_39:
    v44 = *(v0 + 8);
    v45 = MEMORY[0x277D84F90];

    return v44(v13, v45);
  }

  swift_getKeyPath();
  *(v0 + 336) = v2;
  sub_24E6D6F58();

  sub_24F91FD88();

  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite);
  v4 = *(v3 + 2);
  v51 = v2;
  if (v4)
  {
    v53 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite);
    v55[0] = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_24F4578E0(0, v4, 0);
    v5 = 0;
    v6 = v55[0];
    v7 = *(v55[0] + 16);
    v8 = 16 * v7;
    do
    {
      v9 = *&v53[v5 + 32];
      v10 = *&v53[v5 + 40];
      v55[0] = v6;
      v11 = *(v6 + 24);

      if (v7 >= v11 >> 1)
      {
        sub_24F4578E0((v11 > 1), v7 + 1, 1);
        v6 = v55[0];
      }

      *(v6 + 16) = v7 + 1;
      v12 = v6 + v8;
      *(v12 + 32) = v9;
      *(v12 + 40) = v10;
      v8 += 16;
      v5 += 72;
      ++v7;
      --v4;
    }

    while (v4);
    v3 = v53;

    v2 = v51;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v14 = sub_24F45D828(v6);

  *(v0 + 344) = v14;
  v15 = sub_24F34F43C();
  v16 = v15;
  v54 = *(v15 + 2);
  if (v54)
  {
    v17 = 0;
    v52 = v15 + 32;
    while (1)
    {
      v18 = &v52[72 * v17];
      *(v0 + 16) = *v18;
      v19 = *(v18 + 1);
      v20 = *(v18 + 2);
      v21 = *(v18 + 3);
      *(v0 + 80) = *(v18 + 32);
      *(v0 + 48) = v20;
      *(v0 + 64) = v21;
      *(v0 + 32) = v19;
      v23 = *(v0 + 16);
      v22 = *(v0 + 24);
      v24 = *(v0 + 344);
      if (!*(v24 + 16))
      {
        break;
      }

      v25 = v3;
      sub_24F92D068();
      sub_24E627A14(v0 + 16, v0 + 88);

      sub_24F92B218();
      v26 = sub_24F92D0B8();
      v27 = -1 << *(v24 + 32);
      v28 = v26 & ~v27;
      if (((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
LABEL_21:

        v3 = v25;
LABEL_23:
        sub_24E627A14(v0 + 16, v0 + 160);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_24E615E80(0, *(v3 + 2) + 1, 1, v3);
        }

        v33 = *(v3 + 2);
        v32 = *(v3 + 3);
        if (v33 >= v32 >> 1)
        {
          v3 = sub_24E615E80((v32 > 1), v33 + 1, 1, v3);
        }

        *(v3 + 2) = v33 + 1;
        v34 = &v3[72 * v33];
        *(v34 + 2) = *(v0 + 16);
        v35 = *(v0 + 32);
        v36 = *(v0 + 48);
        v37 = *(v0 + 64);
        *(v34 + 48) = *(v0 + 80);
        *(v34 + 4) = v36;
        *(v34 + 5) = v37;
        *(v34 + 3) = v35;

        sub_24ED7C5F0(v55, v23, v22);
        sub_24E627A70(v0 + 16);

        goto LABEL_29;
      }

      v29 = ~v27;
      while (1)
      {
        v30 = (*(v24 + 48) + 16 * v28);
        v31 = *v30 == v23 && v30[1] == v22;
        if (v31 || (sub_24F92CE08() & 1) != 0)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_24E627A70(v0 + 16);

      v3 = v25;
LABEL_29:
      if (++v17 == v54)
      {

        v2 = v51;
        goto LABEL_34;
      }

      if (v17 >= *(v16 + 2))
      {
        __break(1u);
      }
    }

    sub_24E627A14(v0 + 16, v0 + 232);
    goto LABEL_23;
  }

LABEL_34:
  *(v0 + 424) = v3;

  swift_getKeyPath();
  *(v0 + 352) = v2;
  sub_24F91FD88();

  v38 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite;
  if (!*(*(v2 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite) + 16))
  {
LABEL_38:

    v13 = *(v0 + 424);
    goto LABEL_39;
  }

  swift_getKeyPath();
  *(v0 + 360) = v2;
  sub_24F91FD88();

  v39 = *(v2 + v38);
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = sub_24EAE678C(*(v39 + 16), 0);
    v42 = sub_24EAEAC9C(v55, (v41 + 4), v40, v39);
    v43 = v55[0];

    sub_24E6D71D4(v43);
    if (v42 != v40)
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  v47 = objc_opt_self();
  v48 = sub_24F92B588();

  *(v0 + 432) = [v47 predicateForContactsWithIdentifiers_];

  v49 = sub_24E69A5C4(0, &qword_27F22D170, 0x277CBDAB8);
  v50 = swift_task_alloc();
  *(v0 + 440) = v50;
  *v50 = v0;
  v50[1] = sub_24F17E4D8;

  return MEMORY[0x28217F228](v0 + 368, v49, v49);
}

uint64_t sub_24F17E4D8()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_24F17EC78;
  }

  else
  {
    v2 = sub_24F17E618;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F17E618()
{
  v2 = v0[54];
  v3 = v0[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F941C80;
  *(v4 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
  v5 = sub_24F92B588();

  v0[47] = 0;
  v6 = [v3 unifiedContactsMatchingPredicate:v2 keysToFetch:v5 error:v0 + 47];

  v7 = v0[47];
  if (!v6)
  {
    v42 = v7;
    v1 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F2113E8 == -1)
    {
LABEL_16:
      v43 = sub_24F9220D8();
      __swift_project_value_buffer(v43, qword_27F39E808);
      v44 = v1;
      v45 = sub_24F9220B8();
      v46 = sub_24F92BDB8();

      v47 = os_log_type_enabled(v45, v46);
      v48 = v0[54];
      if (!v47)
      {

LABEL_22:
        v13 = MEMORY[0x277D84F90];
        goto LABEL_23;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      v51 = v1;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      _os_log_impl(&dword_24E5DD000, v45, v46, "fetchRecommendedFriends: CNContactStore threw an exception: %@", v49, 0xCu);
      sub_24E6D44CC(v50);
      MEMORY[0x2530542D0](v50, -1, -1);
      MEMORY[0x2530542D0](v49, -1, -1);

LABEL_21:

      goto LABEL_22;
    }

LABEL_27:
    swift_once();
    goto LABEL_16;
  }

  sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
  v8 = sub_24F92B5A8();
  v9 = v7;

  v10 = v8;
  if (!(v8 >> 62))
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_20:
    v53 = v0[54];

    goto LABEL_21;
  }

  v11 = sub_24F92C738();
  v10 = v8;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_4:
  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v57 = v3;
  v58 = v0;
  v12 = 0;
  v59 = v10 & 0xC000000000000001;
  v13 = MEMORY[0x277D84F90];
  v60 = v11;
  v61 = v10;
  do
  {
    if (v59)
    {
      v14 = MEMORY[0x253052270](v12);
    }

    else
    {
      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = [v14 identifier];
    v70 = sub_24F92B0D8();
    v69 = v17;

    v18 = [v15 namePrefix];
    v19 = sub_24F92B0D8();
    v67 = v20;
    v68 = v19;

    v21 = [v15 givenName];
    v22 = sub_24F92B0D8();
    v65 = v23;
    v66 = v22;

    v24 = [v15 middleName];
    v25 = sub_24F92B0D8();
    v63 = v26;
    v64 = v25;

    v27 = [v15 familyName];
    v28 = sub_24F92B0D8();
    v62 = v29;

    v30 = [v15 nameSuffix];
    v31 = sub_24F92B0D8();
    v33 = v32;

    v34 = [v15 nickname];
    v35 = sub_24F92B0D8();
    v37 = v36;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_24E619EE4(0, *(v13 + 2) + 1, 1, v13);
    }

    v39 = *(v13 + 2);
    v38 = *(v13 + 3);
    if (v39 >= v38 >> 1)
    {
      v13 = sub_24E619EE4((v38 > 1), v39 + 1, 1, v13);
    }

    ++v12;

    *(v13 + 2) = v39 + 1;
    v40 = &v13[112 * v39];
    *(v40 + 4) = v70;
    *(v40 + 5) = v69;
    *(v40 + 6) = v68;
    *(v40 + 7) = v67;
    *(v40 + 8) = v66;
    *(v40 + 9) = v65;
    *(v40 + 10) = v64;
    *(v40 + 11) = v63;
    *(v40 + 12) = v28;
    *(v40 + 13) = v62;
    *(v40 + 14) = v31;
    *(v40 + 15) = v33;
    *(v40 + 16) = v35;
    *(v40 + 17) = v37;
    v10 = v61;
  }

  while (v60 != v12);
  v0 = v58;
  v41 = v58[54];

LABEL_23:
  v54 = v0[53];
  v55 = v0[1];

  return v55(v54, v13);
}

uint64_t sub_24F17EBF0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F17EC78()
{
  v1 = v0[56];
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[54];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "fetchRecommendedFriends: CNContactStore threw an exception: %@", v8, 0xCu);
    sub_24E6D44CC(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[53];
  v13 = v0[1];
  v14 = MEMORY[0x277D84F90];

  return v13(v12, v14);
}

double sub_24F17EEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_24E60169C(a1, v20 - v9, &unk_27F21B570, &qword_24F93B020);
  v11 = sub_24F92B858();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &unk_27F21B570, &qword_24F93B020);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_24F92B778();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24F92B848();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();

  return result;
}

uint64_t sub_24F17F10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CompleteWelcomeMoltresAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24F1831BC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24E710918(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9CF7C0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F17F33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_24F928AE8();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_24F920958();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8, &qword_24F9CF7D0);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = sub_24F921338();
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F17F5CC, 0, 0);
}

uint64_t sub_24F17F5CC()
{
  v1 = objc_opt_self();
  v0[40] = v1;
  v2 = [v1 standardUserDefaults];
  v3 = sub_24F92B098();
  [v2 setBool:0 forKey:v3];

  v4 = objc_opt_self();
  v5 = [v4 shared];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v5;
  [v5 setForcePrivacyNotice_];

  v5 = [v4 shared];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x28217F228](v5, v6, v7);
  }

  v9 = v5;
  [v5 setForceGamesPrivacyNotice_];

  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_24F17F758;
  v5 = v0[39];
  v6 = v0[37];
  v7 = v6;

  return MEMORY[0x28217F228](v5, v6, v7);
}

uint64_t sub_24F17F758()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_24F1815A8;
  }

  else
  {
    v2 = sub_24F17F86C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F17F86C()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[43] = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "CompleteWelcomeMoltresActionImplementation: Getting authenticated player..", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[24];
  v10 = v0[25];

  v11 = *(v8 + 56);
  v0[44] = v11;
  v0[45] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v5, 1, 1, v7);
  v12 = *(v10 + 56);
  v0[46] = v12;
  v0[47] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(v6, 1, 1, v9);
  sub_24F921318();
  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  v15 = swift_task_alloc();
  v0[48] = v15;
  *v15 = v0;
  v15[1] = sub_24F17FA5C;

  return MEMORY[0x282165230](v13, v14);
}

uint64_t sub_24F17FA5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_24F181698;
  }

  else
  {
    v4 = sub_24F17FB70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F17FB70()
{
  v1 = *(v0 + 392);
  if (*(v1 + 16))
  {
    (*(*(v0 + 224) + 16))(*(v0 + 280), v1 + ((*(*(v0 + 224) + 80) + 32) & ~*(*(v0 + 224) + 80)), *(v0 + 216));
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 352);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);

  v3(v5, v2, 1, v7);
  sub_24F1836FC(v5, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_24E60169C(v4, v6, &qword_27F22D4E0, &unk_24F994C00);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(*(v0 + 272), &qword_27F22D4E0, &unk_24F994C00);
    *(v0 + 424) = *(v0 + 400);
    v9 = *(v0 + 248);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    sub_24E60169C(*(v0 + 264), v9, &qword_27F22D4D8, &qword_24F9CF7D0);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_24E601704(*(v0 + 248), &qword_27F22D4D8, &qword_24F9CF7D0);
      v12 = *(v0 + 288);
      v13 = *(v0 + 216);
      v14 = *(v0 + 224);
      if ((*(v14 + 48))(v12, 1, v13))
      {
LABEL_7:
        v15 = *(v0 + 152);
        if ((*(v15 + 8) & 1) == 0)
        {
          v16 = *v15;
          v17 = [*(v0 + 320) standardUserDefaults];
          sub_24F005DA4(v16);
        }

        v18 = *(v0 + 304);
        v19 = *(v0 + 312);
        v20 = *(v0 + 288);
        v21 = *(v0 + 296);
        v22 = *(v0 + 176);
        v23 = *(v0 + 168);
        v24 = *(v0 + 136);
        sub_24E601704(*(v0 + 264), &qword_27F22D4D8, &qword_24F9CF7D0);
        (*(v22 + 104))(v24, *MEMORY[0x277D21CA8], v23);
        sub_24E601704(v20, &qword_27F22D4E0, &unk_24F994C00);
        (*(v18 + 8))(v19, v21);

        v25 = *(v0 + 8);

        return v25();
      }

      v41 = *(v0 + 424);
      (*(v14 + 16))(*(v0 + 232), v12, v13);
      v43 = sub_24F920FD8();
      v45 = *(v0 + 224);
      v44 = *(v0 + 232);
      v46 = *(v0 + 216);
      if (v41)
      {
        (*(v45 + 8))(v44, *(v0 + 216));
        v47 = v41;
        v48 = sub_24F9220B8();
        v49 = sub_24F92BD98();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138412290;
          v52 = v41;
          v53 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 4) = v53;
          *v51 = v53;
          _os_log_impl(&dword_24E5DD000, v48, v49, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v50, 0xCu);
          sub_24E601704(v51, &qword_27F227B20, &qword_24F944D30);
          MEMORY[0x2530542D0](v51, -1, -1);
          MEMORY[0x2530542D0](v50, -1, -1);
        }

        else
        {
        }

        goto LABEL_7;
      }

      *(v0 + 448) = v42;
      v54 = v42;
      (*(v45 + 8))(v44, v46);
      v55 = swift_task_alloc();
      *(v0 + 456) = v55;
      *v55 = v0;
      v55[1] = sub_24F180DBC;

      return sub_24F183444(v43, v54);
    }

    else
    {
      v32 = *(v0 + 312);
      v33 = *(v0 + 288);
      v34 = *(v0 + 208);
      v35 = *(v0 + 160);
      (*(*(v0 + 200) + 32))(v34, *(v0 + 248), *(v0 + 192));
      v36 = swift_task_alloc();
      *(v0 + 432) = v36;
      v36[2] = v35;
      v36[3] = v33;
      v36[4] = v32;
      v36[5] = v34;
      v37 = swift_task_alloc();
      *(v0 + 440) = v37;
      *v37 = v0;
      v37[1] = sub_24F1808CC;
      v38 = MEMORY[0x277D84F78] + 8;
      v39 = MEMORY[0x277D84F78] + 8;
      v40 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200600](v37, v38, v39, 0, 0, &unk_24F9CF7E8, v36, v40);
    }
  }

  else
  {
    (*(*(v0 + 224) + 32))(*(v0 + 240), *(v0 + 272), *(v0 + 216));
    sub_24F9212E8();
    v27 = *(v0 + 120);
    v28 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v27);
    v29 = swift_task_alloc();
    *(v0 + 408) = v29;
    *v29 = v0;
    v29[1] = sub_24F180234;
    v30 = *(v0 + 256);
    v31 = *(v0 + 240);

    return MEMORY[0x282165208](v30, v31, v27, v28);
  }
}

uint64_t sub_24F180234()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_24F181CB0;
  }

  else
  {
    v2 = sub_24F180348;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F180348()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 192);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  sub_24E601704(v3, &qword_27F22D4D8, &qword_24F9CF7D0);
  v1(v2, 0, 1, v4);
  sub_24F18376C(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  *(v0 + 424) = *(v0 + 416);
  v5 = *(v0 + 248);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  sub_24E60169C(*(v0 + 264), v5, &qword_27F22D4D8, &qword_24F9CF7D0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24E601704(*(v0 + 248), &qword_27F22D4D8, &qword_24F9CF7D0);
    v8 = *(v0 + 288);
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);
    if ((*(v10 + 48))(v8, 1, v9))
    {
LABEL_3:
      v11 = *(v0 + 152);
      if ((*(v11 + 8) & 1) == 0)
      {
        v12 = *v11;
        v13 = [*(v0 + 320) standardUserDefaults];
        sub_24F005DA4(v12);
      }

      v14 = *(v0 + 304);
      v15 = *(v0 + 312);
      v16 = *(v0 + 288);
      v17 = *(v0 + 296);
      v18 = *(v0 + 176);
      v19 = *(v0 + 168);
      v20 = *(v0 + 136);
      sub_24E601704(*(v0 + 264), &qword_27F22D4D8, &qword_24F9CF7D0);
      (*(v18 + 104))(v20, *MEMORY[0x277D21CA8], v19);
      sub_24E601704(v16, &qword_27F22D4E0, &unk_24F994C00);
      (*(v14 + 8))(v15, v17);

      v21 = *(v0 + 8);

      return v21();
    }

    v32 = *(v0 + 424);
    (*(v10 + 16))(*(v0 + 232), v8, v9);
    v34 = sub_24F920FD8();
    v36 = *(v0 + 224);
    v35 = *(v0 + 232);
    v37 = *(v0 + 216);
    if (v32)
    {
      (*(v36 + 8))(v35, *(v0 + 216));
      v38 = v32;
      v39 = sub_24F9220B8();
      v40 = sub_24F92BD98();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v32;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_24E5DD000, v39, v40, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v41, 0xCu);
        sub_24E601704(v42, &qword_27F227B20, &qword_24F944D30);
        MEMORY[0x2530542D0](v42, -1, -1);
        MEMORY[0x2530542D0](v41, -1, -1);
      }

      else
      {
      }

      goto LABEL_3;
    }

    *(v0 + 448) = v33;
    v45 = v33;
    (*(v36 + 8))(v35, v37);
    v46 = swift_task_alloc();
    *(v0 + 456) = v46;
    *v46 = v0;
    v46[1] = sub_24F180DBC;

    return sub_24F183444(v34, v45);
  }

  else
  {
    v23 = *(v0 + 312);
    v24 = *(v0 + 288);
    v25 = *(v0 + 208);
    v26 = *(v0 + 160);
    (*(*(v0 + 200) + 32))(v25, *(v0 + 248), *(v0 + 192));
    v27 = swift_task_alloc();
    *(v0 + 432) = v27;
    v27[2] = v26;
    v27[3] = v24;
    v27[4] = v23;
    v27[5] = v25;
    v28 = swift_task_alloc();
    *(v0 + 440) = v28;
    *v28 = v0;
    v28[1] = sub_24F1808CC;
    v29 = MEMORY[0x277D84F78] + 8;
    v30 = MEMORY[0x277D84F78] + 8;
    v31 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600](v28, v29, v30, 0, 0, &unk_24F9CF7E8, v27, v31);
  }
}

uint64_t sub_24F1808CC()
{

  return MEMORY[0x2822009F8](sub_24F1809E4, 0, 0);
}

uint64_t sub_24F1809E4()
{
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v1 = *(v0 + 288);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    goto LABEL_2;
  }

  v16 = *(v0 + 424);
  (*(v3 + 16))(*(v0 + 232), v1, v2);
  v18 = sub_24F920FD8();
  v20 = *(v0 + 224);
  v19 = *(v0 + 232);
  v21 = *(v0 + 216);
  if (v16)
  {
    (*(v20 + 8))(v19, *(v0 + 216));
    v22 = v16;
    v23 = sub_24F9220B8();
    v24 = sub_24F92BD98();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v16;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_24E5DD000, v23, v24, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v25, 0xCu);
      sub_24E601704(v26, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v26, -1, -1);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    else
    {
    }

LABEL_2:
    v4 = *(v0 + 152);
    if ((*(v4 + 8) & 1) == 0)
    {
      v5 = *v4;
      v6 = [*(v0 + 320) standardUserDefaults];
      sub_24F005DA4(v5);
    }

    v7 = *(v0 + 304);
    v8 = *(v0 + 312);
    v9 = *(v0 + 288);
    v10 = *(v0 + 296);
    v11 = *(v0 + 176);
    v12 = *(v0 + 168);
    v13 = *(v0 + 136);
    sub_24E601704(*(v0 + 264), &qword_27F22D4D8, &qword_24F9CF7D0);
    (*(v11 + 104))(v13, *MEMORY[0x277D21CA8], v12);
    sub_24E601704(v9, &qword_27F22D4E0, &unk_24F994C00);
    (*(v7 + 8))(v8, v10);

    v14 = *(v0 + 8);

    return v14();
  }

  *(v0 + 448) = v17;
  v29 = v17;
  (*(v20 + 8))(v19, v21);
  v30 = swift_task_alloc();
  *(v0 + 456) = v30;
  *v30 = v0;
  v30[1] = sub_24F180DBC;

  return sub_24F183444(v18, v29);
}