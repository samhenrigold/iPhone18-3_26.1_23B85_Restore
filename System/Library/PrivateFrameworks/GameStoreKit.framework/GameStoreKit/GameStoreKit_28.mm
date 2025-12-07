uint64_t sub_24E8BE3D0(uint64_t a1)
{
  v2 = type metadata accessor for OptionSetting(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E8BE44C()
{
  result = qword_27F220728;
  if (!qword_27F220728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220728);
  }

  return result;
}

unint64_t sub_24E8BE4A0()
{
  result = qword_27F220730;
  if (!qword_27F220730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220730);
  }

  return result;
}

unint64_t sub_24E8BE4F4()
{
  result = qword_27F220748;
  if (!qword_27F220748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220748);
  }

  return result;
}

unint64_t sub_24E8BE548()
{
  result = qword_27F220758;
  if (!qword_27F220758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220758);
  }

  return result;
}

uint64_t sub_24E8BE59C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220738, &qword_24F964140);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E8BE614()
{
  result = qword_27F220768;
  if (!qword_27F220768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220768);
  }

  return result;
}

unint64_t sub_24E8BE668()
{
  result = qword_27F220778;
  if (!qword_27F220778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220778);
  }

  return result;
}

uint64_t sub_24E8BE6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OptionSetting(0);
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

uint64_t sub_24E8BE7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OptionSetting(0);
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

void sub_24E8BE880(uint64_t a1)
{
  type metadata accessor for OptionSetting(319);
  if (v1 <= 0x3F)
  {
    sub_24E8BF5C0(319, &qword_27F220798, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24E8BE990()
{
  result = qword_27F2207A8;
  if (!qword_27F2207A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2207A8);
  }

  return result;
}

unint64_t sub_24E8BE9E8()
{
  result = qword_27F2207B0;
  if (!qword_27F2207B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2207B0);
  }

  return result;
}

unint64_t sub_24E8BEA40()
{
  result = qword_27F2207B8;
  if (!qword_27F2207B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2207B8);
  }

  return result;
}

unint64_t sub_24E8BEA98()
{
  result = qword_27F2207C0;
  if (!qword_27F2207C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2207C0);
  }

  return result;
}

unint64_t sub_24E8BEAF0()
{
  result = qword_27F2207C8;
  if (!qword_27F2207C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2207C8);
  }

  return result;
}

unint64_t sub_24E8BEB48()
{
  result = qword_27F2207D0;
  if (!qword_27F2207D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2207D0);
  }

  return result;
}

uint64_t sub_24E8BEBC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8BEC30@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for _OptionSettingComponent(0) - 8);
  result = sub_24E8BE004(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm_15()
{
  v1 = *(type metadata accessor for _OptionSettingComponent(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  __swift_destroy_boxed_opaque_existential_1((v0 + v2));

  if (*(v0 + v2 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 80));
  }

  v4 = type metadata accessor for OptionSetting(0);
  v5 = *(v4 + 48);
  v6 = sub_24F92A6D8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v4 + 52);
  v9 = sub_24F929608();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_24E8BEEA0(uint64_t *a1)
{
  v3 = *(type metadata accessor for _OptionSettingComponent(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_24E8BC978(a1, v4, v5, v6);
}

unint64_t sub_24E8BEF38()
{
  result = qword_27F2207E8;
  if (!qword_27F2207E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2207F0, &qword_24F964428);
    sub_24E602068(&qword_27F2207F8, &qword_27F220800, &qword_24F964430, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2207E8);
  }

  return result;
}

void sub_24E8BEFF0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B588();
  v4 = sub_24F92B098();

  [v2 setValue:v3 forKey:v4];
}

uint64_t sub_24E8BF1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F1B8, &qword_24F95F660);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for OptionSetting(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24E8BF2F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F1B8, &qword_24F95F660);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for OptionSetting(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24E8BF428(uint64_t a1)
{
  sub_24E8BF55C(319, &qword_27F21F1D0, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24E8BF5C0(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_24E8BF610(319, &qword_27F220860, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for OptionSetting(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E8BF55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24E8BF5C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24E8BF610(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_24E8BF678()
{
  result = qword_27F220868;
  if (!qword_27F220868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220810, &qword_24F964438);
    sub_24E602068(&qword_27F220870, &qword_27F220878, &qword_24F964518, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220868);
  }

  return result;
}

unint64_t sub_24E8BF754()
{
  result = qword_27F220890;
  if (!qword_27F220890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220888, &qword_24F964578);
    sub_24E8BF7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220890);
  }

  return result;
}

unint64_t sub_24E8BF7D8()
{
  result = qword_27F220898;
  if (!qword_27F220898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2208A0, &qword_24F964580);
    sub_24E602068(&qword_27F2208A8, &qword_27F2208B0, &unk_24F964588, MEMORY[0x277CDF028]);
    sub_24E893ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220898);
  }

  return result;
}

uint64_t sub_24E8BF890()
{
  v1 = type metadata accessor for OptionSelectionView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F1A8, &qword_24F95F650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923978();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = (v0 + v2 + *(v1 + 32));
  __swift_destroy_boxed_opaque_existential_1(v4);

  if (*(v4 + 13))
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 10);
  }

  v5 = type metadata accessor for OptionSetting(0);
  v6 = *(v5 + 48);
  v7 = sub_24F92A6D8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v4[v6], 1, v7))
  {
    (*(v8 + 8))(&v4[v6], v7);
  }

  v9 = *(v5 + 52);
  v10 = sub_24F929608();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v4[v9], 1, v10))
  {
    (*(v11 + 8))(&v4[v9], v10);
  }

  return swift_deallocObject();
}

uint64_t sub_24E8BFB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8BFB98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OptionSelectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E8BB448(a1, v6, a2);
}

unint64_t sub_24E8BFC18()
{
  result = qword_27F2208C8;
  if (!qword_27F2208C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2208C8);
  }

  return result;
}

uint64_t sub_24E8BFC6C()
{
  v1 = type metadata accessor for OptionSelectionView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F1A8, &qword_24F95F650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923978();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = (v0 + v2 + *(v1 + 32));
  __swift_destroy_boxed_opaque_existential_1(v4);

  if (*(v4 + 13))
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 10);
  }

  v5 = type metadata accessor for OptionSetting(0);
  v6 = *(v5 + 48);
  v7 = sub_24F92A6D8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v4[v6], 1, v7))
  {
    (*(v8 + 8))(&v4[v6], v7);
  }

  v9 = *(v5 + 52);
  v10 = sub_24F929608();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v4[v9], 1, v10))
  {
    (*(v11 + 8))(&v4[v9], v10);
  }

  return swift_deallocObject();
}

void sub_24E8BFF2C()
{
  v1 = *(type metadata accessor for OptionSelectionView(0) - 8);
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = (v0 + ((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  sub_24E8BB6D4(v0 + v3, v5, v6, v7, v8, v2);
}

uint64_t sub_24E8BFFD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E8C0054()
{
  result = qword_27F2208E0;
  if (!qword_27F2208E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2208E8, &qword_24F9645B8);
    sub_24E602068(&qword_27F2208F0, &qword_27F2208F8, &unk_24F9645C0, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2208E0);
  }

  return result;
}

unint64_t sub_24E8C011C()
{
  result = qword_27F220950;
  if (!qword_27F220950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220928, &qword_24F9645F0);
    sub_24E62A864();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0, &unk_24F9B4DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220950);
  }

  return result;
}

uint64_t sub_24E8C01D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220880, &qword_24F964570);
  sub_24E602068(&qword_27F2208B8, &qword_27F220880, &qword_24F964570, MEMORY[0x277CDE5A0]);
  sub_24E600AEC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t AchievementsCountDataIntent.gameBundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AchievementsCountDataIntent.playerID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24E8C0300()
{
  if (*v0)
  {
    return 0x4449726579616C70;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24E8C0344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E8C0424(uint64_t a1)
{
  v2 = sub_24E8C0630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E8C0460(uint64_t a1)
{
  v2 = sub_24E8C0630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementsCountDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220958, &qword_24F9646A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8C0630();
  sub_24F92D128();
  v12 = 0;
  v8 = v10[3];
  sub_24F92CD08();
  if (!v8)
  {
    v11 = 1;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E8C0630()
{
  result = qword_27F220960;
  if (!qword_27F220960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220960);
  }

  return result;
}

uint64_t AchievementsCountDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220968, &qword_24F9646A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8C0630();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24F92CC28();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E8C08F8()
{
  result = qword_27F220970;
  if (!qword_27F220970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220970);
  }

  return result;
}

unint64_t sub_24E8C0950()
{
  result = qword_27F220978;
  if (!qword_27F220978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220978);
  }

  return result;
}

unint64_t sub_24E8C09A8()
{
  result = qword_27F220980;
  if (!qword_27F220980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220980);
  }

  return result;
}

uint64_t sub_24E8C0A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E8C0A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GSKDebugMetricsEventDetailView(uint64_t a1)
{
  result = qword_27F220988;
  if (!qword_27F220988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E8C0B4C(uint64_t a1)
{
  result = type metadata accessor for GSKDebugMetricsEvent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E8C0BD4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8617C8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24E8C46E8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24E8C0C40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220998, &qword_24F964950);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = v51 - v4;
  v58 = sub_24F9253B8();
  v62 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v61 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F923C68();
  v54 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209A0, &qword_24F964958);
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v51 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209A8, &qword_24F964960);
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v13 = v51 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209B0, &qword_24F964968);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209B8, &qword_24F964970);
  v63 = *(v15 - 8);
  v64 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v51 - v16;
  v51[1] = v2;
  v67 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209C0, &qword_24F964978);
  sub_24E602068(&qword_27F2209C8, &qword_27F2209C0, &qword_24F964978, MEMORY[0x277CE14C0]);
  sub_24F925A98();
  sub_24F923C58();
  v18 = sub_24E602068(&qword_27F2209D0, &qword_27F2209A0, &qword_24F964958, MEMORY[0x277CDE5A0]);
  v19 = MEMORY[0x277CDD980];
  v20 = v13;
  sub_24F926B98();
  (*(v54 + 8))(v8, v6);
  (*(v52 + 8))(v11, v9);
  v66 = v2;
  v21 = v17;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209D8, &qword_24F964980);
  v68 = v9;
  v69 = v6;
  v70 = v18;
  v71 = v19;
  v23 = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209E0, &qword_24F964988);
  v26 = sub_24E602068(&qword_27F2209E8, &qword_27F2209E0, &qword_24F964988, MEMORY[0x277CDD7A8]);
  v68 = v25;
  v69 = v26;
  v27 = v60;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v53;
  v30 = v55;
  sub_24F926A58();
  v31 = v30;
  (*(v56 + 8))(v20, v30);
  v32 = v61;
  sub_24F9253A8();
  v68 = v31;
  v69 = v22;
  v70 = OpaqueTypeConformance2;
  v71 = v28;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = MEMORY[0x277CE06D0];
  v35 = v57;
  sub_24F926348();
  (*(v62 + 8))(v32, v23);
  (*(v59 + 8))(v29, v35);
  v36 = aEventtype_6[0];
  v37 = aEventtype_6[1];
  v38 = off_281C9F358;

  sub_24F5C567C(v36, v37, v38, v27);

  v39 = sub_24F929458();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v27, 1, v39) == 1)
  {
    sub_24E601704(v27, &qword_27F220998, &qword_24F964950);
    v41 = 0xE700000000000000;
    v42 = 0x6E776F6E6B6E55;
  }

  else
  {
    v42 = sub_24F929448();
    v41 = v43;
    (*(v40 + 8))(v27, v39);
  }

  v68 = v42;
  v69 = v41;
  sub_24E600AEC();
  v44 = sub_24F925E18();
  v46 = v45;
  v48 = v47;
  v68 = v35;
  v69 = v23;
  v70 = v33;
  v71 = v34;
  swift_getOpaqueTypeConformance2();
  v49 = v64;
  sub_24F926448();
  sub_24E600B40(v44, v46, v48 & 1);

  return (*(v63 + 8))(v21, v49);
}

uint64_t sub_24E8C1488@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A00, &qword_24F964998);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v84 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v69 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A08, &qword_24F9649A0);
  v6 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v71 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A10, &qword_24F9649A8);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A18, &qword_24F9649B0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v70 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A20, &qword_24F9649B8);
  MEMORY[0x28223BE20](v16 - 8);
  v83 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v85 = &v69 - v19;
  v20 = type metadata accessor for GSKDebugMetricsExpandedSummaryView(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A28, &qword_24F9649C0);
  v81 = *(v23 - 8);
  v82 = v23;
  MEMORY[0x28223BE20](v23);
  v80 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v69 - v26;
  sub_24E8C50B4(a1, v22, type metadata accessor for GSKDebugMetricsEvent);
  v28 = sub_24F927628();
  v29 = &v22[*(v20 + 20)];
  *v29 = v28;
  v29[1] = v30;
  sub_24F923838();
  sub_24E8C44BC(v31);
  v79 = v27;
  sub_24F9264B8();
  sub_24E8C4514(v22, v32);
  v33 = *(a1 + *(type metadata accessor for GSKDebugMetricsEvent(0) + 20));
  v34 = MEMORY[0x277D84F90];
  if (!*(v33 + 16) || (v35 = sub_24E76D644(0x6973736572706D69, 0xEB00000000736E6FLL), (v36 & 1) == 0))
  {
    v40 = 1;
    v37 = v6;
    goto LABEL_9;
  }

  sub_24E643A9C(*(v33 + 56) + 32 * v35, &v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98, &unk_24F953660);
  v37 = v6;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v40 = 1;
    goto LABEL_9;
  }

  if (!*(v86 + 16))
  {

    goto LABEL_8;
  }

  *&v87 = 0xD000000000000010;
  *(&v87 + 1) = 0x800000024FA48B10;
  v88 = 0;
  v89 = v34;
  MEMORY[0x28223BE20](v86);
  *(&v69 - 2) = v38;
  sub_24E8C4694();
  v39 = v70;
  sub_24F927298();
  v34 = MEMORY[0x277D84F90];

  (*(v14 + 32))(v85, v39, v13);
  v40 = 0;
LABEL_9:
  (*(v14 + 56))(v85, v40, 1, v13);
  if (!*(v33 + 16))
  {
    goto LABEL_15;
  }

  v41 = sub_24E76D644(0x6E6F697461636F6CLL, 0xE800000000000000);
  if ((v42 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_24E643A9C(*(v33 + 56) + 32 * v41, &v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98, &unk_24F953660);
  v43 = swift_dynamicCast();
  if ((v43 & 1) == 0)
  {
    goto LABEL_15;
  }

  v44 = v86;
  if (!*(v86 + 16))
  {

LABEL_15:
    v48 = 1;
    v47 = v74;
    goto LABEL_16;
  }

  v87 = xmmword_24F9648B0;
  v88 = 0;
  v89 = v34;
  MEMORY[0x28223BE20](v43);
  *(&v69 - 2) = v44;
  sub_24E8C4614();
  v45 = v71;
  sub_24F927298();

  v46 = v74;
  (*(v37 + 32))(v12, v45, v74);
  v47 = v46;
  v48 = 0;
LABEL_16:
  v49 = (*(v37 + 56))(v12, v48, 1, v47);
  v87 = xmmword_24F9648C0;
  v88 = 0;
  v89 = v34;
  MEMORY[0x28223BE20](v49);
  *(&v69 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A38, &qword_24F9649C8);
  sub_24E8C584C(&qword_27F220A40, &qword_27F220A38, &qword_24F9649C8);
  v50 = v78;
  sub_24F927298();
  v51 = v80;
  v52 = v12;
  v72 = v12;
  v53 = *(v81 + 16);
  v54 = v82;
  v53(v80, v79, v82);
  v55 = v83;
  sub_24E60169C(v85, v83, &qword_27F220A20, &qword_24F9649B8);
  v56 = v73;
  sub_24E60169C(v52, v73, &qword_27F220A10, &qword_24F9649A8);
  v57 = v75;
  v58 = v50;
  v59 = v56;
  v74 = *(v75 + 16);
  v60 = v77;
  (v74)(v84, v58, v77);
  v61 = v76;
  v53(v76, v51, v54);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A50, qword_24F9649D0);
  sub_24E60169C(v55, &v61[v62[12]], &qword_27F220A20, &qword_24F9649B8);
  sub_24E60169C(v59, &v61[v62[16]], &qword_27F220A10, &qword_24F9649A8);
  v63 = &v61[v62[20]];
  v64 = v84;
  (v74)(v63, v84, v60);
  v65 = *(v57 + 8);
  v65(v78, v60);
  sub_24E601704(v72, &qword_27F220A10, &qword_24F9649A8);
  sub_24E601704(v85, &qword_27F220A20, &qword_24F9649B8);
  v66 = v82;
  v67 = *(v81 + 8);
  v67(v79, v82);
  v65(v64, v60);
  sub_24E601704(v59, &qword_27F220A10, &qword_24F9649A8);
  sub_24E601704(v83, &qword_27F220A20, &qword_24F9649B8);
  return (v67)(v80, v66);
}

void sub_24E8C1E6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GSKDebugMetricsEventDetailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for GSKDebugMetricsEvent(0) + 20));
  v9 = *(v8 + 16);
  if (!v9)
  {

    v10 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v15 = v5;
  v16 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v10 = sub_24EAE678C(v9, 0);
  v11 = sub_24EAEAC9C(&v19, (v10 + 32), v9, v8);
  v12 = v19;
  swift_bridgeObjectRetain_n();
  sub_24E6586B4(v12);
  if (v11 == v9)
  {
    a1 = v17;
    v5 = v15;
    v7 = v16;
LABEL_5:
    v19 = v10;
    sub_24E8C0BD4(&v19);

    swift_getKeyPath();
    sub_24E8C50B4(a1, v7, type metadata accessor for GSKDebugMetricsEventDetailView);
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    sub_24E8C5228(v7, v14 + v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E602068(&qword_27F2181D8, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83980]);
    sub_24E8C4578();
    sub_24F927228();
    return;
  }

  __break(1u);

  __break(1u);
}

double sub_24E8C20F8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + *(type metadata accessor for GSKDebugMetricsEvent(0) + 20));
  if (*(v6 + 16))
  {

    v7 = sub_24E76D644(v4, v5);
    if (v8)
    {
      sub_24E643A9C(*(v6 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  result = *&v11;
  v10 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  return result;
}

uint64_t sub_24E8C219C(uint64_t a1)
{
  v2 = sub_24F925018();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209E0, &qword_24F964988);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24F924F78();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2209F0, &qword_24F964990);
  sub_24E602068(&qword_27F2209F8, &qword_27F2209F0, &qword_24F964990, MEMORY[0x277CDF188]);
  sub_24F923668();
  v7 = sub_24E602068(&qword_27F2209E8, &qword_27F2209E0, &qword_24F964988, MEMORY[0x277CDD7A8]);
  MEMORY[0x25304AA30](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E8C2408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F926DF8();
  *a1 = result;
  return result;
}

uint64_t sub_24E8C2448@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A68, &qword_24F964AB0);
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = v30 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A70, &qword_24F964AB8);
  MEMORY[0x28223BE20](v36);
  v38 = v30 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A78, &qword_24F964AC0);
  MEMORY[0x28223BE20](v32);
  v33 = v30 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A80, &qword_24F964AC8);
  MEMORY[0x28223BE20](v37);
  v34 = v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A88, &qword_24F964AD0);
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A90, &qword_24F964AD8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A98, &unk_24F964AE0);
  MEMORY[0x28223BE20](v31);
  v16 = v30 - v15;
  sub_24E60169C((v1 + 2), &v41, &qword_27F2129B0, &unk_24F945320);
  if (v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8, &unk_24F9BC390);
    if (swift_dynamicCast())
    {
      if (*(v40 + 16))
      {
        sub_24F406868(v40);
        v18 = v17;

        v19 = swift_allocObject();
        v30[1] = v30;
        *(v19 + 16) = v18;
        MEMORY[0x28223BE20](v19);
        v30[-2] = v1;
        v30[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AD0, &qword_24F964B00);
        sub_24E8C5718();
        sub_24E8C584C(&qword_27F220AD8, &qword_27F220AD0, &qword_24F964B00);
        sub_24F923E38();
        (*(v12 + 16))(v10, v14, v11);
        swift_storeEnumTagMultiPayload();
        sub_24E602068(&qword_27F220AB0, &qword_27F220A90, &qword_24F964AD8, MEMORY[0x277CDD9E8]);
        sub_24F924E28();
        (*(v12 + 8))(v14, v11);
      }

      else
      {

        v28 = *v1;
        v27 = v1[1];
        sub_24E60169C((v1 + 2), &v43, &qword_27F2129B0, &unk_24F945320);
        v41 = v28;
        v42 = v27;
        sub_24E8C5570(&v41, v10);
        swift_storeEnumTagMultiPayload();
        sub_24E602068(&qword_27F220AB0, &qword_27F220A90, &qword_24F964AD8, MEMORY[0x277CDD9E8]);
        sub_24E8C5718();

        sub_24F924E28();
        sub_24E8C576C(&v41);
      }

      sub_24E60169C(v16, v33, &qword_27F220A98, &unk_24F964AE0);
      swift_storeEnumTagMultiPayload();
      sub_24E8C5660();
      sub_24E602068(&qword_27F220AC0, &qword_27F220A68, &qword_24F964AB0, MEMORY[0x277CDD9E8]);
      v29 = v34;
      sub_24F924E28();
      sub_24E60169C(v29, v38, &qword_27F220A80, &qword_24F964AC8);
      swift_storeEnumTagMultiPayload();
      sub_24E8C55A8();
      sub_24E8C5718();
      sub_24F924E28();
      sub_24E601704(v29, &qword_27F220A80, &qword_24F964AC8);
      return sub_24E601704(v16, &qword_27F220A98, &unk_24F964AE0);
    }
  }

  else
  {
    sub_24E601704(&v41, &qword_27F2129B0, &unk_24F945320);
  }

  sub_24E60169C((v1 + 2), &v41, &qword_27F2129B0, &unk_24F945320);
  if (v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    if (swift_dynamicCast())
    {
      v20 = v40;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      MEMORY[0x28223BE20](v21);
      v30[-2] = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220A38, &qword_24F9649C8);
      sub_24E8C5718();
      sub_24E8C584C(&qword_27F220A40, &qword_27F220A38, &qword_24F9649C8);
      sub_24F923E38();
      v22 = v35;
      (*(v2 + 16))(v33, v4, v35);
      swift_storeEnumTagMultiPayload();
      sub_24E8C5660();
      sub_24E602068(&qword_27F220AC0, &qword_27F220A68, &qword_24F964AB0, MEMORY[0x277CDD9E8]);
      v23 = v34;
      sub_24F924E28();
      sub_24E60169C(v23, v38, &qword_27F220A80, &qword_24F964AC8);
      swift_storeEnumTagMultiPayload();
      sub_24E8C55A8();
      sub_24F924E28();
      sub_24E601704(v23, &qword_27F220A80, &qword_24F964AC8);
      return (*(v2 + 8))(v4, v22);
    }
  }

  else
  {
    sub_24E601704(&v41, &qword_27F2129B0, &unk_24F945320);
  }

  v26 = *v1;
  v25 = v1[1];
  sub_24E60169C((v1 + 2), &v43, &qword_27F2129B0, &unk_24F945320);
  v41 = v26;
  v42 = v25;
  sub_24E8C5570(&v41, v38);
  swift_storeEnumTagMultiPayload();
  sub_24E8C55A8();
  sub_24E8C5718();

  sub_24F924E28();
  return sub_24E8C576C(&v41);
}

