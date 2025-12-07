uint64_t sub_20D8044B4@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t sub_20D80459C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D80465C(uint64_t a1)
{
  v2 = sub_20D973AF8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D973E48();
}

unint64_t sub_20D80472C()
{
  result = qword_281125118;
  if (!qword_281125118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E48, &qword_20D977670);
    sub_20D8050A4(qword_281125128, MEMORY[0x277D17E98], MEMORY[0x277D17EA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125118);
  }

  return result;
}

uint64_t sub_20D8047E0()
{
  v2 = *(type metadata accessor for GridForecastAppView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GridForecastSnapshot(0) - 8);
  v6 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20D805810;

  return sub_20D802B74(v0 + v3, v6, v7);
}

unint64_t sub_20D804950()
{
  result = qword_281124EB0;
  if (!qword_281124EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839280, &qword_20D9780B0);
    sub_20D804A0C();
    sub_20D8050A4(&qword_281124FD0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EB0);
  }

  return result;
}

unint64_t sub_20D804A0C()
{
  result = qword_281124F10;
  if (!qword_281124F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392B0, &qword_20D978150);
    sub_20D804A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F10);
  }

  return result;
}

unint64_t sub_20D804A98()
{
  result = qword_281124FB8;
  if (!qword_281124FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392A8, &unk_20D978140);
    sub_20D804B50();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124FB8);
  }

  return result;
}

unint64_t sub_20D804B50()
{
  result = qword_281124FE8;
  if (!qword_281124FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392B8, &qword_20D978168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392A0, &unk_20D978130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E48, &qword_20D977670);
    sub_20D7EBC4C(&qword_281124D58, &qword_27C8392A0, &unk_20D978130, MEMORY[0x277CE1198]);
    sub_20D80472C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124FE8);
  }

  return result;
}

uint64_t sub_20D804C70(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for GridForecastAppView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D802F90(a1, a2, v6);
}

unint64_t sub_20D804D10()
{
  result = qword_27C8392C0;
  if (!qword_27C8392C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8392C0);
  }

  return result;
}

void sub_20D804D8C(uint64_t a1)
{
  sub_20D804E78(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GridForecastSnapshotManager(319);
    if (v2 <= 0x3F)
    {
      sub_20D7E6310();
      if (v3 <= 0x3F)
      {
        sub_20D7E6360(319);
        if (v4 <= 0x3F)
        {
          sub_20D7E63C4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20D804E78(uint64_t a1)
{
  if (!qword_281125010)
  {
    sub_20D973AF8();
    v1 = sub_20D973B28();
    if (!v2)
    {
      atomic_store(v1, &qword_281125010);
    }
  }
}

uint64_t sub_20D804F4C(uint64_t a1)
{
  v4 = *(type metadata accessor for GridForecastAppView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D7EB52C;

  return sub_20D803250(a1, v6, v7, v1 + v5);
}

uint64_t sub_20D80503C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8050A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for GridForecastAppView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973AF8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  MEMORY[0x20F324310](v5 + v1[5]);

  if (*(v5 + v1[9]))
  {
  }

  if (*(v5 + v1[10]))
  {
  }

  if (*(v5 + v1[11]))
  {
  }

  if (*(v5 + v1[12]))
  {
  }

  v7 = v1[14];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D8052D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GridForecastAppView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_20D80536C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8053D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D805434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D846050(a1, v4, v5, v6);
}

uint64_t objectdestroy_48Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D805528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D845C30(a1, v4, v5, v6);
}

unint64_t sub_20D805614()
{
  result = qword_27C839340;
  if (!qword_27C839340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392E8, &qword_20D9783D8);
    sub_20D8056CC();
    sub_20D7EBC4C(&qword_281124E38, &qword_27C838A80, &qword_20D97B670, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839340);
  }

  return result;
}

unint64_t sub_20D8056CC()
{
  result = qword_27C839348;
  if (!qword_27C839348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392E0, &qword_20D9783D0);
    sub_20D805758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839348);
  }

  return result;
}

unint64_t sub_20D805758()
{
  result = qword_27C839350;
  if (!qword_27C839350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392D8, &qword_20D9783C8);
    sub_20D7EBC4C(&qword_27C839358, &qword_27C839360, &qword_20D978478, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839350);
  }

  return result;
}