uint64_t sub_24E8C2DF4(uint64_t a1)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AE0, &qword_24F964B28);
  sub_24E602068(&qword_27F220AE8, &qword_27F220AE0, &qword_24F964B28, MEMORY[0x277D83980]);
  sub_24E8C4578();
  return sub_24F927228();
}

uint64_t sub_24E8C2EE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 8;
  v4 = sub_24F92CD88();
  MEMORY[0x253050C20](v4);

  MEMORY[0x253050C20](93, 0xE100000000000000);
  result = sub_24E643A9C(v3, (a2 + 2));
  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_24E8C2F78(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_24EAE678C(*(a1 + 16), 0);
  v4 = sub_24EAEAC9C(&v7, (v3 + 32), v2, a1);
  v5 = v7;

  sub_24E6586B4(v5);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_24E8C0BD4(&v7);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E602068(&qword_27F2181D8, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83980]);
  sub_24E8C4578();
  return sub_24F927228();
}

double sub_24E8C312C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a2 + 16))
  {

    v7 = sub_24E76D644(v4, v5);
    if (v8)
    {
      sub_24E643A9C(*(a2 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  result = *&v11;
  v10 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  return result;
}

uint64_t sub_24E8C31C0()
{
  sub_24E60169C(v0 + 16, v6, &qword_27F2129B0, &unk_24F945320);
  if (v7)
  {
    if (swift_dynamicCast())
    {

      return 0x676E69727453;
    }
  }

  else
  {
    sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
  }

  sub_24E60169C(v0 + 16, v6, &qword_27F2129B0, &unk_24F945320);
  if (!v7)
  {
    sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
LABEL_10:
    sub_24E60169C(v0 + 16, v6, &qword_27F2129B0, &unk_24F945320);
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8, &unk_24F9BC390);
      if (swift_dynamicCast())
      {

        return 0x7961727241;
      }
    }

    else
    {
      sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
    }

    sub_24E60169C(v0 + 16, v6, &qword_27F2129B0, &unk_24F945320);
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
      if (swift_dynamicCast())
      {

        return 0x7463656A624FLL;
      }
    }

    else
    {
      sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
    }

    sub_24E60169C(v0 + 16, v6, &qword_27F2129B0, &unk_24F945320);
    v3 = v7;
    sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
    if (!v3)
    {
      return 0x6E776F6E6B6E753CLL;
    }

    sub_24E60169C(v0 + 16, v6, &qword_27F2129B0, &unk_24F945320);
    if (v7)
    {
      sub_24E69A5C4(0, &qword_27F220B60, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        return 0x6E776F6E6B6E753CLL;
      }
    }

    else
    {
      sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
    }

    v6[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B58, &qword_24F964C28);
    return sub_24F92B188();
  }

  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v2 = CFGetTypeID(cf);
  if (CFBooleanGetTypeID() == v2)
  {

    return 0x6E61656C6F6F42;
  }

  else if (CFNumberGetTypeID() == v2)
  {
    IsFloatType = CFNumberIsFloatType(cf);

    if (IsFloatType)
    {
      return 0x656C62756F44;
    }

    else
    {
      return 7630409;
    }
  }

  else
  {

    return 0x7265626D754ELL;
  }
}

uint64_t sub_24E8C3598@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B08, &unk_24F964BA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B10, &unk_24F98D8D0);
  sub_24E8C4180(a1, &v9[*(v10 + 44)]);
  sub_24E60169C((a1 + 2), &v74, &qword_27F2129B0, &unk_24F945320);
  if (*(&v75 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8, &unk_24F9BC390);
    if (swift_dynamicCast())
    {
      v11 = *(v69 + 16);

      *&v69 = v11;
      *&v74 = sub_24F92CD88();
      *(&v74 + 1) = v12;
      MEMORY[0x253050C20](0x736D65746920, 0xE600000000000000);
      v69 = v74;
      *&v70 = 0;
      *(&v70 + 1) = MEMORY[0x277D84F90];
      LOBYTE(v71) = 0;
LABEL_8:

      sub_24F924E28();
      v69 = v74;
      v70 = v75;
      v71 = v76;
      v72 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0, &qword_24FA02720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B30, &qword_24F964BC0);
      sub_24E8C5A10();
      sub_24E8C5A8C();
      sub_24F924E28();
      if (HIBYTE(v77))
      {
        v15 = 0x1000000;
      }

      else
      {
        v15 = 0;
      }

      v69 = v74;
      v70 = v75;
      v71 = v76;
      v72 = v15 | v77 | (BYTE2(v77) << 16);
      v73 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B18, &unk_24F964BB0);
      sub_24E8C5984();
      sub_24F924E28();

LABEL_30:
      v67 = v74;
      v68 = v75;
      v29 = v76;
      v30 = v77;
      v31 = v78;
      goto LABEL_31;
    }
  }

  else
  {
    sub_24E601704(&v74, &qword_27F2129B0, &unk_24F945320);
  }

  sub_24E60169C((a1 + 2), &v74, &qword_27F2129B0, &unk_24F945320);
  if (*(&v75 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    if (swift_dynamicCast())
    {
      v13 = *(v69 + 16);

      *&v69 = v13;
      *&v74 = sub_24F92CD88();
      *(&v74 + 1) = v14;
      MEMORY[0x253050C20](0x7379656B20, 0xE500000000000000);
      v69 = v74;
      *&v70 = 0;
      *(&v70 + 1) = MEMORY[0x277D84F90];
      LOBYTE(v71) = 1;
      goto LABEL_8;
    }
  }

  else
  {
    sub_24E601704(&v74, &qword_27F2129B0, &unk_24F945320);
  }

  sub_24E60169C((a1 + 2), &v74, &qword_27F2129B0, &unk_24F945320);
  if (!*(&v75 + 1))
  {
    sub_24E601704(&v74, &qword_27F2129B0, &unk_24F945320);
LABEL_24:
    sub_24E60169C((a1 + 2), &v74, &qword_27F2129B0, &unk_24F945320);
    if (*(&v75 + 1))
    {
      sub_24E612B0C(&v74, v79);
      sub_24E643A9C(v79, &v74);
      v24 = sub_24F92B188();
      v26 = v25;
      KeyPath = swift_getKeyPath();
      *&v69 = v24;
      *(&v69 + 1) = v26;
      *&v70 = 0;
      *(&v70 + 1) = MEMORY[0x277D84F90];
      v71 = KeyPath;
      LOWORD(v72) = 2;
      BYTE2(v72) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B40, &qword_24F964BC8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8, &unk_24F964BD0);
      sub_24E8C5B18();
      sub_24E62FBF4();
      sub_24F924E28();
      v69 = v74;
      v70 = v75;
      v71 = v76;
      BYTE2(v72) = BYTE2(v77) != 0;
      LOWORD(v72) = v77;
      HIBYTE(v72) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0, &qword_24FA02720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B30, &qword_24F964BC0);
      sub_24E8C5A10();
      sub_24E8C5A8C();
      sub_24F924E28();
      if (HIBYTE(v77))
      {
        v28 = 0x1000000;
      }

      else
      {
        v28 = 0;
      }

      v69 = v74;
      v70 = v75;
      v71 = v76;
      v72 = v28 | v77 | (BYTE2(v77) << 16);
      v73 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B18, &unk_24F964BB0);
      sub_24E8C5984();
      sub_24F924E28();

      __swift_destroy_boxed_opaque_existential_1(v79);
    }

    else
    {
      sub_24E601704(&v74, &qword_27F2129B0, &unk_24F945320);
      v69 = xmmword_24F9648D0;
      *&v70 = 0;
      *(&v70 + 1) = MEMORY[0x277D84F90];
      v71 = 0;
      v72 = 0;
      v73 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B18, &unk_24F964BB0);
      sub_24E8C5984();
      sub_24F924E28();
    }

    goto LABEL_30;
  }

  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v16 = v69;
  v17 = CFGetTypeID(v69);
  TypeID = CFBooleanGetTypeID();
  v66 = a2;
  *&v68 = v16;
  v65 = v6;
  if (TypeID == v17)
  {
    v19 = [v16 BOOLValue];
    if (v19)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v19)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v22 = swift_getKeyPath();
    *&v69 = v20;
    *(&v69 + 1) = v21;
    *&v70 = 0;
    *(&v70 + 1) = MEMORY[0x277D84F90];
    v71 = v22;
    v23 = 2;
  }

  else
  {
    v40 = [v16 stringValue];
    v41 = sub_24F92B0D8();
    v43 = v42;

    v44 = swift_getKeyPath();
    *&v69 = v41;
    *(&v69 + 1) = v43;
    *&v70 = 0;
    *(&v70 + 1) = MEMORY[0x277D84F90];
    v71 = v44;
    v23 = 258;
  }

  LOWORD(v72) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8, &unk_24F964BD0);
  sub_24E62FBF4();
  sub_24F924E28();
  v45 = v76;
  if (BYTE1(v77))
  {
    v46 = 256;
  }

  else
  {
    v46 = 0;
  }

  v69 = v74;
  v70 = v75;
  v71 = v76;
  LOWORD(v72) = v46 | v77;
  BYTE2(v72) = 0;
  v47 = v74;
  v48 = v75;
  v49 = *(&v75 + 1);
  *&v67 = *(&v74 + 1);
  v64 = *(&v75 + 1);
  v63 = v76;
  v62 = v77;
  sub_24E8C5D30(v74, *(&v74 + 1), v75, *(&v75 + 1), v76);
  v57 = v47;
  sub_24E8C5D30(v47, *(&v47 + 1), v48, v49, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B40, &qword_24F964BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8, &unk_24F964BD0);
  sub_24E8C5B18();
  sub_24E62FBF4();
  sub_24F924E28();
  v69 = v74;
  v70 = v75;
  v71 = v76;
  BYTE2(v72) = BYTE2(v77) != 0;
  LOWORD(v72) = v77;
  HIBYTE(v72) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0, &qword_24FA02720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B30, &qword_24F964BC0);
  sub_24E8C5A10();
  sub_24E8C5A8C();
  sub_24F924E28();
  v50 = v76;
  v51 = v77 | (BYTE2(v77) << 16);
  v52 = HIBYTE(v77);
  if (HIBYTE(v77))
  {
    v53 = 0x1000000;
  }

  else
  {
    v53 = 0;
  }

  v61 = v74;
  v69 = v74;
  v60 = *(&v74 + 1);
  v59 = v75;
  v70 = v75;
  v58 = *(&v75 + 1);
  v71 = v76;
  v72 = v53 | v51;
  v73 = 0;
  sub_24E8C5E68(v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v51, SHIBYTE(v77), sub_24E8C5C94, sub_24E8C5CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B18, &unk_24F964BB0);
  sub_24E8C5984();
  sub_24F924E28();
  v54 = v67;
  v55 = v64;
  v56 = v63;
  sub_24E8C5F24(v47, v67, v48, v64, v63);
  sub_24E8C5E68(v61, v60, v59, v58, v50, v51, v52, sub_24E8C5E88, sub_24E8C5EC4);

  sub_24E8C5F24(v57, v54, v48, v55, v56);
  v67 = v74;
  v68 = v75;
  v29 = v76;
  v30 = v77;
  v31 = v78;
  a2 = v66;
  v6 = v65;
LABEL_31:
  sub_24E8C5B9C(v9, v6);
  sub_24E8C5B9C(v6, a2);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B48, &qword_24F964BE0);
  v33 = a2 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = a2 + *(v32 + 64);
  v36 = v67;
  v35 = v68;
  *v34 = v67;
  *(v34 + 16) = v35;
  *(v34 + 32) = v29;
  *(v34 + 40) = v30;
  *(v34 + 44) = v31;
  v37 = v36;
  v38 = v35;
  sub_24E8C5C0C(v36, *(&v36 + 1), v35, *(&v35 + 1), v29, v30, v31);
  sub_24E8C5D78(v9);
  sub_24E8C5DE0(v37, *(&v37 + 1), v38, *(&v38 + 1), v29, v30, v31);
  return sub_24E8C5D78(v6);
}

uint64_t sub_24E8C4180@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = a1[1];
  v39 = *a1;
  v40 = v8;
  sub_24E600AEC();

  v9 = sub_24F925E18();
  v11 = v10;
  v39 = v9;
  v40 = v10;
  v13 = v12 & 1;
  v41 = v12 & 1;
  v42 = v14;
  v35 = v7;
  sub_24F9268B8();
  sub_24E600B40(v9, v11, v13);

  v39 = sub_24E8C31C0();
  v40 = v15;
  v16 = sub_24F925E18();
  v18 = v17;
  LOBYTE(v9) = v19;
  LODWORD(v39) = sub_24F9251C8();
  v20 = sub_24F925C58();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E600B40(v16, v18, v9 & 1);

  v27 = *(v3 + 16);
  v29 = v36;
  v28 = v37;
  v27(v36, v7, v37);
  v30 = v38;
  v27(v38, v29, v28);
  v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B50, &qword_24F964C20) + 48)];
  *v31 = v20;
  *(v31 + 1) = v22;
  v24 &= 1u;
  v31[16] = v24;
  *(v31 + 3) = v26;
  sub_24E5FD138(v20, v22, v24);
  v32 = *(v3 + 8);

  v32(v35, v28);
  sub_24E600B40(v20, v22, v24);

  return (v32)(v29, v28);
}

uint64_t sub_24E8C4448@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B00, &qword_24F964B98);
  return sub_24E8C3598(v2, a2 + *(v4 + 44));
}

unint64_t sub_24E8C44BC(__n128 a1)
{
  result = qword_27F220A30;
  if (!qword_27F220A30)
  {
    type metadata accessor for GSKDebugMetricsExpandedSummaryView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220A30);
  }

  return result;
}

uint64_t sub_24E8C4514(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for GSKDebugMetricsExpandedSummaryView(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E8C4578()
{
  result = qword_27F220A48;
  if (!qword_27F220A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220A48);
  }

  return result;
}

uint64_t sub_24E8C45CC@<X0>(uint64_t *a1@<X8>)
{

  v3 = sub_24E6772DC(v2);

  *a1 = v3;
  return result;
}

unint64_t sub_24E8C4614()
{
  result = qword_27F220A58;
  if (!qword_27F220A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220A58);
  }

  return result;
}

unint64_t sub_24E8C4668@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E676838(*(v1 + 16));
  *a1 = result;
  return result;
}

unint64_t sub_24E8C4694()
{
  result = qword_27F220A60;
  if (!qword_27F220A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220A60);
  }

  return result;
}

uint64_t sub_24E8C46E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24E8C48B0(v7, v8, a1, v4);
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
    return sub_24E8C47E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24E8C47E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_24F92CE08(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24E8C48B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_24E86164C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_24E8C4E8C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_24F92CE08();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24F92CE08();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_24E615ED8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_24E8C4E8C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24E86164C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_24E8615C0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_24F92CE08(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_24E8C4E8C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_24F92CE08() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_24E8C50B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8C511C()
{
  v1 = *(type metadata accessor for GSKDebugMetricsEventDetailView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F6B8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  type metadata accessor for GSKDebugMetricsEvent(0);

  return swift_deallocObject();
}

uint64_t sub_24E8C5228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24E8C528C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GSKDebugMetricsEventDetailView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E8C20F8(a1, v6, a2);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E8C5334()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209B8, &qword_24F964970);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209B0, &qword_24F964968);
  sub_24F9253B8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209A8, &qword_24F964960);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209D8, &qword_24F964980);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209A0, &qword_24F964958);
  sub_24F923C68();
  sub_24E602068(&qword_27F2209D0, &qword_27F2209A0, &qword_24F964958, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2209E0, &qword_24F964988);
  sub_24E602068(&qword_27F2209E8, &qword_27F2209E0, &qword_24F964988, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E8C55A8()
{
  result = qword_27F220AA0;
  if (!qword_27F220AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220A80, &qword_24F964AC8);
    sub_24E8C5660();
    sub_24E602068(&qword_27F220AC0, &qword_27F220A68, &qword_24F964AB0, MEMORY[0x277CDD9E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220AA0);
  }

  return result;
}

unint64_t sub_24E8C5660()
{
  result = qword_27F220AA8;
  if (!qword_27F220AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220A98, &unk_24F964AE0);
    sub_24E602068(&qword_27F220AB0, &qword_27F220A90, &qword_24F964AD8, MEMORY[0x277CDD9E8]);
    sub_24E8C5718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220AA8);
  }

  return result;
}

unint64_t sub_24E8C5718()
{
  result = qword_27F220AB8;
  if (!qword_27F220AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220AB8);
  }

  return result;
}

uint64_t sub_24E8C579C()
{

  return swift_deallocObject();
}

double sub_24E8C57E8@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  sub_24E60169C((v3 + 2), (a1 + 2), &qword_27F2129B0, &unk_24F945320);
  *a1 = v5;
  a1[1] = v4;

  return result;
}

uint64_t sub_24E8C584C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24E8C4578();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E8C58DC()
{
  result = qword_27F220AF0;
  if (!qword_27F220AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220AF8, &qword_24F964B40);
    sub_24E8C55A8();
    sub_24E8C5718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220AF0);
  }

  return result;
}

unint64_t sub_24E8C5984()
{
  result = qword_27F220B20;
  if (!qword_27F220B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220B18, &unk_24F964BB0);
    sub_24E8C5A10();
    sub_24E8C5A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220B20);
  }

  return result;
}

unint64_t sub_24E8C5A10()
{
  result = qword_27F223400;
  if (!qword_27F223400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2233E0, &qword_24FA02720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223400);
  }

  return result;
}

unint64_t sub_24E8C5A8C()
{
  result = qword_27F220B28;
  if (!qword_27F220B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220B30, &qword_24F964BC0);
    sub_24E8C5B18();
    sub_24E62FBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220B28);
  }

  return result;
}

unint64_t sub_24E8C5B18()
{
  result = qword_27F220B38;
  if (!qword_27F220B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220B40, &qword_24F964BC8);
    sub_24E62FBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220B38);
  }

  return result;
}

uint64_t sub_24E8C5B9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B08, &unk_24F964BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24E8C5C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_24E5FD138(a1, a2, a3 & 1);
  }

  else
  {
    sub_24E8C5E68(a1, a2, a3, a4, a5, a6, BYTE3(a6) & 1, sub_24E8C5C94, sub_24E8C5CD0);
  }
}

double sub_24E8C5C94(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_24E5FD138(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_24E8C5CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_24E5FD138(a1, a2, a3 & 1);
  }

  else
  {

    return sub_24E8C5D30(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_24E8C5D30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_24E5FD138(a1, a2, a3 & 1);
}

uint64_t sub_24E8C5D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B08, &unk_24F964BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E8C5DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    return sub_24E8C5E68(a1, a2, a3, a4, a5, a6, BYTE3(a6) & 1, sub_24E8C5E88, sub_24E8C5EC4);
  }

  sub_24E600B40(a1, a2, a3 & 1);
}

uint64_t sub_24E8C5E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  if (a7)
  {
    return a9(a1, a2, a3, a4, a5, a6, WORD1(a6) & 1);
  }

  else
  {
    return a8(a1, a2, a3, a4, a5 & 1, a6);
  }
}

uint64_t sub_24E8C5E88(uint64_t a1, uint64_t a2, char a3)
{
  sub_24E600B40(a1, a2, a3 & 1);
}

uint64_t sub_24E8C5EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_24E600B40(a1, a2, a3 & 1);
  }

  else
  {

    return sub_24E8C5F24(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_24E8C5F24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_24E600B40(a1, a2, a3 & 1);
}

uint64_t ChallengeScoreboardShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  type metadata accessor for FriendsDataIntent(0);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = *(type metadata accessor for Player(0) - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  updated = type metadata accessor for ChallengesUpdateNotifier(0);
  v9 = swift_task_alloc();
  *(v3 + 224) = v9;
  *v9 = v3;
  v9[1] = sub_24E8C6210;

  return MEMORY[0x28217F228](v3 + 96, updated, updated);
}

uint64_t sub_24E8C6210()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24E8C6AFC;
  }

  else
  {
    v2 = sub_24E8C6324;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8C6324()
{
  v0[30] = v0[12];
  v0[31] = sub_24F92B7F8();
  v0[32] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E8C63C4, v2, v1);
}

uint64_t sub_24E8C63C4()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 264) = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_24E8C644C, 0, 0);
}

uint64_t sub_24E8C644C(uint64_t a1)
{
  *(v1 + 272) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E8C64D8, v3, v2);
}