uint64_t sub_20D805814()
{
  v1 = sub_20D974048();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_20D975468();
    v6 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();
    sub_20D809438(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

double sub_20D80595C()
{
  v1 = sub_20D974048();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    return *(v0 + 16);
  }

  sub_20D975468();
  v10 = sub_20D9742C8();
  sub_20D973408();

  sub_20D974038();
  swift_getAtKeyPath();
  sub_20D80948C(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

uint64_t GridForecastWidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839368, &qword_20D978490);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839370, &unk_20D978498);
  MEMORY[0x28223BE20](v31);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GridForecastWidgetView(0);
  sub_20D7EB7E8(v1 + v14[8], v9, &qword_27C8389E8, &qword_20D9768D0);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    sub_20D9725C8();
    if (v15(v9, 1, v10) != 1)
    {
      sub_20D7E3944(v9, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  v16 = v1 + v14[9];
  if (*(v16 + 8))
  {
    v17 = 12;
  }

  else
  {
    v17 = *v16;
  }

  *v4 = sub_20D974168();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839378, &qword_20D9784A8);
  sub_20D805E64(v1, v13, v17, &v4[*(v18 + 44)]);
  v19 = sub_20D80595C();
  v21 = v20;
  v23 = v22;
  v24 = sub_20D805814();
  v25 = 0.0;
  if ((v24 & 1) == 0)
  {
    v25 = *(v1 + v14[11]);
  }

  v26 = v21 + v25;
  v27 = sub_20D974318();
  sub_20D7EAF18(v4, v6, &qword_27C839368, &qword_20D978490);
  v28 = v32;
  v29 = &v6[*(v31 + 36)];
  *v29 = v27;
  *(v29 + 1) = v19 + -3.0;
  *(v29 + 2) = v26;
  *(v29 + 3) = v23;
  *(v29 + 4) = 0;
  v29[40] = 0;
  sub_20D7EAF18(v6, v28, &qword_27C839370, &unk_20D978498);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_20D805E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v44 = a4;
  v39 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393F0, &qword_20D9786A8) - 8;
  v6 = MEMORY[0x28223BE20](v41);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393F8, &qword_20D9786B0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (&v37 - v14);
  v16 = type metadata accessor for GridForecastWidgetView.UsageAdviceView(0);
  sub_20D7EB7E8(a1 + 64, v15 + v16[7], &qword_27C839380, &qword_20D97A7B0);
  v17 = v16[8];
  v18 = sub_20D972628();
  v38 = *(*(v18 - 8) + 16);
  v38(v15 + v17, a2, v18);
  v19 = (a1 + *(type metadata accessor for GridForecastWidgetView(0) + 40));
  v21 = *v19;
  v20 = v19[1];
  *(v15 + v16[5]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839400, &unk_20D97D110);
  swift_storeEnumTagMultiPayload();
  v23 = v15 + v16[6];
  *v23 = KeyPath;
  v23[8] = 0;
  v24 = (v15 + v16[9]);
  *v24 = v21;
  v24[1] = v20;

  LOBYTE(v20) = sub_20D974368();
  sub_20D80595C();
  sub_20D973AD8();
  v25 = v15 + *(v11 + 44);
  *v25 = v20;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = *(a1 + 56);
  v31 = type metadata accessor for EnergyForecastChart(0);
  v38(&v9[v31[5]], v39, v18);
  *&v9[v31[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  swift_storeEnumTagMultiPayload();
  *&v9[v31[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
  swift_storeEnumTagMultiPayload();
  *v9 = v30;
  *&v9[v31[6]] = v43;
  v9[v31[7]] = 1;
  *&v9[v31[8]] = 0x4010000000000000;
  v32 = v40;
  *&v9[*(v41 + 44)] = xmmword_20D978480;
  sub_20D7EB7E8(v15, v32, &qword_27C8393F8, &qword_20D9786B0);
  v33 = v42;
  sub_20D7EB7E8(v9, v42, &qword_27C8393F0, &qword_20D9786A8);
  v34 = v44;
  sub_20D7EB7E8(v32, v44, &qword_27C8393F8, &qword_20D9786B0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839408, &qword_20D978790);
  sub_20D7EB7E8(v33, v34 + *(v35 + 48), &qword_27C8393F0, &qword_20D9786A8);

  sub_20D7E3944(v9, &qword_27C8393F0, &qword_20D9786A8);
  sub_20D7E3944(v15, &qword_27C8393F8, &qword_20D9786B0);
  sub_20D7E3944(v33, &qword_27C8393F0, &qword_20D9786A8);
  return sub_20D7E3944(v32, &qword_27C8393F8, &qword_20D9786B0);
}

uint64_t GridForecastWidgetView.init(featuredIntervals:forecastUIProvider:referenceTime:debugText:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  v12 = type metadata accessor for GridForecastWidgetView(0);
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 24) = 0;
  *(a6 + 48) = 0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *(a6 + 64) = 0u;
  v13 = v12[8];
  v14 = sub_20D972628();
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = a6 + v12[9];
  *(a6 + v12[11]) = 0x4018000000000000;
  *(a6 + 56) = a1;

  sub_20D80895C(a2, a6 + 64, &qword_27C839380, &qword_20D97A7B0);
  sub_20D80895C(a3, a6 + v13, &qword_27C8389E8, &qword_20D9768D0);
  *v15 = 12;
  *(v15 + 8) = 0;
  v16 = (a6 + v12[10]);
  *v16 = a4;
  v16[1] = a5;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v17 = sub_20D9734F8();
  __swift_project_value_buffer(v17, qword_2811250C8);
  sub_20D7EB7E8(a2, v36, &qword_27C839380, &qword_20D97A7B0);

  v18 = sub_20D9734D8();
  v19 = sub_20D975448();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_20D7F4DC8(0xD000000000000043, 0x800000020D9837B0, &v35);
    *(v20 + 12) = 2080;
    v22 = type metadata accessor for FeaturedInterval(0);
    v23 = MEMORY[0x20F323400](a1, v22);
    v25 = v24;

    v26 = sub_20D7F4DC8(v23, v25, &v35);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    sub_20D7EB7E8(v36, v33, &qword_27C839380, &qword_20D97A7B0);
    if (v34)
    {
      __swift_project_boxed_opaque_existential_1Tm(v33, v34);
      v27 = sub_20D9757A8();
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    else
    {
      sub_20D7E3944(v33, &qword_27C839380, &qword_20D97A7B0);
      v29 = 0xE500000000000000;
      v27 = 0x3E6C696E3CLL;
    }

    sub_20D7E3944(v36, &qword_27C839380, &qword_20D97A7B0);
    v31 = sub_20D7F4DC8(v27, v29, &v35);

    *(v20 + 24) = v31;
    _os_log_impl(&dword_20D7C9000, v18, v19, "GridForecastWidgetView:%s: w/ windows %s & provider: %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v21, -1, -1);
    MEMORY[0x20F324260](v20, -1, -1);

    sub_20D7E3944(a3, &qword_27C8389E8, &qword_20D9768D0);
    v30 = a2;
  }

  else
  {

    sub_20D7E3944(a3, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(a2, &qword_27C839380, &qword_20D97A7B0);
    v30 = v36;
  }

  return sub_20D7E3944(v30, &qword_27C839380, &qword_20D97A7B0);
}

uint64_t GridForecastWidgetView.init(featuredIntervals:forecastUIProvider:referenceTime:numHoursToDisplay:debugText:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = swift_getKeyPath();
  *(a8 + 8) = 0;
  *(a8 + 16) = swift_getKeyPath();
  v14 = type metadata accessor for GridForecastWidgetView(0);
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  *(a8 + 24) = 0;
  *(a8 + 48) = 0;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  *(a8 + 64) = 0u;
  v15 = v14[8];
  v16 = sub_20D972628();
  (*(*(v16 - 8) + 56))(a8 + v15, 1, 1, v16);
  v17 = a8 + v14[9];
  *(a8 + v14[11]) = 0x4018000000000000;
  *(a8 + 56) = a1;

  sub_20D80895C(a2, a8 + 64, &qword_27C839380, &qword_20D97A7B0);
  v37 = a3;
  sub_20D80895C(a3, a8 + v15, &qword_27C8389E8, &qword_20D9768D0);
  *v17 = a4;
  *(v17 + 8) = a5 & 1;
  v18 = (a8 + v14[10]);
  *v18 = a6;
  v18[1] = a7;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v19 = sub_20D9734F8();
  __swift_project_value_buffer(v19, qword_2811250C8);
  sub_20D7EB7E8(a2, v41, &qword_27C839380, &qword_20D97A7B0);

  v20 = sub_20D9734D8();
  v21 = sub_20D975448();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = v23;
    *v22 = 136315650;
    *(v22 + 4) = sub_20D7F4DC8(0xD000000000000055, 0x800000020D983800, &v40);
    *(v22 + 12) = 2080;
    v24 = type metadata accessor for FeaturedInterval(0);
    v25 = MEMORY[0x20F323400](a1, v24);
    v27 = v26;

    v28 = sub_20D7F4DC8(v25, v27, &v40);

    *(v22 + 14) = v28;
    *(v22 + 22) = 2080;
    sub_20D7EB7E8(v41, v38, &qword_27C839380, &qword_20D97A7B0);
    if (v39)
    {
      __swift_project_boxed_opaque_existential_1Tm(v38, v39);
      v29 = sub_20D9757A8();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    else
    {
      sub_20D7E3944(v38, &qword_27C839380, &qword_20D97A7B0);
      v31 = 0xE500000000000000;
      v29 = 0x3E6C696E3CLL;
    }

    sub_20D7E3944(v41, &qword_27C839380, &qword_20D97A7B0);
    v33 = sub_20D7F4DC8(v29, v31, &v40);

    *(v22 + 24) = v33;
    _os_log_impl(&dword_20D7C9000, v20, v21, "GridForecastWidgetView:%s: w/ windows %s & provider: %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v23, -1, -1);
    MEMORY[0x20F324260](v22, -1, -1);

    sub_20D7E3944(v37, &qword_27C8389E8, &qword_20D9768D0);
    v32 = a2;
  }

  else
  {

    sub_20D7E3944(a3, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(a2, &qword_27C839380, &qword_20D97A7B0);
    v32 = v41;
  }

  return sub_20D7E3944(v32, &qword_27C839380, &qword_20D97A7B0);
}

uint64_t sub_20D806B20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for GridForecastWidgetView.UsageAdviceView(0);
  sub_20D7EB7E8(v1 + *(v10 + 20), v9, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D58();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20D806D28()
{
  v1 = sub_20D974048();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for GridForecastWidgetView.UsageAdviceView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_20D975468();
    v7 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();
    sub_20D809438(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_20D806E80()
{
  v0 = sub_20D973D58();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  sub_20D806B20(&v15 - v5);
  (*(v1 + 104))(v4, *MEMORY[0x277CDF9F0], v0);
  v7 = sub_20D973D48();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v9 = sub_20D9734F8();
  __swift_project_value_buffer(v9, qword_2811250C8);
  v10 = sub_20D9734D8();
  v11 = sub_20D975448();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_20D7F4DC8(0x61746544776F6873, 0xEB00000000736C69, &v16);
    *(v12 + 12) = 1024;
    *(v12 + 14) = v7 & 1;
    _os_log_impl(&dword_20D7C9000, v10, v11, "%s %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F324260](v13, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  return v7 & 1;
}

uint64_t sub_20D8070DC()
{
  v1 = v0;
  v2 = sub_20D9740E8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *(type metadata accessor for GridForecastWidgetView.UsageAdviceView(0) + 28);
  sub_20D7EB7E8(v0 + v3, v24, &qword_27C839380, &qword_20D97A7B0);
  v4 = v25;
  if (v25)
  {
    v5 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    v6 = (*(v5 + 16))(1, v4, v5);
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v24);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_20D7E3944(v24, &qword_27C839380, &qword_20D97A7B0);
  }

  v8 = 0xE200000000000000;
  v6 = 11565;
LABEL_6:
  v24[0] = v6;
  v24[1] = v8;
  sub_20D7E1EF8();
  v9 = sub_20D9745C8();
  v11 = v10;
  v13 = v12;
  sub_20D7EB7E8(v1 + v3, v24, &qword_27C839380, &qword_20D97A7B0);
  v14 = v25;
  if (v25)
  {
    v15 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    v16 = (*(v15 + 32))(v14, v15);
    __swift_destroy_boxed_opaque_existential_0(v24);
    if (v16)
    {
      sub_20D9740D8();
      sub_20D9740C8();
      sub_20D9749B8();
      sub_20D9740A8();

      sub_20D9740C8();
      sub_20D974108();
      v17 = sub_20D9745A8();
      v19 = v18;
      v21 = v20;
      v22 = sub_20D974528();
      sub_20D7EADC0(v17, v19, v21 & 1);

      sub_20D7EADC0(v9, v11, v13 & 1);

      return v22;
    }
  }

  else
  {
    sub_20D7E3944(v24, &qword_27C839380, &qword_20D97A7B0);
  }

  return v9;
}

uint64_t sub_20D8073E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v200 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  MEMORY[0x28223BE20](v3 - 8);
  v188 = &v177 - v4;
  v182 = sub_20D974EA8();
  v180 = *(v182 - 8);
  v5 = MEMORY[0x28223BE20](v182);
  v179 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v178 = &v177 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393A0, &qword_20D978610);
  v186 = *(v8 - 8);
  v187 = v8;
  MEMORY[0x28223BE20](v8);
  v184 = &v177 - v9;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393A8, &qword_20D978618);
  MEMORY[0x28223BE20](v185);
  v183 = &v177 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393B0, &qword_20D978620);
  v198 = *(v11 - 8);
  v199 = v11;
  MEMORY[0x28223BE20](v11);
  v181 = &v177 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393B8, &unk_20D978628);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v211 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v215 = &v177 - v16;
  v17 = sub_20D974458();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  MEMORY[0x28223BE20](v196);
  v195 = &v177 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393C0, &qword_20D978638);
  v209 = *(v22 - 8);
  v210 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v208 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v214 = &v177 - v25;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC0, &qword_20D976F20);
  MEMORY[0x28223BE20](v201);
  v192 = (&v177 - v26);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC8, &qword_20D976F28);
  MEMORY[0x28223BE20](v193);
  v191 = (&v177 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393C8, &unk_20D978640);
  v206 = *(v28 - 8);
  v207 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v205 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v213 = &v177 - v31;
  v32 = type metadata accessor for GridForecastWidgetView.UsageAdviceView(0);
  v33 = *(v32 + 28);
  sub_20D7EB7E8(a1 + v33, &v226, &qword_27C839380, &qword_20D97A7B0);
  v34 = *(&v227 + 1);
  if (*(&v227 + 1))
  {
    v35 = *v228;
    __swift_project_boxed_opaque_existential_1Tm(&v226, *(&v227 + 1));
    *&v190 = (*(v35 + 40))(a1 + *(v32 + 32), v34, v35);
    *(&v190 + 1) = v36;
    __swift_destroy_boxed_opaque_existential_0(&v226);
  }

  else
  {
    sub_20D7E3944(&v226, &qword_27C839380, &qword_20D97A7B0);
    *&v190 = 11565;
    *(&v190 + 1) = 0xE200000000000000;
  }

  sub_20D7EB7E8(a1 + v33, &v226, &qword_27C839380, &qword_20D97A7B0);
  v37 = *(&v227 + 1);
  v197 = v32;
  v202 = v20;
  v203 = v17;
  v212 = v18;
  if (*(&v227 + 1))
  {
    v38 = *v228;
    __swift_project_boxed_opaque_existential_1Tm(&v226, *(&v227 + 1));
    v177 = (*(v38 + 48))(a1 + *(v32 + 32), v37, v38);
    v194 = v39;
    __swift_destroy_boxed_opaque_existential_0(&v226);
  }

  else
  {
    sub_20D7E3944(&v226, &qword_27C839380, &qword_20D97A7B0);
    v194 = 0xE200000000000000;
    v177 = 11565;
  }

  v40 = sub_20D8070DC();
  v42 = v41;
  v204 = a1;
  v44 = v43;
  sub_20D974498();
  v45 = sub_20D974558();
  v47 = v46;
  v49 = v48;

  sub_20D7EADC0(v40, v42, v44 & 1);

  v189 = objc_opt_self();
  v50 = [v189 labelColor];
  sub_20D974888();
  v51 = sub_20D974508();
  v53 = v52;
  v55 = v54;
  v57 = v56;

  sub_20D7EADC0(v45, v47, v49 & 1);

  v58 = v192;
  v59 = (v192 + *(v201 + 36));
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v61 = *MEMORY[0x277CE1050];
  v62 = sub_20D9749F8();
  (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
  *v59 = swift_getKeyPath();
  *v58 = v51;
  *(v58 + 8) = v53;
  *(v58 + 16) = v55 & 1;
  *(v58 + 24) = v57;
  sub_20D808FBC();
  v63 = v191;
  sub_20D9747D8();
  sub_20D7E3944(v58, &qword_27C838AC0, &qword_20D976F20);
  sub_20D809074();
  sub_20D9746B8();
  sub_20D7E3944(v63, &qword_27C838AC8, &qword_20D976F28);
  v226 = v190;
  v201 = sub_20D7E1EF8();
  v64 = sub_20D9745C8();
  v66 = v65;
  v68 = v67;
  sub_20D974438();
  v69 = *MEMORY[0x277CE0A10];
  v70 = v212;
  v71 = v202;
  v72 = v203;
  v192 = *(v212 + 104);
  v193 = v212 + 104;
  v192(v202, v69, v203);
  sub_20D974478();

  v73 = *(v70 + 8);
  v212 = v70 + 8;
  v191 = v73;
  v73(v71, v72);
  v74 = sub_20D974558();
  v76 = v75;
  LOBYTE(v72) = v77;

  sub_20D7EADC0(v64, v66, v68 & 1);

  sub_20D9743E8();
  v78 = sub_20D9744F8();
  v80 = v79;
  v82 = v81;
  sub_20D7EADC0(v74, v76, v72 & 1);

  v83 = [v189 labelColor];
  sub_20D974888();
  v84 = sub_20D974508();
  v86 = v85;
  LOBYTE(v76) = v87;
  v89 = v88;

  v90 = v82 & 1;
  v91 = v204;
  sub_20D7EADC0(v78, v80, v90);

  *&v226 = v84;
  *(&v226 + 1) = v86;
  LOBYTE(v227) = v76 & 1;
  *(&v227 + 1) = v89;
  v92 = v195;
  sub_20D9747D8();
  v93 = v84;
  v94 = v91;
  sub_20D7EADC0(v93, v86, v76 & 1);

  sub_20D809130();
  sub_20D9746B8();
  sub_20D7E3944(v92, &qword_27C838F18, &unk_20D977860);
  if (sub_20D806E80())
  {
    *&v226 = v177;
    *(&v226 + 1) = v194;
    v95 = sub_20D9745C8();
    v97 = v96;
    v99 = v98;
    sub_20D974488();
    v100 = v202;
    v101 = v203;
    v192(v202, *MEMORY[0x277CE0A18], v203);
    sub_20D974478();

    v191(v100, v101);
    v102 = sub_20D974558();
    v104 = v103;
    LOBYTE(v100) = v105;

    sub_20D7EADC0(v95, v97, v99 & 1);

    sub_20D974968();
    v106 = sub_20D974508();
    v203 = v106;
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v212 = v111;

    v113 = v204;
    sub_20D7EADC0(v102, v104, v100 & 1);

    *&v226 = v106;
    *(&v226 + 1) = v108;
    v114 = v108;
    LOBYTE(v102) = v110 & 1;
    LOBYTE(v227) = v110 & 1;
    *(&v227 + 1) = v112;
    v115 = v178;
    sub_20D9082CC(v178);
    v116 = v179;
    v117 = v180;
    v118 = v182;
    (*(v180 + 104))(v179, *MEMORY[0x277CE3B68], v182);
    sub_20D809444(&qword_281124CB0, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BB0]);
    sub_20D975208();
    sub_20D975208();
    v119 = *(v117 + 8);
    v120 = v116;
    v94 = v113;
    v119(v120, v118);
    v119(v115, v118);
    v121 = v184;
    v122 = MEMORY[0x277CE0BD8];
    v123 = MEMORY[0x277CE0BC8];
    sub_20D974868();
    sub_20D7EADC0(v203, v114, v102);

    *&v226 = v122;
    *(&v226 + 1) = v123;
    swift_getOpaqueTypeConformance2();
    v124 = v183;
    v125 = v187;
    sub_20D9747D8();
    (*(v186 + 8))(v121, v125);
    sub_20D80934C();
    v126 = v181;
    sub_20D9746B8();
    sub_20D7E3944(v124, &qword_27C8393A8, &qword_20D978618);
    v128 = v198;
    v127 = v199;
    v129 = v215;
    (*(v198 + 32))(v215, v126, v199);
    v130 = 0;
  }

  else
  {

    v130 = 1;
    v129 = v215;
    v128 = v198;
    v127 = v199;
  }

  (*(v128 + 56))(v129, v130, 1, v127);
  v131 = sub_20D806D28();
  v132 = v197;
  if (v131)
  {
    LOBYTE(v216[0]) = 1;
    LOBYTE(v229) = 0;
    *&v226 = 0;
    BYTE8(v226) = 1;
    v228[24] = 0;
  }

  else
  {
    *&v226 = sub_20D9748F8();
    sub_20D8091EC();
    v133 = sub_20D974998();
    sub_20D974C48();
    sub_20D973C18();
    LOBYTE(v216[0]) = v230;
    v219 = v232;
    v218 = 1;
    *&v226 = v133;
    *(&v226 + 1) = v229;
    LOBYTE(v227) = v230;
    *(&v227 + 1) = v231;
    v228[0] = v232;
    *&v228[8] = v233;
    v228[24] = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393D0, &qword_20D978680);
  sub_20D809240();
  sub_20D9741B8();
  v223 = v220;
  v224 = v221;
  v225[0] = v222[0];
  *(v225 + 9) = *(v222 + 9);
  v226 = v220;
  v227 = v221;
  *v228 = v222[0];
  *&v228[9] = *(v222 + 9);
  v134 = (v94 + *(v132 + 36));
  v135 = v134[1];
  if (v135)
  {
    *&v216[0] = *v134;
    *(&v216[0] + 1) = v135;
    sub_20D7EB7E8(&v226, &v220, &qword_27C8393D8, &qword_20D978688);

    v136 = sub_20D9745C8();
    v138 = v137;
    v140 = v139;
    v141 = sub_20D9743C8();
    v142 = v188;
    (*(*(v141 - 8) + 56))(v188, 1, 1, v141);
    sub_20D974418();
    sub_20D7E3944(v142, &qword_27C838C08, &qword_20D977450);
    v143 = sub_20D974558();
    v145 = v144;
    v147 = v146;

    sub_20D7EADC0(v136, v138, v140 & 1);

    sub_20D9748B8();
    v148 = sub_20D974508();
    v150 = v149;
    v152 = v151;
    v154 = v153;

    sub_20D7EADC0(v143, v145, v147 & 1);

    v212 = v148;
    v203 = v152 & 1;
    v204 = v150;
    sub_20D7DDC4C(v148, v150, v152 & 1);
    v202 = v154;
  }

  else
  {
    sub_20D7EB7E8(&v226, &v220, &qword_27C8393D8, &qword_20D978688);
    v212 = 0;
    v203 = 0;
    v204 = 0;
    v202 = 0;
  }

  v155 = v205;
  v156 = *(v206 + 16);
  v157 = v207;
  v156(v205, v213, v207);
  v158 = v208;
  v201 = *(v209 + 16);
  v159 = v210;
  (v201)(v208, v214, v210);
  v160 = v211;
  sub_20D7CE774(v215, v211);
  v161 = v200;
  v156(v200, v155, v157);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393E0, &qword_20D978690);
  v163 = v159;
  (v201)(&v161[v162[12]], v158, v159);
  sub_20D7CE774(v160, &v161[v162[16]]);
  v164 = &v161[v162[20]];
  v165 = v224;
  v216[0] = v223;
  v216[1] = v224;
  v166 = v225[0];
  v217[0] = v225[0];
  v167 = *(v225 + 9);
  *(v217 + 9) = *(v225 + 9);
  *v164 = v223;
  *(v164 + 1) = v165;
  *(v164 + 2) = v166;
  *(v164 + 41) = v167;
  v168 = &v161[v162[24]];
  sub_20D7EB7E8(v216, &v220, &qword_27C8393E8, &unk_20D978698);
  v169 = v212;
  v170 = v203;
  v171 = v204;
  v172 = v202;
  sub_20D8092C4(v212, v204, v203, v202);
  sub_20D7E3944(&v226, &qword_27C8393D8, &qword_20D978688);
  sub_20D809308(v169, v171, v170, v172);
  *v168 = v169;
  v168[1] = v171;
  v168[2] = v170;
  v168[3] = v172;
  sub_20D7E3944(v215, &qword_27C8393B8, &unk_20D978628);
  v173 = *(v209 + 8);
  v173(v214, v163);
  v174 = v207;
  v175 = *(v206 + 8);
  v175(v213, v207);
  sub_20D809308(v169, v171, v170, v172);
  v220 = v223;
  v221 = v224;
  v222[0] = v225[0];
  *(v222 + 9) = *(v225 + 9);
  sub_20D7E3944(&v220, &qword_27C8393D8, &qword_20D978688);
  sub_20D7E3944(v211, &qword_27C8393B8, &unk_20D978628);
  v173(v208, v210);
  return (v175)(v205, v174);
}

uint64_t sub_20D8087CC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20D974168();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839398, &unk_20D978600);
  return sub_20D8073E0(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_20D808820()
{
  sub_20D973FA8();
  sub_20D809444(&qword_281124E48, MEMORY[0x277CE3940], MEMORY[0x277CE3938]);
  sub_20D974058();
  return v1;
}

void *sub_20D80889C@<X0>(_BYTE *a1@<X8>)
{
  sub_20D973FA8();
  sub_20D809444(&qword_281124E48, MEMORY[0x277CE3940], MEMORY[0x277CE3938]);
  result = sub_20D974058();
  *a1 = v3;
  return result;
}

void sub_20D80892C(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x20F3221C0]();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_20D80895C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_20D808A08(uint64_t a1)
{
  sub_20D808C60(319, &qword_281125000, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_20D808C60(319, &qword_281125018, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_20D808F3C(319, &qword_281126EC8, type metadata accessor for FeaturedInterval, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_20D808BFC(319);
        if (v4 <= 0x3F)
        {
          sub_20D808F3C(319, &qword_281126E20, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20D808C60(319, &qword_281124BD8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_20D808C60(319, &qword_281124C28, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20D808BFC(uint64_t a1)
{
  if (!qword_281126688[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839388, &qword_20D978588);
    v1 = sub_20D975508();
    if (!v2)
    {
      atomic_store(v1, qword_281126688);
    }
  }
}

void sub_20D808C60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20D808CB0()
{
  result = qword_281124F30;
  if (!qword_281124F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839370, &unk_20D978498);
    sub_20D7EBC4C(&qword_281124D40, &qword_27C839368, &qword_20D978490, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F30);
  }

  return result;
}

void sub_20D808DB0(uint64_t a1)
{
  sub_20D808F3C(319, &qword_281125020, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_20D808F3C(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_20D808C60(319, &qword_281125000, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_20D808BFC(319);
        if (v4 <= 0x3F)
        {
          sub_20D972628();
          if (v5 <= 0x3F)
          {
            sub_20D808C60(319, &qword_281124C28, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20D808F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_20D808FBC()
{
  result = qword_281127010;
  if (!qword_281127010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838AC0, &qword_20D976F20);
    sub_20D7EBC4C(&qword_281126F40, &qword_27C838AE0, &qword_20D976F40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127010);
  }

  return result;
}

unint64_t sub_20D809074()
{
  result = qword_281124EF8;
  if (!qword_281124EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838AC8, &qword_20D976F28);
    sub_20D808FBC();
    sub_20D809444(&qword_281126F38, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EF8);
  }

  return result;
}

unint64_t sub_20D809130()
{
  result = qword_281124F98;
  if (!qword_281124F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838F18, &unk_20D977860);
    sub_20D809444(&qword_281126F38, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F98);
  }

  return result;
}

unint64_t sub_20D8091EC()
{
  result = qword_281126F28;
  if (!qword_281126F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126F28);
  }

  return result;
}

unint64_t sub_20D809240()
{
  result = qword_281124F68;
  if (!qword_281124F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8393D0, &qword_20D978680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F68);
  }

  return result;
}

uint64_t sub_20D8092C4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20D7DDC4C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20D809308(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20D7EADC0(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_20D80934C()
{
  result = qword_281124F70;
  if (!qword_281124F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8393A8, &qword_20D978618);
    swift_getOpaqueTypeConformance2();
    sub_20D809444(&qword_281126F38, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F70);
  }

  return result;
}

uint64_t sub_20D809438(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_20D809444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D80948C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

uint64_t type metadata accessor for EnergyForecastChart(uint64_t a1)
{
  result = qword_281127710;
  if (!qword_281127710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D80950C(uint64_t a1)
{
  sub_20D80966C(319, &qword_281126EC8, type metadata accessor for FeaturedInterval, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20D972628();
    if (v2 <= 0x3F)
    {
      sub_20D80966C(319, &qword_281127058, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_20D80966C(319, &qword_281127060, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D80966C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20D8096EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for EnergyForecastChart(0);
  sub_20D7EB7E8(v1 + *(v10 + 36), v9, &qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973B18();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20D8098F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for EnergyForecastChart(0);
  sub_20D7EB7E8(v1 + *(v10 + 40), v9, &qword_27C838AA8, &qword_20D976EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D974E98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20D809AFC@<X0>(uint64_t a1@<X8>)
{
  v152 = a1;
  v147 = sub_20D9744B8();
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v132 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for FeaturedHoursChart(0);
  MEMORY[0x28223BE20](v150);
  v149 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839428, &unk_20D978828);
  MEMORY[0x28223BE20](v151);
  v148 = &v132 - v4;
  v140 = sub_20D972A08();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v153 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v137 = &v132 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v161 = &v132 - v13;
  MEMORY[0x28223BE20](v12);
  v160 = &v132 - v14;
  v143 = sub_20D974E98();
  v136 = *(v143 - 1);
  v15 = MEMORY[0x28223BE20](v143);
  v135 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v134 = &v132 - v17;
  v18 = sub_20D973B18();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v132 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v132 - v26;
  v144 = type metadata accessor for FeaturedHoursInfo(0);
  MEMORY[0x28223BE20](v144);
  v158 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v1;
  v30 = type metadata accessor for EnergyForecastChart(0);
  v31 = v30[5];
  v133 = *(v1 + v30[6]);
  v154 = *(v7 + 16);
  v155 = v7 + 16;
  v154(v27, v1 + v31, v6);
  v157 = v7;
  v32 = *(v7 + 56);
  v159 = v6;
  v32(v27, 0, 1, v6);

  sub_20D8096EC(v24);
  (*(v19 + 104))(v22, *MEMORY[0x277CDF3C0], v18);
  v156 = sub_20D973B08();
  v33 = *(v19 + 8);
  v33(v22, v18);
  v33(v24, v18);
  v34 = v29;
  v142 = *(v1 + v30[7]);
  v35 = v134;
  sub_20D8098F4(v134);
  v36 = v135;
  sub_20D974E88();
  v141 = sub_20D974E78();
  v37 = *(v136 + 8);
  v38 = v36;
  v39 = v143;
  v37(v38, v143);
  v40 = v133;
  v37(v35, v39);
  v143 = v27;
  sub_20D877B28(v27, v29, v160);
  sub_20D973028();
  sub_20D972498();
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v41 = sub_20D9734F8();
  v42 = __swift_project_value_buffer(v41, qword_28112AC18);
  v43 = sub_20D9734D8();
  v44 = sub_20D975448();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v165[0] = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_20D7F4DC8(0xD000000000000060, 0x800000020D983930, v165);
    *(v45 + 12) = 2048;
    *(v45 + 14) = v40;
    _os_log_impl(&dword_20D7C9000, v43, v44, "%s Showing a %ld-hour chart", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x20F324260](v46, -1, -1);
    MEMORY[0x20F324260](v45, -1, -1);
  }

  v47 = v159;
  v49 = v153;
  v48 = v154;
  v50 = v137;
  v154(v137, v160, v159);
  v48(v49, v161, v47);

  v51 = sub_20D9734D8();
  v52 = sub_20D975478();

  v53 = os_log_type_enabled(v51, v52);
  v54 = MEMORY[0x277D17F20];
  v153 = v34;
  if (v53)
  {
    v55 = swift_slowAlloc();
    v136 = v42;
    v56 = v55;
    v135 = swift_slowAlloc();
    *&v165[0] = v135;
    *v56 = 136316162;
    *(v56 + 4) = sub_20D7F4DC8(0xD000000000000060, 0x800000020D983930, v165);
    *(v56 + 12) = 2080;
    v57 = type metadata accessor for FeaturedInterval(0);
    v58 = MEMORY[0x20F323400](v34, v57);
    LODWORD(v134) = v52;
    v60 = sub_20D7F4DC8(v58, v59, v165);

    *(v56 + 14) = v60;
    *(v56 + 22) = 2080;
    v61 = v49;
    v62 = v139;
    v63 = v138;
    v64 = v140;
    (*(v139 + 104))(v138, *v54, v140);
    v65 = sub_20D9729F8();
    v67 = v66;
    (*(v62 + 8))(v63, v64);
    v68 = sub_20D7F4DC8(v65, v67, v165);

    *(v56 + 24) = v68;
    *(v56 + 32) = 2080;
    v69 = sub_20D9725F8();
    v71 = v70;
    v72 = *(v157 + 8);
    v72(v50, v47);
    v73 = sub_20D7F4DC8(v69, v71, v165);

    *(v56 + 34) = v73;
    *(v56 + 42) = 2080;
    v74 = sub_20D9725F8();
    v76 = v75;
    v137 = v72;
    v72(v61, v47);
    v34 = v153;
    v77 = sub_20D7F4DC8(v74, v76, v165);

    *(v56 + 44) = v77;
    _os_log_impl(&dword_20D7C9000, v51, v134, "--Start: %s energyWindows: %s, making chart featuring %s hours from %s to %s", v56, 0x34u);
    v78 = v135;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v78, -1, -1);
    MEMORY[0x20F324260](v56, -1, -1);
  }

  else
  {

    v79 = *(v157 + 8);
    v79(v49, v47);
    v137 = v79;
    v79(v50, v47);
  }

  v80 = sub_20D9734D8();
  v81 = sub_20D975448();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    *&v165[0] = v136;
    *v82 = 136315906;
    *(v82 + 4) = sub_20D7F4DC8(0xD000000000000060, 0x800000020D983930, v165);
    *(v82 + 12) = 2048;
    *(v82 + 14) = *(v34 + 2);

    *(v82 + 22) = 2080;
    v83 = v139;
    v84 = *(v139 + 104);
    v85 = v138;
    v86 = v140;
    v84(v138, *MEMORY[0x277D17F20], v140);
    v87 = sub_20D9729F8();
    LODWORD(v135) = v81;
    v88 = v87;
    v90 = v89;
    v91 = *(v83 + 8);
    v91(v85, v86);
    v92 = sub_20D7F4DC8(v88, v90, v165);

    *(v82 + 24) = v92;
    *(v82 + 32) = 2080;
    v84(v85, *MEMORY[0x277D17F28], v86);
    v93 = sub_20D9729F8();
    v95 = v94;
    v91(v85, v86);
    v47 = v159;
    v96 = sub_20D7F4DC8(v93, v95, v165);

    *(v82 + 34) = v96;
    _os_log_impl(&dword_20D7C9000, v80, v135, "--End: %s Found %ld between %s and %s energyIntervals", v82, 0x2Au);
    v97 = v136;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v97, -1, -1);
    MEMORY[0x20F324260](v82, -1, -1);
  }

  else
  {
  }

  v98 = v158;
  v99 = objc_opt_self();
  v100 = &selRef_systemWhiteColor;
  if ((v156 & 1) == 0)
  {
    v100 = &selRef_systemOrangeColor;
  }

  v101 = [v99 *v100];
  v140 = sub_20D974888();
  v154(v98, v160, v47);
  sub_20D972458();
  v103 = v102;
  v104 = [objc_opt_self() quaternarySystemFillColor];
  *&v165[0] = sub_20D974888();
  v155 = sub_20D973C28();
  if (qword_2811275A8 != -1)
  {
    swift_once();
  }

  v106 = qword_28112AC68;
  v105 = unk_28112AC70;
  v107 = qword_281127670;

  if (v107 != -1)
  {
    swift_once();
  }

  v109 = qword_28112AC78;
  v108 = unk_28112AC80;
  v110 = qword_281127138;

  if (v110 != -1)
  {
    swift_once();
  }

  v112 = qword_28112AC30;
  v111 = *algn_28112AC38;

  v113 = sub_20D974958();
  sub_20D973B38();
  sub_20D7E3944(v143, &qword_27C8389E8, &qword_20D9768D0);
  v114 = v159;
  v115 = v137;
  (v137)(v161, v159);
  v115(v160, v114);
  v116 = v144;
  v117 = v158;
  *&v158[*(v144 + 20)] = v103;
  *(v117 + v116[6]) = v153;
  *(v117 + v116[7]) = v155;
  v118 = (v117 + v116[8]);
  *v118 = v106;
  v118[1] = v105;
  v119 = (v117 + v116[9]);
  *v119 = v109;
  v119[1] = v108;
  v120 = (v117 + v116[10]);
  *v120 = v112;
  v120[1] = v111;
  *(v117 + v116[11]) = v113;
  *(v117 + v116[12]) = v140;
  v121 = v117 + v116[13];
  v122 = v165[1];
  *v121 = v165[0];
  *(v121 + 16) = v122;
  *(v121 + 32) = v166;
  *(v117 + v116[14]) = v142;
  *(v117 + v116[15]) = v141 & 1;
  *(v117 + v116[16]) = v156 & 1;
  v123 = v149;
  sub_20D80ACB4(v117, v149);
  KeyPath = swift_getKeyPath();
  v125 = v150;
  *(v123 + *(v150 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  *(v123 + v125[6]) = 0;
  v163 = 0x3FF0000000000000;
  (*(v145 + 104))(v146, *MEMORY[0x277CE0A68], v147);
  sub_20D7E6420();
  sub_20D973B68();
  v126 = (v123 + v125[8]);
  v162 = 0;
  sub_20D974A38();
  v127 = v164;
  *v126 = v163;
  v126[1] = v127;
  v128 = (v123 + v125[9]);
  v162 = 0;
  sub_20D974A38();
  v129 = v164;
  *v128 = v163;
  v128[1] = v129;
  if (qword_281127150 != -1)
  {
    swift_once();
  }

  v163 = qword_28112AC40;
  v164 = *algn_28112AC48;
  sub_20D80AE64(qword_281127438, type metadata accessor for FeaturedHoursChart, &protocol conformance descriptor for FeaturedHoursChart);
  sub_20D7E1EF8();
  v130 = v148;
  sub_20D9747A8();
  sub_20D80AD18(v123, type metadata accessor for FeaturedHoursChart);
  sub_20D973D98();
  sub_20D7E3944(v130, &qword_27C839428, &unk_20D978828);
  return sub_20D80AD18(v117, type metadata accessor for FeaturedHoursInfo);
}

uint64_t sub_20D80ACB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedHoursInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D80AD18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20D80AD78()
{
  result = qword_281127028;
  if (!qword_281127028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839428, &unk_20D978828);
    sub_20D80AE64(qword_281127438, type metadata accessor for FeaturedHoursChart, &protocol conformance descriptor for FeaturedHoursChart);
    sub_20D80AE64(&qword_281126F38, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127028);
  }

  return result;
}

uint64_t sub_20D80AE64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_20D80AEE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_20D80AF28(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20D80AFC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839430, &qword_20D9789C0);
  MEMORY[0x28223BE20](v78);
  v77 = &v71 - v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839438, &qword_20D9789C8);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v76 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839440, &qword_20D9789D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v86 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v92 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839448, &qword_20D9789D8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v71 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839450, &qword_20D9789E0);
  v13 = MEMORY[0x28223BE20](v75);
  v84 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v85 = &v71 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v83 = &v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v73 = &v71 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v74 = &v71 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v71 - v23;
  v26 = *(v2 + 112);
  v25 = *(v2 + 120);
  v28 = *(v2 + 48);
  v27 = *(v2 + 56);
  v29 = swift_allocObject();
  v29[2] = v26;
  v29[3] = v25;
  v29[4] = v28;
  v29[5] = v27;
  v93 = v26;
  v94 = v25;
  v95 = 0x7269632E6F666E69;
  v96 = 0xEB00000000656C63;

  v30 = v28;
  v31 = v10;
  sub_20D7DD75C(v30, v27);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839458, &qword_20D9789E8);
  v90 = sub_20D7EBC4C(&qword_27C839460, &qword_27C839458, &qword_20D9789E8, MEMORY[0x277CDEFF0]);
  v91 = v32;
  sub_20D974A88();
  v33 = sub_20D7EBC4C(&qword_27C839468, &qword_27C839448, &qword_20D9789D8, MEMORY[0x277CDF028]);
  v82 = v24;
  v89 = v33;
  sub_20D9747D8();
  v34 = *(v31 + 8);
  v34(v12, v9);
  v35 = *v2 == 1;
  v88 = v34;
  v79 = v31 + 8;
  if (v35)
  {
    if (*(v2 + 1) == 1)
    {
      v36 = *(v2 + 152);
      v73 = *(v2 + 144);
      v38 = *(v2 + 80);
      v37 = *(v2 + 88);
      v72 = v37;
      v71 = v38;
      if (v38)
      {
        v39 = v37;
      }

      else
      {
        sub_20D7E7080(v2 + 8, v97);
        v39 = swift_allocObject();
        sub_20D7EB734(v97, v39 + 16);
        v38 = sub_20D80BF20;
      }

      v48 = swift_allocObject();
      *(v48 + 16) = v38;
      *(v48 + 24) = v39;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_20D80BF80;
      *(v49 + 24) = v48;
      v50 = swift_allocObject();
      v50[2] = v73;
      v50[3] = v36;
      v50[4] = sub_20D80BF78;
      v50[5] = v49;
      MEMORY[0x28223BE20](v50);
      *(&v71 - 4) = v51;
      *(&v71 - 3) = v36;
      *(&v71 - 2) = 0x616C732E6C6C6562;
      *(&v71 - 1) = 0xEA00000000006873;
      sub_20D7DD75C(v71, v72);

      sub_20D974A88();
      v52 = v74;
      sub_20D9747D8();
    }

    else
    {
      v43 = *(v2 + 128);
      v42 = *(v2 + 136);
      v45 = *(v2 + 64);
      v44 = *(v2 + 72);
      v74 = v44;
      v72 = v45;
      if (v45)
      {
        v46 = sub_20D80BF80;
        v47 = v44;
      }

      else
      {
        sub_20D7E7080(v2 + 8, v97);
        v47 = swift_allocObject();
        sub_20D7EB734(v97, v47 + 16);
        v46 = sub_20D80BDA8;
        v45 = sub_20D7EB74C;
      }

      v53 = swift_allocObject();
      *(v53 + 16) = v45;
      *(v53 + 24) = v47;
      v54 = swift_allocObject();
      *(v54 + 16) = v46;
      *(v54 + 24) = v53;
      v55 = swift_allocObject();
      v55[2] = v43;
      v55[3] = v42;
      v55[4] = sub_20D80BDD0;
      v55[5] = v54;
      MEMORY[0x28223BE20](v55);
      *(&v71 - 4) = v43;
      *(&v71 - 3) = v42;
      *(&v71 - 2) = 1819043170;
      *(&v71 - 1) = 0xE400000000000000;
      sub_20D7DD75C(v72, v74);

      sub_20D974A88();
      v52 = v73;
      sub_20D9747D8();
      v34 = v88;
    }

    v34(v12, v9);
    sub_20D7EB7E8(v52, v77, &qword_27C839450, &qword_20D9789E0);
    swift_storeEnumTagMultiPayload();
    sub_20D80BDF8();
    v56 = v76;
    sub_20D9741B8();
    sub_20D7E3944(v52, &qword_27C839450, &qword_20D9789E0);
    v41 = v92;
    sub_20D80BEB0(v56, v92);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v41 = v92;
  }

  (*(v80 + 56))(v41, v40, 1, v81);
  v58 = *(v2 + 160);
  v57 = *(v2 + 168);
  v59 = *(v2 + 96);
  v60 = *(v2 + 104);
  v61 = swift_allocObject();
  v61[2] = v58;
  v61[3] = v57;
  v61[4] = v59;
  v61[5] = v60;
  MEMORY[0x28223BE20](v61);
  *(&v71 - 4) = v58;
  *(&v71 - 3) = v57;
  strcpy(&v71 - 16, "minus.circle");
  *(&v71 - 3) = 0;
  *(&v71 - 1) = -5120;

  sub_20D7DD75C(v59, v60);
  sub_20D974A88();
  v62 = v83;
  sub_20D9747D8();
  v88(v12, v9);
  v63 = v82;
  v64 = v85;
  sub_20D7EB7E8(v82, v85, &qword_27C839450, &qword_20D9789E0);
  v65 = v92;
  v66 = v86;
  sub_20D7EB7E8(v92, v86, &qword_27C839440, &qword_20D9789D0);
  v67 = v84;
  sub_20D7EB7E8(v62, v84, &qword_27C839450, &qword_20D9789E0);
  v68 = v87;
  sub_20D7EB7E8(v64, v87, &qword_27C839450, &qword_20D9789E0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839470, &qword_20D9789F0);
  sub_20D7EB7E8(v66, v68 + *(v69 + 48), &qword_27C839440, &qword_20D9789D0);
  sub_20D7EB7E8(v67, v68 + *(v69 + 64), &qword_27C839450, &qword_20D9789E0);
  sub_20D7E3944(v62, &qword_27C839450, &qword_20D9789E0);
  sub_20D7E3944(v65, &qword_27C839440, &qword_20D9789D0);
  sub_20D7E3944(v63, &qword_27C839450, &qword_20D9789E0);
  sub_20D7E3944(v67, &qword_27C839450, &qword_20D9789E0);
  sub_20D7E3944(v66, &qword_27C839440, &qword_20D9789D0);
  return sub_20D7E3944(v64, &qword_27C839450, &qword_20D9789E0);
}

void sub_20D80BBA8(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v6 = sub_20D9734F8();
  __swift_project_value_buffer(v6, qword_28112AC18);

  v7 = sub_20D9734D8();
  v8 = sub_20D975448();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20D7F4DC8(a1, a2, &v11);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  if (a3)
  {
    a3();
  }
}

uint64_t sub_20D80BD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20D7E1EF8();

  return sub_20D974A28();
}

unint64_t sub_20D80BDF8()
{
  result = qword_27C839478;
  if (!qword_27C839478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839450, &qword_20D9789E0);
    sub_20D7EBC4C(&qword_27C839468, &qword_27C839448, &qword_20D9789D8, MEMORY[0x277CDF028]);
    sub_20D7EB424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839478);
  }

  return result;
}

uint64_t sub_20D80BEB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839438, &qword_20D9789C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D80BF20()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  return (*(v2 + 88))(v1, v2);
}

HomeEnergyUI::UtilityRateInfoSnapshotManager::SnapshotManagerType_optional __swiftcall UtilityRateInfoSnapshotManager.SnapshotManagerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20D975788();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UtilityRateInfoSnapshotManager.SnapshotManagerType.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1801678701;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572616853707061;
  }
}

uint64_t sub_20D80C03C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000020D981530;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x800000020D981530;
  }

  else
  {
    v3 = 1801678701;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6572616853707061;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 1801678701;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6572616853707061;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20D9757C8();
  }

  return v11 & 1;
}

uint64_t sub_20D80C128()
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D80C1CC(uint64_t a1)
{
  sub_20D975158();
}

uint64_t sub_20D80C25C()
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

void sub_20D80C308(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x800000020D981530;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 1801678701;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6572616853707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_20D80C368@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_20D80C410@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20D80C4B8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000020D981530;
  v5 = 0xE400000000000000;
  if (*(v1 + 16) == 1)
  {
    v5 = 0x800000020D981530;
  }

  else
  {
    v3 = 1801678701;
  }

  if (*(v1 + 16))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6572616853707061;
  }

  if (*(v1 + 16))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  v8 = 0xD000000000000010;
  if (v2 != 1)
  {
    v8 = 1801678701;
    v4 = 0xE400000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6572616853707061;
  }

  if (v2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v6 == v9 && v7 == v10)
  {

LABEL_22:
    *(v1 + 16) = v2;
    return result;
  }

  v12 = sub_20D9757C8();

  if (v12)
  {
    goto LABEL_22;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D80C68C()
{
  v2 = 0;
  type metadata accessor for UtilityRateInfoSnapshotManager(0);
  v0 = swift_allocObject();
  result = UtilityRateInfoSnapshotManager.init(type:siteID:)(&v2, 0, 0);
  qword_27C839490 = v0;
  return result;
}

uint64_t UtilityRateInfoSnapshotManager.__allocating_init(type:siteID:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  UtilityRateInfoSnapshotManager.init(type:siteID:)(a1, a2, a3);
  return v6;
}

uint64_t sub_20D80C760()
{
  v0 = sub_20D972628();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 2;
  sub_20D972618();
  type metadata accessor for UtilityRateInfoSnapshotManager(0);
  v3 = swift_allocObject();
  result = UtilityRateInfoSnapshotManager.init(type:startDate:siteID:ratePlanName:utilityPeakPeriods:)(&v6, v2, 0, 0, 0, 0, 0);
  qword_27C839498 = v3;
  return result;
}

uint64_t UtilityRateInfoSnapshotManager.__allocating_init(type:startDate:siteID:ratePlanName:utilityPeakPeriods:)(unsigned __int8 *a1, char *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  UtilityRateInfoSnapshotManager.init(type:startDate:siteID:ratePlanName:utilityPeakPeriods:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_20D80C8C4(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_20D80C974@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_20D80CA4C()
{
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_20D80CB10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 24) == a1 && v5 == a2;
      if (v6 || (sub_20D9757C8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D80CC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

uint64_t (*sub_20D80CCE0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D80C924(v4);
  return sub_20D80CE18;
}

uint64_t sub_20D80CE88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v4 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  return sub_20D815A38(v3 + v4, a2);
}

uint64_t sub_20D80CF50(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D815A38(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972848();

  return sub_20D815AB8(v6);
}

uint64_t sub_20D80D078@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v3 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  return sub_20D815A38(v5 + v3, a1);
}

uint64_t sub_20D80D140(uint64_t a1)
{
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972848();

  return sub_20D815AB8(a1);
}

uint64_t sub_20D80D210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D815A38(a2, v6);
  v7 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  sub_20D81A514(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t (*sub_20D80D2CC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D80CE24(v4);
  return sub_20D80D404;
}

uint64_t (*sub_20D80D4D8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D80D410(v4);
  return sub_20D80D610;
}

uint64_t sub_20D80D690@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v7 = (v6 + *a3);
  swift_beginAccess();
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_20D80D7D4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_20D80D8C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  if (v9)
  {
    if (a2)
    {
      v10 = *v8 == a1 && v9 == a2;
      if (v10 || (sub_20D9757C8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v8 = a1;
    v8[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D80DA2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

uint64_t (*sub_20D80DA9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D80D61C(v4);
  return sub_20D80DBD4;
}

void sub_20D80DBE0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_20D972868();

  free(v3);
}

uint64_t sub_20D80DC74@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v3 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  swift_beginAccess();
  v4 = sub_20D972628();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_20D80DD6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v4 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  swift_beginAccess();
  v5 = sub_20D972628();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_20D80DE64(uint64_t a1)
{
  v2 = sub_20D972628();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_20D80DF30(v4);
}

uint64_t sub_20D80DF30(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_20D81A4CC(&qword_281127740, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v14[0] = a1;
  LOBYTE(a1) = sub_20D974FD8();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
    sub_20D972848();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_20D80E1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t sub_20D80E2EC()
{
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  return *(v0 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod);
}

uint64_t sub_20D80E394@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  *a2 = *(v3 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod);
  return result;
}

uint64_t sub_20D80E444(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
    sub_20D972848();
  }

  return result;
}

uint64_t UtilityRateInfoSnapshotManager.init(type:startDate:siteID:ratePlanName:utilityPeakPeriods:)(unsigned __int8 *a1, char *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v104 = a6;
  v105 = a7;
  v97 = a5;
  v106 = a4;
  v98 = a3;
  v112 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v92 - v11;
  v103 = sub_20D972838();
  v108 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v15 = MEMORY[0x28223BE20](v14);
  v100 = (&v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v99 = (&v92 - v18);
  MEMORY[0x28223BE20](v17);
  v96 = &v92 - v19;
  v20 = sub_20D972628();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v101 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v92 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v92 - v27;
  v29 = *a1;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  if (qword_27C838778 != -1)
  {
    swift_once();
  }

  v109 = v14;
  v30 = __swift_project_value_buffer(v14, qword_27C83C9B0);
  sub_20D815A38(v30, v8 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot);
  v31 = (v8 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityArtworkURL);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v8 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityName);
  *v32 = 0;
  v32[1] = 0;
  sub_20D972888();
  *(v8 + 16) = v29;
  sub_20D9725C8();
  v110 = v21;
  (*(v21 + 32))(v8 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate, v28, v20);
  v33 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v34 = sub_20D975078();
  v35 = [v33 initWithSuiteName_];

  v111 = v20;
  if (v35)
  {
    v36 = sub_20D975078();
    v37 = [v35 integerForKey_];
  }

  else
  {
    v37 = 0;
  }

  v38 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod;
  *(v8 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod) = v37;
  swift_getKeyPath();
  v39 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v113[0] = v8;
  v107 = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  if (*(v8 + v38) <= 0)
  {
    sub_20D973118();
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v40 > -9.22337204e18)
    {
      if (v40 < 9.22337204e18)
      {
        v41 = v40;
        if (*(v8 + v38) != v40)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *(&v92 - 2) = v8;
          *(&v92 - 1) = v41;
          v113[0] = v8;
          sub_20D972848();
        }

        goto LABEL_12;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_12:
  v42 = v108;
  v43 = v109;
  if (v29 > 1)
  {
LABEL_23:

    if (qword_27C838588 != -1)
    {
      swift_once();
    }

    v70 = __swift_project_value_buffer(v43, qword_27C839D20);
    v71 = v100;
    sub_20D815A38(v70, v100);
    v72 = swift_getKeyPath();
    MEMORY[0x28223BE20](v72);
    *(&v92 - 2) = v8;
    *(&v92 - 1) = v71;
    v113[0] = v8;
    sub_20D972848();

    (*(v110 + 8))(v112, v111);
    sub_20D815AB8(v71);
    return v8;
  }

  v94 = 0;
  v95 = v39;
  v44 = v26;
  v45 = v26;
  v46 = v111;
  v100 = *(v110 + 16);
  (v100)(v45, v112, v111);
  sub_20D9727F8();
  v47 = v103;
  if ((*(v42 + 48))(v12, 1, v103) == 1)
  {
    goto LABEL_33;
  }

  v48 = v104;
  v49 = 0xE000000000000000;
  if (v104)
  {
    v49 = v104;
  }

  v104 = v49;
  v50 = v97;
  if (!v48)
  {
    v50 = 0;
  }

  v97 = v50;
  v51 = v102;
  (*(v42 + 32))(v102, v12, v47);
  v52 = v105;
  if (!v105)
  {
    v52 = MEMORY[0x277D84F90];
  }

  v105 = v52;
  v53 = v101;
  v93 = v44;
  v54 = v100;
  (v100)(v101, v44, v46);
  v55 = v43[10];
  v56 = v99;
  *(v99 + v55) = 7;
  v57 = v47;
  v58 = v43[11];
  *(v56 + v58) = 6;
  v59 = v106;
  *v56 = v98;
  v56[1] = v59;
  v60 = v51;
  v61 = v56;
  (*(v42 + 16))(v56 + v43[9], v60, v57);
  v54(v61 + v43[5], v53, v46);
  v62 = (v61 + v43[8]);
  v63 = v104;
  v64 = v105;
  *v62 = v97;
  v62[1] = v63;
  *(v61 + v55) = 7;
  *(v61 + v58) = 6;
  v65 = sub_20D817948(v64);

  v66 = *(v65 + 16);
  if (v66)
  {
    v67 = sub_20D815D18(*(v65 + 16), 0);
    v68 = *(sub_20D973158() - 8);
    v106 = sub_20D81754C(v113, &v67[(*(v68 + 80) + 32) & ~*(v68 + 80)], v66, v65);
    v69 = v113[0];
    v43 = v113[2];

    sub_20D817AE4(v69);
    if (v106 != v66)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  v113[0] = v67;
  v73 = v94;
  sub_20D815E14(v113);
  v74 = v109;
  v75 = v110;
  v106 = v73;
  if (!v73)
  {

    v76 = v113[0];
    *(v61 + v74[12]) = v113[0];
    v77 = v74[6];

    v78 = v101;
    v79 = v61;
    v80 = v102;
    sub_20D972F88();
    v81 = v74[7];
    sub_20D9730F8();
    _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v79 + v77, v79 + v81, v76, v80);
    *(v79 + v74[13]) = v82;
    _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v78, v79 + v81, v76, v80);
    v84 = v83;

    v85 = *(v75 + 8);
    v86 = v78;
    v87 = v111;
    v85(v86, v111);
    (*(v108 + 8))(v80, v103);
    v85(v93, v87);
    *(v79 + v74[14]) = v84;
    v88 = v96;
    sub_20D817AEC(v79, v96);
    v89 = swift_getKeyPath();
    MEMORY[0x28223BE20](v89);
    *(&v92 - 2) = v8;
    *(&v92 - 1) = v88;
    v113[0] = v8;
    sub_20D972848();

    sub_20D815AB8(v88);
    sub_20D80EFD4();
    v85(v112, v87);
    return v8;
  }

LABEL_34:

  __break(1u);
  return result;
}

void sub_20D80EFD4()
{
  v1 = v0;
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CE0);
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C80, &v15);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s: registering for foreground notifications", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v7 = [objc_opt_self() defaultCenter];
  v8 = *MEMORY[0x277D76758];
  v19 = sub_20D81A290;
  v20 = v1;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_20D82D950;
  v18 = &block_descriptor_0;
  v9 = _Block_copy(&v15);

  v10 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  sub_20D81A2E0();
  v11 = [swift_getObjCClassFromMetadata() defaultCenter];
  sub_20D972F08();
  v12 = sub_20D975078();

  v19 = sub_20D81A32C;
  v20 = v1;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_20D82D950;
  v18 = &block_descriptor_90;
  v13 = _Block_copy(&v15);

  v14 = [v11 addObserverForName:v12 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t UtilityRateInfoSnapshotManager.__allocating_init(siteID:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D80F3B0;

  return UtilityRateInfoSnapshotManager.init(siteID:)(a1, a2);
}

uint64_t sub_20D80F3B0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t UtilityRateInfoSnapshotManager.init(siteID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20D972628();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_20D9752E8();
  v3[8] = sub_20D9752D8();
  v6 = sub_20D975298();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x2822009F8](sub_20D80F5A4, v6, v5);
}

void sub_20D80F5A4()
{
  v23 = v0;
  v1 = v0[4];
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  if (qword_27C838778 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v4 = __swift_project_value_buffer(v3, qword_27C83C9B0);
  sub_20D815A38(v4, v2 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot);
  v5 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityArtworkURL);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityName);
  *v6 = 0;
  v6[1] = 0;
  sub_20D972888();
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v7 = sub_20D9734F8();
  __swift_project_value_buffer(v7, qword_27C840CE0);

  v8 = sub_20D9734D8();
  v9 = sub_20D975478();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_20D7F4DC8(0x7469732874696E69, 0xED0000293A444965, &v22);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D7F4DC8(v11, v10, &v22);
    _os_log_impl(&dword_20D7C9000, v8, v9, "UtilityRateInfoSnapshotManager:%s awaiting initialization with %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v13, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  v15 = v0[6];
  v14 = v0[7];
  v17 = v0[4];
  v16 = v0[5];
  *(v1 + 16) = 1;
  sub_20D9725C8();
  (*(v15 + 32))(v17 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate, v14, v16);
  sub_20D973118();
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return;
  }

  *(v0[4] + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod) = v18;
  v19 = swift_task_alloc();
  v0[11] = v19;
  *v19 = v0;
  v19[1] = sub_20D80F8D8;
  v20 = v0[3];
  v21 = v0[2];

  sub_20D80FEF0(v21, v20);
}

uint64_t sub_20D80F8D8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_20D80FA1C, v3, v2);
}

uint64_t sub_20D80FA1C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 32);

  return v1(v2);
}

uint64_t UtilityRateInfoSnapshotManager.init(type:siteID:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v8);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_27C838778 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_27C83C9B0);
  sub_20D815A38(v15, v4 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot);
  v16 = (v4 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityArtworkURL);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v4 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__utilityName);
  *v17 = 0;
  v17[1] = 0;
  sub_20D972888();
  *(v4 + 16) = v14;

  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  sub_20D9725C8();
  (*(v11 + 32))(v4 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate, v13, v10);
  *(v4 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__tileRefreshPeriod) = sub_20D817B50();
  swift_getKeyPath();
  v26 = v4;
  sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  if (*(v4 + 16))
  {
    v18 = v25;
    if (*(v4 + 16) != 1)
    {

      goto LABEL_10;
    }
  }

  else
  {
    v18 = v25;
  }

  v19 = sub_20D9757C8();

  if ((v19 & 1) == 0)
  {
    sub_20D815A38(v15, v18);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v24 - 2) = v4;
    *(&v24 - 1) = v18;
    v26 = v4;
    goto LABEL_13;
  }

LABEL_10:
  if (qword_27C838520 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v8, qword_27C839C08);
  sub_20D815A38(v21, v18);
  v22 = swift_getKeyPath();
  MEMORY[0x28223BE20](v22);
  *(&v24 - 2) = v4;
  *(&v24 - 1) = v18;
  v26 = v4;
LABEL_13:
  sub_20D972848();

  sub_20D815AB8(v18);
  sub_20D80EFD4();
  return v4;
}

uint64_t type metadata accessor for UtilityRateInfoSnapshotManager(uint64_t a1)
{
  result = qword_281125598;
  if (!qword_281125598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D80FEF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_20D9752E8();
  v3[5] = sub_20D9752D8();
  v5 = sub_20D975298();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_20D80FF8C, v5, v4);
}

uint64_t sub_20D80FF8C()
{
  v13 = v0;
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[8] = __swift_project_value_buffer(v1, qword_27C840CE0);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000014, 0x800000020D983AE0, &v12);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20D7F4DC8(v5, v4, &v12);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: start %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v8 = v0[3];
  v9 = v0[2];

  sub_20D80CB10(v9, v8);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_20D8101A4;

  return sub_20D810448();
}

uint64_t sub_20D8101A4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_20D8102C4, v3, v2);
}

uint64_t sub_20D8102C4()
{
  v10 = v0;

  v1 = sub_20D9734D8();
  v2 = sub_20D975478();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD000000000000014, 0x800000020D983AE0, &v9);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20D7F4DC8(v4, v3, &v9);
    _os_log_impl(&dword_20D7C9000, v1, v2, "%s: end %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_20D810448()
{
  v1[27] = v0;
  v2 = sub_20D972628();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v3 = sub_20D972EA8();
  v1[35] = v3;
  v1[36] = *(v3 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = type metadata accessor for UtilityRateInfoSnapshot(0);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v4 = sub_20D972838();
  v1[47] = v4;
  v1[48] = *(v4 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  sub_20D9752E8();
  v1[53] = sub_20D9752D8();
  v6 = sub_20D975298();
  v1[54] = v6;
  v1[55] = v5;

  return MEMORY[0x2822009F8](sub_20D8106F8, v6, v5);
}

uint64_t sub_20D8106F8()
{
  v19 = v0;
  v1 = v0[27];
  swift_getKeyPath();
  v0[19] = v1;
  v0[56] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v0[57] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v2 = *(v1 + 24);
  v0[58] = v2;
  v3 = *(v1 + 32);
  v0[59] = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_20D972CD8();
    swift_bridgeObjectRetain_n();
    v5 = swift_task_alloc();
    v0[60] = v5;
    *v5 = v0;
    v5[1] = sub_20D810B78;

    return MEMORY[0x28215C988](v2, v3);
  }

  else
  {
LABEL_8:

    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v6 = sub_20D9734F8();
    __swift_project_value_buffer(v6, qword_27C840CE0);
    v7 = sub_20D9734D8();
    v8 = sub_20D975438();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D983BC0, &v18);
      _os_log_impl(&dword_20D7C9000, v7, v8, "%s: Site ID is empty, no Utility Rate snapshots to get.... setting infoSnapshot to error", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F324260](v10, -1, -1);
      MEMORY[0x20F324260](v9, -1, -1);
    }

    if (qword_27C838780 != -1)
    {
      swift_once();
    }

    v11 = v0[44];
    v12 = v0[27];
    v13 = __swift_project_value_buffer(v0[39], qword_27C83C9C8);
    sub_20D815A38(v13, v11);
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v12;
    *(v14 + 24) = v11;
    v0[20] = v12;
    sub_20D972848();

    v15 = v0[44];

    sub_20D815AB8(v15);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_20D810B78(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 488) = a1;

  v3 = *(v2 + 440);
  v4 = *(v2 + 432);

  return MEMORY[0x2822009F8](sub_20D810CA0, v4, v3);
}

uint64_t sub_20D810CA0()
{
  v72 = v0;
  v1 = v0[61];
  if (!v1)
  {

    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v8 = sub_20D9734F8();
    __swift_project_value_buffer(v8, qword_27C840CE0);

    v9 = sub_20D9734D8();
    v10 = sub_20D975458();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[59];
    if (v11)
    {
      v13 = v0[58];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v71[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D983BC0, v71);
      *(v14 + 12) = 2080;
      v16 = sub_20D7F4DC8(v13, v12, v71);

      *(v14 + 14) = v16;
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s: Failed to initialize Energy Site for %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v15, -1, -1);
      MEMORY[0x20F324260](v14, -1, -1);
    }

    else
    {
    }

    if (qword_27C838780 != -1)
    {
      swift_once();
    }

    v56 = v0[44];
    v57 = v0[27];
    v58 = __swift_project_value_buffer(v0[39], qword_27C83C9C8);
    sub_20D815A38(v58, v56);
    swift_getKeyPath();
    v59 = swift_task_alloc();
    *(v59 + 16) = v57;
    *(v59 + 24) = v56;
    v0[21] = v57;
    sub_20D972848();
    goto LABEL_27;
  }

  sub_20D972CB8();
  if (!v2)
  {

    goto LABEL_10;
  }

  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[46];
  sub_20D9727E8();

  v6 = *(v4 + 48);
  v0[62] = v6;
  v0[63] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v5, 1, v3) == 1)
  {
    v7 = v0[46];

    sub_20D7E3944(v7, &qword_27C83CAA0, &qword_20D978AA0);
LABEL_10:
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v17 = sub_20D9734F8();
    __swift_project_value_buffer(v17, qword_27C840CE0);

    v18 = sub_20D9734D8();
    v19 = sub_20D975458();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[59];
    if (v20)
    {
      v22 = v0[58];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v71[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D983BC0, v71);
      *(v23 + 12) = 2080;
      v25 = sub_20D7F4DC8(v22, v21, v71);

      *(v23 + 14) = v25;
      _os_log_impl(&dword_20D7C9000, v18, v19, "%s: Failed to fetch + create timeZone from %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v24, -1, -1);
      MEMORY[0x20F324260](v23, -1, -1);
    }

    else
    {
    }

    if (qword_27C838788 != -1)
    {
      swift_once();
    }

    v26 = v0[44];
    v27 = v0[27];
    v28 = __swift_project_value_buffer(v0[39], qword_27C83C9E0);
    sub_20D815A38(v28, v26);
    swift_getKeyPath();
    v29 = swift_task_alloc();
    *(v29 + 16) = v27;
    *(v29 + 24) = v26;
    v0[22] = v27;
    sub_20D972848();

LABEL_27:

LABEL_28:
    v60 = v0[44];

    sub_20D815AB8(v60);

    v61 = v0[1];

    return v61();
  }

  v30 = v0[52];
  v31 = v0[47];
  v32 = v0[48];
  v33 = v0[46];
  v34 = *(v32 + 32);
  v0[64] = v34;
  v0[65] = (v32 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v34(v30, v33, v31);
  if ((sub_20D972C88() & 1) == 0)
  {

    if (qword_27C838798 != -1)
    {
      swift_once();
    }

    v49 = v0[52];
    v51 = v0[47];
    v50 = v0[48];
    v63 = v0[44];
    v64 = v0[27];
    v65 = __swift_project_value_buffer(v0[39], qword_27C83CA10);
    sub_20D815A38(v65, v63);
    swift_getKeyPath();
    v66 = swift_task_alloc();
    *(v66 + 16) = v64;
    *(v66 + 24) = v63;
    v0[23] = v64;
    sub_20D972848();

    goto LABEL_34;
  }

  v35 = v0[38];
  v69 = v0[37];
  v37 = v0[35];
  v36 = v0[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v39 = *(v36 + 104);
  v39(v35, *MEMORY[0x277D07348], v37);
  v40 = sub_20D972E98();
  v70 = v1;
  v42 = v41;
  v43 = *(v36 + 8);
  v43(v35, v37);
  *(inited + 32) = v40;
  *(inited + 40) = v42;
  v39(v69, *MEMORY[0x277D07350], v37);
  v44 = sub_20D972E98();
  v46 = v45;
  v43(v69, v37);
  *(inited + 48) = v44;
  *(inited + 56) = v46;
  v0[17] = sub_20D972C98();
  v0[18] = v47;
  v48 = swift_task_alloc();
  *(v48 + 16) = v0 + 17;
  LOBYTE(v46) = sub_20D8292B0(sub_20D81A200, v48, inited);
  v0[66] = 0;
  swift_setDeallocating();
  swift_arrayDestroy();

  if (v46)
  {

    if (qword_27C838790 != -1)
    {
      swift_once();
    }

    v49 = v0[52];
    v51 = v0[47];
    v50 = v0[48];
    v52 = v0[44];
    v53 = v0[27];
    v54 = __swift_project_value_buffer(v0[39], qword_27C83C9F8);
    sub_20D815A38(v54, v52);
    swift_getKeyPath();
    v55 = swift_task_alloc();
    *(v55 + 16) = v53;
    *(v55 + 24) = v52;
    v0[26] = v53;
    sub_20D972848();

LABEL_34:

    (*(v50 + 8))(v49, v51);
    goto LABEL_28;
  }

  v67 = swift_task_alloc();
  v0[67] = v67;
  *v67 = v0;
  v67[1] = sub_20D8116FC;
  v68 = v0[52];

  return sub_20D819238(v70, v68);
}

uint64_t sub_20D8116FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[10] = v3;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = a3;
  v5[68] = a1;

  v6 = v4[55];
  v7 = v4[54];

  return MEMORY[0x2822009F8](sub_20D81182C, v7, v6);
}

uint64_t sub_20D81182C()
{
  v1 = *(v0 + 488);
  *(v0 + 552) = vextq_s8(*(v0 + 96), *(v0 + 96), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 568) = v2;
  *v2 = v0;
  v2[1] = sub_20D8118D8;

  return sub_20D813C48(v0 + 608, v1);
}

uint64_t sub_20D8118D8()
{
  v1 = *v0;

  v2 = *(v1 + 440);
  v3 = *(v1 + 432);

  return MEMORY[0x2822009F8](sub_20D8119F8, v3, v2);
}

uint64_t sub_20D8119F8(uint64_t a1)
{
  v70 = v1;
  v2 = *(v1 + 608);
  *(v1 + 609) = v2;
  sub_20D9725C8();
  v3 = MEMORY[0x277D84F90];
  if (v2 == 1)
  {
  }

  else
  {
    v4 = sub_20D9757C8();

    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (*(v1 + 544))
  {
    v5 = *(v1 + 544);
  }

  else
  {
    v5 = v3;
  }

  if (*(v5 + 16))
  {
LABEL_9:

    v6 = *(v1 + 560);
    v7 = *(v1 + 552);
    v8 = *(v1 + 544);
    if (v8)
    {
      v9 = *(v1 + 544);
    }

    else
    {
      v9 = v3;
    }

    if (!v8)
    {
      v7 = 0xE000000000000000;
    }

    v62 = v7;
    v64 = v9;
    if (!v8)
    {
      v6 = 0;
    }

    v61 = v6;
    v60 = *(v1 + 609);
    v56 = *(v1 + 464);
    v58 = *(v1 + 472);
    v10 = *(v1 + 400);
    v12 = *(v1 + 376);
    v11 = *(v1 + 384);
    v14 = *(v1 + 312);
    v13 = *(v1 + 320);
    v46 = *(v1 + 528);
    v48 = *(v1 + 248);
    v65 = *(v1 + 392);
    v67 = *(v1 + 240);
    v15 = *(v1 + 224);
    v16 = *(*(v1 + 232) + 16);
    v52 = v15;
    v54 = *(v1 + 416);
    v16();
    v17 = *(v11 + 16);
    v50 = v12;
    v17(v10, v54, v12);
    v17(v65, v10, v12);
    (v16)(v67, v48, v15);
    v18 = v14[10];
    *(v13 + v18) = 7;
    v19 = v14[11];
    *(v13 + v19) = 6;
    *v13 = v56;
    v13[1] = v58;
    v17(v13 + v14[9], v65, v50);
    (v16)(v13 + v14[5], v67, v52);
    v20 = (v13 + v14[8]);
    *v20 = v61;
    v20[1] = v62;
    *(v13 + v18) = v60;
    *(v13 + v19) = 6;
    v21 = sub_20D817948(v64);

    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = sub_20D815D18(*(v21 + 16), 0);
      v24 = *(sub_20D973158() - 8);
      v25 = v23;
      v26 = sub_20D81754C(&v69, &v23[(*(v24 + 80) + 32) & ~*(v24 + 80)], v22, v21);
      v27 = v69;

      sub_20D817AE4(v27);
      if (v26 == v22)
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    v25 = MEMORY[0x277D84F90];
LABEL_20:
    v69 = v25;
    sub_20D815E14(&v69);
    if (v46)
    {
    }

    else
    {
      v66 = *(v1 + 416);
      v29 = *(v1 + 392);
      v68 = *(v1 + 376);
      v30 = *(v1 + 320);
      v55 = *(v1 + 400);
      v57 = *(v1 + 328);
      v31 = *(v1 + 312);
      v63 = *(v1 + 272);
      v32 = *(v1 + 240);
      v51 = *(v1 + 384);
      v53 = *(v1 + 248);
      v33 = *(v1 + 232);
      v49 = *(v1 + 224);
      v59 = *(v1 + 216);

      v34 = v69;
      *(v30 + v31[12]) = v69;
      v35 = v31[6];

      sub_20D972F88();
      v36 = v31[7];
      sub_20D9730F8();
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v30 + v35, v30 + v36, v34, v29);
      *(v30 + v31[13]) = v37;
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v32, v30 + v36, v34, v29);
      v47 = v38;

      v39 = *(v33 + 8);
      v39(v32, v49);
      v40 = *(v51 + 8);
      v40(v29, v68);
      v40(v55, v68);
      v39(v53, v49);
      *(v30 + v31[14]) = v47;
      sub_20D817AEC(v30, v57);
      swift_getKeyPath();
      v41 = swift_task_alloc();
      *(v41 + 16) = v59;
      *(v41 + 24) = v57;
      *(v1 + 192) = v59;
      sub_20D972848();

      v39(v63, v49);
      v40(v66, v68);
      v42 = *(v1 + 328);

      sub_20D815AB8(v42);

      v43 = *(v1 + 8);

      return v43();
    }
  }

  v44 = *(v1 + 488);

  v45 = swift_task_alloc();
  *(v1 + 576) = v45;
  *v45 = v1;
  v45[1] = sub_20D812148;

  return sub_20D818818(v44);
}

uint64_t sub_20D812148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[73] = a1;
  v5[74] = a2;
  v5[75] = a3;

  v6 = v4[55];
  v7 = v4[54];

  return MEMORY[0x2822009F8](sub_20D812278, v7, v6);
}