uint64_t sub_24E8C64D8()
{
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[24];

  swift_getKeyPath();
  v0[14] = v1;
  sub_24E8C93CC(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24E8C9414(v1 + v4, v2, type metadata accessor for Player);

  sub_24E8C9414(v2, v3, type metadata accessor for Player);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_24E8C6670;
  v6 = v0[24];
  v7 = v0[16];

  return sub_24E6480C8(v6, v7);
}

uint64_t sub_24E8C6670(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v4 = sub_24E8C6BA4;
  }

  else
  {
    v4 = sub_24E8C6784;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E8C6784()
{
  v1 = v0;
  v2 = v0[36];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[25];
    v31 = v0[26];
    v32 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v3, 0);
    v5 = v32;
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    do
    {
      v8 = v1;
      v9 = v1[26];
      sub_24E8C9414(v6, v9, type metadata accessor for Player);
      v10 = *v9;
      v11 = *(v31 + 8);

      sub_24E8C947C(v9, type metadata accessor for Player);
      v13 = *(v32 + 16);
      v12 = *(v32 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24F4578E0((v12 > 1), v13 + 1, 1);
      }

      *(v32 + 16) = v13 + 1;
      v14 = v32 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v6 += v7;
      --v3;
      v1 = v8;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v15 = v1[30];
  v16 = v1[27];
  v30 = v1[24];
  v17 = v1[21];
  v28 = v1[22];
  v18 = v1[19];
  v26 = v1[23];
  v27 = v1[20];
  v19 = v1[18];
  v25 = v1[17];
  v20 = v1[16];
  v29 = v1[15];
  v21 = swift_task_alloc();
  v21[2] = v1 + 2;
  v21[3] = v15;
  v21[4] = v16;
  v21[5] = v5;
  v21[6] = v20;
  type metadata accessor for GSKShelf(0);
  (*(v19 + 104))(v18, *MEMORY[0x277D85778], v25);
  sub_24F92B928();

  (*(v17 + 16))(v28, v26, v27);
  sub_24E613678();
  sub_24F9280F8();

  (*(v17 + 8))(v26, v27);
  sub_24E8C947C(v30, type metadata accessor for FriendsDataIntent);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v22 - 8) + 56))(v29, 0, 1, v22);
  sub_24E8C947C(v16, type metadata accessor for Player);

  v23 = v1[1];

  return v23();
}

uint64_t sub_24E8C6AFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E8C6BA4()
{
  v1 = v0[27];
  v2 = v0[24];

  sub_24E8C947C(v2, type metadata accessor for FriendsDataIntent);
  sub_24E8C947C(v1, type metadata accessor for Player);

  v3 = v0[1];

  return v3();
}

double sub_24E8C6C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a5;
  v49 = a6;
  v44 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v46 = *(v9 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v39 - v10;
  v11 = type metadata accessor for Player(0);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - v14;
  v41 = &v39 - v14;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_24F92C888();
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);

  v51 = v16;
  v52 = v17;
  MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA48B30);
  v18 = v51;
  v19 = v52;
  v43 = v51;
  v20 = swift_allocObject();
  v42 = a3;
  *(v20 + 16) = a3;
  v21 = *(a2 + 16);
  *(v20 + 24) = *a2;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a2 + 32);
  *(v20 + 72) = *(a2 + 48);
  *(v20 + 80) = v18;
  v40 = v19;
  *(v20 + 88) = v19;

  sub_24E8C89BC(a2, &v51);

  v39 = v9;
  v22 = v44;
  sub_24F92B898();
  v23 = sub_24F92B858();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = a4;
  v25 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E8C9414(v24, v25, type metadata accessor for Player);
  v26 = v46;
  (*(v46 + 16))(v50, v22, v9);
  v27 = (*(v45 + 80) + 88) & ~*(v45 + 80);
  v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v26 + 80) + v29 + 8) & ~*(v26 + 80);
  v31 = (v47 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v33 = *(a2 + 16);
  *(v32 + 32) = *a2;
  *(v32 + 48) = v33;
  *(v32 + 64) = *(a2 + 32);
  *(v32 + 80) = *(a2 + 48);
  sub_24E61C0A8(v25, v32 + v27);
  *(v32 + v28) = v48;
  v34 = v50;
  *(v32 + v29) = v49;
  (*(v26 + 32))(v32 + v30, v34, v39);
  v35 = v43;
  *(v32 + v31) = v42;
  v36 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  v37 = v40;
  *v36 = v35;
  v36[1] = v37;

  sub_24E8C89BC(a2, &v51);

  sub_24F1D3DA4(0, 0, v41, &unk_24F964CF8, v32);

  return result;
}

double sub_24E8C70B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-v10 - 8];
  v12 = sub_24F92B858();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a2;
  v14 = *(a3 + 16);
  *(v13 + 40) = *a3;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a3 + 32);
  *(v13 + 88) = *(a3 + 48);
  *(v13 + 96) = a4;
  *(v13 + 104) = a5;

  sub_24E8C89BC(a3, v17);

  sub_24EA998B8(0, 0, v11, &unk_24F964D28, v13);

  return result;
}

uint64_t sub_24E8C720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a6;
  v8 = *(a5 + 16);
  v9 = *(a5 + 24);
  v7[4] = a7;
  v7[5] = v8;
  v7[6] = v9;
  return MEMORY[0x2822009F8](sub_24E8C7238, a4, 0);
}

uint64_t sub_24E8C7238()
{
  sub_24F5E89C8(v0[5], v0[6], v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24E8C72A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 216) = v18;
  *(v8 + 200) = v17;
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 168) = a5;
  *(v8 + 176) = a6;
  *(v8 + 160) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B78, &unk_24F964D00);
  *(v8 + 224) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B80, &qword_24F9F6470);
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B88, &unk_24F964D10);
  *(v8 + 256) = v11;
  *(v8 + 264) = *(v11 - 8);
  *(v8 + 272) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  *(v8 + 280) = v12;
  *(v8 + 288) = *(v12 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = type metadata accessor for ChallengeScoreboardShelfConstructionIntent(0);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 96) = *a4;
  v14 = *(a4 + 48);
  *(v8 + 344) = v13;
  *(v8 + 352) = v14;
  *(v8 + 144) = v14;

  return MEMORY[0x2822009F8](sub_24E8C7524, 0, 0);
}

uint64_t sub_24E8C7524()
{
  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[22];
  v5 = v0[20];
  sub_24E8C9414(v0[21], v2 + v3[5], type metadata accessor for Player);
  *v2 = *v5;
  v6 = v2 + v3[6];
  v7 = *(v5 + 32);
  v6[8] = *(v5 + 40);
  *v6 = v7;
  *(v2 + v3[7]) = v1;
  *(v2 + v3[8]) = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v0[45] = v8;
  sub_24E614DB0((v0 + 12), (v0 + 14));
  sub_24E8C935C((v0 + 18), (v0 + 19));

  v9 = swift_task_alloc();
  v0[46] = v9;
  *v9 = v0;
  v9[1] = sub_24E8C767C;

  return MEMORY[0x28217F228](v0 + 2, v8, v8);
}

uint64_t sub_24E8C767C()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_24E8C79A8;
  }

  else
  {
    v2 = sub_24E8C7790;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8C7790()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[48] = v3;
  v4 = sub_24E8C93CC(&qword_27F21D548, type metadata accessor for ChallengeScoreboardShelfConstructionIntent, &protocol conformance descriptor for ChallengeScoreboardShelfConstructionIntent);
  v0[49] = v4;
  *v3 = v0;
  v3[1] = sub_24E8C7894;
  v5 = v0[43];
  v6 = v0[40];
  v7 = v0[38];
  v8 = v0[23];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24E8C7894()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_24E8C7D28;
  }

  else
  {
    v2 = sub_24E8C7AA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8C79A8(__n128 a1)
{
  sub_24E8C947C(*(v1 + 320), type metadata accessor for ChallengeScoreboardShelfConstructionIntent);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24E8C7AA0()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[40];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v7 = v0[25];
  v8 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24E8C947C(v3, type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
  sub_24E8C9414(v2, v1, type metadata accessor for GSKShelf);
  v0[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  v9 = *(v5 + 8);
  v0[52] = v9;
  v0[53] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  v0[54] = *(v8 + 16);
  v0[55] = *(v8 + 24);

  return MEMORY[0x2822009F8](sub_24E8C7BD8, v7, 0);
}

uint64_t sub_24E8C7BD8()
{
  sub_24F5E8450(v0[54], v0[55], v0[26], v0[27]);

  return MEMORY[0x2822009F8](sub_24E8C7C4C, 0, 0);
}

uint64_t sub_24E8C7C4C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[56] = v4;
  *v4 = v0;
  v4[1] = sub_24E8C7E28;
  v5 = v0[32];
  v6 = v0[28];

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_24E8C7D28()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24E8C947C(v0[40], type metadata accessor for ChallengeScoreboardShelfConstructionIntent);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E8C7E28()
{

  return MEMORY[0x2822009F8](sub_24E8C7F24, 0, 0);
}

uint64_t sub_24E8C7F24()
{
  v1 = *(v0 + 224);
  v2 = type metadata accessor for ChallengeDetail(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 344);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_24E8C947C(v3, type metadata accessor for GSKShelf);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 304);
    v6 = *(v0 + 312);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = v1 + *(v2 + 32);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v1 + *(v2 + 60));

    sub_24E8C947C(v1, type metadata accessor for ChallengeDetail);
    sub_24E8C9414(v9, v6 + v7[5], type metadata accessor for Player);
    *v6 = *(v0 + 96);
    v14 = v6 + v7[6];
    *v14 = v11;
    v14[8] = v12;
    *(v6 + v7[7]) = v13;
    *(v6 + v7[8]) = v8;
    sub_24E614DB0(v0 + 96, v0 + 128);

    v15 = swift_task_alloc();
    *(v0 + 456) = v15;
    *v15 = v0;
    v15[1] = sub_24E8C81B0;
    v16 = *(v0 + 360);

    return MEMORY[0x28217F228](v0 + 56, v16, v16);
  }
}

uint64_t sub_24E8C81B0()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_24E8C84A0;
  }

  else
  {
    v2 = sub_24E8C82C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8C82C4()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[59] = v3;
  *v3 = v0;
  v3[1] = sub_24E8C838C;
  v4 = v0[49];
  v5 = v0[41];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[23];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24E8C838C()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_24E8C8738;
  }

  else
  {
    v2 = sub_24E8C85D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8C84A0(__n128 a1)
{
  v2 = v1[43];
  v4 = v1[33];
  v3 = v1[34];
  v5 = v1[32];
  sub_24E8C947C(v1[39], type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
  (*(v4 + 8))(v3, v5);
  sub_24E8C947C(v2, type metadata accessor for GSKShelf);

  v6 = v1[1];

  return v6();
}

uint64_t sub_24E8C85D8()
{
  v1 = v0[52];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v5 = v0[37];
  v6 = v0[35];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_24E8C947C(v4, type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
  sub_24E8C9414(v3, v2, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v1(v5, v6);
  sub_24E8C947C(v3, type metadata accessor for GSKShelf);
  v7 = swift_task_alloc();
  v0[56] = v7;
  *v7 = v0;
  v7[1] = sub_24E8C7E28;
  v8 = v0[32];
  v9 = v0[28];

  return MEMORY[0x2822003E8](v9, 0, 0, v8);
}

uint64_t sub_24E8C8738()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[43];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  sub_24E8C947C(v0[39], type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24E8C947C(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24E8C8878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengeScoreboardShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24E8C8954()
{

  return swift_deallocObject();
}

uint64_t sub_24E8C8A18()
{
  v1 = type metadata accessor for Player(0);
  v2 = *(*(v1 - 1) + 80);
  v36 = *(*(v1 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v4 = *(v3 - 8);
  v35 = *(v4 + 80);
  swift_unknownObjectRelease();

  v37 = (v2 + 88) & ~v2;
  v5 = v0 + v37;

  v6 = v1[6];
  v7 = sub_24F9289E8();
  v38 = *(v7 - 8);
  v39 = v7;
  v34 = *(v38 + 8);
  v34(v0 + v37 + v6);

  if (*(v0 + v37 + v1[9] + 8) != 1)
  {
  }

  v8 = v5 + v1[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v32 = v4;
    v31 = v3;
    v10 = type metadata accessor for CallProviderConversationHandle(0);
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v38 + 48))(v8 + v12, 1, v39))
      {
        (v34)(v8 + v12, v39);
      }
    }

    v13 = v8 + *(v9 + 20);
    v14 = v11(v13, 1, v10);
    v3 = v31;
    if (!v14)
    {

      v15 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v38 + 48))(v13 + v15, 1, v39))
      {
        (v34)(v13 + v15, v39);
      }
    }

    v4 = v32;
  }

  if (*(v5 + v1[15] + 8))
  {
  }

  v16 = v5 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {
    v33 = v4;

    v18 = type metadata accessor for Game(0);
    (v34)(v16 + v18[18], v39);
    v19 = v18[19];
    if (!(*(v38 + 48))(v16 + v19, 1, v39))
    {
      (v34)(v16 + v19, v39);
    }

    v20 = v18[21];
    v21 = sub_24F920818();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v4 = v33;
  }

  v23 = v5 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
  {

    v25 = type metadata accessor for Game(0);
    (v34)(v23 + v25[18], v39);
    v26 = v25[19];
    if (!(*(v38 + 48))(v23 + v26, 1, v39))
    {
      (v34)(v23 + v26, v39);
    }

    v27 = v25[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }
  }

  (*(v4 + 8))(v0 + ((((((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v35 + 8) & ~v35), v3);

  return swift_deallocObject();
}

uint64_t sub_24E8C917C(uint64_t a1)
{
  v3 = *(type metadata accessor for Player(0) - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v14 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24E614970;

  return sub_24E8C72A0(a1, v10, v11, v1 + 32, v1 + v4, v14, v9, v1 + v8);
}

uint64_t sub_24E8C935C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90, &unk_24FA0D950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E8C93CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E8C9414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8C947C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E8C94DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E8C953C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[12];
  v8 = v1[13];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E8C720C(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_24E8C9624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F91F648();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24E8C9728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Player(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F91F648();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for PlayActivity(uint64_t a1)
{
  result = qword_27F220B98;
  if (!qword_27F220B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E8C9870(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    result = sub_24F91F648();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E8C98F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220BB8, &qword_24F964DD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8CA26C();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24E8CA320(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for PlayActivity(0);
    v8[14] = 1;
    sub_24F91F648();
    sub_24E8CA320(&qword_27F21BB08, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E8C9AF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_24F91F648();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v25);
  v26 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220BA8, &qword_24F964DD0);
  v23 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PlayActivity(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8CA26C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v12 = v11;
  v13 = v23;
  v14 = v24;
  v29 = 0;
  sub_24E8CA320(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v15 = v26;
  sub_24F92CC68();
  sub_24E61C0A8(v15, v12);
  v28 = 1;
  sub_24E8CA320(&qword_27F21B778, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v16 = v5;
  v17 = v14;
  v18 = v27;
  sub_24F92CC68();
  (*(v13 + 8))(v8, v18);
  (*(v21 + 32))(v12 + *(v9 + 20), v16, v17);
  sub_24E8CA368(v12, v22, type metadata accessor for PlayActivity);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_24E8CA2C0(v12, type metadata accessor for PlayActivity);
}

uint64_t sub_24E8C9ED4()
{
  if (*v0)
  {
    return 0x79616C507473616CLL;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24E8C9F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEC00000074416465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E8C9FF0(uint64_t a1)
{
  v2 = sub_24E8CA26C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E8CA02C(uint64_t a1)
{
  v2 = sub_24E8CA26C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E8CA098@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E8CA320(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E8CA368(v4, boxed_opaque_existential_1, type metadata accessor for Player);
  strcpy((inited + 88), "lastPlayedAt");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v8 = *(a1 + 20);
  v9 = sub_24F91F648();
  v10 = MEMORY[0x277D21908];
  *(inited + 128) = v9;
  *(inited + 136) = v10;
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  (*(*(v9 - 8) + 16))(v11, v4 + v8, v9);
  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v12;
  return result;
}

unint64_t sub_24E8CA26C()
{
  result = qword_27F220BB0;
  if (!qword_27F220BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220BB0);
  }

  return result;
}

uint64_t sub_24E8CA2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E8CA320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E8CA368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E8CA3E4()
{
  result = qword_27F220BC0;
  if (!qword_27F220BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220BC0);
  }

  return result;
}

unint64_t sub_24E8CA43C()
{
  result = qword_27F220BC8;
  if (!qword_27F220BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220BC8);
  }

  return result;
}

unint64_t sub_24E8CA494()
{
  result = qword_27F220BD0;
  if (!qword_27F220BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220BD0);
  }

  return result;
}

uint64_t sub_24E8CA4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v13 = type metadata accessor for CardLargeView(0, a4, a5, a6);
  (*(*(a4 - 8) + 32))(a7 + *(v13 + 44), a2, a4);
  v14 = *(v13 + 48);
  v15 = sub_24F923E98();
  (*(*(v15 - 8) + 32))(a7 + v14, a3, v15);
  return sub_24E8CA62C(sub_24E8CA6B0, 0);
}

uint64_t sub_24E8CA62C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for CardSafeArea(0);

  return sub_24F9233C8();
}

uint64_t sub_24E8CA6B0()
{
  type metadata accessor for CardSafeArea(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_24F91FDB8();
  return v0;
}

void sub_24E8CA700(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v3 - 8);
  v122 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a1;
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  type metadata accessor for CardLargeView.TopAccessory(255, v6, v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720, qword_24F9A8F70);
  sub_24F924038();
  v125 = v6;
  type metadata accessor for CardLargeView.Footer(255, v6, v5, v7);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2195B8, &qword_24F94C4A0);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  v120 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_24F927108();
  v121 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v118 = &v74 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40, &qword_24F984790);
  v116 = v7;
  v124 = v5;
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  type metadata accessor for CardLargeView.GradientBlurView(255, v6, v5, v7);
  sub_24F924038();
  sub_24F92C4A8();
  v156 = swift_getWitnessTable();
  v157 = MEMORY[0x277CE0770];
  v155 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  v113 = sub_24F927808();
  v114 = swift_getWitnessTable();
  sub_24F924E08();
  v108 = v8;
  v10 = sub_24F924038();
  v117 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v111 = &v74 - v11;
  type metadata accessor for CardHeightViewModifier(255);
  v110 = v10;
  v12 = sub_24F924038();
  v115 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v112 = &v74 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040, &unk_24F940690);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0, &unk_24F967B30);
  v14 = sub_24F924038();
  v15 = swift_getWitnessTable();
  v107 = v15;
  v16 = swift_getWitnessTable();
  v153 = v15;
  v154 = v16;
  v17 = swift_getWitnessTable();
  v109 = v17;
  v18 = sub_24E8D40DC(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier, &unk_24FA033B0);
  v151 = v17;
  v152 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_24E6A4C1C();
  v21 = sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
  v149 = v19;
  v150 = v21;
  v22 = v19;
  v23 = swift_getWitnessTable();
  v24 = sub_24E602068(&qword_27F217098, &qword_27F2170A0, &unk_24F967B30, &unk_24FA0D448);
  v147 = v23;
  v148 = v24;
  v25 = swift_getWitnessTable();
  v99 = v22;
  v100 = v12;
  v141 = v12;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v14;
  v144 = v22;
  v145 = v20;
  v146 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = *(OpaqueTypeMetadata2 - 8);
  v104 = OpaqueTypeMetadata2;
  v105 = v27;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v102 = &v74 - v28;
  v29 = sub_24F924038();
  v106 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v101 = &v74 - v30;
  v141 = v12;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v14;
  v144 = v22;
  v145 = v20;
  v146 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = OpaqueTypeConformance2;
  v32 = sub_24E6BC1C8();
  v139 = OpaqueTypeConformance2;
  v140 = v32;
  v33 = swift_getWitnessTable();
  v141 = v29;
  v142 = v33;
  v34 = v29;
  v95 = v29;
  v96 = v33;
  v35 = v33;
  v36 = swift_getOpaqueTypeMetadata2();
  v103 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v97 = &v74 - v37;
  type metadata accessor for ZoomableViewModifier(255);
  v38 = sub_24F924038();
  v141 = v34;
  v142 = v35;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_24E8D40DC(&qword_27F217130, type metadata accessor for ZoomableViewModifier, &unk_24F9A0430);
  v137 = v39;
  v138 = v40;
  v41 = swift_getWitnessTable();
  v141 = v36;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v38;
  v144 = v39;
  v145 = v20;
  v146 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v141 = v36;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v38;
  v144 = v39;
  v145 = v20;
  v146 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v83 = v36;
  v84 = v20;
  v141 = v36;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v42;
  v144 = v39;
  v44 = v42;
  v80 = v42;
  v81 = v43;
  v85 = v39;
  v145 = v20;
  v146 = v43;
  v45 = v43;
  v46 = swift_getOpaqueTypeMetadata2();
  v90 = v46;
  v94 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v86 = &v74 - v47;
  v48 = type metadata accessor for CardSafeArea(255);
  v89 = v48;
  v141 = v36;
  v142 = &type metadata for GameOverlayViewPredicate;
  v143 = v44;
  v144 = v39;
  v145 = v20;
  v146 = v45;
  v49 = swift_getOpaqueTypeConformance2();
  v88 = v49;
  v87 = sub_24E8D40DC(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  v141 = v46;
  v142 = v48;
  v143 = v49;
  v144 = v87;
  v91 = MEMORY[0x277CE0C50];
  v50 = swift_getOpaqueTypeMetadata2();
  v51 = *(v50 - 8);
  v92 = v50;
  v93 = v51;
  MEMORY[0x28223BE20](v50);
  v79 = &v74 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v82 = &v74 - v54;
  v55 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v74 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v58);
  v60 = v127;
  v61 = *(v126 + 12);
  v75 = *(v126 + 11);
  v76 = v61;
  v62 = v116;
  v77 = *(v116 + 56);
  v78 = &v74 - v63;
  v64 = &v74 - v63;
  v65 = v124;
  v77(v127 + v75, 3, v127 + v61, v124, v116, v59);
  v66 = v125;
  v133 = v125;
  v134 = v65;
  v135 = v62;
  v136 = v60;
  sub_24F924C88();
  v67 = v118;
  sub_24F9270F8();
  v128 = v66;
  v129 = v65;
  v130 = v62;
  v131 = v60;
  v132 = v64;
  sub_24F927618();
  v68 = v111;
  v69 = v108;
  sub_24F926088();
  (*(v121 + 1))(v67, v69);
  (v77)(v60 + v75, 3, v60 + v76, v65, v62);
  v70 = v122;
  sub_24E8D2DD8(v57, v122);
  v121 = type metadata accessor for CardLayoutMetrics;
  sub_24E8D413C(v57, type metadata accessor for CardLayoutMetrics);
  v71 = v112;
  v72 = v110;
  sub_24F4E8DBC(v70, v110, v109, v112);
  sub_24E8D413C(v70, type metadata accessor for CardLayoutMetrics.CardHeight);
  (*(v117 + 8))(v68, v72);
  v73 = v100;
  sub_24E739274(v100);
  (*(v115 + 8))(v71, v73);
  sub_24E739404();
}

uint64_t sub_24E8CB42C()
{
  (*(*(v0 + 248) + 8))(v2, v1);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(v0 + 424);
  v11 = *(v0 + 184);
  v12 = *(v0 + 168);
  sub_24E739418(v10 + v4, v12, v7, *(v0 + 176), AssociatedConformanceWitness);
  (*(*(v0 + 256) + 8))(v5, v12);
  *(v0 + 448) = v7;
  *(v0 + 456) = v8;
  *(v0 + 464) = v3;
  *(v0 + 472) = v10;
  swift_checkMetadataState();
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);
  sub_24F926B08();
  (*(*(v0 + 232) + 8))(v11, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68, &unk_24F964F90);
  sub_24F9233D8();
  v15 = *(v0 + 40);
  v17 = *(v0 + 120);
  v16 = *(v0 + 128);
  v19 = *(v0 + 104);
  v18 = *(v0 + 112);
  sub_24F9261A8();

  (*(*(v0 + 160) + 8))(v13, v16);
  *(v6 - 224) = v16;
  *(v6 - 216) = v17;
  *(v6 - 208) = v18;
  *(v6 - 200) = v19;
  swift_getOpaqueTypeConformance2();
  v20 = *(v0 + 64);
  v21 = *(v0 + 144);
  sub_24E7896B8();
  v22 = *(*(v0 + 152) + 8);
  v22(v15, v21);
  sub_24E7896B8();
  v22(v20, v21);
  return sub_24E8D413C(*(v0 + 32), *(v0 + 376));
}

uint64_t sub_24E8CB650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a1;
  v109 = a5;
  v102 = type metadata accessor for CardLargeView.Footer(0, a2, a3, a4);
  v108 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v79 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720, qword_24F9A8F70);
  v103 = sub_24F924038();
  v106 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v79 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2195B8, &qword_24F94C4A0);
  v105 = sub_24F924038();
  v107 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v79 - v12;
  v13 = a4;
  v110 = a4;
  v14 = type metadata accessor for CardLargeView(0, a2, a3, a4);
  v122 = *(v14 - 8);
  v116 = *(v122 + 64);
  MEMORY[0x28223BE20](v14);
  v95 = &v79 - v15;
  v115 = sub_24F923E98();
  v120 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v112 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *(a3 - 8);
  MEMORY[0x28223BE20](v17);
  v111 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2;
  v20 = *(a2 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CardLargeView.TopAccessory(0, v19, a3, v13);
  v98 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v79 - v25;
  v97 = &v79 - v25;
  v114 = sub_24F924038();
  v119 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v118 = &v79 - v30;
  v93 = *(v14 + 44);
  v31 = *(v20 + 16);
  v92 = v20 + 16;
  v94 = v31;
  v32 = v117;
  v82 = v23;
  (v31)(v23, v117 + v93, v19, v29);
  v33 = *(v121 + 16);
  v121 += 16;
  v91 = v33;
  v34 = v111;
  v35 = a3;
  v33(v111, v32, a3);
  v89 = *(v14 + 48);
  v36 = *(v120 + 16);
  v120 += 16;
  v90 = v36;
  v37 = v112;
  v36(v112, v32 + v89, v115);
  v80 = v35;
  v38 = v110;
  sub_24E8CC48C(v23, v34, v37, v19, v35, v110, type metadata accessor for CardLargeView.TopAccessory, v26);
  v39 = v122;
  v40 = *(v122 + 16);
  v87 = v122 + 16;
  v88 = v40;
  v41 = v95;
  v40(v95, v32, v14);
  v86 = *(v39 + 80);
  v42 = (v86 + 40) & ~v86;
  v83 = v42;
  v43 = swift_allocObject();
  *(v43 + 2) = v19;
  *(v43 + 3) = v35;
  *(v43 + 4) = v38;
  v44 = *(v39 + 32);
  v122 = v39 + 32;
  v85 = v44;
  v45 = v41;
  v44(&v43[v42], v41, v14);
  WitnessTable = swift_getWitnessTable();
  v84 = sub_24E7DDA4C();
  v47 = v113;
  v48 = v97;
  sub_24F9264C8();

  v98[1](v48, v24);
  v81 = sub_24E602068(&qword_27F21A718, &qword_27F21A720, qword_24F9A8F70, MEMORY[0x277CE06A8]);
  v129[7] = WitnessTable;
  v129[8] = v81;
  v49 = v114;
  v97 = swift_getWitnessTable();
  sub_24E7896B8();
  v50 = *(v119 + 8);
  v96 = v119 + 8;
  v98 = v50;
  (v50)(v47, v49);
  v51 = v117;
  v52 = v82;
  v53 = v19;
  v94(v82, v117 + v93, v19);
  v54 = v111;
  v55 = v80;
  v91(v111, v51, v80);
  v56 = v112;
  v90(v112, v51 + v89, v115);
  v57 = v99;
  v58 = v56;
  v59 = v110;
  sub_24E8CC48C(v52, v54, v58, v53, v55, v110, type metadata accessor for CardLargeView.Footer, v99);
  v88(v45, v51, v14);
  v60 = v83;
  v61 = swift_allocObject();
  *(v61 + 2) = v53;
  *(v61 + 3) = v55;
  *(v61 + 4) = v59;
  v85(&v61[v60], v45, v14);
  v62 = v102;
  v63 = swift_getWitnessTable();
  v64 = v100;
  sub_24F9264C8();

  (*(v108 + 8))(v57, v62);
  v129[5] = v63;
  v129[6] = v81;
  v65 = v103;
  v66 = swift_getWitnessTable();
  v67 = v101;
  sub_24F9269A8();
  (*(v106 + 8))(v64, v65);
  v68 = sub_24E602068(&qword_27F2195B0, &qword_27F2195B8, &qword_24F94C4A0, MEMORY[0x277CE04A0]);
  v129[3] = v66;
  v129[4] = v68;
  v69 = v105;
  v70 = swift_getWitnessTable();
  v71 = v104;
  sub_24E7896B8();
  v72 = v107;
  v73 = *(v107 + 8);
  v73(v67, v69);
  v74 = v113;
  v75 = v118;
  v76 = v114;
  (*(v119 + 16))(v113, v118, v114);
  v127 = 0;
  v128 = 1;
  v129[0] = v74;
  v129[1] = &v127;
  (*(v72 + 16))(v67, v71, v69);
  v129[2] = v67;
  v126[0] = v76;
  v126[1] = MEMORY[0x277CE1180];
  v126[2] = v69;
  v123 = v97;
  v124 = MEMORY[0x277CE1170];
  v125 = v70;
  sub_24F57BA64(v129, 3uLL, v126);
  v73(v71, v69);
  v77 = v98;
  (v98)(v75, v76);
  v73(v67, v69);
  return (v77)(v74, v76);
}

void sub_24E8CC334(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  type metadata accessor for CardLargeView(0, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68, &unk_24F964F90);
  sub_24F9233D8();
  swift_getKeyPath();
  sub_24E8D40DC(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  *(v6 + 16) = v5;
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24E8CC48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v15 = a7(0, a4, a5, a6);
  (*(*(a5 - 8) + 32))(a8 + *(v15 + 44), a2, a5);
  v16 = *(v15 + 48);
  v17 = sub_24F923E98();
  v18 = *(*(v17 - 8) + 32);

  return v18(a8 + v16, a3, v17);
}

void sub_24E8CC5B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  type metadata accessor for CardLargeView(0, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68, &unk_24F964F90);
  sub_24F9233D8();
  swift_getKeyPath();
  sub_24E8D40DC(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  *(v6 + 32) = v5;
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24E8CC708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a3;
  v60 = a2;
  v65 = a1;
  v62 = a6;
  v63 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58 = &v44 - v10;
  type metadata accessor for CardLargeView.GradientBlurView(255, a3, a4, a5);
  sub_24F924038();
  v11 = sub_24F92C4A8();
  WitnessTable = swift_getWitnessTable();
  v81 = MEMORY[0x277CE0770];
  v59 = MEMORY[0x277CDFAD8];
  v79 = swift_getWitnessTable();
  v53 = v11;
  v54 = swift_getWitnessTable();
  v55 = sub_24F9242F8();
  v44 = AssociatedTypeWitness;
  v56 = sub_24F924038();
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  MEMORY[0x28223BE20](v15);
  v16 = sub_24F927598();
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v45 = &v44 - v20;
  v21 = sub_24E6A4C1C();
  sub_24F924B68();
  v22 = v50;
  v70 = v50;
  v71 = a4;
  v72 = v63;
  v73 = v65;
  v77 = &type metadata for GameOverlayViewPredicate;
  v78 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = a4;
  v25 = v44;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = v25;
  sub_24F927578();
  v76[4] = OpaqueTypeConformance2;
  v76[5] = AssociatedConformanceWitness;
  v76[6] = MEMORY[0x277CE1410];
  v46 = v16;
  v47 = swift_getWitnessTable();
  sub_24E7896B8();
  v48 = *(v64 + 8);
  v49 = v64 + 8;
  v48(v18, v16);
  v28 = v22;
  v29 = v22;
  v30 = v63;
  v31 = type metadata accessor for CardLargeView(0, v29, v24, v63);
  v32 = v58;
  (*(v30 + 72))(2, v65 + *(v31 + 44), 3, v65 + *(v31 + 48), v24, v30);
  v66 = v28;
  v67 = v24;
  v68 = v30;
  v69 = v60;
  sub_24F927618();
  v33 = v51;
  sub_24F926A08();
  (*(v61 + 8))(v32, v27);
  v34 = swift_getWitnessTable();
  v76[2] = AssociatedConformanceWitness;
  v76[3] = v34;
  v35 = v56;
  v36 = swift_getWitnessTable();
  v37 = v52;
  sub_24E7896B8();
  v38 = v57;
  v39 = *(v57 + 8);
  v39(v33, v35);
  v40 = v45;
  v41 = v46;
  (*(v64 + 16))(v18, v45, v46);
  v77 = v18;
  (*(v38 + 16))(v33, v37, v35);
  v78 = v33;
  v76[0] = v41;
  v76[1] = v35;
  v74 = v47;
  v75 = v36;
  sub_24F57BA64(&v77, 2uLL, v76);
  v39(v37, v35);
  v42 = v48;
  v48(v40, v41);
  v39(v33, v35);
  return v42(v18, v41);
}

uint64_t sub_24E8CCE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v15 = type metadata accessor for CardLargeView(0, a2, a3, a4);
  (*(a4 + 72))(12, a1 + *(v15 + 44), 3, a1 + *(v15 + 48), a3, a4);
  swift_getAssociatedConformanceWitness();
  sub_24E7896B8();
  v16 = *(v9 + 8);
  v16(v11, AssociatedTypeWitness);
  sub_24E7896B8();
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t sub_24E8CD030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CardLayoutMetrics(0);
  v9 = MEMORY[0x277CE0770];
  if (*(a1 + *(v8 + 52)) == 1)
  {
    if (qword_27F210D28 != -1)
    {
      swift_once();
    }

    sub_24E8CD438(byte_27F39D1B1, v32);
    v10 = type metadata accessor for CardLargeView.GradientBlurView(0, a2, a3, a4);
    WitnessTable = swift_getWitnessTable();
    sub_24F926478();
    (*(*(v10 - 8) + 8))(v32, v10);
    v12 = sub_24F924038();
    v25 = WitnessTable;
    v26 = v9;
    swift_getWitnessTable();
    sub_24E7896B8();
    v13 = *(*(v12 - 8) + 8);
    v13(v34, v12);
    sub_24E7896B8();
    v13(v32, v12);
    v18[2] = v22;
    v18[3] = v23;
    v19 = v24;
    v18[0] = v20;
    v18[1] = v21;
    sub_24E8D5004(v18, v34);
    v14 = sub_24F92C4A8();
    (*(*(v14 - 8) + 8))(v18, v14);
  }

  else
  {
    type metadata accessor for CardLargeView.GradientBlurView(255, a2, a3, a4);
    sub_24F924038();
    memset(v32, 0, sizeof(v32));
    v33 = 0;
    v30 = swift_getWitnessTable();
    v31 = v9;
    swift_getWitnessTable();
    sub_24E8D5004(v32, v34);
    v15 = sub_24F92C4A8();
    (*(*(v15 - 8) + 8))(v32, v15);
  }

  type metadata accessor for CardLargeView.GradientBlurView(255, a2, a3, a4);
  sub_24F924038();
  v16 = sub_24F92C4A8();
  v28 = swift_getWitnessTable();
  v29 = v9;
  v27 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(*(v16 - 8) + 8))(v34, v16);
}

uint64_t sub_24E8CD438@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v11 = 0;
  sub_24F926F28();
  v4 = *(&v8 + 1);
  *a2 = v8;
  *(a2 + 8) = v4;
  v5 = 8.0;
  if (a1)
  {
    v5 = 0.0;
  }

  *(a2 + 16) = v5;
  if (a1)
  {
    v6 = sub_24F926C88();
    v9 = MEMORY[0x277CE0F78];
    v10 = MEMORY[0x277CE0F60];
    *&v8 = v6;
  }

  else
  {
    v9 = sub_24F927538();
    v10 = MEMORY[0x277CE1320];
    __swift_allocate_boxed_opaque_existential_1(&v8);
    sub_24F927468();
  }

  result = sub_24E612C80(&v8, a2 + 24);
  *(a2 + 64) = a1 & 1;
  return result;
}

uint64_t sub_24E8CD4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a2;
  v60 = a1;
  v61 = a6;
  v59 = sub_24F924B38();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CardLargeView.TopAccessory(255, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720, qword_24F9A8F70);
  sub_24F924038();
  type metadata accessor for CardLargeView.Footer(255, a3, a4, a5);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2195B8, &qword_24F94C4A0);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40, &qword_24F984790);
  v55 = a5;
  v54 = a4;
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  type metadata accessor for CardLargeView.GradientBlurView(255, a3, a4, a5);
  sub_24F924038();
  sub_24F92C4A8();
  WitnessTable = swift_getWitnessTable();
  v85 = MEMORY[0x277CE0770];
  v83 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  type metadata accessor for CardHeightViewModifier(255);
  v10 = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040, &unk_24F940690);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0, &unk_24F967B30);
  v11 = sub_24F924038();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v81 = v12;
  v82 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_24E8D40DC(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier, &unk_24FA033B0);
  v79 = v14;
  v80 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_24E6A4C1C();
  v18 = sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
  v77 = v16;
  v78 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_24E602068(&qword_27F217098, &qword_27F2170A0, &unk_24F967B30, &unk_24FA0D448);
  v75 = v19;
  v76 = v20;
  v21 = swift_getWitnessTable();
  v69 = v10;
  v70 = &type metadata for GameOverlayViewPredicate;
  v71 = v11;
  v72 = v16;
  v73 = v17;
  v74 = v21;
  v22 = MEMORY[0x277CE0E68];
  swift_getOpaqueTypeMetadata2();
  v23 = sub_24F924038();
  v69 = v10;
  v70 = &type metadata for GameOverlayViewPredicate;
  v71 = v11;
  v72 = v16;
  v73 = v17;
  v74 = v21;
  v53 = v17;
  v50[1] = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_24E6BC1C8();
  v67 = OpaqueTypeConformance2;
  v68 = v25;
  v26 = swift_getWitnessTable();
  v69 = v23;
  v70 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for ZoomableViewModifier(255);
  v28 = OpaqueTypeMetadata2;
  v50[0] = OpaqueTypeMetadata2;
  v29 = sub_24F924038();
  v69 = v23;
  v70 = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_24E8D40DC(&qword_27F217130, type metadata accessor for ZoomableViewModifier, &unk_24F9A0430);
  v65 = v30;
  v66 = v31;
  v52 = v29;
  v51 = swift_getWitnessTable();
  v69 = v28;
  v70 = &type metadata for GameOverlayViewPredicate;
  v71 = v29;
  v72 = v30;
  v73 = v17;
  v74 = v51;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = v50 - v37;
  v39 = *(type metadata accessor for CardLargeView(0, a3, v54, v55) + 44);
  v72 = a3;
  v73 = *(swift_getAssociatedConformanceWitness() + 8);
  v40 = __swift_allocate_boxed_opaque_existential_1(&v69);
  (*(*(a3 - 8) + 16))(v40, v58 + v39, a3);
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v41 = v57;
  v42 = v56;
  v43 = v59;
  (*(v57 + 104))(v56, *MEMORY[0x277CE0118], v59);
  v44 = sub_24F924258();
  v62[3] = v44;
  v62[4] = sub_24E8D40DC(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  (*(v41 + 16))(&boxed_opaque_existential_1->i8[*(v44 + 20)], v42, v43);
  *boxed_opaque_existential_1 = vdupq_n_s64(0x4040000000000000uLL);
  (*(v41 + 8))(v42, v43);
  v46 = swift_checkMetadataState();
  sub_24EDD6F40(v47, &v69, v63, v62, v46);
  sub_24E601704(v63, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v62, &qword_27F2171C8, &unk_24F945310);
  sub_24E601704(&v69, &qword_27F2171D0, &unk_24F980290);
  v69 = v46;
  v70 = &type metadata for GameOverlayViewPredicate;
  v71 = v52;
  v72 = v30;
  v73 = v53;
  v74 = v51;
  swift_getOpaqueTypeConformance2();
  sub_24E7896B8();
  v48 = *(v33 + 8);
  v48(v35, v32);
  sub_24E7896B8();
  return (v48)(v38, v32);
}

double sub_24E8CDEE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  sub_24F926F38();
  return v1;
}

double sub_24E8CDF98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = sub_24F9238D8();
  sub_24F927618();
  sub_24F9242E8();
  *&v32[35] = *&v32[91];
  *&v32[43] = *&v32[99];
  *&v32[51] = *&v32[107];
  *&v32[3] = *&v32[59];
  *&v32[11] = *&v32[67];
  *&v32[19] = *&v32[75];
  *&v32[27] = *&v32[83];
  (*(*(a1 - 8) + 16))(v30, v2, a1);
  v10 = swift_allocObject();
  *(v10 + 16) = *(a1 + 16);
  v11 = v30[0];
  *(v10 + 56) = v30[1];
  v12 = v30[3];
  *(v10 + 72) = v30[2];
  *(v10 + 88) = v12;
  *(v10 + 32) = *(a1 + 32);
  *(v10 + 104) = v31;
  *(v10 + 40) = v11;
  sub_24E8CE2E8(v30);
  v13 = *&v30[0];
  v14 = *(v2 + 16);
  v15 = v14 * 0.0174532925;
  v16 = v14 * 3.14159265 / 180.0;
  v28 = *(&v30[1] + 8);
  v29 = *(v30 + 8);
  sub_24F9278A8();
  v18 = v17;
  v20 = v19;
  sub_24E8CDEE8();
  sub_24E8CDEE8();
  tan(v16);
  sub_24F927618();
  sub_24F9238C8();
  v21 = *&v32[40];
  *(a2 + 74) = *&v32[32];
  *(a2 + 90) = v21;
  *(a2 + 106) = *&v32[48];
  v22 = *&v32[8];
  *(a2 + 10) = *v32;
  *(a2 + 26) = v22;
  v23 = *&v32[24];
  *(a2 + 42) = *&v32[16];
  *a2 = v9;
  *(a2 + 8) = 256;
  v24 = *&v32[55];
  *(a2 + 58) = v23;
  *(a2 + 120) = v24;
  *(a2 + 128) = sub_24E72DE30;
  *(a2 + 136) = 0;
  *(a2 + 144) = sub_24E8D4080;
  *(a2 + 152) = v10;
  *(a2 + 160) = v13;
  v25 = v29;
  *(a2 + 184) = v28;
  *(a2 + 168) = v25;
  *(a2 + 200) = v15;
  *(a2 + 208) = v18;
  *(a2 + 216) = v20;
  v26 = v30[1];
  *(a2 + 224) = v30[0];
  *(a2 + 240) = v26;
  result = *&v30[2];
  *(a2 + 256) = v30[2];
  return result;
}

double sub_24E8CE2E8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  if (v3 == 1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24F93A400;
    sub_24F926C98();
    *(v4 + 32) = sub_24F9273C8();
    *(v4 + 40) = v5;
    sub_24F926C88();
    sub_24F926D08();

    *(v4 + 48) = sub_24F9273C8();
    *(v4 + 56) = v6;
    sub_24F9273D8();
    sub_24F927878();
    sub_24F927898();
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24F93FC20;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    sub_24F926D08();

    *(v7 + 32) = sub_24F9273C8();
    *(v7 + 40) = v8;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    sub_24F926D08();

    *(v7 + 48) = sub_24F9273C8();
    *(v7 + 56) = v9;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    sub_24F926D08();

    *(v7 + 64) = sub_24F9273C8();
    *(v7 + 72) = v10;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    sub_24F926D08();

    *(v7 + 80) = sub_24F9273C8();
    *(v7 + 88) = v11;
    sub_24F9273D8();
    sub_24F927898();
    sub_24F927878();
  }

  sub_24F923BD8();
  *a1 = v13;
  *(a1 + 8) = v14;
  result = *&v15;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_24E8CE51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  v23[1] = sub_24F927808();
  v23[0] = swift_getWitnessTable();
  v6 = sub_24F927018();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = type metadata accessor for CardLayoutMetrics(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  v17 = *(v4 + 56);
  v18 = v5;
  v19 = v5;
  v20 = v16;
  v17(v2, 3, v2 + *(a1 + 48), v19, v13);
  v26 = *(a1 + 16);
  v27 = v18;
  v28 = v20;
  v29 = v2;
  v30 = v15;
  sub_24F927008();
  swift_getWitnessTable();
  sub_24E7896B8();
  v21 = *(v24 + 8);
  v21(v8, v6);
  sub_24E7896B8();
  v21(v11, v6);
  return sub_24E8D413C(v15, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24E8CE7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a2;
  v45 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v35 - v11;
  v13 = sub_24F924038();
  v49 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v44 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v47 = &v35 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v20);
  v48 = &v35 - v21;
  v22 = type metadata accessor for CardLargeView.TopAccessory(0, a3, a4, a5);
  v42 = *(v22 + 44);
  v41 = *(v22 + 48);
  v43 = *(a5 + 72);
  v37 = a4;
  v39 = a5;
  v43(0, a1, 3, a1 + v41, a4, a5);
  v40 = type metadata accessor for CardLayoutMetrics(0);
  v23 = AssociatedTypeWitness;
  v36 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F926A38();
  v25 = *(v50 + 8);
  v50 += 8;
  v38 = v25;
  v25(v12, v23);
  v57[3] = AssociatedConformanceWitness;
  v57[4] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v27 = v19;
  sub_24E7896B8();
  v28 = *(v49 + 8);
  v28(v27, v13);
  v43(1, a1, 3, a1 + v41, v37, v39);
  v29 = v47;
  v30 = v36;
  sub_24F926A38();
  v38(v12, v30);
  sub_24E7896B8();
  v28(v29, v13);
  v31 = v48;
  v32 = *(v49 + 16);
  v32(v29, v48, v13);
  v55 = 0;
  v56 = 1;
  v57[0] = v29;
  v57[1] = &v55;
  v33 = v44;
  v32(v44, v27, v13);
  v57[2] = v33;
  v54[0] = v13;
  v54[1] = MEMORY[0x277CE1180];
  v54[2] = v13;
  v51 = WitnessTable;
  v52 = MEMORY[0x277CE1170];
  v53 = WitnessTable;
  sub_24F57BA64(v57, 3uLL, v54);
  v28(v27, v13);
  v28(v31, v13);
  v28(v33, v13);
  return (v28)(v47, v13);
}