uint64_t sub_20D812278()
{
  v107 = v0;
  v1 = *(v0 + 584);

  if (*(v1 + 16))
  {
    v69 = *(v0 + 528);
  }

  else
  {
    v20 = *(v0 + 496);
    v21 = *(v0 + 376);
    v22 = *(v0 + 360);
    v103 = *(*(v0 + 232) + 16);
    v103(*(v0 + 264), *(v0 + 272), *(v0 + 224));
    sub_20D9727F8();
    result = v20(v22, 1, v21);
    if (result == 1)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v93 = *(v0 + 592);
    v96 = *(v0 + 600);
    v100 = *(v0 + 584);
    v23 = *(v0 + 472);
    v25 = *(v0 + 376);
    v24 = *(v0 + 384);
    v26 = *(v0 + 336);
    v27 = *(v0 + 312);
    v28 = *(v0 + 256);
    v29 = *(v0 + 264);
    v86 = v28;
    v89 = *(v0 + 464);
    v30 = *(v0 + 224);
    v80 = *(v0 + 408);
    (*(v0 + 512))();
    v103(v28, v29, v30);
    v31 = v27[10];
    *(v26 + v31) = 7;
    v32 = v27[11];
    *(v26 + v32) = 6;
    *v26 = v89;
    v26[1] = v23;
    (*(v24 + 16))(v26 + v27[9], v80, v25);
    v103(v26 + v27[5], v86, v30);
    v33 = (v26 + v27[8]);
    *v33 = v93;
    v33[1] = v96;
    *(v26 + v31) = 7;
    *(v26 + v32) = 3;

    v34 = sub_20D817948(v100);

    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = sub_20D815D18(*(v34 + 16), 0);
      v37 = *(sub_20D973158() - 8);
      v38 = sub_20D81754C(&v106, &v36[(*(v37 + 80) + 32) & ~*(v37 + 80)], v35, v34);
      v39 = v106;

      sub_20D817AE4(v39);
      if (v38 != v35)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v40 = *(v0 + 528);
    v105 = v36;
    sub_20D815E14(&v105);
    if (v40)
    {
      goto LABEL_17;
    }

    v56 = *(v0 + 408);
    v57 = *(v0 + 336);
    v91 = *(v0 + 376);
    v94 = *(v0 + 344);
    v58 = *(v0 + 312);
    v59 = *(v0 + 256);
    v84 = *(v0 + 384);
    v87 = *(v0 + 264);
    v60 = *(v0 + 232);
    v82 = *(v0 + 224);
    v98 = *(v0 + 216);

    v61 = v105;
    *(v57 + v58[12]) = v105;
    v62 = v58[6];

    sub_20D972F88();
    v63 = v58[7];
    sub_20D9730F8();
    _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v57 + v62, v57 + v63, v61, v56);
    *(v57 + v58[13]) = v64;
    _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v59, v57 + v63, v61, v56);
    v66 = v65;

    v67 = *(v60 + 8);
    v67(v59, v82);
    (*(v84 + 8))(v56, v91);
    v67(v87, v82);
    *(v57 + v58[14]) = v66;
    sub_20D817AEC(v57, v94);
    swift_getKeyPath();
    v68 = swift_task_alloc();
    *(v68 + 16) = v98;
    *(v68 + 24) = v94;
    *(v0 + 200) = v98;
    sub_20D972848();
    v69 = 0;

    sub_20D815AB8(v94);
  }

  v92 = *(v0 + 600);
  v95 = *(v0 + 584);
  v88 = *(v0 + 609);
  v83 = *(v0 + 472);
  v85 = *(v0 + 592);
  v77 = *(v0 + 416);
  v79 = *(v0 + 464);
  v2 = *(v0 + 400);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v71 = *(v0 + 248);
  v99 = *(v0 + 392);
  v102 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = *(*(v0 + 232) + 16);
  v75 = v7;
  v8();
  v9 = *(v3 + 16);
  v73 = v4;
  v9(v2, v77, v4);
  v9(v99, v2, v4);
  (v8)(v102, v71, v7);
  v10 = v6[10];
  *(v5 + v10) = 7;
  v11 = v6[11];
  *(v5 + v11) = 6;
  *v5 = v79;
  v5[1] = v83;
  v9(v5 + v6[9], v99, v73);
  (v8)(v5 + v6[5], v102, v75);
  v12 = (v5 + v6[8]);
  *v12 = v85;
  v12[1] = v92;
  *(v5 + v10) = v88;
  *(v5 + v11) = 6;
  v13 = sub_20D817948(v95);

  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_10:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v15 = sub_20D815D18(*(v13 + 16), 0);
  v16 = *(sub_20D973158() - 8);
  v17 = sub_20D81754C(&v106, &v15[(*(v16 + 80) + 32) & ~*(v16 + 80)], v14, v13);
  v18 = v106;

  result = sub_20D817AE4(v18);
  if (v17 != v14)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_11:
  v105 = v15;
  v40 = v69;
  sub_20D815E14(&v105);
  if (v69)
  {
LABEL_17:
  }

  v97 = *(v0 + 416);
  v41 = *(v0 + 392);
  v101 = *(v0 + 376);
  v104 = *(v0 + 384);
  v42 = *(v0 + 320);
  v76 = *(v0 + 400);
  v78 = *(v0 + 328);
  v43 = *(v0 + 312);
  v90 = *(v0 + 272);
  v44 = *(v0 + 240);
  v45 = *(v0 + 232);
  v72 = *(v0 + 224);
  v74 = *(v0 + 248);
  v81 = *(v0 + 216);

  v46 = v105;
  *(v42 + v43[12]) = v105;
  v47 = v43[6];

  sub_20D972F88();
  v48 = v43[7];
  sub_20D9730F8();
  _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v42 + v47, v42 + v48, v46, v41);
  *(v42 + v43[13]) = v49;
  _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v44, v42 + v48, v46, v41);
  v70 = v50;

  v51 = *(v45 + 8);
  v51(v44, v72);
  v52 = *(v104 + 8);
  v52(v41, v101);
  v52(v76, v101);
  v51(v74, v72);
  *(v42 + v43[14]) = v70;
  sub_20D817AEC(v42, v78);
  swift_getKeyPath();
  v53 = swift_task_alloc();
  *(v53 + 16) = v81;
  *(v53 + 24) = v78;
  *(v0 + 192) = v81;
  sub_20D972848();

  v51(v90, v72);
  v52(v97, v101);
  v54 = *(v0 + 328);

  sub_20D815AB8(v54);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t UtilityRateInfoSnapshotManager.deinit()
{

  sub_20D815AB8(v0 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot);

  v1 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  v2 = sub_20D972628();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v4 = sub_20D972898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t UtilityRateInfoSnapshotManager.__deallocating_deinit()
{

  sub_20D815AB8(v0 + OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot);

  v1 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  v2 = sub_20D972628();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v4 = sub_20D972898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_20D812DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_20D972628();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_20D9752E8();
  v4[17] = sub_20D9752D8();
  v7 = sub_20D975298();
  v4[18] = v7;
  v4[19] = v6;

  return MEMORY[0x2822009F8](sub_20D812EC4, v7, v6);
}

uint64_t sub_20D812EC4()
{
  v27 = v0;
  v1 = v0[12];
  swift_getKeyPath();
  v0[8] = v1;
  v0[20] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager___observationRegistrar;
  v0[21] = sub_20D81A4CC(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v2 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  v0[22] = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  v3 = v1 + v2;
  swift_beginAccess();
  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v0[23] = v4;
  if (!*(*(v3 + *(v4 + 48)) + 16))
  {
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v18 = sub_20D9734F8();
    v0[24] = __swift_project_value_buffer(v18, qword_27C840CE0);
    v19 = sub_20D9734D8();
    v20 = sub_20D975478();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C80, &v26);
      _os_log_impl(&dword_20D7C9000, v19, v20, "%s: No data, getting recent data", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x20F324260](v22, -1, -1);
      MEMORY[0x20F324260](v21, -1, -1);
    }

    v16 = swift_task_alloc();
    v0[25] = v16;
    *v16 = v0;
    v17 = sub_20D813414;
    goto LABEL_13;
  }

  v5 = v0[15];
  v25 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];
  swift_getKeyPath();
  v0[9] = v8;
  sub_20D972858();

  v9 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__lastReloadDate;
  swift_beginAccess();
  (*(v7 + 16))(v5, v8 + v9, v6);
  swift_getKeyPath();
  v0[10] = v8;
  sub_20D972858();

  sub_20D972498();
  v10 = *(v7 + 8);
  v10(v5, v6);
  sub_20D9725C8();
  LOBYTE(v9) = sub_20D972548();
  v10(v5, v6);
  v10(v25, v6);
  if (v9)
  {
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v11 = sub_20D9734F8();
    __swift_project_value_buffer(v11, qword_27C840CE0);
    v12 = sub_20D9734D8();
    v13 = sub_20D975478();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C80, &v26);
      _os_log_impl(&dword_20D7C9000, v12, v13, "%s: time passed, getting data now", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F324260](v15, -1, -1);
      MEMORY[0x20F324260](v14, -1, -1);
    }

    v16 = swift_task_alloc();
    v0[26] = v16;
    *v16 = v0;
    v17 = sub_20D8136F0;