uint64_t sub_24E8CED28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = *(a1 + 32);
  v25 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8, &qword_24F93D5B0);
  sub_24F924038();
  sub_24F924038();
  sub_24F92C4A8();
  sub_24F924038();
  v37 = sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  v38 = sub_24F924E38();
  v39 = MEMORY[0x277CE1180];
  v40 = AssociatedTypeWitness;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924038();
  sub_24F924038();
  type metadata accessor for CardContentBackgroundStyle(255);
  sub_24F927598();
  v34 = sub_24E6A4C1C();
  v35 = sub_24E8D40DC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  v26 = sub_24F927808();
  v24[1] = swift_getWitnessTable();
  v5 = sub_24F927108();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for CardLayoutMetrics(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = *(a1 + 48);
  v18 = v3;
  v19 = *(v3 + 56);
  v20 = v27;
  v21 = v25;
  v19(v27, 3, v27 + v17, v25, v18, v13);
  v29 = *(v16 + 16);
  v30 = v21;
  v31 = v18;
  v32 = v20;
  v33 = v15;
  sub_24F924C88();
  sub_24F9270F8();
  swift_getWitnessTable();
  sub_24E7896B8();
  v22 = *(v6 + 8);
  v22(v8, v5);
  sub_24E7896B8();
  v22(v11, v5);
  return sub_24E8D413C(v15, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24E8CF28C@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v136 = a3;
  v137 = a1;
  v134 = a2;
  v120 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24F924038();
  v168 = sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8, &qword_24F93D5B0);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  v169 = sub_24F924E38();
  v170 = MEMORY[0x277CE1180];
  v171 = AssociatedTypeWitness;
  swift_getTupleTypeMetadata();
  v9 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v102 = v9;
  v10 = sub_24F927018();
  v107 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v105 = &v99 - v11;
  v133 = v12;
  v13 = sub_24F924038();
  v110 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v108 = &v99 - v14;
  v132 = v15;
  v16 = sub_24F924038();
  v112 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v111 = &v99 - v17;
  type metadata accessor for CardContentBackgroundStyle(255);
  v18 = sub_24F927598();
  v19 = sub_24E6A4C1C();
  v20 = sub_24E8D40DC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
  v135 = a5;
  v121 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v167[14] = v19;
  v167[15] = v20;
  v167[16] = AssociatedConformanceWitness;
  v22 = swift_getWitnessTable();
  v109 = v18;
  v103 = v22;
  v130 = sub_24F924E08();
  v23 = sub_24F924038();
  v115 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v106 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v104 = &v99 - v26;
  v100 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v100);
  v99 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_24F92C4A8();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v129 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v128 = &v99 - v30;
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  v123 = sub_24F927108();
  v31 = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8, &qword_24F93D5B0);
  v125 = v31;
  v32 = sub_24F924038();
  v117 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v99 - v33;
  v126 = v35;
  v36 = sub_24F924038();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v99 - v41;
  v124 = v43;
  v44 = sub_24F92C4A8();
  v122 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v127 = &v99 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v138 = &v99 - v47;
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  v131 = v16;
  v48 = MEMORY[0x277CDFC60];
  v49 = MEMORY[0x277CDF918];
  v119 = v23;
  if (byte_27F39D1B1 & 1) != 0 || (*(v134 + *(type metadata accessor for CardLayoutMetrics(0) + 68)))
  {
    v50 = v127;
    (*(v37 + 56))(v127, 1, 1, v124);
    v143 = swift_getWitnessTable();
    v144 = v48;
    v51 = swift_getWitnessTable();
    v52 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    v141 = v51;
    v142 = v52;
    v139 = swift_getWitnessTable();
    v140 = v49;
    swift_getWitnessTable();
  }

  else
  {
    v53 = type metadata accessor for CardLargeView.Footer(0, v136, v121, v135);
    sub_24E8D0594(v53, v34);
    v167[12] = swift_getWitnessTable();
    v167[13] = v48;
    v54 = swift_getWitnessTable();
    v55 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    v167[10] = v54;
    v167[11] = v55;
    v56 = v126;
    v57 = swift_getWitnessTable();
    sub_24F926A38();
    (*(v117 + 8))(v34, v56);
    v167[8] = v57;
    v167[9] = MEMORY[0x277CDF918];
    v58 = v124;
    swift_getWitnessTable();
    sub_24E7896B8();
    v59 = *(v37 + 8);
    v59(v39, v58);
    sub_24E7896B8();
    v59(v42, v58);
    v50 = v127;
    (*(v37 + 32))(v127, v39, v58);
    (*(v37 + 56))(v50, 0, 1, v58);
  }

  sub_24E8D5004(v50, v138);
  v60 = *(v122 + 8);
  v117 = v44;
  v113 = v60;
  v114 = v122 + 8;
  v61 = v60(v50, v44);
  if ((byte_27F39D1B1 & 1) == 0)
  {
    v61 = type metadata accessor for CardLayoutMetrics(0);
    if ((*(v134 + *(v61 + 68)) & 1) == 0)
    {
      v62 = v136;
      v63 = swift_getAssociatedConformanceWitness();
      v64 = v99;
      (*(v63 + 24))(v62, v63);
      v65 = *(v64 + *(v100 + 52) + 8);

      sub_24E8D413C(v64, type metadata accessor for CommonCardAttributes);
      if (!v65)
      {
        v82 = v129;
        (*(v115 + 56))(v129, 1, 1, v119);
        v167[6] = swift_getWitnessTable();
        v167[7] = MEMORY[0x277CDFC60];
        v167[4] = swift_getWitnessTable();
        v167[5] = MEMORY[0x277CDF918];
        v97 = swift_getWitnessTable();
        v98 = swift_getWitnessTable();
        v167[2] = v97;
        v167[3] = v98;
        swift_getWitnessTable();
        goto LABEL_12;
      }
    }
  }

  MEMORY[0x28223BE20](v61);
  sub_24F9249A8();
  v66 = v105;
  sub_24F927008();
  type metadata accessor for CardLayoutMetrics(0);
  sub_24F927618();
  v67 = v133;
  v68 = swift_getWitnessTable();
  v69 = v108;
  sub_24F926948();
  (*(v107 + 8))(v66, v67);
  v149 = v68;
  v150 = MEMORY[0x277CDFC60];
  v70 = v132;
  v71 = swift_getWitnessTable();
  v72 = v111;
  sub_24F926A38();
  v73 = (*(v110 + 8))(v69, v70);
  MEMORY[0x28223BE20](v73);
  sub_24F927618();
  v147 = v71;
  v148 = MEMORY[0x277CDF918];
  v74 = v131;
  v75 = swift_getWitnessTable();
  v76 = v106;
  sub_24F926088();
  (*(v112 + 8))(v72, v74);
  v77 = swift_getWitnessTable();
  v145 = v75;
  v146 = v77;
  v78 = v119;
  swift_getWitnessTable();
  v79 = v104;
  sub_24E7896B8();
  v80 = v115;
  v81 = *(v115 + 8);
  v81(v76, v78);
  sub_24E7896B8();
  v81(v79, v78);
  v82 = v129;
  (*(v80 + 32))(v129, v76, v78);
  (*(v80 + 56))(v82, 0, 1, v78);
LABEL_12:
  v83 = v128;
  sub_24E8D5004(v82, v128);
  v84 = v116;
  v137 = *(v116 + 8);
  v85 = v118;
  v137(v82, v118);
  v86 = v127;
  v87 = v117;
  (*(v122 + 16))(v127, v138, v117);
  v168 = v86;
  (*(v84 + 16))(v82, v83, v85);
  v169 = v82;
  v167[0] = v87;
  v167[1] = v85;
  v163 = swift_getWitnessTable();
  v88 = MEMORY[0x277CDFC60];
  v164 = MEMORY[0x277CDFC60];
  v89 = swift_getWitnessTable();
  v90 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
  v161 = v89;
  v162 = v90;
  v159 = swift_getWitnessTable();
  v91 = MEMORY[0x277CDF918];
  v160 = MEMORY[0x277CDF918];
  v158 = swift_getWitnessTable();
  v165 = swift_getWitnessTable();
  v156 = swift_getWitnessTable();
  v157 = v88;
  v154 = swift_getWitnessTable();
  v155 = v91;
  v92 = swift_getWitnessTable();
  v93 = swift_getWitnessTable();
  v152 = v92;
  v153 = v93;
  v151 = swift_getWitnessTable();
  v166 = swift_getWitnessTable();
  sub_24F57BA64(&v168, 2uLL, v167);
  v94 = v137;
  v137(v128, v85);
  v95 = v113;
  v113(v138, v87);
  v94(v129, v85);
  return v95(v86, v87);
}

uint64_t sub_24E8D0594@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = a1[3];
  v3 = a1[4];
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  v5 = sub_24F927108();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  v9 = sub_24F924038();
  v15 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  sub_24F924C98();
  v17 = a1[2];
  v18 = v4;
  v19 = v3;
  v20 = v14[1];
  sub_24F9270F8();
  sub_24F927628();
  WitnessTable = swift_getWitnessTable();
  sub_24F926948();
  (*(v6 + 8))(v8, v5);
  v21 = WitnessTable;
  v22 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_24F926728();
  return (*(v15 + 8))(v11, v9);
}

uint64_t sub_24E8D0888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v121 = a3;
  v124 = a2;
  v119 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v10 = sub_24F927808();
  v96[1] = swift_getWitnessTable();
  v96[2] = v10;
  v11 = sub_24F927108();
  v99 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v97 = v96 - v12;
  v140 = v13;
  v14 = sub_24F924038();
  v100 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v98 = v96 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8, &qword_24F93D5B0);
  v139 = v14;
  v16 = sub_24F924038();
  v103 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v102 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v101 = v96 - v19;
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  v131 = sub_24F927108();
  v132 = sub_24F924038();
  v20 = sub_24F924038();
  v108 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v107 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v106 = v96 - v23;
  v117 = v24;
  v138 = v16;
  v118 = sub_24F924E38();
  v136 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v135 = v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v134 = v96 - v27;
  v128 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v28);
  v133 = v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = v96 - v31;
  v33 = sub_24F924038();
  v34 = *(v33 - 8);
  v114 = v33;
  v115 = v34;
  MEMORY[0x28223BE20](v33);
  v109 = v96 - v35;
  v141 = sub_24F924038();
  v125 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v37 = v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v142 = v96 - v39;
  v40 = type metadata accessor for CardLargeView.Footer(0, v121, a4, a5);
  v41 = *(v40 + 44);
  v42 = *(v40 + 48);
  v105 = v40;
  v43 = *(a5 + 72);
  v137 = a1;
  v110 = a1 + v42;
  v111 = v43;
  v112 = a1 + v41;
  v113 = a5 + 72;
  (v43)(3, a1, 3);
  sub_24F925858();
  v44 = type metadata accessor for CardLayoutMetrics(0);
  v122 = a4;
  v123 = a5;
  v45 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = v109;
  sub_24F926A48();
  v48 = *(v128 + 8);
  v116 = v32;
  v120 = v45;
  v129 = v48;
  v130 = v128 + 8;
  v48(v32, v45);
  sub_24F925868();
  v104 = v44;
  v49 = MEMORY[0x277CDF918];
  v127 = AssociatedConformanceWitness;
  v168[14] = AssociatedConformanceWitness;
  v168[15] = MEMORY[0x277CDF918];
  v50 = v114;
  WitnessTable = swift_getWitnessTable();
  sub_24F926A48();
  (*(v115 + 8))(v47, v50);
  v168[12] = WitnessTable;
  v168[13] = v49;
  v52 = v141;
  v109 = swift_getWitnessTable();
  sub_24E7896B8();
  v53 = *(v125 + 8);
  v126 = v37;
  v114 = v53;
  v115 = v125 + 8;
  v53(v37, v52);
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  v54 = MEMORY[0x277CDFC60];
  if ((byte_27F39D1B1 & 1) != 0 || *(v124 + *(v104 + 68)) == 1)
  {
    v55 = v107;
    sub_24E8D0594(v105, v107);
    v124 = MEMORY[0x277CE1198];
    v149 = swift_getWitnessTable();
    v150 = v54;
    v56 = swift_getWitnessTable();
    v57 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    v147 = v56;
    v148 = v57;
    v58 = v117;
    v59 = swift_getWitnessTable();
    v60 = v106;
    sub_24E7896B8();
    v61 = *(v108 + 8);
    v61(v55, v58);
    sub_24E7896B8();
    v145 = swift_getWitnessTable();
    v146 = v54;
    v143 = swift_getWitnessTable();
    v144 = v57;
    v62 = v138;
    v63 = swift_getWitnessTable();
    sub_24ECCCBA0(v55, v58, v62, v59, v63);
    v61(v55, v58);
    v61(v60, v58);
    v64 = MEMORY[0x277CDFC60];
  }

  else
  {
    v65 = sub_24F924C98();
    MEMORY[0x28223BE20](v65);
    v66 = v97;
    sub_24F9270F8();
    sub_24F927628();
    v124 = MEMORY[0x277CE1198];
    v94 = v140;
    v95 = swift_getWitnessTable();
    v67 = v98;
    sub_24F926948();
    (*(v99 + 8))(v66, v94);
    v168[10] = v95;
    v168[11] = v54;
    v68 = v139;
    v69 = swift_getWitnessTable();
    v64 = v54;
    v70 = v102;
    sub_24F926728();
    (*(v100 + 8))(v67, v68);
    v71 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    v168[8] = v69;
    v168[9] = v71;
    v72 = v138;
    v73 = swift_getWitnessTable();
    v74 = v101;
    sub_24E7896B8();
    v75 = *(v103 + 8);
    v75(v70, v72);
    sub_24E7896B8();
    v168[6] = swift_getWitnessTable();
    v168[7] = v64;
    v168[4] = swift_getWitnessTable();
    v168[5] = v71;
    v76 = v117;
    v77 = swift_getWitnessTable();
    sub_24ECCCC98(v70, v76, v72, v77, v73);
    v75(v70, v72);
    v75(v74, v72);
  }

  v78 = v133;
  v111(13, v137, 3, v110, v122, v123);
  v79 = v116;
  v80 = v120;
  sub_24E7896B8();
  v129(v78, v80);
  v81 = v126;
  v82 = v141;
  (*(v125 + 16))(v126, v142);
  v168[0] = v81;
  v83 = v135;
  v84 = v118;
  (*(v136 + 16))();
  v166 = 0x4024000000000000;
  v167 = 0;
  v168[1] = v83;
  v168[2] = &v166;
  (*(v128 + 16))(v78, v79, v80);
  v168[3] = v78;
  v165[0] = v82;
  v165[1] = v84;
  v165[2] = MEMORY[0x277CE1180];
  v165[3] = v80;
  v161 = v109;
  v159 = swift_getWitnessTable();
  v160 = v64;
  v85 = swift_getWitnessTable();
  v86 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
  v157 = v85;
  v158 = v86;
  v87 = swift_getWitnessTable();
  v155 = swift_getWitnessTable();
  v156 = v64;
  v153 = swift_getWitnessTable();
  v154 = v86;
  v88 = swift_getWitnessTable();
  v151 = v87;
  v152 = v88;
  v162 = swift_getWitnessTable();
  v163 = MEMORY[0x277CE1170];
  v164 = v127;
  sub_24F57BA64(v168, 4uLL, v165);
  v89 = v129;
  v129(v79, v80);
  v90 = *(v136 + 8);
  v90(v134, v84);
  v91 = v141;
  v92 = v114;
  v114(v142, v141);
  v89(v133, v80);
  v90(v135, v84);
  return v92(v126, v91);
}

uint64_t sub_24E8D17A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v27 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v32 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v17);
  v31 = &v27 - v18;
  v19 = type metadata accessor for CardLargeView.Footer(0, a2, a3, a4);
  v20 = *(v19 + 44);
  v28 = *(v19 + 48);
  v29 = v20;
  v30 = *(a4 + 72);
  v30(5, a1, 3, a1 + v28, a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8();
  v22 = *(v34 + 8);
  v22(v16, AssociatedTypeWitness);
  v30(6, a1, 3, a1 + v28, v27, a4);
  sub_24E7896B8();
  v22(v13, AssociatedTypeWitness);
  v23 = *(v34 + 16);
  v24 = v31;
  v23(v13, v31, AssociatedTypeWitness);
  v38[0] = v13;
  v25 = v32;
  v23(v32, v16, AssociatedTypeWitness);
  v38[1] = v25;
  v37[0] = AssociatedTypeWitness;
  v37[1] = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = AssociatedConformanceWitness;
  sub_24F57BA64(v38, 2uLL, v37);
  v22(v16, AssociatedTypeWitness);
  v22(v24, AssociatedTypeWitness);
  v22(v25, AssociatedTypeWitness);
  return (v22)(v13, AssociatedTypeWitness);
}

uint64_t sub_24E8D1AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  type metadata accessor for CardContentBackgroundStyle(255);
  swift_getAssociatedTypeWitness();
  v9 = sub_24F927598();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = a4;
  v21[7] = a1;
  v16 = sub_24E6A4C1C();
  v19 = sub_24E8D40DC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F927568();
  v21[9] = v16;
  v21[10] = v19;
  v21[11] = AssociatedConformanceWitness;
  swift_getWitnessTable();
  sub_24E7896B8();
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_24E7896B8();
  return (v17)(v15, v9);
}

uint64_t sub_24E8D1D28@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 5, v2);
}

uint64_t sub_24E8D1DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v15 = type metadata accessor for CardLargeView.Footer(0, a2, a3, a4);
  (*(a4 + 72))(11, a1, 3, a1 + *(v15 + 48), a3, a4);
  swift_getAssociatedConformanceWitness();
  sub_24E7896B8();
  v16 = *(v9 + 8);
  v16(v11, AssociatedTypeWitness);
  sub_24E7896B8();
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t sub_24E8D1F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v39 - v12;
  MEMORY[0x28223BE20](v13);
  v44 = &v39 - v14;
  MEMORY[0x28223BE20](v15);
  v43 = &v39 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  MEMORY[0x28223BE20](v20);
  v51 = &v39 - v21;
  v22 = type metadata accessor for CardLargeView.Footer(0, a2, a3, a4);
  v23 = *(v22 + 44);
  v24 = *(v22 + 48);
  v41 = a1;
  v42 = v23;
  v50 = *(a4 + 72);
  v25 = v24;
  v40 = v24;
  v49 = a4;
  v50(4, a1, 3, a1 + v24, a3, a4);
  v39 = a4 + 72;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v19;
  sub_24E7896B8();
  v27 = *(v52 + 8);
  v27(v19, AssociatedTypeWitness);
  v28 = v41;
  v29 = v43;
  v50(7, v41, 3, v41 + v25, a3, v49);
  v30 = v29;
  sub_24E7896B8();
  v27(v29, AssociatedTypeWitness);
  v31 = v44;
  v50(8, v28, 3, v28 + v40, a3, v49);
  v32 = v30;
  sub_24E7896B8();
  v27(v31, AssociatedTypeWitness);
  v33 = *(v52 + 16);
  v33(v31, v51, AssociatedTypeWitness);
  v57[0] = v31;
  v34 = v45;
  v35 = v48;
  (v33)(v45);
  v57[1] = v34;
  v36 = v34;
  v37 = v46;
  v33(v46, v32, AssociatedTypeWitness);
  v57[2] = v37;
  v56[0] = AssociatedTypeWitness;
  v56[1] = AssociatedTypeWitness;
  v56[2] = AssociatedTypeWitness;
  v53 = AssociatedConformanceWitness;
  v54 = AssociatedConformanceWitness;
  v55 = AssociatedConformanceWitness;
  sub_24F57BA64(v57, 3uLL, v56);
  v27(v32, AssociatedTypeWitness);
  v27(v35, AssociatedTypeWitness);
  v27(v51, AssociatedTypeWitness);
  v27(v37, AssociatedTypeWitness);
  v27(v36, AssociatedTypeWitness);
  return (v27)(v31, AssociatedTypeWitness);
}

uint64_t sub_24E8D23A8()
{

  return swift_deallocObject();
}

void sub_24E8D23E8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_24F923E98();
      if (v3 <= 0x3F)
      {
        sub_24E8D2CFC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E8D24A4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v38 = *(a3 + 24);
  v4 = *(v38 - 8);
  v37 = *(a3 + 16);
  v5 = *(v4 + 84);
  v6 = *(v37 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v35 = sub_24F923E98();
  v9 = *(v35 - 8);
  v36 = *(v9 + 84);
  if (v36 > v8)
  {
    v8 = *(v9 + 84);
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220BD8, &unk_24F964F00) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (v11 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(v10 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v4 + 64) + v12;
  v18 = *(v10 + 80) & 0xF8 | 7;
  v19 = *(v10 + 64) + 7;
  v20 = a1;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v21 = (v19 & 0xFFFFFFFFFFFFFFF8) + ((v15 + v18 + ((v13 + v14 + (v17 & ~v12)) & ~v14)) & ~v18) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v16 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 < 2)
  {
    v24 = 0;
  }

  if (v24 <= 1)
  {
    if (!v24)
    {
      goto LABEL_33;
    }

    v25 = *(a1 + v21);
    if (!v25)
    {
      goto LABEL_33;
    }

LABEL_30:
    v27 = v25 - 1;
    if (v22)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    return v16 + (v28 | v27) + 1;
  }

  if (v24 == 2)
  {
    v25 = *(a1 + v21);
    if (v25)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v25 = *(a1 + v21);
    if (v25)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v5 == v16)
  {
    v29 = v38;
    v30 = *(v4 + 48);
    v31 = v5;
    goto LABEL_35;
  }

  v20 = ((a1 + v17) & ~v12);
  if (v7 == v16)
  {
    v30 = *(v6 + 48);
    v31 = v7;
    v29 = v37;

    return v30(v20, v31, v29);
  }

  v20 = ((v20 + v13 + v14) & ~v14);
  if (v36 == v16)
  {
    v30 = *(v9 + 48);
    v31 = v36;
    v29 = v35;
LABEL_35:

    return v30(v20, v31, v29);
  }

  v32 = (v20 + v15 + v18) & ~v18;
  if (v11 < 0x7FFFFFFE)
  {
    v34 = *((v19 + v32) & 0xFFFFFFFFFFFFFFF8);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    if ((v34 + 1) >= 2)
    {
      return v34;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v33 = *(v10 + 48);

    return v33(v32);
  }
}

void sub_24E8D2890(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v46 = *(a4 + 24);
  v6 = *(v46 - 8);
  v45 = v6;
  v7 = *(v6 + 84);
  v43 = *(a4 + 16);
  v8 = *(v43 - 8);
  v44 = *(v8 + 84);
  if (v44 <= v7)
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v41 = sub_24F923E98();
  v10 = *(v41 - 8);
  v42 = *(v10 + 84);
  if (v42 > v9)
  {
    v9 = *(v10 + 84);
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220BD8, &unk_24F964F00) - 8);
  v12 = *(v11 + 84);
  v13 = *(v6 + 64);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (v12 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = *(v11 + 84);
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  v20 = v13 + v14;
  v21 = (v15 + v16 + ((v13 + v14) & ~v14)) & ~v16;
  v22 = *(v11 + 80) & 0xF8 | 7;
  v23 = *(v11 + 64) + 7;
  v24 = (v23 & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = ((v17 + v22 + v21) & ~v22) + v24;
  if (v25)
  {
    v26 = 2;
  }

  else
  {
    v26 = a3 - v19 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v19 < a3)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (a2 > v19)
  {
    if (v25)
    {
      v30 = 1;
    }

    else
    {
      v30 = a2 - v19;
    }

    if (v25)
    {
      v31 = ~v19 + a2;
      bzero(a1, v25);
      *a1 = v31;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        *(a1 + v25) = v30;
      }

      else
      {
        *(a1 + v25) = v30;
      }
    }

    else if (v29)
    {
      *(a1 + v25) = v30;
    }

    return;
  }

  if (v29 <= 1)
  {
    v32 = a1;
    if (v29)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  v32 = a1;
  if (v29 == 2)
  {
    *(a1 + v25) = 0;
    goto LABEL_43;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v7 == v19)
  {
    v33 = v46;
    v34 = *(v45 + 56);
    v35 = a2;
    v36 = v7;
    goto LABEL_46;
  }

  v32 = ((v32 + v20) & ~v14);
  if (v44 == v19)
  {
    v34 = *(v8 + 56);
    v35 = a2;
    v36 = v44;
    v33 = v43;

    goto LABEL_48;
  }

  v32 = ((v32 + v15 + v16) & ~v16);
  if (v42 == v19)
  {
    v34 = *(v10 + 56);
    v35 = a2;
    v36 = v42;
    v33 = v41;
LABEL_46:

LABEL_48:
    v34(v32, v35, v36, v33);
    return;
  }

  v37 = ((v32 + v17 + v22) & ~v22);
  if (v18 >= a2)
  {
    if (v12 < 0x7FFFFFFE)
    {
      v40 = ((v37 + v23) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v40 = 0;
        *v40 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v40 = a2;
      }
    }

    else
    {
      v39 = *(v11 + 56);

      v39(v37, a2);
    }
  }

  else if ((v23 & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v38 = ~v18 + a2;
    bzero(((v32 + v17 + v22) & ~v22), v24);
    *v37 = v38;
  }
}

void sub_24E8D2CFC(uint64_t a1)
{
  if (!qword_27F220C60)
  {
    type metadata accessor for CardSafeArea(255);
    v1 = sub_24F9233E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F220C60);
    }
  }
}

uint64_t sub_24E8D2DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = (type metadata accessor for CardLargeView(0, v1, v2, v0[4]) - 8);
  v4 = v0 + ((*(*v3 + 80) + 40) & ~*(*v3 + 80));
  (*(*(v2 - 8) + 8))(v4, v2);
  (*(*(v1 - 8) + 8))(&v4[v3[13]], v1);
  v5 = v3[14];
  v6 = sub_24F923E98();
  (*(*(v6 - 8) + 8))(&v4[v5], v6);
  v7 = &v4[v3[15]];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220BD8, &unk_24F964F00);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220C70, &qword_24F964FA0);

  return swift_deallocObject();
}

uint64_t sub_24E8D305C(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(type metadata accessor for CardLargeView(0, v4, v5, v6) - 8);
  v8 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return a2(a1, v8, v4, v5, v6);
}

uint64_t sub_24E8D3118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24E8D3178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E8D31C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E8D3218(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_24F923E98();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24E8D32C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v32 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_24F923E98();
  v12 = *(v11 - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v13;
  if (a2 > v16)
  {
    v18 = ((v14 + v15 + (v17 & ~v13)) & ~v15) + *(*(v11 - 8) + 64);
    v19 = 8 * v18;
    if (v18 <= 3)
    {
      v21 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v21))
      {
        v20 = *(a1 + v18);
        if (!v20)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 > 0xFF)
      {
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 < 2)
      {
LABEL_30:
        if (v16)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_30;
    }

LABEL_17:
    v22 = (v20 - 1) << v19;
    if (v18 > 3)
    {
      v22 = 0;
    }

    if (v18)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v24 = *a1;
        }
      }

      else if (v23 == 1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = *a1;
      }
    }

    else
    {
      v24 = 0;
    }

    return v16 + (v24 | v22) + 1;
  }

LABEL_31:
  if (v7 == v16)
  {
    v25 = *(v6 + 48);
    v26 = a1;
    v27 = v7;
    v28 = v5;
LABEL_36:

    return v25(v26, v27, v28);
  }

  v26 = ((a1 + v17) & ~v13);
  if (v9 == v16)
  {
    v25 = *(v8 + 48);
    v27 = v9;
    v28 = v32;
    goto LABEL_36;
  }

  v30 = *(v12 + 48);
  v31 = (v26 + v14 + v15) & ~v15;

  return v30(v31);
}

void sub_24E8D35D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 16);
  v7 = *(v38 - 8);
  v36 = *(a4 + 24);
  v37 = v7;
  v8 = *(v7 + 84);
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_24F923E98() - 8);
  v13 = v12;
  v14 = *(v7 + 64);
  if (*(v12 + 84) <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v9 + 80);
  v17 = v14 + v16;
  v18 = (v14 + v16) & ~v16;
  v19 = *(v9 + 64);
  v20 = *(v12 + 80);
  v21 = ((v19 + v20 + v18) & ~v20) + *(v12 + 64);
  if (a3 <= v15)
  {
    v23 = 0;
    v22 = a1;
  }

  else
  {
    v22 = a1;
    if (v21 <= 3)
    {
      v26 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v21 < 4)
    {
      v25 = (v24 >> (8 * v21)) + 1;
      if (v21)
      {
        v28 = v24 & ~(-1 << (8 * v21));
        bzero(v22, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v22 = v28;
            if (v23 > 1)
            {
LABEL_52:
              if (v23 == 2)
              {
                *&v22[v21] = v25;
              }

              else
              {
                *&v22[v21] = v25;
              }

              return;
            }
          }

          else
          {
            *v22 = v24;
            if (v23 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v22 = v28;
        v22[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v22, v21);
      *v22 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v23)
    {
      v22[v21] = v25;
    }

    return;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      v22[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v23 == 2)
  {
    *&v22[v21] = 0;
    goto LABEL_33;
  }

  *&v22[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v15)
  {
    v29 = v38;
    v30 = *(v37 + 56);
    v31 = v22;
    v32 = a2;
    v33 = v8;
LABEL_38:

    v30(v31, v32, v33, v29);
    return;
  }

  v31 = (&v22[v17] & ~v16);
  if (v10 == v15)
  {
    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = v36;
    goto LABEL_38;
  }

  v34 = *(v13 + 56);
  v35 = &v31[v19 + v20] & ~v20;

  v34(v35, a2);
}

uint64_t sub_24E8D3960(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for CardLargeView.TopAccessory(255, *a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720, qword_24F9A8F70);
  sub_24F924038();
  type metadata accessor for CardLargeView.Footer(255, v1, v2, v3);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2195B8, &qword_24F94C4A0);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40, &qword_24F984790);
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  type metadata accessor for CardLargeView.GradientBlurView(255, v1, v2, v3);
  sub_24F924038();
  sub_24F92C4A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  type metadata accessor for CardHeightViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040, &unk_24F940690);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0, &unk_24F967B30);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E8D40DC(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier, &unk_24FA033B0);
  swift_getWitnessTable();
  sub_24E6A4C1C();
  sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F217098, &qword_27F2170A0, &unk_24F967B30, &unk_24FA0D448);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E6BC1C8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ZoomableViewModifier(255);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E8D40DC(&qword_27F217130, type metadata accessor for ZoomableViewModifier, &unk_24F9A0430);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CardSafeArea(255);
  swift_getOpaqueTypeConformance2();
  sub_24E8D40DC(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E8D4040()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_24E8D4080(double *a1)
{
  v2 = *a1;
  type metadata accessor for CardLargeView.GradientBlurView(0, v1[2], v1[3], v1[4]);
  return sub_24E8CDF40(v2);
}

uint64_t sub_24E8D40DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E8D413C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E8D4200()
{
  result = qword_27F220DF8;
  if (!qword_27F220DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220E00, &qword_24F965168);
    sub_24E8D42B8();
    sub_24E602068(&qword_27F216598, &qword_27F2165A0, &unk_24F9424F0, MEMORY[0x277CDF520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220DF8);
  }

  return result;
}

unint64_t sub_24E8D42B8()
{
  result = qword_27F220E08;
  if (!qword_27F220E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220E10, &qword_24F965170);
    sub_24E8D4370();
    sub_24E602068(&qword_27F21A718, &qword_27F21A720, qword_24F9A8F70, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220E08);
  }

  return result;
}

unint64_t sub_24E8D4370()
{
  result = qword_27F220E18;
  if (!qword_27F220E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220E20, &qword_24F965178);
    sub_24E602068(&qword_27F220E28, &qword_27F220E30, &unk_24F965180, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220E18);
  }

  return result;
}

uint64_t sub_24E8D4428(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();

  return swift_getWitnessTable();
}

uint64_t sub_24E8D44F8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8, &qword_24F93D5B0);
  sub_24F924038();
  sub_24F924038();
  sub_24F92C4A8();
  sub_24F924038();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F924E38();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924038();
  sub_24F924038();
  type metadata accessor for CardContentBackgroundStyle(255);
  sub_24F927598();
  sub_24E6A4C1C();
  sub_24E8D40DC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  return swift_getWitnessTable();
}