LABEL_13:
    v16[1] = v17;

    return sub_20D810448();
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_20D813414()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_20D813534, v3, v2);
}

uint64_t sub_20D813534()
{
  v12 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[12];

  swift_getKeyPath();
  v0[11] = v3;
  sub_20D972858();

  if (*(*(v3 + v1 + *(v2 + 48)) + 16) >= 2uLL)
  {
    v4 = sub_20D9734D8();
    v5 = sub_20D975478();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C80, &v11);
      _os_log_impl(&dword_20D7C9000, v4, v5, "%s: received data updating lastReloadDate", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F324260](v7, -1, -1);
      MEMORY[0x20F324260](v6, -1, -1);
    }

    v8 = v0[16];
    sub_20D9725C8();
    sub_20D80DF30(v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_20D8136F0()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_20D813810, v3, v2);
}

uint64_t sub_20D813810()
{
  v1 = *(v0 + 128);

  sub_20D9725C8();
  sub_20D80DF30(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D813894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_20D975318();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_20D9752E8();

  v10 = sub_20D9752D8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  sub_20D82D02C(0, 0, v8, a4, v11);
}

uint64_t sub_20D8139B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_20D972628();
  v4[3] = swift_task_alloc();
  v4[4] = sub_20D9752E8();
  v4[5] = sub_20D9752D8();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_20D813A90;

  return sub_20D810448();
}

uint64_t sub_20D813A90()
{

  v1 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D813BCC, v1, v0);
}

uint64_t sub_20D813BCC()
{
  v1 = *(v0 + 24);

  sub_20D9725C8();
  sub_20D80DF30(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D813C48(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_20D972EA8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_20D9752E8();
  v2[7] = sub_20D9752D8();
  v5 = sub_20D975298();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_20D813D3C, v5, v4);
}

uint64_t sub_20D813D3C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(v1 + 32);
  v5 = sub_20D972C98();
  v7 = v6;
  (*(v3 + 104))(v2, *MEMORY[0x277D07358], v4);
  v8 = sub_20D972E98();
  v10 = v9;
  (*(v3 + 8))(v2, v4);
  if (v5 == v8 && v7 == v10)
  {

LABEL_8:

    **(v1 + 16) = 6;

    v13 = *(v1 + 8);

    return v13();
  }

  v12 = sub_20D9757C8();

  if (v12)
  {
    goto LABEL_8;
  }

  v16 = (*MEMORY[0x277D07680] + MEMORY[0x277D07680]);
  v15 = swift_task_alloc();
  *(v1 + 80) = v15;
  *v15 = v1;
  v15[1] = sub_20D813F0C;

  return v16();
}

uint64_t sub_20D813F0C(char a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20D814A78;
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20D814038;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D814038()
{
  if (*(v0 + 160) == 1)
  {

    **(v0 + 16) = 1;

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = (*MEMORY[0x277D076A0] + MEMORY[0x277D076A0]);
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_20D814134;

    return v4();
  }
}

uint64_t sub_20D814134(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20D814D98;
  }

  else
  {
    *(v4 + 161) = a1 & 1;
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20D814260;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D814260()
{
  if (*(v0 + 161) == 1)
  {

    **(v0 + 16) = 2;

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = (*MEMORY[0x277D07688] + MEMORY[0x277D07688]);
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_20D81435C;

    return v4();
  }
}

uint64_t sub_20D81435C(char a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20D8150B8;
  }

  else
  {
    *(v4 + 162) = a1 & 1;
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20D814488;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D814488()
{
  if (*(v0 + 162) == 1)
  {

    **(v0 + 16) = 3;

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = (*MEMORY[0x277D07698] + MEMORY[0x277D07698]);
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_20D814584;

    return v4();
  }
}

uint64_t sub_20D814584(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20D8153D8;
  }

  else
  {
    *(v4 + 163) = a1 & 1;
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20D8146B0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D8146B0()
{
  if (*(v0 + 163) == 1)
  {

    **(v0 + 16) = 4;

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = (*MEMORY[0x277D07638] + MEMORY[0x277D07638]);
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_20D8147AC;

    return v4();
  }
}

uint64_t sub_20D8147AC(char a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20D8156F8;
  }

  else
  {
    *(v4 + 164) = a1 & 1;
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_20D8148D8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D8148D8()
{
  v11 = v0;
  v1 = *(v0 + 164);

  if (v1)
  {
    v2 = 5;
  }

  else
  {
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v3 = sub_20D9734F8();
    __swift_project_value_buffer(v3, qword_27C840CE0);
    v4 = sub_20D9734D8();
    v5 = sub_20D975478();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v10);
      _os_log_impl(&dword_20D7C9000, v4, v5, "%s: All other checks did not pass. Returning unknown", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F324260](v7, -1, -1);
      MEMORY[0x20F324260](v6, -1, -1);
    }

    v2 = 0;
  }

  **(v0 + 16) = v2;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_20D814A78()
{
  v18 = v0;
  v1 = *(v0 + 88);

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CE0);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v17);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: Error retrieving rate plan type: %@", v6, 0x16u);
    sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  else
  {
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27C840CE0);
  v11 = sub_20D9734D8();
  v12 = sub_20D975478();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v17);
    _os_log_impl(&dword_20D7C9000, v11, v12, "%s: All other checks did not pass. Returning unknown", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v13, -1, -1);
  }

  **(v0 + 16) = 0;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20D814D98()
{
  v18 = v0;
  v1 = *(v0 + 104);

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CE0);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v17);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: Error retrieving rate plan type: %@", v6, 0x16u);
    sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  else
  {
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27C840CE0);
  v11 = sub_20D9734D8();
  v12 = sub_20D975478();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v17);
    _os_log_impl(&dword_20D7C9000, v11, v12, "%s: All other checks did not pass. Returning unknown", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v13, -1, -1);
  }

  **(v0 + 16) = 0;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20D8150B8()
{
  v18 = v0;
  v1 = *(v0 + 120);

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CE0);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v17);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: Error retrieving rate plan type: %@", v6, 0x16u);
    sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  else
  {
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27C840CE0);
  v11 = sub_20D9734D8();
  v12 = sub_20D975478();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v17);
    _os_log_impl(&dword_20D7C9000, v11, v12, "%s: All other checks did not pass. Returning unknown", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v13, -1, -1);
  }

  **(v0 + 16) = 0;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20D8153D8()
{
  v18 = v0;
  v1 = *(v0 + 136);

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CE0);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v17);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: Error retrieving rate plan type: %@", v6, 0x16u);
    sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  else
  {
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27C840CE0);
  v11 = sub_20D9734D8();
  v12 = sub_20D975478();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v17);
    _os_log_impl(&dword_20D7C9000, v11, v12, "%s: All other checks did not pass. Returning unknown", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v13, -1, -1);
  }

  **(v0 + 16) = 0;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20D8156F8()
{
  v18 = v0;
  v1 = *(v0 + 152);

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CE0);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v17);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: Error retrieving rate plan type: %@", v6, 0x16u);
    sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  else
  {
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27C840CE0);
  v11 = sub_20D9734D8();
  v12 = sub_20D975478();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D983C10, &v17);
    _os_log_impl(&dword_20D7C9000, v11, v12, "%s: All other checks did not pass. Returning unknown", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v13, -1, -1);
  }

  **(v0 + 16) = 0;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20D815A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D815AB8(uint64_t a1)
{
  v2 = type metadata accessor for UtilityRateInfoSnapshot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D815B64(uint64_t a1)
{
  result = MEMORY[0x20F323530](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_20D89D0C8(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_20D815C94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_20D815D18(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394E0, &qword_20D978CF0);
  v4 = *(sub_20D973158() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D815E14(uint64_t *a1)
{
  v2 = *(sub_20D973158() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20D9562A8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20D815EBC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20D815EBC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20D975798();
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
        sub_20D973158();
        v6 = sub_20D975268();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20D973158() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20D8162F4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_20D815FE8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20D815FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20D973158();
  v9 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_20D973148();
      v27 = v26;
      if (v25 == sub_20D973148() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_20D9757C8();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20D8162F4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_20D973158();
  v10 = MEMORY[0x28223BE20](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x28223BE20](v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_20D816EB0(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20D9560B0(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_20D956024(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_20D9560B0(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x277D84F90];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_20D973148();
      v37 = v36;
      v38 = sub_20D973148();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_20D9757C8();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_20D973148();
        v52 = v51;
        if (v50 == sub_20D973148() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_20D9757C8();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20D8D42B4(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_20D8D42B4((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_20D816EB0(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20D9560B0(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_20D956024(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_20D973148();
    v69 = v68;
    if (v5 == sub_20D973148() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_20D9757C8();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_20D816EB0(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_20D973158();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x28223BE20](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_20D973148();
            v52 = v51;
            if (v50 == sub_20D973148() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_20D9757C8();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_20D973148();
        v32 = v31;
        if (v30 == sub_20D973148() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_20D9757C8();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_20D9560C4(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_20D81754C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_20D973158();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_20D8177F0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20D817948(uint64_t a1)
{
  v2 = sub_20D973158();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20D81A4CC(&qword_27C839F40, MEMORY[0x277D180E0], MEMORY[0x277D180F0]);
  result = MEMORY[0x20F323530](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_20D89CCF0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20D817AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_20D817B50()
{
  if ((sub_20D972ED8() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_281126E98 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v0 = [qword_28112ABE8 bundleIdentifier];
    if (v0)
    {
      v1 = v0;
      sub_20D975098();

      v2 = sub_20D975078();
    }

    else
    {
      v2 = 0;
    }

    v3 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

    if (v3)
    {
      v4 = sub_20D975078();
      v5 = [v3 integerForKey_];

      result = v5;
      if (v5 > 0)
      {
        return result;
      }
    }

LABEL_8:
    sub_20D973118();
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v7 <= -9.22337204e18)
    {
      goto LABEL_14;
    }

    if (v7 < 9.22337204e18)
    {
      return v7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }
}

unint64_t sub_20D817CC4()
{
  result = qword_27C8394C8;
  if (!qword_27C8394C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8394C8);
  }

  return result;
}

uint64_t sub_20D817D20(uint64_t a1)
{
  result = type metadata accessor for UtilityRateInfoSnapshot(319);
  if (v2 <= 0x3F)
  {
    result = sub_20D972628();
    if (v3 <= 0x3F)
    {
      result = sub_20D972898();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of UtilityRateInfoSnapshotManager.__allocating_init(siteID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 488) + **(v2 + 488));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20D80F3B0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of UtilityRateInfoSnapshotManager.configureForSite(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 504) + **(*v2 + 504));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20D7EB52C;

  return v8(a1, a2);
}

uint64_t getEnumTagSinglePayload for GridForecastSnapshotManager.SnapshotManagerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GridForecastSnapshotManager.SnapshotManagerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20D818444(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D972628();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v24 = &v23 - v7;
  v8 = sub_20D972488();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  if (*(a1 + 16))
  {
    sub_20D973158();
    sub_20D972FD8();
    sub_20D973148();
    sub_20D972468();
    (*(v9 + 8))(v11, v8);

    (*(v4 + 56))(v17, 0, 1, v3);
    sub_20D81A220(v17, v15);
    if ((*(v4 + 48))(v15, 1, v3) == 1)
    {
      sub_20D7E3944(v17, &qword_27C8389E8, &qword_20D9768D0);
      sub_20D7E3944(v15, &qword_27C8389E8, &qword_20D9768D0);
    }

    else
    {
      v18 = v24;
      (*(v4 + 32))(v24, v15, v3);
      v19 = v25;
      sub_20D9725C8();
      v20 = sub_20D972538();
      v21 = *(v4 + 8);
      v21(v19, v3);
      v21(v18, v3);
      sub_20D7E3944(v17, &qword_27C8389E8, &qword_20D9768D0);
      if (v20)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_20D818818(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_20D972628();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_20D9752E8();
  v1[11] = sub_20D9752D8();
  v4 = sub_20D975298();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x2822009F8](sub_20D81890C, v4, v3);
}

uint64_t sub_20D81890C()
{
  v11 = v0;
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[14] = __swift_project_value_buffer(v1, qword_27C840CE0);
  v2 = sub_20D9734D8();
  v3 = sub_20D975448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD00000000000002DLL, 0x800000020D983BE0, &v10);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: fetching UtilityPeakPeriod data from server", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  sub_20D9725C8();
  v9 = (*MEMORY[0x277D07668] + MEMORY[0x277D07668]);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_20D818AE0;
  v7 = v0[10];

  return v9(v7);
}

uint64_t sub_20D818AE0()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v3 = v2[12];
    v4 = v2[13];

    return MEMORY[0x2822009F8](sub_20D818E80, v3, v4);
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v7 = (*MEMORY[0x277D07670] + MEMORY[0x277D07670]);
    v5 = swift_task_alloc();
    v2[17] = v5;
    *v5 = v2;
    v5[1] = sub_20D818C9C;

    return v7(v2 + 2);
  }
}

uint64_t sub_20D818C9C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_20D81905C;
  }

  else
  {
    v5 = sub_20D818DD8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D818DD8()
{

  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
  }

  else
  {
    v2 = 0;
    v1 = MEMORY[0x277D84F90];
    v3 = 0xE000000000000000;
  }

  v4 = v0[1];

  return v4(v1, v2, v3);
}

uint64_t sub_20D818E80()
{
  v14 = v0;

  v1 = *(v0 + 128);
  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000002DLL, 0x800000020D983BE0, &v13);
    *(v5 + 12) = 2112;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s: failed to refresh utility peak periods: %@", v5, 0x16u);
    sub_20D7E3944(v6, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);
  v11 = MEMORY[0x277D84F90];

  return v10(v11, 0, 0xE000000000000000);
}

uint64_t sub_20D81905C()
{
  v14 = v0;

  v1 = *(v0 + 144);
  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000002DLL, 0x800000020D983BE0, &v13);
    *(v5 + 12) = 2112;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s: failed to refresh utility peak periods: %@", v5, 0x16u);
    sub_20D7E3944(v6, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);
  v11 = MEMORY[0x277D84F90];

  return v10(v11, 0, 0xE000000000000000);
}

uint64_t sub_20D819238(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = sub_20D9752E8();
  v2[10] = sub_20D9752D8();
  v5 = (*MEMORY[0x277D07670] + MEMORY[0x277D07670]);
  v3 = swift_task_alloc();
  v2[11] = v3;
  *v3 = v2;
  v3[1] = sub_20D819308;

  return v5(v2 + 2);
}

uint64_t sub_20D819308()
{
  v2 = *v1;
  v2[12] = v0;

  v4 = sub_20D975298();
  v2[13] = v4;
  v2[14] = v3;
  if (v0)
  {
    v5 = sub_20D819EDC;
  }

  else
  {
    v5 = sub_20D819468;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D819468()
{
  v25 = v0;
  v1 = v0[2];
  if (!v1)
  {
    v3 = 0;
    v1 = MEMORY[0x277D84F90];
    v2 = 0xE000000000000000;
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_3;
    }

LABEL_12:

    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v11 = sub_20D9734F8();
    __swift_project_value_buffer(v11, qword_27C840CE0);
    v12 = sub_20D9734D8();
    v13 = sub_20D975448();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v24);
      _os_log_impl(&dword_20D7C9000, v12, v13, "%s: utility peaks returned nil/empty from ES object", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F324260](v15, -1, -1);
      MEMORY[0x20F324260](v14, -1, -1);
    }

    v16 = swift_task_alloc();
    v0[19] = v16;
    *v16 = v0;
    v17 = sub_20D819C18;
    goto LABEL_22;
  }

  v3 = v0[3];
  v2 = v0[4];

  if (!*(v1 + 16))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (sub_20D818444(v1, v0[8]))
  {

    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v4 = sub_20D9734F8();
    __swift_project_value_buffer(v4, qword_27C840CE0);
    v5 = sub_20D9734D8();
    v6 = sub_20D975448();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v24);
      _os_log_impl(&dword_20D7C9000, v5, v6, "%s: retrieved utility peak periods and rate plan name", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F324260](v8, -1, -1);
      MEMORY[0x20F324260](v7, -1, -1);
    }

    v9 = v0[1];

    return v9(v1, v3, v2);
  }

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v18 = sub_20D9734F8();
  __swift_project_value_buffer(v18, qword_27C840CE0);
  v19 = sub_20D9734D8();
  v20 = sub_20D975448();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v24);
    _os_log_impl(&dword_20D7C9000, v19, v20, "%s: stale UtilityPeakPeriod data found from ES", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x20F324260](v22, -1, -1);
    MEMORY[0x20F324260](v21, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v17 = sub_20D819954;
LABEL_22:
  v16[1] = v17;
  v23 = v0[7];

  return sub_20D818818(v23);
}

uint64_t sub_20D819954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;

  v6 = v4[14];
  v7 = v4[13];

  return MEMORY[0x2822009F8](sub_20D819A80, v7, v6);
}

uint64_t sub_20D819A80()
{
  v12 = v0;

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v4 = sub_20D9734F8();
  __swift_project_value_buffer(v4, qword_27C840CE0);
  v5 = sub_20D9734D8();
  v6 = sub_20D975448();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v11);
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: retrieved utility peak periods and rate plan name", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  v9 = v0[1];

  return v9(v3, v2, v1);
}

uint64_t sub_20D819C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[20] = a1;
  v5[21] = a2;
  v5[22] = a3;

  v6 = v4[14];
  v7 = v4[13];

  return MEMORY[0x2822009F8](sub_20D819D44, v7, v6);
}

uint64_t sub_20D819D44()
{
  v12 = v0;

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v4 = sub_20D9734F8();
  __swift_project_value_buffer(v4, qword_27C840CE0);
  v5 = sub_20D9734D8();
  v6 = sub_20D975448();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v11);
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s: retrieved utility peak periods and rate plan name", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  v9 = v0[1];

  return v9(v3, v2, v1);
}

uint64_t sub_20D819EDC()
{
  v16 = v0;

  if (qword_27C838480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CE0);
  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000029, 0x800000020D983C30, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s: error retrieving utility peak periods + rate plan name: %@", v8, 0x16u);
    sub_20D7E3944(v9, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13(0, 0, 0);
}

uint64_t sub_20D81A0F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F323530](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_20D89D0C8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_20D81A18C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F323530](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_20D89D218(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_20D81A220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20D81A2E0()
{
  result = qword_27C8394D8;
  if (!qword_27C8394D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8394D8);
  }

  return result;
}

uint64_t sub_20D81A364(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D8139B4(a1, v4, v5, v6);
}

uint64_t sub_20D81A418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D805810;

  return sub_20D812DC4(a1, v4, v5, v6);
}

uint64_t sub_20D81A4CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D81A514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_20D81A5B4()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*MEMORY[0x277CE4278] longitude:*(MEMORY[0x277CE4278] + 8)];
  qword_27C8394E8 = result;
  return result;
}

id static HEUILocation.invalid.getter()
{
  if (qword_27C8383E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27C8394E8;

  return v0;
}

void static HEUILocation.invalid.setter(uint64_t a1)
{
  if (qword_27C8383E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27C8394E8;
  qword_27C8394E8 = a1;
}

uint64_t (*static HEUILocation.invalid.modify(uint64_t a1))()
{
  if (qword_27C8383E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_20D81A790@<X0>(void *a1@<X8>)
{
  if (qword_27C8383E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27C8394E8;
  *a1 = qword_27C8394E8;

  return v2;
}

void sub_20D81A81C(id *a1)
{
  v1 = qword_27C8383E8;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27C8394E8;
  qword_27C8394E8 = v2;
}

id sub_20D81A8CC()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:37.77493 longitude:-122.41942];
  qword_27C8394F0 = result;
  return result;
}

id sub_20D81A934()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:37.334886 longitude:-122.008988];
  qword_281126A10 = result;
  return result;
}

id sub_20D81A99C()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:34.05223 longitude:-118.24368];
  qword_27C8394F8 = result;
  return result;
}

id sub_20D81AA04()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:40.7648 longitude:-73.9808];
  qword_27C839500 = result;
  return result;
}

id sub_20D81AA6C()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:38.900497 longitude:-77.007507];
  qword_27C839508 = result;
  return result;
}

id sub_20D81AAD4(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

HomeEnergyUI::HistoricalUsageSnapshotManager::SnapshotManagerType_optional __swiftcall HistoricalUsageSnapshotManager.SnapshotManagerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20D975788();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HistoricalUsageSnapshotManager.SnapshotManagerType.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1801678701;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572616853707061;
  }
}

uint64_t sub_20D81AC08@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_20D81ACB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20D81AD58(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000020D981530;
  v5 = 0xE400000000000000;
  if (*(v1 + 16) == 1)
  {
    v5 = 0x800000020D981530;
  }

  else
  {
    v3 = 1801678701;
  }

  if (*(v1 + 16))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6572616853707061;
  }

  if (*(v1 + 16))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  v8 = 0xD000000000000010;
  if (v2 != 1)
  {
    v8 = 1801678701;
    v4 = 0xE400000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6572616853707061;
  }

  if (v2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v6 == v9 && v7 == v10)
  {

LABEL_22:
    *(v1 + 16) = v2;
    return result;
  }

  v12 = sub_20D9757C8();

  if (v12)
  {
    goto LABEL_22;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972848();
}

uint64_t HistoricalUsageSnapshotManager.__allocating_init(type:)(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  HistoricalUsageSnapshotManager.init(type:)(a1);
  return v2;
}

uint64_t sub_20D81AFB0(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = a2;
  type metadata accessor for HistoricalUsageSnapshotManager(0);
  v4 = swift_allocObject();
  result = HistoricalUsageSnapshotManager.init(type:)(&v6);
  *a3 = v4;
  return result;
}

uint64_t sub_20D81B024@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_20D81B0FC()
{
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_20D81B1C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 24) == a1 && v5 == a2;
      if (v6 || (sub_20D9757C8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972848();
}

uint64_t (*sub_20D81B324(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D80C924(v4);
  return sub_20D81B45C;
}

uint64_t sub_20D81B4B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_20D81B5D8()
{
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_20D81B69C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 40) == a1 && v5 == a2;
      if (v6 || (sub_20D9757C8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D81B800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

uint64_t (*sub_20D81B86C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D81B468(v4);
  return sub_20D81B9A4;
}

uint64_t sub_20D81BA0C@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  v6 = *a2;
  swift_beginAccess();
  return sub_20D7FCF94(v3 + v6, a3);
}

uint64_t sub_20D81BAE8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  v7 = *a3;
  swift_beginAccess();
  return sub_20D7FCF94(v6 + v7, a4);
}

uint64_t sub_20D81BBD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D7FCF94(a1, v10);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972848();

  return sub_20D7FEF04(v10);
}

uint64_t sub_20D81BE38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D7FCF94(a2, v8);
  v9 = *a3;
  swift_beginAccess();
  sub_20D82CF34(v8, a1 + v9);
  return swift_endAccess();
}

uint64_t HistoricalUsageSnapshotManager.__allocating_init(siteID:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D80F3B0;

  return HistoricalUsageSnapshotManager.init(siteID:)(a1, a2);
}

uint64_t HistoricalUsageSnapshotManager.init(siteID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20D972628();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20D972AF8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for HistoricalUsageSnapshot(0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D81C100, 0, 0);
}

void sub_20D81C100()
{
  v31 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[4];
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  v24 = 1;
  v6 = *(v4 + 104);
  v6(v1, *MEMORY[0x277D075B0], v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v24, v1, v2);
  v7 = *(v4 + 8);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__dailyUsageSnapshot);
  v25 = 1;
  v8 = *MEMORY[0x277D075B8];
  v6(v1, v8, v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v25, v1, v2);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot);
  v26 = 1;
  v6(v1, v8, v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v26, v1, v2);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot);
  v27 = 1;
  v6(v1, *MEMORY[0x277D075C8], v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v27, v1, v2);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot);
  v28 = 1;
  v6(v1, *MEMORY[0x277D075D0], v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v28, v1, v2);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__sixMonthlyUsageSnapshot);
  v29 = 1;
  v6(v1, *MEMORY[0x277D075C0], v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v29, v1, v2);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__yearlyUsageSnapshot);
  sub_20D972888();
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v9 = sub_20D9734F8();
  __swift_project_value_buffer(v9, qword_28112AB90);

  v10 = sub_20D9734D8();
  v11 = sub_20D975478();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v0[2];
    v12 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20D7F4DC8(0x7469732874696E69, 0xED0000293A444965, &v30);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_20D7F4DC8(v13, v12, &v30);
    _os_log_impl(&dword_20D7C9000, v10, v11, "HistoricalUsageSnapshotManager:%s awaiting initialization with %s for widget use", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v17 = v0[6];
  v16 = v0[7];
  v19 = v0[4];
  v18 = v0[5];
  *(v19 + 16) = 1;
  sub_20D9725C8();
  (*(v17 + 32))(v19 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__lastReloadDate, v16, v18);
  sub_20D973118();
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  *(v0[4] + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__tileRefreshPeriod) = v20;
  v21 = swift_task_alloc();
  v0[12] = v21;
  *v21 = v0;
  v21[1] = sub_20D81C610;
  v22 = v0[3];
  v23 = v0[2];

  sub_20D81F678(v23, v22);
}

uint64_t sub_20D81C610()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 32);

  return v2(v3);
}