void sub_24E8D4898(uint64_t a1)
{
  sub_24E8D4F04(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24E8D4F04(319, &qword_27F220EC0, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E6CAEE4(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        v4 = MEMORY[0x277D839B0];
        sub_24F928FD8();
        if (v5 <= 0x3F)
        {
          sub_24E6C5550();
          if (v6 <= 0x3F)
          {
            sub_24E8D4F54(319, &qword_27F220EC8, type metadata accessor for HeaderPresentation, MEMORY[0x277D83D88]);
            if (v7 <= 0x3F)
            {
              sub_24E8D4F04(319, &qword_27F220ED0, &type metadata for Margins, MEMORY[0x277D83D88]);
              if (v8 <= 0x3F)
              {
                sub_24E8D4F04(319, &qword_27F254E10, v4, MEMORY[0x277CE10B8]);
                if (v9 <= 0x3F)
                {
                  sub_24E8D4F04(319, &qword_27F236310, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
                  if (v10 <= 0x3F)
                  {
                    sub_24E6CAEE4(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
                    if (v11 <= 0x3F)
                    {
                      sub_24E8D4F54(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                      if (v12 <= 0x3F)
                      {
                        sub_24E65E73C();
                        if (v13 <= 0x3F)
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

uint64_t sub_24E8D4BB8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 136);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[34];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[40];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[42];

  return v15(v16, a2, v14);
}

uint64_t sub_24E8D4D5C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 136) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[34];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[40];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[42];

  return v15(v16, a2, a2, v14);
}

void sub_24E8D4F04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24E8D4F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E8D5004@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_24F92C4A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

double sub_24E8D5070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  v16[0] = sub_24F925378();
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = sub_24F925388();
  MEMORY[0x25304C420](v16, a6, v14, a8);

  return result;
}

__n128 sub_24E8D5164@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = sub_24F925218();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v7);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v49 - v15;
  MEMORY[0x28223BE20](v16);
  v61 = (&v49 - v17);
  MEMORY[0x28223BE20](v18);
  v65 = &v49 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - v24;
  v58 = a1;
  v59 = v2;
  sub_24F769764((&v49 - v24));
  v26 = *MEMORY[0x277CE0560];
  v27 = *MEMORY[0x277CE0560];
  v56 = v5[13];
  v54 = v5 + 13;
  v56(v22, v27, v4);
  v55 = v5[7];
  v55(v22, 0, 1, v4);
  v57 = v7;
  v28 = *(v7 + 48);
  sub_24E60169C(v25, v11, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v22, &v11[v28], &qword_27F215598, &qword_24F945EF0);
  v63 = v5;
  v29 = v5[6];
  if (v29(v11, 1, v4) != 1)
  {
    sub_24E60169C(v11, v65, &qword_27F215598, &qword_24F945EF0);
    if (v29(&v11[v28], 1, v4) != 1)
    {
      v51 = v26;
      v31 = &v11[v28];
      v32 = v53;
      (v63[4])(v53, v31, v4);
      sub_24E8E01C8(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v50 = sub_24F92AFF8();
      v33 = v63[1];
      v33(v32, v4);
      sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
      v33(v65, v4);
      sub_24E601704(v11, &qword_27F215598, &qword_24F945EF0);
      if ((v50 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
    (v63[1])(v65, v4);
LABEL_6:
    v30 = v11;
LABEL_14:
    sub_24E601704(v30, &unk_27F254F20, &qword_24F940790);
    goto LABEL_15;
  }

  v51 = v26;
  v65 = (v5 + 7);
  sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
  if (v29(&v11[v28], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v11, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v34 = v61;
  sub_24F769764(v61);
  v35 = v60;
  v56(v60, v51, v4);
  v55(v35, 0, 1, v4);
  v36 = *(v57 + 48);
  v37 = v62;
  sub_24E60169C(v34, v62, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v35, v37 + v36, &qword_27F215598, &qword_24F945EF0);
  if (v29(v37, 1, v4) == 1)
  {
    sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
    if (v29((v37 + v36), 1, v4) == 1)
    {
      sub_24E601704(v37, &qword_27F215598, &qword_24F945EF0);
LABEL_20:
      if (qword_27F20FE20 != -1)
      {
        swift_once();
      }

      v39 = &xmmword_27F21A3F8;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v38 = v52;
  sub_24E60169C(v37, v52, &qword_27F215598, &qword_24F945EF0);
  if (v29((v37 + v36), 1, v4) == 1)
  {
    sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
    (v63[1])(v38, v4);
LABEL_13:
    v30 = v37;
    goto LABEL_14;
  }

  v44 = v63;
  v45 = v37 + v36;
  v46 = v53;
  (v63[4])(v53, v45, v4);
  sub_24E8E01C8(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v47 = sub_24F92AFF8();
  v48 = v44[1];
  v48(v46, v4);
  sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
  v48(v38, v4);
  sub_24E601704(v37, &qword_27F215598, &qword_24F945EF0);
  if (v47)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F20FE18 != -1)
  {
    swift_once();
  }

  v39 = &xmmword_27F21A3B0;
LABEL_18:
  v40 = v39[3];
  v68 = v39[2];
  v69 = v40;
  v70 = *(v39 + 8);
  v41 = v39[1];
  v66 = *v39;
  v67 = v41;
  v42 = v64;
  *(v64 + 32) = v68;
  *(v42 + 48) = v40;
  *(v42 + 64) = v70;
  result = v67;
  *v42 = v66;
  *(v42 + 16) = result;
  return result;
}

void *sub_24E8D5A14@<X0>(char *a1@<X8>)
{
  v2 = sub_24F923E98();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24F769764((&v9 - v6));
  sub_24F769788(v4);
  return sub_24F52EC5C(v7, v4, a1);
}

uint64_t sub_24E8D5B10(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  (*(v1 + 208))(v7);
  (*(v3 + 32))(v5, v9, v2);
  return swift_dynamicCast();
}

uint64_t sub_24E8D5C14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v181);
  v168 = (&v133 - v3);
  v179 = sub_24F923E98();
  v167 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v166 = (&v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v180 = a1;
  v190 = *(a1 - 1);
  MEMORY[0x28223BE20](v5);
  v183 = v6;
  v189 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_24F92C0E8();
  v165 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F929888();
  v171 = *(v8 - 8);
  v172 = v8;
  MEMORY[0x28223BE20](v8);
  v170 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = a1[3];
  sub_24F924038();
  *&v186 = a1[5];
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  *(&v157 + 1) = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  v10 = sub_24F927108();
  *&v184 = a1 - 1;
  v163 = a1[4];
  *&v188 = a1[8];
  *(&v188 + 1) = v10;
  v11 = sub_24F923428();
  v161 = MEMORY[0x277CDD6E0];
  WitnessTable = swift_getWitnessTable();
  *&v219 = v11;
  *(&v219 + 1) = WitnessTable;
  v160 = MEMORY[0x277CDEC48];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EE8, &qword_24F965220);
  *&v219 = v11;
  *(&v219 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EF0, &qword_24F965228);
  v17 = sub_24E8DCE18();
  *&v219 = v16;
  *(&v219 + 1) = v17;
  v182 = MEMORY[0x277CDEA38];
  v18 = swift_getOpaqueTypeConformance2();
  *&v219 = OpaqueTypeMetadata2;
  *(&v219 + 1) = v14;
  *&v220 = OpaqueTypeConformance2;
  *(&v220 + 1) = v18;
  *&v185 = MEMORY[0x277CDE708];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F20, &qword_24F965240);
  sub_24F924038();
  sub_24F924E38();
  v19 = sub_24F926DC8();
  *&v219 = OpaqueTypeMetadata2;
  *(&v219 + 1) = v14;
  *&v220 = OpaqueTypeConformance2;
  *(&v220 + 1) = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v176 = MEMORY[0x277CE01C8];
  v21 = sub_24E602068(&qword_27F220F28, &qword_27F220F20, &qword_24F965240, MEMORY[0x277CE01C8]);
  v217 = OpaqueTypeConformance2;
  v218 = v21;
  v158 = MEMORY[0x277CDFAD8];
  v22 = swift_getWitnessTable();
  v215 = v20;
  v216 = v22;
  v175 = MEMORY[0x277CE0340];
  v214 = swift_getWitnessTable();
  v174 = MEMORY[0x277CE0FB0];
  v23 = swift_getWitnessTable();
  *&v219 = v19;
  *(&v219 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v173 = sub_24F927018();
  v159 = sub_24F924038();
  *&v219 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30, &qword_24F965248);
  *(&v219 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188, &unk_24F965250);
  v24 = v184;
  v162 = *(v184 + 24);
  *&v220 = sub_24F924038();
  *(&v188 + 1) = *(v24 + 80);
  type metadata accessor for OnboardingButtonPlatter(255, v186, *(&v188 + 1), v25);
  v26 = sub_24F92C4A8();
  *(&v220 + 1) = v26;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  swift_getWitnessTable();
  v27 = sub_24F923428();
  v28 = swift_getWitnessTable();
  *&v219 = v27;
  *(&v219 + 1) = v28;
  swift_getOpaqueTypeMetadata2();
  *&v219 = v27;
  *(&v219 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  sub_24F924278();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720, qword_24F9A8F70);
  v29 = sub_24F924038();
  v213 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  *&v219 = v26;
  *(&v219 + 1) = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v160 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_24E602068(&qword_27F21A718, &qword_27F21A720, qword_24F9A8F70, MEMORY[0x277CE06A8]);
  v211 = v32;
  v212 = v33;
  v34 = swift_getWitnessTable();
  *&v157 = v34;
  *&v219 = v26;
  *(&v219 + 1) = v30;
  *(&v157 + 1) = swift_getOpaqueTypeConformance2();
  *&v219 = v29;
  *(&v219 + 1) = v31;
  *&v220 = v34;
  *(&v220 + 1) = *(&v157 + 1);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520, &qword_24F9423F0);
  sub_24F924038();
  v35 = sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
  v209 = v30;
  v210 = v35;
  swift_getWitnessTable();
  sub_24F924B98();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  v182 = sub_24F924E38();
  v36 = sub_24F926DC8();
  v161 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v139 = &v133 - v37;
  v207 = swift_getWitnessTable();
  v208 = MEMORY[0x277CDF918];
  v38 = swift_getWitnessTable();
  *&v219 = v29;
  *(&v219 + 1) = v160;
  v39 = v157;
  v220 = v157;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = swift_getWitnessTable();
  v205 = v39;
  v206 = v41;
  v42 = swift_getWitnessTable();
  v203 = v40;
  v204 = v42;
  v202 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v200 = v38;
  v201 = v43;
  v133 = swift_getWitnessTable();
  v199 = v133;
  v44 = swift_getWitnessTable();
  *&v219 = v36;
  *(&v219 + 1) = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v145 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v142 = &v133 - v46;
  v147 = v47;
  v48 = sub_24F924038();
  v141 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v138 = &v133 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220ED8, &qword_24F992060);
  *&v219 = v36;
  *(&v219 + 1) = v44;
  v137 = v44;
  v134 = swift_getOpaqueTypeConformance2();
  v197 = v134;
  v198 = MEMORY[0x277CDFC60];
  v51 = swift_getWitnessTable();
  v52 = sub_24E602068(&qword_27F220EE0, &qword_27F220ED8, &qword_24F992060, MEMORY[0x277CDF728]);
  *&v219 = v48;
  *(&v219 + 1) = v50;
  *&v220 = v51;
  *(&v220 + 1) = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v146 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v143 = &v133 - v54;
  v55 = sub_24E8E01C8(&qword_27F21F480, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  *&v219 = v48;
  *(&v219 + 1) = v50;
  v135 = v51;
  *&v220 = v51;
  *(&v220 + 1) = v52;
  v56 = v187;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v178;
  *&v219 = v178;
  *(&v219 + 1) = v53;
  v149 = v53;
  *&v220 = v55;
  *(&v220 + 1) = v57;
  v136 = v57;
  v59 = sub_24F924288();
  v151 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v173 = &v133 - v60;
  v61 = swift_getWitnessTable();
  *&v219 = v58;
  *(&v219 + 1) = v59;
  v154 = v59;
  v175 = v55;
  *&v220 = v55;
  *(&v220 + 1) = v61;
  v140 = v61;
  v62 = sub_24F924288();
  *&v157 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v174 = &v133 - v63;
  v64 = swift_getWitnessTable();
  v65 = sub_24E8E01C8(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  v66 = v179;
  *&v219 = v62;
  *(&v219 + 1) = v179;
  *&v220 = v64;
  *(&v220 + 1) = v65;
  v67 = swift_getOpaqueTypeMetadata2();
  v159 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v176 = &v133 - v68;
  v158 = v62;
  *&v219 = v62;
  *(&v219 + 1) = v66;
  v148 = v64;
  *&v220 = v64;
  *(&v220 + 1) = v65;
  v144 = v65;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_24E8DD010();
  v160 = v67;
  *&v219 = v67;
  *(&v219 + 1) = v181;
  v155 = v69;
  *&v220 = v69;
  *(&v220 + 1) = v70;
  v153 = v70;
  *(&v157 + 1) = swift_getOpaqueTypeMetadata2();
  v156 = *(*(&v157 + 1) - 8);
  MEMORY[0x28223BE20](*(&v157 + 1));
  v150 = &v133 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v152 = &v133 - v73;
  *&v74 = v162;
  *&v75 = v163;
  *(&v74 + 1) = v164;
  *(&v75 + 1) = v186;
  v185 = v75;
  v186 = v74;
  v191 = v74;
  v192 = v75;
  v184 = *(v184 + 56);
  v193 = v184;
  v194 = v188;
  v195 = v56;
  v76 = v139;
  sub_24F926DB8();
  *&v219 = 0;
  *(&v219 + 1) = 0xE000000000000000;
  if (*(v56 + 152))
  {
    v77 = *(v56 + 144);
    v78 = *(v56 + 152);
  }

  else
  {
    v78 = 0xE400000000000000;
    v77 = 2003134838;
  }

  MEMORY[0x253050C20](v77, v78);

  v219 = 0u;
  v220 = 0u;
  memset(v196, 0, sizeof(v196));
  v79 = v170;
  sub_24F9297A8();

  sub_24E601704(v196, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v219, &qword_27F2129B0, &unk_24F945320);
  v80 = v142;
  sub_24F925EE8();
  (*(v171 + 8))(v79, v172);
  (*(v161 + 8))(v76, v36);
  sub_24F927618();
  v81 = v147;
  v82 = v138;
  sub_24F926948();
  (*(v145 + 8))(v80, v81);
  v83 = v143;
  sub_24E8D92C8(v48, v135);
  (*(v141 + 8))(v82, v48);
  v164 = objc_opt_self();
  v84 = [v164 defaultCenter];
  v85 = v177;
  sub_24F92C0F8();

  v87 = v189;
  v86 = v190;
  v88 = *(v190 + 16);
  v171 = v190 + 16;
  v172 = v88;
  v89 = v180;
  v88(v189, v56, v180);
  v170 = *(v86 + 80);
  v90 = (v170 + 80) & ~v170;
  v91 = swift_allocObject();
  v92 = v185;
  v91[1] = v186;
  v91[2] = v92;
  v91[4] = v188;
  v91[3] = v184;
  v93 = *(v86 + 32);
  v190 = v86 + 32;
  v182 = v93;
  v93(v91 + v90, v87, v89);
  v94 = v149;
  v95 = v178;
  sub_24F926BC8();

  v165 = *(v165 + 8);
  (v165)(v85, v95);
  (*(v146 + 8))(v83, v94);
  v96 = [v164 defaultCenter];
  sub_24F92C0F8();

  v97 = v189;
  v98 = v89;
  v99 = v89;
  v100 = v172;
  v172(v189, v187, v99);
  v163 = v90;
  v101 = swift_allocObject();
  v102 = v185;
  *(v101 + 16) = v186;
  *(v101 + 32) = v102;
  *(v101 + 48) = v184;
  v103 = *(&v188 + 1);
  *(v101 + 64) = v188;
  *(v101 + 72) = v103;
  v182(v101 + v90, v97, v98);
  v104 = v177;
  v105 = v154;
  v106 = v173;
  sub_24F926BC8();

  (v165)(v104, v95);
  (*(v151 + 8))(v106, v105);
  v107 = v180;
  v108 = v187;
  v109 = v166;
  sub_24F769788(v166);
  v110 = v189;
  v100(v189, v108, v107);
  v111 = v163;
  v112 = swift_allocObject();
  v113 = v185;
  v112[1] = v186;
  v112[2] = v113;
  v112[3] = v184;
  v114 = v188;
  v112[4] = v188;
  v182(v112 + v111, v110, v107);
  v115 = v158;
  v116 = v179;
  v117 = v174;
  sub_24F926AC8();

  (*(v167 + 8))(v109, v116);
  (*(v157 + 8))(v117, v115);
  v118 = v187;
  v119 = v168;
  sub_24F769764(v168);
  v120 = v189;
  v172(v189, v118, v107);
  v121 = swift_allocObject();
  v122 = v185;
  v121[1] = v186;
  v121[2] = v122;
  v121[3] = v184;
  v121[4] = v114;
  v182(v121 + v111, v120, v107);
  v123 = v150;
  v124 = v160;
  v125 = v181;
  v126 = v155;
  v127 = v153;
  v128 = v176;
  sub_24F926AC8();

  sub_24E601704(v119, &qword_27F215598, &qword_24F945EF0);
  (*(v159 + 8))(v128, v124);
  *&v219 = v124;
  *(&v219 + 1) = v125;
  *&v220 = v126;
  *(&v220 + 1) = v127;
  swift_getOpaqueTypeConformance2();
  v129 = v152;
  v130 = *(&v157 + 1);
  sub_24E7896B8();
  v131 = *(v156 + 8);
  v131(v123, v130);
  sub_24E7896B8();
  return (v131)(v129, v130);
}

uint64_t sub_24E8D73D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v88 = a4;
  v89 = a8;
  v79 = a6;
  v80 = a7;
  v86 = a5;
  v87 = a3;
  v78 = a2;
  v76 = a1;
  v82 = a9;
  v77 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30, &qword_24F965248);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188, &unk_24F965250);
  sub_24F924038();
  type metadata accessor for OnboardingButtonPlatter(255, a5, a10, v11);
  sub_24F92C4A8();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  v85 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24F927108();
  swift_getWitnessTable();
  sub_24F923428();
  v84 = MEMORY[0x277CDD6E0];
  swift_getWitnessTable();
  v75 = MEMORY[0x277CDEC48];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24F924278();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720, qword_24F9A8F70);
  v12 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v73 = MEMORY[0x277CDEA38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v134 = swift_getWitnessTable();
  v135 = sub_24E602068(&qword_27F21A718, &qword_27F21A720, qword_24F9A8F70, MEMORY[0x277CE06A8]);
  v74 = MEMORY[0x277CDFAD8];
  v119 = v12;
  v120 = OpaqueTypeMetadata2;
  v93 = swift_getWitnessTable();
  v94 = OpaqueTypeMetadata2;
  v121 = v93;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520, &qword_24F9423F0);
  sub_24F924038();
  v132 = v13;
  v133 = sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  v95 = v12;
  v90 = sub_24F924B98();
  v83 = sub_24F924038();
  v81 = sub_24F924E38();
  v91 = sub_24F926DC8();
  v71 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v70 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v69 = &v68 - v17;
  sub_24F924038();
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v72 = sub_24F927108();
  v18 = sub_24F923428();
  v19 = swift_getWitnessTable();
  v119 = v18;
  v120 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EE8, &qword_24F965220);
  v119 = v18;
  v120 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EF0, &qword_24F965228);
  v24 = sub_24E8DCE18();
  v119 = v23;
  v120 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v119 = v20;
  v120 = v21;
  v121 = v22;
  OpaqueTypeConformance2 = v25;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F20, &qword_24F965240);
  sub_24F924038();
  sub_24F924E38();
  v26 = sub_24F926DC8();
  v119 = v20;
  v120 = v21;
  v121 = v22;
  OpaqueTypeConformance2 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_24E602068(&qword_27F220F28, &qword_27F220F20, &qword_24F965240, MEMORY[0x277CE01C8]);
  v130 = v22;
  v131 = v28;
  v29 = swift_getWitnessTable();
  v128 = v27;
  v129 = v29;
  v127 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v119 = v26;
  v120 = v30;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v84 = sub_24F927018();
  v31 = sub_24F924038();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v68 - v36;
  v38 = sub_24F924E38();
  v74 = *(v38 - 8);
  v75 = v38;
  MEMORY[0x28223BE20](v38);
  v85 = &v68 - v39;
  v119 = v78;
  v120 = v87;
  v121 = v88;
  OpaqueTypeConformance2 = v86;
  v123 = v79;
  v124 = v80;
  v125 = v89;
  v126 = v77;
  v40 = type metadata accessor for GSKOnboardingView(0, &v119);
  sub_24E8D5A14(&v119);
  if (v119 == 2)
  {
    sub_24E8D8128(v40, v34);
    v101 = swift_getWitnessTable();
    v102 = MEMORY[0x277CDF918];
    v41 = swift_getWitnessTable();
    sub_24E7896B8();
    v42 = *(v32 + 8);
    v42(v34, v31);
    sub_24E7896B8();
    v119 = v95;
    v120 = v94;
    v43 = v93;
    v121 = v93;
    OpaqueTypeConformance2 = v92;
    v44 = swift_getOpaqueTypeConformance2();
    v45 = swift_getWitnessTable();
    v99 = v43;
    v100 = v45;
    v46 = swift_getWitnessTable();
    v97 = v44;
    v98 = v46;
    v96 = swift_getWitnessTable();
    v47 = v91;
    v48 = swift_getWitnessTable();
    sub_24ECCCBA0(v34, v31, v47, v41, v48);
    v42(v34, v31);
    v42(v37, v31);
  }

  else
  {
    v49 = v70;
    sub_24E8D877C(v40, v70);
    v119 = v95;
    v120 = v94;
    v50 = v93;
    v121 = v93;
    OpaqueTypeConformance2 = v92;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = swift_getWitnessTable();
    v117 = v50;
    v118 = v52;
    v53 = swift_getWitnessTable();
    v115 = v51;
    v116 = v53;
    v114 = swift_getWitnessTable();
    v54 = v91;
    v55 = swift_getWitnessTable();
    v56 = v69;
    sub_24E7896B8();
    v57 = *(v71 + 8);
    v57(v49, v54);
    sub_24E7896B8();
    v112 = swift_getWitnessTable();
    v113 = MEMORY[0x277CDF918];
    v58 = swift_getWitnessTable();
    sub_24ECCCC98(v49, v31, v54, v58, v55);
    v57(v49, v54);
    v57(v56, v54);
  }

  v110 = swift_getWitnessTable();
  v111 = MEMORY[0x277CDF918];
  v59 = swift_getWitnessTable();
  v119 = v95;
  v120 = v94;
  v60 = v93;
  v121 = v93;
  OpaqueTypeConformance2 = v92;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = swift_getWitnessTable();
  v108 = v60;
  v109 = v62;
  v63 = swift_getWitnessTable();
  v106 = v61;
  v107 = v63;
  v105 = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v103 = v59;
  v104 = v64;
  v65 = v75;
  swift_getWitnessTable();
  v66 = v85;
  sub_24E7896B8();
  return (*(v74 + 8))(v66, v65);
}

uint64_t sub_24E8D8128@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v32 = a1[3];
  sub_24F924038();
  v31 = a1[5];
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  v28 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  WitnessTable = sub_24F927108();
  v25 = a1;
  v29 = a1[4];
  v30 = a1[8];
  sub_24F923428();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EE8, &qword_24F965220);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EF0, &qword_24F965228);
  sub_24E8DCE18();
  v4 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F20, &qword_24F965240);
  sub_24F924038();
  sub_24F924E38();
  v5 = sub_24F926DC8();
  v43[2] = OpaqueTypeConformance2;
  v43[3] = v4;
  v6 = swift_getOpaqueTypeConformance2();
  v43[12] = OpaqueTypeConformance2;
  v43[13] = sub_24E602068(&qword_27F220F28, &qword_27F220F20, &qword_24F965240, MEMORY[0x277CE01C8]);
  v27 = MEMORY[0x277CDFAD8];
  v43[10] = v6;
  v43[11] = swift_getWitnessTable();
  v43[9] = swift_getWitnessTable();
  v43[0] = v5;
  v43[1] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_24F927018();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_24F924038();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = v25;
  v18 = v33;
  sub_24E8D5164(v25, v43);
  *&v19 = v17[2];
  *(&v19 + 1) = v32;
  *&v20 = v29;
  *(&v20 + 1) = v31;
  v36 = v20;
  v35 = v19;
  v37 = *(v17 + 3);
  v21 = v17[9];
  v38 = v30;
  v39 = v21;
  v40 = v18;
  sub_24F9249A8();
  sub_24F927008();
  sub_24F9257F8();
  sub_24E8D5164(v17, v43);
  v22 = swift_getWitnessTable();
  sub_24F926A48();
  (*(v28 + 8))(v9, v7);
  v41 = v22;
  v42 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_24E7896B8();
  v23 = *(v11 + 8);
  v23(v13, v10);
  sub_24E7896B8();
  return (v23)(v16, v10);
}

uint64_t sub_24E8D877C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v82 = *(a1 - 8);
  v80 = *(v82 + 64);
  MEMORY[0x28223BE20](a1);
  v76 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30, &qword_24F965248);
  *&v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188, &unk_24F965250);
  v79 = *(a1 + 16);
  *(&v94 + 1) = sub_24F924038();
  v77 = *(a1 + 40);
  v78 = *(a1 + 72);
  type metadata accessor for OnboardingButtonPlatter(255, v77, v78, v4);
  v5 = sub_24F92C4A8();
  *&v95 = v5;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  swift_getWitnessTable();
  v6 = sub_24F923428();
  WitnessTable = swift_getWitnessTable();
  v93 = v6;
  *&v94 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = v6;
  *&v94 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = sub_24F924278();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720, qword_24F9A8F70);
  *&v59 = v8;
  v9 = sub_24F924038();
  v101 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v93 = v5;
  *&v94 = v10;
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = swift_getWitnessTable();
  *&v56 = v12;
  v13 = sub_24E602068(&qword_27F21A718, &qword_27F21A720, qword_24F9A8F70, MEMORY[0x277CE06A8]);
  v99 = v12;
  v100 = v13;
  v14 = swift_getWitnessTable();
  v93 = v5;
  *&v94 = v10;
  v15 = swift_getOpaqueTypeConformance2();
  v93 = v9;
  *&v94 = v11;
  v70 = v11;
  v68 = v14;
  *(&v94 + 1) = v14;
  *&v95 = v15;
  v66 = v15;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520, &qword_24F9423F0);
  v72 = v5;
  sub_24F924038();
  v16 = sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
  v69 = v10;
  v97 = v10;
  v98 = v16;
  swift_getWitnessTable();
  v17 = sub_24F924B98();
  v71 = v9;
  v60 = v17;
  v61 = sub_24F924038();
  v62 = sub_24F924E38();
  v67 = sub_24F926DC8();
  MEMORY[0x28223BE20](v67);
  v64 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v65 = v55 - v21;
  v22 = v82;
  v23 = v82 + 16;
  v24 = *(v82 + 16);
  v63 = v25;
  v26 = v76;
  v24(v76, v81, a1, v20);
  v27 = (*(v22 + 80) + 80) & ~*(v22 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v79;
  v74 = *(a1 + 24);
  *(v28 + 24) = v74;
  *(v28 + 40) = v77;
  v75 = *(a1 + 48);
  *(v28 + 48) = v75;
  v29 = *(a1 + 64);
  v30 = v78;
  *(v28 + 64) = v29;
  *(v28 + 72) = v30;
  v31 = *(v22 + 32);
  v31(v28 + v27, v26, a1);
  v32 = sub_24F924268();
  v55[1] = v33;
  v89 = v32;
  *&v90 = v33;
  OpaqueTypeMetadata2 = v23;
  OpaqueTypeConformance2 = v24;
  (v24)(v26, v81, a1);
  v34 = swift_allocObject();
  *(v34 + 16) = v79;
  *(v34 + 24) = v74;
  *(v34 + 40) = v77;
  *(v34 + 48) = v75;
  v35 = v78;
  *(v34 + 64) = v29;
  *(v34 + 72) = v35;
  v82 = v22 + 32;
  v31(v34 + v27, v26, a1);
  v36 = sub_24E7DDA4C();
  sub_24E8D5070(MEMORY[0x277D85048], sub_24E72DE30, 0, sub_24E8DE858, v34, v59, MEMORY[0x277D85048], v56, v36);

  v89 = v93;
  v59 = v94;
  v90 = v94;
  v56 = v95;
  v91 = v95;
  v92 = v96;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v37 = qword_27F24E488;
  swift_getKeyPath();
  v88 = v37;
  sub_24E8E01C8(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v38 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  if (*(v37 + v38))
  {
    v39 = v81;
    v40 = sub_24E8D5B10(a1);
  }

  else
  {
    v40 = 1;
    v39 = v81;
  }

  v41 = v76;
  OpaqueTypeConformance2(v76, v39, a1);
  v42 = swift_allocObject();
  v43.i64[0] = v79;
  *&v44 = vdupq_laneq_s64(v74, 1).u64[0];
  *(&v44 + 1) = v77;
  *(v42 + 16) = vzip1q_s64(v43, v74);
  *(v42 + 32) = v44;
  v43.i64[0] = v29;
  v43.i64[1] = v78;
  *(v42 + 64) = v43;
  *(v42 + 48) = v75;
  v31(v42 + v27, v41, a1);
  v45 = v64;
  v46 = v71;
  v47 = v68;
  sub_24E8DB14C(v40 & 1, sub_24E8DFFB0, v42, v71, v72, v68, v69);

  v93 = v46;
  *&v94 = v70;
  *(&v94 + 1) = v47;
  *&v95 = v66;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = swift_getWitnessTable();
  v86 = v47;
  v87 = v49;
  v50 = swift_getWitnessTable();
  v84 = v48;
  v85 = v50;
  v83 = swift_getWitnessTable();
  v51 = v67;
  swift_getWitnessTable();
  v52 = v65;
  sub_24E7896B8();
  v53 = *(v63 + 8);
  v53(v45, v51);
  sub_24E7896B8();
  return (v53)(v52, v51);
}

uint64_t sub_24E8D92C8(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v2 = sub_24F923488();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220ED8, &qword_24F992060);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  sub_24F923478();
  sub_24F927268();
  (*(v3 + 8))(v5, v2);
  sub_24F9235A8();
  sub_24E602068(&qword_27F220EE0, &qword_27F220ED8, &qword_24F992060, MEMORY[0x277CDF728]);
  sub_24F926658();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24E8D94D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v10 = (a2 + *(type metadata accessor for GSKOnboardingView(0, &v14) + 148));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v14) = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

uint64_t sub_24E8D955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a7;
  v27 = a8;
  v15 = sub_24F923E98();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = v26;
  v34 = v27;
  v35 = a9;
  v36 = a10;
  v19 = type metadata accessor for GSKOnboardingView(0, &v29);
  sub_24F769788(v18);
  v20 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v16 + 8))(v18, v15);
  v21 = (a2 + *(v19 + 148));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v29) = v22;
  v30 = v23;
  v28 = v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

uint64_t sub_24E8D96D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a7;
  v27 = a8;
  v15 = sub_24F923E98();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = v26;
  v35 = v27;
  v36 = a9;
  v19 = type metadata accessor for GSKOnboardingView(0, &v29);
  sub_24F769788(v18);
  v20 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v16 + 8))(v18, v15);
  v21 = (a1 + *(v19 + 148));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v29) = v22;
  v30 = v23;
  v28 = v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