uint64_t HistoricalUsageSnapshotManager.init(type:)(unsigned __int8 *a1)
{
  v2 = v1;
  v182 = sub_20D9727D8();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v180 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v5 - 8);
  v183 = &v156 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v7 - 8);
  v178 = &v156 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v9 - 8);
  v177 = &v156 - v10;
  v170 = sub_20D971EA8();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v179 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v12 = MEMORY[0x28223BE20](v176);
  v175 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v173 = &v156 - v14;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v172);
  v174 = &v156 - v15;
  v197 = sub_20D972C58();
  v184 = *(v197 - 8);
  v16 = MEMORY[0x28223BE20](v197);
  v165 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v164 = &v156 - v18;
  v208 = sub_20D972838();
  v204 = *(v208 - 8);
  v19 = MEMORY[0x28223BE20](v208);
  v195 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v213 = &v156 - v21;
  v203 = sub_20D972E88();
  v194 = *(v203 - 8);
  v22 = MEMORY[0x28223BE20](v203);
  v171 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v193 = &v156 - v25;
  MEMORY[0x28223BE20](v24);
  v191 = &v156 - v26;
  v190 = sub_20D971D98();
  v189 = *(v190 - 1);
  MEMORY[0x28223BE20](v190);
  v188 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20D972628();
  v215 = *(v28 - 8);
  v216 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v196 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v163 = &v156 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v202 = &v156 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v162 = &v156 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v201 = &v156 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v212 = &v156 - v40;
  MEMORY[0x28223BE20](v39);
  v214 = &v156 - v41;
  v42 = sub_20D972AF8();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v210 = &v156 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v156 - v46;
  v217 = type metadata accessor for HistoricalUsageSnapshot(0);
  v48 = MEMORY[0x28223BE20](v217);
  v209 = (&v156 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = MEMORY[0x28223BE20](v48);
  v168 = &v156 - v51;
  MEMORY[0x28223BE20](v50);
  v53 = (&v156 - v52);
  LODWORD(v206) = *a1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  LOBYTE(v223) = 1;
  v54 = *(v43 + 104);
  (v54)(v47, *MEMORY[0x277D075B0], v42);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v223, v47, v53);
  v192 = v43;
  v55 = *(v43 + 8);
  v55(v47, v42);
  sub_20D81E5E0(v53, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__dailyUsageSnapshot);
  LOBYTE(v223) = 1;
  v56 = *MEMORY[0x277D075B8];
  (v54)(v47, v56, v42);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v223, v47, v53);
  v55(v47, v42);
  v205 = v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot;
  sub_20D81E5E0(v53, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot);
  LOBYTE(v223) = 1;
  (v54)(v47, v56, v42);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v223, v47, v53);
  v55(v47, v42);
  sub_20D81E5E0(v53, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot);
  LOBYTE(v223) = 1;
  v185 = *MEMORY[0x277D075C8];
  v54(v47);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v223, v47, v53);
  v55(v47, v42);
  sub_20D81E5E0(v53, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot);
  LOBYTE(v223) = 1;
  (v54)(v47, *MEMORY[0x277D075D0], v42);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v223, v47, v53);
  v55(v47, v42);
  sub_20D81E5E0(v53, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__sixMonthlyUsageSnapshot);
  LOBYTE(v223) = 1;
  v57 = *MEMORY[0x277D075C0];
  v187 = v43 + 104;
  v186 = v54;
  (v54)(v47, v57, v42);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v223, v47, v53);
  v211 = v42;
  v167 = v43 + 8;
  v166 = v55;
  v55(v47, v42);
  sub_20D81E5E0(v53, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__yearlyUsageSnapshot);
  v58 = v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  sub_20D972888();
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v59 = sub_20D9734F8();
  __swift_project_value_buffer(v59, qword_28112AB90);
  v60 = sub_20D9734D8();
  v61 = sub_20D975478();
  v62 = os_log_type_enabled(v60, v61);
  v64 = v215;
  v63 = v216;
  v199 = v2;
  v207 = v58;
  if (v62)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v223 = v66;
    *v65 = 136315394;
    *(v65 + 4) = sub_20D7F4DC8(0x7079742874696E69, 0xEB00000000293A65, &v223);
    *(v65 + 12) = 2080;
    v67 = v206;
    v68 = sub_20D975128();
    v70 = v69;

    v71 = sub_20D7F4DC8(v68, v70, &v223);

    *(v65 + 14) = v71;
    _os_log_impl(&dword_20D7C9000, v60, v61, "HistoricalUsageSnapshotManager:%s: for %s snapshot manager.", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v66, -1, -1);
    MEMORY[0x20F324260](v65, -1, -1);

    v2 = v199;
    v64 = v215;
    v63 = v216;
    v72 = v214;
  }

  else
  {

    v72 = v214;
    v67 = v206;
  }

  *(v2 + 16) = v67;
  sub_20D9725C8();
  v74 = *(v64 + 32);
  v73 = v64 + 32;
  v200 = v74;
  v74((v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__lastReloadDate), v72, v63);
  sub_20D8293B4();
  *(v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__tileRefreshPeriod) = v75;
  if (v67 > 1)
  {
  }

  else
  {
    v76 = sub_20D9757C8();

    if ((v76 & 1) == 0)
    {
      return v2;
    }
  }

  v160 = v47;
  v206 = v73;
  if (qword_27C838648 != -1)
  {
    swift_once();
  }

  v77 = __swift_project_value_buffer(v217, qword_27C83A298);
  swift_beginAccess();
  sub_20D7FCF94(v77, v53);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v222 = v2;
  v79 = sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972848();

  sub_20D7FEF04(v53);
  sub_20D9725C8();
  sub_20D8AE0DC(v72, v53);
  v80 = *(v215 + 8);
  v159 = v215 + 8;
  v158 = v80;
  v80(v72, v216);
  v81 = swift_getKeyPath();
  MEMORY[0x28223BE20](v81);
  v222 = v2;
  sub_20D972848();
  v156 = 0;

  v157 = v53;
  sub_20D7FEF04(v53);
  v161 = 0x800000020D983CA0;
  swift_getKeyPath();
  v222 = v2;
  v198 = v79;
  sub_20D972858();

  v82 = v205;
  swift_beginAccess();
  v83 = v217;
  v84 = v189;
  v85 = v82 + v217[9];
  v86 = v82;
  v87 = v188;
  v88 = v190;
  (*(v189 + 16))(v188, v85, v190);
  sub_20D971D78();
  (*(v84 + 8))(v87, v88);
  swift_getKeyPath();
  v221 = v2;
  sub_20D972858();

  v89 = v194;
  v90 = (v194 + 16);
  v91 = *(v194 + 16);
  v92 = v86 + v83[12];
  v93 = v191;
  v94 = v203;
  v91(v191, v92, v203);
  sub_20D972E68();
  v194 = *(v89 + 8);
  (v194)(v93, v94);
  v186(v210, v185, v211);
  swift_getKeyPath();
  v221 = v2;
  sub_20D972858();

  v95 = v83[12];
  v96 = v205;
  v97 = v193;
  v191 = v90;
  v190 = v91;
  v91(v193, v205 + v95, v94);
  v98 = sub_20D972E38();
  (v194)(v97, v94);
  swift_getKeyPath();
  v221 = v2;
  sub_20D972858();

  v99 = v217;
  LOBYTE(v83) = *(v96 + v217[11]);
  swift_getKeyPath();
  v221 = v2;
  sub_20D972858();

  v100 = v99;
  v101 = v99[16];
  v102 = *(v96 + v99[15]);
  v103 = v209;
  v104 = v161;
  *v209 = 0xD00000000000002BLL;
  v103[1] = v104;
  *(v103 + v101) = 6;
  v105 = v100;
  *(v103 + v100[11]) = v83;
  (*(v192 + 16))(v160, v210, v211);
  (*(v204 + 16))(v195, v213, v208);
  v106 = v105[12];
  v193 = v102;

  v194 = v98;
  sub_20D972E28();
  v205 = v106;
  v107 = sub_20D972E38();
  if (*(v107 + 16))
  {
    v108 = v184;
    v109 = v164;
    v110 = v197;
    (*(v184 + 16))(v164, v107 + ((*(v108 + 80) + 32) & ~*(v108 + 80)), v197);

    v112 = v162;
    MEMORY[0x20F320DF0](v111);
    (*(v108 + 8))(v109, v110);
    v113 = v216;
    v114 = v200;
    v200(v201, v112, v216);
    v115 = v212;
    v116 = v202;
  }

  else
  {

    v113 = v216;
    v115 = v212;
    (*(v215 + 16))(v201, v212, v216);
    v116 = v202;
    v108 = v184;
    v114 = v200;
  }

  v117 = v217;
  v2 = v205;
  sub_20D972DA8();
  v118 = sub_20D972E38();
  v119 = *(v118 + 16);
  if (v119)
  {
    v120 = v165;
    v121 = v197;
    (*(v108 + 16))(v165, v118 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * (v119 - 1), v197);

    v123 = v163;
    MEMORY[0x20F320DF0](v122);
    v124 = v121;
    v2 = v205;
    (*(v108 + 8))(v120, v124);
    v114(v116, v123, v113);
  }

  else
  {

    (*(v215 + 16))(v116, v115, v113);
  }

  sub_20D972DA8();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  v125 = v214;
  sub_20D971D78();
  v126 = v196;
  sub_20D971D48();
  sub_20D82CEEC(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if ((sub_20D974FC8() & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v127 = v173;
  v114(v173, v125, v113);
  v128 = v176;
  v114((v127 + *(v176 + 48)), v126, v113);
  v129 = v175;
  sub_20D7EB7E8(v127, v175, &unk_27C83C750, &unk_20D978DD0);
  v130 = *(v128 + 48);
  v131 = v2;
  v132 = v174;
  v114(v174, v129, v113);
  v133 = v158;
  v158((v129 + v130), v113);
  sub_20D829514(v127, v129);
  v114((v132 + *(v172 + 36)), (v129 + *(v128 + 48)), v113);
  v134 = v133;
  v133(v129, v113);
  v135 = v209 + v131;
  v136 = v209;
  v137 = v171;
  (v190)(v171, v135, v203);
  v138 = v214;
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v132, v137, v138, v136 + v217[13]);
  v139 = v204;
  v140 = v181;
  v141 = v182;
  (*(v181 + 56))(v177, 1, 1, v182);
  (*(v139 + 56))(v178, 1, 1, v208);
  v142 = v179;
  sub_20D971E98();
  v143 = v180;
  sub_20D972E48();
  v144 = v183;
  sub_20D972748();
  v145 = v216;
  (*(v140 + 8))(v143, v141);
  result = (*(v215 + 48))(v144, 1, v145);
  if (result != 1)
  {

    (*(v169 + 8))(v142, v170);
    v134(v202, v145);
    v134(v201, v145);
    v166(v210, v211);
    (*(v139 + 8))(v213, v208);
    v134(v212, v145);
    v117 = v217;
    v200((v136 + v217[14]), v144, v145);
    *(v136 + v117[15]) = v193;
    v147 = v168;
    sub_20D81E5E0(v136, v168);
    v148 = swift_getKeyPath();
    MEMORY[0x28223BE20](v148);
    v2 = v199;
    v221 = v199;
    sub_20D972848();

    sub_20D7FEF04(v147);
    if (qword_27C838650 == -1)
    {
LABEL_21:
      v149 = __swift_project_value_buffer(v117, qword_27C83A2B0);
      swift_beginAccess();
      v150 = v157;
      sub_20D7FCF94(v149, v157);
      v151 = swift_getKeyPath();
      MEMORY[0x28223BE20](v151);
      v220 = v2;
      sub_20D972848();

      sub_20D7FEF04(v150);
      if (qword_27C838668 != -1)
      {
        swift_once();
      }

      v152 = __swift_project_value_buffer(v117, qword_27C83A2F8);
      swift_beginAccess();
      sub_20D7FCF94(v152, v150);
      v153 = swift_getKeyPath();
      MEMORY[0x28223BE20](v153);
      v219 = v2;
      sub_20D972848();

      sub_20D7FEF04(v150);
      if (qword_27C838670 != -1)
      {
        swift_once();
      }

      v154 = __swift_project_value_buffer(v117, qword_27C83A310);
      swift_beginAccess();
      sub_20D7FCF94(v154, v150);
      v155 = swift_getKeyPath();
      MEMORY[0x28223BE20](v155);
      v218 = v2;
      sub_20D972848();

      sub_20D7FEF04(v150);
      return v2;
    }

LABEL_28:
    swift_once();
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for HistoricalUsageSnapshotManager(uint64_t a1)
{
  result = qword_281125948;
  if (!qword_281125948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D81E5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D81E64C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_20D972AF8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getKeyPath();
    v17 = v4;
    sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    v12 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot;
  }

  else
  {
    (*(v9 + 16))(v11, a1, v8);
    v13 = (*(v9 + 88))(v11, v8);
    if (v13 == *MEMORY[0x277D075B0])
    {
      swift_getKeyPath();
      v17 = v4;
      sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
      sub_20D972858();

      v12 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__dailyUsageSnapshot;
    }

    else if (v13 == *MEMORY[0x277D075B8])
    {
      swift_getKeyPath();
      v17 = v4;
      sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
      sub_20D972858();

      v12 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot;
    }

    else if (v13 == *MEMORY[0x277D075C8])
    {
      swift_getKeyPath();
      v17 = v4;
      sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
      sub_20D972858();

      v12 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot;
    }

    else if (v13 == *MEMORY[0x277D075D0])
    {
      swift_getKeyPath();
      v17 = v4;
      sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
      sub_20D972858();

      v12 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__sixMonthlyUsageSnapshot;
    }

    else
    {
      if (v13 != *MEMORY[0x277D075C0])
      {
        swift_getKeyPath();
        v17 = v4;
        sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
        sub_20D972858();

        v15 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot;
        swift_beginAccess();
        sub_20D7FCF94(v4 + v15, a3);
        return (*(v9 + 8))(v11, v8);
      }

      swift_getKeyPath();
      v17 = v4;
      sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
      sub_20D972858();

      v12 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__yearlyUsageSnapshot;
    }
  }

  swift_beginAccess();
  return sub_20D7FCF94(v4 + v12, a3);
}

uint64_t sub_20D81EB50(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_20D81EB74, 0, 0);
}

uint64_t sub_20D81EB74()
{
  v14 = v0;
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  if (*(v1 + 16) && *(v1 + 16) != 1)
  {
  }

  else
  {
    v2 = sub_20D9757C8();

    if ((v2 & 1) == 0)
    {
      v3 = v0[4];
      v4 = v0[3];

      sub_20D81B1C0(v4, v3);
      v5 = swift_task_alloc();
      v0[6] = v5;
      *v5 = v0;
      v5[1] = sub_20D81EE60;

      return sub_20D81EF54();
    }
  }

  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v7 = sub_20D9734F8();
  __swift_project_value_buffer(v7, qword_28112AB90);
  v8 = sub_20D9734D8();
  v9 = sub_20D975478();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20D7F4DC8(0xD000000000000014, 0x800000020D983AE0, &v13);
    _os_log_impl(&dword_20D7C9000, v8, v9, "%s: for mock snapshot manager, ignoring.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_20D81EE60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20D81EF74()
{
  v13 = v0;
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_28112AB90);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984090, &v12);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: Fetching all snapshots!", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v6 = sub_20D9734D8();
  v7 = sub_20D975478();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984090, &v12);
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s: \t\tFetching weekly summary snapshot...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *v10 = v0;
  v10[1] = sub_20D81F1E8;

  return sub_20D81F990(1);
}

uint64_t sub_20D81F1E8()
{

  return MEMORY[0x2822009F8](sub_20D81F2E4, 0, 0);
}

uint64_t sub_20D81F2E4(uint64_t a1)
{
  v9 = v1;
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984090, &v8);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: \t\tFetching details snapshots...", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v1 + 40) = v6;
  *v6 = v1;
  v6[1] = sub_20D81F44C;

  return sub_20D821F08();
}

uint64_t sub_20D81F44C()
{

  return MEMORY[0x2822009F8](sub_20D81F548, 0, 0);
}

uint64_t sub_20D81F548(uint64_t a1)
{
  v9 = v1;
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984090, &v8);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: Finished fetching all snapshots!", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_20D81F678(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_20D81F69C, 0, 0);
}

uint64_t sub_20D81F69C()
{
  v14 = v0;
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  if (*(v1 + 16) && *(v1 + 16) != 1)
  {
  }

  else
  {
    v2 = sub_20D9757C8();

    if ((v2 & 1) == 0)
    {
      v3 = v0[4];
      v4 = v0[3];

      sub_20D81B1C0(v4, v3);
      v5 = swift_task_alloc();
      v0[6] = v5;
      *v5 = v0;
      v5[1] = sub_20D82D028;

      return sub_20D81F990(0);
    }
  }

  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v7 = sub_20D9734F8();
  __swift_project_value_buffer(v7, qword_28112AB90);
  v8 = sub_20D9734D8();
  v9 = sub_20D975478();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983CD0, &v13);
    _os_log_impl(&dword_20D7C9000, v8, v9, "%s: for mock snapshot manager, ignoring.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_20D81F990(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 208) = a1;
  v3 = sub_20D9727B8();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  v4 = sub_20D972AF8();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  type metadata accessor for HistoricalUsageSnapshot(0);
  *(v2 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D81FADC, 0, 0);
}

uint64_t sub_20D81FADC()
{
  v19 = v0;
  v1 = v0[12];
  swift_getKeyPath();
  v0[8] = v1;
  v0[20] = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  v0[21] = sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  if (*(v1 + 32))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v0[22] = v2;
  v0[23] = v3;
  v4 = qword_2811250E8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_20D9734F8();
  v0[24] = __swift_project_value_buffer(v5, qword_28112AB90);

  v6 = sub_20D9734D8();
  v7 = sub_20D975448();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000003CLL, 0x800000020D984050, &v18);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(v2, v3, &v18);
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s: start %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v10 = v0[15];
  v11 = v0[13];
  v12 = v0[14];
  (*(v0[17] + 104))(v0[18], *MEMORY[0x277D075B8], v0[16]);
  (*(v12 + 104))(v10, *MEMORY[0x277CC9998], v11);
  v13 = swift_task_alloc();
  v0[25] = v13;
  *v13 = v0;
  v13[1] = sub_20D81FDEC;
  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[15];

  return sub_20D820424(v14, v15, 0, 1, v16, 1);
}

uint64_t sub_20D81FDEC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 112);
  v6 = *(*v0 + 104);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20D81FFA0, 0, 0);
}