uint64_t sub_24E8D9848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v97 = a7;
  v117 = a6;
  v118 = a1;
  v113 = a5;
  v119 = a3;
  v115 = a2;
  v109 = a9;
  v116 = a10;
  v141 = a2;
  v142 = a3;
  v143 = a4;
  v144 = a5;
  v114 = a4;
  v145 = a6;
  v146 = a7;
  v147 = a8;
  v148 = a10;
  v91 = a8;
  v108 = type metadata accessor for GSKOnboardingView(0, &v141);
  v106 = *(v108 - 8);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  v105 = &v76 - v10;
  v104 = sub_24F925558();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F923428();
  v101 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v96 = &v76 - v13;
  WitnessTable = swift_getWitnessTable();
  v141 = v12;
  v142 = WitnessTable;
  v92 = v12;
  v93 = WitnessTable;
  v15 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v103 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v95 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EE8, &qword_24F965220);
  v141 = v12;
  v142 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220EF0, &qword_24F965228);
  v98 = v20;
  v99 = sub_24E8DCE18();
  v141 = v20;
  v142 = v99;
  v21 = swift_getOpaqueTypeConformance2();
  v141 = OpaqueTypeMetadata2;
  v142 = v18;
  v143 = OpaqueTypeConformance2;
  v144 = v21;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F20, &qword_24F965240);
  v90 = OpaqueTypeMetadata2;
  sub_24F924038();
  sub_24F924E38();
  v22 = sub_24F926DC8();
  v94 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v88 = OpaqueTypeConformance2;
  v89 = &v76 - v23;
  v141 = OpaqueTypeMetadata2;
  v142 = v18;
  v143 = OpaqueTypeConformance2;
  v144 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_24E602068(&qword_27F220F28, &qword_27F220F20, &qword_24F965240, MEMORY[0x277CE01C8]);
  v140[5] = OpaqueTypeConformance2;
  v140[6] = v25;
  v26 = swift_getWitnessTable();
  v140[3] = v24;
  v140[4] = v26;
  v140[2] = swift_getWitnessTable();
  v84 = v22;
  v83 = swift_getWitnessTable();
  v141 = v22;
  v142 = v83;
  v85 = MEMORY[0x277CDEC98];
  v27 = swift_getOpaqueTypeMetadata2();
  v86 = *(v27 - 8);
  v87 = v27;
  MEMORY[0x28223BE20](v27);
  v81 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v82 = &v76 - v30;
  v31 = v119;
  sub_24F924038();
  v32 = v113;
  sub_24F924E38();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  v80 = swift_getWitnessTable();
  v110 = sub_24F927108();
  v112 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v34;
  MEMORY[0x28223BE20](v35);
  v111 = &v76 - v36;
  v37 = v115;
  v129 = v115;
  v130 = v31;
  v131 = v114;
  v132 = v32;
  v38 = v32;
  v39 = v116;
  v40 = v117;
  v41 = v97;
  v133 = v117;
  v134 = v97;
  v42 = v91;
  v135 = v91;
  v136 = v116;
  v137 = v118;
  sub_24F924C88();
  sub_24F9270F8();
  v43 = v110;
  v78 = swift_getWitnessTable();
  sub_24E7896B8();
  v44 = *(v112 + 8);
  v79 = v112 + 8;
  v80 = v44;
  v44(v34, v43);
  v45 = v118;
  v120 = v37;
  v121 = v119;
  v46 = v114;
  v122 = v114;
  v123 = v38;
  v124 = v40;
  v125 = v41;
  v126 = v42;
  v127 = v39;
  v128 = v118;
  sub_24F9257D8();
  v47 = v96;
  v48 = v46;
  sub_24F923438();
  v49 = v100;
  sub_24F925548();
  v50 = v95;
  v51 = v92;
  sub_24F926788();
  (*(v102 + 8))(v49, v104);
  (*(v101 + 8))(v47, v51);
  v53 = v105;
  v52 = v106;
  v54 = v108;
  (*(v106 + 16))(v105, v45, v108);
  v55 = v52;
  v56 = (*(v52 + 80) + 80) & ~*(v52 + 80);
  v57 = swift_allocObject();
  v58 = v119;
  *(v57 + 2) = v115;
  *(v57 + 3) = v58;
  v59 = v113;
  *(v57 + 4) = v48;
  *(v57 + 5) = v59;
  v60 = v116;
  *(v57 + 6) = v117;
  *(v57 + 7) = v41;
  *(v57 + 8) = v42;
  *(v57 + 9) = v60;
  (*(v55 + 32))(&v57[v56], v53, v54);
  v62 = v89;
  v61 = v90;
  sub_24E8DB14C(1, sub_24E8DD33C, v57, v90, v98, v88, v99);

  (*(v103 + 8))(v50, v61);
  v63 = sub_24F925818();
  v64 = v81;
  v66 = v83;
  v65 = v84;
  MEMORY[0x25304C150](1, v63, v84, v83);
  (*(v94 + 8))(v62, v65);
  v141 = v65;
  v142 = v66;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = v82;
  v69 = v87;
  sub_24E7896B8();
  v70 = v86;
  v71 = *(v86 + 8);
  v71(v64, v69);
  v72 = v77;
  v73 = v110;
  (*(v112 + 16))(v77, v111, v110);
  v141 = v72;
  (*(v70 + 16))(v64, v68, v69);
  v142 = v64;
  v140[0] = v73;
  v140[1] = v69;
  v138 = v78;
  v139 = v67;
  sub_24F57BA64(&v141, 2uLL, v140);
  v71(v68, v69);
  v74 = v80;
  v80(v111, v73);
  v71(v64, v69);
  return v74(v72, v73);
}

uint64_t sub_24E8DA2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6)
{
  v63 = a5;
  v61 = a6;
  v54 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v52 - v11;
  v58 = v12;
  v59 = sub_24F924E38();
  v62 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v60 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v52 - v15;
  v16 = *(a2 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F924038();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v52 - v26;
  (*(a1 + 176))(v25);
  sub_24F927618();
  sub_24F926948();
  (*(v16 + 8))(v19, a2);
  v74[2] = a4;
  v74[3] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v57 = v27;
  v55 = WitnessTable;
  sub_24E7896B8();
  v56 = *(v21 + 8);
  v29 = v56(v23, v20);
  v30 = *(a1 + 72);
  if (v30)
  {
    v31 = *(a1 + 64);
    sub_24E60169C(a1 + 88, v65, qword_27F21B590, &unk_24F93BE30);
    v32 = *(a1 + 128);
    v33 = *(a1 + 80);
    v34 = *(a1 + 129);
    v65[5] = v31;
    v65[6] = v30;
    v66 = v32;
    v67 = v33;
    v68 = 0;
    v69 = v34;
    v35 = sub_24E8DCFBC();

    v36 = v35;
    v37 = v61;
    sub_24ECCCBA0(v65, &type metadata for OnboardingButton, v58, v36, v61);
    sub_24E8DE730(v65);
  }

  else
  {
    v38 = v53;
    (*(a1 + 208))(v29);
    v39 = v52;
    v40 = v58;
    v37 = v61;
    sub_24E7896B8();
    v41 = *(v54 + 8);
    v41(v38, v40);
    sub_24E7896B8();
    v42 = sub_24E8DCFBC();
    sub_24ECCCC98(v38, &type metadata for OnboardingButton, v40, v42, v37);
    v41(v38, v40);
    v41(v39, v40);
  }

  v43 = v57;
  (*(v21 + 16))(v23, v57, v20);
  v65[0] = v23;
  v44 = v62;
  v45 = v60;
  v46 = v64;
  v47 = v59;
  (*(v62 + 16))(v60, v64, v59);
  v65[1] = v45;
  v74[0] = v20;
  v74[1] = v47;
  v72 = v55;
  v70 = sub_24E8DCFBC();
  v71 = v37;
  v73 = swift_getWitnessTable();
  sub_24F57BA64(v65, 2uLL, v74);
  v48 = *(v44 + 8);
  v48(v46, v47);
  v49 = v43;
  v50 = v56;
  v56(v49, v20);
  v48(v45, v47);
  return v50(v23, v20);
}

uint64_t sub_24E8DA90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v12 + 192))(v9);
  sub_24E7896B8();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_24E7896B8();
  return (v13)(v11, a4);
}

uint64_t sub_24E8DAA40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v61 = a2;
  v74[0] = a2;
  v74[1] = a3;
  v62 = a3;
  v64 = a4;
  v74[2] = a4;
  v74[3] = a5;
  v65 = a5;
  v66 = a6;
  v74[4] = a6;
  v75 = a7;
  v67 = a7;
  v76 = a8;
  v77 = a10;
  v63 = a10;
  v13 = type metadata accessor for GSKOnboardingView(0, v74);
  v14 = *(v13 - 8);
  v59 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v60 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F00, &unk_24F965230);
  v68 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v69 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F40, &qword_24F965260);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v23 = a1[1];
  v24 = 1;
  if (v23)
  {
    v53 = v14;
    v54 = v22;
    v55 = a8;
    v56 = v18;
    v57 = v16;
    v58 = a9;
    v25 = *a1;
    sub_24E60169C((a1 + 3), v74, qword_27F21B590, &unk_24F93BE30);
    v26 = *(a1 + 128);
    v27 = a1[2];
    v28 = *(a1 + 129);
    v75 = v25;
    v76 = v23;
    LOBYTE(v77) = v26;
    v78 = v27;
    v79 = 1;
    v80 = v28;
    v81 = v28;

    v29 = sub_24F925818();
    sub_24E8D5164(v13, &v71);
    sub_24F923318();
    v82 = v29;
    v83 = v30;
    v84 = v31;
    v85 = v32;
    v86 = v33;
    v87 = 0;
    v34 = a1 + *(v13 + 172);
    v35 = *v34;
    v36 = *(v34 + 1);
    LOBYTE(v34) = v34[16];
    LOBYTE(v71) = v35;
    v72 = v36;
    v73 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
    sub_24F923348();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F08, &unk_24FA35B50);
    v38 = sub_24E8DCF30();
    sub_24F9269C8();

    sub_24E601704(v74, &qword_27F220F08, &unk_24FA35B50);
    if (qword_27F211808 != -1)
    {
      swift_once();
    }

    v39 = qword_27F24E488;
    swift_getKeyPath();
    v74[0] = v39;
    sub_24E8E01C8(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
    sub_24F91FD88();

    v40 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
    swift_beginAccess();
    v70 = *(v39 + v40) != 0;
    v41 = v53;
    v42 = v60;
    (*(v53 + 16))(v60, a1, v13);
    v43 = (*(v41 + 80) + 80) & ~*(v41 + 80);
    v44 = swift_allocObject();
    v45 = v62;
    *(v44 + 2) = v61;
    *(v44 + 3) = v45;
    v46 = v65;
    *(v44 + 4) = v64;
    *(v44 + 5) = v46;
    v47 = v67;
    *(v44 + 6) = v66;
    *(v44 + 7) = v47;
    v48 = v63;
    *(v44 + 8) = v55;
    *(v44 + 9) = v48;
    (*(v41 + 32))(&v44[v43], v42, v13);
    v71 = v37;
    v72 = v38;
    swift_getOpaqueTypeConformance2();
    v49 = v54;
    v50 = v57;
    v51 = v69;
    sub_24F926AB8();

    (*(v68 + 8))(v51, v50);
    a9 = v58;
    v18 = v56;
    (*(v19 + 32))(v58, v49, v56);
    v24 = 0;
  }

  return (*(v19 + 56))(a9, v24, 1, v18, v20);
}

void sub_24E8DB0A4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (*a2 == 1)
  {
    v24 = v11;
    v25 = v12;
    v16 = a4;
    v17 = a5;
    v18 = a6;
    v19 = a7;
    v20 = a8;
    v21 = a9;
    v22 = a10;
    v23 = a11;
    v13 = (a3 + *(type metadata accessor for GSKOnboardingView(0, &v16) + 172));
    v14 = *v13;
    v15 = *(v13 + 1);
    LOBYTE(v13) = v13[16];
    LOBYTE(v16) = v14;
    v17 = v15;
    LOBYTE(v18) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
    sub_24F923338();
  }
}

uint64_t sub_24E8DB14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216520, &qword_24F9423F0);
  sub_24F924038();
  sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  sub_24F924B98();
  sub_24F924038();
  sub_24F924E38();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_24F926DB8();
}

uint64_t sub_24E8DB388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11, uint64_t a12)
{
  v42 = a8;
  v41 = a7;
  v32 = a6;
  v37 = a5;
  v36 = a4;
  v34 = a3;
  v39 = a2;
  v40 = a1;
  v45 = a9;
  v35 = a11;
  v33 = a12;
  v13 = sub_24F925558();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13);
  v38 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30, &qword_24F965248);
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188, &unk_24F965250);
  v58 = sub_24F924038();
  type metadata accessor for OnboardingButtonPlatter(255, a6, a12, v15);
  v59 = sub_24F92C4A8();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  v31[1] = swift_getWitnessTable();
  v16 = sub_24F923428();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v31 - v18;
  WitnessTable = swift_getWitnessTable();
  v56 = v16;
  v57 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v31 - v26;
  v46 = v34;
  v47 = v36;
  v48 = v37;
  v49 = v32;
  v50 = v41;
  v51 = v42;
  v52 = v35;
  v53 = v33;
  v54 = v39;
  v55 = v40;
  sub_24F9257D8();
  sub_24F923438();
  v28 = v38;
  sub_24F925548();
  sub_24F926788();
  (*(v43 + 8))(v28, v44);
  (*(v17 + 8))(v19, v16);
  v56 = v16;
  v57 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_24E7896B8();
  v29 = *(v22 + 8);
  v29(v24, OpaqueTypeMetadata2);
  sub_24E7896B8();
  return (v29)(v27, OpaqueTypeMetadata2);
}

uint64_t sub_24E8DB838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v30 = a8;
  v28 = a7;
  v26 = a5;
  v29 = a2;
  v27 = a1;
  v31 = a9;
  v25 = a10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F30, &qword_24F965248);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188, &unk_24F965250);
  v44 = sub_24F924038();
  type metadata accessor for OnboardingButtonPlatter(255, a6, a11, v14);
  v45 = sub_24F92C4A8();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  v15 = sub_24F927108();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v24 - v20;
  v32 = a3;
  v33 = a4;
  v34 = v26;
  v35 = a6;
  v36 = v28;
  v37 = v30;
  v38 = v25;
  v39 = a11;
  v40 = v27;
  v41 = v29;
  sub_24F924C88();
  sub_24F9270F8();
  swift_getWitnessTable();
  sub_24E7896B8();
  v22 = *(v16 + 8);
  v22(v18, v15);
  sub_24E7896B8();
  return (v22)(v21, v15);
}

uint64_t sub_24E8DBAE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v99 = a5;
  v100 = a8;
  v114 = a6;
  v115 = a7;
  v98 = a4;
  WitnessTable = a2;
  v112 = a9;
  v113 = a11;
  v97 = a10;
  v13 = type metadata accessor for OnboardingButtonPlatter(0, a6, a11, a4);
  v107 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v95 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v93 - v16;
  v120 = v17;
  v18 = sub_24F92C4A8();
  v110 = *(v18 - 8);
  v111 = v18;
  MEMORY[0x28223BE20](v18);
  v121 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v109 = &v93 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v93 - v23;
  v103 = *(a3 - 1);
  MEMORY[0x28223BE20](v25);
  v102 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_24F924038();
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v108 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v101 = &v93 - v29;
  MEMORY[0x28223BE20](v30);
  v118 = &v93 - v31;
  v96 = type metadata accessor for DefaultPageHeaderView(0);
  v32 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v34 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v93 - v36;
  v38 = type metadata accessor for HeaderPresentation(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v93 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F30, &qword_24F965248);
  MEMORY[0x28223BE20](v106);
  v116 = &v93 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v122 = &v93 - v44;
  v105 = a3;
  v138 = a3;
  v139 = v98;
  v140 = v99;
  v141 = v114;
  v142 = v115;
  v143 = v100;
  v144 = v97;
  v145 = v113;
  v45 = type metadata accessor for GSKOnboardingView(0, &v138);
  sub_24E60169C(a1 + v45[34], v37, qword_27F220E38, &unk_24F965190);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_24E601704(v37, qword_27F220E38, &unk_24F965190);
  }

  else
  {
    sub_24E8E026C(v37, v41, type metadata accessor for HeaderPresentation);
    v46 = *(a1 + v45[35]);
    if (v46 != 7)
    {
      sub_24E8E026C(v41, v34, type metadata accessor for HeaderPresentation);
      (*(v39 + 56))(v34, 0, 1, v38);
      v49 = *(a1 + v45[36]);
      v50 = v96;
      v34[*(v96 + 20)] = v46;
      v34[*(v50 + 24)] = v49;
      sub_24E8E026C(v34, v122, type metadata accessor for DefaultPageHeaderView);
      v48 = v50;
      v47 = 0;
      goto LABEL_7;
    }

    sub_24E8E0210(v41);
  }

  v47 = 1;
  v48 = v96;
LABEL_7:
  (*(v32 + 56))(v122, v47, 1, v48);
  sub_24E8D5164(v45, &v138);
  sub_24F927618();
  sub_24F9238C8();
  v97 = v152;
  v98 = v154;
  v99 = v157;
  v100 = v156;
  v151 = 0;
  v149 = v153;
  v147 = v155;
  v51 = a1[20];
  v52 = sub_24F924098();
  v53 = *(v52 - 8);
  (*(v53 + 16))(v24, WitnessTable, v52);
  (*(v53 + 56))(v24, 0, 1, v52);
  v54 = v102;
  v51(v24);
  sub_24E601704(v24, &qword_27F220F50, &qword_24F965290);
  sub_24F9257F8();
  sub_24E8D5164(v45, &v138);
  v55 = (a1 + v45[39]);
  v56 = *v55;
  v57 = v55[1];
  v123 = *v55;
  v124 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F38();
  v58 = v101;
  v59 = v105;
  v60 = v115;
  sub_24F926A48();
  (*(v103 + 8))(v54, v59);
  v136 = v60;
  v137 = MEMORY[0x277CDF918];
  v61 = v119;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8();
  v62 = *(v117 + 8);
  v115 = v117 + 8;
  v105 = v62;
  (v62)(v58, v61);
  v63 = a1 + v45[37];
  v64 = *v63;
  v65 = *(v63 + 1);
  LOBYTE(v138) = v64;
  v139 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (v123 == 1 && (v66 = a1[1]) != 0)
  {
    v103 = *a1;
    v67 = a1[2];
    sub_24E60169C((a1 + 3), &v138, qword_27F21B590, &unk_24F93BE30);
    v68 = a1[9];
    v102 = a1[8];
    v69 = a1[10];
    sub_24E60169C((a1 + 11), &v123, qword_27F21B590, &unk_24F93BE30);
    v70 = *(a1 + 128);
    v132 = v56;
    v133 = v57;

    sub_24F926F38();
    v71 = *&v128;
    v72 = *(a1 + 129);
    v73 = a1[26];

    v75 = v95;
    sub_24F881134(v103, v66, v67, &v138, v102, v68, v69, &v123, v95, v71, v70, v72, v73, v74, v114, v113);
    v76 = v120;
    swift_getWitnessTable();
    v77 = v94;
    sub_24E7896B8();
    v78 = v107;
    v79 = *(v107 + 8);
    v79(v75, v76);
    sub_24E7896B8();
    v79(v77, v76);
    v80 = v121;
    (*(v78 + 32))(v121, v75, v76);
    (*(v78 + 56))(v80, 0, 1, v76);
  }

  else
  {
    v80 = v121;
    (*(v107 + 56))(v121, 1, 1, v120);
    swift_getWitnessTable();
  }

  v81 = v109;
  v82 = v110;
  v83 = *(v110 + 16);
  v84 = v111;
  v83(v109, v80, v111);
  v114 = *(v82 + 8);
  v114(v80, v84);
  v85 = v80;
  v86 = v116;
  sub_24E60169C(v122, v116, &qword_27F220F30, &qword_24F965248);
  v138 = 0;
  LOBYTE(v139) = v151;
  *(&v139 + 1) = *v150;
  HIDWORD(v139) = *&v150[3];
  v140 = v97;
  LOBYTE(v141) = v149;
  *(&v141 + 1) = *v148;
  HIDWORD(v141) = *&v148[3];
  v142 = v98;
  LOBYTE(v143) = v147;
  *(&v143 + 1) = *v146;
  HIDWORD(v143) = *&v146[3];
  v144 = v100;
  v145 = v99;
  v123 = v86;
  v124 = &v138;
  v87 = v118;
  v88 = v108;
  v89 = v119;
  (*(v117 + 16))(v108, v118, v119);
  v125 = v88;
  v83(v85, v81, v84);
  v126 = v85;
  v132 = v106;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188, &unk_24F965250);
  v134 = v89;
  v135 = v84;
  v128 = sub_24E8E0114();
  v129 = sub_24E8533A4();
  v130 = WitnessTable;
  v127 = swift_getWitnessTable();
  v131 = swift_getWitnessTable();
  sub_24F57BA64(&v123, 4uLL, &v132);
  v90 = v114;
  v114(v81, v84);
  v91 = v105;
  (v105)(v87, v89);
  sub_24E601704(v122, &qword_27F220F30, &qword_24F965248);
  v90(v121, v84);
  v91(v88, v89);
  return sub_24E601704(v116, &qword_27F220F30, &qword_24F965248);
}

uint64_t sub_24E8DC830(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v10 = (a2 + *(type metadata accessor for GSKOnboardingView(0, &v14) + 156));
  v11 = *v10;
  v12 = v10[1];
  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  return sub_24F926F48();
}

uint64_t sub_24E8DC8C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v56 = a8;
  v55 = a7;
  v60 = a9;
  v16 = type metadata accessor for OnboardingButtonPlatter(0, a5, a10, a4);
  v58 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v53 = &v49 - v19;
  v20 = sub_24F92C4A8();
  v57 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v59 = &v49 - v24;
  v66 = a2;
  v67 = a3;
  v25 = a5;
  v68 = a4;
  v69 = a5;
  v70 = a6;
  v71 = v55;
  v72 = v56;
  v73 = a10;
  v56 = a10;
  v26 = type metadata accessor for GSKOnboardingView(0, &v66);
  v27 = a1 + *(v26 + 148);
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v66) = v28;
  v67 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if ((v64[0] & 1) != 0 || (v30 = a1[1]) == 0)
  {
    (*(v58 + 56))(v22, 1, 1, v16);
    swift_getWitnessTable();
  }

  else
  {
    v55 = *a1;
    v31 = a1[2];
    sub_24E60169C((a1 + 3), &v66, qword_27F21B590, &unk_24F93BE30);
    v32 = a1[9];
    v52 = a1[8];
    v50 = a1[10];
    sub_24E60169C((a1 + 11), v64, qword_27F21B590, &unk_24F93BE30);
    v51 = *(a1 + 128);
    v33 = (a1 + *(v26 + 156));
    v34 = *v33;
    v35 = v33[1];
    v62 = v34;
    v63 = v35;

    v36 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
    sub_24F926F38();
    v37 = v61;
    LOBYTE(v31) = *(a1 + 129);
    v38 = a1[26];

    v48 = v25;
    v40 = v54;
    sub_24F881134(v55, v30, v36, &v66, v52, v32, v50, v64, v54, v37, v51, v31, v38, v39, v48, v56);
    swift_getWitnessTable();
    v41 = v53;
    sub_24E7896B8();
    v42 = v58;
    v43 = *(v58 + 8);
    v43(v40, v16);
    sub_24E7896B8();
    v43(v41, v16);
    (*(v42 + 32))(v22, v40, v16);
    (*(v42 + 56))(v22, 0, 1, v16);
  }

  v44 = v57;
  v45 = v59;
  (*(v57 + 16))(v59, v22, v20);
  v46 = *(v44 + 8);
  v46(v22, v20);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E7896B8();
  return (v46)(v45, v20);
}